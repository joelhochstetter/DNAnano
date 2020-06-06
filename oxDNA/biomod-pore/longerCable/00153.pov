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
	<23.909679, 35.098244, 34.603470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272964, 34.994823, 34.735107>,  <24.490936, 34.932774, 34.814091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272964, 34.994823, 34.735107>,  <23.909679, 35.098244, 34.603470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272964, 34.994823, 34.735107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411623, 0.409821, -0.814010,
		0.075590, 0.874758, 0.478629,
		0.908214, -0.258546, 0.329092,
		24.545429, 34.917259, 34.833836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.861217, 35.474243, 35.253792>,  <23.909679, 35.098244, 34.603470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.861217, 35.474243, 35.253792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203909, 35.381710, 35.069401>,  <24.409525, 35.326191, 34.958767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203909, 35.381710, 35.069401>,  <23.861217, 35.474243, 35.253792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203909, 35.381710, 35.069401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482772, 0.674225, 0.558885,
		0.181511, -0.701359, 0.689311,
		0.856730, -0.231336, -0.460975,
		24.460928, 35.312309, 34.931107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381203, 35.367886, 35.724987>,  <23.861217, 35.474243, 35.253792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381203, 35.367886, 35.724987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507391, 35.521641, 35.377949>,  <24.583103, 35.613892, 35.169724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507391, 35.521641, 35.377949>,  <24.381203, 35.367886, 35.724987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507391, 35.521641, 35.377949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424883, 0.760301, 0.491342,
		0.848500, -0.523632, 0.076533,
		0.315471, 0.384386, -0.867598,
		24.602032, 35.636955, 35.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160673, 35.341534, 35.574661>,  <24.381203, 35.367886, 35.724987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160673, 35.341534, 35.574661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008011, 35.638329, 35.354191>,  <24.916412, 35.816406, 35.221909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008011, 35.638329, 35.354191>,  <25.160673, 35.341534, 35.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008011, 35.638329, 35.354191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871437, -0.090070, 0.482167,
		0.308116, 0.664339, 0.680968,
		-0.381657, 0.741984, -0.551178,
		24.893515, 35.860924, 35.188839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657675, 35.686497, 35.104073>,  <25.160673, 35.341534, 35.574661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657675, 35.686497, 35.104073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615520, 35.588623, 35.489616>,  <25.590227, 35.529900, 35.720943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615520, 35.588623, 35.489616>,  <25.657675, 35.686497, 35.104073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615520, 35.588623, 35.489616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992381, 0.036340, 0.117729,
		-0.063833, 0.968923, 0.238986,
		-0.105385, -0.244680, 0.963860,
		25.583904, 35.515221, 35.778774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044952, 36.154194, 35.547974>,  <25.657675, 35.686497, 35.104073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044952, 36.154194, 35.547974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005404, 35.801170, 35.731850>,  <25.981674, 35.589355, 35.842175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005404, 35.801170, 35.731850>,  <26.044952, 36.154194, 35.547974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005404, 35.801170, 35.731850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919608, 0.095461, 0.381061,
		-0.380191, 0.460414, 0.802168,
		-0.098870, -0.882556, 0.459694,
		25.975742, 35.536404, 35.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264215, 36.246552, 36.190292>,  <26.044952, 36.154194, 35.547974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264215, 36.246552, 36.190292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288078, 35.847424, 36.178993>,  <26.302395, 35.607948, 36.172215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288078, 35.847424, 36.178993>,  <26.264215, 36.246552, 36.190292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288078, 35.847424, 36.178993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779682, 0.028908, 0.625508,
		-0.623327, -0.059336, 0.779706,
		0.059655, -0.997819, -0.028244,
		26.305975, 35.548077, 36.170521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077419, 36.016727, 36.841404>,  <26.264215, 36.246552, 36.190292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077419, 36.016727, 36.841404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374500, 35.811710, 36.669037>,  <26.552750, 35.688698, 36.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374500, 35.811710, 36.669037>,  <26.077419, 36.016727, 36.841404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374500, 35.811710, 36.669037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629073, 0.313532, 0.711312,
		-0.229475, -0.799370, 0.555291,
		0.742703, -0.512547, -0.430915,
		26.597311, 35.657948, 36.539761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426342, 35.687904, 37.472279>,  <26.077419, 36.016727, 36.841404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426342, 35.687904, 37.472279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678614, 35.690926, 37.161877>,  <26.829977, 35.692738, 36.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678614, 35.690926, 37.161877>,  <26.426342, 35.687904, 37.472279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678614, 35.690926, 37.161877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757165, 0.213238, 0.617438,
		0.170134, -0.976971, 0.128770,
		0.630678, 0.007547, -0.776008,
		26.867817, 35.693192, 36.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930101, 35.331062, 37.790699>,  <26.426342, 35.687904, 37.472279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930101, 35.331062, 37.790699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098110, 35.515781, 37.478207>,  <27.198915, 35.626614, 37.290710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098110, 35.515781, 37.478207>,  <26.930101, 35.331062, 37.790699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098110, 35.515781, 37.478207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779007, 0.258134, 0.571415,
		0.465543, -0.848590, -0.251325,
		0.420022, 0.461802, -0.781230,
		27.224117, 35.654324, 37.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594624, 35.034050, 37.784615>,  <26.930101, 35.331062, 37.790699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594624, 35.034050, 37.784615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677368, 35.343864, 37.545517>,  <27.727015, 35.529755, 37.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677368, 35.343864, 37.545517>,  <27.594624, 35.034050, 37.784615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677368, 35.343864, 37.545517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669479, 0.333463, 0.663777,
		0.713446, -0.537489, -0.449556,
		0.206863, 0.774537, -0.597746,
		27.739428, 35.576225, 37.366192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290546, 35.060532, 37.532677>,  <27.594624, 35.034050, 37.784615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290546, 35.060532, 37.532677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108683, 35.414696, 37.571304>,  <27.999563, 35.627193, 37.594482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108683, 35.414696, 37.571304>,  <28.290546, 35.060532, 37.532677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108683, 35.414696, 37.571304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700729, 0.288667, 0.652418,
		0.549783, 0.364299, -0.751681,
		-0.454661, 0.885413, 0.096571,
		27.972284, 35.680321, 37.600277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870453, 35.546787, 37.550453>,  <28.290546, 35.060532, 37.532677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870453, 35.546787, 37.550453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536821, 35.666897, 37.735558>,  <28.336643, 35.738964, 37.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536821, 35.666897, 37.735558>,  <28.870453, 35.546787, 37.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536821, 35.666897, 37.735558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530140, 0.204367, 0.822913,
		0.152527, 0.931702, -0.329645,
		-0.834078, 0.300275, 0.462762,
		28.286598, 35.756981, 37.874386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634516, 35.702530, 38.212769>,  <28.870453, 35.546787, 37.550453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634516, 35.702530, 38.212769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697763, 35.994770, 37.947071>,  <28.735712, 36.170116, 37.787655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697763, 35.994770, 37.947071>,  <28.634516, 35.702530, 38.212769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697763, 35.994770, 37.947071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897438, -0.174234, -0.405274,
		-0.411828, 0.660199, 0.628121,
		0.158121, 0.730603, -0.664242,
		28.745199, 36.213951, 37.747799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043444, 36.248753, 38.150124>,  <28.634516, 35.702530, 38.212769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043444, 36.248753, 38.150124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260015, 36.192131, 37.818626>,  <28.389959, 36.158157, 37.619728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260015, 36.192131, 37.818626>,  <28.043444, 36.248753, 38.150124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260015, 36.192131, 37.818626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821889, -0.296710, -0.486273,
		-0.177061, 0.944418, -0.276992,
		0.541431, -0.141557, -0.828742,
		28.422445, 36.149662, 37.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792681, 36.622826, 37.585526>,  <28.043444, 36.248753, 38.150124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792681, 36.622826, 37.585526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961403, 36.321960, 37.383007>,  <28.062635, 36.141441, 37.261497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961403, 36.321960, 37.383007>,  <27.792681, 36.622826, 37.585526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961403, 36.321960, 37.383007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836156, -0.106772, -0.537998,
		0.350604, 0.650271, -0.673962,
		0.421804, -0.752162, -0.506293,
		28.087944, 36.096313, 37.231117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851215, 36.696968, 36.787724>,  <27.792681, 36.622826, 37.585526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851215, 36.696968, 36.787724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837185, 36.315647, 36.907711>,  <27.828766, 36.086853, 36.979702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837185, 36.315647, 36.907711>,  <27.851215, 36.696968, 36.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837185, 36.315647, 36.907711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762329, -0.168564, -0.624853,
		0.646239, -0.250590, -0.720819,
		-0.035077, -0.953305, 0.299965,
		27.826662, 36.029655, 36.997700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763214, 36.311485, 36.233074>,  <27.851215, 36.696968, 36.787724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763214, 36.311485, 36.233074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625641, 36.074081, 36.524132>,  <27.543097, 35.931641, 36.698765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625641, 36.074081, 36.524132>,  <27.763214, 36.311485, 36.233074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625641, 36.074081, 36.524132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736111, -0.310682, -0.601346,
		0.582967, -0.742447, -0.330033,
		-0.343932, -0.593505, 0.727641,
		27.522461, 35.896030, 36.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778034, 35.576286, 35.976166>,  <27.763214, 36.311485, 36.233074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778034, 35.576286, 35.976166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500633, 35.613163, 36.261978>,  <27.334192, 35.635288, 36.433464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500633, 35.613163, 36.261978>,  <27.778034, 35.576286, 35.976166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500633, 35.613163, 36.261978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650176, -0.507328, -0.565587,
		0.310358, -0.856807, 0.411775,
		-0.693505, 0.092192, 0.714530,
		27.292582, 35.640820, 36.476337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574453, 34.896011, 36.040649>,  <27.778034, 35.576286, 35.976166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574453, 34.896011, 36.040649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287556, 35.132725, 36.187813>,  <27.115417, 35.274754, 36.276112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287556, 35.132725, 36.187813>,  <27.574453, 34.896011, 36.040649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287556, 35.132725, 36.187813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682088, -0.488243, -0.544402,
		-0.142539, -0.641415, 0.753837,
		-0.717244, 0.591782, 0.367908,
		27.072382, 35.310261, 36.298183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994854, 34.593552, 35.724682>,  <27.574453, 34.896011, 36.040649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994854, 34.593552, 35.724682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858820, 34.867573, 35.982380>,  <26.777201, 35.031986, 36.136997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858820, 34.867573, 35.982380>,  <26.994854, 34.593552, 35.724682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858820, 34.867573, 35.982380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939733, -0.221853, -0.260160,
		-0.035296, -0.693892, 0.719214,
		-0.340083, 0.685051, 0.644242,
		26.756796, 35.073090, 36.175652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521509, 34.265213, 36.157925>,  <26.994854, 34.593552, 35.724682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521509, 34.265213, 36.157925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436201, 34.655964, 36.163952>,  <26.385015, 34.890415, 36.167568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436201, 34.655964, 36.163952>,  <26.521509, 34.265213, 36.157925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436201, 34.655964, 36.163952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943566, -0.201948, -0.262488,
		-0.253376, -0.070198, 0.964817,
		-0.213269, 0.976877, 0.015067,
		26.372221, 34.949028, 36.168472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874027, 34.310509, 36.334152>,  <26.521509, 34.265213, 36.157925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874027, 34.310509, 36.334152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924290, 34.674965, 36.177162>,  <25.954447, 34.893639, 36.082966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924290, 34.674965, 36.177162>,  <25.874027, 34.310509, 36.334152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924290, 34.674965, 36.177162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865871, -0.092374, -0.491666,
		-0.484230, 0.401616, 0.777320,
		0.125656, 0.911138, -0.392478,
		25.961987, 34.948307, 36.059418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230579, 34.511555, 36.408100>,  <25.874027, 34.310509, 36.334152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230579, 34.511555, 36.408100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404968, 34.745880, 36.134823>,  <25.509602, 34.886475, 35.970856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404968, 34.745880, 36.134823>,  <25.230579, 34.511555, 36.408100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404968, 34.745880, 36.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863126, 0.057216, -0.501737,
		-0.254833, 0.808426, 0.530573,
		0.435975, 0.585811, -0.683192,
		25.535761, 34.921623, 35.929867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925838, 34.644901, 35.766537>,  <25.230579, 34.511555, 36.408100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925838, 34.644901, 35.766537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261906, 34.427994, 35.763290>,  <25.463545, 34.297848, 35.761341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261906, 34.427994, 35.763290>,  <24.925838, 34.644901, 35.766537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261906, 34.427994, 35.763290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444164, -0.679425, -0.584038,
		0.311191, 0.494294, -0.811686,
		0.840166, -0.542269, -0.008116,
		25.513956, 34.265312, 35.760857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888321, 34.201118, 35.161041>,  <24.925838, 34.644901, 35.766537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888321, 34.201118, 35.161041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187754, 34.047352, 35.377132>,  <25.367414, 33.955093, 35.506786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187754, 34.047352, 35.377132>,  <24.888321, 34.201118, 35.161041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187754, 34.047352, 35.377132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091154, -0.866709, -0.490415,
		0.656744, 0.317873, -0.683845,
		0.748584, -0.384413, 0.540230,
		25.412329, 33.932030, 35.539200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532774, 34.148170, 34.810371>,  <24.888321, 34.201118, 35.161041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532774, 34.148170, 34.810371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469584, 33.861618, 35.082211>,  <25.431669, 33.689686, 35.245312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469584, 33.861618, 35.082211>,  <25.532774, 34.148170, 34.810371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469584, 33.861618, 35.082211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190144, -0.653285, -0.732846,
		0.968962, -0.244994, -0.033010,
		-0.157978, -0.716377, 0.679593,
		25.422190, 33.646706, 35.286087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110310, 33.650978, 34.657738>,  <25.532774, 34.148170, 34.810371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110310, 33.650978, 34.657738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757559, 33.535084, 34.806519>,  <25.545908, 33.465546, 34.895786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757559, 33.535084, 34.806519>,  <26.110310, 33.650978, 34.657738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757559, 33.535084, 34.806519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175306, -0.530827, -0.829150,
		0.437678, -0.796413, 0.417330,
		-0.881876, -0.289740, 0.371948,
		25.492996, 33.448162, 34.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879402, 33.462921, 34.889587>,  <26.110310, 33.650978, 34.657738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879402, 33.462921, 34.889587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850769, 33.194717, 35.184963>,  <26.833590, 33.033794, 35.362190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850769, 33.194717, 35.184963>,  <26.879402, 33.462921, 34.889587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850769, 33.194717, 35.184963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993992, -0.109412, -0.002991,
		0.082800, 0.733790, 0.674311,
		-0.071583, -0.670508, 0.738441,
		26.829294, 32.993565, 35.406494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286625, 33.688881, 35.541771>,  <26.879402, 33.462921, 34.889587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286625, 33.688881, 35.541771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248352, 33.293297, 35.496521>,  <27.225388, 33.055946, 35.469372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248352, 33.293297, 35.496521>,  <27.286625, 33.688881, 35.541771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248352, 33.293297, 35.496521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985071, -0.077736, -0.153595,
		0.143106, -0.126131, 0.981637,
		-0.095682, -0.988963, -0.113124,
		27.219648, 32.996609, 35.462585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816109, 33.325367, 35.790554>,  <27.286625, 33.688881, 35.541771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816109, 33.325367, 35.790554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678991, 33.024963, 35.564819>,  <27.596722, 32.844719, 35.429379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678991, 33.024963, 35.564819>,  <27.816109, 33.325367, 35.790554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678991, 33.024963, 35.564819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934304, -0.335110, -0.121563,
		-0.097818, -0.568930, 0.816548,
		-0.342794, -0.751013, -0.564333,
		27.576153, 32.799660, 35.395519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181168, 32.633591, 35.989376>,  <27.816109, 33.325367, 35.790554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181168, 32.633591, 35.989376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072336, 32.616543, 35.604843>,  <28.007036, 32.606316, 35.374123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072336, 32.616543, 35.604843>,  <28.181168, 32.633591, 35.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072336, 32.616543, 35.604843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909069, -0.338972, -0.242261,
		-0.315539, -0.939830, 0.130973,
		-0.272081, -0.042621, -0.961330,
		27.990711, 32.603756, 35.316444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342634, 31.916237, 35.709015>,  <28.181168, 32.633591, 35.989376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342634, 31.916237, 35.709015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361376, 32.228504, 35.459740>,  <28.372620, 32.415863, 35.310173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361376, 32.228504, 35.459740>,  <28.342634, 31.916237, 35.709015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361376, 32.228504, 35.459740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991895, -0.110122, -0.063376,
		-0.118103, -0.615169, -0.779499,
		0.046853, 0.780667, -0.623189,
		28.375431, 32.462704, 35.272781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697964, 31.877054, 34.958771>,  <28.342634, 31.916237, 35.709015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697964, 31.877054, 34.958771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786154, 32.251316, 35.069000>,  <28.839067, 32.475872, 35.135139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786154, 32.251316, 35.069000>,  <28.697964, 31.877054, 34.958771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786154, 32.251316, 35.069000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974067, -0.225931, -0.012217,
		0.050830, 0.271120, -0.961203,
		0.220478, 0.935654, 0.275573,
		28.852297, 32.532013, 35.151672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233631, 32.116867, 34.488789>,  <28.697964, 31.877054, 34.958771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233631, 32.116867, 34.488789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251080, 32.297184, 34.845413>,  <29.261549, 32.405376, 35.059387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251080, 32.297184, 34.845413>,  <29.233631, 32.116867, 34.488789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251080, 32.297184, 34.845413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962470, -0.258230, 0.083478,
		0.267860, 0.854459, -0.445142,
		0.043620, 0.450796, 0.891560,
		29.264166, 32.432423, 35.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728594, 32.757214, 34.560123>,  <29.233631, 32.116867, 34.488789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728594, 32.757214, 34.560123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690916, 32.539207, 34.893372>,  <29.668310, 32.408405, 35.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690916, 32.539207, 34.893372>,  <29.728594, 32.757214, 34.560123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690916, 32.539207, 34.893372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977362, -0.209871, -0.026791,
		0.189449, 0.811736, 0.552443,
		-0.094195, -0.545012, 0.833120,
		29.662657, 32.375702, 35.143307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212294, 32.918896, 35.074329>,  <29.728594, 32.757214, 34.560123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212294, 32.918896, 35.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106379, 32.541412, 35.153629>,  <30.042830, 32.314922, 35.201210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106379, 32.541412, 35.153629>,  <30.212294, 32.918896, 35.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106379, 32.541412, 35.153629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963045, -0.248273, 0.104428,
		-0.049328, 0.218579, 0.974572,
		-0.264786, -0.943707, 0.198254,
		30.026943, 32.258301, 35.213104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685703, 33.252934, 34.548637>,  <30.212294, 32.918896, 35.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685703, 33.252934, 34.548637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645084, 32.919743, 34.331070>,  <30.620714, 32.719830, 34.200531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645084, 32.919743, 34.331070>,  <30.685703, 33.252934, 34.548637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645084, 32.919743, 34.331070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502774, -0.428811, 0.750560,
		-0.858433, 0.349682, -0.375253,
		-0.101545, -0.832973, -0.543916,
		30.614620, 32.669849, 34.167896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926363, 33.779724, 34.215607>,  <30.685703, 33.252934, 34.548637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926363, 33.779724, 34.215607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189701, 33.660973, 33.938931>,  <31.347704, 33.589722, 33.772923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189701, 33.660973, 33.938931>,  <30.926363, 33.779724, 34.215607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189701, 33.660973, 33.938931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679745, 0.629187, 0.376923,
		0.323304, -0.718322, 0.616026,
		0.658347, -0.296880, -0.691695,
		31.387205, 33.571907, 33.731422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494612, 33.494064, 34.542976>,  <30.926363, 33.779724, 34.215607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494612, 33.494064, 34.542976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591246, 33.688049, 34.206776>,  <31.649227, 33.804440, 34.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591246, 33.688049, 34.206776>,  <31.494612, 33.494064, 34.542976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591246, 33.688049, 34.206776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587152, 0.616553, 0.524513,
		0.772586, -0.620218, -0.135798,
		0.241586, 0.484966, -0.840502,
		31.663721, 33.833538, 33.954624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136150, 33.580608, 34.601540>,  <31.494612, 33.494064, 34.542976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136150, 33.580608, 34.601540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008827, 33.848831, 34.333500>,  <31.932434, 34.009766, 34.172676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008827, 33.848831, 34.333500>,  <32.136150, 33.580608, 34.601540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008827, 33.848831, 34.333500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580895, 0.696578, 0.421119,
		0.749160, -0.255212, -0.611249,
		-0.318308, 0.670557, -0.670100,
		31.913334, 34.049999, 34.132469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742474, 34.030830, 34.444149>,  <32.136150, 33.580608, 34.601540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742474, 34.030830, 34.444149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426395, 34.248173, 34.330761>,  <32.236748, 34.378578, 34.262726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426395, 34.248173, 34.330761>,  <32.742474, 34.030830, 34.444149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426395, 34.248173, 34.330761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479029, 0.836107, 0.267315,
		0.382262, 0.075438, -0.920969,
		-0.790195, 0.543355, -0.283475,
		32.189339, 34.411179, 34.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372940, 33.725574, 34.379704>,  <32.742474, 34.030830, 34.444149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372940, 33.725574, 34.379704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187805, 33.973938, 34.126640>,  <33.076725, 34.122955, 33.974804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187805, 33.973938, 34.126640>,  <33.372940, 33.725574, 34.379704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187805, 33.973938, 34.126640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088933, 0.677577, 0.730055,
		0.881970, 0.394162, -0.258390,
		-0.462839, 0.620907, -0.632657,
		33.048954, 34.160210, 33.936844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966831, 33.491650, 33.823662>,  <33.372940, 33.725574, 34.379704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966831, 33.491650, 33.823662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948650, 33.236778, 33.515911>,  <32.937740, 33.083855, 33.331261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948650, 33.236778, 33.515911>,  <32.966831, 33.491650, 33.823662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948650, 33.236778, 33.515911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991386, 0.065933, -0.113171,
		0.122837, -0.767890, 0.628694,
		-0.045451, -0.637180, -0.769374,
		32.935017, 33.045624, 33.285099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274731, 32.815929, 34.027107>,  <32.966831, 33.491650, 33.823662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274731, 32.815929, 34.027107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316544, 32.898838, 33.638035>,  <33.341633, 32.948586, 33.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316544, 32.898838, 33.638035>,  <33.274731, 32.815929, 34.027107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316544, 32.898838, 33.638035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987476, 0.094574, 0.126280,
		0.118165, -0.973701, -0.194793,
		0.104536, 0.207275, -0.972681,
		33.347904, 32.961021, 33.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833447, 32.419445, 33.771515>,  <33.274731, 32.815929, 34.027107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833447, 32.419445, 33.771515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807625, 32.759411, 33.562336>,  <33.792133, 32.963390, 33.436829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807625, 32.759411, 33.562336>,  <33.833447, 32.419445, 33.771515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807625, 32.759411, 33.562336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955266, 0.204194, 0.213942,
		0.288615, -0.485746, -0.825077,
		-0.064554, 0.849915, -0.522950,
		33.788258, 33.014385, 33.405453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483665, 32.441059, 33.418388>,  <33.833447, 32.419445, 33.771515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483665, 32.441059, 33.418388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315807, 32.802467, 33.453163>,  <34.215092, 33.019310, 33.474026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315807, 32.802467, 33.453163>,  <34.483665, 32.441059, 33.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315807, 32.802467, 33.453163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875750, 0.377833, 0.300507,
		0.238666, 0.202239, -0.949809,
		-0.419644, 0.903516, 0.086935,
		34.189915, 33.073521, 33.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863518, 33.016281, 33.105633>,  <34.483665, 32.441059, 33.418388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863518, 33.016281, 33.105633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686165, 33.146786, 33.439571>,  <34.579754, 33.225086, 33.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686165, 33.146786, 33.439571>,  <34.863518, 33.016281, 33.105633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686165, 33.146786, 33.439571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849716, 0.449455, 0.275631,
		-0.285300, 0.831593, -0.476506,
		-0.443381, 0.326257, 0.834847,
		34.553150, 33.244663, 33.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615978, 33.260921, 33.045601>,  <34.863518, 33.016281, 33.105633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615978, 33.260921, 33.045601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874584, 33.151154, 32.760868>,  <36.029747, 33.085293, 32.590027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874584, 33.151154, 32.760868>,  <35.615978, 33.260921, 33.045601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874584, 33.151154, 32.760868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404584, -0.667716, 0.624873,
		-0.646780, -0.691989, -0.320665,
		0.646519, -0.274420, -0.711834,
		36.068539, 33.068825, 32.547318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517982, 32.466663, 32.744278>,  <35.615978, 33.260921, 33.045601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517982, 32.466663, 32.744278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872204, 32.650997, 32.767673>,  <36.084736, 32.761597, 32.781712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872204, 32.650997, 32.767673>,  <35.517982, 32.466663, 32.744278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872204, 32.650997, 32.767673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311540, -0.682572, 0.661088,
		0.344580, -0.567207, -0.748024,
		0.885555, 0.460837, 0.058493,
		36.137871, 32.789249, 32.785221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973751, 31.943064, 32.792233>,  <35.517982, 32.466663, 32.744278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973751, 31.943064, 32.792233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221771, 32.236652, 32.903099>,  <36.370583, 32.412804, 32.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221771, 32.236652, 32.903099>,  <35.973751, 31.943064, 32.792233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221771, 32.236652, 32.903099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453399, -0.623538, 0.636891,
		0.640283, -0.269238, -0.719408,
		0.620054, 0.733969, 0.277169,
		36.407787, 32.456844, 32.986248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624634, 31.763685, 32.643597>,  <35.973751, 31.943064, 32.792233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624634, 31.763685, 32.643597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697521, 32.014126, 32.946857>,  <36.741253, 32.164391, 33.128815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697521, 32.014126, 32.946857>,  <36.624634, 31.763685, 32.643597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697521, 32.014126, 32.946857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490440, -0.726169, 0.481817,
		0.852212, 0.284032, -0.439385,
		0.182216, 0.626103, 0.758151,
		36.752186, 32.201958, 33.174301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288635, 31.687056, 32.829304>,  <36.624634, 31.763685, 32.643597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288635, 31.687056, 32.829304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139908, 31.881540, 33.145618>,  <37.050671, 31.998232, 33.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139908, 31.881540, 33.145618>,  <37.288635, 31.687056, 32.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139908, 31.881540, 33.145618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358395, -0.710629, 0.605442,
		0.856330, 0.508531, 0.089970,
		-0.371821, 0.486213, 0.790788,
		37.028362, 32.027405, 33.382854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880619, 31.734529, 33.289257>,  <37.288635, 31.687056, 32.829304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880619, 31.734529, 33.289257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521069, 31.746721, 33.464115>,  <37.305340, 31.754036, 33.569031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521069, 31.746721, 33.464115>,  <37.880619, 31.734529, 33.289257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521069, 31.746721, 33.464115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201042, -0.857709, 0.473200,
		0.389364, 0.513232, 0.764846,
		-0.898876, 0.030481, 0.437142,
		37.251408, 31.755865, 33.595257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026302, 31.229345, 33.839649>,  <37.880619, 31.734529, 33.289257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026302, 31.229345, 33.839649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634228, 31.308468, 33.843784>,  <37.398983, 31.355942, 33.846268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634228, 31.308468, 33.843784>,  <38.026302, 31.229345, 33.839649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634228, 31.308468, 33.843784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172028, -0.876009, 0.450571,
		0.098186, 0.439865, 0.892681,
		-0.980187, 0.197806, 0.010342,
		37.340172, 31.367809, 33.846886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680756, 31.083511, 34.422295>,  <38.026302, 31.229345, 33.839649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680756, 31.083511, 34.422295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394566, 31.053436, 34.144463>,  <37.222851, 31.035391, 33.977764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394566, 31.053436, 34.144463>,  <37.680756, 31.083511, 34.422295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394566, 31.053436, 34.144463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392619, -0.779079, 0.488760,
		-0.577882, 0.622401, 0.527891,
		-0.715474, -0.075186, -0.694582,
		37.179924, 31.030880, 33.936089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605541, 30.407450, 34.826324>,  <37.680756, 31.083511, 34.422295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605541, 30.407450, 34.826324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266121, 30.505808, 35.013725>,  <37.062469, 30.564823, 35.126163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266121, 30.505808, 35.013725>,  <37.605541, 30.407450, 34.826324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266121, 30.505808, 35.013725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113330, 0.780433, -0.614882,
		-0.516830, -0.574856, -0.634372,
		-0.848554, 0.245896, 0.468500,
		37.011555, 30.579576, 35.154274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978519, 30.460146, 34.395359>,  <37.605541, 30.407450, 34.826324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978519, 30.460146, 34.395359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963570, 30.719589, 34.699440>,  <36.954597, 30.875256, 34.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963570, 30.719589, 34.699440>,  <36.978519, 30.460146, 34.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963570, 30.719589, 34.699440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022339, 0.760003, -0.649536,
		-0.999052, -0.041260, -0.013919,
		-0.037379, 0.648609, 0.760204,
		36.952354, 30.914171, 34.927502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303066, 30.821772, 34.554123>,  <36.978519, 30.460146, 34.395359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303066, 30.821772, 34.554123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621620, 31.052053, 34.628246>,  <36.812752, 31.190222, 34.672722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621620, 31.052053, 34.628246>,  <36.303066, 30.821772, 34.554123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621620, 31.052053, 34.628246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406285, 0.736229, -0.541201,
		-0.448002, 0.355715, 0.820220,
		0.796383, 0.575703, 0.185311,
		36.860535, 31.224764, 34.683838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100990, 31.371830, 34.197659>,  <36.303066, 30.821772, 34.554123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100990, 31.371830, 34.197659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476002, 31.490854, 34.269775>,  <36.701008, 31.562269, 34.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476002, 31.490854, 34.269775>,  <36.100990, 31.371830, 34.197659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476002, 31.490854, 34.269775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096679, 0.720609, -0.686569,
		-0.334217, 0.626244, 0.704356,
		0.937524, 0.297559, 0.180295,
		36.757259, 31.580122, 34.323864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113823, 32.098953, 34.282761>,  <36.100990, 31.371830, 34.197659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113823, 32.098953, 34.282761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486557, 32.019062, 34.161572>,  <36.710197, 31.971128, 34.088860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486557, 32.019062, 34.161572>,  <36.113823, 32.098953, 34.282761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486557, 32.019062, 34.161572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096404, 0.668660, -0.737293,
		0.349843, 0.716243, 0.603826,
		0.931835, -0.199725, -0.302974,
		36.766106, 31.959145, 34.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533352, 32.672279, 34.351604>,  <36.113823, 32.098953, 34.282761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533352, 32.672279, 34.351604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703438, 32.459641, 34.058594>,  <36.805489, 32.332058, 33.882786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703438, 32.459641, 34.058594>,  <36.533352, 32.672279, 34.351604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703438, 32.459641, 34.058594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099831, 0.776855, -0.621715,
		0.899568, 0.337494, 0.277263,
		0.425218, -0.531596, -0.732526,
		36.831005, 32.300163, 33.838837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987774, 33.073746, 34.062969>,  <36.533352, 32.672279, 34.351604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987774, 33.073746, 34.062969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898273, 32.826797, 33.761295>,  <36.844574, 32.678631, 33.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898273, 32.826797, 33.761295>,  <36.987774, 33.073746, 34.062969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898273, 32.826797, 33.761295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262842, 0.783355, -0.563266,
		0.938536, 0.072200, -0.337547,
		-0.223752, -0.617367, -0.754184,
		36.831146, 32.641586, 33.535042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032280, 33.493298, 33.459339>,  <36.987774, 33.073746, 34.062969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032280, 33.493298, 33.459339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848099, 33.172798, 33.306507>,  <36.737591, 32.980499, 33.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848099, 33.172798, 33.306507>,  <37.032280, 33.493298, 33.459339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848099, 33.172798, 33.306507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390188, 0.569299, -0.723638,
		0.797331, -0.184118, -0.574772,
		-0.460453, -0.801248, -0.382079,
		36.709965, 32.932423, 33.191883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322273, 33.414783, 32.814411>,  <37.032280, 33.493298, 33.459339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322273, 33.414783, 32.814411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967365, 33.230282, 32.815380>,  <36.754421, 33.119583, 32.815960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967365, 33.230282, 32.815380>,  <37.322273, 33.414783, 32.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967365, 33.230282, 32.815380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243957, 0.464812, -0.851137,
		0.391462, -0.755777, -0.524937,
		-0.887267, -0.461250, 0.002421,
		36.701187, 33.091908, 32.816105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248795, 32.864475, 32.265553>,  <37.322273, 33.414783, 32.814411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248795, 32.864475, 32.265553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902927, 33.043915, 32.355980>,  <36.695408, 33.151581, 32.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902927, 33.043915, 32.355980>,  <37.248795, 32.864475, 32.265553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902927, 33.043915, 32.355980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020326, 0.418414, -0.908029,
		-0.501935, -0.789737, -0.352671,
		-0.864667, 0.448603, 0.226069,
		36.643528, 33.178497, 32.423801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921482, 32.850094, 31.693785>,  <37.248795, 32.864475, 32.265553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921482, 32.850094, 31.693785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663136, 33.105545, 31.861124>,  <36.508129, 33.258816, 31.961527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663136, 33.105545, 31.861124>,  <36.921482, 32.850094, 31.693785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663136, 33.105545, 31.861124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360528, 0.227890, -0.904481,
		-0.672962, -0.734999, 0.083056,
		-0.645865, 0.638626, 0.418348,
		36.469376, 33.297134, 31.986629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332191, 32.748169, 31.271122>,  <36.921482, 32.850094, 31.693785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332191, 32.748169, 31.271122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294079, 33.106197, 31.445372>,  <36.271214, 33.321014, 31.549921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294079, 33.106197, 31.445372>,  <36.332191, 32.748169, 31.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294079, 33.106197, 31.445372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523752, 0.327069, -0.786581,
		-0.846526, -0.303101, 0.437634,
		-0.095277, 0.895073, 0.435622,
		36.265495, 33.374718, 31.576057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648849, 32.932194, 31.350166>,  <36.332191, 32.748169, 31.271122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648849, 32.932194, 31.350166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841385, 33.282799, 31.347704>,  <35.956905, 33.493160, 31.346226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841385, 33.282799, 31.347704>,  <35.648849, 32.932194, 31.350166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841385, 33.282799, 31.347704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628312, 0.340127, -0.699669,
		-0.611174, 0.340649, 0.714440,
		0.481342, 0.876511, -0.006157,
		35.985786, 33.545753, 31.345858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094723, 33.411713, 31.364740>,  <35.648849, 32.932194, 31.350166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094723, 33.411713, 31.364740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416023, 33.630936, 31.271431>,  <35.608803, 33.762470, 31.215445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416023, 33.630936, 31.271431>,  <35.094723, 33.411713, 31.364740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416023, 33.630936, 31.271431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566171, 0.580876, -0.584837,
		-0.185020, 0.601846, 0.776884,
		0.803255, 0.548056, -0.233274,
		35.657001, 33.795353, 31.201448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943314, 34.071842, 31.393087>,  <35.094723, 33.411713, 31.364740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943314, 34.071842, 31.393087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244312, 34.185730, 31.155539>,  <35.424911, 34.254063, 31.013010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244312, 34.185730, 31.155539>,  <34.943314, 34.071842, 31.393087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244312, 34.185730, 31.155539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646697, 0.490085, -0.584465,
		0.124637, 0.823862, 0.552917,
		0.752495, 0.284724, -0.593872,
		35.470062, 34.271149, 30.977377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905132, 34.761852, 31.214151>,  <34.943314, 34.071842, 31.393087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905132, 34.761852, 31.214151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126980, 34.638123, 30.905163>,  <35.260090, 34.563885, 30.719769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126980, 34.638123, 30.905163>,  <34.905132, 34.761852, 31.214151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126980, 34.638123, 30.905163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545053, 0.566405, -0.618145,
		0.628738, 0.763875, 0.145544,
		0.554622, -0.309322, -0.772473,
		35.293365, 34.545326, 30.673422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055897, 35.415825, 30.858774>,  <34.905132, 34.761852, 31.214151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055897, 35.415825, 30.858774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101402, 35.111275, 30.603476>,  <35.128704, 34.928543, 30.450296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101402, 35.111275, 30.603476>,  <35.055897, 35.415825, 30.858774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101402, 35.111275, 30.603476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650254, 0.428646, -0.627242,
		0.751151, 0.486381, -0.446324,
		0.113764, -0.761378, -0.638249,
		35.135532, 34.882862, 30.412001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178215, 35.722511, 30.244942>,  <35.055897, 35.415825, 30.858774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178215, 35.722511, 30.244942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091850, 35.354385, 30.114468>,  <35.040031, 35.133511, 30.036184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091850, 35.354385, 30.114468>,  <35.178215, 35.722511, 30.244942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091850, 35.354385, 30.114468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498500, 0.391144, -0.773630,
		0.839571, -0.004433, -0.543231,
		-0.215911, -0.920319, -0.326184,
		35.027077, 35.078289, 30.016613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329391, 35.741154, 29.563133>,  <35.178215, 35.722511, 30.244942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329391, 35.741154, 29.563133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099422, 35.417023, 29.608442>,  <34.961441, 35.222542, 29.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099422, 35.417023, 29.608442>,  <35.329391, 35.741154, 29.563133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099422, 35.417023, 29.608442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468096, 0.212200, -0.857821,
		0.671083, -0.546201, -0.501310,
		-0.574921, -0.810331, 0.113270,
		34.926945, 35.173923, 29.642424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272228, 35.457035, 28.882669>,  <35.329391, 35.741154, 29.563133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272228, 35.457035, 28.882669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966347, 35.302349, 29.088846>,  <34.782818, 35.209538, 29.212551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966347, 35.302349, 29.088846>,  <35.272228, 35.457035, 28.882669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966347, 35.302349, 29.088846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625881, 0.255448, -0.736899,
		0.153303, -0.886113, -0.437381,
		-0.764703, -0.386717, 0.515440,
		34.736935, 35.186333, 29.243479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899986, 34.961662, 28.391611>,  <35.272228, 35.457035, 28.882669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899986, 34.961662, 28.391611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639931, 35.072433, 28.674631>,  <34.483898, 35.138897, 28.844442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639931, 35.072433, 28.674631>,  <34.899986, 34.961662, 28.391611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639931, 35.072433, 28.674631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689813, 0.175288, -0.702447,
		-0.318555, -0.944766, 0.077069,
		-0.650139, 0.276931, 0.707551,
		34.444889, 35.155514, 28.886896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237259, 34.645969, 28.248291>,  <34.899986, 34.961662, 28.391611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237259, 34.645969, 28.248291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158947, 34.969696, 28.469807>,  <34.111961, 35.163933, 28.602716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158947, 34.969696, 28.469807>,  <34.237259, 34.645969, 28.248291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158947, 34.969696, 28.469807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752933, 0.237761, -0.613647,
		-0.628302, -0.537107, 0.562809,
		-0.195780, 0.809312, 0.553791,
		34.100212, 35.212490, 28.635944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588234, 34.608612, 28.376982>,  <34.237259, 34.645969, 28.248291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588234, 34.608612, 28.376982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671101, 34.997765, 28.418135>,  <33.720821, 35.231255, 28.442827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671101, 34.997765, 28.418135>,  <33.588234, 34.608612, 28.376982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671101, 34.997765, 28.418135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759576, 0.226231, -0.609806,
		-0.616544, 0.048183, 0.785845,
		0.207164, 0.972882, 0.102883,
		33.733250, 35.289631, 28.448999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973301, 34.792912, 28.621433>,  <33.588234, 34.608612, 28.376982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973301, 34.792912, 28.621433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176800, 35.120876, 28.516422>,  <33.298901, 35.317654, 28.453415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176800, 35.120876, 28.516422>,  <32.973301, 34.792912, 28.621433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176800, 35.120876, 28.516422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842726, 0.411928, -0.346595,
		-0.176034, 0.397570, 0.900528,
		0.508748, 0.819911, -0.262529,
		33.329426, 35.366848, 28.437664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428734, 35.303383, 28.836224>,  <32.973301, 34.792912, 28.621433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428734, 35.303383, 28.836224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686756, 35.471127, 28.580711>,  <32.841568, 35.571774, 28.427404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686756, 35.471127, 28.580711>,  <32.428734, 35.303383, 28.836224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686756, 35.471127, 28.580711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758352, 0.454004, -0.467743,
		0.093854, 0.786139, 0.610882,
		0.645054, 0.419364, -0.638780,
		32.880272, 35.596935, 28.389078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243065, 35.954414, 28.863785>,  <32.428734, 35.303383, 28.836224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243065, 35.954414, 28.863785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427971, 35.943321, 28.509260>,  <32.538914, 35.936665, 28.296545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427971, 35.943321, 28.509260>,  <32.243065, 35.954414, 28.863785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427971, 35.943321, 28.509260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790484, 0.440018, -0.426050,
		0.401807, 0.897561, 0.181483,
		0.462261, -0.027730, -0.886310,
		32.566650, 35.935001, 28.243366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108940, 36.571503, 28.579956>,  <32.243065, 35.954414, 28.863785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108940, 36.571503, 28.579956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231899, 36.370968, 28.256433>,  <32.305676, 36.250648, 28.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231899, 36.370968, 28.256433>,  <32.108940, 36.571503, 28.579956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231899, 36.370968, 28.256433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780519, 0.353361, -0.515679,
		0.544330, 0.789807, -0.282681,
		0.307399, -0.501338, -0.808805,
		32.324120, 36.220566, 28.013792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153194, 37.073997, 27.976213>,  <32.108940, 36.571503, 28.579956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153194, 37.073997, 27.976213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099815, 36.708740, 27.822145>,  <32.067787, 36.489586, 27.729706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099815, 36.708740, 27.822145>,  <32.153194, 37.073997, 27.976213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099815, 36.708740, 27.822145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811305, 0.323865, -0.486720,
		0.569189, 0.247538, -0.784059,
		-0.133447, -0.913147, -0.385169,
		32.059780, 36.434795, 27.706594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933994, 37.251617, 27.348482>,  <32.153194, 37.073997, 27.976213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933994, 37.251617, 27.348482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835564, 36.864716, 27.373350>,  <31.776505, 36.632576, 27.388271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835564, 36.864716, 27.373350>,  <31.933994, 37.251617, 27.348482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835564, 36.864716, 27.373350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716713, 0.138406, -0.683495,
		0.652510, -0.212749, -0.727303,
		-0.246076, -0.967254, 0.062169,
		31.761742, 36.574539, 27.392000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832359, 36.990616, 26.580688>,  <31.933994, 37.251617, 27.348482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832359, 36.990616, 26.580688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676462, 36.704662, 26.812912>,  <31.582924, 36.533092, 26.952246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676462, 36.704662, 26.812912>,  <31.832359, 36.990616, 26.580688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676462, 36.704662, 26.812912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874273, 0.089120, -0.477183,
		0.289389, -0.693545, -0.659734,
		-0.389744, -0.714880, 0.580557,
		31.559540, 36.490200, 26.987080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503036, 36.698154, 26.139236>,  <31.832359, 36.990616, 26.580688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503036, 36.698154, 26.139236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335409, 36.612053, 26.492064>,  <31.234833, 36.560394, 26.703760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335409, 36.612053, 26.492064>,  <31.503036, 36.698154, 26.139236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335409, 36.612053, 26.492064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900377, 0.223765, -0.373163,
		-0.117053, -0.950577, -0.287580,
		-0.419070, -0.215251, 0.882070,
		31.209688, 36.547478, 26.756685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800779, 36.229195, 26.009436>,  <31.503036, 36.698154, 26.139236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800779, 36.229195, 26.009436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781290, 36.433350, 26.352861>,  <30.769596, 36.555843, 26.558918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781290, 36.433350, 26.352861>,  <30.800779, 36.229195, 26.009436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781290, 36.433350, 26.352861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853843, 0.424723, -0.300934,
		-0.518245, -0.747743, 0.415094,
		-0.048721, 0.510383, 0.858566,
		30.766674, 36.586464, 26.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139662, 36.275013, 26.063505>,  <30.800779, 36.229195, 26.009436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139662, 36.275013, 26.063505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273764, 36.550102, 26.321075>,  <30.354225, 36.715157, 26.475618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273764, 36.550102, 26.321075>,  <30.139662, 36.275013, 26.063505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273764, 36.550102, 26.321075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668295, 0.655353, -0.351985,
		-0.664067, -0.312328, 0.679312,
		0.335255, 0.687723, 0.643926,
		30.374340, 36.756420, 26.514254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486481, 36.380768, 26.482101>,  <30.139662, 36.275013, 26.063505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486481, 36.380768, 26.482101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728277, 36.695381, 26.532627>,  <29.873356, 36.884148, 26.562943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728277, 36.695381, 26.532627>,  <29.486481, 36.380768, 26.482101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728277, 36.695381, 26.532627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781189, 0.616339, -0.099344,
		-0.155990, -0.038623, 0.987003,
		0.604492, 0.786533, 0.126314,
		29.909624, 36.931339, 26.570522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106974, 36.933048, 26.916258>,  <29.486481, 36.380768, 26.482101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106974, 36.933048, 26.916258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386354, 37.142857, 26.721512>,  <29.553984, 37.268742, 26.604664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386354, 37.142857, 26.721512>,  <29.106974, 36.933048, 26.916258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386354, 37.142857, 26.721512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671690, 0.715240, -0.193039,
		0.246971, 0.461850, 0.851880,
		0.698454, 0.524525, -0.486864,
		29.595890, 37.300213, 26.575453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001986, 37.707218, 27.083269>,  <29.106974, 36.933048, 26.916258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001986, 37.707218, 27.083269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205009, 37.669983, 26.740641>,  <29.326824, 37.647644, 26.535063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205009, 37.669983, 26.740641>,  <29.001986, 37.707218, 27.083269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205009, 37.669983, 26.740641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503922, 0.774318, -0.382745,
		0.698888, 0.625913, 0.346107,
		0.507561, -0.093085, -0.856573,
		29.357279, 37.642056, 26.483669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059658, 38.364269, 26.946318>,  <29.001986, 37.707218, 27.083269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059658, 38.364269, 26.946318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141045, 38.163715, 26.609934>,  <29.189877, 38.043381, 26.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141045, 38.163715, 26.609934>,  <29.059658, 38.364269, 26.946318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141045, 38.163715, 26.609934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581906, 0.628834, -0.515707,
		0.787392, 0.594289, -0.163812,
		0.203469, -0.501387, -0.840959,
		29.202085, 38.013298, 26.357647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286108, 38.874859, 26.504259>,  <29.059658, 38.364269, 26.946318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286108, 38.874859, 26.504259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178474, 38.568779, 26.270313>,  <29.113894, 38.385132, 26.129946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178474, 38.568779, 26.270313>,  <29.286108, 38.874859, 26.504259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178474, 38.568779, 26.270313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419839, 0.639721, -0.643811,
		0.866793, 0.072310, -0.493398,
		-0.269083, -0.765198, -0.584864,
		29.097750, 38.339218, 26.094854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489357, 39.213253, 25.979586>,  <29.286108, 38.874859, 26.504259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489357, 39.213253, 25.979586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227964, 38.936321, 25.857176>,  <29.071129, 38.770164, 25.783730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227964, 38.936321, 25.857176>,  <29.489357, 39.213253, 25.979586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227964, 38.936321, 25.857176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366329, 0.643048, -0.672527,
		0.662398, -0.327375, -0.673836,
		-0.653478, -0.692326, -0.306027,
		29.031921, 38.728622, 25.765369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468637, 39.202652, 25.255510>,  <29.489357, 39.213253, 25.979586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468637, 39.202652, 25.255510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123297, 39.057728, 25.395996>,  <28.916092, 38.970772, 25.480288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123297, 39.057728, 25.395996>,  <29.468637, 39.202652, 25.255510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123297, 39.057728, 25.395996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503917, 0.655240, -0.562787,
		-0.026228, -0.662868, -0.748277,
		-0.863354, -0.362309, 0.351216,
		28.864290, 38.949036, 25.501360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080002, 39.182083, 24.668280>,  <29.468637, 39.202652, 25.255510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080002, 39.182083, 24.668280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811821, 39.166073, 24.964628>,  <28.650913, 39.156467, 25.142437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811821, 39.166073, 24.964628>,  <29.080002, 39.182083, 24.668280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811821, 39.166073, 24.964628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458794, 0.807116, -0.371580,
		-0.583097, -0.589034, -0.559496,
		-0.670452, -0.040026, 0.740872,
		28.610685, 39.154064, 25.186890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483187, 39.235661, 24.323404>,  <29.080002, 39.182083, 24.668280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483187, 39.235661, 24.323404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401180, 39.316242, 24.706526>,  <28.351976, 39.364590, 24.936398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401180, 39.316242, 24.706526>,  <28.483187, 39.235661, 24.323404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401180, 39.316242, 24.706526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538023, 0.794281, -0.282222,
		-0.817618, -0.573180, -0.054456,
		-0.205017, 0.201451, 0.957802,
		28.339674, 39.376678, 24.993866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682570, 39.362301, 24.496052>,  <28.483187, 39.235661, 24.323404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682570, 39.362301, 24.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921095, 39.562687, 24.746954>,  <28.064209, 39.682919, 24.897495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921095, 39.562687, 24.746954>,  <27.682570, 39.362301, 24.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921095, 39.562687, 24.746954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561504, 0.818716, -0.120071,
		-0.573695, -0.280607, 0.769502,
		0.596311, 0.500963, 0.627255,
		28.099989, 39.712975, 24.935131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179148, 39.792809, 24.871948>,  <27.682570, 39.362301, 24.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179148, 39.792809, 24.871948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535549, 39.956486, 24.950609>,  <27.749390, 40.054691, 24.997807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535549, 39.956486, 24.950609>,  <27.179148, 39.792809, 24.871948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535549, 39.956486, 24.950609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413331, 0.910328, -0.021482,
		-0.187810, -0.062143, 0.980238,
		0.891002, 0.409197, 0.196654,
		27.802851, 40.079247, 25.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961945, 40.298969, 25.219978>,  <27.179148, 39.792809, 24.871948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961945, 40.298969, 25.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338085, 40.406757, 25.136911>,  <27.563770, 40.471428, 25.087070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338085, 40.406757, 25.136911>,  <26.961945, 40.298969, 25.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338085, 40.406757, 25.136911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282249, 0.958738, -0.034019,
		0.189934, 0.090605, 0.977607,
		0.940351, 0.269468, -0.207670,
		27.620190, 40.487598, 25.074610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046507, 40.945545, 25.566845>,  <26.961945, 40.298969, 25.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046507, 40.945545, 25.566845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302469, 40.976467, 25.261023>,  <27.456047, 40.995022, 25.077530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302469, 40.976467, 25.261023>,  <27.046507, 40.945545, 25.566845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302469, 40.976467, 25.261023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372697, 0.901301, -0.220805,
		0.672026, 0.426242, 0.605558,
		0.639905, 0.077303, -0.764556,
		27.494440, 40.999657, 25.031656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297419, 41.636845, 25.675652>,  <27.046507, 40.945545, 25.566845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297419, 41.636845, 25.675652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333517, 41.518574, 25.295246>,  <27.355175, 41.447613, 25.067003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333517, 41.518574, 25.295246>,  <27.297419, 41.636845, 25.675652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333517, 41.518574, 25.295246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220100, 0.925379, -0.308592,
		0.971294, 0.237167, 0.018432,
		0.090244, -0.295677, -0.951016,
		27.360590, 41.429871, 25.009941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678364, 42.128006, 25.366476>,  <27.297419, 41.636845, 25.675652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678364, 42.128006, 25.366476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516579, 41.951912, 25.045826>,  <27.419508, 41.846256, 24.853436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516579, 41.951912, 25.045826>,  <27.678364, 42.128006, 25.366476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516579, 41.951912, 25.045826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266305, 0.895231, -0.357273,
		0.874924, 0.068973, -0.479324,
		-0.404463, -0.440233, -0.801626,
		27.395239, 41.819843, 24.805338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017561, 42.391457, 24.765148>,  <27.678364, 42.128006, 25.366476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017561, 42.391457, 24.765148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663620, 42.253071, 24.640348>,  <27.451256, 42.170040, 24.565468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663620, 42.253071, 24.640348>,  <28.017561, 42.391457, 24.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663620, 42.253071, 24.640348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202147, 0.888513, -0.411924,
		0.419725, -0.301423, -0.856140,
		-0.884855, -0.345961, -0.311999,
		27.398163, 42.149284, 24.546749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977976, 42.747662, 24.178240>,  <28.017561, 42.391457, 24.765148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977976, 42.747662, 24.178240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600260, 42.617313, 24.196669>,  <27.373631, 42.539104, 24.207726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600260, 42.617313, 24.196669>,  <27.977976, 42.747662, 24.178240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600260, 42.617313, 24.196669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304164, 0.810661, -0.500313,
		0.125687, -0.486455, -0.864618,
		-0.944292, -0.325868, 0.046072,
		27.316973, 42.519554, 24.210489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717735, 42.644985, 23.527828>,  <27.977976, 42.747662, 24.178240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717735, 42.644985, 23.527828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405806, 42.726627, 23.764545>,  <27.218649, 42.775612, 23.906576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405806, 42.726627, 23.764545>,  <27.717735, 42.644985, 23.527828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405806, 42.726627, 23.764545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249732, 0.765439, -0.593074,
		-0.574030, -0.610282, -0.545936,
		-0.779823, 0.204105, 0.591792,
		27.171858, 42.787857, 23.942083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273748, 43.027599, 23.135975>,  <27.717735, 42.644985, 23.527828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273748, 43.027599, 23.135975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071087, 43.093678, 23.474445>,  <26.949490, 43.133324, 23.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071087, 43.093678, 23.474445>,  <27.273748, 43.027599, 23.135975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071087, 43.093678, 23.474445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475677, 0.765005, -0.434165,
		-0.719051, -0.622477, -0.309011,
		-0.506653, 0.165197, 0.846175,
		26.919090, 43.143238, 23.728298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587477, 43.128231, 22.986584>,  <27.273748, 43.027599, 23.135975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587477, 43.128231, 22.986584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613455, 43.297989, 23.347841>,  <26.629042, 43.399845, 23.564596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613455, 43.297989, 23.347841>,  <26.587477, 43.128231, 22.986584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613455, 43.297989, 23.347841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425067, 0.830605, -0.359740,
		-0.902829, -0.360535, 0.234339,
		0.064944, 0.424393, 0.903146,
		26.632938, 43.425308, 23.618786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933451, 43.429359, 23.143156>,  <26.587477, 43.128231, 22.986584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933451, 43.429359, 23.143156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187069, 43.613224, 23.391897>,  <26.339239, 43.723541, 23.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187069, 43.613224, 23.391897>,  <25.933451, 43.429359, 23.143156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187069, 43.613224, 23.391897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363344, 0.886945, -0.285148,
		-0.682620, -0.045149, 0.729378,
		0.634044, 0.459663, 0.621851,
		26.377281, 43.751122, 23.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597031, 43.860432, 23.637459>,  <25.933451, 43.429359, 23.143156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597031, 43.860432, 23.637459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957012, 44.013153, 23.553255>,  <26.173000, 44.104786, 23.502733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957012, 44.013153, 23.553255>,  <25.597031, 43.860432, 23.637459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957012, 44.013153, 23.553255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432686, 0.841446, -0.323654,
		0.053559, 0.382357, 0.922461,
		0.899953, 0.381801, -0.210508,
		26.226997, 44.127693, 23.490103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809570, 44.508152, 24.012632>,  <25.597031, 43.860432, 23.637459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809570, 44.508152, 24.012632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001335, 44.556713, 23.664972>,  <26.116394, 44.585850, 23.456375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001335, 44.556713, 23.664972>,  <25.809570, 44.508152, 24.012632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001335, 44.556713, 23.664972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538095, 0.823033, -0.181850,
		0.693265, 0.554868, 0.459897,
		0.479413, 0.121398, -0.869152,
		26.145159, 44.593132, 23.404226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326494, 45.032429, 23.837345>,  <25.809570, 44.508152, 24.012632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326494, 45.032429, 23.837345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584858, 44.954151, 23.542183>,  <25.739876, 44.907185, 23.365086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584858, 44.954151, 23.542183>,  <25.326494, 45.032429, 23.837345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584858, 44.954151, 23.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650873, 0.363969, -0.666251,
		0.398957, 0.910621, 0.107718,
		0.645908, -0.195695, -0.737907,
		25.778631, 44.895443, 23.320810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232849, 45.669456, 23.394487>,  <25.326494, 45.032429, 23.837345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232849, 45.669456, 23.394487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401272, 45.397343, 23.154512>,  <25.502325, 45.234074, 23.010527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401272, 45.397343, 23.154512>,  <25.232849, 45.669456, 23.394487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401272, 45.397343, 23.154512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524529, 0.356992, -0.772933,
		0.739985, 0.640136, -0.206513,
		0.421059, -0.680282, -0.599939,
		25.527590, 45.193256, 22.974531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548140, 45.996326, 22.887503>,  <25.232849, 45.669456, 23.394487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548140, 45.996326, 22.887503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490444, 45.636017, 22.723652>,  <25.455828, 45.419830, 22.625341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490444, 45.636017, 22.723652>,  <25.548140, 45.996326, 22.887503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490444, 45.636017, 22.723652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514036, 0.421926, -0.746823,
		0.845554, 0.102842, -0.523891,
		-0.144239, -0.900778, -0.409626,
		25.447172, 45.365784, 22.600763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591469, 46.415894, 23.624239>,  <25.548140, 45.996326, 22.887503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591469, 46.415894, 23.624239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194336, 46.429218, 23.578335>,  <24.956055, 46.437214, 23.550793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194336, 46.429218, 23.578335>,  <25.591469, 46.415894, 23.624239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194336, 46.429218, 23.578335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014611, -0.919314, -0.393255,
		-0.118600, -0.392114, 0.912240,
		-0.992835, 0.033311, -0.114760,
		24.896486, 46.439213, 23.543907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400377, 46.523308, 24.376070>,  <25.591469, 46.415894, 23.624239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400377, 46.523308, 24.376070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384918, 46.734600, 24.715357>,  <25.375643, 46.861378, 24.918930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384918, 46.734600, 24.715357>,  <25.400377, 46.523308, 24.376070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384918, 46.734600, 24.715357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591514, -0.672057, 0.445479,
		0.805368, 0.518948, -0.286486,
		-0.038646, 0.528235, 0.848218,
		25.373325, 46.893070, 24.969822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088907, 46.451843, 24.573563>,  <25.400377, 46.523308, 24.376070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088907, 46.451843, 24.573563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845184, 46.523575, 24.882519>,  <25.698950, 46.566612, 25.067892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845184, 46.523575, 24.882519>,  <26.088907, 46.451843, 24.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845184, 46.523575, 24.882519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466819, -0.706267, 0.532229,
		0.640955, 0.684858, 0.346622,
		-0.609308, 0.179325, 0.772390,
		25.662392, 46.577374, 25.114235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500072, 46.663212, 25.123083>,  <26.088907, 46.451843, 24.573563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500072, 46.663212, 25.123083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184034, 46.479649, 25.285639>,  <25.994411, 46.369511, 25.383173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184034, 46.479649, 25.285639>,  <26.500072, 46.663212, 25.123083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184034, 46.479649, 25.285639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609930, -0.654676, 0.446525,
		0.061138, 0.600665, 0.797159,
		-0.790093, -0.458912, 0.406390,
		25.947006, 46.341976, 25.407557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575108, 46.580460, 25.876280>,  <26.500072, 46.663212, 25.123083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575108, 46.580460, 25.876280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389406, 46.272018, 25.701984>,  <26.277985, 46.086952, 25.597408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389406, 46.272018, 25.701984>,  <26.575108, 46.580460, 25.876280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389406, 46.272018, 25.701984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663762, -0.628635, 0.405263,
		-0.586419, -0.101080, 0.803676,
		-0.464255, -0.771104, -0.435737,
		26.250130, 46.040688, 25.571264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448580, 46.022160, 26.358955>,  <26.575108, 46.580460, 25.876280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448580, 46.022160, 26.358955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479540, 45.851868, 25.998341>,  <26.498116, 45.749695, 25.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479540, 45.851868, 25.998341>,  <26.448580, 46.022160, 26.358955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479540, 45.851868, 25.998341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476450, -0.778519, 0.408538,
		-0.875788, -0.461157, 0.142580,
		0.077399, -0.425725, -0.901536,
		26.502760, 45.724152, 25.727880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117777, 45.330116, 26.367817>,  <26.448580, 46.022160, 26.358955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117777, 45.330116, 26.367817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390747, 45.338272, 26.075548>,  <26.554529, 45.343166, 25.900187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390747, 45.338272, 26.075548>,  <26.117777, 45.330116, 26.367817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390747, 45.338272, 26.075548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481236, -0.764938, 0.428115,
		-0.550188, -0.643781, -0.531825,
		0.682426, 0.020390, -0.730671,
		26.595474, 45.344387, 25.856346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142681, 44.640888, 26.315292>,  <26.117777, 45.330116, 26.367817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142681, 44.640888, 26.315292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470528, 44.791824, 26.142853>,  <26.667234, 44.882385, 26.039389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470528, 44.791824, 26.142853>,  <26.142681, 44.640888, 26.315292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470528, 44.791824, 26.142853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504534, -0.831896, 0.231073,
		-0.271434, -0.406894, -0.872216,
		0.819615, 0.377341, -0.431097,
		26.716412, 44.905025, 26.013523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419064, 44.086926, 25.950127>,  <26.142681, 44.640888, 26.315292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419064, 44.086926, 25.950127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749878, 44.310287, 25.976053>,  <26.948366, 44.444305, 25.991610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749878, 44.310287, 25.976053>,  <26.419064, 44.086926, 25.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749878, 44.310287, 25.976053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545089, -0.824775, 0.150410,
		0.137447, -0.089064, -0.986497,
		0.827034, 0.558402, 0.064815,
		26.997988, 44.477810, 25.995499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981930, 43.725937, 25.698572>,  <26.419064, 44.086926, 25.950127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981930, 43.725937, 25.698572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193487, 44.020626, 25.867104>,  <27.320421, 44.197437, 25.968222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193487, 44.020626, 25.867104>,  <26.981930, 43.725937, 25.698572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193487, 44.020626, 25.867104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742834, -0.641946, 0.190006,
		0.410450, 0.212483, -0.886782,
		0.528893, 0.736720, 0.421327,
		27.352156, 44.241642, 25.993502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619076, 43.797356, 25.387877>,  <26.981930, 43.725937, 25.698572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619076, 43.797356, 25.387877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681763, 43.953011, 25.750977>,  <27.719376, 44.046402, 25.968838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681763, 43.953011, 25.750977>,  <27.619076, 43.797356, 25.387877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681763, 43.953011, 25.750977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768391, -0.625478, 0.135474,
		0.620496, 0.676277, -0.397032,
		0.156717, 0.389137, 0.907751,
		27.728777, 44.069752, 26.023302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333927, 43.879135, 25.385874>,  <27.619076, 43.797356, 25.387877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333927, 43.879135, 25.385874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207371, 43.874176, 25.765293>,  <28.131437, 43.871201, 25.992945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207371, 43.874176, 25.765293>,  <28.333927, 43.879135, 25.385874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207371, 43.874176, 25.765293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821243, -0.504075, 0.267338,
		0.474824, 0.863571, 0.169667,
		-0.316390, -0.012400, 0.948548,
		28.112453, 43.870457, 26.049858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912895, 44.038101, 25.834856>,  <28.333927, 43.879135, 25.385874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912895, 44.038101, 25.834856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668034, 43.852451, 26.090939>,  <28.521116, 43.741062, 26.244587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668034, 43.852451, 26.090939>,  <28.912895, 44.038101, 25.834856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668034, 43.852451, 26.090939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771044, -0.529927, 0.353084,
		0.175388, 0.709767, 0.682254,
		-0.612152, -0.464121, 0.640204,
		28.484388, 43.713215, 26.282999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122454, 44.147461, 26.521864>,  <28.912895, 44.038101, 25.834856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122454, 44.147461, 26.521864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915726, 43.805359, 26.537037>,  <28.791689, 43.600098, 26.546141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915726, 43.805359, 26.537037>,  <29.122454, 44.147461, 26.521864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915726, 43.805359, 26.537037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781267, -0.453067, 0.429362,
		-0.350028, 0.251537, 0.902335,
		-0.516819, -0.855254, 0.037931,
		28.760679, 43.548782, 26.548416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470465, 43.851036, 27.047489>,  <29.122454, 44.147461, 26.521864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470465, 43.851036, 27.047489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241045, 43.547806, 26.923323>,  <29.103394, 43.365868, 26.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241045, 43.547806, 26.923323>,  <29.470465, 43.851036, 27.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241045, 43.547806, 26.923323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594879, -0.645964, 0.478382,
		-0.563169, 0.089715, 0.821457,
		-0.573550, -0.758078, -0.310417,
		29.068979, 43.320381, 26.830198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294729, 43.425468, 27.643406>,  <29.470465, 43.851036, 27.047489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294729, 43.425468, 27.643406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252455, 43.195915, 27.318571>,  <29.227089, 43.058182, 27.123671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252455, 43.195915, 27.318571>,  <29.294729, 43.425468, 27.643406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252455, 43.195915, 27.318571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568681, -0.704818, 0.424068,
		-0.815741, -0.417001, 0.400846,
		-0.105687, -0.573883, -0.812089,
		29.220749, 43.023750, 27.074944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142530, 42.753819, 27.854624>,  <29.294729, 43.425468, 27.643406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142530, 42.753819, 27.854624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280540, 42.684746, 27.485596>,  <29.363346, 42.643303, 27.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280540, 42.684746, 27.485596>,  <29.142530, 42.753819, 27.854624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280540, 42.684746, 27.485596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429871, -0.844706, 0.318877,
		-0.834365, -0.506608, -0.217216,
		0.345029, -0.172685, -0.922570,
		29.384048, 42.632938, 27.208824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033819, 42.035717, 27.780550>,  <29.142530, 42.753819, 27.854624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033819, 42.035717, 27.780550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319275, 42.170910, 27.535116>,  <29.490549, 42.252026, 27.387856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319275, 42.170910, 27.535116>,  <29.033819, 42.035717, 27.780550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319275, 42.170910, 27.535116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643222, -0.663083, 0.382866,
		-0.277457, -0.667900, -0.690598,
		0.713641, 0.337979, -0.613585,
		29.533367, 42.272305, 27.351040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300203, 41.482632, 27.331949>,  <29.033819, 42.035717, 27.780550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300203, 41.482632, 27.331949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592024, 41.754921, 27.358377>,  <29.767117, 41.918297, 27.374235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592024, 41.754921, 27.358377>,  <29.300203, 41.482632, 27.331949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592024, 41.754921, 27.358377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648416, -0.719163, 0.249723,
		0.217509, -0.139344, -0.966061,
		0.729552, 0.680726, 0.066071,
		29.810890, 41.959137, 27.378199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904135, 41.157833, 27.066217>,  <29.300203, 41.482632, 27.331949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904135, 41.157833, 27.066217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058346, 41.463554, 27.272989>,  <30.150873, 41.646988, 27.397053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058346, 41.463554, 27.272989>,  <29.904135, 41.157833, 27.066217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058346, 41.463554, 27.272989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751495, -0.585157, 0.304708,
		0.535373, 0.270995, -0.799961,
		0.385528, 0.764299, 0.516928,
		30.174004, 41.692844, 27.428068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621033, 41.211693, 26.838081>,  <29.904135, 41.157833, 27.066217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621033, 41.211693, 26.838081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579624, 41.365353, 27.205061>,  <30.554779, 41.457546, 27.425249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579624, 41.365353, 27.205061>,  <30.621033, 41.211693, 26.838081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579624, 41.365353, 27.205061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777880, -0.543552, 0.315364,
		0.619827, 0.746314, -0.242548,
		-0.103523, 0.384145, 0.917451,
		30.548567, 41.480595, 27.480297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246025, 41.215755, 27.236341>,  <30.621033, 41.211693, 26.838081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246025, 41.215755, 27.236341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062933, 41.300671, 27.581692>,  <30.953077, 41.351620, 27.788902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062933, 41.300671, 27.581692>,  <31.246025, 41.215755, 27.236341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062933, 41.300671, 27.581692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504735, -0.737379, 0.448905,
		0.731933, 0.641252, 0.230369,
		-0.457731, 0.212293, 0.863374,
		30.925613, 41.364357, 27.840704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792604, 41.212379, 27.720606>,  <31.246025, 41.215755, 27.236341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792604, 41.212379, 27.720606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451052, 41.177723, 27.925886>,  <31.246120, 41.156929, 28.049055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451052, 41.177723, 27.925886>,  <31.792604, 41.212379, 27.720606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451052, 41.177723, 27.925886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414300, -0.709977, 0.569463,
		0.315021, 0.698874, 0.642134,
		-0.853884, -0.086643, 0.513202,
		31.194887, 41.151730, 28.079847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987518, 41.253563, 28.466629>,  <31.792604, 41.212379, 27.720606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987518, 41.253563, 28.466629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608963, 41.134125, 28.515934>,  <31.381830, 41.062462, 28.545517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608963, 41.134125, 28.515934>,  <31.987518, 41.253563, 28.466629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608963, 41.134125, 28.515934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289575, -0.615065, 0.733377,
		-0.143166, 0.729753, 0.668554,
		-0.946388, -0.298591, 0.123262,
		31.325047, 41.044548, 28.552912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768400, 41.360516, 29.162846>,  <31.987518, 41.253563, 28.466629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768400, 41.360516, 29.162846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542009, 41.070709, 29.005491>,  <31.406176, 40.896828, 28.911079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542009, 41.070709, 29.005491>,  <31.768400, 41.360516, 29.162846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542009, 41.070709, 29.005491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115505, -0.542144, 0.832309,
		-0.816289, 0.425630, 0.390527,
		-0.565978, -0.724512, -0.393384,
		31.372215, 40.853355, 28.887476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328650, 41.208809, 29.714411>,  <31.768400, 41.360516, 29.162846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328650, 41.208809, 29.714411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369070, 40.885368, 29.482567>,  <31.393322, 40.691303, 29.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369070, 40.885368, 29.482567>,  <31.328650, 41.208809, 29.714411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369070, 40.885368, 29.482567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146459, -0.564152, 0.812577,
		-0.984042, -0.166999, 0.061420,
		0.101049, -0.808606, -0.579608,
		31.399385, 40.642788, 29.308685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000004, 40.548653, 30.044773>,  <31.328650, 41.208809, 29.714411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000004, 40.548653, 30.044773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262289, 40.394577, 29.785028>,  <31.419661, 40.302132, 29.629183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262289, 40.394577, 29.785028>,  <31.000004, 40.548653, 30.044773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262289, 40.394577, 29.785028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382047, -0.572552, 0.725413,
		-0.651216, -0.723748, -0.228267,
		0.655711, -0.385192, -0.649361,
		31.459003, 40.279018, 29.590219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927511, 39.779377, 30.234581>,  <31.000004, 40.548653, 30.044773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927511, 39.779377, 30.234581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264523, 39.832825, 30.025854>,  <31.466730, 39.864891, 29.900618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264523, 39.832825, 30.025854>,  <30.927511, 39.779377, 30.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264523, 39.832825, 30.025854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474050, -0.643938, 0.600517,
		-0.255778, -0.753319, -0.605878,
		0.842529, 0.133617, -0.521816,
		31.517281, 39.872910, 29.869308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223408, 39.104332, 30.159880>,  <30.927511, 39.779377, 30.234581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223408, 39.104332, 30.159880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534393, 39.341446, 30.075821>,  <31.720984, 39.483715, 30.025387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534393, 39.341446, 30.075821>,  <31.223408, 39.104332, 30.159880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534393, 39.341446, 30.075821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612030, -0.636155, 0.469814,
		0.144812, -0.493878, -0.857388,
		0.777463, 0.592782, -0.210145,
		31.767632, 39.519279, 30.012777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730097, 38.595058, 29.857880>,  <31.223408, 39.104332, 30.159880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730097, 38.595058, 29.857880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915236, 38.924633, 29.988659>,  <32.026318, 39.122379, 30.067127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915236, 38.924633, 29.988659>,  <31.730097, 38.595058, 29.857880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915236, 38.924633, 29.988659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639090, -0.565763, 0.521035,
		0.614277, -0.032210, -0.788433,
		0.462849, 0.823939, 0.326949,
		32.054089, 39.171814, 30.086744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393688, 38.496658, 29.735466>,  <31.730097, 38.595058, 29.857880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393688, 38.496658, 29.735466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397915, 38.783550, 30.014168>,  <32.400452, 38.955685, 30.181389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397915, 38.783550, 30.014168>,  <32.393688, 38.496658, 29.735466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397915, 38.783550, 30.014168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728008, -0.483189, 0.486346,
		0.685487, 0.502103, -0.527257,
		0.010569, 0.717231, 0.696755,
		32.401085, 38.998718, 30.223194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054760, 38.538727, 29.893225>,  <32.393688, 38.496658, 29.735466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054760, 38.538727, 29.893225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866524, 38.683060, 30.215303>,  <32.753582, 38.769661, 30.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866524, 38.683060, 30.215303>,  <33.054760, 38.538727, 29.893225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866524, 38.683060, 30.215303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636563, -0.493091, 0.593000,
		0.611012, 0.791618, 0.002349,
		-0.470588, 0.360835, 0.805199,
		32.725346, 38.791309, 30.456863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548668, 38.777042, 30.258329>,  <33.054760, 38.538727, 29.893225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548668, 38.777042, 30.258329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254055, 38.736889, 30.525894>,  <33.077286, 38.712795, 30.686434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254055, 38.736889, 30.525894>,  <33.548668, 38.777042, 30.258329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254055, 38.736889, 30.525894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633959, -0.447245, 0.630926,
		0.235834, 0.888761, 0.393048,
		-0.736531, -0.100383, 0.668913,
		33.033096, 38.706776, 30.726568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845554, 39.039253, 31.009312>,  <33.548668, 38.777042, 30.258329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845554, 39.039253, 31.009312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534100, 38.797890, 31.078167>,  <33.347229, 38.653072, 31.119480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534100, 38.797890, 31.078167>,  <33.845554, 39.039253, 31.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534100, 38.797890, 31.078167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553253, -0.530763, 0.642029,
		-0.296040, 0.595141, 0.747106,
		-0.778634, -0.603405, 0.172136,
		33.300510, 38.616867, 31.129808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954689, 38.905075, 31.638533>,  <33.845554, 39.039253, 31.009312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954689, 38.905075, 31.638533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693233, 38.624462, 31.524963>,  <33.536362, 38.456097, 31.456821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693233, 38.624462, 31.524963>,  <33.954689, 38.905075, 31.638533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693233, 38.624462, 31.524963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469964, -0.670310, 0.574298,
		-0.593203, 0.241951, 0.767835,
		-0.653639, -0.701530, -0.283922,
		33.497143, 38.414001, 31.439787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732285, 38.585419, 32.262150>,  <33.954689, 38.905075, 31.638533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732285, 38.585419, 32.262150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658928, 38.310757, 31.980759>,  <33.614914, 38.145962, 31.811924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658928, 38.310757, 31.980759>,  <33.732285, 38.585419, 32.262150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658928, 38.310757, 31.980759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593003, -0.648020, 0.477930,
		-0.784038, -0.329517, 0.526025,
		-0.183389, -0.686650, -0.703477,
		33.603912, 38.104763, 31.769716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382729, 37.952335, 32.596497>,  <33.732285, 38.585419, 32.262150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382729, 37.952335, 32.596497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539249, 37.819443, 32.253216>,  <33.633160, 37.739708, 32.047249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539249, 37.819443, 32.253216>,  <33.382729, 37.952335, 32.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539249, 37.819443, 32.253216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492720, -0.711999, 0.500285,
		-0.777248, -0.618613, -0.114908,
		0.391297, -0.332228, -0.858203,
		33.656639, 37.719776, 31.995754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218395, 37.173626, 32.490273>,  <33.382729, 37.952335, 32.596497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218395, 37.173626, 32.490273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552692, 37.284031, 32.300388>,  <33.753273, 37.350273, 32.186459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552692, 37.284031, 32.300388>,  <33.218395, 37.173626, 32.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552692, 37.284031, 32.300388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492303, -0.759567, 0.425083,
		-0.243243, -0.588961, -0.770687,
		0.835746, 0.276013, -0.474707,
		33.803417, 37.366837, 32.157978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530537, 36.587872, 32.362286>,  <33.218395, 37.173626, 32.490273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530537, 36.587872, 32.362286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849865, 36.818047, 32.291241>,  <34.041462, 36.956150, 32.248611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849865, 36.818047, 32.291241>,  <33.530537, 36.587872, 32.362286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849865, 36.818047, 32.291241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596503, -0.714999, 0.364638,
		0.082832, -0.397048, -0.914052,
		0.798325, 0.575438, -0.177616,
		34.089363, 36.990677, 32.237957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956749, 36.003365, 32.118610>,  <33.530537, 36.587872, 32.362286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956749, 36.003365, 32.118610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190792, 36.320412, 32.187206>,  <34.331219, 36.510639, 32.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190792, 36.320412, 32.187206>,  <33.956749, 36.003365, 32.118610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190792, 36.320412, 32.187206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722761, -0.605586, 0.332991,
		0.367788, -0.070886, -0.927204,
		0.585106, 0.792616, 0.171493,
		34.366325, 36.558197, 32.238655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592514, 35.971409, 31.632017>,  <33.956749, 36.003365, 32.118610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592514, 35.971409, 31.632017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673065, 36.184917, 31.960539>,  <34.721394, 36.313023, 32.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673065, 36.184917, 31.960539>,  <34.592514, 35.971409, 31.632017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673065, 36.184917, 31.960539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730477, -0.640449, 0.237127,
		0.652574, 0.552191, -0.518876,
		0.201375, 0.533769, 0.821303,
		34.733479, 36.345047, 32.206928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192768, 36.216015, 31.487391>,  <34.592514, 35.971409, 31.632017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192768, 36.216015, 31.487391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171314, 36.229546, 31.886585>,  <35.158443, 36.237663, 32.126102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171314, 36.229546, 31.886585>,  <35.192768, 36.216015, 31.487391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171314, 36.229546, 31.886585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870707, -0.487707, 0.063328,
		0.488868, 0.872352, -0.003298,
		-0.053636, 0.033831, 0.997987,
		35.155224, 36.239697, 32.185982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883404, 36.419018, 31.779808>,  <35.192768, 36.216015, 31.487391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883404, 36.419018, 31.779808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710121, 36.267479, 32.106930>,  <35.606152, 36.176556, 32.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710121, 36.267479, 32.106930>,  <35.883404, 36.419018, 31.779808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710121, 36.267479, 32.106930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872556, -0.403590, 0.275248,
		0.225782, 0.832821, 0.505402,
		-0.433207, -0.378845, 0.817807,
		35.580158, 36.153824, 32.352272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387131, 36.370895, 32.199986>,  <35.883404, 36.419018, 31.779808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387131, 36.370895, 32.199986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112240, 36.138046, 32.373810>,  <35.947304, 35.998337, 32.478104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112240, 36.138046, 32.373810>,  <36.387131, 36.370895, 32.199986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112240, 36.138046, 32.373810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707135, -0.673062, 0.216675,
		0.166358, 0.456201, 0.874189,
		-0.687231, -0.582124, 0.434564,
		35.906071, 35.963409, 32.504181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028362, 36.781818, 32.120060>,  <36.387131, 36.370895, 32.199986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028362, 36.781818, 32.120060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350674, 36.927574, 31.933323>,  <37.544060, 37.015026, 31.821281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350674, 36.927574, 31.933323>,  <37.028362, 36.781818, 32.120060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350674, 36.927574, 31.933323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525166, 0.804003, -0.278892,
		0.273717, 0.469894, 0.839213,
		0.805779, 0.364388, -0.466842,
		37.592407, 37.036892, 31.793270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804207, 37.440788, 32.028931>,  <37.028362, 36.781818, 32.120060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804207, 37.440788, 32.028931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120518, 37.422203, 31.784798>,  <37.310303, 37.411053, 31.638317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120518, 37.422203, 31.784798>,  <36.804207, 37.440788, 32.028931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120518, 37.422203, 31.784798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409550, 0.700881, -0.583982,
		0.454905, 0.711763, 0.535215,
		0.790779, -0.046459, -0.610337,
		37.357750, 37.408264, 31.601696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823872, 38.142368, 32.007332>,  <36.804207, 37.440788, 32.028931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823872, 38.142368, 32.007332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019611, 37.961033, 31.709330>,  <37.137054, 37.852234, 31.530529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019611, 37.961033, 31.709330>,  <36.823872, 38.142368, 32.007332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019611, 37.961033, 31.709330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522042, 0.532036, -0.666641,
		0.698580, 0.715140, 0.023689,
		0.489345, -0.453335, -0.745003,
		37.166416, 37.825031, 31.485828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102810, 38.671196, 31.638641>,  <36.823872, 38.142368, 32.007332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102810, 38.671196, 31.638641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086021, 38.359798, 31.388142>,  <37.075947, 38.172962, 31.237841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086021, 38.359798, 31.388142>,  <37.102810, 38.671196, 31.638641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086021, 38.359798, 31.388142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491938, 0.561663, -0.665231,
		0.869618, 0.280155, -0.406544,
		-0.041973, -0.778491, -0.626251,
		37.073429, 38.126251, 31.200266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224987, 38.960918, 30.959795>,  <37.102810, 38.671196, 31.638641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224987, 38.960918, 30.959795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055412, 38.609337, 30.872427>,  <36.953667, 38.398388, 30.820005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055412, 38.609337, 30.872427>,  <37.224987, 38.960918, 30.959795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055412, 38.609337, 30.872427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578535, 0.448360, -0.681373,
		0.696829, -0.162498, -0.698586,
		-0.423940, -0.878958, -0.218420,
		36.928230, 38.345650, 30.806900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448833, 38.786755, 30.259651>,  <37.224987, 38.960918, 30.959795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448833, 38.786755, 30.259651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 38.604813, 30.357418>,  <36.900757, 38.495647, 30.416079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 38.604813, 30.357418>,  <37.448833, 38.786755, 30.259651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106285, 38.604813, 30.357418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480502, 0.528630, -0.699763,
		0.189086, -0.716697, -0.671262,
		-0.856367, -0.454858, 0.244418,
		36.849377, 38.468353, 30.430744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140160, 38.564121, 29.624882>,  <37.448833, 38.786755, 30.259651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140160, 38.564121, 29.624882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845020, 38.568962, 29.894823>,  <36.667934, 38.571869, 30.056787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845020, 38.568962, 29.894823>,  <37.140160, 38.564121, 29.624882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845020, 38.568962, 29.894823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564394, 0.537292, -0.626719,
		-0.370181, -0.843309, -0.389610,
		-0.737852, 0.012106, 0.674854,
		36.623665, 38.572594, 30.097279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509968, 38.436710, 29.233650>,  <37.140160, 38.564121, 29.624882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509968, 38.436710, 29.233650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412067, 38.592117, 29.588987>,  <36.353329, 38.685360, 29.802189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412067, 38.592117, 29.588987>,  <36.509968, 38.436710, 29.233650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412067, 38.592117, 29.588987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602361, 0.657018, -0.453308,
		-0.759775, -0.646050, 0.073223,
		-0.244751, 0.388519, 0.888341,
		36.338642, 38.708672, 29.855490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761795, 38.566360, 29.191658>,  <36.509968, 38.436710, 29.233650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761795, 38.566360, 29.191658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894608, 38.804100, 29.484642>,  <35.974297, 38.946743, 29.660433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894608, 38.804100, 29.484642>,  <35.761795, 38.566360, 29.191658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894608, 38.804100, 29.484642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547201, 0.753867, -0.363671,
		-0.768327, -0.280053, 0.575538,
		0.332032, 0.594353, 0.732462,
		35.994217, 38.982407, 29.704380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096348, 38.963913, 29.431479>,  <35.761795, 38.566360, 29.191658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096348, 38.963913, 29.431479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417156, 39.162968, 29.563604>,  <35.609642, 39.282402, 29.642879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417156, 39.162968, 29.563604>,  <35.096348, 38.963913, 29.431479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417156, 39.162968, 29.563604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370314, 0.848199, -0.378718,
		-0.468639, 0.181421, 0.864560,
		0.802025, 0.497640, 0.330317,
		35.657764, 39.312260, 29.662699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828693, 39.500500, 29.772575>,  <35.096348, 38.963913, 29.431479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828693, 39.500500, 29.772575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205009, 39.613579, 29.697754>,  <35.430801, 39.681427, 29.652861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205009, 39.613579, 29.697754>,  <34.828693, 39.500500, 29.772575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205009, 39.613579, 29.697754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338761, 0.803844, -0.488955,
		0.012137, 0.523373, 0.852018,
		0.940795, 0.282696, -0.187054,
		35.487247, 39.698387, 29.641638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860916, 40.182747, 29.962555>,  <34.828693, 39.500500, 29.772575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860916, 40.182747, 29.962555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161018, 40.133808, 29.702662>,  <35.341080, 40.104446, 29.546726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161018, 40.133808, 29.702662>,  <34.860916, 40.182747, 29.962555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161018, 40.133808, 29.702662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354080, 0.755566, -0.551132,
		0.558343, 0.643546, 0.523547,
		0.750254, -0.122343, -0.649732,
		35.386093, 40.097107, 29.507742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138557, 40.845070, 29.849035>,  <34.860916, 40.182747, 29.962555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138557, 40.845070, 29.849035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249634, 40.641056, 29.523396>,  <35.316280, 40.518650, 29.328012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249634, 40.641056, 29.523396>,  <35.138557, 40.845070, 29.849035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249634, 40.641056, 29.523396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384726, 0.717462, -0.580719,
		0.880270, 0.474463, 0.003007,
		0.277687, -0.510033, -0.814099,
		35.332939, 40.488045, 29.279165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597458, 41.275635, 29.479549>,  <35.138557, 40.845070, 29.849035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597458, 41.275635, 29.479549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416794, 41.008156, 29.243298>,  <35.308395, 40.847668, 29.101547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416794, 41.008156, 29.243298>,  <35.597458, 41.275635, 29.479549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416794, 41.008156, 29.243298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298223, 0.737078, -0.606448,
		0.840871, -0.097770, -0.532331,
		-0.451662, -0.668698, -0.590631,
		35.281296, 40.807545, 29.066109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787853, 41.481258, 28.708488>,  <35.597458, 41.275635, 29.479549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787853, 41.481258, 28.708488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452477, 41.266861, 28.747932>,  <35.251251, 41.138222, 28.771599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452477, 41.266861, 28.747932>,  <35.787853, 41.481258, 28.708488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452477, 41.266861, 28.747932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481614, 0.644036, -0.594361,
		0.255066, -0.545830, -0.798129,
		-0.838444, -0.535992, 0.098608,
		35.200943, 41.106064, 28.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600441, 41.597828, 28.092506>,  <35.787853, 41.481258, 28.708488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600441, 41.597828, 28.092506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273418, 41.459484, 28.276672>,  <35.077206, 41.376476, 28.387173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273418, 41.459484, 28.276672>,  <35.600441, 41.597828, 28.092506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273418, 41.459484, 28.276672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566209, 0.628493, -0.533295,
		-0.104923, -0.696690, -0.709658,
		-0.817556, -0.345860, 0.460416,
		35.028152, 41.355724, 28.414797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263699, 41.475086, 27.564957>,  <35.600441, 41.597828, 28.092506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263699, 41.475086, 27.564957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007076, 41.514519, 27.869242>,  <34.853104, 41.538177, 28.051813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007076, 41.514519, 27.869242>,  <35.263699, 41.475086, 27.564957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007076, 41.514519, 27.869242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609670, 0.536304, -0.583678,
		-0.465514, -0.838248, -0.283968,
		-0.641560, 0.098583, 0.760712,
		34.814610, 41.544094, 28.097456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558250, 41.264271, 27.290136>,  <35.263699, 41.475086, 27.564957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558250, 41.264271, 27.290136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499924, 41.487556, 27.616850>,  <34.464928, 41.621529, 27.812878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499924, 41.487556, 27.616850>,  <34.558250, 41.264271, 27.290136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499924, 41.487556, 27.616850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747447, 0.478714, -0.460603,
		-0.648121, -0.677667, 0.347429,
		-0.145817, 0.558211, 0.816785,
		34.456181, 41.655018, 27.861885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792301, 41.284859, 27.244221>,  <34.558250, 41.264271, 27.290136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792301, 41.284859, 27.244221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895817, 41.570744, 27.504131>,  <33.957928, 41.742275, 27.660078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895817, 41.570744, 27.504131>,  <33.792301, 41.284859, 27.244221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895817, 41.570744, 27.504131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706074, 0.599017, -0.377674,
		-0.659157, -0.361052, 0.659662,
		0.258789, 0.714716, 0.649775,
		33.973454, 41.785160, 27.699064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133503, 41.358887, 27.624859>,  <33.792301, 41.284859, 27.244221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133503, 41.358887, 27.624859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349220, 41.690102, 27.686209>,  <33.478649, 41.888832, 27.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349220, 41.690102, 27.686209>,  <33.133503, 41.358887, 27.624859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349220, 41.690102, 27.686209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783709, 0.560137, -0.268415,
		-0.308167, 0.024553, 0.951015,
		0.539290, 0.828036, 0.153373,
		33.511005, 41.938511, 27.732222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701229, 41.890961, 28.068331>,  <33.133503, 41.358887, 27.624859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701229, 41.890961, 28.068331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983765, 42.099220, 27.876493>,  <33.153286, 42.224178, 27.761391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983765, 42.099220, 27.876493>,  <32.701229, 41.890961, 28.068331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983765, 42.099220, 27.876493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654034, 0.739178, -0.160793,
		0.270787, 0.427243, 0.862634,
		0.706338, 0.520652, -0.479592,
		33.195667, 42.255417, 27.732616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369934, 42.603252, 28.051226>,  <32.701229, 41.890961, 28.068331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369934, 42.603252, 28.051226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647114, 42.611294, 27.762945>,  <32.813423, 42.616119, 27.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647114, 42.611294, 27.762945>,  <32.369934, 42.603252, 28.051226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647114, 42.611294, 27.762945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598141, 0.574145, -0.559093,
		0.402546, 0.818507, 0.409881,
		0.692953, 0.020106, -0.720703,
		32.855000, 42.617325, 27.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378040, 43.281666, 27.902706>,  <32.369934, 42.603252, 28.051226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378040, 43.281666, 27.902706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524651, 43.062576, 27.601864>,  <32.612617, 42.931122, 27.421358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524651, 43.062576, 27.601864>,  <32.378040, 43.281666, 27.902706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524651, 43.062576, 27.601864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611342, 0.467592, -0.638450,
		0.701372, 0.693799, -0.163464,
		0.366522, -0.547723, -0.752105,
		32.634605, 42.898258, 27.376232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323360, 43.745071, 27.330612>,  <32.378040, 43.281666, 27.902706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323360, 43.745071, 27.330612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365746, 43.406853, 27.121298>,  <32.391178, 43.203922, 26.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365746, 43.406853, 27.121298>,  <32.323360, 43.745071, 27.330612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365746, 43.406853, 27.121298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520909, 0.401060, -0.753529,
		0.847010, 0.352432, -0.397952,
		0.105966, -0.845543, -0.523286,
		32.397533, 43.153191, 26.964312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523579, 43.909069, 26.715038>,  <32.323360, 43.745071, 27.330612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523579, 43.909069, 26.715038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344830, 43.557178, 26.650070>,  <32.237579, 43.346043, 26.611090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344830, 43.557178, 26.650070>,  <32.523579, 43.909069, 26.715038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344830, 43.557178, 26.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595564, 0.428034, -0.679772,
		0.667537, -0.207041, -0.715212,
		-0.446876, -0.879728, -0.162422,
		32.210766, 43.293259, 26.601343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461975, 43.892445, 26.007170>,  <32.523579, 43.909069, 26.715038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461975, 43.892445, 26.007170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195515, 43.621746, 26.132551>,  <32.035637, 43.459328, 26.207781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195515, 43.621746, 26.132551>,  <32.461975, 43.892445, 26.007170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195515, 43.621746, 26.132551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599604, 0.236023, -0.764701,
		0.443530, -0.697353, -0.563009,
		-0.666150, -0.676751, 0.313453,
		31.995670, 43.418720, 26.226587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195393, 43.573467, 25.428791>,  <32.461975, 43.892445, 26.007170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195393, 43.573467, 25.428791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924519, 43.497551, 25.713156>,  <31.761993, 43.452000, 25.883776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924519, 43.497551, 25.713156>,  <32.195393, 43.573467, 25.428791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924519, 43.497551, 25.713156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735529, 0.147831, -0.661168,
		0.020389, -0.970631, -0.239707,
		-0.677186, -0.189792, 0.710913,
		31.721363, 43.440613, 25.926430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771385, 43.009922, 25.188707>,  <32.195393, 43.573467, 25.428791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771385, 43.009922, 25.188707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543926, 43.219048, 25.442736>,  <31.407452, 43.344521, 25.595152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543926, 43.219048, 25.442736>,  <31.771385, 43.009922, 25.188707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543926, 43.219048, 25.442736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743060, 0.004699, -0.669209,
		-0.352853, -0.852436, 0.385807,
		-0.568645, 0.522810, 0.635069,
		31.373333, 43.375889, 25.633257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137877, 42.629986, 25.110506>,  <31.771385, 43.009922, 25.188707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137877, 42.629986, 25.110506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071745, 42.982918, 25.286758>,  <31.032066, 43.194679, 25.392509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071745, 42.982918, 25.286758>,  <31.137877, 42.629986, 25.110506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071745, 42.982918, 25.286758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795519, 0.144773, -0.588379,
		-0.582937, -0.447807, 0.677977,
		-0.165328, 0.882332, 0.440632,
		31.022146, 43.247616, 25.418947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534397, 42.715435, 24.945234>,  <31.137877, 42.629986, 25.110506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534397, 42.715435, 24.945234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616486, 43.090717, 25.056698>,  <30.665739, 43.315887, 25.123575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616486, 43.090717, 25.056698>,  <30.534397, 42.715435, 24.945234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616486, 43.090717, 25.056698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740368, 0.335032, -0.582759,
		-0.640109, -0.086716, 0.763375,
		0.205221, 0.938208, 0.278659,
		30.678051, 43.372181, 25.140295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800577, 43.088207, 25.044466>,  <30.534397, 42.715435, 24.945234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800577, 43.088207, 25.044466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095657, 43.356400, 25.012831>,  <30.272705, 43.517315, 24.993849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095657, 43.356400, 25.012831>,  <29.800577, 43.088207, 25.044466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095657, 43.356400, 25.012831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539246, 0.514687, -0.666566,
		-0.406212, 0.534376, 0.741238,
		0.737703, 0.670477, -0.079089,
		30.316969, 43.557541, 24.989103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487730, 43.792038, 25.017689>,  <29.800577, 43.088207, 25.044466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487730, 43.792038, 25.017689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843599, 43.835609, 24.840321>,  <30.057121, 43.861752, 24.733900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843599, 43.835609, 24.840321>,  <29.487730, 43.792038, 25.017689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843599, 43.835609, 24.840321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449702, 0.377222, -0.809612,
		0.079079, 0.919695, 0.384589,
		0.889671, 0.108927, -0.443418,
		30.110500, 43.868286, 24.707294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611841, 44.528465, 24.823404>,  <29.487730, 43.792038, 25.017689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611841, 44.528465, 24.823404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832523, 44.300846, 24.579500>,  <29.964931, 44.164276, 24.433159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832523, 44.300846, 24.579500>,  <29.611841, 44.528465, 24.823404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832523, 44.300846, 24.579500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521566, 0.335111, -0.784646,
		0.650839, 0.750922, -0.111914,
		0.551705, -0.569049, -0.609759,
		29.998035, 44.130131, 24.396572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654341, 44.895397, 24.277689>,  <29.611841, 44.528465, 24.823404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654341, 44.895397, 24.277689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747635, 44.544018, 24.110868>,  <29.803612, 44.333191, 24.010777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747635, 44.544018, 24.110868>,  <29.654341, 44.895397, 24.277689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747635, 44.544018, 24.110868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353986, 0.322755, -0.877795,
		0.905701, 0.352364, -0.235679,
		0.233237, -0.878447, -0.417052,
		29.817606, 44.280483, 23.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827066, 45.067150, 23.577394>,  <29.654341, 44.895397, 24.277689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827066, 45.067150, 23.577394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788034, 44.672009, 23.529020>,  <29.764614, 44.434925, 23.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788034, 44.672009, 23.529020>,  <29.827066, 45.067150, 23.577394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788034, 44.672009, 23.529020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440893, 0.151848, -0.884622,
		0.892239, -0.033004, -0.450355,
		-0.097582, -0.987852, -0.120933,
		29.758760, 44.375652, 23.492741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135214, 44.864700, 22.899258>,  <29.827066, 45.067150, 23.577394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135214, 44.864700, 22.899258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865635, 44.590893, 23.010422>,  <29.703888, 44.426609, 23.077120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865635, 44.590893, 23.010422>,  <30.135214, 44.864700, 22.899258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865635, 44.590893, 23.010422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505754, 0.153273, -0.848952,
		0.538525, -0.712703, -0.449495,
		-0.673946, -0.684515, 0.277912,
		29.663450, 44.385536, 23.093796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035069, 44.484394, 22.408646>,  <30.135214, 44.864700, 22.899258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035069, 44.484394, 22.408646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695799, 44.409664, 22.606916>,  <29.492237, 44.364826, 22.725880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695799, 44.409664, 22.606916>,  <30.035069, 44.484394, 22.408646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695799, 44.409664, 22.606916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527520, 0.212725, -0.822478,
		0.048220, -0.959085, -0.278983,
		-0.848173, -0.186829, 0.495679,
		29.441347, 44.353615, 22.755621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798252, 44.726749, 21.685143>,  <30.035069, 44.484394, 22.408646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798252, 44.726749, 21.685143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939545, 44.605850, 21.330996>,  <30.024321, 44.533310, 21.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939545, 44.605850, 21.330996>,  <29.798252, 44.726749, 21.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939545, 44.605850, 21.330996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794000, -0.403640, 0.454576,
		-0.494763, -0.863552, 0.097404,
		0.353233, -0.302246, -0.885366,
		30.045515, 44.515175, 21.065386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035669, 44.097446, 21.750635>,  <29.798252, 44.726749, 21.685143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035669, 44.097446, 21.750635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230648, 44.216663, 21.422352>,  <30.347635, 44.288193, 21.225382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230648, 44.216663, 21.422352>,  <30.035669, 44.097446, 21.750635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230648, 44.216663, 21.422352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844399, -0.400133, 0.356207,
		-0.222226, -0.866638, -0.446714,
		0.487448, 0.298046, -0.820709,
		30.376883, 44.306076, 21.176140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266996, 43.545059, 21.507593>,  <30.035669, 44.097446, 21.750635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266996, 43.545059, 21.507593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493799, 43.848579, 21.379393>,  <30.629881, 44.030693, 21.302473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493799, 43.848579, 21.379393>,  <30.266996, 43.545059, 21.507593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493799, 43.848579, 21.379393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822911, -0.538979, 0.179777,
		-0.036329, -0.365679, -0.930032,
		0.567008, 0.758802, -0.320502,
		30.663902, 44.076221, 21.283241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783037, 43.238651, 21.120054>,  <30.266996, 43.545059, 21.507593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783037, 43.238651, 21.120054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949148, 43.597466, 21.180534>,  <31.048815, 43.812756, 21.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949148, 43.597466, 21.180534>,  <30.783037, 43.238651, 21.120054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949148, 43.597466, 21.180534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871538, -0.439960, 0.216465,
		0.260701, 0.041886, -0.964511,
		0.415280, 0.897040, 0.151203,
		31.073732, 43.866577, 21.225895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308876, 43.186638, 20.720682>,  <30.783037, 43.238651, 21.120054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308876, 43.186638, 20.720682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390360, 43.480572, 20.979454>,  <31.439251, 43.656933, 21.134718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390360, 43.480572, 20.979454>,  <31.308876, 43.186638, 20.720682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390360, 43.480572, 20.979454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931384, -0.349091, 0.103242,
		0.301703, 0.581510, -0.755527,
		0.203712, 0.734834, 0.646931,
		31.451473, 43.701023, 21.173532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114506, 43.424011, 20.666462>,  <31.308876, 43.186638, 20.720682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114506, 43.424011, 20.666462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013741, 43.579189, 21.021097>,  <31.953281, 43.672295, 21.233879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013741, 43.579189, 21.021097>,  <32.114506, 43.424011, 20.666462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013741, 43.579189, 21.021097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886247, -0.275514, 0.372369,
		0.388726, 0.879541, -0.274408,
		-0.251911, 0.387943, 0.886590,
		31.938168, 43.695572, 21.287073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660572, 43.742424, 20.914907>,  <32.114506, 43.424011, 20.666462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660572, 43.742424, 20.914907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431015, 43.686329, 21.237640>,  <32.293282, 43.652672, 21.431280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431015, 43.686329, 21.237640>,  <32.660572, 43.742424, 20.914907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431015, 43.686329, 21.237640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796707, -0.323571, 0.510452,
		0.189485, 0.935755, 0.297420,
		-0.573894, -0.140234, 0.806834,
		32.258846, 43.644260, 21.479691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085556, 44.029205, 21.436867>,  <32.660572, 43.742424, 20.914907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085556, 44.029205, 21.436867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820263, 43.798817, 21.628025>,  <32.661087, 43.660583, 21.742720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820263, 43.798817, 21.628025>,  <33.085556, 44.029205, 21.436867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820263, 43.798817, 21.628025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651364, -0.129761, 0.747587,
		-0.368574, 0.807108, 0.461226,
		-0.663233, -0.575968, 0.477894,
		32.621292, 43.626026, 21.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114296, 44.291290, 22.079519>,  <33.085556, 44.029205, 21.436867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114296, 44.291290, 22.079519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945751, 43.930283, 22.115095>,  <32.844624, 43.713676, 22.136440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945751, 43.930283, 22.115095>,  <33.114296, 44.291290, 22.079519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945751, 43.930283, 22.115095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551812, -0.177320, 0.814900,
		-0.719694, 0.392444, 0.572738,
		-0.421360, -0.902522, 0.088939,
		32.819344, 43.659527, 22.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866974, 44.215923, 22.741482>,  <33.114296, 44.291290, 22.079519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866974, 44.215923, 22.741482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899723, 43.835201, 22.623259>,  <32.919373, 43.606766, 22.552324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899723, 43.835201, 22.623259>,  <32.866974, 44.215923, 22.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899723, 43.835201, 22.623259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460603, -0.226850, 0.858128,
		-0.883823, -0.206391, 0.419834,
		0.081871, -0.951810, -0.295560,
		32.924286, 43.549660, 22.534590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752956, 43.755810, 23.330975>,  <32.866974, 44.215923, 22.741482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752956, 43.755810, 23.330975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918285, 43.490093, 23.081852>,  <33.017483, 43.330666, 22.932379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918285, 43.490093, 23.081852>,  <32.752956, 43.755810, 23.330975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918285, 43.490093, 23.081852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638368, -0.276359, 0.718410,
		-0.649349, -0.694513, 0.309835,
		0.413319, -0.664288, -0.622808,
		33.042282, 43.290806, 22.895010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775181, 43.070854, 23.665401>,  <32.752956, 43.755810, 23.330975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775181, 43.070854, 23.665401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053272, 43.072559, 23.377890>,  <33.220127, 43.073582, 23.205383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053272, 43.072559, 23.377890>,  <32.775181, 43.070854, 23.665401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053272, 43.072559, 23.377890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707913, -0.177374, 0.683664,
		-0.124580, -0.984134, -0.126331,
		0.695225, 0.004261, -0.718779,
		33.261841, 43.073837, 23.162256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144588, 42.515961, 23.795393>,  <32.775181, 43.070854, 23.665401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144588, 42.515961, 23.795393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393238, 42.719875, 23.557503>,  <33.542427, 42.842224, 23.414768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393238, 42.719875, 23.557503>,  <33.144588, 42.515961, 23.795393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393238, 42.719875, 23.557503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778119, -0.314548, 0.543682,
		0.090093, -0.800734, -0.592207,
		0.621622, 0.509790, -0.594728,
		33.579723, 42.872810, 23.379084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710514, 42.089130, 23.561140>,  <33.144588, 42.515961, 23.795393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710514, 42.089130, 23.561140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841900, 42.461979, 23.500137>,  <33.920731, 42.685688, 23.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841900, 42.461979, 23.500137>,  <33.710514, 42.089130, 23.561140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841900, 42.461979, 23.500137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846742, -0.219056, 0.484811,
		0.418496, -0.288379, -0.861219,
		0.328465, 0.932122, -0.152509,
		33.940441, 42.741615, 23.454384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478985, 42.006908, 23.431263>,  <33.710514, 42.089130, 23.561140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478985, 42.006908, 23.431263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397224, 42.376419, 23.560791>,  <34.348167, 42.598125, 23.638508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397224, 42.376419, 23.560791>,  <34.478985, 42.006908, 23.431263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397224, 42.376419, 23.560791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786808, -0.041759, 0.615784,
		0.582368, 0.380654, -0.718297,
		-0.204405, 0.923774, 0.323820,
		34.335903, 42.653553, 23.657938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215061, 42.306492, 23.610209>,  <34.478985, 42.006908, 23.431263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215061, 42.306492, 23.610209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952377, 42.542660, 23.797884>,  <34.794765, 42.684361, 23.910488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952377, 42.542660, 23.797884>,  <35.215061, 42.306492, 23.610209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952377, 42.542660, 23.797884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572624, -0.014464, 0.819691,
		0.490747, 0.806967, -0.328590,
		-0.656711, 0.590419, 0.469187,
		34.755363, 42.719784, 23.938641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671303, 42.759697, 23.924648>,  <35.215061, 42.306492, 23.610209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671303, 42.759697, 23.924648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323559, 42.802406, 24.117655>,  <35.114914, 42.828033, 24.233458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323559, 42.802406, 24.117655>,  <35.671303, 42.759697, 23.924648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323559, 42.802406, 24.117655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473061, -0.102623, 0.875033,
		0.142950, 0.988973, 0.038704,
		-0.869355, 0.106776, 0.482514,
		35.062752, 42.834438, 24.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848297, 43.187572, 24.494461>,  <35.671303, 42.759697, 23.924648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848297, 43.187572, 24.494461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534962, 42.952560, 24.575632>,  <35.346958, 42.811554, 24.624334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534962, 42.952560, 24.575632>,  <35.848297, 43.187572, 24.494461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534962, 42.952560, 24.575632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448756, -0.308649, 0.838662,
		-0.430107, 0.748025, 0.505437,
		-0.783343, -0.587532, 0.202929,
		35.299957, 42.776302, 24.636511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861183, 43.160786, 25.235733>,  <35.848297, 43.187572, 24.494461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861183, 43.160786, 25.235733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600937, 42.871731, 25.142361>,  <35.444790, 42.698296, 25.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600937, 42.871731, 25.142361>,  <35.861183, 43.160786, 25.235733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600937, 42.871731, 25.142361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383191, -0.577784, 0.720646,
		-0.655639, 0.379416, 0.652825,
		-0.650616, -0.722640, -0.233429,
		35.405750, 42.654938, 25.072332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723606, 42.918125, 25.848225>,  <35.861183, 43.160786, 25.235733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723606, 42.918125, 25.848225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594864, 42.634102, 25.597715>,  <35.517616, 42.463688, 25.447409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594864, 42.634102, 25.597715>,  <35.723606, 42.918125, 25.848225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594864, 42.634102, 25.597715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282659, -0.703371, 0.652207,
		-0.903610, 0.032896, 0.427091,
		-0.321858, -0.710061, -0.626275,
		35.498306, 42.421082, 25.409832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305668, 42.448151, 26.195585>,  <35.723606, 42.918125, 25.848225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305668, 42.448151, 26.195585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432270, 42.231110, 25.884354>,  <35.508232, 42.100883, 25.697615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432270, 42.231110, 25.884354>,  <35.305668, 42.448151, 26.195585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432270, 42.231110, 25.884354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204696, -0.761854, 0.614555,
		-0.926243, -0.353777, -0.130059,
		0.316501, -0.542605, -0.778078,
		35.527222, 42.068329, 25.650930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956833, 41.758568, 26.329224>,  <35.305668, 42.448151, 26.195585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956833, 41.758568, 26.329224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273712, 41.708248, 26.090359>,  <35.463840, 41.678059, 25.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273712, 41.708248, 26.090359>,  <34.956833, 41.758568, 26.329224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273712, 41.708248, 26.090359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247053, -0.828648, 0.502302,
		-0.558024, -0.545452, -0.625373,
		0.792196, -0.125796, -0.597161,
		35.511372, 41.670509, 25.911211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935574, 41.038895, 26.277697>,  <34.956833, 41.758568, 26.329224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935574, 41.038895, 26.277697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303562, 41.161049, 26.179401>,  <35.524357, 41.234341, 26.120424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303562, 41.161049, 26.179401>,  <34.935574, 41.038895, 26.277697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303562, 41.161049, 26.179401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389276, -0.785274, 0.481465,
		-0.045939, -0.538595, -0.841311,
		0.919975, 0.305385, -0.245737,
		35.579556, 41.252663, 26.105680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277294, 40.395626, 26.092039>,  <34.935574, 41.038895, 26.277697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277294, 40.395626, 26.092039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549671, 40.672192, 26.188587>,  <35.713097, 40.838131, 26.246517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549671, 40.672192, 26.188587>,  <35.277294, 40.395626, 26.092039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549671, 40.672192, 26.188587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443130, -0.651420, 0.615864,
		0.583050, -0.312411, -0.749967,
		0.680946, 0.691413, 0.241372,
		35.753956, 40.879616, 26.260998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982460, 40.132168, 25.961937>,  <35.277294, 40.395626, 26.092039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982460, 40.132168, 25.961937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056408, 40.420296, 26.229357>,  <36.100777, 40.593174, 26.389809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056408, 40.420296, 26.229357>,  <35.982460, 40.132168, 25.961937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056408, 40.420296, 26.229357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681163, -0.584284, 0.441168,
		0.708407, 0.373833, -0.598673,
		0.184872, 0.720320, 0.668552,
		36.111870, 40.636391, 26.429922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683155, 40.188789, 26.003527>,  <35.982460, 40.132168, 25.961937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683155, 40.188789, 26.003527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606037, 40.400200, 26.334221>,  <36.559765, 40.527046, 26.532637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606037, 40.400200, 26.334221>,  <36.683155, 40.188789, 26.003527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606037, 40.400200, 26.334221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799733, -0.403554, 0.444489,
		0.568556, 0.746864, -0.344874,
		-0.192798, 0.528524, 0.826735,
		36.548199, 40.558758, 26.582241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258598, 40.722496, 26.200142>,  <36.683155, 40.188789, 26.003527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258598, 40.722496, 26.200142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042423, 40.642094, 26.526951>,  <36.912720, 40.593853, 26.723036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042423, 40.642094, 26.526951>,  <37.258598, 40.722496, 26.200142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042423, 40.642094, 26.526951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835125, -0.246391, 0.491790,
		0.102456, 0.948098, 0.301021,
		-0.540434, -0.201003, 0.817024,
		36.880295, 40.581791, 26.772058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684044, 40.971302, 26.839455>,  <37.258598, 40.722496, 26.200142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684044, 40.971302, 26.839455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423717, 40.725288, 27.017521>,  <37.267521, 40.577679, 27.124361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423717, 40.725288, 27.017521>,  <37.684044, 40.971302, 26.839455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423717, 40.725288, 27.017521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716372, -0.303214, 0.628388,
		-0.251503, 0.727866, 0.637932,
		-0.650813, -0.615038, 0.445164,
		37.228474, 40.540775, 27.151070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780033, 41.092945, 27.650562>,  <37.684044, 40.971302, 26.839455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780033, 41.092945, 27.650562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593845, 40.742104, 27.603184>,  <37.482132, 40.531597, 27.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593845, 40.742104, 27.603184>,  <37.780033, 41.092945, 27.650562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593845, 40.742104, 27.603184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505549, -0.373334, 0.777845,
		-0.726470, 0.302181, 0.617193,
		-0.465469, -0.877102, -0.118448,
		37.454205, 40.478973, 27.567650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902870, 40.817867, 28.341909>,  <37.780033, 41.092945, 27.650562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902870, 40.817867, 28.341909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776260, 40.505077, 28.127123>,  <37.700294, 40.317406, 27.998251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776260, 40.505077, 28.127123>,  <37.902870, 40.817867, 28.341909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776260, 40.505077, 28.127123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401833, -0.623305, 0.670836,
		-0.859267, -0.003433, 0.511515,
		-0.316527, -0.781971, -0.536965,
		37.681301, 40.270485, 27.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579315, 40.428120, 28.875904>,  <37.902870, 40.817867, 28.341909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579315, 40.428120, 28.875904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699554, 40.190815, 28.577192>,  <37.771698, 40.048431, 28.397964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699554, 40.190815, 28.577192>,  <37.579315, 40.428120, 28.875904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699554, 40.190815, 28.577192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325208, -0.672313, 0.665007,
		-0.896592, -0.442762, -0.009166,
		0.300603, -0.593259, -0.746781,
		37.789734, 40.012836, 28.353159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529526, 39.689468, 29.070190>,  <37.579315, 40.428120, 28.875904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529526, 39.689468, 29.070190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788803, 39.668644, 28.766314>,  <37.944370, 39.656151, 28.583988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788803, 39.668644, 28.766314>,  <37.529526, 39.689468, 29.070190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788803, 39.668644, 28.766314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528930, -0.686915, 0.498378,
		-0.547788, -0.724871, -0.417721,
		0.648198, -0.052061, -0.759690,
		37.983261, 39.653027, 28.538406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735703, 39.027855, 29.040443>,  <37.529526, 39.689468, 29.070190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735703, 39.027855, 29.040443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030369, 39.200043, 28.831823>,  <38.207169, 39.303356, 28.706652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030369, 39.200043, 28.831823>,  <37.735703, 39.027855, 29.040443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030369, 39.200043, 28.831823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616903, -0.743718, 0.257514,
		-0.277033, -0.511447, -0.813434,
		0.736670, 0.430470, -0.521548,
		38.251369, 39.329185, 28.675360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053062, 38.384117, 28.689653>,  <37.735703, 39.027855, 29.040443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053062, 38.384117, 28.689653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309628, 38.690990, 28.687769>,  <38.463566, 38.875114, 28.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309628, 38.690990, 28.687769>,  <38.053062, 38.384117, 28.689653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309628, 38.690990, 28.687769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749102, -0.624943, 0.219758,
		0.165651, -0.144484, -0.975543,
		0.641410, 0.767184, -0.004711,
		38.502052, 38.921146, 28.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547661, 38.204903, 28.209578>,  <38.053062, 38.384117, 28.689653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547661, 38.204903, 28.209578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740879, 38.475193, 28.432306>,  <38.856812, 38.637367, 28.565943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740879, 38.475193, 28.432306>,  <38.547661, 38.204903, 28.209578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740879, 38.475193, 28.432306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737312, -0.656918, 0.157575,
		0.472265, 0.334435, -0.815548,
		0.483050, 0.675730, 0.556822,
		38.885796, 38.677914, 28.599354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339737, 38.229939, 28.058504>,  <38.547661, 38.204903, 28.209578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339737, 38.229939, 28.058504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319481, 38.377022, 28.429930>,  <39.307327, 38.465271, 28.652784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319481, 38.377022, 28.429930>,  <39.339737, 38.229939, 28.058504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319481, 38.377022, 28.429930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744062, -0.606298, 0.280668,
		0.666189, 0.705120, -0.242895,
		-0.050638, 0.367706, 0.928562,
		39.304291, 38.487335, 28.708498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058605, 38.351585, 28.316126>,  <39.339737, 38.229939, 28.058504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058605, 38.351585, 28.316126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836113, 38.344238, 28.648455>,  <39.702618, 38.339828, 28.847853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836113, 38.344238, 28.648455>,  <40.058605, 38.351585, 28.316126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836113, 38.344238, 28.648455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652786, -0.628347, 0.423145,
		0.514273, 0.777717, 0.361497,
		-0.556232, -0.018369, 0.830824,
		39.669243, 38.338726, 28.897701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440449, 38.494453, 28.882036>,  <40.058605, 38.351585, 28.316126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440449, 38.494453, 28.882036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150642, 38.307945, 29.085077>,  <39.976757, 38.196041, 29.206902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150642, 38.307945, 29.085077>,  <40.440449, 38.494453, 28.882036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150642, 38.307945, 29.085077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687139, -0.546287, 0.478968,
		0.053968, 0.695816, 0.716189,
		-0.724519, -0.466272, 0.507605,
		39.933289, 38.168064, 29.237358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697556, 38.472694, 29.483871>,  <40.440449, 38.494453, 28.882036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697556, 38.472694, 29.483871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420170, 38.184509, 29.481394>,  <40.253738, 38.011597, 29.479908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420170, 38.184509, 29.481394>,  <40.697556, 38.472694, 29.483871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420170, 38.184509, 29.481394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629271, -0.609828, 0.481796,
		-0.350895, 0.330210, 0.876262,
		-0.693463, -0.720466, -0.006194,
		40.212132, 37.968369, 29.479536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915131, 38.114506, 30.067749>,  <40.697556, 38.472694, 29.483871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915131, 38.114506, 30.067749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646648, 37.868065, 29.902874>,  <40.485558, 37.720200, 29.803949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646648, 37.868065, 29.902874>,  <40.915131, 38.114506, 30.067749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646648, 37.868065, 29.902874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528937, -0.787642, 0.315983,
		-0.519336, -0.005933, 0.854549,
		-0.671205, -0.616104, -0.412189,
		40.445286, 37.683235, 29.779217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820351, 37.581738, 30.485067>,  <40.915131, 38.114506, 30.067749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820351, 37.581738, 30.485067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695263, 37.404942, 30.148769>,  <40.620209, 37.298862, 29.946991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695263, 37.404942, 30.148769>,  <40.820351, 37.581738, 30.485067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695263, 37.404942, 30.148769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553691, -0.804024, 0.216733,
		-0.771771, -0.397734, 0.496162,
		-0.312724, -0.441989, -0.840744,
		40.601444, 37.272346, 29.896545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252266, 37.210003, 30.780409>,  <40.820351, 37.581738, 30.485067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252266, 37.210003, 30.780409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483341, 37.192497, 31.106443>,  <40.621986, 37.181992, 31.302065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483341, 37.192497, 31.106443>,  <40.252266, 37.210003, 30.780409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483341, 37.192497, 31.106443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802921, -0.210259, 0.557772,
		0.146968, -0.976666, -0.156604,
		0.577683, -0.043766, 0.815086,
		40.656647, 37.179367, 31.350969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227127, 36.581955, 31.083878>,  <40.252266, 37.210003, 30.780409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227127, 36.581955, 31.083878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354996, 36.767975, 31.414099>,  <40.431717, 36.879585, 31.612232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354996, 36.767975, 31.414099>,  <40.227127, 36.581955, 31.083878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354996, 36.767975, 31.414099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780406, -0.364905, 0.507751,
		0.537378, -0.806581, 0.246278,
		0.319674, 0.465051, 0.825552,
		40.450897, 36.907490, 31.661764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257229, 36.029659, 31.532177>,  <40.227127, 36.581955, 31.083878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257229, 36.029659, 31.532177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244579, 36.368916, 31.743710>,  <40.236988, 36.572468, 31.870630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244579, 36.368916, 31.743710>,  <40.257229, 36.029659, 31.532177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244579, 36.368916, 31.743710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541779, -0.459171, 0.704015,
		0.839926, -0.264246, 0.474024,
		-0.031625, 0.848137, 0.528833,
		40.235092, 36.623356, 31.902359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534458, 35.925648, 32.232506>,  <40.257229, 36.029659, 31.532177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534458, 35.925648, 32.232506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303951, 36.252354, 32.243946>,  <40.165646, 36.448376, 32.250809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303951, 36.252354, 32.243946>,  <40.534458, 35.925648, 32.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303951, 36.252354, 32.243946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432285, -0.334326, 0.837470,
		0.693576, 0.470241, 0.545734,
		-0.576266, 0.816762, 0.028602,
		40.131073, 36.497383, 32.252525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462795, 36.020309, 32.939819>,  <40.534458, 35.925648, 32.232506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462795, 36.020309, 32.939819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176647, 36.252220, 32.783813>,  <40.004959, 36.391365, 32.690212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176647, 36.252220, 32.783813>,  <40.462795, 36.020309, 32.939819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176647, 36.252220, 32.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576984, -0.175305, 0.797720,
		0.394126, 0.795695, 0.459928,
		-0.715370, 0.579773, -0.390011,
		39.962036, 36.426151, 32.666809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188656, 36.357162, 33.475933>,  <40.462795, 36.020309, 32.939819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188656, 36.357162, 33.475933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893616, 36.360161, 33.205856>,  <39.716591, 36.361958, 33.043812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893616, 36.360161, 33.205856>,  <40.188656, 36.357162, 33.475933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893616, 36.360161, 33.205856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645977, -0.298980, 0.702371,
		-0.196607, 0.954230, 0.225368,
		-0.737604, 0.007492, -0.675192,
		39.672333, 36.362408, 33.003300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621075, 36.508801, 33.924011>,  <40.188656, 36.357162, 33.475933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621075, 36.508801, 33.924011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445511, 36.405239, 33.579842>,  <39.340172, 36.343102, 33.373341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445511, 36.405239, 33.579842>,  <39.621075, 36.508801, 33.924011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445511, 36.405239, 33.579842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850369, -0.189618, 0.490834,
		-0.290232, 0.947108, -0.136941,
		-0.438906, -0.258906, -0.860424,
		39.313839, 36.327568, 33.321716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767887, 36.782001, 33.948910>,  <39.621075, 36.508801, 33.924011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767887, 36.782001, 33.948910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782249, 36.519203, 33.647694>,  <38.790867, 36.361523, 33.466965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782249, 36.519203, 33.647694>,  <38.767887, 36.782001, 33.948910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782249, 36.519203, 33.647694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816337, -0.453938, 0.357119,
		-0.576459, 0.601908, -0.552632,
		0.035907, -0.656999, -0.753036,
		38.793022, 36.322105, 33.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147202, 36.773438, 33.594940>,  <38.767887, 36.782001, 33.948910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147202, 36.773438, 33.594940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293232, 36.412498, 33.503296>,  <38.380848, 36.195934, 33.448307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293232, 36.412498, 33.503296>,  <38.147202, 36.773438, 33.594940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293232, 36.412498, 33.503296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855926, -0.422125, 0.298666,
		-0.366215, 0.087069, -0.926448,
		0.365072, -0.902346, -0.229114,
		38.402752, 36.141796, 33.434563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622875, 36.327621, 33.231365>,  <38.147202, 36.773438, 33.594940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622875, 36.327621, 33.231365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884926, 36.072090, 33.392712>,  <38.042156, 35.918770, 33.489517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884926, 36.072090, 33.392712>,  <37.622875, 36.327621, 33.231365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884926, 36.072090, 33.392712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753842, -0.588254, 0.292710,
		0.050289, -0.495836, -0.866959,
		0.655128, -0.638830, 0.403364,
		38.081463, 35.880440, 33.513721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286926, 35.793201, 33.078838>,  <37.622875, 36.327621, 33.231365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286926, 35.793201, 33.078838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557499, 35.677876, 33.349930>,  <37.719841, 35.608681, 33.512585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557499, 35.677876, 33.349930>,  <37.286926, 35.793201, 33.078838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557499, 35.677876, 33.349930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664657, -0.635392, 0.393074,
		0.317297, -0.716346, -0.621427,
		0.676427, -0.288315, 0.677732,
		37.760426, 35.591381, 33.553249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220257, 35.050610, 33.207703>,  <37.286926, 35.793201, 33.078838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220257, 35.050610, 33.207703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430538, 35.177376, 33.523472>,  <37.556709, 35.253437, 33.712933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430538, 35.177376, 33.523472>,  <37.220257, 35.050610, 33.207703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430538, 35.177376, 33.523472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444944, -0.688499, 0.572707,
		0.725022, -0.652327, -0.220937,
		0.525707, 0.316920, 0.789426,
		37.588249, 35.272453, 33.760300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543598, 34.513966, 33.577908>,  <37.220257, 35.050610, 33.207703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543598, 34.513966, 33.577908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488377, 34.807964, 33.843456>,  <37.455242, 34.984364, 34.002785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488377, 34.807964, 33.843456>,  <37.543598, 34.513966, 33.577908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488377, 34.807964, 33.843456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567462, -0.608061, 0.555201,
		0.811744, -0.300074, 0.501027,
		-0.138054, 0.734995, 0.663870,
		37.446960, 35.028461, 34.042618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492550, 34.126274, 34.133564>,  <37.543598, 34.513966, 33.577908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492550, 34.126274, 34.133564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319485, 34.474495, 34.227325>,  <37.215645, 34.683426, 34.283585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319485, 34.474495, 34.227325>,  <37.492550, 34.126274, 34.133564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319485, 34.474495, 34.227325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619592, -0.475992, 0.624130,
		0.654911, 0.124801, 0.745329,
		-0.432662, 0.870550, 0.234407,
		37.189686, 34.735661, 34.297649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614578, 34.169682, 34.865532>,  <37.492550, 34.126274, 34.133564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614578, 34.169682, 34.865532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293964, 34.379593, 34.750893>,  <37.101597, 34.505539, 34.682110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293964, 34.379593, 34.750893>,  <37.614578, 34.169682, 34.865532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293964, 34.379593, 34.750893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581458, -0.572305, 0.578251,
		0.139435, 0.630135, 0.763864,
		-0.801539, 0.524783, -0.286597,
		37.053501, 34.537029, 34.664913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161621, 34.274117, 35.522488>,  <37.614578, 34.169682, 34.865532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161621, 34.274117, 35.522488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928165, 34.390160, 35.219120>,  <36.788094, 34.459785, 35.037098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928165, 34.390160, 35.219120>,  <37.161621, 34.274117, 35.522488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928165, 34.390160, 35.219120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789485, -0.421211, 0.446424,
		-0.189942, 0.859312, 0.474874,
		-0.583639, 0.290112, -0.758420,
		36.753075, 34.477192, 34.991592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524670, 34.496651, 35.771782>,  <37.161621, 34.274117, 35.522488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524670, 34.496651, 35.771782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379101, 34.358128, 35.425919>,  <36.291759, 34.275013, 35.218399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379101, 34.358128, 35.425919>,  <36.524670, 34.496651, 35.771782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379101, 34.358128, 35.425919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671374, -0.545927, 0.501220,
		-0.645617, 0.762911, -0.033830,
		-0.363918, -0.346309, -0.864658,
		36.269924, 34.254234, 35.166523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806408, 34.673985, 35.768753>,  <36.524670, 34.496651, 35.771782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806408, 34.673985, 35.768753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853561, 34.365299, 35.518772>,  <35.881851, 34.180088, 35.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853561, 34.365299, 35.518772>,  <35.806408, 34.673985, 35.768753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853561, 34.365299, 35.518772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829120, -0.422836, 0.365745,
		-0.546502, 0.475044, -0.689688,
		0.117880, -0.771714, -0.624949,
		35.888924, 34.133785, 35.331287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217529, 34.641052, 35.379841>,  <35.806408, 34.673985, 35.768753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217529, 34.641052, 35.379841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372662, 34.272705, 35.363846>,  <35.465740, 34.051697, 35.354248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372662, 34.272705, 35.363846>,  <35.217529, 34.641052, 35.379841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372662, 34.272705, 35.363846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886181, -0.384451, 0.258614,
		-0.253521, -0.064862, -0.965153,
		0.387828, -0.920864, -0.039987,
		35.489010, 33.996445, 35.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838421, 34.185596, 34.901573>,  <35.217529, 34.641052, 35.379841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838421, 34.185596, 34.901573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040131, 33.943619, 35.148067>,  <35.161156, 33.798431, 35.295963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040131, 33.943619, 35.148067>,  <34.838421, 34.185596, 34.901573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040131, 33.943619, 35.148067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848686, -0.215375, 0.483059,
		-0.159501, -0.766588, -0.622015,
		0.504274, -0.604943, 0.616239,
		35.191414, 33.762135, 35.332939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447655, 33.604340, 35.127174>,  <34.838421, 34.185596, 34.901573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447655, 33.604340, 35.127174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728855, 33.619678, 35.411236>,  <34.897575, 33.628880, 35.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728855, 33.619678, 35.411236>,  <34.447655, 33.604340, 35.127174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728855, 33.619678, 35.411236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704198, -0.102154, 0.702616,
		0.099489, -0.994029, -0.044810,
		0.702998, 0.038347, 0.710157,
		34.939754, 33.631184, 35.624283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029438, 33.049305, 35.274193>,  <34.447655, 33.604340, 35.127174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029438, 33.049305, 35.274193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859840, 32.906555, 34.941238>,  <33.758080, 32.820904, 34.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859840, 32.906555, 34.941238>,  <34.029438, 33.049305, 35.274193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859840, 32.906555, 34.941238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842276, 0.182416, -0.507243,
		0.332864, -0.916168, 0.223244,
		-0.423997, -0.356875, -0.832386,
		33.732643, 32.799492, 34.691521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992752, 33.022858, 36.035183>,  <34.029438, 33.049305, 35.274193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992752, 33.022858, 36.035183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211720, 32.856091, 35.744938>,  <34.343102, 32.756031, 35.570789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211720, 32.856091, 35.744938>,  <33.992752, 33.022858, 36.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211720, 32.856091, 35.744938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742959, 0.641177, 0.192104,
		0.385154, -0.644262, 0.660744,
		0.547419, -0.416916, -0.725612,
		34.375946, 32.731014, 35.527256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556610, 32.603447, 36.274837>,  <33.992752, 33.022858, 36.035183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556610, 32.603447, 36.274837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614292, 32.765057, 35.913513>,  <34.648899, 32.862022, 35.696716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614292, 32.765057, 35.913513>,  <34.556610, 32.603447, 36.274837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614292, 32.765057, 35.913513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732615, 0.570048, 0.371914,
		0.665193, -0.715411, -0.213789,
		0.144202, 0.404020, -0.903313,
		34.657551, 32.886261, 35.642521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230312, 32.896622, 36.202595>,  <34.556610, 32.603447, 36.274837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230312, 32.896622, 36.202595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120724, 33.036728, 35.844318>,  <35.054970, 33.120792, 35.629353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120724, 33.036728, 35.844318>,  <35.230312, 32.896622, 36.202595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120724, 33.036728, 35.844318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841678, 0.537922, -0.047099,
		0.465312, -0.766783, -0.442186,
		-0.273976, 0.350262, -0.895686,
		35.038532, 33.141808, 35.575611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763237, 32.821259, 35.780437>,  <35.230312, 32.896622, 36.202595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763237, 32.821259, 35.780437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563255, 33.101822, 35.577236>,  <35.443264, 33.270161, 35.455315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563255, 33.101822, 35.577236>,  <35.763237, 32.821259, 35.780437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563255, 33.101822, 35.577236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865244, 0.429842, -0.258049,
		0.037366, -0.568564, -0.821790,
		-0.499957, 0.701406, -0.508007,
		35.413269, 33.312244, 35.424835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101990, 32.838909, 35.219952>,  <35.763237, 32.821259, 35.780437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101990, 32.838909, 35.219952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911129, 33.189640, 35.243649>,  <35.796612, 33.400078, 35.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911129, 33.189640, 35.243649>,  <36.101990, 32.838909, 35.219952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911129, 33.189640, 35.243649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755486, 0.443690, -0.482058,
		-0.448967, -0.185253, -0.874134,
		-0.477147, 0.876824, 0.059247,
		35.767986, 33.452686, 35.261421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942074, 33.070450, 34.514111>,  <36.101990, 32.838909, 35.219952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942074, 33.070450, 34.514111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928696, 33.385784, 34.759842>,  <35.920670, 33.574986, 34.907280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928696, 33.385784, 34.759842>,  <35.942074, 33.070450, 34.514111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928696, 33.385784, 34.759842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642896, 0.487597, -0.590707,
		-0.765223, 0.375193, -0.523129,
		-0.033448, 0.788340, 0.614331,
		35.918663, 33.622288, 34.944141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909405, 33.748260, 34.066261>,  <35.942074, 33.070450, 34.514111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909405, 33.748260, 34.066261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045204, 33.884598, 34.416931>,  <36.126686, 33.966400, 34.627335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045204, 33.884598, 34.416931>,  <35.909405, 33.748260, 34.066261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045204, 33.884598, 34.416931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474830, 0.742454, -0.472544,
		-0.811958, 0.576701, 0.090219,
		0.339500, 0.340848, 0.876677,
		36.147053, 33.986851, 34.679935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992939, 34.450386, 34.006500>,  <35.909405, 33.748260, 34.066261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992939, 34.450386, 34.006500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227863, 34.380474, 34.322605>,  <36.368816, 34.338528, 34.512268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227863, 34.380474, 34.322605>,  <35.992939, 34.450386, 34.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227863, 34.380474, 34.322605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619108, 0.725928, -0.299554,
		-0.521319, 0.665191, 0.534554,
		0.587308, -0.174784, 0.790265,
		36.404057, 34.328037, 34.559685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935169, 35.105423, 34.279816>,  <35.992939, 34.450386, 34.006500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935169, 35.105423, 34.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281731, 34.965084, 34.421940>,  <36.489670, 34.880882, 34.507214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281731, 34.965084, 34.421940>,  <35.935169, 35.105423, 34.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281731, 34.965084, 34.421940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498233, 0.654757, -0.568382,
		-0.033227, 0.669477, 0.742089,
		0.866406, -0.350848, 0.355311,
		36.541653, 34.859829, 34.528534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272114, 35.647835, 34.496304>,  <35.935169, 35.105423, 34.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272114, 35.647835, 34.496304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560936, 35.382847, 34.416534>,  <36.734230, 35.223854, 34.368675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560936, 35.382847, 34.416534>,  <36.272114, 35.647835, 34.496304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560936, 35.382847, 34.416534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509774, 0.704335, -0.494007,
		0.467722, 0.255044, 0.846280,
		0.722058, -0.662469, -0.199418,
		36.777554, 35.184105, 34.356709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882343, 35.821362, 34.891182>,  <36.272114, 35.647835, 34.496304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882343, 35.821362, 34.891182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002144, 35.481186, 34.718185>,  <37.074024, 35.277081, 34.614388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002144, 35.481186, 34.718185>,  <36.882343, 35.821362, 34.891182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002144, 35.481186, 34.718185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769341, 0.483362, -0.417702,
		0.564283, -0.207635, 0.799045,
		0.299498, -0.850440, -0.432495,
		37.091995, 35.226055, 34.588436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583275, 35.836811, 35.034660>,  <36.882343, 35.821362, 34.891182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583275, 35.836811, 35.034660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512157, 35.600060, 34.720192>,  <37.469486, 35.458008, 34.531509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512157, 35.600060, 34.720192>,  <37.583275, 35.836811, 35.034660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512157, 35.600060, 34.720192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709400, 0.476595, -0.519239,
		0.682013, -0.650028, 0.335144,
		-0.177792, -0.591878, -0.786174,
		37.458820, 35.422497, 34.484341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268658, 35.844826, 34.718445>,  <37.583275, 35.836811, 35.034660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268658, 35.844826, 34.718445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035915, 35.657291, 34.452621>,  <37.896271, 35.544769, 34.293129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035915, 35.657291, 34.452621>,  <38.268658, 35.844826, 34.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035915, 35.657291, 34.452621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693539, 0.140764, -0.706533,
		0.424794, -0.871997, 0.243252,
		-0.581853, -0.468836, -0.664560,
		37.861359, 35.516640, 34.253254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639202, 35.288322, 34.452576>,  <38.268658, 35.844826, 34.718445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639202, 35.288322, 34.452576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361366, 35.375259, 34.178257>,  <38.194664, 35.427422, 34.013668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361366, 35.375259, 34.178257>,  <38.639202, 35.288322, 34.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361366, 35.375259, 34.178257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719355, 0.198226, -0.665759,
		-0.008756, -0.955755, -0.294032,
		-0.694588, 0.217342, -0.685792,
		38.152988, 35.440460, 33.972519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882847, 34.925888, 33.812851>,  <38.639202, 35.288322, 34.452576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882847, 34.925888, 33.812851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639206, 35.236801, 33.749813>,  <38.493023, 35.423347, 33.711990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639206, 35.236801, 33.749813>,  <38.882847, 34.925888, 33.812851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639206, 35.236801, 33.749813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610677, 0.332864, -0.718522,
		-0.506036, -0.533889, -0.677414,
		-0.609099, 0.777279, -0.157593,
		38.456478, 35.469986, 33.702534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048435, 35.103409, 33.138748>,  <38.882847, 34.925888, 33.812851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048435, 35.103409, 33.138748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821735, 35.415092, 33.245800>,  <38.685715, 35.602104, 33.310032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821735, 35.415092, 33.245800>,  <39.048435, 35.103409, 33.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821735, 35.415092, 33.245800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629057, 0.619033, -0.470197,
		-0.532055, -0.098129, -0.841004,
		-0.566750, 0.779210, 0.267631,
		38.651711, 35.648857, 33.326088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902424, 35.423691, 32.512733>,  <39.048435, 35.103409, 33.138748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902424, 35.423691, 32.512733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867393, 35.697903, 32.801834>,  <38.846375, 35.862431, 32.975296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867393, 35.697903, 32.801834>,  <38.902424, 35.423691, 32.512733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867393, 35.697903, 32.801834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586306, 0.622035, -0.518959,
		-0.805342, 0.378308, -0.456406,
		-0.087574, 0.685533, 0.722755,
		38.841122, 35.903564, 33.018661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776352, 36.034527, 32.185875>,  <38.902424, 35.423691, 32.512733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776352, 36.034527, 32.185875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925449, 36.147945, 32.539295>,  <39.014908, 36.215996, 32.751347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925449, 36.147945, 32.539295>,  <38.776352, 36.034527, 32.185875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925449, 36.147945, 32.539295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594307, 0.658307, -0.461986,
		-0.712643, 0.697303, 0.076867,
		0.372746, 0.283548, 0.883550,
		39.037273, 36.233009, 32.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708847, 36.699604, 32.289951>,  <38.776352, 36.034527, 32.185875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708847, 36.699604, 32.289951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034698, 36.590294, 32.494576>,  <39.230209, 36.524708, 32.617352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034698, 36.590294, 32.494576>,  <38.708847, 36.699604, 32.289951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034698, 36.590294, 32.494576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552146, 0.635383, -0.539836,
		-0.177515, 0.722225, 0.668491,
		0.814631, -0.273276, 0.511563,
		39.279087, 36.508312, 32.648045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968555, 37.321156, 32.196709>,  <38.708847, 36.699604, 32.289951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968555, 37.321156, 32.196709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248371, 37.061840, 32.316948>,  <39.416260, 36.906250, 32.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248371, 37.061840, 32.316948>,  <38.968555, 37.321156, 32.196709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248371, 37.061840, 32.316948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699149, 0.533935, -0.475504,
		0.147764, 0.542799, 0.826762,
		0.699540, -0.648292, 0.300600,
		39.458233, 36.867352, 32.407127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526821, 37.741486, 32.057495>,  <38.968555, 37.321156, 32.196709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526821, 37.741486, 32.057495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711578, 37.410439, 32.185059>,  <39.822433, 37.211811, 32.261597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711578, 37.410439, 32.185059>,  <39.526821, 37.741486, 32.057495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711578, 37.410439, 32.185059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886285, 0.416926, -0.201675,
		0.033946, 0.375800, 0.926079,
		0.461896, -0.827615, 0.318913,
		39.850147, 37.162155, 32.280731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249783, 37.809952, 32.499622>,  <39.526821, 37.741486, 32.057495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249783, 37.809952, 32.499622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243202, 37.446259, 32.333233>,  <40.239254, 37.228043, 32.233398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243202, 37.446259, 32.333233>,  <40.249783, 37.809952, 32.499622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243202, 37.446259, 32.333233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887800, 0.178086, -0.424377,
		0.459935, -0.376282, 0.804283,
		-0.016454, -0.909229, -0.415971,
		40.238266, 37.173489, 32.208443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906036, 37.515976, 32.694927>,  <40.249783, 37.809952, 32.499622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906036, 37.515976, 32.694927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753288, 37.339359, 32.370159>,  <40.661640, 37.233387, 32.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753288, 37.339359, 32.370159>,  <40.906036, 37.515976, 32.694927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753288, 37.339359, 32.370159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762859, 0.345348, -0.546610,
		0.521747, -0.828113, 0.204959,
		-0.381873, -0.441547, -0.811918,
		40.638725, 37.206894, 32.126583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501972, 37.274239, 32.373631>,  <40.906036, 37.515976, 32.694927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501972, 37.274239, 32.373631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223080, 37.299747, 32.088028>,  <41.055744, 37.315052, 31.916668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223080, 37.299747, 32.088028>,  <41.501972, 37.274239, 32.373631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223080, 37.299747, 32.088028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710176, 0.196992, -0.675902,
		0.097551, -0.978329, -0.182636,
		-0.697233, 0.063769, -0.714003,
		41.013908, 37.318878, 31.873827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008888, 37.605320, 32.889763>,  <41.501972, 37.274239, 32.373631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008888, 37.605320, 32.889763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677757, 37.573048, 33.111820>,  <41.479076, 37.553684, 33.245056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677757, 37.573048, 33.111820>,  <42.008888, 37.605320, 32.889763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677757, 37.573048, 33.111820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416667, 0.574170, 0.704781,
		-0.375610, 0.814751, -0.441699,
		-0.827832, -0.080682, 0.555144,
		41.429409, 37.548843, 33.278362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496490, 37.052013, 33.148792>,  <42.008888, 37.605320, 32.889763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496490, 37.052013, 33.148792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347530, 37.127632, 33.512238>,  <41.258152, 37.173004, 33.730305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347530, 37.127632, 33.512238>,  <41.496490, 37.052013, 33.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347530, 37.127632, 33.512238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401907, -0.849619, 0.341494,
		0.836533, 0.492351, 0.240422,
		-0.372402, 0.189044, 0.908614,
		41.235809, 37.184345, 33.784821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000256, 37.261116, 33.562584>,  <41.496490, 37.052013, 33.148792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000256, 37.261116, 33.562584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738895, 36.985893, 33.688854>,  <41.582081, 36.820759, 33.764618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738895, 36.985893, 33.688854>,  <42.000256, 37.261116, 33.562584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738895, 36.985893, 33.688854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741580, -0.665547, 0.084300,
		0.152098, 0.289183, 0.945113,
		-0.653396, -0.688055, 0.315680,
		41.542877, 36.779476, 33.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083435, 36.993668, 34.273472>,  <42.000256, 37.261116, 33.562584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083435, 36.993668, 34.273472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928410, 36.686951, 34.068798>,  <41.835392, 36.502922, 33.945992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928410, 36.686951, 34.068798>,  <42.083435, 36.993668, 34.273472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928410, 36.686951, 34.068798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859194, -0.501603, 0.100897,
		-0.334031, -0.400533, 0.853227,
		-0.387568, -0.766790, -0.511687,
		41.812138, 36.456913, 33.915291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963634, 36.199337, 34.370777>,  <42.083435, 36.993668, 34.273472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963634, 36.199337, 34.370777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174370, 35.921307, 34.175098>,  <42.300812, 35.754490, 34.057690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174370, 35.921307, 34.175098>,  <41.963634, 36.199337, 34.370777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174370, 35.921307, 34.175098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774231, 0.154946, 0.613643,
		-0.350728, -0.702042, 0.619779,
		0.526836, -0.695074, -0.489199,
		42.332420, 35.712784, 34.028339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204372, 35.623486, 34.747379>,  <41.963634, 36.199337, 34.370777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204372, 35.623486, 34.747379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452900, 35.699493, 34.443314>,  <42.602016, 35.745098, 34.260876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452900, 35.699493, 34.443314>,  <42.204372, 35.623486, 34.747379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452900, 35.699493, 34.443314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781783, -0.085135, 0.617711,
		0.052664, -0.978082, -0.201453,
		0.621323, 0.190024, -0.760164,
		42.639297, 35.756500, 34.215263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636795, 35.139378, 34.745831>,  <42.204372, 35.623486, 34.747379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636795, 35.139378, 34.745831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855389, 35.427563, 34.575050>,  <42.986546, 35.600475, 34.472584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855389, 35.427563, 34.575050>,  <42.636795, 35.139378, 34.745831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855389, 35.427563, 34.575050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747768, -0.190228, 0.636126,
		0.377087, -0.666894, -0.642695,
		0.546487, 0.720462, -0.426950,
		43.019337, 35.643700, 34.446964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237186, 34.894520, 34.526394>,  <42.636795, 35.139378, 34.745831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237186, 34.894520, 34.526394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295361, 35.271294, 34.647469>,  <43.330265, 35.497356, 34.720112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295361, 35.271294, 34.647469>,  <43.237186, 34.894520, 34.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295361, 35.271294, 34.647469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614672, -0.325751, 0.718376,
		0.775259, 0.081574, -0.626354,
		0.145434, 0.941930, 0.302683,
		43.338989, 35.553871, 34.738274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885746, 34.996758, 34.626877>,  <43.237186, 34.894520, 34.526394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885746, 34.996758, 34.626877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705456, 35.238281, 34.889866>,  <43.597282, 35.383194, 35.047657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705456, 35.238281, 34.889866>,  <43.885746, 34.996758, 34.626877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705456, 35.238281, 34.889866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553410, -0.388899, 0.736543,
		0.700418, 0.695827, -0.158866,
		-0.450723, 0.603806, 0.657470,
		43.570240, 35.419422, 35.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168053, 35.180794, 35.280029>,  <43.885746, 34.996758, 34.626877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168053, 35.180794, 35.280029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460129, 35.100601, 35.541298>,  <44.635376, 35.052486, 35.698059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460129, 35.100601, 35.541298>,  <44.168053, 35.180794, 35.280029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460129, 35.100601, 35.541298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332958, 0.939198, -0.083942,
		-0.596625, 0.278771, 0.752546,
		0.730190, -0.200485, 0.653168,
		44.679184, 35.040455, 35.737247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347069, 35.856098, 35.521881>,  <44.168053, 35.180794, 35.280029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347069, 35.856098, 35.521881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613075, 35.611462, 35.693325>,  <44.772678, 35.464680, 35.796192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613075, 35.611462, 35.693325>,  <44.347069, 35.856098, 35.521881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613075, 35.611462, 35.693325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628621, 0.768257, 0.120903,
		-0.403227, 0.189031, 0.895363,
		0.665015, -0.611595, 0.428611,
		44.812580, 35.427982, 35.821907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680912, 35.953110, 35.585224>,  <44.347069, 35.856098, 35.521881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680912, 35.953110, 35.585224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908569, 36.171806, 35.339577>,  <44.045162, 36.303024, 35.192188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908569, 36.171806, 35.339577>,  <43.680912, 35.953110, 35.585224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908569, 36.171806, 35.339577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264683, 0.828961, 0.492714,
		0.778471, -0.117877, 0.616512,
		0.569144, 0.546744, -0.614122,
		44.079311, 36.335831, 35.155338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184853, 36.446285, 35.945644>,  <43.680912, 35.953110, 35.585224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184853, 36.446285, 35.945644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055916, 36.597218, 35.598377>,  <43.978554, 36.687775, 35.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055916, 36.597218, 35.598377>,  <44.184853, 36.446285, 35.945644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055916, 36.597218, 35.598377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402461, 0.775482, 0.486471,
		0.856810, 0.506213, -0.098107,
		-0.322338, 0.377329, -0.868171,
		43.959213, 36.710415, 35.337925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877136, 36.309319, 36.004482>,  <44.184853, 36.446285, 35.945644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877136, 36.309319, 36.004482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738026, 36.037994, 36.263386>,  <44.654560, 35.875198, 36.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738026, 36.037994, 36.263386>,  <44.877136, 36.309319, 36.004482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738026, 36.037994, 36.263386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708360, 0.642362, 0.292571,
		-0.614228, -0.356743, -0.703888,
		-0.347778, -0.678311, 0.647259,
		44.633694, 35.834499, 36.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585346, 36.169724, 36.028412>,  <44.877136, 36.309319, 36.004482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585346, 36.169724, 36.028412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848278, 36.183712, 35.727295>,  <46.006039, 36.192104, 35.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848278, 36.183712, 35.727295>,  <45.585346, 36.169724, 36.028412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848278, 36.183712, 35.727295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007560, -0.998567, -0.052987,
		-0.753565, 0.040521, -0.656123,
		0.657330, 0.034969, -0.752792,
		46.045475, 36.194202, 35.501457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393959, 35.743382, 35.388687>,  <45.585346, 36.169724, 36.028412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393959, 35.743382, 35.388687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788548, 35.776962, 35.445007>,  <46.025299, 35.797112, 35.478798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788548, 35.776962, 35.445007>,  <45.393959, 35.743382, 35.388687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788548, 35.776962, 35.445007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075989, -0.995238, 0.061048,
		0.145254, -0.049523, -0.988154,
		0.986472, 0.083956, 0.140799,
		46.084488, 35.802151, 35.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765640, 35.505058, 34.833603>,  <45.393959, 35.743382, 35.388687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765640, 35.505058, 34.833603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925755, 35.484421, 35.199577>,  <46.021824, 35.472038, 35.419163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925755, 35.484421, 35.199577>,  <45.765640, 35.505058, 34.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925755, 35.484421, 35.199577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020663, -0.997652, -0.065300,
		0.916156, 0.045045, -0.398283,
		0.400289, -0.051595, 0.914935,
		46.045841, 35.468941, 35.474056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422287, 35.187359, 34.889572>,  <45.765640, 35.505058, 34.833603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422287, 35.187359, 34.889572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209949, 35.114357, 35.220608>,  <46.082546, 35.070557, 35.419228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209949, 35.114357, 35.220608>,  <46.422287, 35.187359, 34.889572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209949, 35.114357, 35.220608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021407, -0.973337, -0.228378,
		0.847202, -0.138948, 0.512779,
		-0.530839, -0.182506, 0.827588,
		46.050697, 35.059605, 35.468884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.030884, 35.573959, 34.891510>,  <46.422287, 35.187359, 34.889572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.030884, 35.573959, 34.891510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073212, 35.915005, 35.096199>,  <47.098610, 36.119633, 35.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073212, 35.915005, 35.096199>,  <47.030884, 35.573959, 34.891510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073212, 35.915005, 35.096199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033090, 0.511307, -0.858761,
		-0.993834, 0.107809, 0.025895,
		0.105823, 0.852609, 0.511722,
		47.104958, 36.170788, 35.249714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122585, 34.809723, 34.978565>,  <47.030884, 35.573959, 34.891510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122585, 34.809723, 34.978565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332371, 34.725315, 35.308514>,  <47.458241, 34.674671, 35.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332371, 34.725315, 35.308514>,  <47.122585, 34.809723, 34.978565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332371, 34.725315, 35.308514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826141, 0.360500, -0.433048,
		-0.205984, 0.908576, 0.363402,
		0.524464, -0.211020, 0.824869,
		47.489712, 34.662010, 35.555973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775841, 35.062805, 34.781487>,  <47.122585, 34.809723, 34.978565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775841, 35.062805, 34.781487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840641, 34.971962, 35.165607>,  <47.879520, 34.917458, 35.396080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840641, 34.971962, 35.165607>,  <47.775841, 35.062805, 34.781487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.840641, 34.971962, 35.165607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958732, 0.266638, -0.098682,
		-0.233642, 0.936658, 0.260928,
		0.162005, -0.227103, 0.960301,
		47.889244, 34.903831, 35.453697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.525433, 38.800961, 23.561449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235767, 38.606632, 23.757227>,  <32.061966, 38.490036, 23.874693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235767, 38.606632, 23.757227>,  <32.525433, 38.800961, 23.561449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235767, 38.606632, 23.757227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689459, -0.494489, 0.529271,
		-0.015107, 0.720733, 0.693048,
		-0.724167, -0.485824, 0.489445,
		32.018517, 38.460884, 23.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804657, 38.885250, 24.202862>,  <32.525433, 38.800961, 23.561449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804657, 38.885250, 24.202862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.528820, 38.597469, 24.235985>,  <32.363319, 38.424801, 24.255857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.528820, 38.597469, 24.235985>,  <32.804657, 38.885250, 24.202862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528820, 38.597469, 24.235985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612978, -0.518969, 0.595759,
		-0.385645, 0.461588, 0.798883,
		-0.689591, -0.719450, 0.082806,
		32.321941, 38.381634, 24.260826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761036, 38.755116, 24.882660>,  <32.804657, 38.885250, 24.202862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761036, 38.755116, 24.882660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.617538, 38.425697, 24.706898>,  <32.531441, 38.228046, 24.601440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.617538, 38.425697, 24.706898>,  <32.761036, 38.755116, 24.882660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617538, 38.425697, 24.706898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574088, -0.565847, 0.591811,
		-0.736018, -0.039948, 0.675782,
		-0.358748, -0.823542, -0.439407,
		32.509914, 38.178635, 24.575075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341003, 38.386913, 25.392977>,  <32.761036, 38.755116, 24.882660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341003, 38.386913, 25.392977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.468296, 38.130562, 25.113548>,  <32.544674, 37.976749, 24.945892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.468296, 38.130562, 25.113548>,  <32.341003, 38.386913, 25.392977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468296, 38.130562, 25.113548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351571, -0.604551, 0.714784,
		-0.880412, -0.473065, 0.032926,
		0.318234, -0.640880, -0.698570,
		32.563766, 37.938297, 24.903976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270348, 37.758202, 25.777481>,  <32.341003, 38.386913, 25.392977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270348, 37.758202, 25.777481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.509487, 37.669178, 25.469442>,  <32.652969, 37.615765, 25.284618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.509487, 37.669178, 25.469442>,  <32.270348, 37.758202, 25.777481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509487, 37.669178, 25.469442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554657, -0.578735, 0.597848,
		-0.578735, -0.784561, -0.222554,
		-0.597848, 0.222554, 0.770096,
		32.688843, 37.602413, 25.238413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390320, 37.045444, 25.797119>,  <32.270348, 37.758202, 25.777481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390320, 37.045444, 25.797119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686249, 37.191513, 25.571089>,  <32.863804, 37.279156, 25.435471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686249, 37.191513, 25.571089>,  <32.390320, 37.045444, 25.797119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686249, 37.191513, 25.571089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656237, -0.576899, 0.486353,
		-0.148388, -0.730639, -0.666444,
		0.739820, 0.365176, -0.565078,
		32.908195, 37.301067, 25.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728447, 36.474636, 25.430624>,  <32.390320, 37.045444, 25.797119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728447, 36.474636, 25.430624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997971, 36.770191, 25.428638>,  <33.159683, 36.947525, 25.427448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997971, 36.770191, 25.428638>,  <32.728447, 36.474636, 25.430624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997971, 36.770191, 25.428638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617600, -0.559488, 0.552759,
		0.405652, -0.375518, -0.833326,
		0.673807, 0.738891, -0.004962,
		33.200111, 36.991859, 25.427151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459846, 36.289440, 25.074966>,  <32.728447, 36.474636, 25.430624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459846, 36.289440, 25.074966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516693, 36.576118, 25.348068>,  <33.550800, 36.748123, 25.511929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516693, 36.576118, 25.348068>,  <33.459846, 36.289440, 25.074966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516693, 36.576118, 25.348068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808302, -0.482164, 0.337883,
		0.571359, 0.503852, -0.647829,
		0.142117, 0.716694, 0.682754,
		33.559330, 36.791126, 25.552895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110783, 36.392078, 24.965555>,  <33.459846, 36.289440, 25.074966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110783, 36.392078, 24.965555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062672, 36.550385, 25.329731>,  <34.033806, 36.645367, 25.548237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062672, 36.550385, 25.329731>,  <34.110783, 36.392078, 24.965555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062672, 36.550385, 25.329731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852160, -0.429308, 0.299196,
		0.509271, 0.811827, -0.285620,
		-0.120277, 0.395766, 0.910441,
		34.026588, 36.669113, 25.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724503, 36.515953, 25.265831>,  <34.110783, 36.392078, 24.965555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724503, 36.515953, 25.265831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511822, 36.563217, 25.601292>,  <34.384212, 36.591576, 25.802568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511822, 36.563217, 25.601292>,  <34.724503, 36.515953, 25.265831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511822, 36.563217, 25.601292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737822, -0.421557, 0.527170,
		0.415829, 0.899071, 0.136962,
		-0.531700, 0.118159, 0.838650,
		34.352310, 36.598663, 25.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075882, 36.943439, 25.763391>,  <34.724503, 36.515953, 25.265831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075882, 36.943439, 25.763391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838051, 36.711308, 25.985994>,  <34.695354, 36.572029, 26.119556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838051, 36.711308, 25.985994>,  <35.075882, 36.943439, 25.763391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838051, 36.711308, 25.985994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789312, -0.289411, 0.541505,
		-0.153190, 0.761225, 0.630135,
		-0.594575, -0.580326, 0.556509,
		34.659679, 36.537209, 26.152946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140457, 37.156445, 26.424349>,  <35.075882, 36.943439, 25.763391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140457, 37.156445, 26.424349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005352, 36.781879, 26.462404>,  <34.924290, 36.557140, 26.485237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005352, 36.781879, 26.462404>,  <35.140457, 37.156445, 26.424349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005352, 36.781879, 26.462404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764879, -0.214163, 0.607531,
		-0.548524, 0.277970, 0.788578,
		-0.337760, -0.936412, 0.095140,
		34.904022, 36.500957, 26.490946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282619, 37.001686, 27.074018>,  <35.140457, 37.156445, 26.424349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282619, 37.001686, 27.074018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223991, 36.636047, 26.922783>,  <35.188816, 36.416664, 26.832043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223991, 36.636047, 26.922783>,  <35.282619, 37.001686, 27.074018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223991, 36.636047, 26.922783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685965, -0.369309, 0.626947,
		-0.712719, -0.167462, 0.681167,
		-0.146571, -0.914094, -0.378087,
		35.180019, 36.361820, 26.809357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155190, 36.598862, 27.652897>,  <35.282619, 37.001686, 27.074018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155190, 36.598862, 27.652897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282593, 36.379406, 27.343691>,  <35.359035, 36.247734, 27.158167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282593, 36.379406, 27.343691>,  <35.155190, 36.598862, 27.652897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282593, 36.379406, 27.343691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834443, -0.224621, 0.503240,
		-0.449732, -0.805320, 0.386264,
		0.318506, -0.548639, -0.773013,
		35.378143, 36.214813, 27.111788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291351, 36.004391, 28.003508>,  <35.155190, 36.598862, 27.652897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291351, 36.004391, 28.003508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473293, 35.982849, 27.647932>,  <35.582458, 35.969925, 27.434587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473293, 35.982849, 27.647932>,  <35.291351, 36.004391, 28.003508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473293, 35.982849, 27.647932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751700, -0.512038, 0.415649,
		-0.477553, -0.857273, -0.192422,
		0.454852, -0.053851, -0.888938,
		35.609749, 35.966694, 27.381250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431393, 35.370350, 27.985394>,  <35.291351, 36.004391, 28.003508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431393, 35.370350, 27.985394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676201, 35.522812, 27.708223>,  <35.823086, 35.614288, 27.541922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676201, 35.522812, 27.708223>,  <35.431393, 35.370350, 27.985394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676201, 35.522812, 27.708223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763682, -0.512486, 0.392617,
		-0.205465, -0.769465, -0.604737,
		0.612024, 0.381158, -0.692925,
		35.859810, 35.637157, 27.500345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904266, 34.818928, 27.732796>,  <35.431393, 35.370350, 27.985394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904266, 34.818928, 27.732796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098652, 35.142559, 27.600594>,  <36.215282, 35.336739, 27.521273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098652, 35.142559, 27.600594>,  <35.904266, 34.818928, 27.732796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098652, 35.142559, 27.600594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866572, -0.396934, 0.302484,
		0.113544, -0.433403, -0.894019,
		0.485964, 0.809076, -0.330505,
		36.244442, 35.385281, 27.501442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526886, 34.562878, 27.348196>,  <35.904266, 34.818928, 27.732796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526886, 34.562878, 27.348196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566555, 34.948677, 27.446098>,  <36.590359, 35.180157, 27.504841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566555, 34.948677, 27.446098>,  <36.526886, 34.562878, 27.348196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566555, 34.948677, 27.446098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878528, -0.200377, 0.433632,
		0.467282, 0.172019, -0.867212,
		0.099177, 0.964499, 0.244757,
		36.596310, 35.238026, 27.519526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200855, 34.687180, 27.099890>,  <36.526886, 34.562878, 27.348196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200855, 34.687180, 27.099890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.094147, 34.963337, 27.368870>,  <37.030121, 35.129032, 27.530258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.094147, 34.963337, 27.368870>,  <37.200855, 34.687180, 27.099890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094147, 34.963337, 27.368870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880297, -0.109467, 0.461622,
		0.392312, 0.715104, -0.578548,
		-0.266776, 0.690394, 0.672449,
		37.014114, 35.170456, 27.570604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801117, 35.155018, 27.138887>,  <37.200855, 34.687180, 27.099890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801117, 35.155018, 27.138887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596195, 35.222023, 27.475811>,  <37.473244, 35.262226, 27.677965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596195, 35.222023, 27.475811>,  <37.801117, 35.155018, 27.138887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596195, 35.222023, 27.475811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858543, 0.075634, 0.507132,
		0.021244, 0.982965, -0.182563,
		-0.512301, 0.167512, 0.842311,
		37.442505, 35.272278, 27.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071663, 35.813629, 27.362940>,  <37.801117, 35.155018, 27.138887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071663, 35.813629, 27.362940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902714, 35.603569, 27.658457>,  <37.801342, 35.477531, 27.835766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902714, 35.603569, 27.658457>,  <38.071663, 35.813629, 27.362940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902714, 35.603569, 27.658457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899944, -0.145704, 0.410940,
		-0.108162, 0.838442, 0.534151,
		-0.422377, -0.525153, 0.738791,
		37.776001, 35.446022, 27.880095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222828, 36.038544, 28.035351>,  <38.071663, 35.813629, 27.362940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222828, 36.038544, 28.035351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167759, 35.649479, 28.110155>,  <38.134716, 35.416039, 28.155039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167759, 35.649479, 28.110155>,  <38.222828, 36.038544, 28.035351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167759, 35.649479, 28.110155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816409, -0.004530, 0.577456,
		-0.560823, 0.232180, 0.794714,
		-0.137674, -0.972662, 0.187013,
		38.126457, 35.357681, 28.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925900, 36.196033, 28.239180>,  <38.222828, 36.038544, 28.035351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925900, 36.196033, 28.239180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239109, 36.209469, 27.990747>,  <39.427036, 36.217529, 27.841688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239109, 36.209469, 27.990747>,  <38.925900, 36.196033, 28.239180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239109, 36.209469, 27.990747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468131, 0.689294, -0.552925,
		0.409536, 0.723703, 0.555459,
		0.783028, 0.033585, -0.621079,
		39.474018, 36.219543, 27.804424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107140, 36.913380, 28.176050>,  <38.925900, 36.196033, 28.239180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107140, 36.913380, 28.176050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266399, 36.734982, 27.855410>,  <39.361958, 36.627941, 27.663025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266399, 36.734982, 27.855410>,  <39.107140, 36.913380, 28.176050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266399, 36.734982, 27.855410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407769, 0.696716, -0.590178,
		0.821704, 0.561849, 0.095538,
		0.398154, -0.445995, -0.801600,
		39.385845, 36.601185, 27.614929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038139, 37.373970, 27.627319>,  <39.107140, 36.913380, 28.176050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038139, 37.373970, 27.627319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190990, 37.087364, 27.393881>,  <39.282703, 36.915401, 27.253819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190990, 37.087364, 27.393881>,  <39.038139, 37.373970, 27.627319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190990, 37.087364, 27.393881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229416, 0.538198, -0.810994,
		0.895178, 0.443792, 0.041283,
		0.382131, -0.716513, -0.583596,
		39.305630, 36.872410, 27.218801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699284, 37.634811, 27.108637>,  <39.038139, 37.373970, 27.627319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699284, 37.634811, 27.108637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436333, 37.349255, 27.012117>,  <39.278564, 37.177921, 26.954206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436333, 37.349255, 27.012117>,  <39.699284, 37.634811, 27.108637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436333, 37.349255, 27.012117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391999, 0.597429, -0.699583,
		0.643583, -0.365297, -0.672576,
		-0.657372, -0.713889, -0.241299,
		39.239120, 37.135090, 26.939728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795258, 37.621758, 26.391584>,  <39.699284, 37.634811, 27.108637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795258, 37.621758, 26.391584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435184, 37.466686, 26.470953>,  <39.219139, 37.373642, 26.518574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435184, 37.466686, 26.470953>,  <39.795258, 37.621758, 26.391584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435184, 37.466686, 26.470953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419673, 0.650443, -0.633086,
		0.116372, -0.653168, -0.748218,
		-0.900184, -0.387680, 0.198424,
		39.165131, 37.350384, 26.530479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353180, 37.483711, 25.828682>,  <39.795258, 37.621758, 26.391584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353180, 37.483711, 25.828682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061531, 37.496834, 26.102119>,  <38.886539, 37.504707, 26.266182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061531, 37.496834, 26.102119>,  <39.353180, 37.483711, 25.828682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061531, 37.496834, 26.102119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603283, 0.440823, -0.664624,
		-0.323151, -0.896994, -0.301621,
		-0.729125, 0.032812, 0.683593,
		38.842793, 37.506676, 26.307198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749325, 37.364910, 25.481724>,  <39.353180, 37.483711, 25.828682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749325, 37.364910, 25.481724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598156, 37.511150, 25.821962>,  <38.507454, 37.598892, 26.026106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598156, 37.511150, 25.821962>,  <38.749325, 37.364910, 25.481724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598156, 37.511150, 25.821962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738330, 0.435311, -0.515144,
		-0.558610, -0.822704, 0.105420,
		-0.377920, 0.365599, 0.850596,
		38.484779, 37.620831, 26.077141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981091, 37.184204, 25.493723>,  <38.749325, 37.364910, 25.481724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981091, 37.184204, 25.493723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044693, 37.502102, 25.728020>,  <38.082855, 37.692841, 25.868597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044693, 37.502102, 25.728020>,  <37.981091, 37.184204, 25.493723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044693, 37.502102, 25.728020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755596, 0.479821, -0.445922,
		-0.635447, -0.371680, 0.676802,
		0.159004, 0.794748, 0.585741,
		38.092396, 37.740528, 25.903742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389023, 37.389225, 25.827145>,  <37.981091, 37.184204, 25.493723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389023, 37.389225, 25.827145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603775, 37.725323, 25.857454>,  <37.732628, 37.926983, 25.875639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603775, 37.725323, 25.857454>,  <37.389023, 37.389225, 25.827145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603775, 37.725323, 25.857454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742965, 0.513445, -0.429392,
		-0.399700, 0.174236, 0.899934,
		0.536882, 0.840248, 0.075772,
		37.764839, 37.977398, 25.880186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898029, 37.938107, 25.938236>,  <37.389023, 37.389225, 25.827145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898029, 37.938107, 25.938236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213531, 38.167118, 25.848726>,  <37.402832, 38.304527, 25.795019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213531, 38.167118, 25.848726>,  <36.898029, 37.938107, 25.938236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213531, 38.167118, 25.848726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572575, 0.551823, -0.606340,
		-0.223664, 0.606381, 0.763070,
		0.788753, 0.572532, -0.223776,
		37.450157, 38.338879, 25.781593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716301, 38.692101, 25.974232>,  <36.898029, 37.938107, 25.938236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716301, 38.692101, 25.974232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025436, 38.652245, 25.723539>,  <37.210918, 38.628330, 25.573124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025436, 38.652245, 25.723539>,  <36.716301, 38.692101, 25.974232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025436, 38.652245, 25.723539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507190, 0.496594, -0.704381,
		0.381415, 0.862245, 0.333252,
		0.772840, -0.099639, -0.626731,
		37.257290, 38.622353, 25.535521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965443, 39.394127, 25.815777>,  <36.716301, 38.692101, 25.974232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965443, 39.394127, 25.815777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088593, 39.150295, 25.523579>,  <37.162483, 39.003994, 25.348259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088593, 39.150295, 25.523579>,  <36.965443, 39.394127, 25.815777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088593, 39.150295, 25.523579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380308, 0.624935, -0.681779,
		0.872111, 0.487716, -0.039427,
		0.307875, -0.609581, -0.730495,
		37.180954, 38.967422, 25.304430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137074, 39.828274, 25.205654>,  <36.965443, 39.394127, 25.815777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137074, 39.828274, 25.205654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104942, 39.451168, 25.076199>,  <37.085663, 39.224903, 24.998526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104942, 39.451168, 25.076199>,  <37.137074, 39.828274, 25.205654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104942, 39.451168, 25.076199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269578, 0.333138, -0.903519,
		0.959622, 0.014668, -0.280909,
		-0.080329, -0.942764, -0.323641,
		37.080845, 39.168339, 24.979107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468670, 39.922161, 24.623833>,  <37.137074, 39.828274, 25.205654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468670, 39.922161, 24.623833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214142, 39.613598, 24.621944>,  <37.061424, 39.428459, 24.620811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214142, 39.613598, 24.621944>,  <37.468670, 39.922161, 24.623833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214142, 39.613598, 24.621944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522552, 0.435530, -0.732975,
		0.567480, -0.463942, -0.680239,
		-0.636323, -0.771409, -0.004721,
		37.023243, 39.382175, 24.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325115, 39.856133, 23.930143>,  <37.468670, 39.922161, 24.623833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325115, 39.856133, 23.930143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020058, 39.676651, 24.116495>,  <36.837025, 39.568962, 24.228306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020058, 39.676651, 24.116495>,  <37.325115, 39.856133, 23.930143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020058, 39.676651, 24.116495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639581, 0.415666, -0.646651,
		0.096503, -0.791131, -0.603986,
		-0.762642, -0.448702, 0.465880,
		36.791264, 39.542042, 24.256260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851608, 39.827087, 23.406857>,  <37.325115, 39.856133, 23.930143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851608, 39.827087, 23.406857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631447, 39.697201, 23.714521>,  <36.499352, 39.619267, 23.899120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631447, 39.697201, 23.714521>,  <36.851608, 39.827087, 23.406857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631447, 39.697201, 23.714521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827658, 0.091143, -0.553783,
		0.109722, -0.941408, -0.318924,
		-0.550403, -0.324722, 0.769163,
		36.466328, 39.599785, 23.945271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445145, 39.283710, 23.059492>,  <36.851608, 39.827087, 23.406857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445145, 39.283710, 23.059492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271038, 39.415340, 23.394693>,  <36.166573, 39.494320, 23.595814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271038, 39.415340, 23.394693>,  <36.445145, 39.283710, 23.059492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271038, 39.415340, 23.394693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878428, 0.048702, -0.475387,
		-0.197251, -0.943047, 0.267871,
		-0.435266, 0.329076, 0.838005,
		36.140457, 39.514061, 23.646095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861263, 38.773483, 23.146004>,  <36.445145, 39.283710, 23.059492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861263, 38.773483, 23.146004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797035, 39.116161, 23.342081>,  <35.758499, 39.321770, 23.459726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797035, 39.116161, 23.342081>,  <35.861263, 38.773483, 23.146004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797035, 39.116161, 23.342081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854125, 0.128290, -0.503996,
		-0.494658, -0.499613, 0.711126,
		-0.160573, 0.856696, 0.490192,
		35.748863, 39.373169, 23.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.173000, 38.646217, 23.365850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216156, 39.033493, 23.456161>,  <35.242050, 39.265858, 23.510349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216156, 39.033493, 23.456161>,  <35.173000, 38.646217, 23.365850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216156, 39.033493, 23.456161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938498, 0.174117, -0.298167,
		-0.327993, -0.179722, 0.927427,
		0.107894, 0.968185, 0.225778,
		35.248524, 39.323948, 23.523895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718292, 38.731697, 23.773197>,  <35.173000, 38.646217, 23.365850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718292, 38.731697, 23.773197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806705, 39.075912, 23.589624>,  <34.859753, 39.282440, 23.479481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806705, 39.075912, 23.589624>,  <34.718292, 38.731697, 23.773197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806705, 39.075912, 23.589624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966045, 0.128628, -0.224080,
		-0.133798, 0.492879, 0.859749,
		0.221032, 0.860537, -0.458933,
		34.873016, 39.334072, 23.451944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993660, 39.122234, 23.768551>,  <34.718292, 38.731697, 23.773197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993660, 39.122234, 23.768551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218987, 39.364388, 23.543629>,  <34.354183, 39.509678, 23.408674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218987, 39.364388, 23.543629>,  <33.993660, 39.122234, 23.768551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218987, 39.364388, 23.543629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826202, 0.419537, -0.376004,
		0.008282, 0.676387, 0.736500,
		0.563314, 0.605383, -0.562307,
		34.387981, 39.546001, 23.374937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670090, 39.809296, 23.811975>,  <33.993660, 39.122234, 23.768551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670090, 39.809296, 23.811975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859371, 39.794800, 23.459894>,  <33.972942, 39.786102, 23.248646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859371, 39.794800, 23.459894>,  <33.670090, 39.809296, 23.811975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859371, 39.794800, 23.459894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743567, 0.519380, -0.421133,
		0.472422, 0.853775, 0.218829,
		0.473208, -0.036238, -0.880205,
		34.001335, 39.783928, 23.195833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670643, 40.463306, 23.544535>,  <33.670090, 39.809296, 23.811975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670643, 40.463306, 23.544535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700829, 40.207153, 23.238800>,  <33.718941, 40.053459, 23.055359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700829, 40.207153, 23.238800>,  <33.670643, 40.463306, 23.544535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700829, 40.207153, 23.238800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730447, 0.486294, -0.479547,
		0.678788, 0.594494, -0.431073,
		0.075460, -0.640387, -0.764337,
		33.723465, 40.015038, 23.009499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527260, 40.885124, 22.991632>,  <33.670643, 40.463306, 23.544535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527260, 40.885124, 22.991632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489243, 40.514648, 22.845680>,  <33.466434, 40.292362, 22.758108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489243, 40.514648, 22.845680>,  <33.527260, 40.885124, 22.991632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489243, 40.514648, 22.845680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656043, 0.333957, -0.676816,
		0.748715, 0.175052, -0.639361,
		-0.095041, -0.926191, -0.364881,
		33.460732, 40.236790, 22.736216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472706, 41.010101, 22.269823>,  <33.527260, 40.885124, 22.991632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472706, 41.010101, 22.269823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326855, 40.639847, 22.310328>,  <33.239346, 40.417694, 22.334631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326855, 40.639847, 22.310328>,  <33.472706, 41.010101, 22.269823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326855, 40.639847, 22.310328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775701, 0.241790, -0.582946,
		0.515109, -0.291105, -0.806176,
		-0.364624, -0.925633, 0.101262,
		33.217468, 40.362156, 22.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408752, 40.610901, 21.561674>,  <33.472706, 41.010101, 22.269823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408752, 40.610901, 21.561674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159142, 40.472015, 21.841682>,  <33.009377, 40.388683, 22.009687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159142, 40.472015, 21.841682>,  <33.408752, 40.610901, 21.561674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159142, 40.472015, 21.841682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781175, 0.255649, -0.569569,
		0.018806, -0.902266, -0.430770,
		-0.624028, -0.347218, 0.700020,
		32.971931, 40.367851, 22.051689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035759, 40.175083, 21.216408>,  <33.408752, 40.610901, 21.561674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035759, 40.175083, 21.216408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811142, 40.250530, 21.538673>,  <32.676373, 40.295799, 21.732033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811142, 40.250530, 21.538673>,  <33.035759, 40.175083, 21.216408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811142, 40.250530, 21.538673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784123, 0.189624, -0.590926,
		-0.264232, -0.963569, 0.041418,
		-0.561544, 0.188619, 0.805662,
		32.642677, 40.307114, 21.780373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390789, 39.724529, 21.225697>,  <33.035759, 40.175083, 21.216408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390789, 39.724529, 21.225697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353100, 40.065746, 21.431002>,  <32.330486, 40.270477, 21.554184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353100, 40.065746, 21.431002>,  <32.390789, 39.724529, 21.225697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353100, 40.065746, 21.431002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897667, 0.150132, -0.414313,
		-0.430484, -0.499778, 0.751602,
		-0.094225, 0.853043, 0.513263,
		32.324833, 40.321659, 21.584980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688292, 39.817429, 21.255043>,  <32.390789, 39.724529, 21.225697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688292, 39.817429, 21.255043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769262, 40.178001, 21.408115>,  <31.817844, 40.394344, 21.499958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769262, 40.178001, 21.408115>,  <31.688292, 39.817429, 21.255043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769262, 40.178001, 21.408115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893843, 0.329719, -0.303860,
		-0.400085, -0.280545, 0.872483,
		0.202428, 0.901432, 0.382679,
		31.829990, 40.448433, 21.522919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968681, 40.106766, 21.512356>,  <31.688292, 39.817429, 21.255043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968681, 40.106766, 21.512356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224501, 40.411316, 21.469854>,  <31.377993, 40.594044, 21.444353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224501, 40.411316, 21.469854>,  <30.968681, 40.106766, 21.512356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224501, 40.411316, 21.469854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750880, 0.589055, -0.298653,
		-0.164798, 0.270786, 0.948429,
		0.639547, 0.761373, -0.106253,
		31.416365, 40.639729, 21.437979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706385, 40.603870, 21.838160>,  <30.968681, 40.106766, 21.512356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706385, 40.603870, 21.838160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962585, 40.783905, 21.589262>,  <31.116306, 40.891926, 21.439924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962585, 40.783905, 21.589262>,  <30.706385, 40.603870, 21.838160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962585, 40.783905, 21.589262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725790, 0.619567, -0.298940,
		0.250972, 0.643088, 0.723499,
		0.640501, 0.450083, -0.622242,
		31.154736, 40.918930, 21.402590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510504, 41.268562, 21.780571>,  <30.706385, 40.603870, 21.838160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510504, 41.268562, 21.780571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746214, 41.282234, 21.457687>,  <30.887640, 41.290436, 21.263956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746214, 41.282234, 21.457687>,  <30.510504, 41.268562, 21.780571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746214, 41.282234, 21.457687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645396, 0.620940, -0.444858,
		0.486025, 0.783113, 0.387961,
		0.589274, 0.034176, -0.807210,
		30.922997, 41.292488, 21.215525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424480, 41.962841, 21.524672>,  <30.510504, 41.268562, 21.780571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424480, 41.962841, 21.524672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.566187, 41.769451, 21.204485>,  <30.651211, 41.653416, 21.012373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.566187, 41.769451, 21.204485>,  <30.424480, 41.962841, 21.524672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566187, 41.769451, 21.204485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510401, 0.617276, -0.598716,
		0.783574, 0.620664, -0.028087,
		0.354264, -0.483473, -0.800469,
		30.672466, 41.624409, 20.964344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710060, 42.503258, 20.979492>,  <30.424480, 41.962841, 21.524672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710060, 42.503258, 20.979492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615028, 42.166859, 20.785055>,  <30.558008, 41.965019, 20.668392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615028, 42.166859, 20.785055>,  <30.710060, 42.503258, 20.979492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615028, 42.166859, 20.785055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500179, 0.534895, -0.680961,
		0.832692, 0.081350, -0.547728,
		-0.237581, -0.840993, -0.486093,
		30.543755, 41.914562, 20.639227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773716, 42.730343, 20.366680>,  <30.710060, 42.503258, 20.979492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773716, 42.730343, 20.366680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.538166, 42.408009, 20.341837>,  <30.396835, 42.214607, 20.326931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.538166, 42.408009, 20.341837>,  <30.773716, 42.730343, 20.366680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538166, 42.408009, 20.341837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520296, 0.436774, -0.733839,
		0.618480, -0.399825, -0.676478,
		-0.588875, -0.805834, -0.062109,
		30.361504, 42.166260, 20.323204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601091, 42.763439, 19.681038>,  <30.773716, 42.730343, 20.366680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601091, 42.763439, 19.681038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344872, 42.500771, 19.840279>,  <30.191139, 42.343170, 19.935823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344872, 42.500771, 19.840279>,  <30.601091, 42.763439, 19.681038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344872, 42.500771, 19.840279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681925, 0.248043, -0.688079,
		0.353094, -0.712223, -0.606682,
		-0.640549, -0.656668, 0.398100,
		30.152706, 42.303772, 19.959709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253496, 42.507233, 19.059900>,  <30.601091, 42.763439, 19.681038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253496, 42.507233, 19.059900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002136, 42.411594, 19.355995>,  <29.851320, 42.354210, 19.533651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002136, 42.411594, 19.355995>,  <30.253496, 42.507233, 19.059900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002136, 42.411594, 19.355995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776073, 0.257726, -0.575576,
		-0.053161, -0.936168, -0.347510,
		-0.628398, -0.239095, 0.740236,
		29.813618, 42.339867, 19.578066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733145, 41.981770, 18.778725>,  <30.253496, 42.507233, 19.059900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733145, 41.981770, 18.778725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.600557, 42.175072, 19.102846>,  <29.521006, 42.291054, 19.297319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.600557, 42.175072, 19.102846>,  <29.733145, 41.981770, 18.778725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600557, 42.175072, 19.102846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793428, 0.321930, -0.516559,
		-0.510491, -0.814140, 0.276720,
		-0.331467, 0.483256, 0.810304,
		29.501118, 42.320049, 19.345938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032957, 41.783405, 18.810234>,  <29.733145, 41.981770, 18.778725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032957, 41.783405, 18.810234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067406, 42.114166, 19.032518>,  <29.088074, 42.312622, 19.165890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067406, 42.114166, 19.032518>,  <29.032957, 41.783405, 18.810234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067406, 42.114166, 19.032518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721991, 0.436159, -0.537117,
		-0.686522, -0.354964, 0.634577,
		0.086119, 0.826902, 0.555713,
		29.093241, 42.362236, 19.199232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301815, 41.941368, 19.025991>,  <29.032957, 41.783405, 18.810234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301815, 41.941368, 19.025991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542276, 42.261017, 19.027765>,  <28.686554, 42.452805, 19.028830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542276, 42.261017, 19.027765>,  <28.301815, 41.941368, 19.025991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542276, 42.261017, 19.027765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746484, 0.563522, -0.353842,
		-0.285262, 0.209403, 0.935295,
		0.601155, 0.799120, 0.004435,
		28.722622, 42.500751, 19.029097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290377, 42.587341, 19.533186>,  <28.301815, 41.941368, 19.025991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290377, 42.587341, 19.533186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.370235, 42.731316, 19.168640>,  <28.418152, 42.817699, 18.949913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.370235, 42.731316, 19.168640>,  <28.290377, 42.587341, 19.533186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370235, 42.731316, 19.168640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819893, 0.570683, 0.045777,
		0.536577, 0.738082, 0.409048,
		0.199649, 0.359939, -0.911364,
		28.430130, 42.839298, 18.895231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570971, 42.479137, 19.412094>,  <28.290377, 42.587341, 19.533186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570971, 42.479137, 19.412094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623398, 42.429089, 19.018715>,  <27.654854, 42.399059, 18.782688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623398, 42.429089, 19.018715>,  <27.570971, 42.479137, 19.412094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623398, 42.429089, 19.018715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064276, 0.988844, -0.134376,
		0.989287, 0.080825, 0.121564,
		0.131069, -0.125122, -0.983446,
		27.662718, 42.391552, 18.723680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383448, 42.301323, 20.141603>,  <27.570971, 42.479137, 19.412094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383448, 42.301323, 20.141603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.028099, 42.125160, 20.193518>,  <26.814890, 42.019463, 20.224667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.028099, 42.125160, 20.193518>,  <27.383448, 42.301323, 20.141603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028099, 42.125160, 20.193518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197898, -0.112222, 0.973777,
		-0.414289, 0.890759, 0.186849,
		-0.888370, -0.440402, 0.129787,
		26.761587, 41.993038, 20.232454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061878, 42.628784, 20.620361>,  <27.383448, 42.301323, 20.141603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061878, 42.628784, 20.620361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935362, 42.249935, 20.598742>,  <26.859451, 42.022625, 20.585770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935362, 42.249935, 20.598742>,  <27.061878, 42.628784, 20.620361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935362, 42.249935, 20.598742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335715, -0.165036, 0.927393,
		-0.887273, 0.275183, 0.370162,
		-0.316293, -0.947121, -0.054049,
		26.840473, 41.965797, 20.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714096, 42.499912, 21.231924>,  <27.061878, 42.628784, 20.620361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714096, 42.499912, 21.231924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739540, 42.118752, 21.113306>,  <26.754807, 41.890057, 21.042135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739540, 42.118752, 21.113306>,  <26.714096, 42.499912, 21.231924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739540, 42.118752, 21.113306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282316, -0.267829, 0.921176,
		-0.957210, -0.142316, 0.251981,
		0.063610, -0.952898, -0.296547,
		26.758623, 41.832882, 21.024342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340584, 42.155605, 21.731367>,  <26.714096, 42.499912, 21.231924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340584, 42.155605, 21.731367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.561348, 41.888958, 21.530960>,  <26.693806, 41.728970, 21.410715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.561348, 41.888958, 21.530960>,  <26.340584, 42.155605, 21.731367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561348, 41.888958, 21.530960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313984, -0.390476, 0.865414,
		-0.772535, -0.634941, -0.006200,
		0.551909, -0.666616, -0.501018,
		26.726921, 41.688972, 21.380655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186131, 41.517567, 22.094076>,  <26.340584, 42.155605, 21.731367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186131, 41.517567, 22.094076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529068, 41.467361, 21.894394>,  <26.734831, 41.437241, 21.774584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529068, 41.467361, 21.894394>,  <26.186131, 41.517567, 22.094076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529068, 41.467361, 21.894394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427862, -0.365411, 0.826686,
		-0.286174, -0.922346, -0.259582,
		0.857344, -0.125511, -0.499208,
		26.786272, 41.429710, 21.744631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535095, 40.925274, 22.400379>,  <26.186131, 41.517567, 22.094076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535095, 40.925274, 22.400379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.826975, 41.100159, 22.190090>,  <27.002102, 41.205090, 22.063917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.826975, 41.100159, 22.190090>,  <26.535095, 40.925274, 22.400379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826975, 41.100159, 22.190090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678988, -0.372562, 0.632593,
		0.080714, -0.818561, -0.568721,
		0.729699, 0.437213, -0.525722,
		27.045885, 41.231323, 22.032373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116789, 40.372406, 22.350449>,  <26.535095, 40.925274, 22.400379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116789, 40.372406, 22.350449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290300, 40.727364, 22.288019>,  <27.394407, 40.940338, 22.250561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290300, 40.727364, 22.288019>,  <27.116789, 40.372406, 22.350449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290300, 40.727364, 22.288019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749068, -0.258908, 0.609807,
		0.500732, -0.381432, -0.777030,
		0.433779, 0.887398, -0.156075,
		27.420435, 40.993584, 22.241198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608713, 40.310246, 21.886198>,  <27.116789, 40.372406, 22.350449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608713, 40.310246, 21.886198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.718121, 40.644527, 22.076687>,  <27.783766, 40.845097, 22.190981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.718121, 40.644527, 22.076687>,  <27.608713, 40.310246, 21.886198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718121, 40.644527, 22.076687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799821, -0.472626, 0.370014,
		0.534297, 0.279686, -0.797686,
		0.273519, 0.835703, 0.476222,
		27.800177, 40.895237, 22.219553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345057, 40.517170, 21.635576>,  <27.608713, 40.310246, 21.886198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345057, 40.517170, 21.635576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299877, 40.697243, 21.989883>,  <28.272770, 40.805286, 22.202467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299877, 40.697243, 21.989883>,  <28.345057, 40.517170, 21.635576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299877, 40.697243, 21.989883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878432, -0.371357, 0.300752,
		0.464328, 0.812054, -0.353507,
		-0.112949, 0.450179, 0.885766,
		28.265993, 40.832298, 22.255613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965445, 40.905788, 21.686886>,  <28.345057, 40.517170, 21.635576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965445, 40.905788, 21.686886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830688, 40.858925, 22.060575>,  <28.749834, 40.830807, 22.284790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830688, 40.858925, 22.060575>,  <28.965445, 40.905788, 21.686886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830688, 40.858925, 22.060575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909037, -0.298945, 0.290316,
		0.245268, 0.947050, 0.207217,
		-0.336891, -0.117163, 0.934226,
		28.729622, 40.823776, 22.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522943, 41.090969, 22.097807>,  <28.965445, 40.905788, 21.686886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522943, 41.090969, 22.097807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310558, 40.888878, 22.369932>,  <29.183128, 40.767624, 22.533207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310558, 40.888878, 22.369932>,  <29.522943, 41.090969, 22.097807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310558, 40.888878, 22.369932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841620, -0.407986, 0.353870,
		0.098776, 0.760458, 0.641831,
		-0.530961, -0.505224, 0.680315,
		29.151270, 40.737312, 22.574026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834156, 41.220062, 22.850218>,  <29.522943, 41.090969, 22.097807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834156, 41.220062, 22.850218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.635427, 40.872940, 22.846594>,  <29.516190, 40.664665, 22.844419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.635427, 40.872940, 22.846594>,  <29.834156, 41.220062, 22.850218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635427, 40.872940, 22.846594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793521, -0.458472, 0.400161,
		-0.351416, 0.191618, 0.916400,
		-0.496821, -0.867806, -0.009062,
		29.486382, 40.612598, 22.843876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800573, 40.940598, 23.590658>,  <29.834156, 41.220062, 22.850218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800573, 40.940598, 23.590658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.753876, 40.646610, 23.323465>,  <29.725857, 40.470219, 23.163151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.753876, 40.646610, 23.323465>,  <29.800573, 40.940598, 23.590658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753876, 40.646610, 23.323465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712114, -0.530771, 0.459539,
		-0.692290, -0.422029, 0.585343,
		-0.116744, -0.734965, -0.667980,
		29.718853, 40.426121, 23.123072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007030, 40.447693, 24.017828>,  <29.800573, 40.940598, 23.590658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007030, 40.447693, 24.017828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013872, 40.277718, 23.655804>,  <30.017977, 40.175732, 23.438589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013872, 40.277718, 23.655804>,  <30.007030, 40.447693, 24.017828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013872, 40.277718, 23.655804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696446, -0.644422, 0.315727,
		-0.717406, -0.635724, 0.284927,
		0.017102, -0.424941, -0.905060,
		30.019003, 40.150234, 23.384285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015711, 39.752327, 24.048920>,  <30.007030, 40.447693, 24.017828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015711, 39.752327, 24.048920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141760, 39.776630, 23.670078>,  <30.217390, 39.791214, 23.442774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141760, 39.776630, 23.670078>,  <30.015711, 39.752327, 24.048920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141760, 39.776630, 23.670078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597514, -0.788035, 0.148249,
		-0.737343, -0.612624, -0.284634,
		0.315123, 0.060762, -0.947104,
		30.236296, 39.794857, 23.385946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829330, 39.140079, 23.765224>,  <30.015711, 39.752327, 24.048920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829330, 39.140079, 23.765224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130463, 39.272842, 23.537865>,  <30.311142, 39.352501, 23.401449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130463, 39.272842, 23.537865>,  <29.829330, 39.140079, 23.765224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130463, 39.272842, 23.537865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538932, -0.806598, 0.242800,
		-0.377884, -0.489117, -0.786109,
		0.752832, 0.331909, -0.568401,
		30.356312, 39.372414, 23.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083590, 38.543480, 23.347603>,  <29.829330, 39.140079, 23.765224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083590, 38.543480, 23.347603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368858, 38.823830, 23.352757>,  <30.540020, 38.992039, 23.355848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368858, 38.823830, 23.352757>,  <30.083590, 38.543480, 23.347603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368858, 38.823830, 23.352757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619047, -0.638323, 0.457521,
		0.328886, -0.318316, -0.889106,
		0.713173, 0.700870, 0.012883,
		30.582809, 39.034092, 23.356621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666327, 38.178497, 23.218298>,  <30.083590, 38.543480, 23.347603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666327, 38.178497, 23.218298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822945, 38.522892, 23.348158>,  <30.916916, 38.729527, 23.426073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822945, 38.522892, 23.348158>,  <30.666327, 38.178497, 23.218298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822945, 38.522892, 23.348158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781822, -0.497339, 0.376044,
		0.485229, 0.106580, -0.867867,
		0.391545, 0.860985, 0.324650,
		30.940409, 38.781189, 23.445553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221584, 38.250668, 22.906498>,  <30.666327, 38.178497, 23.218298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221584, 38.250668, 22.906498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237064, 38.444752, 23.255913>,  <31.246353, 38.561203, 23.465563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237064, 38.444752, 23.255913>,  <31.221584, 38.250668, 22.906498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237064, 38.444752, 23.255913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794993, -0.544569, 0.267265,
		0.605383, 0.684114, -0.406817,
		0.038700, 0.485215, 0.873538,
		31.248674, 38.590317, 23.517975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923265, 38.530277, 23.016237>,  <31.221584, 38.250668, 22.906498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923265, 38.530277, 23.016237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770639, 38.532223, 23.385969>,  <31.679064, 38.533390, 23.607809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770639, 38.532223, 23.385969>,  <31.923265, 38.530277, 23.016237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770639, 38.532223, 23.385969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857465, -0.371585, 0.355919,
		0.345197, 0.928386, 0.137615,
		-0.381565, 0.004862, 0.924329,
		31.656170, 38.533680, 23.663267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.623806, 38.156139, 24.366024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498024, 38.410427, 24.648010>,  <37.422554, 38.563000, 24.817202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498024, 38.410427, 24.648010>,  <37.623806, 38.156139, 24.366024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498024, 38.410427, 24.648010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761566, -0.274388, 0.587136,
		0.566690, 0.721504, -0.397862,
		-0.314452, 0.635723, 0.704966,
		37.403687, 38.601143, 24.859501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266613, 38.459038, 24.780485>,  <37.623806, 38.156139, 24.366024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266613, 38.459038, 24.780485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951294, 38.517792, 25.019489>,  <37.762104, 38.553043, 25.162891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951294, 38.517792, 25.019489>,  <38.266613, 38.459038, 24.780485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951294, 38.517792, 25.019489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561351, -0.225948, 0.796136,
		0.251950, 0.963001, 0.095657,
		-0.788294, 0.146889, 0.597509,
		37.714806, 38.561859, 25.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521683, 38.860832, 25.310831>,  <38.266613, 38.459038, 24.780485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521683, 38.860832, 25.310831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185299, 38.693573, 25.448200>,  <37.983467, 38.593220, 25.530622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185299, 38.693573, 25.448200>,  <38.521683, 38.860832, 25.310831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185299, 38.693573, 25.448200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494503, -0.336256, 0.801497,
		-0.219663, 0.843852, 0.489552,
		-0.840961, -0.418144, 0.343425,
		37.933010, 38.568130, 25.551228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604385, 38.924915, 26.048283>,  <38.521683, 38.860832, 25.310831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604385, 38.924915, 26.048283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328480, 38.640858, 25.991823>,  <38.162937, 38.470425, 25.957947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328480, 38.640858, 25.991823>,  <38.604385, 38.924915, 26.048283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328480, 38.640858, 25.991823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393933, -0.531657, 0.749772,
		-0.607486, 0.461564, 0.646467,
		-0.689767, -0.710140, -0.141149,
		38.121552, 38.427814, 25.949478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214783, 38.775604, 26.680361>,  <38.604385, 38.924915, 26.048283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214783, 38.775604, 26.680361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183243, 38.454399, 26.444071>,  <38.164318, 38.261677, 26.302296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183243, 38.454399, 26.444071>,  <38.214783, 38.775604, 26.680361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183243, 38.454399, 26.444071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400644, -0.568135, 0.718823,
		-0.912835, -0.179992, 0.366519,
		-0.078850, -0.803010, -0.590726,
		38.159588, 38.213497, 26.266853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884731, 38.178719, 27.030485>,  <38.214783, 38.775604, 26.680361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884731, 38.178719, 27.030485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089130, 38.011818, 26.729877>,  <38.211769, 37.911678, 26.549513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089130, 38.011818, 26.729877>,  <37.884731, 38.178719, 27.030485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089130, 38.011818, 26.729877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235936, -0.772625, 0.589393,
		-0.826570, -0.478488, -0.296363,
		0.510995, -0.417252, -0.751521,
		38.242428, 37.886642, 26.504421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958416, 37.440670, 27.222202>,  <37.884731, 38.178719, 27.030485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958416, 37.440670, 27.222202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229416, 37.457153, 26.928455>,  <38.392017, 37.467045, 26.752207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229416, 37.457153, 26.928455>,  <37.958416, 37.440670, 27.222202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229416, 37.457153, 26.928455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524457, -0.727090, 0.443040,
		-0.515694, -0.685304, -0.514215,
		0.677498, 0.041211, -0.734369,
		38.432667, 37.469517, 26.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029259, 36.864311, 26.868538>,  <37.958416, 37.440670, 27.222202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029259, 36.864311, 26.868538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.383221, 37.027809, 26.779209>,  <38.595596, 37.125908, 26.725613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.383221, 37.027809, 26.779209>,  <38.029259, 36.864311, 26.868538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383221, 37.027809, 26.779209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464931, -0.803988, 0.370731,
		-0.028013, -0.431890, -0.901491,
		0.884904, 0.408746, -0.223321,
		38.648693, 37.150433, 26.712214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479702, 36.252335, 26.502897>,  <38.029259, 36.864311, 26.868538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479702, 36.252335, 26.502897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709301, 36.534130, 26.669859>,  <38.847061, 36.703205, 26.770037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709301, 36.534130, 26.669859>,  <38.479702, 36.252335, 26.502897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709301, 36.534130, 26.669859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503788, -0.705670, 0.498223,
		0.645541, -0.075695, -0.759965,
		0.573998, 0.704485, 0.417405,
		38.881500, 36.745476, 26.795080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268711, 36.026924, 26.325871>,  <38.479702, 36.252335, 26.502897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268711, 36.026924, 26.325871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275795, 36.277248, 26.637779>,  <39.280045, 36.427444, 26.824924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275795, 36.277248, 26.637779>,  <39.268711, 36.026924, 26.325871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275795, 36.277248, 26.637779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629030, -0.613188, 0.477830,
		0.777179, 0.482038, -0.404514,
		0.017710, 0.625811, 0.779773,
		39.281109, 36.464993, 26.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960007, 36.141090, 26.542908>,  <39.268711, 36.026924, 26.325871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960007, 36.141090, 26.542908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780483, 36.279751, 26.872370>,  <39.672771, 36.362946, 27.070047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780483, 36.279751, 26.872370>,  <39.960007, 36.141090, 26.542908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780483, 36.279751, 26.872370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592873, -0.574133, 0.564688,
		0.668637, 0.741758, 0.052154,
		-0.448804, 0.346651, 0.823655,
		39.645844, 36.383747, 27.119467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501511, 36.387562, 27.007231>,  <39.960007, 36.141090, 26.542908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501511, 36.387562, 27.007231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193302, 36.346066, 27.258801>,  <40.008377, 36.321167, 27.409742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193302, 36.346066, 27.258801>,  <40.501511, 36.387562, 27.007231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193302, 36.346066, 27.258801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528570, -0.655435, 0.539462,
		0.356255, 0.748094, 0.559855,
		-0.770516, -0.103737, 0.628922,
		39.962147, 36.314945, 27.447477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770657, 36.402946, 27.706196>,  <40.501511, 36.387562, 27.007231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770657, 36.402946, 27.706196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429131, 36.194725, 27.704079>,  <40.224216, 36.069794, 27.702808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429131, 36.194725, 27.704079>,  <40.770657, 36.402946, 27.706196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429131, 36.194725, 27.704079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423539, -0.700531, 0.574344,
		-0.302684, 0.488141, 0.818597,
		-0.853813, -0.520553, -0.005293,
		40.172985, 36.038559, 27.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699604, 36.180546, 28.409842>,  <40.770657, 36.402946, 27.706196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699604, 36.180546, 28.409842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514927, 35.932209, 28.156422>,  <40.404121, 35.783207, 28.004370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514927, 35.932209, 28.156422>,  <40.699604, 36.180546, 28.409842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514927, 35.932209, 28.156422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530092, -0.765780, 0.364121,
		-0.711224, -0.167727, 0.682662,
		-0.461696, -0.620845, -0.633552,
		40.376419, 35.745956, 27.966356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171356, 36.701485, 28.843403>,  <40.699604, 36.180546, 28.409842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171356, 36.701485, 28.843403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305244, 36.879135, 29.175840>,  <40.385578, 36.985725, 29.375303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305244, 36.879135, 29.175840>,  <40.171356, 36.701485, 28.843403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305244, 36.879135, 29.175840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650371, 0.747104, -0.137306,
		-0.681894, -0.494560, 0.538916,
		0.334720, 0.444124, 0.831093,
		40.405659, 37.012371, 29.425169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646034, 36.710583, 29.264902>,  <40.171356, 36.701485, 28.843403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646034, 36.710583, 29.264902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.884010, 37.010899, 29.379694>,  <40.026798, 37.191090, 29.448570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.884010, 37.010899, 29.379694>,  <39.646034, 36.710583, 29.264902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884010, 37.010899, 29.379694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770755, 0.634180, -0.061259,
		-0.227990, -0.184747, 0.955976,
		0.594943, 0.750789, 0.286981,
		40.062492, 37.236134, 29.465788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178802, 37.191475, 29.557600>,  <39.646034, 36.710583, 29.264902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178802, 37.191475, 29.557600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.486530, 37.447018, 29.558876>,  <39.671165, 37.600342, 29.559641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.486530, 37.447018, 29.558876>,  <39.178802, 37.191475, 29.557600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486530, 37.447018, 29.558876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637090, 0.767547, -0.070628,
		-0.047569, 0.052304, 0.997498,
		0.769320, 0.638855, 0.003189,
		39.717327, 37.638676, 29.559834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991756, 37.712448, 29.943905>,  <39.178802, 37.191475, 29.557600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991756, 37.712448, 29.943905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290390, 37.852077, 29.717365>,  <39.469570, 37.935856, 29.581442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290390, 37.852077, 29.717365>,  <38.991756, 37.712448, 29.943905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290390, 37.852077, 29.717365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582213, 0.754745, -0.302306,
		0.321923, 0.555435, 0.766719,
		0.746588, 0.349074, -0.566351,
		39.514366, 37.956799, 29.547461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978924, 38.386639, 30.050770>,  <38.991756, 37.712448, 29.943905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978924, 38.386639, 30.050770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195686, 38.370068, 29.715004>,  <39.325745, 38.360126, 29.513544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195686, 38.370068, 29.715004>,  <38.978924, 38.386639, 30.050770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195686, 38.370068, 29.715004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424748, 0.848341, -0.316079,
		0.725204, 0.527826, 0.442129,
		0.541911, -0.041428, -0.839414,
		39.358261, 38.357639, 29.463181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267570, 39.057789, 29.932798>,  <38.978924, 38.386639, 30.050770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267570, 39.057789, 29.932798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303551, 38.890907, 29.571058>,  <39.325138, 38.790779, 29.354013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303551, 38.890907, 29.571058>,  <39.267570, 39.057789, 29.932798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303551, 38.890907, 29.571058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171204, 0.888040, -0.426703,
		0.981121, 0.193211, 0.008454,
		0.089951, -0.417200, -0.904352,
		39.330536, 38.765747, 29.299753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307404, 39.602264, 29.495207>,  <39.267570, 39.057789, 29.932798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307404, 39.602264, 29.495207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211967, 39.331707, 29.216475>,  <39.154705, 39.169373, 29.049236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211967, 39.331707, 29.216475>,  <39.307404, 39.602264, 29.495207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211967, 39.331707, 29.216475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641798, 0.648340, -0.409574,
		0.728814, 0.349503, -0.588794,
		-0.238591, -0.676390, -0.696830,
		39.140388, 39.128792, 29.007425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313030, 39.907787, 28.779520>,  <39.307404, 39.602264, 29.495207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313030, 39.907787, 28.779520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074097, 39.589806, 28.737103>,  <38.930737, 39.399017, 28.711651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074097, 39.589806, 28.737103>,  <39.313030, 39.907787, 28.779520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074097, 39.589806, 28.737103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593589, 0.527147, -0.608086,
		0.539308, -0.300272, -0.786755,
		-0.597327, -0.794955, -0.106057,
		38.894897, 39.351322, 28.705288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207947, 39.875996, 28.076300>,  <39.313030, 39.907787, 28.779520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207947, 39.875996, 28.076300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905075, 39.682919, 28.252338>,  <38.723351, 39.567074, 28.357962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905075, 39.682919, 28.252338>,  <39.207947, 39.875996, 28.076300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905075, 39.682919, 28.252338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644329, 0.441239, -0.624619,
		0.107310, -0.756517, -0.645110,
		-0.757182, -0.482690, 0.440097,
		38.677921, 39.538113, 28.384367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805195, 39.713284, 27.601608>,  <39.207947, 39.875996, 28.076300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805195, 39.713284, 27.601608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552689, 39.667564, 27.908449>,  <38.401184, 39.640133, 28.092554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552689, 39.667564, 27.908449>,  <38.805195, 39.713284, 27.601608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552689, 39.667564, 27.908449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755686, 0.313173, -0.575206,
		-0.174494, -0.942793, -0.284064,
		-0.631261, -0.114293, 0.767102,
		38.363312, 39.633278, 28.138580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284470, 39.394207, 27.330385>,  <38.805195, 39.713284, 27.601608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284470, 39.394207, 27.330385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150124, 39.575356, 27.660744>,  <38.069515, 39.684044, 27.858959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150124, 39.575356, 27.660744>,  <38.284470, 39.394207, 27.330385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150124, 39.575356, 27.660744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817529, 0.295326, -0.494397,
		-0.467807, -0.841243, 0.271049,
		-0.335860, 0.452873, 0.825896,
		38.049366, 39.711216, 27.908512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530937, 39.102051, 27.417284>,  <38.284470, 39.394207, 27.330385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530937, 39.102051, 27.417284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570404, 39.471954, 27.564301>,  <37.594086, 39.693897, 27.652510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570404, 39.471954, 27.564301>,  <37.530937, 39.102051, 27.417284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570404, 39.471954, 27.564301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652270, 0.339039, -0.677936,
		-0.751538, -0.172844, 0.636645,
		0.098670, 0.924758, 0.367542,
		37.600006, 39.749382, 27.674562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887222, 39.351154, 27.489359>,  <37.530937, 39.102051, 27.417284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887222, 39.351154, 27.489359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.062511, 39.710548, 27.499844>,  <37.167686, 39.926186, 27.506134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.062511, 39.710548, 27.499844>,  <36.887222, 39.351154, 27.489359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062511, 39.710548, 27.499844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843526, 0.421145, -0.333317,
		-0.310518, 0.123958, 0.942451,
		0.438226, 0.898483, 0.026211,
		37.193977, 39.980095, 27.507708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413921, 39.743732, 27.780945>,  <36.887222, 39.351154, 27.489359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413921, 39.743732, 27.780945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.656551, 39.984966, 27.573734>,  <36.802128, 40.129707, 27.449408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.656551, 39.984966, 27.573734>,  <36.413921, 39.743732, 27.780945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656551, 39.984966, 27.573734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792549, 0.407313, -0.453830,
		-0.062700, 0.685844, 0.725043,
		0.606576, 0.603087, -0.518026,
		36.838524, 40.165894, 27.418325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388454, 39.965534, 28.605476>,  <36.413921, 39.743732, 27.780945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388454, 39.965534, 28.605476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097988, 40.027645, 28.873377>,  <35.923706, 40.064911, 29.034117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097988, 40.027645, 28.873377>,  <36.388454, 39.965534, 28.605476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097988, 40.027645, 28.873377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499749, -0.549793, 0.669312,
		0.472156, 0.820741, 0.321641,
		-0.726168, 0.155280, 0.669753,
		35.880138, 40.074230, 29.074303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722980, 40.033489, 29.261545>,  <36.388454, 39.965534, 28.605476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722980, 40.033489, 29.261545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.351822, 39.946877, 29.382950>,  <36.129128, 39.894909, 29.455793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.351822, 39.946877, 29.382950>,  <36.722980, 40.033489, 29.261545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351822, 39.946877, 29.382950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371862, -0.596295, 0.711443,
		0.026933, 0.773011, 0.633821,
		-0.927897, -0.216533, 0.303514,
		36.073452, 39.881916, 29.474005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667610, 40.085384, 29.982973>,  <36.722980, 40.033489, 29.261545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667610, 40.085384, 29.982973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363903, 39.844261, 29.884890>,  <36.181679, 39.699585, 29.826040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363903, 39.844261, 29.884890>,  <36.667610, 40.085384, 29.982973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363903, 39.844261, 29.884890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236223, -0.606387, 0.759272,
		-0.606387, 0.518570, 0.602810,
		-0.759272, -0.602810, -0.245207,
		36.136120, 39.663418, 29.811327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415604, 39.731441, 30.663137>,  <36.667610, 40.085384, 29.982973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415604, 39.731441, 30.663137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300747, 39.508671, 30.351397>,  <36.231834, 39.375008, 30.164352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300747, 39.508671, 30.351397>,  <36.415604, 39.731441, 30.663137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300747, 39.508671, 30.351397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385488, -0.812005, 0.438232,
		-0.876898, -0.174596, 0.447846,
		-0.287139, -0.556924, -0.779350,
		36.214603, 39.341595, 30.117592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944283, 39.160469, 30.973059>,  <36.415604, 39.731441, 30.663137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944283, 39.160469, 30.973059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.054462, 39.023487, 30.613760>,  <36.120571, 38.941299, 30.398180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.054462, 39.023487, 30.613760>,  <35.944283, 39.160469, 30.973059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054462, 39.023487, 30.613760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186287, -0.897669, 0.399359,
		-0.943092, -0.277337, -0.183472,
		0.275454, -0.342454, -0.898249,
		36.137100, 38.920750, 30.344286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676914, 38.542778, 30.990463>,  <35.944283, 39.160469, 30.973059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676914, 38.542778, 30.990463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971031, 38.552612, 30.719542>,  <36.147503, 38.558514, 30.556988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971031, 38.552612, 30.719542>,  <35.676914, 38.542778, 30.990463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971031, 38.552612, 30.719542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322685, -0.891503, 0.317956,
		-0.596002, -0.452347, -0.663448,
		0.735293, 0.024583, -0.677303,
		36.191620, 38.559986, 30.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708466, 37.852673, 30.721058>,  <35.676914, 38.542778, 30.990463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708466, 37.852673, 30.721058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060509, 38.025612, 30.642578>,  <36.271732, 38.129375, 30.595491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060509, 38.025612, 30.642578>,  <35.708466, 37.852673, 30.721058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060509, 38.025612, 30.642578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474577, -0.813172, 0.336939,
		-0.013868, -0.389652, -0.920858,
		0.880105, 0.432345, -0.196197,
		36.324539, 38.155315, 30.583719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172321, 37.329288, 30.508537>,  <35.708466, 37.852673, 30.721058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172321, 37.329288, 30.508537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.402187, 37.639702, 30.612484>,  <36.540108, 37.825951, 30.674852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.402187, 37.639702, 30.612484>,  <36.172321, 37.329288, 30.508537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402187, 37.639702, 30.612484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560234, -0.604505, 0.566314,
		0.596567, -0.179858, -0.782150,
		0.574670, 0.776031, 0.259866,
		36.574589, 37.872513, 30.690443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862286, 37.003956, 30.454620>,  <36.172321, 37.329288, 30.508537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862286, 37.003956, 30.454620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938904, 37.329983, 30.673338>,  <36.984875, 37.525597, 30.804567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938904, 37.329983, 30.673338>,  <36.862286, 37.003956, 30.454620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938904, 37.329983, 30.673338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682889, -0.510826, 0.522225,
		0.704962, 0.273367, -0.654446,
		0.191549, 0.815063, 0.546792,
		36.996368, 37.574501, 30.837376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546459, 37.120010, 30.457161>,  <36.862286, 37.003956, 30.454620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546459, 37.120010, 30.457161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436035, 37.337204, 30.774389>,  <37.369781, 37.467522, 30.964725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436035, 37.337204, 30.774389>,  <37.546459, 37.120010, 30.457161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436035, 37.337204, 30.774389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719225, -0.430652, 0.545210,
		0.637577, 0.720908, -0.271639,
		-0.276065, 0.542983, 0.793069,
		37.353214, 37.500099, 31.012310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220726, 37.223492, 30.695414>,  <37.546459, 37.120010, 30.457161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220726, 37.223492, 30.695414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961147, 37.286377, 30.993177>,  <37.805401, 37.324108, 31.171837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961147, 37.286377, 30.993177>,  <38.220726, 37.223492, 30.695414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961147, 37.286377, 30.993177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682108, -0.313202, 0.660782,
		0.337037, 0.936583, 0.096013,
		-0.648948, 0.157217, 0.744412,
		37.766464, 37.333542, 31.216501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662529, 37.507370, 31.260660>,  <38.220726, 37.223492, 30.695414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662529, 37.507370, 31.260660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.321808, 37.375309, 31.423353>,  <38.117374, 37.296074, 31.520969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.321808, 37.375309, 31.423353>,  <38.662529, 37.507370, 31.260660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321808, 37.375309, 31.423353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520702, -0.448441, 0.726478,
		-0.057454, 0.830602, 0.553895,
		-0.851803, -0.330153, 0.406731,
		38.066265, 37.276264, 31.545372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.112362, 42.964787, 27.115385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827393, 42.747128, 27.292633>,  <33.656410, 42.616531, 27.398983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827393, 42.747128, 27.292633>,  <34.112362, 42.964787, 27.115385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827393, 42.747128, 27.292633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694583, -0.456748, 0.555819,
		-0.100055, 0.703761, 0.703356,
		-0.712420, -0.544152, 0.443121,
		33.613667, 42.583881, 27.425570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292454, 43.036068, 27.779909>,  <34.112362, 42.964787, 27.115385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292454, 43.036068, 27.779909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063137, 42.708725, 27.763773>,  <33.925545, 42.512321, 27.754091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063137, 42.708725, 27.763773>,  <34.292454, 43.036068, 27.779909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063137, 42.708725, 27.763773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694069, -0.511214, 0.506882,
		-0.435433, 0.262593, 0.861071,
		-0.573295, -0.818355, -0.040342,
		33.891148, 42.463219, 27.751671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436417, 42.850906, 28.396254>,  <34.292454, 43.036068, 27.779909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436417, 42.850906, 28.396254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283489, 42.533619, 28.206667>,  <34.191734, 42.343246, 28.092915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283489, 42.533619, 28.206667>,  <34.436417, 42.850906, 28.396254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283489, 42.533619, 28.206667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715943, -0.578562, 0.390757,
		-0.584172, -0.189938, 0.789092,
		-0.382320, -0.793214, -0.473965,
		34.168793, 42.295654, 28.064478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183872, 42.292187, 28.941687>,  <34.436417, 42.850906, 28.396254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183872, 42.292187, 28.941687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275059, 42.111511, 28.596664>,  <34.329773, 42.003105, 28.389650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275059, 42.111511, 28.596664>,  <34.183872, 42.292187, 28.941687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275059, 42.111511, 28.596664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575983, -0.651693, 0.493498,
		-0.785030, -0.609322, 0.111599,
		0.227971, -0.451690, -0.862557,
		34.343449, 41.976006, 28.337896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909634, 41.601795, 29.046814>,  <34.183872, 42.292187, 28.941687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909634, 41.601795, 29.046814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174473, 41.577339, 28.748047>,  <34.333378, 41.562664, 28.568787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174473, 41.577339, 28.748047>,  <33.909634, 41.601795, 29.046814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174473, 41.577339, 28.748047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391311, -0.821803, 0.414144,
		-0.639140, -0.566482, -0.520191,
		0.662100, -0.061140, -0.746918,
		34.373104, 41.558998, 28.523972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952442, 40.869026, 28.972559>,  <33.909634, 41.601795, 29.046814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952442, 40.869026, 28.972559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284557, 41.026127, 28.814386>,  <34.483826, 41.120388, 28.719482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284557, 41.026127, 28.814386>,  <33.952442, 40.869026, 28.972559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284557, 41.026127, 28.814386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541711, -0.735505, 0.406916,
		-0.131026, -0.552068, -0.823440,
		0.830290, 0.392750, -0.395431,
		34.533646, 41.143951, 28.695757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247173, 40.249344, 28.734453>,  <33.952442, 40.869026, 28.972559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247173, 40.249344, 28.734453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533821, 40.527431, 28.756838>,  <34.705811, 40.694283, 28.770267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533821, 40.527431, 28.756838>,  <34.247173, 40.249344, 28.734453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533821, 40.527431, 28.756838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607388, -0.661495, 0.439891,
		0.342836, -0.281245, -0.896306,
		0.716619, 0.695216, 0.055960,
		34.748806, 40.735996, 28.773626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911648, 39.907600, 28.304930>,  <34.247173, 40.249344, 28.734453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911648, 39.907600, 28.304930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058403, 40.212490, 28.518246>,  <35.146458, 40.395424, 28.646236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058403, 40.212490, 28.518246>,  <34.911648, 39.907600, 28.304930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058403, 40.212490, 28.518246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617258, -0.628361, 0.473450,
		0.695977, 0.155474, -0.701031,
		0.366891, 0.762227, 0.533292,
		35.168468, 40.441158, 28.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718796, 39.852634, 28.238478>,  <34.911648, 39.907600, 28.304930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718796, 39.852634, 28.238478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604824, 40.049686, 28.567387>,  <35.536442, 40.167919, 28.764732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604824, 40.049686, 28.567387>,  <35.718796, 39.852634, 28.238478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604824, 40.049686, 28.567387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579065, -0.595145, 0.557213,
		0.763871, 0.634914, -0.115691,
		-0.284929, 0.492632, 0.822271,
		35.519344, 40.197475, 28.814068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109150, 40.439419, 27.819908>,  <35.718796, 39.852634, 28.238478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109150, 40.439419, 27.819908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350586, 40.482868, 27.503965>,  <36.495449, 40.508938, 27.314400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350586, 40.482868, 27.503965>,  <36.109150, 40.439419, 27.819908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350586, 40.482868, 27.503965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684654, 0.578277, -0.443673,
		0.408565, 0.808577, 0.423412,
		0.603593, 0.108621, -0.789859,
		36.531662, 40.515453, 27.267008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098118, 41.213631, 27.597425>,  <36.109150, 40.439419, 27.819908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098118, 41.213631, 27.597425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240570, 41.007507, 27.285624>,  <36.326042, 40.883835, 27.098541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240570, 41.007507, 27.285624>,  <36.098118, 41.213631, 27.597425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240570, 41.007507, 27.285624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559055, 0.550934, -0.619620,
		0.748751, 0.656453, -0.091880,
		0.356131, -0.515307, -0.779506,
		36.347408, 40.852917, 27.051771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386406, 41.690903, 27.135427>,  <36.098118, 41.213631, 27.597425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386406, 41.690903, 27.135427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306248, 41.361366, 26.923344>,  <36.258152, 41.163643, 26.796093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306248, 41.361366, 26.923344>,  <36.386406, 41.690903, 27.135427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306248, 41.361366, 26.923344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447665, 0.558386, -0.698427,
		0.871457, 0.097395, -0.480704,
		-0.200395, -0.823844, -0.530210,
		36.246128, 41.114212, 26.764280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736252, 41.670677, 26.410545>,  <36.386406, 41.690903, 27.135427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736252, 41.670677, 26.410545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402805, 41.449741, 26.411535>,  <36.202736, 41.317181, 26.412130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402805, 41.449741, 26.411535>,  <36.736252, 41.670677, 26.410545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402805, 41.449741, 26.411535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361486, 0.542172, -0.758537,
		0.417625, -0.633224, -0.651626,
		-0.833617, -0.552338, 0.002477,
		36.152721, 41.284039, 26.412279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782951, 41.568382, 25.750395>,  <36.736252, 41.670677, 26.410545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782951, 41.568382, 25.750395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411701, 41.482243, 25.871861>,  <36.188950, 41.430561, 25.944740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411701, 41.482243, 25.871861>,  <36.782951, 41.568382, 25.750395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411701, 41.482243, 25.871861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369123, 0.426477, -0.825751,
		0.048318, -0.878489, -0.475314,
		-0.928124, -0.215347, 0.303664,
		36.133263, 41.417637, 25.962959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541332, 41.470726, 25.142851>,  <36.782951, 41.568382, 25.750395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541332, 41.470726, 25.142851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231045, 41.538410, 25.386038>,  <36.044872, 41.579021, 25.531950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231045, 41.538410, 25.386038>,  <36.541332, 41.470726, 25.142851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231045, 41.538410, 25.386038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373789, 0.653012, -0.658678,
		-0.508468, -0.738201, -0.443304,
		-0.775720, 0.169215, 0.607968,
		35.998329, 41.589176, 25.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994785, 41.477242, 24.647797>,  <36.541332, 41.470726, 25.142851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994785, 41.477242, 24.647797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832996, 41.636002, 24.977373>,  <35.735924, 41.731258, 25.175119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832996, 41.636002, 24.977373>,  <35.994785, 41.477242, 24.647797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832996, 41.636002, 24.977373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447400, 0.699887, -0.556769,
		-0.797644, -0.593827, -0.105512,
		-0.404471, 0.396898, 0.823939,
		35.711655, 41.755070, 25.224554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292248, 41.440163, 24.542902>,  <35.994785, 41.477242, 24.647797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292248, 41.440163, 24.542902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340466, 41.744884, 24.797499>,  <35.369396, 41.927715, 24.950256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340466, 41.744884, 24.797499>,  <35.292248, 41.440163, 24.542902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340466, 41.744884, 24.797499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572266, 0.577241, -0.582499,
		-0.811160, -0.294024, 0.505539,
		0.120549, 0.761803, 0.636494,
		35.376629, 41.973427, 24.988447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612926, 41.651058, 24.818083>,  <35.292248, 41.440163, 24.542902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612926, 41.651058, 24.818083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856194, 41.962032, 24.882240>,  <35.002155, 42.148617, 24.920734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856194, 41.962032, 24.882240>,  <34.612926, 41.651058, 24.818083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856194, 41.962032, 24.882240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576915, 0.571672, -0.583404,
		-0.545250, 0.262276, 0.796187,
		0.608171, 0.777433, 0.160393,
		35.038647, 42.195263, 24.930359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228382, 42.229523, 25.065447>,  <34.612926, 41.651058, 24.818083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228382, 42.229523, 25.065447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564812, 42.366066, 24.897606>,  <34.766670, 42.447994, 24.796902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564812, 42.366066, 24.897606>,  <34.228382, 42.229523, 25.065447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564812, 42.366066, 24.897606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538751, 0.598071, -0.593346,
		0.048407, 0.725109, 0.686931,
		0.841073, 0.341362, -0.419604,
		34.817135, 42.468475, 24.771725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971272, 42.910950, 24.938963>,  <34.228382, 42.229523, 25.065447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971272, 42.910950, 24.938963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301987, 42.893806, 24.714613>,  <34.500416, 42.883522, 24.580002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301987, 42.893806, 24.714613>,  <33.971272, 42.910950, 24.938963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301987, 42.893806, 24.714613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513395, 0.349985, -0.783541,
		0.229878, 0.935775, 0.267361,
		0.826790, -0.042857, -0.560876,
		34.550022, 42.880951, 24.546350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028358, 43.542351, 24.585659>,  <33.971272, 42.910950, 24.938963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028358, 43.542351, 24.585659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240353, 43.287136, 24.362225>,  <34.367550, 43.134007, 24.228165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240353, 43.287136, 24.362225>,  <34.028358, 43.542351, 24.585659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240353, 43.287136, 24.362225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501435, 0.295412, -0.813200,
		0.683866, 0.711082, -0.163370,
		0.529990, -0.638040, -0.558584,
		34.399349, 43.095726, 24.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362930, 43.899376, 24.019459>,  <34.028358, 43.542351, 24.585659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362930, 43.899376, 24.019459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318253, 43.516933, 23.911102>,  <34.291447, 43.287468, 23.846088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318253, 43.516933, 23.911102>,  <34.362930, 43.899376, 24.019459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318253, 43.516933, 23.911102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462405, 0.291293, -0.837454,
		0.879605, 0.031721, -0.474646,
		-0.111696, -0.956108, -0.270891,
		34.284744, 43.230103, 23.829836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574314, 43.853458, 23.378420>,  <34.362930, 43.899376, 24.019459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574314, 43.853458, 23.378420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334171, 43.536678, 23.422951>,  <34.190086, 43.346611, 23.449669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334171, 43.536678, 23.422951>,  <34.574314, 43.853458, 23.378420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334171, 43.536678, 23.422951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523470, 0.283897, -0.803357,
		0.604611, -0.540576, -0.584999,
		-0.600354, -0.791947, 0.111328,
		34.154064, 43.299095, 23.456348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.138458, 37.849792, 25.471140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419518, 38.123665, 25.548595>,  <28.588154, 38.287987, 25.595070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419518, 38.123665, 25.548595>,  <28.138458, 37.849792, 25.471140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419518, 38.123665, 25.548595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640107, -0.727097, 0.248177,
		0.310718, -0.050431, -0.949163,
		0.702650, 0.684680, 0.193641,
		28.630312, 38.329067, 25.606688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665991, 37.439190, 25.328279>,  <28.138458, 37.849792, 25.471140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665991, 37.439190, 25.328279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.815281, 37.737495, 25.549019>,  <28.904854, 37.916481, 25.681463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.815281, 37.737495, 25.549019>,  <28.665991, 37.439190, 25.328279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815281, 37.737495, 25.549019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765151, -0.583815, 0.271484,
		0.524641, 0.320923, -0.788517,
		0.373223, 0.745767, 0.551848,
		28.927248, 37.961224, 25.714573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407032, 37.384304, 25.200468>,  <28.665991, 37.439190, 25.328279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407032, 37.384304, 25.200468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.341806, 37.566288, 25.550652>,  <29.302671, 37.675476, 25.760761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.341806, 37.566288, 25.550652>,  <29.407032, 37.384304, 25.200468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341806, 37.566288, 25.550652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840907, -0.400013, 0.364506,
		0.516028, 0.795616, -0.317349,
		-0.163063, 0.454957, 0.875457,
		29.292887, 37.702774, 25.813288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065460, 37.765026, 25.423695>,  <29.407032, 37.384304, 25.200468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065460, 37.765026, 25.423695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.863886, 37.710716, 25.764896>,  <29.742941, 37.678131, 25.969618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.863886, 37.710716, 25.764896>,  <30.065460, 37.765026, 25.423695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863886, 37.710716, 25.764896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817666, -0.393231, 0.420466,
		0.278341, 0.909360, 0.309178,
		-0.503933, -0.135771, 0.853005,
		29.712706, 37.669987, 26.020798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531815, 37.916920, 25.928818>,  <30.065460, 37.765026, 25.423695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531815, 37.916920, 25.928818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.233627, 37.739830, 26.128126>,  <30.054714, 37.633575, 26.247711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.233627, 37.739830, 26.128126>,  <30.531815, 37.916920, 25.928818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233627, 37.739830, 26.128126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666354, -0.512644, 0.541450,
		0.015725, 0.735660, 0.677169,
		-0.745470, -0.442720, 0.498271,
		30.009987, 37.607014, 26.277607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671904, 38.067699, 26.665058>,  <30.531815, 37.916920, 25.928818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671904, 38.067699, 26.665058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444700, 37.740704, 26.626938>,  <30.308378, 37.544506, 26.604065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444700, 37.740704, 26.626938>,  <30.671904, 38.067699, 26.665058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444700, 37.740704, 26.626938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622395, -0.502423, 0.600163,
		-0.538507, 0.281583, 0.794180,
		-0.568010, -0.817485, -0.095303,
		30.274298, 37.495457, 26.598347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666515, 37.751034, 27.256676>,  <30.671904, 38.067699, 26.665058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666515, 37.751034, 27.256676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567896, 37.427914, 27.042507>,  <30.508724, 37.234043, 26.914005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567896, 37.427914, 27.042507>,  <30.666515, 37.751034, 27.256676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567896, 37.427914, 27.042507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730980, -0.517746, 0.444530,
		-0.636302, -0.281783, 0.718135,
		-0.246550, -0.807798, -0.535421,
		30.493931, 37.185574, 26.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610329, 37.136448, 27.734331>,  <30.666515, 37.751034, 27.256676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610329, 37.136448, 27.734331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.654163, 36.958912, 27.378578>,  <30.680464, 36.852390, 27.165127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.654163, 36.958912, 27.378578>,  <30.610329, 37.136448, 27.734331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654163, 36.958912, 27.378578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622847, -0.666654, 0.409432,
		-0.774631, -0.598816, 0.203387,
		0.109586, -0.443837, -0.889381,
		30.687038, 36.825760, 27.111763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555838, 36.398613, 27.862938>,  <30.610329, 37.136448, 27.734331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555838, 36.398613, 27.862938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.773787, 36.432541, 27.529251>,  <30.904556, 36.452896, 27.329039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.773787, 36.432541, 27.529251>,  <30.555838, 36.398613, 27.862938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773787, 36.432541, 27.529251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762812, -0.463245, 0.451135,
		-0.348182, -0.882162, -0.317111,
		0.544874, 0.084819, -0.834217,
		30.937248, 36.457985, 27.278986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928431, 35.790142, 27.918619>,  <30.555838, 36.398613, 27.862938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928431, 35.790142, 27.918619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.112238, 36.006908, 27.637146>,  <31.222523, 36.136967, 27.468262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.112238, 36.006908, 27.637146>,  <30.928431, 35.790142, 27.918619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112238, 36.006908, 27.637146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880784, -0.379993, 0.282533,
		-0.114284, -0.749621, -0.651926,
		0.459520, 0.541916, -0.703682,
		31.250093, 36.169483, 27.426041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441513, 35.374847, 27.701675>,  <30.928431, 35.790142, 27.918619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441513, 35.374847, 27.701675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.539396, 35.738098, 27.565777>,  <31.598125, 35.956047, 27.484238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.539396, 35.738098, 27.565777>,  <31.441513, 35.374847, 27.701675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539396, 35.738098, 27.565777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960570, -0.179359, 0.212450,
		0.131995, -0.378336, -0.916209,
		0.244708, 0.908126, -0.339744,
		31.612808, 36.010536, 27.463854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966476, 35.229801, 27.246103>,  <31.441513, 35.374847, 27.701675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966476, 35.229801, 27.246103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002739, 35.609577, 27.366327>,  <32.024498, 35.837444, 27.438461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002739, 35.609577, 27.366327>,  <31.966476, 35.229801, 27.246103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002739, 35.609577, 27.366327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852843, -0.229857, 0.468855,
		0.514238, 0.213827, -0.830565,
		0.090657, 0.949444, 0.300562,
		32.029938, 35.894409, 27.456495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541260, 35.462074, 27.011728>,  <31.966476, 35.229801, 27.246103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541260, 35.462074, 27.011728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474201, 35.701599, 27.324987>,  <32.433968, 35.845314, 27.512943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474201, 35.701599, 27.324987>,  <32.541260, 35.462074, 27.011728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474201, 35.701599, 27.324987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917011, -0.196915, 0.346865,
		0.361921, 0.776303, -0.516107,
		-0.167643, 0.598814, 0.783146,
		32.423908, 35.881245, 27.559931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233208, 35.810532, 27.136147>,  <32.541260, 35.462074, 27.011728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233208, 35.810532, 27.136147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.021564, 35.858273, 27.472193>,  <32.894577, 35.886917, 27.673820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.021564, 35.858273, 27.472193>,  <33.233208, 35.810532, 27.136147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021564, 35.858273, 27.472193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816778, -0.196759, 0.542365,
		0.230031, 0.973161, 0.006627,
		-0.529112, 0.119348, 0.840117,
		32.862831, 35.894077, 27.724228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647255, 36.465008, 26.932718>,  <33.233208, 35.810532, 27.136147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647255, 36.465008, 26.932718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864132, 36.521736, 26.601439>,  <33.994259, 36.555775, 26.402672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864132, 36.521736, 26.601439>,  <33.647255, 36.465008, 26.932718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864132, 36.521736, 26.601439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700943, 0.619886, -0.352732,
		0.463363, 0.771769, 0.435508,
		0.542193, 0.141823, -0.828198,
		34.026791, 36.564281, 26.352980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657291, 37.263397, 26.696674>,  <33.647255, 36.465008, 26.932718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657291, 37.263397, 26.696674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759144, 37.065147, 26.364525>,  <33.820255, 36.946198, 26.165236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759144, 37.065147, 26.364525>,  <33.657291, 37.263397, 26.696674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759144, 37.065147, 26.364525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459851, 0.693325, -0.554831,
		0.850707, 0.523123, -0.051373,
		0.254627, -0.495623, -0.830375,
		33.835533, 36.916462, 26.115412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992580, 37.771027, 26.175770>,  <33.657291, 37.263397, 26.696674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992580, 37.771027, 26.175770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850945, 37.461777, 25.965284>,  <33.765965, 37.276226, 25.838993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850945, 37.461777, 25.965284>,  <33.992580, 37.771027, 26.175770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850945, 37.461777, 25.965284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406207, 0.633963, -0.658093,
		0.842388, -0.019270, -0.538527,
		-0.354088, -0.773123, -0.526215,
		33.744717, 37.229839, 25.807421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151039, 37.849266, 25.470356>,  <33.992580, 37.771027, 26.175770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151039, 37.849266, 25.470356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829731, 37.611244, 25.480701>,  <33.636948, 37.468430, 25.486908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829731, 37.611244, 25.480701>,  <34.151039, 37.849266, 25.470356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829731, 37.611244, 25.480701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430246, 0.549670, -0.716066,
		0.411884, -0.586320, -0.697553,
		-0.803268, -0.595056, 0.025861,
		33.588749, 37.432728, 25.488461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891983, 37.706627, 24.703812>,  <34.151039, 37.849266, 25.470356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891983, 37.706627, 24.703812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593868, 37.569305, 24.932440>,  <33.415001, 37.486912, 25.069616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593868, 37.569305, 24.932440>,  <33.891983, 37.706627, 24.703812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593868, 37.569305, 24.932440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657819, 0.238782, -0.714323,
		0.108744, -0.908366, -0.403789,
		-0.745285, -0.343299, 0.571574,
		33.370281, 37.466316, 25.103912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479496, 37.248901, 24.271875>,  <33.891983, 37.706627, 24.703812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479496, 37.248901, 24.271875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.245884, 37.393131, 24.562777>,  <33.105717, 37.479668, 24.737318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.245884, 37.393131, 24.562777>,  <33.479496, 37.248901, 24.271875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245884, 37.393131, 24.562777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648476, 0.331646, -0.685193,
		-0.488255, -0.871778, 0.040135,
		-0.584026, 0.360575, 0.727254,
		33.070675, 37.501305, 24.780952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881905, 37.178200, 23.893885>,  <33.479496, 37.248901, 24.271875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881905, 37.178200, 23.893885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757774, 37.379299, 24.216610>,  <32.683296, 37.499958, 24.410244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757774, 37.379299, 24.216610>,  <32.881905, 37.178200, 23.893885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757774, 37.379299, 24.216610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687907, 0.467009, -0.555596,
		-0.656112, -0.727427, 0.200917,
		-0.310325, 0.502746, 0.806812,
		32.664677, 37.530125, 24.458654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074898, 37.097366, 24.038696>,  <32.881905, 37.178200, 23.893885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074898, 37.097366, 24.038696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.200104, 37.440025, 24.202734>,  <32.275227, 37.645618, 24.301157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.200104, 37.440025, 24.202734>,  <32.074898, 37.097366, 24.038696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200104, 37.440025, 24.202734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719617, 0.495716, -0.486227,
		-0.619815, -0.142914, 0.771625,
		0.313018, 0.856645, 0.410096,
		32.294010, 37.697018, 24.325762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506039, 37.365280, 24.304916>,  <32.074898, 37.097366, 24.038696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506039, 37.365280, 24.304916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746210, 37.684277, 24.281261>,  <31.890314, 37.875675, 24.267069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746210, 37.684277, 24.281261>,  <31.506039, 37.365280, 24.304916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746210, 37.684277, 24.281261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761502, 0.547623, -0.346733,
		-0.244130, 0.253224, 0.936098,
		0.600430, 0.797488, -0.059139,
		31.926338, 37.923523, 24.263519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065359, 37.926075, 24.593464>,  <31.506039, 37.365280, 24.304916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065359, 37.926075, 24.593464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.361546, 38.098064, 24.386839>,  <31.539257, 38.201256, 24.262865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.361546, 38.098064, 24.386839>,  <31.065359, 37.926075, 24.593464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361546, 38.098064, 24.386839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636273, 0.696032, -0.332710,
		0.216487, 0.575034, 0.788967,
		0.740466, 0.429971, -0.516561,
		31.583685, 38.227055, 24.231871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136509, 38.629162, 24.806519>,  <31.065359, 37.926075, 24.593464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136509, 38.629162, 24.806519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.319653, 38.612629, 24.451294>,  <31.429539, 38.602711, 24.238159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.319653, 38.612629, 24.451294>,  <31.136509, 38.629162, 24.806519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319653, 38.612629, 24.451294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716991, 0.573441, -0.396345,
		0.525632, 0.818204, 0.232923,
		0.457859, -0.041328, -0.888064,
		31.457010, 38.600231, 24.184875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213192, 39.367310, 24.612200>,  <31.136509, 38.629162, 24.806519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213192, 39.367310, 24.612200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248878, 39.159557, 24.272251>,  <31.270290, 39.034904, 24.068281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248878, 39.159557, 24.272251>,  <31.213192, 39.367310, 24.612200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248878, 39.159557, 24.272251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616329, 0.641504, -0.456740,
		0.782419, 0.564549, -0.262878,
		0.089215, -0.519381, -0.849873,
		31.275642, 39.003742, 24.017290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463310, 39.790874, 24.054871>,  <31.213192, 39.367310, 24.612200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463310, 39.790874, 24.054871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285700, 39.490471, 23.859390>,  <31.179132, 39.310230, 23.742102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285700, 39.490471, 23.859390>,  <31.463310, 39.790874, 24.054871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285700, 39.490471, 23.859390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536293, 0.659688, -0.526499,
		0.717795, 0.028309, -0.695678,
		-0.444026, -0.751007, -0.488703,
		31.152493, 39.265167, 23.712780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572884, 39.862953, 23.311230>,  <31.463310, 39.790874, 24.054871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572884, 39.862953, 23.311230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248926, 39.628586, 23.322395>,  <31.054552, 39.487965, 23.329094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248926, 39.628586, 23.322395>,  <31.572884, 39.862953, 23.311230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248926, 39.628586, 23.322395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477508, 0.630915, -0.611501,
		0.340676, -0.508579, -0.790752,
		-0.809893, -0.585914, 0.027913,
		31.005959, 39.452812, 23.330769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136383, 39.740208, 22.824347>,  <31.572884, 39.862953, 23.311230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136383, 39.740208, 22.824347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395149, 39.936565, 22.590931>,  <32.550411, 40.054379, 22.450882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395149, 39.936565, 22.590931>,  <32.136383, 39.740208, 22.824347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395149, 39.936565, 22.590931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761118, -0.462695, 0.454547,
		-0.046866, -0.738197, -0.672955,
		0.646918, 0.490895, -0.583539,
		32.589226, 40.083836, 22.415869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649830, 39.182251, 22.624102>,  <32.136383, 39.740208, 22.824347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649830, 39.182251, 22.624102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826843, 39.526321, 22.522701>,  <32.933052, 39.732765, 22.461861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826843, 39.526321, 22.522701>,  <32.649830, 39.182251, 22.624102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826843, 39.526321, 22.522701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856644, -0.321896, 0.403167,
		0.265194, -0.395573, -0.879315,
		0.442530, 0.860177, -0.253501,
		32.959602, 39.784374, 22.446651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193161, 38.995575, 22.331936>,  <32.649830, 39.182251, 22.624102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193161, 38.995575, 22.331936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.277550, 39.365917, 22.457331>,  <33.328182, 39.588123, 22.532568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.277550, 39.365917, 22.457331>,  <33.193161, 38.995575, 22.331936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277550, 39.365917, 22.457331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922733, -0.294465, 0.248704,
		0.322577, 0.236798, -0.916445,
		0.210968, 0.925860, 0.313489,
		33.340839, 39.643677, 22.551378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948177, 39.094559, 22.150227>,  <33.193161, 38.995575, 22.331936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948177, 39.094559, 22.150227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870296, 39.398979, 22.397741>,  <33.823566, 39.581631, 22.546249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870296, 39.398979, 22.397741>,  <33.948177, 39.094559, 22.150227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870296, 39.398979, 22.397741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913085, -0.089804, 0.397756,
		0.358281, 0.642450, -0.677416,
		-0.194704, 0.761047, 0.618787,
		33.811886, 39.627293, 22.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537468, 39.522846, 22.051264>,  <33.948177, 39.094559, 22.150227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537468, 39.522846, 22.051264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375042, 39.611950, 22.405775>,  <34.277588, 39.665413, 22.618483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375042, 39.611950, 22.405775>,  <34.537468, 39.522846, 22.051264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375042, 39.611950, 22.405775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904868, -0.037587, 0.424029,
		0.127768, 0.974149, -0.186302,
		-0.406065, 0.222756, 0.886279,
		34.253223, 39.678776, 22.671659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919147, 40.139927, 22.379534>,  <34.537468, 39.522846, 22.051264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919147, 40.139927, 22.379534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759857, 39.975491, 22.707539>,  <34.664284, 39.876827, 22.904341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759857, 39.975491, 22.707539>,  <34.919147, 40.139927, 22.379534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759857, 39.975491, 22.707539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901094, -0.008096, 0.433549,
		-0.171590, 0.911558, 0.373657,
		-0.398230, -0.411092, 0.820010,
		34.640388, 39.852161, 22.953541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179893, 40.494629, 22.909679>,  <34.919147, 40.139927, 22.379534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179893, 40.494629, 22.909679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084927, 40.140175, 23.068876>,  <35.027946, 39.927502, 23.164394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084927, 40.140175, 23.068876>,  <35.179893, 40.494629, 22.909679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084927, 40.140175, 23.068876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894124, -0.039195, 0.446101,
		-0.379707, 0.461765, 0.801621,
		-0.237413, -0.886136, 0.397993,
		35.013702, 39.874332, 23.188274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560856, 40.594471, 23.415619>,  <35.179893, 40.494629, 22.909679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560856, 40.594471, 23.415619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450447, 40.215698, 23.481499>,  <35.384201, 39.988434, 23.521027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450447, 40.215698, 23.481499>,  <35.560856, 40.594471, 23.415619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450447, 40.215698, 23.481499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873010, -0.175322, 0.455100,
		-0.402075, 0.269404, 0.875076,
		-0.276025, -0.946934, 0.164700,
		35.367638, 39.931618, 23.530909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431744, 40.457523, 24.186708>,  <35.560856, 40.594471, 23.415619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431744, 40.457523, 24.186708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539154, 40.136429, 23.973728>,  <35.603600, 39.943771, 23.845940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539154, 40.136429, 23.973728>,  <35.431744, 40.457523, 24.186708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539154, 40.136429, 23.973728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789075, -0.133731, 0.599563,
		-0.552499, -0.581139, 0.597513,
		0.268524, -0.802741, -0.532449,
		35.619713, 39.895607, 23.813993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445068, 39.879742, 24.653236>,  <35.431744, 40.457523, 24.186708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445068, 39.879742, 24.653236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663452, 39.771549, 24.336056>,  <35.794483, 39.706635, 24.145746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663452, 39.771549, 24.336056>,  <35.445068, 39.879742, 24.653236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663452, 39.771549, 24.336056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743639, -0.279518, 0.607347,
		-0.385917, -0.921256, 0.048532,
		0.545957, -0.270476, -0.792952,
		35.827240, 39.690407, 24.098169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584553, 39.218658, 24.939978>,  <35.445068, 39.879742, 24.653236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584553, 39.218658, 24.939978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843891, 39.342422, 24.661720>,  <35.999493, 39.416679, 24.494766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843891, 39.342422, 24.661720>,  <35.584553, 39.218658, 24.939978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843891, 39.342422, 24.661720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753572, -0.391048, 0.528404,
		-0.108536, -0.866803, -0.486696,
		0.648344, 0.309410, -0.695641,
		36.038395, 39.435246, 24.453028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920746, 38.667473, 24.842665>,  <35.584553, 39.218658, 24.939978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920746, 38.667473, 24.842665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154064, 38.934498, 24.657570>,  <36.294056, 39.094715, 24.546513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154064, 38.934498, 24.657570>,  <35.920746, 38.667473, 24.842665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154064, 38.934498, 24.657570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812246, -0.482975, 0.327096,
		-0.005131, -0.566648, -0.823944,
		0.583293, 0.667567, -0.462736,
		36.329052, 39.134769, 24.518749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335003, 38.245808, 24.448952>,  <35.920746, 38.667473, 24.842665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335003, 38.245808, 24.448952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553310, 38.577866, 24.494537>,  <36.684296, 38.777100, 24.521889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553310, 38.577866, 24.494537>,  <36.335003, 38.245808, 24.448952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553310, 38.577866, 24.494537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738279, -0.540724, 0.403189,
		0.396331, -0.135910, -0.907993,
		0.545771, 0.830148, 0.113966,
		36.717041, 38.826912, 24.528727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912964, 38.006840, 24.455055>,  <36.335003, 38.245808, 24.448952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912964, 38.006840, 24.455055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986664, 38.370777, 24.603779>,  <37.030884, 38.589138, 24.693014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986664, 38.370777, 24.603779>,  <36.912964, 38.006840, 24.455055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986664, 38.370777, 24.603779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785434, -0.363716, 0.500804,
		0.590884, 0.199758, -0.781634,
		0.184253, 0.909839, 0.371811,
		37.041939, 38.643730, 24.715322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.247883, 43.704033, 22.587690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057995, 43.462658, 22.843971>,  <33.944061, 43.317833, 22.997740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057995, 43.462658, 22.843971>,  <34.247883, 43.704033, 22.587690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057995, 43.462658, 22.843971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809180, 0.012886, -0.587420,
		0.346218, -0.797303, -0.494410,
		-0.474723, -0.603442, 0.640700,
		33.915577, 43.281624, 23.036182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125248, 43.059254, 22.250523>,  <34.247883, 43.704033, 22.587690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125248, 43.059254, 22.250523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855793, 43.115902, 22.540670>,  <33.694122, 43.149891, 22.714760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855793, 43.115902, 22.540670>,  <34.125248, 43.059254, 22.250523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855793, 43.115902, 22.540670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738989, -0.143190, -0.658325,
		0.010637, -0.979511, 0.201110,
		-0.673633, 0.141616, 0.725372,
		33.653702, 43.158386, 22.758282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667412, 42.562878, 22.032799>,  <34.125248, 43.059254, 22.250523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667412, 42.562878, 22.032799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483929, 42.788433, 22.307497>,  <33.373840, 42.923767, 22.472315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483929, 42.788433, 22.307497>,  <33.667412, 42.562878, 22.032799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483929, 42.788433, 22.307497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812313, 0.047170, -0.581311,
		-0.360189, -0.824502, 0.436417,
		-0.458707, 0.563889, 0.686744,
		33.346317, 42.957600, 22.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012817, 42.328533, 22.002588>,  <33.667412, 42.562878, 22.032799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012817, 42.328533, 22.002588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974998, 42.687511, 22.174934>,  <32.952305, 42.902901, 22.278343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974998, 42.687511, 22.174934>,  <33.012817, 42.328533, 22.002588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974998, 42.687511, 22.174934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739752, 0.226297, -0.633685,
		-0.666204, -0.378649, 0.642493,
		-0.094550, 0.897449, 0.430866,
		32.946632, 42.956745, 22.304193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251804, 42.463455, 22.143286>,  <33.012817, 42.328533, 22.002588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251804, 42.463455, 22.143286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443981, 42.814251, 22.146215>,  <32.559288, 43.024731, 22.147974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443981, 42.814251, 22.146215>,  <32.251804, 42.463455, 22.143286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443981, 42.814251, 22.146215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780674, 0.431456, -0.452100,
		-0.399650, 0.211491, 0.891937,
		0.480446, 0.876993, 0.007325,
		32.588116, 43.077351, 22.148413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794369, 42.908760, 22.435074>,  <32.251804, 42.463455, 22.143286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794369, 42.908760, 22.435074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047890, 43.135956, 22.225052>,  <32.200005, 43.272274, 22.099039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047890, 43.135956, 22.225052>,  <31.794369, 42.908760, 22.435074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047890, 43.135956, 22.225052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772916, 0.438855, -0.458265,
		-0.029866, 0.696274, 0.717155,
		0.633805, 0.567987, -0.525055,
		32.238029, 43.306351, 22.067535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521311, 43.585003, 22.554554>,  <31.794369, 42.908760, 22.435074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521311, 43.585003, 22.554554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747503, 43.602585, 22.225119>,  <31.883219, 43.613136, 22.027458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747503, 43.602585, 22.225119>,  <31.521311, 43.585003, 22.554554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747503, 43.602585, 22.225119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662304, 0.619300, -0.421689,
		0.491511, 0.783923, 0.379318,
		0.565483, 0.043959, -0.823588,
		31.917149, 43.615772, 21.978043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552141, 44.243614, 22.399012>,  <31.521311, 43.585003, 22.554554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552141, 44.243614, 22.399012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658361, 44.065742, 22.056845>,  <31.722094, 43.959019, 21.851543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658361, 44.065742, 22.056845>,  <31.552141, 44.243614, 22.399012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658361, 44.065742, 22.056845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607091, 0.612142, -0.506679,
		0.748948, 0.653866, -0.107406,
		0.265552, -0.444681, -0.855418,
		31.738028, 43.932339, 21.800219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571686, 44.790081, 21.946365>,  <31.552141, 44.243614, 22.399012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571686, 44.790081, 21.946365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.539087, 44.452259, 21.734673>,  <31.519527, 44.249565, 21.607656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.539087, 44.452259, 21.734673>,  <31.571686, 44.790081, 21.946365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539087, 44.452259, 21.734673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601514, 0.465068, -0.649532,
		0.794694, 0.265405, -0.545913,
		-0.081497, -0.844554, -0.529232,
		31.514639, 44.198895, 21.575903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595644, 45.048073, 21.302326>,  <31.571686, 44.790081, 21.946365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595644, 45.048073, 21.302326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.430861, 44.683685, 21.294039>,  <31.331991, 44.465054, 21.289066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.430861, 44.683685, 21.294039>,  <31.595644, 45.048073, 21.302326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430861, 44.683685, 21.294039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662826, 0.315192, -0.679203,
		0.625262, -0.266069, -0.733658,
		-0.411958, -0.910967, -0.020720,
		31.307274, 44.410397, 21.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469261, 44.874203, 20.582256>,  <31.595644, 45.048073, 21.302326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469261, 44.874203, 20.582256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219652, 44.643929, 20.793604>,  <31.069887, 44.505764, 20.920412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219652, 44.643929, 20.793604>,  <31.469261, 44.874203, 20.582256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219652, 44.643929, 20.793604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730320, 0.189211, -0.656378,
		0.277898, -0.795473, -0.538512,
		-0.624024, -0.575692, 0.528368,
		31.032444, 44.471222, 20.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886196, 44.882748, 20.157576>,  <31.469261, 44.874203, 20.582256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886196, 44.882748, 20.157576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744310, 44.654373, 20.453741>,  <30.659180, 44.517349, 20.631439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744310, 44.654373, 20.453741>,  <30.886196, 44.882748, 20.157576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744310, 44.654373, 20.453741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896387, -0.017493, -0.442927,
		0.265836, -0.820807, -0.505575,
		-0.354714, -0.570937, 0.740412,
		30.637896, 44.483093, 20.675865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644741, 44.214512, 19.842503>,  <30.886196, 44.882748, 20.157576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644741, 44.214512, 19.842503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488169, 44.336128, 20.189915>,  <30.394226, 44.409096, 20.398361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488169, 44.336128, 20.189915>,  <30.644741, 44.214512, 19.842503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488169, 44.336128, 20.189915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890738, 0.111760, -0.440562,
		-0.231015, -0.946081, 0.227074,
		-0.391430, 0.304039, 0.868529,
		30.370739, 44.427341, 20.450474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977814, 43.815853, 20.086454>,  <30.644741, 44.214512, 19.842503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977814, 43.815853, 20.086454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000170, 44.183643, 20.242113>,  <30.013582, 44.404320, 20.335508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000170, 44.183643, 20.242113>,  <29.977814, 43.815853, 20.086454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000170, 44.183643, 20.242113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879069, 0.230116, -0.417473,
		-0.473407, -0.318753, 0.821147,
		0.055888, 0.919480, 0.389145,
		30.016935, 44.459488, 20.358856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393946, 43.574734, 19.557592>,  <29.977814, 43.815853, 20.086454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393946, 43.574734, 19.557592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202469, 43.282764, 19.362423>,  <29.087582, 43.107582, 19.245321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202469, 43.282764, 19.362423>,  <29.393946, 43.574734, 19.557592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202469, 43.282764, 19.362423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302411, -0.658804, 0.688857,
		-0.824257, 0.182198, 0.536101,
		-0.478694, -0.729919, -0.487925,
		29.058861, 43.063789, 19.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071302, 43.331657, 20.077982>,  <29.393946, 43.574734, 19.557592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071302, 43.331657, 20.077982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.072418, 43.044758, 19.799257>,  <29.073088, 42.872620, 19.632023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.072418, 43.044758, 19.799257>,  <29.071302, 43.331657, 20.077982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072418, 43.044758, 19.799257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324482, -0.658461, 0.679073,
		-0.945888, -0.227999, 0.230896,
		0.002792, -0.717248, -0.696812,
		29.073256, 42.829582, 19.590214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869310, 42.777203, 20.357250>,  <29.071302, 43.331657, 20.077982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869310, 42.777203, 20.357250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090725, 42.655430, 20.047174>,  <29.223574, 42.582367, 19.861130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090725, 42.655430, 20.047174>,  <28.869310, 42.777203, 20.357250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090725, 42.655430, 20.047174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490942, -0.632596, 0.598997,
		-0.672733, -0.712141, -0.200710,
		0.553539, -0.304429, -0.775189,
		29.256786, 42.564102, 19.814617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134096, 42.200726, 20.646608>,  <28.869310, 42.777203, 20.357250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134096, 42.200726, 20.646608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.347593, 42.232975, 20.309891>,  <29.475693, 42.252323, 20.107861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.347593, 42.232975, 20.309891>,  <29.134096, 42.200726, 20.646608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347593, 42.232975, 20.309891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770289, -0.457126, 0.444625,
		-0.348959, -0.885741, -0.306090,
		0.533744, 0.080622, -0.841794,
		29.507717, 42.257160, 20.057352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179955, 41.505554, 20.494394>,  <29.134096, 42.200726, 20.646608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179955, 41.505554, 20.494394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455978, 41.734612, 20.317352>,  <29.621593, 41.872044, 20.211128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455978, 41.734612, 20.317352>,  <29.179955, 41.505554, 20.494394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455978, 41.734612, 20.317352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723282, -0.567663, 0.393220,
		-0.026076, -0.591473, -0.805903,
		0.690060, 0.572642, -0.442604,
		29.662996, 41.906403, 20.184570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636398, 41.058353, 20.262650>,  <29.179955, 41.505554, 20.494394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636398, 41.058353, 20.262650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.865965, 41.385830, 20.270311>,  <30.003706, 41.582314, 20.274908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.865965, 41.385830, 20.270311>,  <29.636398, 41.058353, 20.262650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865965, 41.385830, 20.270311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743190, -0.530532, 0.407682,
		0.343927, -0.219739, -0.912923,
		0.573919, 0.818688, 0.019156,
		30.038141, 41.631435, 20.276058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265545, 40.889912, 19.967165>,  <29.636398, 41.058353, 20.262650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265545, 40.889912, 19.967165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318106, 41.199539, 20.214890>,  <30.349642, 41.385315, 20.363523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318106, 41.199539, 20.214890>,  <30.265545, 40.889912, 19.967165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318106, 41.199539, 20.214890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741353, -0.491477, 0.456997,
		0.658126, 0.399077, -0.638442,
		0.131403, 0.774073, 0.619310,
		30.357527, 41.431763, 20.400682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041557, 40.840172, 19.969782>,  <30.265545, 40.889912, 19.967165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041557, 40.840172, 19.969782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932592, 41.083736, 20.267780>,  <30.867214, 41.229874, 20.446579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932592, 41.083736, 20.267780>,  <31.041557, 40.840172, 19.969782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932592, 41.083736, 20.267780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779565, -0.314163, 0.541830,
		0.563977, 0.728373, -0.389106,
		-0.272411, 0.608913, 0.744995,
		30.850868, 41.266411, 20.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588104, 41.233330, 20.097128>,  <31.041557, 40.840172, 19.969782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588104, 41.233330, 20.097128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383709, 41.250290, 20.440544>,  <31.261072, 41.260468, 20.646593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383709, 41.250290, 20.440544>,  <31.588104, 41.233330, 20.097128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383709, 41.250290, 20.440544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808860, -0.314312, 0.496943,
		0.290923, 0.948372, 0.126310,
		-0.510988, 0.042405, 0.858541,
		31.230413, 41.263012, 20.698107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999735, 41.545105, 20.622866>,  <31.588104, 41.233330, 20.097128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999735, 41.545105, 20.622866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733160, 41.339439, 20.838827>,  <31.573215, 41.216038, 20.968403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733160, 41.339439, 20.838827>,  <31.999735, 41.545105, 20.622866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733160, 41.339439, 20.838827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730407, -0.304992, 0.611135,
		-0.149559, 0.801631, 0.578809,
		-0.666437, -0.514167, 0.539902,
		31.533230, 41.185188, 21.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226234, 41.680038, 21.266762>,  <31.999735, 41.545105, 20.622866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226234, 41.680038, 21.266762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981232, 41.367836, 21.316792>,  <31.834230, 41.180515, 21.346809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981232, 41.367836, 21.316792>,  <32.226234, 41.680038, 21.266762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981232, 41.367836, 21.316792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631472, -0.387968, 0.671359,
		-0.475476, 0.490193, 0.730502,
		-0.612507, -0.780507, 0.125074,
		31.797480, 41.133682, 21.354313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091805, 41.615154, 21.949295>,  <32.226234, 41.680038, 21.266762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091805, 41.615154, 21.949295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.012764, 41.245872, 21.817444>,  <31.965342, 41.024303, 21.738333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.012764, 41.245872, 21.817444>,  <32.091805, 41.615154, 21.949295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012764, 41.245872, 21.817444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436827, -0.383951, 0.813489,
		-0.877575, 0.016753, 0.479147,
		-0.197597, -0.923202, -0.329628,
		31.953485, 40.968910, 21.718555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059101, 41.235062, 22.560036>,  <32.091805, 41.615154, 21.949295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059101, 41.235062, 22.560036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099724, 40.963387, 22.269272>,  <32.124100, 40.800385, 22.094814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099724, 40.963387, 22.269272>,  <32.059101, 41.235062, 22.560036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099724, 40.963387, 22.269272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525560, -0.583769, 0.618871,
		-0.844673, -0.444887, 0.297663,
		0.101561, -0.679183, -0.726908,
		32.130192, 40.759632, 22.051199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941330, 40.515934, 22.864956>,  <32.059101, 41.235062, 22.560036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941330, 40.515934, 22.864956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146774, 40.451103, 22.527925>,  <32.270042, 40.412205, 22.325708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146774, 40.451103, 22.527925>,  <31.941330, 40.515934, 22.864956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146774, 40.451103, 22.527925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514907, -0.727294, 0.453777,
		-0.686347, -0.666914, -0.290093,
		0.513613, -0.162077, -0.842575,
		32.300858, 40.402481, 22.275152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279341, 39.985584, 22.641151>,  <31.941330, 40.515934, 22.864956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279341, 39.985584, 22.641151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006420, 39.787281, 22.856071>,  <30.842669, 39.668301, 22.985023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006420, 39.787281, 22.856071>,  <31.279341, 39.985584, 22.641151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006420, 39.787281, 22.856071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731015, 0.471692, -0.493075,
		-0.008995, -0.729199, -0.684242,
		-0.682302, -0.495756, 0.537299,
		30.801729, 39.638554, 23.017262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637453, 39.851112, 22.156176>,  <31.279341, 39.985584, 22.641151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637453, 39.851112, 22.156176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518175, 39.813450, 22.536116>,  <30.446608, 39.790852, 22.764080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518175, 39.813450, 22.536116>,  <30.637453, 39.851112, 22.156176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518175, 39.813450, 22.536116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881798, 0.408117, -0.236375,
		-0.365394, -0.908061, -0.204725,
		-0.298194, -0.094156, 0.949850,
		30.428717, 39.785202, 22.821070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001606, 39.510441, 22.263985>,  <30.637453, 39.851112, 22.156176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001606, 39.510441, 22.263985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.007822, 39.704964, 22.613443>,  <30.011551, 39.821678, 22.823118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.007822, 39.704964, 22.613443>,  <30.001606, 39.510441, 22.263985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007822, 39.704964, 22.613443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888826, 0.406929, -0.210706,
		-0.457981, -0.773246, 0.438570,
		0.015539, 0.486312, 0.873647,
		30.012484, 39.850857, 22.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395367, 39.362759, 22.521833>,  <30.001606, 39.510441, 22.263985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395367, 39.362759, 22.521833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.508257, 39.699570, 22.705721>,  <29.575991, 39.901657, 22.816053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.508257, 39.699570, 22.705721>,  <29.395367, 39.362759, 22.521833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508257, 39.699570, 22.705721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918608, 0.375356, -0.123558,
		-0.276597, -0.387431, 0.879427,
		0.282228, 0.842024, 0.459720,
		29.592926, 39.952175, 22.843637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851158, 39.535999, 22.868666>,  <29.395367, 39.362759, 22.521833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851158, 39.535999, 22.868666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.040211, 39.887688, 22.892641>,  <29.153643, 40.098701, 22.907026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.040211, 39.887688, 22.892641>,  <28.851158, 39.535999, 22.868666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040211, 39.887688, 22.892641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863078, 0.475554, -0.170133,
		-0.178089, 0.028677, 0.983596,
		0.472632, 0.879219, 0.059940,
		29.182001, 40.151455, 22.910624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511477, 40.016846, 23.437666>,  <28.851158, 39.535999, 22.868666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511477, 40.016846, 23.437666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.697001, 40.234169, 23.157751>,  <28.808315, 40.364563, 22.989803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.697001, 40.234169, 23.157751>,  <28.511477, 40.016846, 23.437666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697001, 40.234169, 23.157751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831902, 0.538720, -0.133120,
		0.304663, 0.643895, 0.701840,
		0.463810, 0.543306, -0.699785,
		28.836143, 40.397160, 22.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149115, 40.624786, 23.474674>,  <28.511477, 40.016846, 23.437666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149115, 40.624786, 23.474674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.331392, 40.679104, 23.122787>,  <28.440760, 40.711697, 22.911655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.331392, 40.679104, 23.122787>,  <28.149115, 40.624786, 23.474674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331392, 40.679104, 23.122787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782000, 0.533193, -0.322770,
		0.425228, 0.835023, 0.349166,
		0.455694, 0.135797, -0.879717,
		28.468100, 40.719845, 22.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321674, 41.117821, 24.060493>,  <28.149115, 40.624786, 23.474674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321674, 41.117821, 24.060493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.062126, 41.071243, 24.361267>,  <27.906397, 41.043297, 24.541731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.062126, 41.071243, 24.361267>,  <28.321674, 41.117821, 24.060493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062126, 41.071243, 24.361267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601461, -0.683792, 0.413127,
		0.466060, 0.720326, 0.513731,
		-0.648871, -0.116447, 0.751935,
		27.867464, 41.036308, 24.586847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714746, 40.957821, 24.671007>,  <28.321674, 41.117821, 24.060493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714746, 40.957821, 24.671007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.361940, 40.809666, 24.787529>,  <28.150257, 40.720772, 24.857443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.361940, 40.809666, 24.787529>,  <28.714746, 40.957821, 24.671007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361940, 40.809666, 24.787529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464510, -0.787365, 0.405324,
		0.079236, 0.492816, 0.866518,
		-0.882016, -0.370390, 0.291306,
		28.097336, 40.698547, 24.874920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989117, 40.581882, 25.320988>,  <28.714746, 40.957821, 24.671007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989117, 40.581882, 25.320988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.624472, 40.435719, 25.245687>,  <28.405685, 40.348019, 25.200508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.624472, 40.435719, 25.245687>,  <28.989117, 40.581882, 25.320988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624472, 40.435719, 25.245687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321052, -0.918948, 0.229042,
		-0.256685, 0.148360, 0.955040,
		-0.911613, -0.365410, -0.188249,
		28.350988, 40.326096, 25.189213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733345, 40.189007, 25.903193>,  <28.989117, 40.581882, 25.320988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733345, 40.189007, 25.903193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.563456, 40.052979, 25.567583>,  <28.461521, 39.971363, 25.366217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.563456, 40.052979, 25.567583>,  <28.733345, 40.189007, 25.903193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563456, 40.052979, 25.567583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202822, -0.938953, 0.277902,
		-0.882311, -0.052141, 0.467770,
		-0.424724, -0.340070, -0.839024,
		28.436039, 39.950958, 25.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155251, 39.686626, 26.227852>,  <28.733345, 40.189007, 25.903193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155251, 39.686626, 26.227852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.234022, 39.589680, 25.847857>,  <28.281284, 39.531509, 25.619860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.234022, 39.589680, 25.847857>,  <28.155251, 39.686626, 26.227852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234022, 39.589680, 25.847857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046307, -0.965581, 0.255947,
		-0.979324, -0.094394, -0.178926,
		0.196928, -0.242370, -0.949987,
		28.293100, 39.516968, 25.562860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735882, 39.026493, 26.065636>,  <28.155251, 39.686626, 26.227852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735882, 39.026493, 26.065636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023304, 39.063606, 25.789934>,  <28.195757, 39.085876, 25.624514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023304, 39.063606, 25.789934>,  <27.735882, 39.026493, 26.065636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023304, 39.063606, 25.789934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188148, -0.980039, 0.064217,
		-0.669536, -0.175826, -0.721670,
		0.718555, 0.092785, -0.689253,
		28.238871, 39.091442, 25.583158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622925, 38.508057, 25.652048>,  <27.735882, 39.026493, 26.065636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622925, 38.508057, 25.652048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.005796, 38.613541, 25.604271>,  <28.235519, 38.676830, 25.575603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.005796, 38.613541, 25.604271>,  <27.622925, 38.508057, 25.652048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005796, 38.613541, 25.604271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272678, -0.959842, 0.065958,
		-0.097254, -0.095703, -0.990647,
		0.957177, 0.263713, -0.119445,
		28.292950, 38.692654, 25.568438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.442841, 44.883823, 23.210180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626364, 44.645645, 22.946379>,  <28.736479, 44.502739, 22.788097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626364, 44.645645, 22.946379>,  <28.442841, 44.883823, 23.210180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626364, 44.645645, 22.946379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469280, -0.467882, 0.748908,
		-0.754501, -0.653096, 0.064760,
		0.458809, -0.595442, -0.659502,
		28.764006, 44.467014, 22.748528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303719, 44.193542, 23.351997>,  <28.442841, 44.883823, 23.210180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303719, 44.193542, 23.351997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.647896, 44.230080, 23.151478>,  <28.854403, 44.252003, 23.031166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.647896, 44.230080, 23.151478>,  <28.303719, 44.193542, 23.351997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647896, 44.230080, 23.151478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473368, -0.507390, 0.720054,
		-0.188584, -0.856862, -0.479816,
		0.860441, 0.091339, -0.501297,
		28.906029, 44.257481, 23.001089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808561, 43.409363, 23.441217>,  <28.303719, 44.193542, 23.351997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808561, 43.409363, 23.441217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045904, 43.718502, 23.351215>,  <29.188309, 43.903988, 23.297215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045904, 43.718502, 23.351215>,  <28.808561, 43.409363, 23.441217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045904, 43.718502, 23.351215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632527, -0.274791, 0.724154,
		0.497835, -0.572004, -0.651899,
		0.593355, 0.772853, -0.225007,
		29.223911, 43.950359, 23.283712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546452, 43.101875, 23.373390>,  <28.808561, 43.409363, 23.441217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546452, 43.101875, 23.373390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584829, 43.496998, 23.422443>,  <29.607857, 43.734070, 23.451876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584829, 43.496998, 23.422443>,  <29.546452, 43.101875, 23.373390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584829, 43.496998, 23.422443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632862, -0.155632, 0.758461,
		0.768296, 0.004839, -0.640076,
		0.095946, 0.987803, 0.122634,
		29.613613, 43.793339, 23.459234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267530, 43.139374, 23.523191>,  <29.546452, 43.101875, 23.373390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267530, 43.139374, 23.523191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130808, 43.485622, 23.669544>,  <30.048775, 43.693371, 23.757357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130808, 43.485622, 23.669544>,  <30.267530, 43.139374, 23.523191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130808, 43.485622, 23.669544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431664, -0.201217, 0.879305,
		0.834767, 0.458489, -0.304880,
		-0.341804, 0.865621, 0.365882,
		30.028267, 43.745308, 23.779308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910200, 43.354977, 23.780540>,  <30.267530, 43.139374, 23.523191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910200, 43.354977, 23.780540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624456, 43.582771, 23.943207>,  <30.453011, 43.719448, 24.040806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624456, 43.582771, 23.943207>,  <30.910200, 43.354977, 23.780540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624456, 43.582771, 23.943207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525116, 0.052129, 0.849433,
		0.462541, 0.820346, -0.336285,
		-0.714359, 0.569486, 0.406665,
		30.410149, 43.753616, 24.065207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217989, 44.024151, 24.083584>,  <30.910200, 43.354977, 23.780540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217989, 44.024151, 24.083584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882055, 43.917011, 24.272448>,  <30.680494, 43.852726, 24.385767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882055, 43.917011, 24.272448>,  <31.217989, 44.024151, 24.083584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882055, 43.917011, 24.272448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513276, -0.108680, 0.851315,
		-0.176709, 0.957312, 0.228753,
		-0.839834, -0.267849, 0.472160,
		30.630104, 43.836658, 24.414095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236780, 44.380375, 24.775732>,  <31.217989, 44.024151, 24.083584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236780, 44.380375, 24.775732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956314, 44.098671, 24.820244>,  <30.788034, 43.929649, 24.846951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956314, 44.098671, 24.820244>,  <31.236780, 44.380375, 24.775732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956314, 44.098671, 24.820244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376747, -0.233454, 0.896415,
		-0.605331, 0.670461, 0.429018,
		-0.701168, -0.704260, 0.111277,
		30.745964, 43.887394, 24.853626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981245, 44.585545, 25.403477>,  <31.236780, 44.380375, 24.775732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981245, 44.585545, 25.403477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.878727, 44.204933, 25.335480>,  <30.817215, 43.976566, 25.294682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.878727, 44.204933, 25.335480>,  <30.981245, 44.585545, 25.403477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878727, 44.204933, 25.335480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439503, -0.271356, 0.856273,
		-0.860900, 0.144747, 0.487749,
		-0.256296, -0.951533, -0.169994,
		30.801838, 43.919472, 25.284481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707911, 44.304348, 26.008280>,  <30.981245, 44.585545, 25.403477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707911, 44.304348, 26.008280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789413, 43.957016, 25.827398>,  <30.838314, 43.748615, 25.718870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789413, 43.957016, 25.827398>,  <30.707911, 44.304348, 26.008280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789413, 43.957016, 25.827398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543509, -0.283850, 0.789954,
		-0.814298, -0.406733, 0.414109,
		0.203756, -0.868330, -0.452202,
		30.850540, 43.696518, 25.691738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723515, 43.986801, 26.565771>,  <30.707911, 44.304348, 26.008280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723515, 43.986801, 26.565771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912352, 43.771160, 26.286774>,  <31.025654, 43.641773, 26.119375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912352, 43.771160, 26.286774>,  <30.723515, 43.986801, 26.565771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912352, 43.771160, 26.286774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619535, -0.359979, 0.697561,
		-0.627141, -0.761433, 0.164051,
		0.472091, -0.539105, -0.697492,
		31.053980, 43.609428, 26.077526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795073, 43.272930, 26.764257>,  <30.723515, 43.986801, 26.565771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795073, 43.272930, 26.764257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076305, 43.300484, 26.481152>,  <31.245045, 43.317017, 26.311289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076305, 43.300484, 26.481152>,  <30.795073, 43.272930, 26.764257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076305, 43.300484, 26.481152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622799, -0.540024, 0.566123,
		-0.343212, -0.838826, -0.422584,
		0.703084, 0.068884, -0.707763,
		31.287231, 43.321148, 26.268824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397526, 42.605892, 26.440138>,  <30.795073, 43.272930, 26.764257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397526, 42.605892, 26.440138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124805, 42.488377, 26.708120>,  <29.961174, 42.417870, 26.868910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124805, 42.488377, 26.708120>,  <30.397526, 42.605892, 26.440138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124805, 42.488377, 26.708120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686695, 0.572744, -0.447677,
		-0.252192, -0.765281, -0.592237,
		-0.681798, -0.293786, 0.669956,
		29.920265, 42.400242, 26.909107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798500, 42.664028, 26.039310>,  <30.397526, 42.605892, 26.440138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798500, 42.664028, 26.039310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647358, 42.592781, 26.402739>,  <29.556673, 42.550034, 26.620796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647358, 42.592781, 26.402739>,  <29.798500, 42.664028, 26.039310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647358, 42.592781, 26.402739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813410, 0.532606, -0.233869,
		-0.442255, -0.827409, -0.346128,
		-0.377856, -0.178114, 0.908571,
		29.534000, 42.539349, 26.675310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136629, 42.394081, 25.923338>,  <29.798500, 42.664028, 26.039310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136629, 42.394081, 25.923338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131235, 42.550484, 26.291454>,  <29.127998, 42.644325, 26.512323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131235, 42.550484, 26.291454>,  <29.136629, 42.394081, 25.923338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131235, 42.550484, 26.291454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858466, 0.467386, -0.211156,
		-0.512694, -0.792884, 0.329362,
		-0.013483, 0.391005, 0.920290,
		29.127190, 42.667786, 26.567541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434855, 42.312645, 26.240250>,  <29.136629, 42.394081, 25.923338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434855, 42.312645, 26.240250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605927, 42.621147, 26.428823>,  <28.708570, 42.806248, 26.541967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605927, 42.621147, 26.428823>,  <28.434855, 42.312645, 26.240250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605927, 42.621147, 26.428823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837543, 0.534287, -0.114275,
		-0.340017, -0.345974, 0.874466,
		0.427680, 0.771258, 0.471435,
		28.734230, 42.852524, 26.570253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951694, 42.515640, 26.704786>,  <28.434855, 42.312645, 26.240250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951694, 42.515640, 26.704786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206158, 42.815277, 26.630859>,  <28.358835, 42.995060, 26.586504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206158, 42.815277, 26.630859>,  <27.951694, 42.515640, 26.704786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206158, 42.815277, 26.630859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771116, 0.625394, -0.119427,
		0.026122, 0.218490, 0.975489,
		0.636159, 0.749096, -0.184818,
		28.397005, 43.040005, 26.575415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663849, 43.102631, 27.052551>,  <27.951694, 42.515640, 26.704786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663849, 43.102631, 27.052551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923517, 43.288410, 26.811598>,  <28.079319, 43.399876, 26.667027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923517, 43.288410, 26.811598>,  <27.663849, 43.102631, 27.052551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923517, 43.288410, 26.811598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635281, 0.766590, -0.093576,
		0.418320, 0.443430, 0.792703,
		0.649173, 0.464444, -0.602383,
		28.118269, 43.427742, 26.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813334, 43.810387, 27.315384>,  <27.663849, 43.102631, 27.052551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813334, 43.810387, 27.315384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888023, 43.834724, 26.923174>,  <27.932838, 43.849327, 26.687847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888023, 43.834724, 26.923174>,  <27.813334, 43.810387, 27.315384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888023, 43.834724, 26.923174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594609, 0.801504, -0.063502,
		0.782032, 0.594887, 0.185839,
		0.186727, 0.060841, -0.980526,
		27.944042, 43.852978, 26.629017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008923, 44.549526, 27.174976>,  <27.813334, 43.810387, 27.315384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008923, 44.549526, 27.174976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886663, 44.386341, 26.830849>,  <27.813309, 44.288429, 26.624372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886663, 44.386341, 26.830849>,  <28.008923, 44.549526, 27.174976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886663, 44.386341, 26.830849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542150, 0.817349, -0.194971,
		0.782721, 0.406829, -0.470997,
		-0.305649, -0.407959, -0.860319,
		27.794970, 44.263954, 26.572752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977119, 45.079784, 26.721571>,  <28.008923, 44.549526, 27.174976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977119, 45.079784, 26.721571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776405, 44.808762, 26.506489>,  <27.655977, 44.646149, 26.377439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776405, 44.808762, 26.506489>,  <27.977119, 45.079784, 26.721571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776405, 44.808762, 26.506489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538399, 0.731183, -0.418925,
		0.677004, 0.079287, -0.731696,
		-0.501788, -0.677558, -0.537702,
		27.625870, 44.605495, 26.345179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946642, 45.328701, 26.004690>,  <27.977119, 45.079784, 26.721571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946642, 45.328701, 26.004690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652441, 45.059139, 26.032658>,  <27.475920, 44.897404, 26.049438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652441, 45.059139, 26.032658>,  <27.946642, 45.328701, 26.004690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652441, 45.059139, 26.032658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609523, 0.613091, -0.502595,
		0.295836, -0.412276, -0.861690,
		-0.735502, -0.673905, 0.069917,
		27.431791, 44.856968, 26.053633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770571, 45.413090, 25.387308>,  <27.946642, 45.328701, 26.004690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770571, 45.413090, 25.387308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466015, 45.238731, 25.579260>,  <27.283281, 45.134117, 25.694431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466015, 45.238731, 25.579260>,  <27.770571, 45.413090, 25.387308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466015, 45.238731, 25.579260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648203, 0.524369, -0.552150,
		-0.010956, -0.731461, -0.681795,
		-0.761389, -0.435892, 0.479880,
		27.237598, 45.107964, 25.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387300, 45.196907, 24.851265>,  <27.770571, 45.413090, 25.387308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387300, 45.196907, 24.851265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151934, 45.230190, 25.172972>,  <27.010714, 45.250160, 25.365995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151934, 45.230190, 25.172972>,  <27.387300, 45.196907, 24.851265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151934, 45.230190, 25.172972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705104, 0.434011, -0.560771,
		-0.395723, -0.897057, -0.196704,
		-0.588415, 0.083213, 0.804266,
		26.975409, 45.255154, 25.414251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793436, 45.061802, 24.559813>,  <27.387300, 45.196907, 24.851265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793436, 45.061802, 24.559813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.713409, 45.266403, 24.894079>,  <26.665394, 45.389164, 25.094639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.713409, 45.266403, 24.894079>,  <26.793436, 45.061802, 24.559813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713409, 45.266403, 24.894079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614539, 0.598771, -0.513629,
		-0.763096, -0.616309, 0.194545,
		-0.200066, 0.511504, 0.835666,
		26.653389, 45.419853, 25.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116840, 44.399532, 24.386700>,  <26.793436, 45.061802, 24.559813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116840, 44.399532, 24.386700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858286, 44.190834, 24.164000>,  <26.703154, 44.065617, 24.030380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858286, 44.190834, 24.164000>,  <27.116840, 44.399532, 24.386700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858286, 44.190834, 24.164000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281446, -0.841256, 0.461602,
		-0.709206, 0.141678, 0.690619,
		-0.646386, -0.521743, -0.556749,
		26.664370, 44.034309, 23.996975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738510, 43.869701, 24.852798>,  <27.116840, 44.399532, 24.386700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738510, 43.869701, 24.852798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691479, 43.754044, 24.472784>,  <26.663260, 43.684647, 24.244776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691479, 43.754044, 24.472784>,  <26.738510, 43.869701, 24.852798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691479, 43.754044, 24.472784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219550, -0.940568, 0.259095,
		-0.968490, -0.178116, 0.174074,
		-0.117579, -0.289149, -0.950036,
		26.656204, 43.667297, 24.187773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295389, 43.351265, 24.832939>,  <26.738510, 43.869701, 24.852798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295389, 43.351265, 24.832939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504732, 43.301815, 24.495701>,  <26.630339, 43.272144, 24.293358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504732, 43.301815, 24.495701>,  <26.295389, 43.351265, 24.832939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504732, 43.301815, 24.495701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158398, -0.958061, 0.238809,
		-0.837261, -0.258528, -0.481827,
		0.523359, -0.123625, -0.843097,
		26.661739, 43.264729, 24.242771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991982, 42.825363, 24.559845>,  <26.295389, 43.351265, 24.832939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991982, 42.825363, 24.559845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.348015, 42.822140, 24.377554>,  <26.561634, 42.820206, 24.268179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.348015, 42.822140, 24.377554>,  <25.991982, 42.825363, 24.559845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348015, 42.822140, 24.377554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164466, -0.926804, 0.337616,
		-0.425092, -0.375458, -0.823607,
		0.890083, -0.008062, -0.455727,
		26.615040, 42.819721, 24.240835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132114, 42.112465, 24.489985>,  <25.991982, 42.825363, 24.559845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132114, 42.112465, 24.489985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492146, 42.244469, 24.376173>,  <26.708164, 42.323669, 24.307886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492146, 42.244469, 24.376173>,  <26.132114, 42.112465, 24.489985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492146, 42.244469, 24.376173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375894, -0.918329, 0.123994,
		-0.220370, -0.218556, -0.950615,
		0.900078, 0.330006, -0.284527,
		26.762169, 42.343472, 24.290815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374771, 41.707558, 23.858831>,  <26.132114, 42.112465, 24.489985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374771, 41.707558, 23.858831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663652, 41.857071, 24.091627>,  <26.836981, 41.946777, 24.231304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663652, 41.857071, 24.091627>,  <26.374771, 41.707558, 23.858831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663652, 41.857071, 24.091627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391702, -0.914503, 0.101265,
		0.570082, 0.154833, -0.806866,
		0.722202, 0.373780, 0.581990,
		26.880314, 41.969204, 24.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927048, 41.254360, 23.713488>,  <26.374771, 41.707558, 23.858831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927048, 41.254360, 23.713488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063301, 41.445274, 24.037504>,  <27.145052, 41.559822, 24.231915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063301, 41.445274, 24.037504>,  <26.927048, 41.254360, 23.713488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063301, 41.445274, 24.037504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382906, -0.857303, 0.344115,
		0.858693, 0.192954, -0.474779,
		0.340631, 0.477285, 0.810043,
		27.165491, 41.588459, 24.280518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560034, 41.032932, 23.764261>,  <26.927048, 41.254360, 23.713488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560034, 41.032932, 23.764261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508755, 41.146530, 24.144348>,  <27.477987, 41.214687, 24.372400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508755, 41.146530, 24.144348>,  <27.560034, 41.032932, 23.764261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508755, 41.146530, 24.144348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500308, -0.808752, 0.309213,
		0.856305, 0.515041, -0.038406,
		-0.128196, 0.283995, 0.950217,
		27.470295, 41.231728, 24.429413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993198, 41.343575, 23.363447>,  <27.560034, 41.032932, 23.764261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993198, 41.343575, 23.363447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100428, 41.187630, 23.011051>,  <28.164764, 41.094063, 22.799614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100428, 41.187630, 23.011051>,  <27.993198, 41.343575, 23.363447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100428, 41.187630, 23.011051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673048, 0.578506, -0.460802,
		0.689306, 0.716478, -0.107312,
		0.268074, -0.389859, -0.880992,
		28.180849, 41.070671, 22.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097477, 41.937248, 22.920357>,  <27.993198, 41.343575, 23.363447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097477, 41.937248, 22.920357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018906, 41.621635, 22.687517>,  <27.971764, 41.432266, 22.547813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018906, 41.621635, 22.687517>,  <28.097477, 41.937248, 22.920357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018906, 41.621635, 22.687517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630849, 0.556177, -0.541016,
		0.750630, 0.260947, -0.607010,
		-0.196428, -0.789034, -0.582101,
		27.959976, 41.384926, 22.512886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996759, 42.171383, 22.234684>,  <28.097477, 41.937248, 22.920357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996759, 42.171383, 22.234684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825544, 41.811188, 22.203951>,  <27.722816, 41.595070, 22.185511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825544, 41.811188, 22.203951>,  <27.996759, 42.171383, 22.234684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825544, 41.811188, 22.203951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472836, 0.295584, -0.830094,
		0.770202, -0.318981, -0.552305,
		-0.428037, -0.900490, -0.076834,
		27.697134, 41.541042, 22.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012754, 41.922131, 21.555630>,  <27.996759, 42.171383, 22.234684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012754, 41.922131, 21.555630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709047, 41.696182, 21.684891>,  <27.526823, 41.560612, 21.762447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709047, 41.696182, 21.684891>,  <28.012754, 41.922131, 21.555630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709047, 41.696182, 21.684891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454369, 0.104644, -0.884646,
		0.465899, -0.818514, -0.336114,
		-0.759268, -0.564876, 0.323154,
		27.481266, 41.526718, 21.781837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927078, 41.259064, 21.098614>,  <28.012754, 41.922131, 21.555630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927078, 41.259064, 21.098614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580385, 41.324757, 21.286995>,  <27.372370, 41.364174, 21.400024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580385, 41.324757, 21.286995>,  <27.927078, 41.259064, 21.098614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580385, 41.324757, 21.286995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461037, 0.096468, -0.882122,
		-0.190306, -0.981693, -0.007894,
		-0.866734, 0.164233, 0.470955,
		27.320364, 41.374027, 21.428282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483774, 40.842419, 20.759613>,  <27.927078, 41.259064, 21.098614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483774, 40.842419, 20.759613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250324, 41.109074, 20.945076>,  <27.110254, 41.269066, 21.056355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250324, 41.109074, 20.945076>,  <27.483774, 40.842419, 20.759613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250324, 41.109074, 20.945076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522643, 0.128618, -0.842794,
		-0.621471, -0.734204, 0.273347,
		-0.583626, 0.666635, 0.463659,
		27.075237, 41.309063, 21.084173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870092, 40.558891, 20.579510>,  <27.483774, 40.842419, 20.759613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870092, 40.558891, 20.579510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851385, 40.943737, 20.686958>,  <26.840160, 41.174644, 20.751427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851385, 40.943737, 20.686958>,  <26.870092, 40.558891, 20.579510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851385, 40.943737, 20.686958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530967, 0.203836, -0.822511,
		-0.846101, -0.181097, 0.501316,
		-0.046768, 0.962109, 0.268622,
		26.837355, 41.232368, 20.767546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293215, 40.759483, 20.350990>,  <26.870092, 40.558891, 20.579510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293215, 40.759483, 20.350990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.454206, 41.110973, 20.453636>,  <26.550800, 41.321869, 20.515223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.454206, 41.110973, 20.453636>,  <26.293215, 40.759483, 20.350990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454206, 41.110973, 20.453636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590723, 0.463449, -0.660501,
		-0.699327, 0.114250, 0.705612,
		0.402478, 0.878727, 0.256613,
		26.574949, 41.374592, 20.530621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757896, 41.327545, 20.284883>,  <26.293215, 40.759483, 20.350990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757896, 41.327545, 20.284883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117270, 41.486744, 20.210678>,  <26.332893, 41.582264, 20.166155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117270, 41.486744, 20.210678>,  <25.757896, 41.327545, 20.284883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117270, 41.486744, 20.210678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394197, 0.544899, -0.740063,
		-0.193456, 0.738027, 0.646445,
		0.898434, 0.397996, -0.185515,
		26.386799, 41.606144, 20.155024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.659458, 34.179474, 29.105520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915653, 33.934250, 28.920509>,  <38.069370, 33.787117, 28.809504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915653, 33.934250, 28.920509>,  <37.659458, 34.179474, 29.105520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915653, 33.934250, 28.920509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579501, -0.009387, 0.814918,
		-0.503933, -0.789983, 0.349255,
		0.640492, -0.613057, -0.462526,
		38.107800, 33.750332, 28.781752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230118, 34.750187, 28.836048>,  <37.659458, 34.179474, 29.105520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230118, 34.750187, 28.836048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405605, 34.972645, 28.553709>,  <37.510899, 35.106121, 28.384306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405605, 34.972645, 28.553709>,  <37.230118, 34.750187, 28.836048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405605, 34.972645, 28.553709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897343, 0.229220, -0.377138,
		-0.047951, 0.798847, 0.599620,
		0.438721, 0.556149, -0.705849,
		37.537220, 35.139488, 28.341955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796680, 35.354321, 28.816278>,  <37.230118, 34.750187, 28.836048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796680, 35.354321, 28.816278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005730, 35.373505, 28.475792>,  <37.131157, 35.385014, 28.271500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005730, 35.373505, 28.475792>,  <36.796680, 35.354321, 28.816278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005730, 35.373505, 28.475792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820271, 0.300473, -0.486694,
		0.232427, 0.952584, 0.196371,
		0.522621, 0.047956, -0.851215,
		37.162518, 35.387890, 28.220427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652092, 36.018822, 28.505968>,  <36.796680, 35.354321, 28.816278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652092, 36.018822, 28.505968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764194, 35.764244, 28.218525>,  <36.831455, 35.611500, 28.046059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764194, 35.764244, 28.218525>,  <36.652092, 36.018822, 28.505968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764194, 35.764244, 28.218525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765630, 0.303354, -0.567263,
		0.579023, 0.709167, -0.402262,
		0.280256, -0.636442, -0.718608,
		36.848270, 35.573311, 28.002943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867290, 36.431137, 27.938190>,  <36.652092, 36.018822, 28.505968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867290, 36.431137, 27.938190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811195, 36.069706, 27.776258>,  <36.777538, 35.852848, 27.679100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811195, 36.069706, 27.776258>,  <36.867290, 36.431137, 27.938190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811195, 36.069706, 27.776258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507011, 0.416733, -0.754502,
		0.850454, 0.099440, -0.516565,
		-0.140242, -0.903574, -0.404830,
		36.769123, 35.798634, 27.654810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986973, 36.371407, 27.135429>,  <36.867290, 36.431137, 27.938190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986973, 36.371407, 27.135429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739491, 36.083714, 27.261862>,  <36.591003, 35.911098, 27.337721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739491, 36.083714, 27.261862>,  <36.986973, 36.371407, 27.135429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739491, 36.083714, 27.261862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709141, 0.338119, -0.618704,
		0.338119, -0.606942, -0.719234,
		0.618704, 0.719234, -0.316083,
		36.553879, 35.867943, 27.356686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645248, 36.210869, 26.532763>,  <36.986973, 36.371407, 27.135429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645248, 36.210869, 26.532763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432194, 36.021488, 26.813374>,  <36.304363, 35.907860, 26.981741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432194, 36.021488, 26.813374>,  <36.645248, 36.210869, 26.532763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432194, 36.021488, 26.813374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823420, 0.098271, -0.558858,
		0.195653, -0.875320, -0.442193,
		-0.532635, -0.473453, 0.701529,
		36.272404, 35.879452, 27.023832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177292, 35.812874, 26.166546>,  <36.645248, 36.210869, 26.532763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177292, 35.812874, 26.166546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014942, 35.879841, 26.525930>,  <35.917534, 35.920021, 26.741562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014942, 35.879841, 26.525930>,  <36.177292, 35.812874, 26.166546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014942, 35.879841, 26.525930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908222, 0.035803, -0.416955,
		-0.101973, -0.985236, 0.137519,
		-0.405876, 0.167416, 0.898464,
		35.893181, 35.930065, 26.795469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737442, 35.274212, 26.320610>,  <36.177292, 35.812874, 26.166546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737442, 35.274212, 26.320610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624470, 35.569801, 26.565281>,  <35.556686, 35.747154, 26.712084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624470, 35.569801, 26.565281>,  <35.737442, 35.274212, 26.320610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624470, 35.569801, 26.565281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939403, -0.083905, -0.332387,
		-0.194301, -0.668491, 0.717890,
		-0.282433, 0.738972, 0.611680,
		35.539742, 35.791492, 26.748785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000019, 35.155609, 26.270306>,  <35.737442, 35.274212, 26.320610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000019, 35.155609, 26.270306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043568, 35.509998, 26.450619>,  <35.069698, 35.722630, 26.558805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043568, 35.509998, 26.450619>,  <35.000019, 35.155609, 26.270306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043568, 35.509998, 26.450619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928104, 0.253021, -0.273135,
		-0.356047, -0.388635, 0.849820,
		0.108872, 0.885970, 0.450781,
		35.076229, 35.775791, 26.585854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460060, 35.319839, 26.761543>,  <35.000019, 35.155609, 26.270306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460060, 35.319839, 26.761543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594570, 35.686008, 26.673071>,  <34.675274, 35.905708, 26.619987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594570, 35.686008, 26.673071>,  <34.460060, 35.319839, 26.761543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594570, 35.686008, 26.673071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933504, 0.292961, -0.206745,
		-0.124462, 0.275996, 0.953066,
		0.336272, 0.915423, -0.221181,
		34.695454, 35.960636, 26.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967537, 35.684319, 26.916527>,  <34.460060, 35.319839, 26.761543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967537, 35.684319, 26.916527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170467, 35.939911, 26.685242>,  <34.292225, 36.093266, 26.546471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170467, 35.939911, 26.685242>,  <33.967537, 35.684319, 26.916527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170467, 35.939911, 26.685242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861666, 0.366568, -0.350941,
		-0.012289, 0.676267, 0.736554,
		0.507326, 0.638977, -0.578212,
		34.322666, 36.131603, 26.511778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791187, 36.126850, 27.581205>,  <33.967537, 35.684319, 26.916527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791187, 36.126850, 27.581205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511230, 35.975712, 27.823652>,  <33.343254, 35.885029, 27.969120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511230, 35.975712, 27.823652>,  <33.791187, 36.126850, 27.581205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511230, 35.975712, 27.823652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691607, -0.146563, 0.707247,
		-0.178394, 0.914196, 0.363898,
		-0.699896, -0.377843, 0.606119,
		33.301262, 35.862358, 28.005487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828266, 36.555801, 28.135435>,  <33.791187, 36.126850, 27.581205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828266, 36.555801, 28.135435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646923, 36.218735, 28.251631>,  <33.538116, 36.016495, 28.321348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646923, 36.218735, 28.251631>,  <33.828266, 36.555801, 28.135435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646923, 36.218735, 28.251631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749418, -0.183928, 0.636037,
		-0.482537, 0.506049, 0.714893,
		-0.453355, -0.842665, 0.290490,
		33.510918, 35.965935, 28.338778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974339, 36.465572, 28.851761>,  <33.828266, 36.555801, 28.135435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974339, 36.465572, 28.851761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844414, 36.099659, 28.755701>,  <33.766460, 35.880112, 28.698065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844414, 36.099659, 28.755701>,  <33.974339, 36.465572, 28.851761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844414, 36.099659, 28.755701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626664, -0.398342, 0.669788,
		-0.708371, 0.067062, 0.702647,
		-0.324811, -0.914782, -0.240149,
		33.746971, 35.825226, 28.683657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719261, 36.117928, 29.444054>,  <33.974339, 36.465572, 28.851761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719261, 36.117928, 29.444054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862770, 35.847034, 29.187107>,  <33.948875, 35.684498, 29.032940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862770, 35.847034, 29.187107>,  <33.719261, 36.117928, 29.444054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862770, 35.847034, 29.187107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457127, -0.472528, 0.753494,
		-0.813828, -0.563976, 0.140052,
		0.358774, -0.677236, -0.642365,
		33.970402, 35.643864, 28.994398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562000, 35.444466, 29.803993>,  <33.719261, 36.117928, 29.444054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562000, 35.444466, 29.803993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837624, 35.360359, 29.526579>,  <34.002998, 35.309895, 29.360130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837624, 35.360359, 29.526579>,  <33.562000, 35.444466, 29.803993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837624, 35.360359, 29.526579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493928, -0.564030, 0.661745,
		-0.530318, -0.798535, -0.284790,
		0.689056, -0.210269, -0.693533,
		34.044342, 35.297279, 29.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674179, 34.746693, 29.874905>,  <33.562000, 35.444466, 29.803993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674179, 34.746693, 29.874905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000412, 34.875404, 29.682537>,  <34.196152, 34.952633, 29.567118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000412, 34.875404, 29.682537>,  <33.674179, 34.746693, 29.874905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000412, 34.875404, 29.682537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577600, -0.402871, 0.709981,
		0.034711, -0.856826, -0.514436,
		0.815582, 0.321783, -0.480918,
		34.245087, 34.971939, 29.538261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141922, 34.139389, 29.824018>,  <33.674179, 34.746693, 29.874905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141922, 34.139389, 29.824018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368649, 34.459019, 29.743828>,  <34.504684, 34.650799, 29.695713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368649, 34.459019, 29.743828>,  <34.141922, 34.139389, 29.824018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368649, 34.459019, 29.743828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756507, -0.408490, 0.510719,
		0.326211, -0.441148, -0.836047,
		0.566820, 0.799077, -0.200477,
		34.538696, 34.698742, 29.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743977, 33.871967, 29.606987>,  <34.141922, 34.139389, 29.824018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743977, 33.871967, 29.606987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832157, 34.230476, 29.760921>,  <34.885067, 34.445583, 29.853281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832157, 34.230476, 29.760921>,  <34.743977, 33.871967, 29.606987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832157, 34.230476, 29.760921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828586, -0.380243, 0.410925,
		0.514632, 0.228280, -0.826464,
		0.220451, 0.896272, 0.384835,
		34.898293, 34.499359, 29.876371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376328, 34.034496, 29.449602>,  <34.743977, 33.871967, 29.606987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376328, 34.034496, 29.449602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317341, 34.278717, 29.760851>,  <35.281948, 34.425251, 29.947601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317341, 34.278717, 29.760851>,  <35.376328, 34.034496, 29.449602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317341, 34.278717, 29.760851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864135, -0.303200, 0.401671,
		0.481170, 0.731636, -0.482891,
		-0.147465, 0.610555, 0.778124,
		35.273102, 34.461884, 29.994287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028305, 34.145725, 29.690191>,  <35.376328, 34.034496, 29.449602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028305, 34.145725, 29.690191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794136, 34.256714, 29.994898>,  <35.653633, 34.323307, 30.177721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794136, 34.256714, 29.994898>,  <36.028305, 34.145725, 29.690191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794136, 34.256714, 29.994898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742110, -0.194913, 0.641313,
		0.326424, 0.940755, -0.091807,
		-0.585424, 0.277471, 0.761767,
		35.618507, 34.339954, 30.223429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509457, 34.243656, 30.248222>,  <36.028305, 34.145725, 29.690191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509457, 34.243656, 30.248222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176296, 34.263462, 30.468702>,  <35.976398, 34.275345, 30.600990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176296, 34.263462, 30.468702>,  <36.509457, 34.243656, 30.248222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176296, 34.263462, 30.468702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516839, -0.286498, 0.806720,
		0.197862, 0.956801, 0.213033,
		-0.832903, 0.049515, 0.551199,
		35.926426, 34.278316, 30.634062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685974, 34.602627, 30.901920>,  <36.509457, 34.243656, 30.248222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685974, 34.602627, 30.901920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358215, 34.391632, 30.991669>,  <36.161560, 34.265038, 31.045519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358215, 34.391632, 30.991669>,  <36.685974, 34.602627, 30.901920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358215, 34.391632, 30.991669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437508, -0.322599, 0.839355,
		-0.370363, 0.785933, 0.495116,
		-0.819401, -0.527483, 0.224373,
		36.112396, 34.233387, 31.058981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544079, 34.703880, 31.624216>,  <36.685974, 34.602627, 30.901920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544079, 34.703880, 31.624216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374088, 34.351498, 31.540977>,  <36.272095, 34.140068, 31.491034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374088, 34.351498, 31.540977>,  <36.544079, 34.703880, 31.624216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374088, 34.351498, 31.540977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332087, -0.365593, 0.869517,
		-0.842089, 0.300417, 0.447923,
		-0.424975, -0.880961, -0.208097,
		36.246597, 34.087208, 31.478548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103809, 34.535110, 32.283691>,  <36.544079, 34.703880, 31.624216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103809, 34.535110, 32.283691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137817, 34.199989, 32.067966>,  <36.158222, 33.998917, 31.938532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137817, 34.199989, 32.067966>,  <36.103809, 34.535110, 32.283691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137817, 34.199989, 32.067966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126314, -0.527841, 0.839898,
		-0.988340, -0.139529, 0.060951,
		0.085018, -0.837804, -0.539311,
		36.163322, 33.948647, 31.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628082, 34.042439, 32.503502>,  <36.103809, 34.535110, 32.283691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628082, 34.042439, 32.503502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921806, 33.833584, 32.329994>,  <36.098042, 33.708271, 32.225887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921806, 33.833584, 32.329994>,  <35.628082, 34.042439, 32.503502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921806, 33.833584, 32.329994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133456, -0.515499, 0.846434,
		-0.665567, -0.679435, -0.308853,
		0.734310, -0.522140, -0.433773,
		36.142101, 33.676941, 32.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547783, 34.685246, 32.890751>,  <35.628082, 34.042439, 32.503502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547783, 34.685246, 32.890751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696491, 35.055115, 32.923637>,  <35.785717, 35.277039, 32.943371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696491, 35.055115, 32.923637>,  <35.547783, 34.685246, 32.890751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696491, 35.055115, 32.923637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775133, 0.357935, -0.520626,
		-0.510840, 0.129823, 0.849817,
		0.371768, 0.924678, 0.082218,
		35.808022, 35.332520, 32.948303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034889, 35.151913, 32.918652>,  <35.547783, 34.685246, 32.890751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034889, 35.151913, 32.918652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322742, 35.406036, 32.806576>,  <35.495453, 35.558510, 32.739330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322742, 35.406036, 32.806576>,  <35.034889, 35.151913, 32.918652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322742, 35.406036, 32.806576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694100, 0.647271, -0.315064,
		-0.018805, 0.421210, 0.906768,
		0.719633, 0.635313, -0.280190,
		35.538631, 35.596630, 32.722519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029789, 35.645298, 33.406601>,  <35.034889, 35.151913, 32.918652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029789, 35.645298, 33.406601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196949, 35.798851, 33.077240>,  <35.297245, 35.890984, 32.879623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196949, 35.798851, 33.077240>,  <35.029789, 35.645298, 33.406601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196949, 35.798851, 33.077240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756924, 0.648351, -0.081895,
		0.502417, 0.657479, 0.561514,
		0.417902, 0.383878, -0.823404,
		35.322319, 35.914013, 32.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045033, 36.326683, 33.499779>,  <35.029789, 35.645298, 33.406601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045033, 36.326683, 33.499779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075939, 36.299755, 33.101887>,  <35.094482, 36.283596, 32.863152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075939, 36.299755, 33.101887>,  <35.045033, 36.326683, 33.499779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075939, 36.299755, 33.101887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672695, 0.732876, -0.101855,
		0.735874, 0.677023, 0.011343,
		0.077271, -0.067322, -0.994735,
		35.099121, 36.279560, 32.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079903, 37.052704, 33.237743>,  <35.045033, 36.326683, 33.499779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079903, 37.052704, 33.237743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027397, 36.876160, 32.882671>,  <34.995895, 36.770233, 32.669628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027397, 36.876160, 32.882671>,  <35.079903, 37.052704, 33.237743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027397, 36.876160, 32.882671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562255, 0.770623, -0.300016,
		0.816480, 0.459722, -0.349307,
		-0.131260, -0.441357, -0.887680,
		34.988018, 36.743752, 32.616367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172760, 37.497154, 32.617405>,  <35.079903, 37.052704, 33.237743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172760, 37.497154, 32.617405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937744, 37.209324, 32.469345>,  <34.796734, 37.036625, 32.380508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937744, 37.209324, 32.469345>,  <35.172760, 37.497154, 32.617405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937744, 37.209324, 32.469345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557543, 0.691508, -0.459306,
		0.586463, -0.063490, -0.807484,
		-0.587543, -0.719573, -0.370146,
		34.761482, 36.993450, 32.358299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193428, 37.551193, 31.884806>,  <35.172760, 37.497154, 32.617405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193428, 37.551193, 31.884806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848587, 37.399776, 32.019558>,  <34.641682, 37.308926, 32.100410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848587, 37.399776, 32.019558>,  <35.193428, 37.551193, 31.884806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848587, 37.399776, 32.019558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506651, 0.655953, -0.559491,
		-0.009188, -0.653019, -0.757285,
		-0.862102, -0.378539, 0.336880,
		34.589958, 37.286213, 32.120621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787632, 37.610661, 31.287115>,  <35.193428, 37.551193, 31.884806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787632, 37.610661, 31.287115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490707, 37.541950, 31.546179>,  <34.312553, 37.500725, 31.701616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490707, 37.541950, 31.546179>,  <34.787632, 37.610661, 31.287115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490707, 37.541950, 31.546179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620360, 0.541483, -0.567407,
		-0.253228, -0.822975, -0.508515,
		-0.742314, -0.171779, 0.647659,
		34.268013, 37.490417, 31.740477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128815, 37.249481, 30.891333>,  <34.787632, 37.610661, 31.287115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128815, 37.249481, 30.891333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992943, 37.393303, 31.238974>,  <33.911419, 37.479595, 31.447559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992943, 37.393303, 31.238974>,  <34.128815, 37.249481, 30.891333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992943, 37.393303, 31.238974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714563, 0.502191, -0.487036,
		-0.611571, -0.786464, 0.086340,
		-0.339677, 0.359553, 0.869104,
		33.891041, 37.501167, 31.499704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432880, 37.207832, 30.839769>,  <34.128815, 37.249481, 30.891333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432880, 37.207832, 30.839769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498615, 37.486752, 31.118845>,  <33.538055, 37.654102, 31.286291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498615, 37.486752, 31.118845>,  <33.432880, 37.207832, 30.839769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498615, 37.486752, 31.118845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552090, 0.651164, -0.520752,
		-0.817429, -0.299609, 0.491980,
		0.164338, 0.697295, 0.697691,
		33.547916, 37.695938, 31.328152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728767, 37.506603, 30.886618>,  <33.432880, 37.207832, 30.839769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728767, 37.506603, 30.886618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952038, 37.783588, 31.069450>,  <33.086002, 37.949780, 31.179150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952038, 37.783588, 31.069450>,  <32.728767, 37.506603, 30.886618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952038, 37.783588, 31.069450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621742, 0.713867, -0.322227,
		-0.549428, -0.104326, 0.829003,
		0.558181, 0.692466, 0.457082,
		33.119492, 37.991329, 31.206575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291599, 37.862015, 31.263206>,  <32.728767, 37.506603, 30.886618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291599, 37.862015, 31.263206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610836, 38.097828, 31.213415>,  <32.802380, 38.239315, 31.183540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610836, 38.097828, 31.213415>,  <32.291599, 37.862015, 31.263206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610836, 38.097828, 31.213415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593392, 0.733185, -0.332152,
		-0.104548, 0.338955, 0.934976,
		0.798095, 0.589533, -0.124480,
		32.850266, 38.274689, 31.176071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072052, 38.552666, 31.603846>,  <32.291599, 37.862015, 31.263206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072052, 38.552666, 31.603846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364979, 38.595592, 31.334864>,  <32.540733, 38.621349, 31.173473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364979, 38.595592, 31.334864>,  <32.072052, 38.552666, 31.603846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364979, 38.595592, 31.334864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420202, 0.848293, -0.322226,
		0.535859, 0.518539, 0.666313,
		0.732315, 0.107318, -0.672457,
		32.584675, 38.627789, 31.133127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191463, 39.355156, 31.498411>,  <32.072052, 38.552666, 31.603846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191463, 39.355156, 31.498411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318455, 39.166466, 31.169369>,  <32.394650, 39.053249, 30.971943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318455, 39.166466, 31.169369>,  <32.191463, 39.355156, 31.498411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318455, 39.166466, 31.169369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343042, 0.751597, -0.563405,
		0.884041, 0.461058, 0.076794,
		0.317480, -0.471729, -0.822604,
		32.413700, 39.024948, 30.922588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345058, 39.963261, 31.060118>,  <32.191463, 39.355156, 31.498411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345058, 39.963261, 31.060118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365803, 39.651215, 30.810724>,  <32.378250, 39.463989, 30.661087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365803, 39.651215, 30.810724>,  <32.345058, 39.963261, 31.060118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365803, 39.651215, 30.810724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315042, 0.579665, -0.751490,
		0.947660, 0.235400, -0.215704,
		0.051865, -0.780113, -0.623486,
		32.381363, 39.417179, 30.623678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759903, 40.202110, 30.535313>,  <32.345058, 39.963261, 31.060118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759903, 40.202110, 30.535313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516800, 39.903210, 30.427799>,  <32.370937, 39.723869, 30.363291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516800, 39.903210, 30.427799>,  <32.759903, 40.202110, 30.535313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516800, 39.903210, 30.427799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358315, 0.560100, -0.746926,
		0.708686, -0.357642, -0.608158,
		-0.607761, -0.747248, -0.268786,
		32.334473, 39.679035, 30.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854946, 40.169147, 29.836952>,  <32.759903, 40.202110, 30.535313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854946, 40.169147, 29.836952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500793, 39.993713, 29.898575>,  <32.288300, 39.888451, 29.935549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500793, 39.993713, 29.898575>,  <32.854946, 40.169147, 29.836952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500793, 39.993713, 29.898575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353565, 0.420190, -0.835723,
		0.301806, -0.794405, -0.527099,
		-0.885384, -0.438590, 0.154058,
		32.235180, 39.862137, 29.944792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603035, 39.939674, 29.212086>,  <32.854946, 40.169147, 29.836952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603035, 39.939674, 29.212086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274426, 39.931061, 29.439993>,  <32.077259, 39.925892, 29.576736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274426, 39.931061, 29.439993>,  <32.603035, 39.939674, 29.212086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274426, 39.931061, 29.439993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491996, 0.531804, -0.689293,
		-0.288163, -0.846593, -0.447483,
		-0.821524, -0.021531, 0.569767,
		32.027969, 39.924603, 29.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093449, 39.579967, 28.790800>,  <32.603035, 39.939674, 29.212086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093449, 39.579967, 28.790800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907133, 39.825462, 29.045790>,  <31.795345, 39.972759, 29.198784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907133, 39.825462, 29.045790>,  <32.093449, 39.579967, 28.790800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907133, 39.825462, 29.045790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580107, 0.332213, -0.743713,
		-0.668221, -0.716213, 0.201293,
		-0.465785, 0.613737, 0.637473,
		31.767397, 40.009583, 29.237032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459745, 39.583405, 28.579397>,  <32.093449, 39.579967, 28.790800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459745, 39.583405, 28.579397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.460049, 39.918934, 28.797159>,  <31.460230, 40.120251, 28.927816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.460049, 39.918934, 28.797159>,  <31.459745, 39.583405, 28.579397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460049, 39.918934, 28.797159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510825, 0.468342, -0.720912,
		-0.859684, -0.277551, 0.428846,
		0.000757, 0.838822, 0.544406,
		31.460276, 40.170582, 28.960482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754673, 39.852882, 28.439730>,  <31.459745, 39.583405, 28.579397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754673, 39.852882, 28.439730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917383, 40.181778, 28.598953>,  <31.015009, 40.379116, 28.694487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917383, 40.181778, 28.598953>,  <30.754673, 39.852882, 28.439730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917383, 40.181778, 28.598953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420215, 0.555318, -0.717664,
		-0.811143, 0.124658, 0.571408,
		0.406775, 0.822242, 0.398059,
		31.039415, 40.428452, 28.718370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239338, 40.375076, 28.620710>,  <30.754673, 39.852882, 28.439730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239338, 40.375076, 28.620710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577597, 40.584160, 28.577528>,  <30.780552, 40.709610, 28.551619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577597, 40.584160, 28.577528>,  <30.239338, 40.375076, 28.620710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577597, 40.584160, 28.577528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463349, 0.618548, -0.634591,
		-0.264931, 0.586662, 0.765271,
		0.845647, 0.522710, -0.107957,
		30.831291, 40.740974, 28.545141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048759, 41.039135, 28.631426>,  <30.239338, 40.375076, 28.620710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048759, 41.039135, 28.631426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426125, 41.090450, 28.509108>,  <30.652544, 41.121239, 28.435717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426125, 41.090450, 28.509108>,  <30.048759, 41.039135, 28.631426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426125, 41.090450, 28.509108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267715, 0.838833, -0.474013,
		0.195702, 0.529056, 0.825712,
		0.943414, 0.128290, -0.305798,
		30.709148, 41.128937, 28.417368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168379, 41.680195, 28.809645>,  <30.048759, 41.039135, 28.631426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168379, 41.680195, 28.809645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418974, 41.582146, 28.513691>,  <30.569332, 41.523315, 28.336119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418974, 41.582146, 28.513691>,  <30.168379, 41.680195, 28.809645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418974, 41.582146, 28.513691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248566, 0.836862, -0.487726,
		0.738733, 0.489464, 0.463356,
		0.626489, -0.245125, -0.739882,
		30.606920, 41.508610, 28.291727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536505, 42.272236, 28.600498>,  <30.168379, 41.680195, 28.809645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536505, 42.272236, 28.600498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.546043, 42.036209, 28.277697>,  <30.551767, 41.894592, 28.084017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.546043, 42.036209, 28.277697>,  <30.536505, 42.272236, 28.600498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546043, 42.036209, 28.277697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387113, 0.738805, -0.551643,
		0.921724, 0.325557, -0.210804,
		0.023848, -0.590067, -0.807002,
		30.553198, 41.859188, 28.035597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692408, 42.666943, 28.059891>,  <30.536505, 42.272236, 28.600498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692408, 42.666943, 28.059891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526745, 42.357243, 27.868471>,  <30.427347, 42.171421, 27.753618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526745, 42.357243, 27.868471>,  <30.692408, 42.666943, 28.059891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526745, 42.357243, 27.868471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457740, 0.631606, -0.625737,
		0.786734, -0.040100, -0.615988,
		-0.414154, -0.774252, -0.478551,
		30.402498, 42.124966, 27.724905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788179, 42.778992, 27.430983>,  <30.692408, 42.666943, 28.059891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788179, 42.778992, 27.430983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470200, 42.536400, 27.437218>,  <30.279411, 42.390846, 27.440958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470200, 42.536400, 27.437218>,  <30.788179, 42.778992, 27.430983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470200, 42.536400, 27.437218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493997, 0.632170, -0.596932,
		0.352171, -0.482231, -0.802140,
		-0.794948, -0.606477, 0.015588,
		30.231714, 42.354458, 27.441895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145861, 42.564457, 26.756098>,  <30.788179, 42.778992, 27.430983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145861, 42.564457, 26.756098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389608, 42.825432, 26.575878>,  <31.535856, 42.982018, 26.467747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389608, 42.825432, 26.575878>,  <31.145861, 42.564457, 26.756098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389608, 42.825432, 26.575878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784465, -0.578706, 0.222966,
		-0.115265, -0.489309, -0.864460,
		0.609367, 0.652438, -0.450550,
		31.572418, 43.021164, 26.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683043, 42.207806, 26.311119>,  <31.145861, 42.564457, 26.756098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683043, 42.207806, 26.311119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839045, 42.557671, 26.426256>,  <31.932646, 42.767590, 26.495338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839045, 42.557671, 26.426256>,  <31.683043, 42.207806, 26.311119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839045, 42.557671, 26.426256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867297, -0.453946, 0.204274,
		0.309338, 0.169979, -0.935637,
		0.390007, 0.874666, 0.287845,
		31.956047, 42.820072, 26.512609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426033, 42.105186, 26.133389>,  <31.683043, 42.207806, 26.311119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426033, 42.105186, 26.133389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426773, 42.421444, 26.378300>,  <32.427216, 42.611198, 26.525246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426773, 42.421444, 26.378300>,  <32.426033, 42.105186, 26.133389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426773, 42.421444, 26.378300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797429, -0.370621, 0.476180,
		0.603410, 0.487367, -0.631165,
		0.001849, 0.790641, 0.612278,
		32.427326, 42.658638, 26.561983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146152, 42.246593, 26.308617>,  <32.426033, 42.105186, 26.133389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146152, 42.246593, 26.308617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004494, 42.450081, 26.622505>,  <32.919498, 42.572174, 26.810839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004494, 42.450081, 26.622505>,  <33.146152, 42.246593, 26.308617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004494, 42.450081, 26.622505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746781, -0.351262, 0.564742,
		0.562936, 0.786017, -0.255501,
		-0.354149, 0.508717, 0.784720,
		32.898251, 42.602695, 26.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626675, 42.614918, 26.540892>,  <33.146152, 42.246593, 26.308617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626675, 42.614918, 26.540892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401680, 42.610668, 26.871588>,  <33.266685, 42.608120, 27.070005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401680, 42.610668, 26.871588>,  <33.626675, 42.614918, 26.540892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401680, 42.610668, 26.871588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792553, -0.291764, 0.535474,
		0.235527, 0.956431, 0.172530,
		-0.562482, -0.010620, 0.826741,
		33.232937, 42.607483, 27.119610>
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
