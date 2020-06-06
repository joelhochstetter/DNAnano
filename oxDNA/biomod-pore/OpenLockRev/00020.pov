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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<39.970718, 36.208836, 49.640770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120708, 35.879883, 49.469612>,  <40.210701, 35.682510, 49.366917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120708, 35.879883, 49.469612>,  <39.970718, 36.208836, 49.640770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120708, 35.879883, 49.469612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378905, -0.285298, 0.880362,
		-0.846066, -0.492241, 0.204624,
		0.374971, -0.822377, -0.427893,
		40.233200, 35.633171, 49.341244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748806, 35.564732, 50.010113>,  <39.970718, 36.208836, 49.640770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748806, 35.564732, 50.010113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100948, 35.532108, 49.823215>,  <40.312233, 35.512535, 49.711079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100948, 35.532108, 49.823215>,  <39.748806, 35.564732, 50.010113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100948, 35.532108, 49.823215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417048, -0.336099, 0.844458,
		-0.225912, -0.938289, -0.261874,
		0.880360, -0.081559, -0.467240,
		40.365055, 35.507641, 49.683044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180656, 35.180195, 50.478394>,  <39.748806, 35.564732, 50.010113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180656, 35.180195, 50.478394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480934, 35.268730, 50.229408>,  <40.661102, 35.321854, 50.080017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480934, 35.268730, 50.229408>,  <40.180656, 35.180195, 50.478394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480934, 35.268730, 50.229408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657513, -0.341962, 0.671370,
		-0.064256, -0.913274, -0.402246,
		0.750698, 0.221343, -0.622463,
		40.706142, 35.335133, 50.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659626, 34.620125, 50.524837>,  <40.180656, 35.180195, 50.478394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659626, 34.620125, 50.524837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864037, 34.925758, 50.367348>,  <40.986683, 35.109138, 50.272854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864037, 34.925758, 50.367348>,  <40.659626, 34.620125, 50.524837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864037, 34.925758, 50.367348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777502, -0.215576, 0.590777,
		0.366526, -0.608028, -0.704244,
		0.511027, 0.764087, -0.393729,
		41.017345, 35.154984, 50.249229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308403, 34.352688, 50.548431>,  <40.659626, 34.620125, 50.524837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308403, 34.352688, 50.548431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413891, 34.720032, 50.430405>,  <41.477184, 34.940437, 50.359589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413891, 34.720032, 50.430405>,  <41.308403, 34.352688, 50.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413891, 34.720032, 50.430405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869639, -0.094007, 0.484655,
		0.417349, -0.384418, -0.823434,
		0.263719, 0.918360, -0.295071,
		41.493008, 34.995541, 50.341885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870377, 34.397285, 50.237705>,  <41.308403, 34.352688, 50.548431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870377, 34.397285, 50.237705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851711, 34.779442, 50.354355>,  <41.840511, 35.008736, 50.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851711, 34.779442, 50.354355>,  <41.870377, 34.397285, 50.237705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851711, 34.779442, 50.354355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924877, -0.068972, 0.373959,
		0.377392, 0.287172, -0.880402,
		-0.046668, 0.955393, 0.291628,
		41.837711, 35.066059, 50.441845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445065, 34.746014, 49.933781>,  <41.870377, 34.397285, 50.237705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445065, 34.746014, 49.933781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319431, 34.991035, 50.223919>,  <42.244053, 35.138050, 50.398003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319431, 34.991035, 50.223919>,  <42.445065, 34.746014, 49.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319431, 34.991035, 50.223919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949371, 0.208141, 0.235312,
		-0.006831, 0.762528, -0.646919,
		-0.314082, 0.612559, 0.725344,
		42.225208, 35.174805, 50.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697430, 35.536293, 49.838074>,  <42.445065, 34.746014, 49.933781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697430, 35.536293, 49.838074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629047, 35.424896, 50.216114>,  <42.588020, 35.358059, 50.442940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629047, 35.424896, 50.216114>,  <42.697430, 35.536293, 49.838074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629047, 35.424896, 50.216114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905605, 0.333465, 0.262071,
		-0.388143, 0.900690, 0.195197,
		-0.170954, -0.278493, 0.945101,
		42.577763, 35.341347, 50.499645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242657, 35.964657, 50.219807>,  <42.697430, 35.536293, 49.838074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242657, 35.964657, 50.219807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096130, 35.734421, 50.512249>,  <43.008213, 35.596279, 50.687714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096130, 35.734421, 50.512249>,  <43.242657, 35.964657, 50.219807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096130, 35.734421, 50.512249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870299, 0.066068, 0.488073,
		-0.329232, 0.815066, 0.476733,
		-0.366315, -0.575589, 0.731102,
		42.986237, 35.561745, 50.731579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479000, 36.224922, 50.790279>,  <43.242657, 35.964657, 50.219807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479000, 36.224922, 50.790279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381676, 35.866142, 50.937939>,  <43.323280, 35.650875, 51.026535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381676, 35.866142, 50.937939>,  <43.479000, 36.224922, 50.790279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381676, 35.866142, 50.937939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822459, 0.010962, 0.568719,
		-0.514162, 0.441987, 0.735041,
		-0.243309, -0.896954, 0.369152,
		43.308681, 35.597057, 51.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594540, 36.275074, 51.477409>,  <43.479000, 36.224922, 50.790279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594540, 36.275074, 51.477409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623466, 35.895012, 51.356102>,  <43.640823, 35.666973, 51.283318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623466, 35.895012, 51.356102>,  <43.594540, 36.275074, 51.477409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623466, 35.895012, 51.356102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853247, -0.098515, 0.512118,
		-0.516469, -0.295797, 0.803594,
		0.072317, -0.950157, -0.303268,
		43.645161, 35.609966, 51.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883602, 35.861320, 52.008339>,  <43.594540, 36.275074, 51.477409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883602, 35.861320, 52.008339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938080, 35.602150, 51.708569>,  <43.970764, 35.446648, 51.528706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938080, 35.602150, 51.708569>,  <43.883602, 35.861320, 52.008339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938080, 35.602150, 51.708569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860521, -0.297454, 0.413551,
		-0.490872, -0.701218, 0.517047,
		0.136192, -0.647930, -0.749425,
		43.978939, 35.407772, 51.483742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280510, 35.275921, 52.335217>,  <43.883602, 35.861320, 52.008339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280510, 35.275921, 52.335217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315598, 35.209354, 51.942356>,  <44.336651, 35.169415, 51.706642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315598, 35.209354, 51.942356>,  <44.280510, 35.275921, 52.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315598, 35.209354, 51.942356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930384, -0.338606, 0.140465,
		-0.355936, -0.926095, 0.125126,
		0.087715, -0.166412, -0.982147,
		44.341911, 35.159431, 51.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620167, 34.569550, 52.335819>,  <44.280510, 35.275921, 52.335217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620167, 34.569550, 52.335819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705746, 34.765999, 51.998055>,  <44.757095, 34.883869, 51.795395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705746, 34.765999, 51.998055>,  <44.620167, 34.569550, 52.335819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705746, 34.765999, 51.998055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969192, -0.214711, 0.120689,
		-0.122030, -0.844214, -0.521930,
		0.213951, 0.491123, -0.844407,
		44.769932, 34.913334, 51.744732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969639, 34.039940, 51.976524>,  <44.620167, 34.569550, 52.335819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969639, 34.039940, 51.976524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081661, 34.395424, 51.831329>,  <45.148876, 34.608715, 51.744213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081661, 34.395424, 51.831329>,  <44.969639, 34.039940, 51.976524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081661, 34.395424, 51.831329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953524, -0.301310, -0.002035,
		-0.111179, -0.345545, -0.931793,
		0.280055, 0.888713, -0.362984,
		45.165676, 34.662037, 51.722435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454845, 33.896908, 51.437653>,  <44.969639, 34.039940, 51.976524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454845, 33.896908, 51.437653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535686, 34.271091, 51.553631>,  <45.584190, 34.495602, 51.623219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535686, 34.271091, 51.553631>,  <45.454845, 33.896908, 51.437653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535686, 34.271091, 51.553631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979081, -0.185876, -0.082765,
		-0.023529, 0.300609, -0.953457,
		0.202104, 0.935459, 0.289947,
		45.596317, 34.551731, 51.640614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024288, 34.127384, 51.014755>,  <45.454845, 33.896908, 51.437653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024288, 34.127384, 51.014755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039730, 34.425369, 51.281151>,  <46.048996, 34.604160, 51.440987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039730, 34.425369, 51.281151>,  <46.024288, 34.127384, 51.014755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039730, 34.425369, 51.281151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998385, -0.056550, 0.005379,
		0.041669, 0.664701, -0.745946,
		0.038608, 0.744966, 0.665984,
		46.051311, 34.648857, 51.480946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562630, 34.379879, 50.842461>,  <46.024288, 34.127384, 51.014755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562630, 34.379879, 50.842461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513817, 34.513367, 51.216354>,  <46.484528, 34.593460, 51.440693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513817, 34.513367, 51.216354>,  <46.562630, 34.379879, 50.842461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.513817, 34.513367, 51.216354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950551, -0.231689, 0.206817,
		0.285588, 0.913756, -0.288945,
		-0.122035, 0.333722, 0.934739,
		46.477207, 34.613483, 51.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061390, 34.824165, 50.906078>,  <46.562630, 34.379879, 50.842461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061390, 34.824165, 50.906078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980602, 34.760754, 51.292667>,  <46.932129, 34.722706, 51.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980602, 34.760754, 51.292667>,  <47.061390, 34.824165, 50.906078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980602, 34.760754, 51.292667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975901, -0.115818, 0.184941,
		0.082617, 0.980538, 0.178099,
		-0.201969, -0.158528, 0.966477,
		46.920013, 34.713196, 51.582611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634178, 35.243683, 51.321423>,  <47.061390, 34.824165, 50.906078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634178, 35.243683, 51.321423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469986, 34.960197, 51.550938>,  <47.371471, 34.790108, 51.688648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469986, 34.960197, 51.550938>,  <47.634178, 35.243683, 51.321423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469986, 34.960197, 51.550938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911802, -0.326769, 0.248676,
		0.011258, 0.625261, 0.780335,
		-0.410477, -0.708711, 0.573792,
		47.346844, 34.747585, 51.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904278, 35.352421, 52.091644>,  <47.634178, 35.243683, 51.321423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904278, 35.352421, 52.091644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772675, 34.977287, 52.047436>,  <47.693710, 34.752205, 52.020908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772675, 34.977287, 52.047436>,  <47.904278, 35.352421, 52.091644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772675, 34.977287, 52.047436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880259, -0.346957, 0.323675,
		-0.341901, 0.009203, 0.939691,
		-0.329011, -0.937836, -0.110524,
		47.673973, 34.695938, 52.014278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.424946, 35.193386, 51.681614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.614662, 35.247898, 52.029518>,  <24.728493, 35.280605, 52.238258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.614662, 35.247898, 52.029518>,  <24.424946, 35.193386, 51.681614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614662, 35.247898, 52.029518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793970, 0.360605, -0.489465,
		-0.380342, 0.922709, 0.062830,
		0.474290, 0.136279, 0.869757,
		24.756948, 35.288780, 52.290443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603159, 35.946060, 51.750084>,  <24.424946, 35.193386, 51.681614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603159, 35.946060, 51.750084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.845085, 35.704842, 51.958134>,  <24.990242, 35.560112, 52.082962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.845085, 35.704842, 51.958134>,  <24.603159, 35.946060, 51.750084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.845085, 35.704842, 51.958134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794837, 0.497542, -0.347398,
		-0.049287, 0.623528, 0.780246,
		0.604818, -0.603047, 0.520125,
		25.026531, 35.523926, 52.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074286, 36.345268, 52.072224>,  <24.603159, 35.946060, 51.750084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074286, 36.345268, 52.072224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261372, 35.992088, 52.088394>,  <25.373623, 35.780178, 52.098099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261372, 35.992088, 52.088394>,  <25.074286, 36.345268, 52.072224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261372, 35.992088, 52.088394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872859, 0.454199, -0.178385,
		0.139142, 0.118723, 0.983130,
		0.467715, -0.882954, 0.040430,
		25.401686, 35.727203, 52.100525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779579, 36.555901, 52.384926>,  <25.074286, 36.345268, 52.072224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779579, 36.555901, 52.384926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.831314, 36.185764, 52.242374>,  <25.862354, 35.963680, 52.156841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.831314, 36.185764, 52.242374>,  <25.779579, 36.555901, 52.384926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831314, 36.185764, 52.242374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912293, 0.251881, -0.322919,
		0.388578, -0.283360, 0.876763,
		0.129337, -0.925345, -0.356383,
		25.870115, 35.908161, 52.135460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448015, 36.313667, 52.630543>,  <25.779579, 36.555901, 52.384926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448015, 36.313667, 52.630543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.397709, 36.080635, 52.309349>,  <26.367525, 35.940815, 52.116634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.397709, 36.080635, 52.309349>,  <26.448015, 36.313667, 52.630543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397709, 36.080635, 52.309349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955711, 0.145942, -0.255573,
		0.266082, -0.799560, 0.538427,
		-0.125767, -0.582584, -0.802981,
		26.359980, 35.905861, 52.068455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090189, 35.950455, 52.533195>,  <26.448015, 36.313667, 52.630543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090189, 35.950455, 52.533195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.905107, 35.885853, 52.184525>,  <26.794058, 35.847092, 51.975323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.905107, 35.885853, 52.184525>,  <27.090189, 35.950455, 52.533195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905107, 35.885853, 52.184525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885608, -0.039784, -0.462727,
		0.040055, -0.986069, 0.161440,
		-0.462704, -0.161507, -0.871677,
		26.766296, 35.837402, 51.923023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221315, 35.225815, 52.251438>,  <27.090189, 35.950455, 52.533195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221315, 35.225815, 52.251438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.137878, 35.491047, 51.963879>,  <27.087816, 35.650185, 51.791344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.137878, 35.491047, 51.963879>,  <27.221315, 35.225815, 52.251438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137878, 35.491047, 51.963879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927142, -0.099892, -0.361150,
		-0.311284, -0.741854, -0.593932,
		-0.208592, 0.663080, -0.718898,
		27.075300, 35.689972, 51.748211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590981, 34.989773, 51.769516>,  <27.221315, 35.225815, 52.251438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590981, 34.989773, 51.769516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532627, 35.367874, 51.652752>,  <27.497616, 35.594734, 51.582695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532627, 35.367874, 51.652752>,  <27.590981, 34.989773, 51.769516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532627, 35.367874, 51.652752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960372, 0.064478, -0.271162,
		-0.237496, -0.319897, -0.917203,
		-0.145883, 0.945256, -0.291907,
		27.488863, 35.651451, 51.565182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107832, 35.039963, 51.364159>,  <27.590981, 34.989773, 51.769516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107832, 35.039963, 51.364159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.979809, 35.418518, 51.381664>,  <27.902996, 35.645653, 51.392166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.979809, 35.418518, 51.381664>,  <28.107832, 35.039963, 51.364159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979809, 35.418518, 51.381664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935189, 0.322986, -0.145265,
		-0.151611, -0.005568, -0.988424,
		-0.320056, 0.946387, 0.043761,
		27.883793, 35.702435, 51.394791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477455, 35.320126, 50.865368>,  <28.107832, 35.039963, 51.364159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477455, 35.320126, 50.865368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378912, 35.613785, 51.118458>,  <28.319786, 35.789978, 51.270309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378912, 35.613785, 51.118458>,  <28.477455, 35.320126, 50.865368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378912, 35.613785, 51.118458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886212, 0.434925, -0.159585,
		-0.392346, 0.521412, -0.757756,
		-0.246358, 0.734146, 0.632723,
		28.305004, 35.834030, 51.308273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518631, 35.869610, 50.383457>,  <28.477455, 35.320126, 50.865368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518631, 35.869610, 50.383457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.562561, 35.974941, 50.766830>,  <28.588919, 36.038139, 50.996853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.562561, 35.974941, 50.766830>,  <28.518631, 35.869610, 50.383457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562561, 35.974941, 50.766830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853291, 0.469536, -0.226783,
		-0.509738, 0.842730, -0.173129,
		0.109827, 0.263329, 0.958434,
		28.595509, 36.053940, 51.054359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609369, 36.578522, 50.285961>,  <28.518631, 35.869610, 50.383457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609369, 36.578522, 50.285961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.769754, 36.412689, 50.612728>,  <28.865986, 36.313190, 50.808788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.769754, 36.412689, 50.612728>,  <28.609369, 36.578522, 50.285961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769754, 36.412689, 50.612728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820582, 0.558985, -0.119079,
		-0.407277, 0.718094, 0.564328,
		0.400961, -0.414579, 0.816918,
		28.890043, 36.288315, 50.857803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997679, 37.157738, 50.462589>,  <28.609369, 36.578522, 50.285961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997679, 37.157738, 50.462589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128899, 36.858746, 50.693642>,  <29.207630, 36.679352, 50.832272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128899, 36.858746, 50.693642>,  <28.997679, 37.157738, 50.462589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128899, 36.858746, 50.693642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934571, 0.345933, -0.083113,
		-0.137696, 0.567101, 0.812057,
		0.328050, -0.747480, 0.577630,
		29.227314, 36.634502, 50.866932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509346, 37.412933, 50.925774>,  <28.997679, 37.157738, 50.462589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509346, 37.412933, 50.925774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.580929, 37.020012, 50.947865>,  <29.623878, 36.784260, 50.961121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.580929, 37.020012, 50.947865>,  <29.509346, 37.412933, 50.925774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580929, 37.020012, 50.947865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978241, 0.171664, -0.116513,
		0.104971, 0.074875, 0.991653,
		0.178955, -0.982306, 0.055226,
		29.634615, 36.725319, 50.964432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185907, 37.290348, 51.397457>,  <29.509346, 37.412933, 50.925774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185907, 37.290348, 51.397457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.148960, 36.960075, 51.174850>,  <30.126793, 36.761909, 51.041286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.148960, 36.960075, 51.174850>,  <30.185907, 37.290348, 51.397457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148960, 36.960075, 51.174850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985324, 0.004779, -0.170628,
		0.143544, -0.564111, 0.813126,
		-0.092367, -0.825685, -0.556518,
		30.121250, 36.712368, 51.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613935, 36.862202, 51.672291>,  <30.185907, 37.290348, 51.397457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613935, 36.862202, 51.672291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.560823, 36.681213, 51.319553>,  <30.528955, 36.572620, 51.107910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.560823, 36.681213, 51.319553>,  <30.613935, 36.862202, 51.672291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560823, 36.681213, 51.319553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986427, 0.026387, -0.162067,
		0.096600, -0.891389, 0.442825,
		-0.132779, -0.452470, -0.881839,
		30.520990, 36.545471, 51.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114393, 36.385456, 51.569180>,  <30.613935, 36.862202, 51.672291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114393, 36.385456, 51.569180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.002829, 36.429630, 51.187603>,  <30.935890, 36.456135, 50.958656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.002829, 36.429630, 51.187603>,  <31.114393, 36.385456, 51.569180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002829, 36.429630, 51.187603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956210, -0.059832, -0.286502,
		-0.088716, -0.992081, -0.088911,
		-0.278913, 0.110435, -0.953945,
		30.919155, 36.462761, 50.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471924, 35.851372, 51.248985>,  <31.114393, 36.385456, 51.569180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471924, 35.851372, 51.248985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.367538, 36.113136, 50.965115>,  <31.304907, 36.270195, 50.794792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.367538, 36.113136, 50.965115>,  <31.471924, 35.851372, 51.248985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367538, 36.113136, 50.965115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849293, -0.193837, -0.491048,
		-0.458910, -0.730869, -0.505205,
		-0.260964, 0.654415, -0.709675,
		31.289249, 36.309460, 50.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560005, 35.551876, 50.587326>,  <31.471924, 35.851372, 51.248985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560005, 35.551876, 50.587326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561991, 35.942337, 50.500515>,  <31.563183, 36.176613, 50.448429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561991, 35.942337, 50.500515>,  <31.560005, 35.551876, 50.587326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561991, 35.942337, 50.500515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707097, -0.156889, -0.689493,
		-0.707100, -0.150034, -0.691014,
		0.004965, 0.976154, -0.217025,
		31.563480, 36.235184, 50.435406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796343, 35.665447, 49.710476>,  <31.560005, 35.551876, 50.587326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796343, 35.665447, 49.710476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848082, 36.013840, 49.900066>,  <31.879126, 36.222878, 50.013821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848082, 36.013840, 49.900066>,  <31.796343, 35.665447, 49.710476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848082, 36.013840, 49.900066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886826, 0.112239, -0.448265,
		-0.443631, 0.478316, -0.757895,
		0.129347, 0.870986, 0.473976,
		31.886885, 36.275135, 50.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034245, 36.210453, 49.112930>,  <31.796343, 35.665447, 49.710476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034245, 36.210453, 49.112930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.121632, 36.377399, 49.465767>,  <32.174065, 36.477566, 49.677467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.121632, 36.377399, 49.465767>,  <32.034245, 36.210453, 49.112930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121632, 36.377399, 49.465767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882761, 0.300760, -0.360939,
		-0.415939, 0.857526, -0.302727,
		0.218466, 0.417364, 0.882088,
		32.187172, 36.502609, 49.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.282564, 34.372368, 35.379517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.469488, 34.697369, 35.240108>,  <24.581642, 34.892368, 35.156464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.469488, 34.697369, 35.240108>,  <24.282564, 34.372368, 35.379517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469488, 34.697369, 35.240108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876633, -0.374735, 0.301807,
		0.114616, -0.446559, -0.887383,
		0.467308, 0.812501, -0.348518,
		24.609680, 34.941120, 35.135551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853910, 34.124756, 35.006721>,  <24.282564, 34.372368, 35.379517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853910, 34.124756, 35.006721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.933868, 34.492260, 35.142906>,  <24.981842, 34.712765, 35.224617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.933868, 34.492260, 35.142906>,  <24.853910, 34.124756, 35.006721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933868, 34.492260, 35.142906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892133, -0.314341, 0.324481,
		0.405143, 0.238877, -0.882494,
		0.199893, 0.918764, 0.340463,
		24.993837, 34.767891, 35.245045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633093, 34.331059, 34.762230>,  <24.853910, 34.124756, 35.006721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633093, 34.331059, 34.762230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.466179, 34.482449, 35.092716>,  <25.366032, 34.573284, 35.291008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.466179, 34.482449, 35.092716>,  <25.633093, 34.331059, 34.762230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466179, 34.482449, 35.092716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842778, -0.178975, 0.507635,
		0.340000, 0.908142, -0.244290,
		-0.417283, 0.378479, 0.826214,
		25.340994, 34.595993, 35.340580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083063, 34.870407, 35.031975>,  <25.633093, 34.331059, 34.762230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083063, 34.870407, 35.031975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.856960, 34.686432, 35.305893>,  <25.721298, 34.576046, 35.470242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.856960, 34.686432, 35.305893>,  <26.083063, 34.870407, 35.031975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856960, 34.686432, 35.305893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813763, -0.174865, 0.554268,
		-0.135184, 0.870562, 0.473125,
		-0.565257, -0.459940, 0.684792,
		25.687384, 34.548450, 35.511330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367111, 35.131279, 35.710625>,  <26.083063, 34.870407, 35.031975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367111, 35.131279, 35.710625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.190660, 34.772537, 35.723675>,  <26.084791, 34.557293, 35.731506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.190660, 34.772537, 35.723675>,  <26.367111, 35.131279, 35.710625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190660, 34.772537, 35.723675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704788, -0.323692, 0.631267,
		-0.555592, 0.301461, 0.774879,
		-0.441125, -0.896853, 0.032626,
		26.058323, 34.503483, 35.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145647, 35.049698, 36.398098>,  <26.367111, 35.131279, 35.710625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145647, 35.049698, 36.398098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.233290, 34.710381, 36.205269>,  <26.285875, 34.506790, 36.089573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.233290, 34.710381, 36.205269>,  <26.145647, 35.049698, 36.398098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233290, 34.710381, 36.205269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665269, -0.231533, 0.709795,
		-0.713729, -0.476227, 0.513613,
		0.219105, -0.848293, -0.482071,
		26.299021, 34.455894, 36.060646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051121, 34.320641, 36.791992>,  <26.145647, 35.049698, 36.398098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051121, 34.320641, 36.791992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360138, 34.294056, 36.539402>,  <26.545549, 34.278107, 36.387848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360138, 34.294056, 36.539402>,  <26.051121, 34.320641, 36.791992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360138, 34.294056, 36.539402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579170, -0.333886, 0.743695,
		-0.260263, -0.940268, -0.219452,
		0.772545, -0.066456, -0.631473,
		26.591902, 34.274117, 36.349960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498863, 33.864098, 37.026909>,  <26.051121, 34.320641, 36.791992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498863, 33.864098, 37.026909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773048, 33.984905, 36.761906>,  <26.937561, 34.057388, 36.602901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773048, 33.984905, 36.761906>,  <26.498863, 33.864098, 37.026909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773048, 33.984905, 36.761906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699693, -0.524942, 0.484630,
		-0.201411, -0.795751, -0.571151,
		0.685465, 0.302021, -0.662511,
		26.978687, 34.075512, 36.563152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863047, 33.295464, 36.859501>,  <26.498863, 33.864098, 37.026909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863047, 33.295464, 36.859501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.107471, 33.603184, 36.784901>,  <27.254126, 33.787815, 36.740139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.107471, 33.603184, 36.784901>,  <26.863047, 33.295464, 36.859501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107471, 33.603184, 36.784901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737106, -0.467097, 0.488360,
		0.288580, -0.435890, -0.852479,
		0.611062, 0.769299, -0.186503,
		27.290791, 33.833973, 36.728951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461136, 32.922405, 36.807598>,  <26.863047, 33.295464, 36.859501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461136, 32.922405, 36.807598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.558794, 33.309875, 36.825771>,  <27.617388, 33.542358, 36.836674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.558794, 33.309875, 36.825771>,  <27.461136, 32.922405, 36.807598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558794, 33.309875, 36.825771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821736, -0.231530, 0.520714,
		0.514921, -0.089797, -0.852522,
		0.244143, 0.968674, 0.045430,
		27.632036, 33.600479, 36.839401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022398, 33.010330, 36.338688>,  <27.461136, 32.922405, 36.807598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022398, 33.010330, 36.338688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.986620, 33.285381, 36.626900>,  <27.965153, 33.450413, 36.799828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.986620, 33.285381, 36.626900>,  <28.022398, 33.010330, 36.338688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986620, 33.285381, 36.626900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920501, -0.219204, 0.323462,
		0.380365, 0.692183, -0.613356,
		-0.089445, 0.687628, 0.720532,
		27.959787, 33.491669, 36.843060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526320, 33.528938, 36.327076>,  <28.022398, 33.010330, 36.338688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526320, 33.528938, 36.327076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419291, 33.438747, 36.701790>,  <28.355072, 33.384632, 36.926617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419291, 33.438747, 36.701790>,  <28.526320, 33.528938, 36.327076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419291, 33.438747, 36.701790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954922, -0.191779, 0.226595,
		0.128564, 0.955187, 0.266627,
		-0.267574, -0.225476, 0.936784,
		28.339018, 33.371105, 36.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975349, 33.908558, 36.732838>,  <28.526320, 33.528938, 36.327076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975349, 33.908558, 36.732838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.840179, 33.596241, 36.943043>,  <28.759079, 33.408852, 37.069168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.840179, 33.596241, 36.943043>,  <28.975349, 33.908558, 36.732838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840179, 33.596241, 36.943043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930464, -0.193156, 0.311332,
		-0.141581, 0.594178, 0.791775,
		-0.337923, -0.780796, 0.525515,
		28.738802, 33.362003, 37.100697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168844, 34.001328, 37.438229>,  <28.975349, 33.908558, 36.732838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168844, 34.001328, 37.438229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171122, 33.618813, 37.321278>,  <29.172487, 33.389305, 37.251106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171122, 33.618813, 37.321278>,  <29.168844, 34.001328, 37.438229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171122, 33.618813, 37.321278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919209, -0.110119, 0.378059,
		-0.393728, -0.270910, 0.878399,
		0.005692, -0.956285, -0.292380,
		29.172829, 33.331928, 37.233562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326313, 33.717010, 37.979477>,  <29.168844, 34.001328, 37.438229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326313, 33.717010, 37.979477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474649, 33.460892, 37.710403>,  <29.563650, 33.307220, 37.548958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474649, 33.460892, 37.710403>,  <29.326313, 33.717010, 37.979477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474649, 33.460892, 37.710403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897796, 0.061876, 0.436043,
		-0.237572, -0.765635, 0.597798,
		0.370839, -0.640292, -0.672684,
		29.585901, 33.268803, 37.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360371, 34.338177, 38.411797>,  <29.326313, 33.717010, 37.979477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360371, 34.338177, 38.411797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.071228, 34.235641, 38.668476>,  <28.897743, 34.174122, 38.822483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.071228, 34.235641, 38.668476>,  <29.360371, 34.338177, 38.411797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071228, 34.235641, 38.668476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603102, 0.219221, 0.766949,
		-0.337268, 0.941401, -0.003870,
		-0.722854, -0.256334, 0.641697,
		28.854372, 34.158741, 38.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134937, 34.788319, 38.978642>,  <29.360371, 34.338177, 38.411797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134937, 34.788319, 38.978642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083517, 34.410641, 39.099953>,  <29.052666, 34.184036, 39.172741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083517, 34.410641, 39.099953>,  <29.134937, 34.788319, 38.978642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083517, 34.410641, 39.099953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638874, 0.155053, 0.753524,
		-0.758495, 0.290622, 0.583287,
		-0.128550, -0.944191, 0.303278,
		29.044952, 34.127384, 39.190937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925674, 34.642918, 39.870449>,  <29.134937, 34.788319, 38.978642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925674, 34.642918, 39.870449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126390, 34.336849, 39.709095>,  <29.246820, 34.153210, 39.612282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126390, 34.336849, 39.709095>,  <28.925674, 34.642918, 39.870449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126390, 34.336849, 39.709095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530276, -0.096321, 0.842336,
		-0.683384, -0.636584, 0.357418,
		0.501790, -0.765169, -0.403390,
		29.276928, 34.107300, 39.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266462, 34.327621, 40.566624>,  <28.925674, 34.642918, 39.870449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266462, 34.327621, 40.566624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983139, 34.180309, 40.807510>,  <28.813145, 34.091923, 40.952042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983139, 34.180309, 40.807510>,  <29.266462, 34.327621, 40.566624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983139, 34.180309, 40.807510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541308, 0.264206, 0.798236,
		-0.453087, 0.891383, 0.012215,
		-0.708307, -0.368283, 0.602221,
		28.770647, 34.069824, 40.988178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923437, 34.857929, 41.136299>,  <29.266462, 34.327621, 40.566624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923437, 34.857929, 41.136299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954067, 34.475903, 41.250824>,  <28.972445, 34.246685, 41.319538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954067, 34.475903, 41.250824>,  <28.923437, 34.857929, 41.136299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954067, 34.475903, 41.250824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682525, 0.259544, 0.683225,
		-0.726840, 0.143099, 0.671734,
		0.076576, -0.955071, 0.286315,
		28.977039, 34.189381, 41.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943151, 34.868431, 41.846123>,  <28.923437, 34.857929, 41.136299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943151, 34.868431, 41.846123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136610, 34.548084, 41.704876>,  <29.252686, 34.355877, 41.620129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136610, 34.548084, 41.704876>,  <28.943151, 34.868431, 41.846123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136610, 34.548084, 41.704876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775561, 0.205125, 0.597016,
		-0.405699, -0.562609, 0.720332,
		0.483645, -0.800871, -0.353119,
		29.281704, 34.307823, 41.598942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221745, 34.634304, 42.375324>,  <28.943151, 34.868431, 41.846123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221745, 34.634304, 42.375324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.442539, 34.526287, 42.059757>,  <29.575016, 34.461475, 41.870419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.442539, 34.526287, 42.059757>,  <29.221745, 34.634304, 42.375324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442539, 34.526287, 42.059757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833165, 0.140172, 0.534966,
		-0.033882, -0.952589, 0.302367,
		0.551986, -0.270047, -0.788915,
		29.608135, 34.445274, 41.823082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721716, 34.109570, 42.455959>,  <29.221745, 34.634304, 42.375324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721716, 34.109570, 42.455959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948410, 34.314621, 42.197960>,  <30.084427, 34.437653, 42.043159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948410, 34.314621, 42.197960>,  <29.721716, 34.109570, 42.455959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948410, 34.314621, 42.197960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700982, 0.111358, 0.704431,
		0.432938, -0.851358, -0.296234,
		0.566735, 0.512629, -0.644998,
		30.118431, 34.468410, 42.004459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494118, 33.853142, 42.545788>,  <29.721716, 34.109570, 42.455959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494118, 33.853142, 42.545788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473419, 34.238750, 42.441486>,  <30.461000, 34.470116, 42.378906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473419, 34.238750, 42.441486>,  <30.494118, 33.853142, 42.545788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473419, 34.238750, 42.441486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525858, 0.248275, 0.813531,
		0.848997, -0.095021, -0.519784,
		-0.051747, 0.964018, -0.260752,
		30.457895, 34.527954, 42.363262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147093, 34.108234, 42.784519>,  <30.494118, 33.853142, 42.545788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147093, 34.108234, 42.784519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911343, 34.429142, 42.746555>,  <30.769892, 34.621685, 42.723778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911343, 34.429142, 42.746555>,  <31.147093, 34.108234, 42.784519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911343, 34.429142, 42.746555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418038, 0.403404, 0.813947,
		0.691289, 0.440042, -0.573133,
		-0.589375, 0.802264, -0.094914,
		30.734529, 34.669823, 42.718082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524755, 34.732357, 42.826557>,  <31.147093, 34.108234, 42.784519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524755, 34.732357, 42.826557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156672, 34.803288, 42.966141>,  <30.935822, 34.845844, 43.049889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156672, 34.803288, 42.966141>,  <31.524755, 34.732357, 42.826557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156672, 34.803288, 42.966141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391412, 0.424842, 0.816276,
		-0.003504, 0.887730, -0.460351,
		-0.920209, 0.177327, 0.348957,
		30.880610, 34.856487, 43.070827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480413, 35.402729, 43.094616>,  <31.524755, 34.732357, 42.826557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480413, 35.402729, 43.094616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194696, 35.172699, 43.254150>,  <31.023266, 35.034679, 43.349873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194696, 35.172699, 43.254150>,  <31.480413, 35.402729, 43.094616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194696, 35.172699, 43.254150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178289, 0.401567, 0.898308,
		-0.676756, 0.712764, -0.184307,
		-0.714293, -0.575075, 0.398840,
		30.980408, 35.000175, 43.373802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087784, 35.805466, 43.427761>,  <31.480413, 35.402729, 43.094616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087784, 35.805466, 43.427761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045586, 35.454521, 43.614994>,  <31.020266, 35.243954, 43.727333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045586, 35.454521, 43.614994>,  <31.087784, 35.805466, 43.427761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045586, 35.454521, 43.614994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109741, 0.457562, 0.882380,
		-0.988346, 0.144456, 0.048011,
		-0.105497, -0.877365, 0.468082,
		31.013937, 35.191311, 43.755417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599340, 35.883930, 43.868320>,  <31.087784, 35.805466, 43.427761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599340, 35.883930, 43.868320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855547, 35.594189, 43.970337>,  <31.009272, 35.420341, 44.031548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855547, 35.594189, 43.970337>,  <30.599340, 35.883930, 43.868320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855547, 35.594189, 43.970337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091676, 0.401859, 0.911101,
		-0.762452, -0.560195, 0.323804,
		0.640517, -0.724356, 0.255041,
		31.047703, 35.376881, 44.046848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368420, 35.386692, 44.432964>,  <30.599340, 35.883930, 43.868320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368420, 35.386692, 44.432964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.760796, 35.405006, 44.508499>,  <30.996222, 35.415997, 44.553818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.760796, 35.405006, 44.508499>,  <30.368420, 35.386692, 44.432964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760796, 35.405006, 44.508499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190840, 0.044266, 0.980623,
		0.036545, -0.997970, 0.052161,
		0.980941, 0.045791, 0.188835,
		31.055079, 35.418743, 44.565151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347466, 35.194248, 45.071491>,  <30.368420, 35.386692, 44.432964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347466, 35.194248, 45.071491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718851, 35.333172, 45.018833>,  <30.941683, 35.416527, 44.987240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718851, 35.333172, 45.018833>,  <30.347466, 35.194248, 45.071491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718851, 35.333172, 45.018833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072912, 0.177109, 0.981487,
		0.364196, -0.920873, 0.139116,
		0.928464, 0.347310, -0.131645,
		30.997391, 35.437366, 44.979340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880465, 34.798580, 45.435749>,  <30.347466, 35.194248, 45.071491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880465, 34.798580, 45.435749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990122, 35.182537, 45.412270>,  <31.055916, 35.412910, 45.398182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990122, 35.182537, 45.412270>,  <30.880465, 34.798580, 45.435749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990122, 35.182537, 45.412270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037472, 0.050329, 0.998029,
		0.960959, -0.275802, -0.022171,
		0.274143, 0.959896, -0.058699,
		31.072365, 35.470505, 45.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325844, 34.985184, 45.857063>,  <30.880465, 34.798580, 45.435749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325844, 34.985184, 45.857063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156134, 35.345215, 45.817348>,  <31.054308, 35.561234, 45.793522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156134, 35.345215, 45.817348>,  <31.325844, 34.985184, 45.857063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156134, 35.345215, 45.817348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167970, 0.185966, 0.968092,
		0.889819, 0.394060, -0.230086,
		-0.424274, 0.900074, -0.099285,
		31.028851, 35.615238, 45.787563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792154, 35.615704, 46.030281>,  <31.325844, 34.985184, 45.857063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792154, 35.615704, 46.030281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404995, 35.706417, 46.073627>,  <31.172699, 35.760845, 46.099636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404995, 35.706417, 46.073627>,  <31.792154, 35.615704, 46.030281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404995, 35.706417, 46.073627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145253, 0.152839, 0.977518,
		0.205123, 0.961878, -0.180873,
		-0.967898, 0.226784, 0.108365,
		31.114626, 35.774452, 46.106136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499834, 36.265793, 45.760197>,  <31.792154, 35.615704, 46.030281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499834, 36.265793, 45.760197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707348, 36.599663, 45.686253>,  <31.831856, 36.799984, 45.641884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707348, 36.599663, 45.686253>,  <31.499834, 36.265793, 45.760197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707348, 36.599663, 45.686253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694241, 0.537508, 0.478659,
		0.498891, -0.119982, 0.858319,
		0.518784, 0.834680, -0.184861,
		31.862984, 36.850067, 45.630795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590796, 36.516151, 46.431126>,  <31.499834, 36.265793, 45.760197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590796, 36.516151, 46.431126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631693, 36.808731, 46.161449>,  <31.656231, 36.984280, 45.999645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631693, 36.808731, 46.161449>,  <31.590796, 36.516151, 46.431126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631693, 36.808731, 46.161449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689524, 0.540616, 0.481967,
		0.717010, 0.415589, 0.559626,
		0.102243, 0.731451, -0.674186,
		31.662365, 37.028168, 45.959194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683086, 37.059853, 46.929741>,  <31.590796, 36.516151, 46.431126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683086, 37.059853, 46.929741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486332, 37.092144, 46.582977>,  <31.368280, 37.111519, 46.374920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486332, 37.092144, 46.582977>,  <31.683086, 37.059853, 46.929741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486332, 37.092144, 46.582977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809800, 0.323308, 0.489588,
		0.319803, 0.942844, -0.093655,
		-0.491885, 0.080731, -0.866910,
		31.338766, 37.116364, 46.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159851, 36.895901, 47.496998>,  <31.683086, 37.059853, 46.929741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159851, 36.895901, 47.496998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410507, 36.663208, 47.704422>,  <32.560902, 36.523590, 47.828876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410507, 36.663208, 47.704422>,  <32.159851, 36.895901, 47.496998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410507, 36.663208, 47.704422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607699, 0.781339, 0.142168,
		-0.487878, 0.226042, 0.843137,
		0.626640, -0.581734, 0.518563,
		32.598499, 36.488689, 47.859989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392689, 37.240326, 48.244545>,  <32.159851, 36.895901, 47.496998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392689, 37.240326, 48.244545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650616, 36.977943, 48.087605>,  <32.805370, 36.820515, 47.993443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650616, 36.977943, 48.087605>,  <32.392689, 37.240326, 48.244545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650616, 36.977943, 48.087605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740557, 0.663213, 0.108275,
		0.189187, -0.360373, 0.913422,
		0.644813, -0.655957, -0.392349,
		32.844059, 36.781155, 47.969898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975456, 37.198120, 48.725712>,  <32.392689, 37.240326, 48.244545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975456, 37.198120, 48.725712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089108, 37.046478, 48.373451>,  <33.157299, 36.955494, 48.162094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089108, 37.046478, 48.373451>,  <32.975456, 37.198120, 48.725712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089108, 37.046478, 48.373451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919852, 0.366873, 0.138838,
		0.270454, -0.849519, 0.452959,
		0.284123, -0.379106, -0.880655,
		33.174343, 36.932747, 48.109253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029182, 37.696480, 49.292774>,  <32.975456, 37.198120, 48.725712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029182, 37.696480, 49.292774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051510, 37.344318, 49.481148>,  <33.064907, 37.133022, 49.594173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051510, 37.344318, 49.481148>,  <33.029182, 37.696480, 49.292774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051510, 37.344318, 49.481148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975529, -0.052379, -0.213540,
		0.212668, 0.471331, 0.855932,
		0.055815, -0.880400, 0.470936,
		33.068253, 37.080200, 49.622429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604153, 37.697212, 49.723473>,  <33.029182, 37.696480, 49.292774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604153, 37.697212, 49.723473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525261, 37.311104, 49.654938>,  <33.477928, 37.079441, 49.613815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525261, 37.311104, 49.654938>,  <33.604153, 37.697212, 49.723473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525261, 37.311104, 49.654938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935598, -0.133117, -0.327010,
		0.292845, -0.224800, 0.929358,
		-0.197225, -0.965269, -0.171340,
		33.466095, 37.021523, 49.603535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168911, 37.287346, 50.016998>,  <33.604153, 37.697212, 49.723473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168911, 37.287346, 50.016998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.003292, 37.044926, 49.745331>,  <33.903919, 36.899475, 49.582329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.003292, 37.044926, 49.745331>,  <34.168911, 37.287346, 50.016998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003292, 37.044926, 49.745331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906812, -0.209798, -0.365618,
		0.079093, -0.767263, 0.636436,
		-0.414048, -0.606046, -0.679170,
		33.879078, 36.863113, 49.541580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750324, 36.733288, 49.960953>,  <34.168911, 37.287346, 50.016998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750324, 36.733288, 49.960953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492653, 36.671913, 49.661221>,  <34.338051, 36.635086, 49.481380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492653, 36.671913, 49.661221>,  <34.750324, 36.733288, 49.960953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492653, 36.671913, 49.661221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739940, -0.373137, -0.559695,
		-0.193723, -0.915000, 0.353901,
		-0.644174, -0.153440, -0.749330,
		34.299400, 36.625881, 49.436420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955833, 36.027386, 49.712753>,  <34.750324, 36.733288, 49.960953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955833, 36.027386, 49.712753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761799, 36.254944, 49.447105>,  <34.645378, 36.391479, 49.287716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761799, 36.254944, 49.447105>,  <34.955833, 36.027386, 49.712753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761799, 36.254944, 49.447105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708186, -0.189956, -0.679992,
		-0.512996, -0.800174, -0.310736,
		-0.485086, 0.568892, -0.664119,
		34.616272, 36.425610, 49.247871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961903, 35.585052, 49.206593>,  <34.955833, 36.027386, 49.712753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961903, 35.585052, 49.206593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859219, 35.929863, 49.031776>,  <34.797607, 36.136749, 48.926888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859219, 35.929863, 49.031776>,  <34.961903, 35.585052, 49.206593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859219, 35.929863, 49.031776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631084, -0.192975, -0.751328,
		-0.732005, -0.468683, -0.494475,
		-0.256713, 0.862031, -0.437037,
		34.782204, 36.188473, 48.900665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871559, 35.437229, 48.461899>,  <34.961903, 35.585052, 49.206593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871559, 35.437229, 48.461899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925194, 35.833054, 48.483002>,  <34.957375, 36.070549, 48.495663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925194, 35.833054, 48.483002>,  <34.871559, 35.437229, 48.461899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925194, 35.833054, 48.483002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629822, -0.043995, -0.775493,
		-0.765079, 0.137210, -0.629148,
		0.134085, 0.989565, 0.052758,
		34.965420, 36.129925, 48.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956196, 35.666290, 47.756687>,  <34.871559, 35.437229, 48.461899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956196, 35.666290, 47.756687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132885, 35.959526, 47.963554>,  <35.238899, 36.135468, 48.087673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132885, 35.959526, 47.963554>,  <34.956196, 35.666290, 47.756687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132885, 35.959526, 47.963554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698092, 0.081222, -0.711386,
		-0.563516, 0.675263, -0.475888,
		0.441720, 0.733091, 0.517166,
		35.265400, 36.179455, 48.118706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006149, 36.153759, 47.297623>,  <34.956196, 35.666290, 47.756687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006149, 36.153759, 47.297623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280109, 36.221260, 47.581150>,  <35.444485, 36.261761, 47.751266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280109, 36.221260, 47.581150>,  <35.006149, 36.153759, 47.297623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280109, 36.221260, 47.581150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719770, -0.005411, -0.694192,
		-0.113312, 0.985643, -0.125169,
		0.684903, 0.168753, 0.708823,
		35.485580, 36.271885, 47.793797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504715, 36.655540, 47.067081>,  <35.006149, 36.153759, 47.297623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504715, 36.655540, 47.067081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720531, 36.491688, 47.361320>,  <35.850021, 36.393375, 47.537865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720531, 36.491688, 47.361320>,  <35.504715, 36.655540, 47.067081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720531, 36.491688, 47.361320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803844, -0.009281, -0.594768,
		0.250462, 0.912204, 0.324271,
		0.539540, -0.409630, 0.735595,
		35.882393, 36.368797, 47.582001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168060, 37.068283, 47.157139>,  <35.504715, 36.655540, 47.067081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168060, 37.068283, 47.157139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243866, 36.707542, 47.312447>,  <36.289349, 36.491100, 47.405632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243866, 36.707542, 47.312447>,  <36.168060, 37.068283, 47.157139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243866, 36.707542, 47.312447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895210, -0.003736, -0.445629,
		0.403340, 0.432036, 0.806636,
		0.189514, -0.901848, 0.388270,
		36.300720, 36.436989, 47.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758980, 37.112705, 47.268772>,  <36.168060, 37.068283, 47.157139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758980, 37.112705, 47.268772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717464, 36.714970, 47.277885>,  <36.692554, 36.476330, 47.283352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717464, 36.714970, 47.277885>,  <36.758980, 37.112705, 47.268772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717464, 36.714970, 47.277885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874136, -0.102116, -0.474824,
		0.474463, -0.029366, 0.879786,
		-0.103784, -0.994339, 0.022780,
		36.686329, 36.416668, 47.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322865, 36.872791, 47.534203>,  <36.758980, 37.112705, 47.268772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322865, 36.872791, 47.534203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172230, 36.573555, 47.315647>,  <37.081848, 36.394012, 47.184513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172230, 36.573555, 47.315647>,  <37.322865, 36.872791, 47.534203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172230, 36.573555, 47.315647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872566, -0.088343, -0.480441,
		0.311145, -0.657686, 0.686030,
		-0.376585, -0.748094, -0.546387,
		37.059254, 36.349129, 47.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945190, 36.516048, 47.356140>,  <37.322865, 36.872791, 47.534203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945190, 36.516048, 47.356140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678253, 36.313297, 47.137882>,  <37.518089, 36.191647, 47.006927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678253, 36.313297, 47.137882>,  <37.945190, 36.516048, 47.356140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678253, 36.313297, 47.137882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725685, -0.277846, -0.629431,
		0.167441, -0.816012, 0.553253,
		-0.667342, -0.506879, -0.545645,
		37.478050, 36.161232, 46.974190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325741, 36.005005, 47.200359>,  <37.945190, 36.516048, 47.356140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325741, 36.005005, 47.200359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055695, 35.975311, 46.906773>,  <37.893669, 35.957493, 46.730621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055695, 35.975311, 46.906773>,  <38.325741, 36.005005, 47.200359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055695, 35.975311, 46.906773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732812, -0.182004, -0.655638,
		-0.084912, -0.980491, 0.177276,
		-0.675113, -0.074238, -0.733970,
		37.853161, 35.953041, 46.686581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778088, 35.529831, 46.885937>,  <38.325741, 36.005005, 47.200359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778088, 35.529831, 46.885937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507599, 35.778969, 46.728565>,  <38.345306, 35.928452, 46.634140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507599, 35.778969, 46.728565>,  <38.778088, 35.529831, 46.885937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507599, 35.778969, 46.728565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597668, 0.151593, -0.787282,
		-0.430710, -0.767522, -0.474763,
		-0.676226, 0.622840, -0.393431,
		38.304729, 35.965820, 46.610535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053455, 34.927921, 47.298748>,  <38.778088, 35.529831, 46.885937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053455, 34.927921, 47.298748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285976, 34.657436, 47.479782>,  <39.425488, 34.495144, 47.588402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285976, 34.657436, 47.479782>,  <39.053455, 34.927921, 47.298748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285976, 34.657436, 47.479782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633579, -0.027155, 0.773201,
		-0.510557, -0.736207, -0.444219,
		0.581299, -0.676211, 0.452582,
		39.460365, 34.454575, 47.615555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676804, 34.248318, 47.464985>,  <39.053455, 34.927921, 47.298748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676804, 34.248318, 47.464985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983135, 34.321301, 47.711632>,  <39.166935, 34.365089, 47.859619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983135, 34.321301, 47.711632>,  <38.676804, 34.248318, 47.464985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983135, 34.321301, 47.711632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632565, 0.041370, 0.773402,
		0.115609, -0.982342, 0.147102,
		0.765830, 0.182464, 0.616612,
		39.212883, 34.376038, 47.896614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873817, 33.767200, 48.057861>,  <38.676804, 34.248318, 47.464985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873817, 33.767200, 48.057861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948280, 34.149624, 48.148457>,  <38.992958, 34.379078, 48.202812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948280, 34.149624, 48.148457>,  <38.873817, 33.767200, 48.057861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948280, 34.149624, 48.148457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620986, -0.064148, 0.781193,
		0.761394, -0.286073, 0.581757,
		0.186159, 0.956058, 0.226489,
		39.004128, 34.436440, 48.216404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882225, 33.856396, 48.862583>,  <38.873817, 33.767200, 48.057861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882225, 33.856396, 48.862583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792694, 34.186665, 48.655445>,  <38.738976, 34.384827, 48.531162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792694, 34.186665, 48.655445>,  <38.882225, 33.856396, 48.862583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792694, 34.186665, 48.655445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717016, 0.220381, 0.661303,
		0.660144, 0.519320, 0.542695,
		-0.223828, 0.825675, -0.517844,
		38.725544, 34.434368, 48.500092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529537, 34.393623, 49.329819>,  <38.882225, 33.856396, 48.862583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529537, 34.393623, 49.329819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432804, 34.535995, 48.968746>,  <38.374763, 34.621418, 48.752102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432804, 34.535995, 48.968746>,  <38.529537, 34.393623, 49.329819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432804, 34.535995, 48.968746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818063, 0.425500, 0.386940,
		0.521813, 0.832024, 0.188271,
		-0.241834, 0.355928, -0.902680,
		38.360252, 34.642773, 48.697941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666512, 35.060955, 49.728607>,  <38.529537, 34.393623, 49.329819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666512, 35.060955, 49.728607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.476612, 35.386349, 49.594234>,  <38.362671, 35.581585, 49.513611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.476612, 35.386349, 49.594234>,  <38.666512, 35.060955, 49.728607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476612, 35.386349, 49.594234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289005, 0.216436, 0.932541,
		0.831318, 0.539809, 0.132350,
		-0.474749, 0.813487, -0.335935,
		38.334187, 35.630394, 49.493454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881245, 35.655937, 50.170551>,  <38.666512, 35.060955, 49.728607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881245, 35.655937, 50.170551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516781, 35.659775, 50.005772>,  <38.298103, 35.662079, 49.906906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516781, 35.659775, 50.005772>,  <38.881245, 35.655937, 50.170551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516781, 35.659775, 50.005772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411250, 0.041370, 0.910583,
		0.025777, 0.999098, -0.033749,
		-0.911158, 0.009592, -0.411946,
		38.243435, 35.662651, 49.882187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431309, 36.189507, 50.568356>,  <38.881245, 35.655937, 50.170551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431309, 36.189507, 50.568356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165234, 35.952419, 50.386715>,  <38.005589, 35.810165, 50.277729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165234, 35.952419, 50.386715>,  <38.431309, 36.189507, 50.568356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165234, 35.952419, 50.386715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380644, -0.254024, 0.889147,
		-0.642366, 0.764302, -0.056641,
		-0.665189, -0.592718, -0.454103,
		37.965675, 35.774605, 50.250484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696625, 36.437672, 50.577408>,  <38.431309, 36.189507, 50.568356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696625, 36.437672, 50.577408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664204, 36.045303, 50.506733>,  <37.644753, 35.809883, 50.464329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664204, 36.045303, 50.506733>,  <37.696625, 36.437672, 50.577408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664204, 36.045303, 50.506733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541178, -0.105552, 0.834257,
		-0.836993, 0.163237, -0.522300,
		-0.081052, -0.980924, -0.176686,
		37.639889, 35.751026, 50.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990753, 36.312721, 50.655464>,  <37.696625, 36.437672, 50.577408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990753, 36.312721, 50.655464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194237, 35.973572, 50.715240>,  <37.316326, 35.770084, 50.751106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194237, 35.973572, 50.715240>,  <36.990753, 36.312721, 50.655464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194237, 35.973572, 50.715240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453473, -0.116329, 0.883646,
		-0.731834, -0.517283, -0.443664,
		0.508706, -0.847872, 0.149440,
		37.346848, 35.719212, 50.760071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524044, 35.959778, 50.917423>,  <36.990753, 36.312721, 50.655464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524044, 35.959778, 50.917423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845360, 35.741570, 51.013035>,  <37.038147, 35.610645, 51.070400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845360, 35.741570, 51.013035>,  <36.524044, 35.959778, 50.917423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845360, 35.741570, 51.013035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402497, -0.201402, 0.892991,
		-0.439005, -0.813537, -0.381355,
		0.803287, -0.545522, 0.239030,
		37.086346, 35.577911, 51.084743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271252, 35.330368, 51.072914>,  <36.524044, 35.959778, 50.917423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271252, 35.330368, 51.072914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624836, 35.359661, 51.257629>,  <36.836987, 35.377235, 51.368458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624836, 35.359661, 51.257629>,  <36.271252, 35.330368, 51.072914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624836, 35.359661, 51.257629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452272, -0.116571, 0.884229,
		0.118585, -0.990479, -0.069924,
		0.883961, 0.073232, 0.461789,
		36.890026, 35.381630, 51.396168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259132, 34.840790, 51.500690>,  <36.271252, 35.330368, 51.072914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259132, 34.840790, 51.500690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552044, 35.071747, 51.645126>,  <36.727791, 35.210323, 51.731789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552044, 35.071747, 51.645126>,  <36.259132, 34.840790, 51.500690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552044, 35.071747, 51.645126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488471, 0.075881, 0.869275,
		0.474516, -0.812930, 0.337607,
		0.732278, 0.577396, 0.361086,
		36.771729, 35.244965, 51.753452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462521, 34.502937, 52.039272>,  <36.259132, 34.840790, 51.500690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462521, 34.502937, 52.039272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587605, 34.878750, 52.095116>,  <36.662655, 35.104237, 52.128620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587605, 34.878750, 52.095116>,  <36.462521, 34.502937, 52.039272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587605, 34.878750, 52.095116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517722, 0.045370, 0.854345,
		0.796351, -0.339442, 0.500604,
		0.312713, 0.939532, 0.139606,
		36.681419, 35.160610, 52.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823166, 34.601585, 52.728416>,  <36.462521, 34.502937, 52.039272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823166, 34.601585, 52.728416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675095, 34.955185, 52.614212>,  <36.586254, 35.167343, 52.545689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675095, 34.955185, 52.614212>,  <36.823166, 34.601585, 52.728416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675095, 34.955185, 52.614212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355488, 0.149152, 0.922704,
		0.858254, 0.443057, 0.259039,
		-0.370174, 0.883999, -0.285511,
		36.564041, 35.220387, 52.528557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848400, 34.956463, 53.358654>,  <36.823166, 34.601585, 52.728416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848400, 34.956463, 53.358654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634682, 35.207542, 53.132195>,  <36.506451, 35.358189, 52.996319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634682, 35.207542, 53.132195>,  <36.848400, 34.956463, 53.358654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634682, 35.207542, 53.132195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446228, 0.359394, 0.819583,
		0.717922, 0.690529, 0.088075,
		-0.534292, 0.627698, -0.566151,
		36.474396, 35.395851, 52.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972584, 35.724045, 53.581814>,  <36.848400, 34.956463, 53.358654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972584, 35.724045, 53.581814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.617455, 35.718697, 53.397820>,  <36.404377, 35.715488, 53.287422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.617455, 35.718697, 53.397820>,  <36.972584, 35.724045, 53.581814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617455, 35.718697, 53.397820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383593, 0.573688, 0.723698,
		0.254209, 0.818965, -0.514465,
		-0.887825, -0.013375, -0.459986,
		36.351109, 35.714684, 53.259823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785465, 36.407139, 53.524414>,  <36.972584, 35.724045, 53.581814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785465, 36.407139, 53.524414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464939, 36.167995, 53.515808>,  <36.272625, 36.024509, 53.510647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464939, 36.167995, 53.515808>,  <36.785465, 36.407139, 53.524414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464939, 36.167995, 53.515808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370009, 0.467030, 0.803104,
		-0.470096, 0.651497, -0.595450,
		-0.801313, -0.597858, -0.021511,
		36.224545, 35.988640, 53.509354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279507, 36.838245, 53.488934>,  <36.785465, 36.407139, 53.524414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279507, 36.838245, 53.488934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155380, 36.500298, 53.663246>,  <36.080902, 36.297531, 53.767834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155380, 36.500298, 53.663246>,  <36.279507, 36.838245, 53.488934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155380, 36.500298, 53.663246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292958, 0.521092, 0.801647,
		-0.904366, 0.121102, -0.409215,
		-0.310320, -0.844865, 0.435780,
		36.062283, 36.246838, 53.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990944, 37.043491, 53.986992>,  <36.279507, 36.838245, 53.488934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990944, 37.043491, 53.986992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925400, 36.656380, 54.063473>,  <35.886074, 36.424114, 54.109364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925400, 36.656380, 54.063473>,  <35.990944, 37.043491, 53.986992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925400, 36.656380, 54.063473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432746, 0.244699, 0.867671,
		-0.886498, 0.059438, -0.458899,
		-0.163865, -0.967775, 0.191204,
		35.876240, 36.366047, 54.120834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371777, 36.970036, 54.144577>,  <35.990944, 37.043491, 53.986992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371777, 36.970036, 54.144577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522858, 36.634819, 54.302071>,  <35.613506, 36.433689, 54.396564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522858, 36.634819, 54.302071>,  <35.371777, 36.970036, 54.144577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522858, 36.634819, 54.302071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279169, 0.302370, 0.911393,
		-0.882841, -0.454149, -0.119752,
		0.377699, -0.838046, 0.393729,
		35.636166, 36.383404, 54.420189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861465, 36.714470, 54.523857>,  <35.371777, 36.970036, 54.144577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861465, 36.714470, 54.523857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195393, 36.549843, 54.670113>,  <35.395748, 36.451065, 54.757866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195393, 36.549843, 54.670113>,  <34.861465, 36.714470, 54.523857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195393, 36.549843, 54.670113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265355, 0.281097, 0.922264,
		-0.482358, -0.866945, 0.125451,
		0.834816, -0.411572, 0.365637,
		35.445839, 36.426373, 54.779804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715294, 36.318874, 55.171516>,  <34.861465, 36.714470, 54.523857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715294, 36.318874, 55.171516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100807, 36.421638, 55.200161>,  <35.332115, 36.483295, 55.217346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100807, 36.421638, 55.200161>,  <34.715294, 36.318874, 55.171516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100807, 36.421638, 55.200161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161933, 0.350356, 0.922512,
		0.211913, -0.900693, 0.379268,
		0.963779, 0.256909, 0.071607,
		35.389942, 36.498711, 55.221642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861820, 36.192364, 55.853226>,  <34.715294, 36.318874, 55.171516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861820, 36.192364, 55.853226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173450, 36.420609, 55.749344>,  <35.360428, 36.557556, 55.687016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173450, 36.420609, 55.749344>,  <34.861820, 36.192364, 55.853226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173450, 36.420609, 55.749344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067067, 0.487729, 0.870415,
		0.623334, -0.660701, 0.418246,
		0.779074, 0.570609, -0.259707,
		35.407173, 36.591793, 55.671432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290287, 36.171017, 56.404270>,  <34.861820, 36.192364, 55.853226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290287, 36.171017, 56.404270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393665, 36.506176, 56.211964>,  <35.455692, 36.707272, 56.096581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393665, 36.506176, 56.211964>,  <35.290287, 36.171017, 56.404270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393665, 36.506176, 56.211964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019180, 0.493128, 0.869745,
		0.965835, -0.234005, 0.111377,
		0.258448, 0.837894, -0.480768,
		35.471199, 36.757545, 56.067734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865524, 36.380142, 56.696400>,  <35.290287, 36.171017, 56.404270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865524, 36.380142, 56.696400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720192, 36.709572, 56.522171>,  <35.632992, 36.907230, 56.417633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720192, 36.709572, 56.522171>,  <35.865524, 36.380142, 56.696400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720192, 36.709572, 56.522171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023215, 0.475381, 0.879474,
		0.931372, 0.309427, -0.191839,
		-0.363329, 0.823570, -0.435573,
		35.611195, 36.956642, 56.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167614, 36.940746, 57.001301>,  <35.865524, 36.380142, 56.696400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167614, 36.940746, 57.001301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832611, 37.075829, 56.829468>,  <35.631611, 37.156876, 56.726368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832611, 37.075829, 56.829468>,  <36.167614, 36.940746, 57.001301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832611, 37.075829, 56.829468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177565, 0.575306, 0.798432,
		0.516775, 0.744970, -0.421857,
		-0.837505, 0.337702, -0.429584,
		35.581360, 37.177139, 56.700592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124210, 37.549129, 57.291084>,  <36.167614, 36.940746, 57.001301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124210, 37.549129, 57.291084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763382, 37.526798, 57.119904>,  <35.546883, 37.513401, 57.017197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763382, 37.526798, 57.119904>,  <36.124210, 37.549129, 57.291084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763382, 37.526798, 57.119904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391296, 0.524105, 0.756440,
		0.182064, 0.849822, -0.494627,
		-0.902076, -0.055825, -0.427952,
		35.492760, 37.510052, 56.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797070, 38.278236, 57.151855>,  <36.124210, 37.549129, 57.291084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797070, 38.278236, 57.151855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518478, 37.995220, 57.199696>,  <35.351322, 37.825409, 57.228401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518478, 37.995220, 57.199696>,  <35.797070, 38.278236, 57.151855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518478, 37.995220, 57.199696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447738, 0.558744, 0.698094,
		-0.560756, 0.432658, -0.705946,
		-0.696479, -0.707540, 0.119601,
		35.309536, 37.782959, 57.235577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169357, 38.610008, 57.300522>,  <35.797070, 38.278236, 57.151855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169357, 38.610008, 57.300522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044273, 38.244400, 57.403885>,  <34.969223, 38.025036, 57.465904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044273, 38.244400, 57.403885>,  <35.169357, 38.610008, 57.300522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044273, 38.244400, 57.403885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581082, 0.399291, 0.709162,
		-0.751371, 0.071602, -0.655983,
		-0.312706, -0.914024, 0.258409,
		34.950462, 37.970192, 57.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354008, 38.558426, 57.310165>,  <35.169357, 38.610008, 57.300522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354008, 38.558426, 57.310165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481735, 38.272602, 57.559143>,  <34.558372, 38.101109, 57.708530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481735, 38.272602, 57.559143>,  <34.354008, 38.558426, 57.310165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481735, 38.272602, 57.559143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486096, 0.440330, 0.754864,
		-0.813477, -0.543613, -0.206737,
		0.319322, -0.714559, 0.622447,
		34.577530, 38.058235, 57.745876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759392, 38.288395, 57.693169>,  <34.354008, 38.558426, 57.310165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759392, 38.288395, 57.693169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069290, 38.151669, 57.905933>,  <34.255230, 38.069633, 58.033592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069290, 38.151669, 57.905933>,  <33.759392, 38.288395, 57.693169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069290, 38.151669, 57.905933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475595, 0.239293, 0.846491,
		-0.416629, -0.908790, 0.022824,
		0.774745, -0.341818, 0.531913,
		34.301712, 38.049122, 58.065506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408035, 37.830307, 58.206825>,  <33.759392, 38.288395, 57.693169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408035, 37.830307, 58.206825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751633, 37.967079, 58.359249>,  <33.957790, 38.049145, 58.450703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751633, 37.967079, 58.359249>,  <33.408035, 37.830307, 58.206825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751633, 37.967079, 58.359249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487970, 0.321512, 0.811490,
		0.154960, -0.883013, 0.443031,
		0.858995, 0.341934, 0.381062,
		34.009331, 38.069660, 58.473568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416786, 37.545765, 58.941128>,  <33.408035, 37.830307, 58.206825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416786, 37.545765, 58.941128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655830, 37.865669, 58.918301>,  <33.799255, 38.057610, 58.904606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655830, 37.865669, 58.918301>,  <33.416786, 37.545765, 58.941128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655830, 37.865669, 58.918301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387928, 0.350693, 0.852365,
		0.701697, -0.487241, 0.519824,
		0.597606, 0.799756, -0.057066,
		33.835114, 38.105595, 58.901180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610813, 37.670067, 59.647659>,  <33.416786, 37.545765, 58.941128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610813, 37.670067, 59.647659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683620, 38.003220, 59.438591>,  <33.727303, 38.203110, 59.313152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683620, 38.003220, 59.438591>,  <33.610813, 37.670067, 59.647659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683620, 38.003220, 59.438591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335428, 0.552254, 0.763219,
		0.924315, 0.036400, 0.379890,
		0.182014, 0.832881, -0.522666,
		33.738224, 38.253082, 59.281792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918194, 38.100895, 60.137016>,  <33.610813, 37.670067, 59.647659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918194, 38.100895, 60.137016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787239, 38.334179, 59.839645>,  <33.708668, 38.474152, 59.661224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787239, 38.334179, 59.839645>,  <33.918194, 38.100895, 60.137016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787239, 38.334179, 59.839645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471776, 0.580802, 0.663398,
		0.818685, 0.567917, 0.084999,
		-0.327388, 0.583214, -0.743423,
		33.689022, 38.509144, 59.616619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193447, 38.712719, 60.240784>,  <33.918194, 38.100895, 60.137016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193447, 38.712719, 60.240784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848751, 38.747395, 60.040829>,  <33.641933, 38.768200, 59.920856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848751, 38.747395, 60.040829>,  <34.193447, 38.712719, 60.240784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848751, 38.747395, 60.040829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264573, 0.763937, 0.588558,
		0.432906, 0.639441, -0.635380,
		-0.861739, 0.086686, -0.499892,
		33.590229, 38.773399, 59.890862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160969, 39.448917, 60.222900>,  <34.193447, 38.712719, 60.240784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160969, 39.448917, 60.222900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795300, 39.347069, 60.096752>,  <33.575897, 39.285957, 60.021065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795300, 39.347069, 60.096752>,  <34.160969, 39.448917, 60.222900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795300, 39.347069, 60.096752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371808, 0.836603, 0.402312,
		0.161399, 0.485038, -0.859470,
		-0.914171, -0.254625, -0.315368,
		33.521049, 39.270679, 60.002140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865864, 40.076523, 59.991505>,  <34.160969, 39.448917, 60.222900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865864, 40.076523, 59.991505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562382, 39.827869, 60.069412>,  <33.380291, 39.678677, 60.116158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562382, 39.827869, 60.069412>,  <33.865864, 40.076523, 59.991505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562382, 39.827869, 60.069412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428475, 0.701420, 0.569578,
		-0.490683, 0.348690, -0.798527,
		-0.758709, -0.621632, 0.194770,
		33.334770, 39.641380, 60.127842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172573, 40.389618, 59.749756>,  <33.865864, 40.076523, 59.991505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172573, 40.389618, 59.749756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087742, 40.112980, 60.025936>,  <33.036842, 39.946995, 60.191643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087742, 40.112980, 60.025936>,  <33.172573, 40.389618, 59.749756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087742, 40.112980, 60.025936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577835, 0.658523, 0.482135,
		-0.788119, -0.296716, -0.539285,
		-0.212075, -0.691598, 0.690447,
		33.024120, 39.905502, 60.233070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538570, 40.653603, 60.114052>,  <33.172573, 40.389618, 59.749756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538570, 40.653603, 60.114052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663513, 40.371731, 60.368877>,  <32.738480, 40.202606, 60.521774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663513, 40.371731, 60.368877>,  <32.538570, 40.653603, 60.114052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663513, 40.371731, 60.368877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136530, 0.630360, 0.764203,
		-0.940101, -0.325686, 0.100689,
		0.312361, -0.704681, 0.637068,
		32.757221, 40.160328, 60.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132965, 40.687263, 60.710251>,  <32.538570, 40.653603, 60.114052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132965, 40.687263, 60.710251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473412, 40.520107, 60.837357>,  <32.677677, 40.419815, 60.913620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473412, 40.520107, 60.837357>,  <32.132965, 40.687263, 60.710251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473412, 40.520107, 60.837357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051684, 0.669049, 0.741419,
		-0.522430, -0.614609, 0.591035,
		0.851114, -0.417887, 0.317766,
		32.728745, 40.394741, 60.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016701, 40.662048, 61.351917>,  <32.132965, 40.687263, 60.710251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016701, 40.662048, 61.351917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414310, 40.630371, 61.321854>,  <32.652874, 40.611366, 61.303818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414310, 40.630371, 61.321854>,  <32.016701, 40.662048, 61.351917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414310, 40.630371, 61.321854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108966, 0.676699, 0.728152,
		-0.006808, -0.731989, 0.681283,
		0.994022, -0.079194, -0.075155,
		32.712517, 40.606613, 61.299309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268250, 40.727406, 62.085075>,  <32.016701, 40.662048, 61.351917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268250, 40.727406, 62.085075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579460, 40.817364, 61.850437>,  <32.766186, 40.871338, 61.709656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579460, 40.817364, 61.850437>,  <32.268250, 40.727406, 62.085075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579460, 40.817364, 61.850437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283291, 0.707804, 0.647116,
		0.560726, -0.669653, 0.486982,
		0.778031, 0.224897, -0.586591,
		32.812870, 40.884834, 61.674461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914066, 40.652447, 62.436813>,  <32.268250, 40.727406, 62.085075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914066, 40.652447, 62.436813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996021, 40.914524, 62.145954>,  <33.045197, 41.071770, 61.971439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996021, 40.914524, 62.145954>,  <32.914066, 40.652447, 62.436813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996021, 40.914524, 62.145954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363750, 0.638732, 0.678018,
		0.908683, -0.403420, -0.107455,
		0.204891, 0.655190, -0.727149,
		33.057487, 41.111080, 61.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500755, 40.850555, 62.672375>,  <32.914066, 40.652447, 62.436813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500755, 40.850555, 62.672375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424747, 41.136169, 62.402843>,  <33.379143, 41.307537, 62.241127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424747, 41.136169, 62.402843>,  <33.500755, 40.850555, 62.672375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424747, 41.136169, 62.402843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380280, 0.686285, 0.620000,
		0.905140, -0.138428, -0.401944,
		-0.190023, 0.714038, -0.673826,
		33.367741, 41.350380, 62.200695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117367, 41.186718, 62.539032>,  <33.500755, 40.850555, 62.672375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117367, 41.186718, 62.539032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807091, 41.422554, 62.448982>,  <33.620926, 41.564056, 62.394951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807091, 41.422554, 62.448982>,  <34.117367, 41.186718, 62.539032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807091, 41.422554, 62.448982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433486, 0.756997, 0.488923,
		0.458685, 0.281665, -0.842777,
		-0.775692, 0.589594, -0.225126,
		33.574383, 41.599434, 62.381443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401558, 41.720108, 62.064129>,  <34.117367, 41.186718, 62.539032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401558, 41.720108, 62.064129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084099, 41.797844, 62.294731>,  <33.893623, 41.844486, 62.433094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084099, 41.797844, 62.294731>,  <34.401558, 41.720108, 62.064129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084099, 41.797844, 62.294731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568451, 0.574517, 0.588892,
		-0.216768, 0.795087, -0.566434,
		-0.793647, 0.194337, 0.576505,
		33.846004, 41.856144, 62.467682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239807, 42.508286, 62.168850>,  <34.401558, 41.720108, 62.064129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239807, 42.508286, 62.168850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129581, 42.296078, 62.489502>,  <34.063446, 42.168755, 62.681892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129581, 42.296078, 62.489502>,  <34.239807, 42.508286, 62.168850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129581, 42.296078, 62.489502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506074, 0.628939, 0.590190,
		-0.817286, 0.568320, 0.095170,
		-0.275560, -0.530517, 0.801635,
		34.046913, 42.136921, 62.729992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075031, 42.914417, 62.706066>,  <34.239807, 42.508286, 62.168850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075031, 42.914417, 62.706066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188343, 42.583408, 62.899956>,  <34.256332, 42.384804, 63.016289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188343, 42.583408, 62.899956>,  <34.075031, 42.914417, 62.706066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188343, 42.583408, 62.899956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538380, 0.555495, 0.633697,
		-0.793661, 0.081450, 0.602883,
		0.283284, -0.827521, 0.484726,
		34.273327, 42.335152, 63.045372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987106, 43.011177, 63.424149>,  <34.075031, 42.914417, 62.706066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987106, 43.011177, 63.424149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267853, 42.730656, 63.374256>,  <34.436302, 42.562344, 63.344322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267853, 42.730656, 63.374256>,  <33.987106, 43.011177, 63.424149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267853, 42.730656, 63.374256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664966, 0.582324, 0.467673,
		-0.255348, -0.411185, 0.875057,
		0.701867, -0.701303, -0.124729,
		34.478413, 42.520264, 63.336838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526970, 43.544445, 63.520119>,  <33.987106, 43.011177, 63.424149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526970, 43.544445, 63.520119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251213, 43.756901, 63.323093>,  <33.085758, 43.884377, 63.204876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251213, 43.756901, 63.323093>,  <33.526970, 43.544445, 63.520119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251213, 43.756901, 63.323093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644607, 0.139599, -0.751661,
		-0.330478, -0.835703, -0.438617,
		-0.689396, 0.531143, -0.492566,
		33.044395, 43.916245, 63.175323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013466, 43.319847, 62.861622>,  <33.526970, 43.544445, 63.520119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013466, 43.319847, 62.861622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119831, 43.705437, 62.864273>,  <33.183651, 43.936790, 62.865864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119831, 43.705437, 62.864273>,  <33.013466, 43.319847, 62.861622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119831, 43.705437, 62.864273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348442, -0.089709, -0.933027,
		-0.898819, 0.250416, -0.359744,
		0.265917, 0.963973, 0.006623,
		33.199608, 43.994629, 62.866261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877632, 43.787376, 62.276802>,  <33.013466, 43.319847, 62.861622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877632, 43.787376, 62.276802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223400, 43.906441, 62.438881>,  <33.430859, 43.977879, 62.536129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223400, 43.906441, 62.438881>,  <32.877632, 43.787376, 62.276802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223400, 43.906441, 62.438881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409132, 0.051976, -0.910994,
		-0.292225, 0.953256, -0.076853,
		0.864416, 0.297658, 0.405197,
		33.482723, 43.995739, 62.560440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937382, 44.500023, 62.061665>,  <32.877632, 43.787376, 62.276802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937382, 44.500023, 62.061665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272221, 44.304428, 62.159771>,  <33.473125, 44.187073, 62.218636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272221, 44.304428, 62.159771>,  <32.937382, 44.500023, 62.061665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272221, 44.304428, 62.159771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257810, -0.042796, -0.965247,
		0.482489, 0.871241, 0.090241,
		0.837101, -0.488986, 0.245264,
		33.523350, 44.157734, 62.233349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395554, 44.624092, 61.534119>,  <32.937382, 44.500023, 62.061665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395554, 44.624092, 61.534119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583679, 44.326115, 61.723373>,  <33.696556, 44.147327, 61.836926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583679, 44.326115, 61.723373>,  <33.395554, 44.624092, 61.534119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583679, 44.326115, 61.723373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300511, -0.368903, -0.879547,
		0.829755, 0.555851, 0.050362,
		0.470318, -0.744943, 0.473139,
		33.724773, 44.102631, 61.865314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098709, 44.578373, 61.368473>,  <33.395554, 44.624092, 61.534119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098709, 44.578373, 61.368473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972710, 44.214134, 61.475502>,  <33.897110, 43.995590, 61.539719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972710, 44.214134, 61.475502>,  <34.098709, 44.578373, 61.368473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972710, 44.214134, 61.475502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152470, -0.326810, -0.932710,
		0.936765, -0.253007, 0.241783,
		-0.314999, -0.910595, 0.267568,
		33.878208, 43.940956, 61.555771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541363, 44.140289, 61.110607>,  <34.098709, 44.578373, 61.368473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541363, 44.140289, 61.110607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209503, 43.923283, 61.163311>,  <34.010387, 43.793079, 61.194935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209503, 43.923283, 61.163311>,  <34.541363, 44.140289, 61.110607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209503, 43.923283, 61.163311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176428, -0.478683, -0.860079,
		0.529680, -0.690315, 0.492853,
		-0.829646, -0.542520, 0.131759,
		33.960609, 43.760529, 61.202839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678444, 43.552456, 60.739208>,  <34.541363, 44.140289, 61.110607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678444, 43.552456, 60.739208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280613, 43.579700, 60.770664>,  <34.041916, 43.596046, 60.789539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280613, 43.579700, 60.770664>,  <34.678444, 43.552456, 60.739208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280613, 43.579700, 60.770664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094982, -0.286038, -0.953499,
		-0.042446, -0.955795, 0.290955,
		-0.994574, 0.068107, 0.078643,
		33.982243, 43.600132, 60.794258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337090, 42.947010, 60.425827>,  <34.678444, 43.552456, 60.739208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337090, 42.947010, 60.425827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995300, 43.154163, 60.409512>,  <33.790226, 43.278458, 60.399723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995300, 43.154163, 60.409512>,  <34.337090, 42.947010, 60.425827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995300, 43.154163, 60.409512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070948, -0.194120, -0.978409,
		-0.514623, -0.833133, 0.202615,
		-0.854476, 0.517887, -0.040789,
		33.738956, 43.309528, 60.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751297, 42.509674, 60.059757>,  <34.337090, 42.947010, 60.425827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751297, 42.509674, 60.059757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640408, 42.892944, 60.031330>,  <33.573875, 43.122906, 60.014275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640408, 42.892944, 60.031330>,  <33.751297, 42.509674, 60.059757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640408, 42.892944, 60.031330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202723, -0.130638, -0.970483,
		-0.939175, -0.254634, 0.230459,
		-0.277225, 0.958173, -0.071072,
		33.557240, 43.180397, 60.010010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106659, 42.535343, 59.648712>,  <33.751297, 42.509674, 60.059757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106659, 42.535343, 59.648712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257530, 42.905319, 59.629845>,  <33.348053, 43.127304, 59.618523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257530, 42.905319, 59.629845>,  <33.106659, 42.535343, 59.648712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257530, 42.905319, 59.629845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147424, 0.009679, -0.989026,
		-0.914333, 0.379991, 0.140009,
		0.377176, 0.924940, -0.047170,
		33.370682, 43.182800, 59.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648434, 42.827156, 59.218689>,  <33.106659, 42.535343, 59.648712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648434, 42.827156, 59.218689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961895, 43.074718, 59.197392>,  <33.149971, 43.223255, 59.184612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961895, 43.074718, 59.197392>,  <32.648434, 42.827156, 59.218689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961895, 43.074718, 59.197392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072985, 0.006612, -0.997311,
		-0.616893, 0.785435, 0.050352,
		0.783656, 0.618909, -0.053246,
		33.196991, 43.260391, 59.181419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347595, 43.397377, 58.811565>,  <32.648434, 42.827156, 59.218689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347595, 43.397377, 58.811565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745632, 43.378365, 58.776863>,  <32.984455, 43.366959, 58.756042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745632, 43.378365, 58.776863>,  <32.347595, 43.397377, 58.811565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745632, 43.378365, 58.776863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088749, -0.041640, -0.995183,
		0.043687, 0.998001, -0.045654,
		0.995096, -0.047528, -0.086752,
		33.044159, 43.364105, 58.750839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505367, 43.795189, 58.245625>,  <32.347595, 43.397377, 58.811565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505367, 43.795189, 58.245625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847359, 43.591412, 58.284580>,  <33.052551, 43.469143, 58.307953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847359, 43.591412, 58.284580>,  <32.505367, 43.795189, 58.245625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847359, 43.591412, 58.284580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016008, -0.161754, -0.986701,
		0.518423, 0.845164, -0.130141,
		0.854975, -0.509445, 0.097386,
		33.103851, 43.438580, 58.313797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960674, 44.074089, 57.775326>,  <32.505367, 43.795189, 58.245625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960674, 44.074089, 57.775326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127304, 43.718018, 57.849129>,  <33.227283, 43.504375, 57.893410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127304, 43.718018, 57.849129>,  <32.960674, 44.074089, 57.775326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127304, 43.718018, 57.849129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055474, -0.177688, -0.982522,
		0.907407, 0.419531, -0.024639,
		0.416576, -0.890181, 0.184508,
		33.252277, 43.450962, 57.904480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670742, 44.025272, 57.415352>,  <32.960674, 44.074089, 57.775326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670742, 44.025272, 57.415352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547894, 43.651642, 57.488201>,  <33.474186, 43.427464, 57.531910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547894, 43.651642, 57.488201>,  <33.670742, 44.025272, 57.415352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547894, 43.651642, 57.488201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040394, -0.178408, -0.983127,
		0.950812, -0.309297, 0.017062,
		-0.307122, -0.934080, 0.182127,
		33.455757, 43.371418, 57.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059635, 43.689377, 56.955582>,  <33.670742, 44.025272, 57.415352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059635, 43.689377, 56.955582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769230, 43.439365, 57.070293>,  <33.594986, 43.289360, 57.139118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769230, 43.439365, 57.070293>,  <34.059635, 43.689377, 56.955582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769230, 43.439365, 57.070293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175756, -0.234521, -0.956091,
		0.664838, -0.744540, 0.060414,
		-0.726017, -0.625028, 0.286775,
		33.551426, 43.251858, 57.156326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238949, 43.134933, 56.564919>,  <34.059635, 43.689377, 56.955582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238949, 43.134933, 56.564919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859047, 43.089947, 56.681759>,  <33.631107, 43.062954, 56.751862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859047, 43.089947, 56.681759>,  <34.238949, 43.134933, 56.564919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859047, 43.089947, 56.681759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219447, -0.426188, -0.877614,
		0.223188, -0.897617, 0.380093,
		-0.949753, -0.112463, 0.292099,
		33.574120, 43.056210, 56.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247578, 42.503845, 56.538639>,  <34.238949, 43.134933, 56.564919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247578, 42.503845, 56.538639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870499, 42.631931, 56.501160>,  <33.644253, 42.708782, 56.478672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870499, 42.631931, 56.501160>,  <34.247578, 42.503845, 56.538639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870499, 42.631931, 56.501160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080254, -0.490213, -0.867900,
		-0.323848, -0.810649, 0.487822,
		-0.942699, 0.320217, -0.093697,
		33.587688, 42.727997, 56.473049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908966, 41.960388, 56.328167>,  <34.247578, 42.503845, 56.538639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908966, 41.960388, 56.328167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.710289, 42.283012, 56.199947>,  <33.591084, 42.476589, 56.123016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.710289, 42.283012, 56.199947>,  <33.908966, 41.960388, 56.328167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710289, 42.283012, 56.199947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125498, -0.298700, -0.946059,
		-0.858804, -0.510130, 0.047140,
		-0.496694, 0.806564, -0.320545,
		33.561279, 42.524982, 56.103783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496265, 41.801491, 55.754410>,  <33.908966, 41.960388, 56.328167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496265, 41.801491, 55.754410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553665, 42.195644, 55.717697>,  <33.588104, 42.432137, 55.695671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553665, 42.195644, 55.717697>,  <33.496265, 41.801491, 55.754410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553665, 42.195644, 55.717697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253035, -0.126189, -0.959192,
		-0.956756, 0.114416, -0.267445,
		0.143496, 0.985386, -0.091780,
		33.596714, 42.491261, 55.690163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201614, 41.831890, 55.047573>,  <33.496265, 41.801491, 55.754410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201614, 41.831890, 55.047573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.419754, 42.156960, 55.129696>,  <33.550636, 42.352001, 55.178970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.419754, 42.156960, 55.129696>,  <33.201614, 41.831890, 55.047573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419754, 42.156960, 55.129696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327917, 0.018565, -0.944524,
		-0.771406, 0.582417, -0.256367,
		0.545347, 0.812678, 0.205306,
		33.583359, 42.400764, 55.191288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948708, 42.356247, 54.474739>,  <33.201614, 41.831890, 55.047573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948708, 42.356247, 54.474739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308918, 42.457729, 54.615982>,  <33.525043, 42.518620, 54.700726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308918, 42.457729, 54.615982>,  <32.948708, 42.356247, 54.474739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308918, 42.457729, 54.615982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327606, 0.138038, -0.934676,
		-0.285873, 0.957382, 0.041193,
		0.900528, 0.253704, 0.353105,
		33.579075, 42.533840, 54.721912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098423, 42.996311, 54.183781>,  <32.948708, 42.356247, 54.474739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098423, 42.996311, 54.183781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457222, 42.853912, 54.288589>,  <33.672501, 42.768475, 54.351475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457222, 42.853912, 54.288589>,  <33.098423, 42.996311, 54.183781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457222, 42.853912, 54.288589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261628, -0.050208, -0.963862,
		0.356285, 0.933138, 0.048101,
		0.897002, -0.355994, 0.262023,
		33.726322, 42.747112, 54.367195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646175, 43.428486, 53.793545>,  <33.098423, 42.996311, 54.183781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646175, 43.428486, 53.793545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839386, 43.096016, 53.903694>,  <33.955311, 42.896534, 53.969784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839386, 43.096016, 53.903694>,  <33.646175, 43.428486, 53.793545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839386, 43.096016, 53.903694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259286, -0.164616, -0.951668,
		0.836335, 0.531083, 0.135999,
		0.483027, -0.831176, 0.275376,
		33.984295, 42.846664, 53.986305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220356, 43.399746, 53.421432>,  <33.646175, 43.428486, 53.793545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220356, 43.399746, 53.421432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178387, 43.021435, 53.544395>,  <34.153206, 42.794449, 53.618172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178387, 43.021435, 53.544395>,  <34.220356, 43.399746, 53.421432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178387, 43.021435, 53.544395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342675, -0.324568, -0.881606,
		0.933576, 0.012838, 0.358150,
		-0.104926, -0.945775, 0.307408,
		34.146908, 42.737701, 53.636620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787334, 43.101662, 53.094128>,  <34.220356, 43.399746, 53.421432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787334, 43.101662, 53.094128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583858, 42.772865, 53.196556>,  <34.461773, 42.575588, 53.258015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583858, 42.772865, 53.196556>,  <34.787334, 43.101662, 53.094128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583858, 42.772865, 53.196556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355420, -0.471395, -0.807133,
		0.784163, -0.319568, 0.531944,
		-0.508690, -0.821987, 0.256070,
		34.431252, 42.526268, 53.273376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174572, 42.676418, 52.979557>,  <34.787334, 43.101662, 53.094128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174572, 42.676418, 52.979557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841152, 42.455803, 52.966915>,  <34.641098, 42.323433, 52.959328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841152, 42.455803, 52.966915>,  <35.174572, 42.676418, 52.979557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841152, 42.455803, 52.966915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369063, -0.513376, -0.774750,
		0.411077, -0.657459, 0.631478,
		-0.833552, -0.551536, -0.031607,
		34.591087, 42.290340, 52.957432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298176, 41.938805, 53.126095>,  <35.174572, 42.676418, 52.979557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298176, 41.938805, 53.126095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959003, 41.951431, 52.914433>,  <34.755501, 41.959007, 52.787434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959003, 41.951431, 52.914433>,  <35.298176, 41.938805, 53.126095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959003, 41.951431, 52.914433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401867, -0.612706, -0.680510,
		-0.345700, -0.789680, 0.506850,
		-0.847935, 0.031566, -0.529159,
		34.704624, 41.960899, 52.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194630, 41.198357, 52.815342>,  <35.298176, 41.938805, 53.126095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194630, 41.198357, 52.815342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965652, 41.449730, 52.604675>,  <34.828266, 41.600555, 52.478275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965652, 41.449730, 52.604675>,  <35.194630, 41.198357, 52.815342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965652, 41.449730, 52.604675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398550, -0.348082, -0.848526,
		-0.716568, -0.695635, -0.051207,
		-0.572440, 0.628436, -0.526669,
		34.793919, 41.638260, 52.446674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899036, 40.734783, 52.339920>,  <35.194630, 41.198357, 52.815342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899036, 40.734783, 52.339920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864502, 41.095318, 52.170147>,  <34.843781, 41.311638, 52.068283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864502, 41.095318, 52.170147>,  <34.899036, 40.734783, 52.339920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864502, 41.095318, 52.170147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303009, -0.382083, -0.873039,
		-0.949069, -0.203981, -0.240125,
		-0.086336, 0.901334, -0.424432,
		34.838600, 41.365719, 52.042816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486027, 40.713360, 51.753300>,  <34.899036, 40.734783, 52.339920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486027, 40.713360, 51.753300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655296, 41.067772, 51.677540>,  <34.756859, 41.280418, 51.632084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655296, 41.067772, 51.677540>,  <34.486027, 40.713360, 51.753300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655296, 41.067772, 51.677540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147864, -0.273772, -0.950361,
		-0.893901, 0.374165, -0.246866,
		0.423176, 0.886030, -0.189399,
		34.782249, 41.333580, 51.620720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153252, 40.993732, 51.180538>,  <34.486027, 40.713360, 51.753300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153252, 40.993732, 51.180538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501205, 41.190639, 51.193020>,  <34.709976, 41.308784, 51.200508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501205, 41.190639, 51.193020>,  <34.153252, 40.993732, 51.180538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501205, 41.190639, 51.193020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266201, -0.415258, -0.869884,
		-0.415258, 0.765005, -0.492268,
		0.869884, 0.492268, 0.031206,
		34.762169, 41.338322, 51.202381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378120, 41.201462, 50.459286>,  <34.153252, 40.993732, 51.180538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378120, 41.201462, 50.459286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733116, 41.209435, 50.643448>,  <34.946114, 41.214218, 50.753944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733116, 41.209435, 50.643448>,  <34.378120, 41.201462, 50.459286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733116, 41.209435, 50.643448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389540, -0.566260, -0.726367,
		0.246231, 0.823986, -0.510312,
		0.887485, 0.019933, 0.460406,
		34.999363, 41.215416, 50.781570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835426, 41.473629, 49.912994>,  <34.378120, 41.201462, 50.459286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835426, 41.473629, 49.912994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050598, 41.286572, 50.193546>,  <35.179703, 41.174335, 50.361877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050598, 41.286572, 50.193546>,  <34.835426, 41.473629, 49.912994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050598, 41.286572, 50.193546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464861, -0.529522, -0.709585,
		0.703230, 0.707755, -0.067458,
		0.537933, -0.467643, 0.701383,
		35.211979, 41.146278, 50.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529377, 41.460030, 49.659023>,  <34.835426, 41.473629, 49.912994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529377, 41.460030, 49.659023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525280, 41.178947, 49.943584>,  <35.522820, 41.010296, 50.114323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525280, 41.178947, 49.943584>,  <35.529377, 41.460030, 49.659023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525280, 41.178947, 49.943584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444279, -0.640562, -0.626335,
		0.895830, 0.309644, 0.318763,
		-0.010246, -0.702709, 0.711403,
		35.522205, 40.968136, 50.157005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190685, 41.242393, 49.617191>,  <35.529377, 41.460030, 49.659023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190685, 41.242393, 49.617191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998581, 40.940571, 49.796074>,  <35.883320, 40.759480, 49.903404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998581, 40.940571, 49.796074>,  <36.190685, 41.242393, 49.617191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998581, 40.940571, 49.796074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626920, -0.651883, -0.426638,
		0.613451, 0.075467, 0.786119,
		-0.480260, -0.754555, 0.447210,
		35.854504, 40.714203, 49.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698414, 40.689655, 49.686337>,  <36.190685, 41.242393, 49.617191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698414, 40.689655, 49.686337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352585, 40.499069, 49.750214>,  <36.145088, 40.384716, 49.788540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352585, 40.499069, 49.750214>,  <36.698414, 40.689655, 49.686337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352585, 40.499069, 49.750214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363902, -0.812789, -0.454916,
		0.346550, -0.335193, 0.876099,
		-0.864568, -0.476465, 0.159694,
		36.093216, 40.356129, 49.798122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876488, 39.990967, 49.974571>,  <36.698414, 40.689655, 49.686337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876488, 39.990967, 49.974571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503410, 39.963928, 49.832859>,  <36.279564, 39.947704, 49.747829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503410, 39.963928, 49.832859>,  <36.876488, 39.990967, 49.974571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503410, 39.963928, 49.832859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216625, -0.890362, -0.400412,
		-0.288374, -0.450208, 0.845076,
		-0.932692, -0.067596, -0.354284,
		36.223602, 39.943649, 49.726574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671951, 39.307053, 50.148487>,  <36.876488, 39.990967, 49.974571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671951, 39.307053, 50.148487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426849, 39.412998, 49.850662>,  <36.279789, 39.476566, 49.671967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426849, 39.412998, 49.850662>,  <36.671951, 39.307053, 50.148487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426849, 39.412998, 49.850662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322295, -0.776492, -0.541466,
		-0.721562, -0.571757, 0.390438,
		-0.612759, 0.264865, -0.744562,
		36.243023, 39.492458, 49.627293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482986, 38.635345, 49.782001>,  <36.671951, 39.307053, 50.148487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482986, 38.635345, 49.782001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322327, 38.895615, 49.524227>,  <36.225929, 39.051777, 49.369564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322327, 38.895615, 49.524227>,  <36.482986, 38.635345, 49.782001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322327, 38.895615, 49.524227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067976, -0.722933, -0.687566,
		-0.913268, -0.232353, 0.334595,
		-0.401648, 0.650677, -0.644437,
		36.201832, 39.090816, 49.330894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904385, 38.393295, 49.469658>,  <36.482986, 38.635345, 49.782001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904385, 38.393295, 49.469658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050327, 38.648983, 49.198872>,  <36.137894, 38.802395, 49.036400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050327, 38.648983, 49.198872>,  <35.904385, 38.393295, 49.469658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050327, 38.648983, 49.198872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034663, -0.735912, -0.676190,
		-0.930418, 0.223246, -0.290659,
		0.364857, 0.639215, -0.676967,
		36.159782, 38.840748, 48.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417210, 38.349995, 48.884403>,  <35.904385, 38.393295, 49.469658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417210, 38.349995, 48.884403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739082, 38.522549, 48.721237>,  <35.932205, 38.626080, 48.623337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739082, 38.522549, 48.721237>,  <35.417210, 38.349995, 48.884403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739082, 38.522549, 48.721237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069920, -0.613431, -0.786647,
		-0.589573, 0.661523, -0.463455,
		0.804683, 0.431381, -0.407916,
		35.980488, 38.651962, 48.598862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198952, 38.375343, 48.200256>,  <35.417210, 38.349995, 48.884403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198952, 38.375343, 48.200256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593697, 38.401276, 48.259449>,  <35.830544, 38.416836, 48.294964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593697, 38.401276, 48.259449>,  <35.198952, 38.375343, 48.200256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593697, 38.401276, 48.259449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150702, -0.699565, -0.698497,
		0.058237, 0.711621, -0.700145,
		0.986862, 0.064835, 0.147983,
		35.889755, 38.420727, 48.303844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588005, 38.239239, 47.850216>,  <35.198952, 38.375343, 48.200256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588005, 38.239239, 47.850216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479107, 38.488194, 47.556683>,  <34.413769, 38.637566, 47.380562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479107, 38.488194, 47.556683>,  <34.588005, 38.239239, 47.850216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479107, 38.488194, 47.556683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720001, 0.374169, 0.584461,
		0.638341, 0.687479, 0.346255,
		-0.272247, 0.622390, -0.733834,
		34.397434, 38.674911, 47.336533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505657, 38.921925, 48.122326>,  <34.588005, 38.239239, 47.850216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505657, 38.921925, 48.122326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295586, 38.877277, 47.784870>,  <34.169544, 38.850487, 47.582397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295586, 38.877277, 47.784870>,  <34.505657, 38.921925, 48.122326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295586, 38.877277, 47.784870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832794, 0.271347, 0.482520,
		0.175061, 0.955987, -0.235460,
		-0.525175, -0.111620, -0.843642,
		34.138035, 38.843792, 47.531776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246452, 39.538673, 47.884197>,  <34.505657, 38.921925, 48.122326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246452, 39.538673, 47.884197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001804, 39.285374, 47.694496>,  <33.855015, 39.133392, 47.580677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001804, 39.285374, 47.694496>,  <34.246452, 39.538673, 47.884197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001804, 39.285374, 47.694496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777340, 0.369489, 0.509136,
		-0.147179, 0.680055, -0.718237,
		-0.611621, -0.633248, -0.474253,
		33.818317, 39.095398, 47.552219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771240, 39.979340, 47.654106>,  <34.246452, 39.538673, 47.884197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771240, 39.979340, 47.654106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586189, 39.625420, 47.631813>,  <33.475159, 39.413067, 47.618435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586189, 39.625420, 47.631813>,  <33.771240, 39.979340, 47.654106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586189, 39.625420, 47.631813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825842, 0.407224, 0.390069,
		-0.322436, 0.226485, -0.919097,
		-0.462624, -0.884801, -0.055737,
		33.447403, 39.359978, 47.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094341, 40.128197, 47.515392>,  <33.771240, 39.979340, 47.654106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094341, 40.128197, 47.515392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053448, 39.756359, 47.657040>,  <33.028912, 39.533257, 47.742027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053448, 39.756359, 47.657040>,  <33.094341, 40.128197, 47.515392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053448, 39.756359, 47.657040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830489, 0.275711, 0.484016,
		-0.547574, -0.244610, -0.800206,
		-0.102231, -0.929596, 0.354118,
		33.022778, 39.477482, 47.763275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336853, 39.944481, 47.451862>,  <33.094341, 40.128197, 47.515392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336853, 39.944481, 47.451862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.499668, 39.714272, 47.735577>,  <32.597359, 39.576145, 47.905807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.499668, 39.714272, 47.735577>,  <32.336853, 39.944481, 47.451862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499668, 39.714272, 47.735577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748654, 0.234665, 0.620040,
		-0.523293, -0.783392, -0.335352,
		0.407039, -0.575525, 0.709288,
		32.621780, 39.541615, 47.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670973, 39.688839, 47.781494>,  <32.336853, 39.944481, 47.451862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670973, 39.688839, 47.781494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944326, 39.629341, 48.067390>,  <32.108337, 39.593643, 48.238930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944326, 39.629341, 48.067390>,  <31.670973, 39.688839, 47.781494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944326, 39.629341, 48.067390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721946, 0.007850, 0.691905,
		-0.108532, -0.988844, -0.102024,
		0.683385, -0.148750, 0.714744,
		32.149342, 39.584717, 48.281815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334345, 39.377708, 48.305435>,  <31.670973, 39.688839, 47.781494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334345, 39.377708, 48.305435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667551, 39.493858, 48.493805>,  <31.867476, 39.563549, 48.606827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667551, 39.493858, 48.493805>,  <31.334345, 39.377708, 48.305435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667551, 39.493858, 48.493805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519494, 0.117765, 0.846320,
		0.190293, -0.949638, 0.248949,
		0.833015, 0.290377, 0.470921,
		31.917456, 39.580971, 48.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553574, 38.809933, 48.826530>,  <31.334345, 39.377708, 48.305435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553574, 38.809933, 48.826530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682510, 39.171516, 48.938927>,  <31.759872, 39.388466, 49.006367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682510, 39.171516, 48.938927>,  <31.553574, 38.809933, 48.826530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682510, 39.171516, 48.938927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528308, -0.074519, 0.845776,
		0.785485, -0.421080, 0.453547,
		0.322341, 0.903957, 0.280993,
		31.779213, 39.442703, 49.023224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517263, 38.741936, 49.499893>,  <31.553574, 38.809933, 48.826530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517263, 38.741936, 49.499893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.581987, 39.135281, 49.466862>,  <31.620821, 39.371288, 49.447044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.581987, 39.135281, 49.466862>,  <31.517263, 38.741936, 49.499893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581987, 39.135281, 49.466862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447204, 0.147664, 0.882158,
		0.879674, -0.105814, 0.463657,
		0.161810, 0.983361, -0.082576,
		31.630529, 39.430290, 49.442089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761148, 39.024433, 50.142109>,  <31.517263, 38.741936, 49.499893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761148, 39.024433, 50.142109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627279, 39.338314, 49.933403>,  <31.546957, 39.526642, 49.808178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627279, 39.338314, 49.933403>,  <31.761148, 39.024433, 50.142109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627279, 39.338314, 49.933403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440369, 0.359282, 0.822794,
		0.833107, 0.505139, 0.225314,
		-0.334675, 0.784698, -0.521769,
		31.526876, 39.573723, 49.776871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914438, 39.549465, 50.553062>,  <31.761148, 39.024433, 50.142109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914438, 39.549465, 50.553062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627714, 39.706936, 50.322861>,  <31.455681, 39.801418, 50.184742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627714, 39.706936, 50.322861>,  <31.914438, 39.549465, 50.553062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627714, 39.706936, 50.322861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310864, 0.558363, 0.769151,
		0.624139, 0.730237, -0.277858,
		-0.716808, 0.393681, -0.575501,
		31.412672, 39.825039, 50.150211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836321, 40.278427, 50.747662>,  <31.914438, 39.549465, 50.553062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836321, 40.278427, 50.747662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492521, 40.184639, 50.565987>,  <31.286242, 40.128365, 50.456982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492521, 40.184639, 50.565987>,  <31.836321, 40.278427, 50.747662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492521, 40.184639, 50.565987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497720, 0.586186, 0.639266,
		0.116347, 0.775505, -0.620529,
		-0.859499, -0.234473, -0.454185,
		31.234673, 40.114296, 50.429729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460144, 40.919674, 50.715008>,  <31.836321, 40.278427, 50.747662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460144, 40.919674, 50.715008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158773, 40.657879, 50.740280>,  <30.977951, 40.500801, 50.755444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158773, 40.657879, 50.740280>,  <31.460144, 40.919674, 50.715008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158773, 40.657879, 50.740280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472539, 0.605768, 0.640119,
		-0.457225, 0.452427, -0.765673,
		-0.753427, -0.654489, 0.063183,
		30.932745, 40.461533, 50.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888897, 41.370655, 50.857044>,  <31.460144, 40.919674, 50.715008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888897, 41.370655, 50.857044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828081, 40.988594, 50.958687>,  <30.791592, 40.759357, 51.019672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828081, 40.988594, 50.958687>,  <30.888897, 41.370655, 50.857044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828081, 40.988594, 50.958687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459029, 0.295928, 0.837687,
		-0.875315, 0.010717, -0.483434,
		-0.152039, -0.955150, 0.254111,
		30.782469, 40.702049, 51.034920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187670, 41.254410, 50.978645>,  <30.888897, 41.370655, 50.857044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187670, 41.254410, 50.978645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403912, 40.992500, 51.189930>,  <30.533657, 40.835354, 51.316700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403912, 40.992500, 51.189930>,  <30.187670, 41.254410, 50.978645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403912, 40.992500, 51.189930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241209, 0.480873, 0.842959,
		-0.805956, -0.583118, 0.102025,
		0.540605, -0.654778, 0.528216,
		30.566093, 40.796066, 51.348396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966530, 41.444611, 51.634678>,  <30.187670, 41.254410, 50.978645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966530, 41.444611, 51.634678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244587, 41.177742, 51.741753>,  <30.411421, 41.017620, 51.805996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244587, 41.177742, 51.741753>,  <29.966530, 41.444611, 51.634678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244587, 41.177742, 51.741753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009095, 0.380503, 0.924735,
		-0.718813, -0.640390, 0.270573,
		0.695145, -0.667172, 0.267686,
		30.453131, 40.977589, 51.822060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637163, 41.083458, 52.298550>,  <29.966530, 41.444611, 51.634678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637163, 41.083458, 52.298550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035564, 41.090309, 52.263485>,  <30.274605, 41.094418, 52.242447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035564, 41.090309, 52.263485>,  <29.637163, 41.083458, 52.298550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035564, 41.090309, 52.263485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072037, 0.426201, 0.901756,
		0.052802, -0.904467, 0.423264,
		0.996003, 0.017124, -0.087659,
		30.334366, 41.095448, 52.237186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913040, 40.851654, 52.967712>,  <29.637163, 41.083458, 52.298550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913040, 40.851654, 52.967712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226311, 41.034939, 52.799583>,  <30.414272, 41.144909, 52.698704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226311, 41.034939, 52.799583>,  <29.913040, 40.851654, 52.967712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226311, 41.034939, 52.799583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115714, 0.556771, 0.822567,
		0.610941, -0.692851, 0.383026,
		0.783174, 0.458218, -0.420327,
		30.461264, 41.172401, 52.673485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446650, 40.894173, 53.525547>,  <29.913040, 40.851654, 52.967712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446650, 40.894173, 53.525547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582655, 41.145195, 53.245388>,  <30.664259, 41.295811, 53.077293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582655, 41.145195, 53.245388>,  <30.446650, 40.894173, 53.525547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582655, 41.145195, 53.245388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408730, 0.572134, 0.711057,
		0.846953, -0.528043, -0.061969,
		0.340014, 0.627560, -0.700398,
		30.684660, 41.333462, 53.035267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071161, 40.897575, 53.652714>,  <30.446650, 40.894173, 53.525547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071161, 40.897575, 53.652714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994797, 41.242725, 53.465527>,  <30.948978, 41.449818, 53.353214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994797, 41.242725, 53.465527>,  <31.071161, 40.897575, 53.652714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994797, 41.242725, 53.465527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221693, 0.502321, 0.835779,
		0.956245, 0.055815, -0.287193,
		-0.190912, 0.862878, -0.467968,
		30.937523, 41.501587, 53.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574888, 41.337536, 53.783424>,  <31.071161, 40.897575, 53.652714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574888, 41.337536, 53.783424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306807, 41.613655, 53.674377>,  <31.145958, 41.779327, 53.608948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306807, 41.613655, 53.674377>,  <31.574888, 41.337536, 53.783424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306807, 41.613655, 53.674377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255522, 0.559479, 0.788475,
		0.696804, 0.458778, -0.551350,
		-0.670203, 0.690294, -0.272619,
		31.105745, 41.820744, 53.592590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866491, 42.013180, 53.962421>,  <31.574888, 41.337536, 53.783424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866491, 42.013180, 53.962421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484407, 42.106850, 53.890053>,  <31.255157, 42.163052, 53.846630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484407, 42.106850, 53.890053>,  <31.866491, 42.013180, 53.962421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484407, 42.106850, 53.890053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020956, 0.556317, 0.830706,
		0.295185, 0.797290, -0.526493,
		-0.955210, 0.234179, -0.180925,
		31.197844, 42.177105, 53.835773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817383, 42.802155, 53.919956>,  <31.866491, 42.013180, 53.962421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817383, 42.802155, 53.919956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474846, 42.619724, 54.016846>,  <31.269323, 42.510265, 54.074978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474846, 42.619724, 54.016846>,  <31.817383, 42.802155, 53.919956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474846, 42.619724, 54.016846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086141, 0.588641, 0.803792,
		-0.509173, 0.667456, -0.543365,
		-0.856342, -0.456075, 0.242225,
		31.217943, 42.482903, 54.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522371, 43.290504, 54.085117>,  <31.817383, 42.802155, 53.919956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522371, 43.290504, 54.085117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331636, 42.993755, 54.273689>,  <31.217196, 42.815704, 54.386833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331636, 42.993755, 54.273689>,  <31.522371, 43.290504, 54.085117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331636, 42.993755, 54.273689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079981, 0.570728, 0.817235,
		-0.875347, 0.351981, -0.331479,
		-0.476835, -0.741876, 0.471433,
		31.188585, 42.771194, 54.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794579, 43.488789, 54.488171>,  <31.522371, 43.290504, 54.085117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794579, 43.488789, 54.488171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910280, 43.145832, 54.658447>,  <30.979700, 42.940056, 54.760612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910280, 43.145832, 54.658447>,  <30.794579, 43.488789, 54.488171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910280, 43.145832, 54.658447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304065, 0.339372, 0.890152,
		-0.907677, -0.386916, -0.162539,
		0.289253, -0.857393, 0.425687,
		30.997057, 42.888615, 54.786152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278154, 43.413864, 54.910400>,  <30.794579, 43.488789, 54.488171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278154, 43.413864, 54.910400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562874, 43.173630, 55.056076>,  <30.733706, 43.029488, 55.143482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562874, 43.173630, 55.056076>,  <30.278154, 43.413864, 54.910400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562874, 43.173630, 55.056076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186037, 0.338781, 0.922289,
		-0.677298, -0.724237, 0.129413,
		0.711799, -0.600589, 0.364191,
		30.776413, 42.993454, 55.165333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986002, 42.993301, 55.369728>,  <30.278154, 43.413864, 54.910400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986002, 42.993301, 55.369728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373955, 43.015095, 55.464687>,  <30.606728, 43.028172, 55.521664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373955, 43.015095, 55.464687>,  <29.986002, 42.993301, 55.369728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373955, 43.015095, 55.464687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242930, 0.286897, 0.926647,
		-0.017617, -0.956411, 0.291494,
		0.969884, 0.054488, 0.237395,
		30.664921, 43.031441, 55.535904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026775, 42.595970, 55.953102>,  <29.986002, 42.993301, 55.369728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026775, 42.595970, 55.953102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.348850, 42.832767, 55.967041>,  <30.542095, 42.974846, 55.975407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.348850, 42.832767, 55.967041>,  <30.026775, 42.595970, 55.953102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348850, 42.832767, 55.967041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199277, 0.214756, 0.956122,
		0.558537, -0.776801, 0.290890,
		0.805186, 0.591997, 0.034850,
		30.590406, 43.010365, 55.977497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364199, 42.498474, 56.633511>,  <30.026775, 42.595970, 55.953102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364199, 42.498474, 56.633511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475210, 42.855942, 56.492466>,  <30.541817, 43.070423, 56.407841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475210, 42.855942, 56.492466>,  <30.364199, 42.498474, 56.633511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475210, 42.855942, 56.492466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210433, 0.414664, 0.885309,
		0.937388, -0.171496, 0.303138,
		0.277527, 0.893668, -0.352613,
		30.558468, 43.124043, 56.386681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829618, 42.649845, 57.100048>,  <30.364199, 42.498474, 56.633511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829618, 42.649845, 57.100048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710657, 42.992043, 56.930489>,  <30.639280, 43.197361, 56.828754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710657, 42.992043, 56.930489>,  <30.829618, 42.649845, 57.100048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710657, 42.992043, 56.930489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106686, 0.411429, 0.905177,
		0.948773, 0.314425, -0.031091,
		-0.297402, 0.855490, -0.423897,
		30.621437, 43.248688, 56.803318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169882, 43.167492, 57.487686>,  <30.829618, 42.649845, 57.100048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169882, 43.167492, 57.487686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872789, 43.372231, 57.315006>,  <30.694534, 43.495071, 57.211395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872789, 43.372231, 57.315006>,  <31.169882, 43.167492, 57.487686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872789, 43.372231, 57.315006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136417, 0.515538, 0.845938,
		0.655548, 0.687195, -0.313081,
		-0.742730, 0.511843, -0.431704,
		30.649971, 43.525784, 57.185493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164461, 43.844219, 57.769691>,  <31.169882, 43.167492, 57.487686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164461, 43.844219, 57.769691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791954, 43.824688, 57.625271>,  <30.568451, 43.812969, 57.538620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791954, 43.824688, 57.625271>,  <31.164461, 43.844219, 57.769691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791954, 43.824688, 57.625271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344086, 0.443670, 0.827503,
		0.119784, 0.894859, -0.429976,
		-0.931266, -0.048828, -0.361053,
		30.512573, 43.810040, 57.516956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848957, 44.461094, 57.952709>,  <31.164461, 43.844219, 57.769691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848957, 44.461094, 57.952709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.529026, 44.235847, 57.869598>,  <30.337067, 44.100700, 57.819733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.529026, 44.235847, 57.869598>,  <30.848957, 44.461094, 57.952709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529026, 44.235847, 57.869598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485239, 0.402875, 0.776038,
		-0.353292, 0.721520, -0.595477,
		-0.799830, -0.563117, -0.207777,
		30.289078, 44.066914, 57.807266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345032, 44.952728, 57.950909>,  <30.848957, 44.461094, 57.952709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345032, 44.952728, 57.950909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186182, 44.593273, 58.025459>,  <30.090872, 44.377598, 58.070190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186182, 44.593273, 58.025459>,  <30.345032, 44.952728, 57.950909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186182, 44.593273, 58.025459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571913, 0.401141, 0.715542,
		-0.717780, 0.177568, -0.673247,
		-0.397125, -0.898641, 0.186378,
		30.067045, 44.323681, 58.081371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583744, 44.995335, 57.853477>,  <30.345032, 44.952728, 57.950909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583744, 44.995335, 57.853477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655497, 44.672550, 58.078560>,  <29.698547, 44.478878, 58.213608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655497, 44.672550, 58.078560>,  <29.583744, 44.995335, 57.853477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655497, 44.672550, 58.078560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708788, 0.290648, 0.642763,
		-0.682234, -0.514135, -0.519829,
		0.179380, -0.806963, 0.562703,
		29.709311, 44.430462, 58.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918377, 44.717575, 57.968483>,  <29.583744, 44.995335, 57.853477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918377, 44.717575, 57.968483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169594, 44.606739, 58.259354>,  <29.320324, 44.540237, 58.433876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169594, 44.606739, 58.259354>,  <28.918377, 44.717575, 57.968483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169594, 44.606739, 58.259354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590424, 0.439038, 0.677233,
		-0.506915, -0.854672, 0.112130,
		0.628042, -0.277095, 0.727174,
		29.358006, 44.523609, 58.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407562, 44.619473, 58.461544>,  <28.918377, 44.717575, 57.968483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407562, 44.619473, 58.461544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742130, 44.556286, 58.671478>,  <28.942871, 44.518375, 58.797440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742130, 44.556286, 58.671478>,  <28.407562, 44.619473, 58.461544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742130, 44.556286, 58.671478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494719, 0.194573, 0.846992,
		-0.235914, -0.968085, 0.084596,
		0.836420, -0.157966, 0.524832,
		28.993055, 44.508896, 58.828926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289749, 44.232983, 59.040150>,  <28.407562, 44.619473, 58.461544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289749, 44.232983, 59.040150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609661, 44.461189, 59.114826>,  <28.801609, 44.598114, 59.159634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609661, 44.461189, 59.114826>,  <28.289749, 44.232983, 59.040150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609661, 44.461189, 59.114826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404747, 0.282834, 0.869589,
		0.443316, -0.771045, 0.457122,
		0.799782, 0.570521, 0.186693,
		28.849596, 44.632347, 59.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769482, 44.158848, 58.472370>,  <28.289749, 44.232983, 59.040150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769482, 44.158848, 58.472370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525896, 43.944504, 58.706299>,  <27.379744, 43.815899, 58.846657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525896, 43.944504, 58.706299>,  <27.769482, 44.158848, 58.472370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525896, 43.944504, 58.706299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108139, -0.786500, -0.608049,
		0.785791, -0.307038, 0.536898,
		-0.608965, -0.535859, 0.584822,
		27.343206, 43.783745, 58.881744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176235, 43.500660, 58.677780>,  <27.769482, 44.158848, 58.472370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176235, 43.500660, 58.677780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.779018, 43.456882, 58.660408>,  <27.540688, 43.430614, 58.649986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.779018, 43.456882, 58.660408>,  <28.176235, 43.500660, 58.677780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779018, 43.456882, 58.660408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115761, -0.839928, -0.530208,
		0.021552, -0.531547, 0.846755,
		-0.993043, -0.109448, -0.043430,
		27.481106, 43.424049, 58.647377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155823, 42.833492, 58.762737>,  <28.176235, 43.500660, 58.677780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155823, 42.833492, 58.762737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810318, 42.962440, 58.607822>,  <27.603016, 43.039810, 58.514874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810318, 42.962440, 58.607822>,  <28.155823, 42.833492, 58.762737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810318, 42.962440, 58.607822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076024, -0.676417, -0.732584,
		-0.498132, -0.662222, 0.559756,
		-0.863762, 0.322369, -0.387290,
		27.551189, 43.059151, 58.491634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844395, 42.243404, 58.496876>,  <28.155823, 42.833492, 58.762737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844395, 42.243404, 58.496876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.637018, 42.537151, 58.321636>,  <27.512592, 42.713398, 58.216492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.637018, 42.537151, 58.321636>,  <27.844395, 42.243404, 58.496876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637018, 42.537151, 58.321636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144876, -0.580349, -0.801378,
		-0.842753, -0.351996, 0.407268,
		-0.518439, 0.734367, -0.438095,
		27.481485, 42.757462, 58.190208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221203, 41.984093, 58.219837>,  <27.844395, 42.243404, 58.496876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221203, 41.984093, 58.219837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241255, 42.328938, 58.018147>,  <27.253286, 42.535843, 57.897133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241255, 42.328938, 58.018147>,  <27.221203, 41.984093, 58.219837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241255, 42.328938, 58.018147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180037, -0.488794, -0.853620,
		-0.982382, 0.133573, 0.130708,
		0.050131, 0.862113, -0.504231,
		27.256294, 42.587570, 57.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600542, 42.034576, 57.862572>,  <27.221203, 41.984093, 58.219837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600542, 42.034576, 57.862572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842999, 42.245052, 57.624004>,  <26.988472, 42.371338, 57.480862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842999, 42.245052, 57.624004>,  <26.600542, 42.034576, 57.862572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842999, 42.245052, 57.624004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331706, -0.514313, -0.790856,
		-0.722886, 0.677208, -0.137208,
		0.606142, 0.526186, -0.596423,
		27.024841, 42.402908, 57.445076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256706, 41.999104, 57.225330>,  <26.600542, 42.034576, 57.862572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256706, 41.999104, 57.225330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627447, 42.122833, 57.140224>,  <26.849892, 42.197071, 57.089161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627447, 42.122833, 57.140224>,  <26.256706, 41.999104, 57.225330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627447, 42.122833, 57.140224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024306, -0.516085, -0.856192,
		-0.374640, 0.798734, -0.470816,
		0.926852, 0.309320, -0.212760,
		26.905502, 42.215630, 57.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177992, 42.130432, 56.533264>,  <26.256706, 41.999104, 57.225330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177992, 42.130432, 56.533264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.573332, 42.098740, 56.585251>,  <26.810535, 42.079723, 56.616444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.573332, 42.098740, 56.585251>,  <26.177992, 42.130432, 56.533264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573332, 42.098740, 56.585251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085629, -0.416495, -0.905096,
		0.125839, 0.905679, -0.404858,
		0.988348, -0.079228, 0.129964,
		26.869837, 42.074970, 56.624241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551607, 42.258049, 55.832920>,  <26.177992, 42.130432, 56.533264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551607, 42.258049, 55.832920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.787073, 42.029518, 56.061676>,  <26.928352, 41.892399, 56.198929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.787073, 42.029518, 56.061676>,  <26.551607, 42.258049, 55.832920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787073, 42.029518, 56.061676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156996, -0.613186, -0.774180,
		0.792984, 0.545519, -0.271266,
		0.588666, -0.571325, 0.571891,
		26.963673, 41.858120, 56.233242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304960, 42.362522, 55.645241>,  <26.551607, 42.258049, 55.832920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304960, 42.362522, 55.645241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270441, 42.010880, 55.832741>,  <27.249729, 41.799892, 55.945240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270441, 42.010880, 55.832741>,  <27.304960, 42.362522, 55.645241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270441, 42.010880, 55.832741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277833, -0.473076, -0.836067,
		0.956745, 0.058084, 0.285070,
		-0.086298, -0.879105, 0.468750,
		27.244553, 41.747147, 55.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978317, 42.041344, 55.473663>,  <27.304960, 42.362522, 55.645241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978317, 42.041344, 55.473663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.738131, 41.752785, 55.611664>,  <27.594019, 41.579651, 55.694466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.738131, 41.752785, 55.611664>,  <27.978317, 42.041344, 55.473663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738131, 41.752785, 55.611664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301838, -0.604000, -0.737616,
		0.740494, -0.338781, 0.580427,
		-0.600469, -0.721395, 0.345002,
		27.557989, 41.536366, 55.715164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439018, 41.431877, 55.567352>,  <27.978317, 42.041344, 55.473663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439018, 41.431877, 55.567352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.059654, 41.310406, 55.530922>,  <27.832035, 41.237522, 55.509064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.059654, 41.310406, 55.530922>,  <28.439018, 41.431877, 55.567352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059654, 41.310406, 55.530922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283814, -0.685190, -0.670794,
		0.141298, -0.662038, 0.736030,
		-0.948412, -0.303677, -0.091080,
		27.775131, 41.219303, 55.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492661, 40.720203, 55.331486>,  <28.439018, 41.431877, 55.567352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492661, 40.720203, 55.331486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106688, 40.791046, 55.253986>,  <27.875103, 40.833553, 55.207485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106688, 40.791046, 55.253986>,  <28.492661, 40.720203, 55.331486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106688, 40.791046, 55.253986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051135, -0.597130, -0.800513,
		-0.257467, -0.782349, 0.567134,
		-0.964933, 0.177105, -0.193747,
		27.817207, 40.844177, 55.195862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169352, 40.042263, 55.308327>,  <28.492661, 40.720203, 55.331486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169352, 40.042263, 55.308327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.986565, 40.325283, 55.092716>,  <27.876892, 40.495094, 54.963348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.986565, 40.325283, 55.092716>,  <28.169352, 40.042263, 55.308327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986565, 40.325283, 55.092716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076976, -0.572271, -0.816444,
		-0.886146, -0.414581, 0.207044,
		-0.456967, 0.707551, -0.539029,
		27.849474, 40.537548, 54.931007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664236, 39.716511, 54.848251>,  <28.169352, 40.042263, 55.308327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664236, 39.716511, 54.848251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695343, 40.076244, 54.676132>,  <27.714006, 40.292084, 54.572861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695343, 40.076244, 54.676132>,  <27.664236, 39.716511, 54.848251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695343, 40.076244, 54.676132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189639, -0.410378, -0.891979,
		-0.978769, 0.150968, 0.138635,
		0.077767, 0.899332, -0.430295,
		27.718674, 40.346043, 54.547043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197371, 39.793907, 54.292030>,  <27.664236, 39.716511, 54.848251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197371, 39.793907, 54.292030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.460958, 40.074871, 54.184418>,  <27.619112, 40.243450, 54.119850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.460958, 40.074871, 54.184418>,  <27.197371, 39.793907, 54.292030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460958, 40.074871, 54.184418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078777, -0.291253, -0.953397,
		-0.748031, 0.649455, -0.136594,
		0.658972, 0.702410, -0.269028,
		27.658649, 40.285595, 54.103710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997103, 40.056633, 53.650684>,  <27.197371, 39.793907, 54.292030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997103, 40.056633, 53.650684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376101, 40.182251, 53.674774>,  <27.603500, 40.257622, 53.689228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376101, 40.182251, 53.674774>,  <26.997103, 40.056633, 53.650684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376101, 40.182251, 53.674774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151718, -0.275707, -0.949193,
		-0.281483, 0.908495, -0.308877,
		0.947496, 0.314044, 0.060228,
		27.660349, 40.276463, 53.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102003, 40.418690, 53.025070>,  <26.997103, 40.056633, 53.650684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102003, 40.418690, 53.025070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.464870, 40.327160, 53.166313>,  <27.682590, 40.272243, 53.251060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.464870, 40.327160, 53.166313>,  <27.102003, 40.418690, 53.025070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464870, 40.327160, 53.166313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327477, -0.142995, -0.933976,
		0.264209, 0.962908, -0.054786,
		0.907167, -0.228823, 0.353111,
		27.737020, 40.258514, 53.272247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535637, 40.713303, 52.502796>,  <27.102003, 40.418690, 53.025070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535637, 40.713303, 52.502796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.763041, 40.466629, 52.720604>,  <27.899483, 40.318626, 52.851288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.763041, 40.466629, 52.720604>,  <27.535637, 40.713303, 52.502796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763041, 40.466629, 52.720604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396868, -0.374194, -0.838138,
		0.720621, 0.692590, 0.032009,
		0.568508, -0.616683, 0.544519,
		27.933594, 40.281624, 52.883961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234028, 40.690838, 52.150700>,  <27.535637, 40.713303, 52.502796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234028, 40.690838, 52.150700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211885, 40.345512, 52.351345>,  <28.198601, 40.138317, 52.471733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211885, 40.345512, 52.351345>,  <28.234028, 40.690838, 52.150700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211885, 40.345512, 52.351345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524949, -0.452512, -0.720875,
		0.849332, 0.223418, 0.478247,
		-0.055356, -0.863317, 0.501616,
		28.195278, 40.086517, 52.501831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893599, 40.474442, 52.135399>,  <28.234028, 40.690838, 52.150700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893599, 40.474442, 52.135399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718132, 40.127415, 52.229115>,  <28.612852, 39.919197, 52.285343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718132, 40.127415, 52.229115>,  <28.893599, 40.474442, 52.135399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718132, 40.127415, 52.229115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592704, -0.475283, -0.650237,
		0.675480, -0.146374, 0.722704,
		-0.438667, -0.867571, 0.234288,
		28.586533, 39.867142, 52.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457935, 39.983707, 52.182625>,  <28.893599, 40.474442, 52.135399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457935, 39.983707, 52.182625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124853, 39.766949, 52.137108>,  <28.925003, 39.636894, 52.109798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124853, 39.766949, 52.137108>,  <29.457935, 39.983707, 52.182625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124853, 39.766949, 52.137108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451812, -0.546150, -0.705398,
		0.320102, -0.638803, 0.699618,
		-0.832707, -0.541896, -0.113795,
		28.875042, 39.604382, 52.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757023, 39.375736, 52.305923>,  <29.457935, 39.983707, 52.182625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757023, 39.375736, 52.305923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414480, 39.329704, 52.104565>,  <29.208956, 39.302086, 51.983749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414480, 39.329704, 52.104565>,  <29.757023, 39.375736, 52.305923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414480, 39.329704, 52.104565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472544, -0.567741, -0.674071,
		-0.208226, -0.815123, 0.540570,
		-0.856355, -0.115084, -0.503400,
		29.157574, 39.295177, 51.953545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974987, 38.959736, 51.838524>,  <29.757023, 39.375736, 52.305923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974987, 38.959736, 51.838524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599297, 39.023758, 51.717041>,  <29.373882, 39.062172, 51.644150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599297, 39.023758, 51.717041>,  <29.974987, 38.959736, 51.838524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599297, 39.023758, 51.717041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137857, -0.634369, -0.760639,
		-0.314402, -0.756281, 0.573752,
		-0.939227, 0.160051, -0.303706,
		29.317528, 39.071774, 51.625931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595524, 38.349876, 51.794701>,  <29.974987, 38.959736, 51.838524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595524, 38.349876, 51.794701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436913, 38.615612, 51.541271>,  <29.341745, 38.775055, 51.389214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436913, 38.615612, 51.541271>,  <29.595524, 38.349876, 51.794701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436913, 38.615612, 51.541271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097665, -0.655708, -0.748671,
		-0.912813, -0.358746, 0.195124,
		-0.396527, 0.664340, -0.633576,
		29.317955, 38.814915, 51.351200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200525, 37.966278, 51.238426>,  <29.595524, 38.349876, 51.794701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200525, 37.966278, 51.238426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.251589, 38.331341, 51.083111>,  <29.282227, 38.550377, 50.989922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.251589, 38.331341, 51.083111>,  <29.200525, 37.966278, 51.238426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251589, 38.331341, 51.083111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016831, -0.393427, -0.919202,
		-0.991675, 0.110810, -0.065586,
		0.127660, 0.912654, -0.388287,
		29.289886, 38.605137, 50.966625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562813, 38.066940, 50.855812>,  <29.200525, 37.966278, 51.238426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562813, 38.066940, 50.855812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.891607, 38.258385, 50.732346>,  <29.088884, 38.373249, 50.658268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.891607, 38.258385, 50.732346>,  <28.562813, 38.066940, 50.855812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891607, 38.258385, 50.732346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019786, -0.517657, -0.855359,
		-0.569165, 0.709200, -0.416037,
		0.821985, 0.478609, -0.308664,
		29.138203, 38.401966, 50.639748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400274, 38.097351, 50.146851>,  <28.562813, 38.066940, 50.855812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400274, 38.097351, 50.146851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.791183, 38.173416, 50.184319>,  <29.025728, 38.219055, 50.206799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.791183, 38.173416, 50.184319>,  <28.400274, 38.097351, 50.146851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791183, 38.173416, 50.184319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188802, -0.579900, -0.792509,
		-0.096387, 0.792183, -0.602624,
		0.977274, 0.190164, 0.093671,
		29.084366, 38.230465, 50.212421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639462, 38.212597, 49.474327>,  <28.400274, 38.097351, 50.146851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639462, 38.212597, 49.474327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983776, 38.127304, 49.659187>,  <29.190365, 38.076130, 49.770103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983776, 38.127304, 49.659187>,  <28.639462, 38.212597, 49.474327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983776, 38.127304, 49.659187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334955, -0.446334, -0.829814,
		0.383214, 0.869091, -0.312775,
		0.860786, -0.213230, 0.462148,
		29.242012, 38.063335, 49.797832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225716, 38.406277, 48.975986>,  <28.639462, 38.212597, 49.474327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225716, 38.406277, 48.975986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382668, 38.145645, 49.235676>,  <29.476839, 37.989265, 49.391487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382668, 38.145645, 49.235676>,  <29.225716, 38.406277, 48.975986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382668, 38.145645, 49.235676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498103, -0.442850, -0.745505,
		0.773260, 0.615900, 0.150786,
		0.392381, -0.651575, 0.649220,
		29.500381, 37.950172, 49.430443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763464, 38.274288, 48.653419>,  <29.225716, 38.406277, 48.975986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763464, 38.274288, 48.653419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778767, 37.975948, 48.919422>,  <29.787949, 37.796944, 49.079025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778767, 37.975948, 48.919422>,  <29.763464, 38.274288, 48.653419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778767, 37.975948, 48.919422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565424, -0.532556, -0.629825,
		0.823913, 0.400109, 0.401349,
		0.038258, -0.745853, 0.665011,
		29.790245, 37.752193, 49.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454260, 37.998379, 48.657543>,  <29.763464, 38.274288, 48.653419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454260, 37.998379, 48.657543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255014, 37.694366, 48.824505>,  <30.135468, 37.511959, 48.924683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255014, 37.694366, 48.824505>,  <30.454260, 37.998379, 48.657543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255014, 37.694366, 48.824505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504894, -0.645580, -0.572982,
		0.704956, -0.074664, 0.705310,
		-0.498115, -0.760034, 0.417408,
		30.105579, 37.466354, 48.949726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960781, 37.474285, 48.857853>,  <30.454260, 37.998379, 48.657543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960781, 37.474285, 48.857853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.611675, 37.279812, 48.840374>,  <30.402212, 37.163128, 48.829887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.611675, 37.279812, 48.840374>,  <30.960781, 37.474285, 48.857853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611675, 37.279812, 48.840374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448807, -0.764001, -0.463547,
		0.191983, -0.424178, 0.884994,
		-0.872762, -0.486185, -0.043699,
		30.349846, 37.133957, 48.827263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085409, 36.851562, 49.151733>,  <30.960781, 37.474285, 48.857853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085409, 36.851562, 49.151733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763075, 36.798347, 48.920933>,  <30.569674, 36.766418, 48.782452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763075, 36.798347, 48.920933>,  <31.085409, 36.851562, 49.151733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763075, 36.798347, 48.920933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408494, -0.830330, -0.379058,
		-0.428674, -0.541160, 0.723454,
		-0.805836, -0.133034, -0.577001,
		30.521324, 36.758438, 48.747833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896055, 36.073029, 49.167511>,  <31.085409, 36.851562, 49.151733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896055, 36.073029, 49.167511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723969, 36.229900, 48.842278>,  <30.620716, 36.324024, 48.647137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723969, 36.229900, 48.842278>,  <30.896055, 36.073029, 49.167511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723969, 36.229900, 48.842278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244294, -0.816513, -0.523094,
		-0.869042, -0.423675, 0.255469,
		-0.430216, 0.392181, -0.813085,
		30.594904, 36.347553, 48.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327023, 35.580830, 48.966103>,  <30.896055, 36.073029, 49.167511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327023, 35.580830, 48.966103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498356, 35.799465, 48.678276>,  <30.601156, 35.930645, 48.505581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498356, 35.799465, 48.678276>,  <30.327023, 35.580830, 48.966103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498356, 35.799465, 48.678276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231766, -0.836129, -0.497165,
		-0.873394, 0.046181, -0.484820,
		0.428331, 0.546586, -0.719567,
		30.626856, 35.963440, 48.462406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199789, 35.142925, 48.452763>,  <30.327023, 35.580830, 48.966103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199789, 35.142925, 48.452763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475979, 35.387997, 48.298950>,  <30.641693, 35.535042, 48.206661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475979, 35.387997, 48.298950>,  <30.199789, 35.142925, 48.452763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475979, 35.387997, 48.298950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319347, -0.735176, -0.597942,
		-0.649047, 0.290064, -0.703279,
		0.690475, 0.612682, -0.384532,
		30.683121, 35.571800, 48.183590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255344, 35.014687, 47.704853>,  <30.199789, 35.142925, 48.452763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255344, 35.014687, 47.704853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.590557, 35.221657, 47.774101>,  <30.791685, 35.345840, 47.815651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.590557, 35.221657, 47.774101>,  <30.255344, 35.014687, 47.704853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590557, 35.221657, 47.774101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507246, -0.621936, -0.596570,
		-0.201012, 0.587760, -0.783666,
		0.838030, 0.517430, 0.173123,
		30.841967, 35.376884, 47.826038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546875, 35.075367, 47.118889>,  <30.255344, 35.014687, 47.704853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546875, 35.075367, 47.118889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862780, 35.131966, 47.357639>,  <31.052322, 35.165924, 47.500889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862780, 35.131966, 47.357639>,  <30.546875, 35.075367, 47.118889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862780, 35.131966, 47.357639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532353, -0.641523, -0.552311,
		0.304758, 0.753941, -0.581976,
		0.789761, 0.141495, 0.596872,
		31.099709, 35.174416, 47.536701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082254, 35.131069, 46.662437>,  <30.546875, 35.075367, 47.118889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082254, 35.131069, 46.662437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234053, 35.007805, 47.011383>,  <31.325132, 34.933846, 47.220749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234053, 35.007805, 47.011383>,  <31.082254, 35.131069, 46.662437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234053, 35.007805, 47.011383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485630, -0.736218, -0.471325,
		0.787494, 0.602512, -0.129741,
		0.379497, -0.308160, 0.872365,
		31.347902, 34.915356, 47.273094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796394, 35.174835, 46.640800>,  <31.082254, 35.131069, 46.662437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796394, 35.174835, 46.640800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.751516, 34.931183, 46.954838>,  <31.724588, 34.784992, 47.143261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.751516, 34.931183, 46.954838>,  <31.796394, 35.174835, 46.640800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751516, 34.931183, 46.954838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796809, -0.527221, -0.295183,
		0.593723, 0.592452, 0.544513,
		-0.112197, -0.609129, 0.785094,
		31.717857, 34.748444, 47.190365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452271, 35.097374, 46.943634>,  <31.796394, 35.174835, 46.640800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452271, 35.097374, 46.943634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224037, 34.784775, 47.044582>,  <32.087097, 34.597214, 47.105152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224037, 34.784775, 47.044582>,  <32.452271, 35.097374, 46.943634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224037, 34.784775, 47.044582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670897, -0.620809, -0.405578,
		0.473633, -0.062101, 0.878530,
		-0.570586, -0.781498, 0.252372,
		32.052860, 34.550323, 47.120293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926350, 34.695148, 47.232243>,  <32.452271, 35.097374, 46.943634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926350, 34.695148, 47.232243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668907, 34.419231, 47.099606>,  <32.514442, 34.253681, 47.020023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668907, 34.419231, 47.099606>,  <32.926350, 34.695148, 47.232243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668907, 34.419231, 47.099606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760352, -0.526819, -0.379903,
		0.087364, -0.496638, 0.863550,
		-0.643608, -0.689792, -0.331595,
		32.475826, 34.212296, 47.000126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870110, 33.967957, 47.570175>,  <32.926350, 34.695148, 47.232243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870110, 33.967957, 47.570175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781071, 33.953236, 47.180489>,  <32.727646, 33.944405, 46.946678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781071, 33.953236, 47.180489>,  <32.870110, 33.967957, 47.570175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781071, 33.953236, 47.180489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862926, -0.472442, -0.179323,
		-0.453662, -0.880593, 0.136919,
		-0.222597, -0.036799, -0.974216,
		32.714291, 33.942196, 46.888226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809101, 33.180981, 47.295277>,  <32.870110, 33.967957, 47.570175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809101, 33.180981, 47.295277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933369, 33.504066, 47.094845>,  <33.007927, 33.697918, 46.974586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933369, 33.504066, 47.094845>,  <32.809101, 33.180981, 47.295277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933369, 33.504066, 47.094845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923027, -0.382227, -0.043864,
		-0.226955, -0.448881, -0.864290,
		0.310665, 0.807718, -0.501077,
		33.026569, 33.746384, 46.944523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528481, 33.120522, 47.224163>,  <32.809101, 33.180981, 47.295277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528481, 33.120522, 47.224163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514793, 33.464008, 47.019638>,  <33.506580, 33.670101, 46.896923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514793, 33.464008, 47.019638>,  <33.528481, 33.120522, 47.224163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514793, 33.464008, 47.019638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997760, -0.000073, -0.066891,
		-0.057477, -0.512454, -0.856789,
		-0.034216, 0.858714, -0.511311,
		33.504528, 33.721622, 46.866245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091957, 32.994362, 46.662422>,  <33.528481, 33.120522, 47.224163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091957, 32.994362, 46.662422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998409, 33.374458, 46.744743>,  <33.942280, 33.602516, 46.794136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998409, 33.374458, 46.744743>,  <34.091957, 32.994362, 46.662422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998409, 33.374458, 46.744743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965595, 0.251759, -0.065145,
		-0.113717, 0.183489, -0.976422,
		-0.233870, 0.950236, 0.205805,
		33.928249, 33.659531, 46.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432796, 33.403248, 46.152172>,  <34.091957, 32.994362, 46.662422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432796, 33.403248, 46.152172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365799, 33.609795, 46.488102>,  <34.325600, 33.733723, 46.689659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365799, 33.609795, 46.488102>,  <34.432796, 33.403248, 46.152172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365799, 33.609795, 46.488102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940077, 0.340268, -0.021728,
		-0.296987, 0.785865, -0.542417,
		-0.167492, 0.516367, 0.839829,
		34.315552, 33.764706, 46.740051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774414, 34.004242, 46.089611>,  <34.432796, 33.403248, 46.152172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774414, 34.004242, 46.089611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697388, 33.994648, 46.482006>,  <34.651173, 33.988892, 46.717445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697388, 33.994648, 46.482006>,  <34.774414, 34.004242, 46.089611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697388, 33.994648, 46.482006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951931, 0.238118, 0.192685,
		-0.238213, 0.970940, -0.023024,
		-0.192568, -0.023983, 0.980990,
		34.639618, 33.987453, 46.776302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037106, 34.568298, 46.351223>,  <34.774414, 34.004242, 46.089611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037106, 34.568298, 46.351223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020725, 34.343468, 46.681652>,  <35.010895, 34.208569, 46.879910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020725, 34.343468, 46.681652>,  <35.037106, 34.568298, 46.351223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020725, 34.343468, 46.681652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930050, 0.280698, 0.237098,
		-0.365144, 0.778000, 0.511260,
		-0.040952, -0.562072, 0.826074,
		35.008438, 34.174847, 46.929474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379204, 34.980568, 47.032635>,  <35.037106, 34.568298, 46.351223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379204, 34.980568, 47.032635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382195, 34.584568, 47.088993>,  <35.383991, 34.346970, 47.122807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382195, 34.584568, 47.088993>,  <35.379204, 34.980568, 47.032635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382195, 34.584568, 47.088993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985441, 0.031231, 0.167126,
		-0.169855, 0.137591, 0.975817,
		0.007481, -0.989997, 0.140893,
		35.384438, 34.287567, 47.131260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745609, 34.933414, 47.665676>,  <35.379204, 34.980568, 47.032635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745609, 34.933414, 47.665676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767933, 34.557350, 47.531219>,  <35.781326, 34.331711, 47.450546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767933, 34.557350, 47.531219>,  <35.745609, 34.933414, 47.665676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767933, 34.557350, 47.531219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957394, -0.045147, 0.285235,
		-0.283341, -0.337736, 0.897581,
		0.055811, -0.940158, -0.336138,
		35.784676, 34.275303, 47.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071735, 34.578407, 48.184086>,  <35.745609, 34.933414, 47.665676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071735, 34.578407, 48.184086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135456, 34.324009, 47.882057>,  <36.173691, 34.171371, 47.700840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135456, 34.324009, 47.882057>,  <36.071735, 34.578407, 48.184086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135456, 34.324009, 47.882057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932532, -0.154108, 0.326550,
		-0.324047, -0.756147, 0.568537,
		0.159304, -0.635997, -0.755070,
		36.183247, 34.133209, 47.655537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273586, 33.886017, 48.452560>,  <36.071735, 34.578407, 48.184086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273586, 33.886017, 48.452560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394604, 33.903637, 48.071712>,  <36.467216, 33.914207, 47.843204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394604, 33.903637, 48.071712>,  <36.273586, 33.886017, 48.452560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394604, 33.903637, 48.071712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930187, -0.231524, 0.284867,
		-0.207889, -0.971832, -0.111021,
		0.302547, 0.044049, -0.952116,
		36.485367, 33.916851, 47.786079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723000, 33.428635, 48.438293>,  <36.273586, 33.886017, 48.452560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723000, 33.428635, 48.438293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819836, 33.629951, 48.106487>,  <36.877937, 33.750740, 47.907406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819836, 33.629951, 48.106487>,  <36.723000, 33.428635, 48.438293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819836, 33.629951, 48.106487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967433, -0.190356, 0.166848,
		-0.073930, -0.842891, -0.532982,
		0.242091, 0.503289, -0.829513,
		36.892464, 33.780937, 47.857632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213036, 32.988705, 48.114677>,  <36.723000, 33.428635, 48.438293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213036, 32.988705, 48.114677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265312, 33.351547, 47.954643>,  <37.296680, 33.569252, 47.858624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265312, 33.351547, 47.954643>,  <37.213036, 32.988705, 48.114677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265312, 33.351547, 47.954643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949511, 0.001569, 0.313729,
		0.285214, -0.420892, -0.861106,
		0.130695, 0.907110, -0.400089,
		37.304520, 33.623680, 47.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780624, 32.884800, 47.805996>,  <37.213036, 32.988705, 48.114677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780624, 32.884800, 47.805996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.771290, 33.284439, 47.791843>,  <37.765690, 33.524223, 47.783352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.771290, 33.284439, 47.791843>,  <37.780624, 32.884800, 47.805996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771290, 33.284439, 47.791843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969751, 0.031222, 0.242091,
		0.242978, -0.028660, -0.969608,
		-0.023334, 0.999102, -0.035379,
		37.764290, 33.584171, 47.781231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361412, 33.224308, 47.408966>,  <37.780624, 32.884800, 47.805996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361412, 33.224308, 47.408966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246193, 33.491451, 47.683483>,  <38.177063, 33.651737, 47.848194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246193, 33.491451, 47.683483>,  <38.361412, 33.224308, 47.408966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246193, 33.491451, 47.683483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926699, 0.013763, 0.375553,
		0.241371, 0.744161, -0.622868,
		-0.288044, 0.667858, 0.686291,
		38.159779, 33.691811, 47.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937588, 33.082108, 46.971584>,  <38.361412, 33.224308, 47.408966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937588, 33.082108, 46.971584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763958, 33.384651, 46.775829>,  <38.659779, 33.566177, 46.658375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763958, 33.384651, 46.775829>,  <38.937588, 33.082108, 46.971584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763958, 33.384651, 46.775829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866699, 0.202403, -0.455923,
		-0.245786, -0.622061, -0.743391,
		-0.434076, 0.756355, -0.489392,
		38.633736, 33.611557, 46.629013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197346, 33.085541, 46.270317>,  <38.937588, 33.082108, 46.971584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197346, 33.085541, 46.270317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077648, 33.459061, 46.348766>,  <39.005829, 33.683174, 46.395836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077648, 33.459061, 46.348766>,  <39.197346, 33.085541, 46.270317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077648, 33.459061, 46.348766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833347, 0.355879, -0.422946,
		-0.464744, 0.036872, -0.884677,
		-0.299243, 0.933804, 0.196120,
		38.987877, 33.739201, 46.407600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475250, 32.942379, 45.599667>,  <39.197346, 33.085541, 46.270317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475250, 32.942379, 45.599667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832607, 32.980038, 45.775387>,  <40.047020, 33.002632, 45.880817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832607, 32.980038, 45.775387>,  <39.475250, 32.942379, 45.599667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832607, 32.980038, 45.775387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428195, 0.117562, -0.896007,
		-0.136002, 0.988593, 0.064716,
		0.893394, 0.094147, 0.439299,
		40.100624, 33.008282, 45.907177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969276, 33.381771, 45.214909>,  <39.475250, 32.942379, 45.599667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969276, 33.381771, 45.214909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225037, 33.187840, 45.453606>,  <40.378494, 33.071480, 45.596825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225037, 33.187840, 45.453606>,  <39.969276, 33.381771, 45.214909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225037, 33.187840, 45.453606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679818, -0.006079, -0.733355,
		0.359182, 0.874586, 0.325711,
		0.639402, -0.484832, 0.596743,
		40.416859, 33.042389, 45.632629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957661, 33.825619, 45.800816>,  <39.969276, 33.381771, 45.214909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957661, 33.825619, 45.800816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953442, 34.193222, 45.643173>,  <39.950909, 34.413784, 45.548588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953442, 34.193222, 45.643173>,  <39.957661, 33.825619, 45.800816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953442, 34.193222, 45.643173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960276, -0.119221, -0.252303,
		-0.278853, 0.375784, 0.883757,
		-0.010550, 0.919006, -0.394101,
		39.950275, 34.468925, 45.524944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319126, 34.186508, 46.000465>,  <39.957661, 33.825619, 45.800816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319126, 34.186508, 46.000465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436626, 34.324009, 45.643692>,  <39.507126, 34.406509, 45.429626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436626, 34.324009, 45.643692>,  <39.319126, 34.186508, 46.000465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436626, 34.324009, 45.643692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949432, -0.003281, -0.313957,
		-0.110849, 0.939056, 0.325402,
		0.293755, 0.343748, -0.891933,
		39.524754, 34.427132, 45.376114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915447, 34.800827, 45.724651>,  <39.319126, 34.186508, 46.000465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915447, 34.800827, 45.724651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054684, 34.628883, 45.391411>,  <39.138226, 34.525719, 45.191467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054684, 34.628883, 45.391411>,  <38.915447, 34.800827, 45.724651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054684, 34.628883, 45.391411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924216, -0.008492, -0.381776,
		0.157033, 0.902858, -0.400235,
		0.348088, -0.429855, -0.833102,
		39.159111, 34.499928, 45.141479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692974, 35.140999, 45.068417>,  <38.915447, 34.800827, 45.724651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692974, 35.140999, 45.068417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752613, 34.753262, 44.990288>,  <38.788399, 34.520618, 44.943409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752613, 34.753262, 44.990288>,  <38.692974, 35.140999, 45.068417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752613, 34.753262, 44.990288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960785, -0.095313, -0.260400,
		0.233800, 0.226488, -0.945537,
		0.149099, -0.969339, -0.195322,
		38.797344, 34.462460, 44.931690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297695, 34.708092, 44.489292>,  <38.692974, 35.140999, 45.068417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297695, 34.708092, 44.489292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348827, 34.337402, 44.630619>,  <38.379505, 34.114986, 44.715416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348827, 34.337402, 44.630619>,  <38.297695, 34.708092, 44.489292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348827, 34.337402, 44.630619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980652, -0.171352, -0.094653,
		0.148260, -0.334385, -0.930702,
		0.127827, -0.926728, 0.353320,
		38.387177, 34.059383, 44.736614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942528, 34.272736, 44.125111>,  <38.297695, 34.708092, 44.489292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942528, 34.272736, 44.125111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972645, 34.108807, 44.488731>,  <37.990715, 34.010448, 44.706905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972645, 34.108807, 44.488731>,  <37.942528, 34.272736, 44.125111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972645, 34.108807, 44.488731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995558, -0.082571, 0.045237,
		0.056523, -0.908421, -0.414218,
		0.075297, -0.409821, 0.909053,
		37.995235, 33.985859, 44.761448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743919, 33.628551, 44.443611>,  <37.942528, 34.272736, 44.125111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743919, 33.628551, 44.443611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540672, 33.393276, 44.695278>,  <37.418724, 33.252110, 44.846279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540672, 33.393276, 44.695278>,  <37.743919, 33.628551, 44.443611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540672, 33.393276, 44.695278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257050, -0.800765, -0.541019,
		0.822034, -0.113176, 0.558079,
		-0.508120, -0.588190, 0.629164,
		37.388237, 33.216820, 44.884026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672405, 33.060493, 43.946949>,  <37.743919, 33.628551, 44.443611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672405, 33.060493, 43.946949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979359, 33.289223, 43.830921>,  <38.163532, 33.426460, 43.761307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979359, 33.289223, 43.830921>,  <37.672405, 33.060493, 43.946949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979359, 33.289223, 43.830921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263825, -0.693914, -0.669985,
		-0.584392, 0.437611, -0.683361,
		0.767386, 0.571822, -0.290065,
		38.209576, 33.460770, 43.743900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905350, 32.528481, 43.396812>,  <37.672405, 33.060493, 43.946949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905350, 32.528481, 43.396812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719151, 32.182507, 43.471859>,  <37.607430, 31.974922, 43.516888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719151, 32.182507, 43.471859>,  <37.905350, 32.528481, 43.396812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719151, 32.182507, 43.471859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791128, 0.501678, 0.349908,
		-0.396768, 0.014458, -0.917805,
		-0.465502, -0.864934, 0.187612,
		37.579498, 31.923027, 43.528141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156391, 32.378086, 42.962078>,  <37.905350, 32.528481, 43.396812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156391, 32.378086, 42.962078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192513, 32.191822, 43.314217>,  <37.214184, 32.080063, 43.525501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192513, 32.191822, 43.314217>,  <37.156391, 32.378086, 42.962078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192513, 32.191822, 43.314217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889471, 0.359910, 0.281613,
		-0.447981, -0.808472, -0.381688,
		0.090303, -0.465658, 0.880345,
		37.219604, 32.052124, 43.578320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430115, 33.062107, 42.981159>,  <37.156391, 32.378086, 42.962078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430115, 33.062107, 42.981159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345688, 33.412766, 42.808212>,  <37.295033, 33.623161, 42.704445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345688, 33.412766, 42.808212>,  <37.430115, 33.062107, 42.981159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345688, 33.412766, 42.808212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381668, -0.333308, -0.862111,
		-0.899879, -0.346981, -0.264240,
		-0.211062, 0.876647, -0.432369,
		37.282368, 33.675758, 42.678501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822685, 33.235626, 42.289783>,  <37.430115, 33.062107, 42.981159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822685, 33.235626, 42.289783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924351, 33.582916, 42.119331>,  <37.985352, 33.791290, 42.017059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924351, 33.582916, 42.119331>,  <37.822685, 33.235626, 42.289783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924351, 33.582916, 42.119331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840280, -0.416393, -0.347198,
		-0.478884, -0.269822, -0.835384,
		0.254166, 0.868224, -0.426130,
		38.000599, 33.843384, 41.991493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076191, 33.055660, 41.567200>,  <37.822685, 33.235626, 42.289783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076191, 33.055660, 41.567200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216362, 33.400070, 41.714626>,  <38.300465, 33.606716, 41.803082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216362, 33.400070, 41.714626>,  <38.076191, 33.055660, 41.567200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216362, 33.400070, 41.714626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855225, -0.133745, -0.500702,
		-0.381822, 0.490665, -0.783237,
		0.350431, 0.861023, 0.368562,
		38.321491, 33.658379, 41.825195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277206, 33.526886, 41.031612>,  <38.076191, 33.055660, 41.567200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277206, 33.526886, 41.031612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494640, 33.553299, 41.366314>,  <38.625099, 33.569145, 41.567135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494640, 33.553299, 41.366314>,  <38.277206, 33.526886, 41.031612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494640, 33.553299, 41.366314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832869, -0.166108, -0.527956,
		0.104129, 0.983894, -0.145290,
		0.543586, 0.066032, 0.836752,
		38.657715, 33.573109, 41.617340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667801, 34.038963, 40.801666>,  <38.277206, 33.526886, 41.031612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667801, 34.038963, 40.801666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784889, 33.765728, 41.069309>,  <38.855141, 33.601788, 41.229897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784889, 33.765728, 41.069309>,  <38.667801, 34.038963, 40.801666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784889, 33.765728, 41.069309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624014, -0.393745, -0.674961,
		0.724516, 0.615106, 0.311000,
		0.292718, -0.683088, 0.669109,
		38.872704, 33.560802, 41.270042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383682, 34.030533, 40.916534>,  <38.667801, 34.038963, 40.801666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383682, 34.030533, 40.916534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243111, 33.664112, 40.993835>,  <39.158768, 33.444260, 41.040215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243111, 33.664112, 40.993835>,  <39.383682, 34.030533, 40.916534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243111, 33.664112, 40.993835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473921, -0.352082, -0.807117,
		0.807401, -0.192059, 0.557868,
		-0.351429, -0.916052, 0.193250,
		39.137680, 33.389297, 41.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921638, 33.595016, 40.779327>,  <39.383682, 34.030533, 40.916534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921638, 33.595016, 40.779327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108948, 33.936901, 40.689713>,  <40.221333, 34.142033, 40.635944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108948, 33.936901, 40.689713>,  <39.921638, 33.595016, 40.779327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108948, 33.936901, 40.689713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516931, -0.470642, -0.715038,
		-0.716589, 0.219025, -0.662215,
		0.468277, 0.854707, -0.224036,
		40.249432, 34.193314, 40.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708431, 33.856308, 40.119923>,  <39.921638, 33.595016, 40.779327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708431, 33.856308, 40.119923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080826, 33.955524, 40.227055>,  <40.304264, 34.015057, 40.291332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080826, 33.955524, 40.227055>,  <39.708431, 33.856308, 40.119923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080826, 33.955524, 40.227055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349256, -0.391807, -0.851180,
		-0.106193, 0.885980, -0.451400,
		0.930990, 0.248044, 0.267826,
		40.360123, 34.029938, 40.307404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019405, 34.233833, 39.577965>,  <39.708431, 33.856308, 40.119923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019405, 34.233833, 39.577965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305737, 34.055519, 39.792950>,  <40.477535, 33.948532, 39.921940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305737, 34.055519, 39.792950>,  <40.019405, 34.233833, 39.577965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305737, 34.055519, 39.792950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434186, -0.318655, -0.842580,
		0.546874, 0.836502, -0.034550,
		0.715830, -0.445784, 0.537461,
		40.520485, 33.921783, 39.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732033, 34.580151, 39.474594>,  <40.019405, 34.233833, 39.577965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732033, 34.580151, 39.474594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661045, 34.187733, 39.505703>,  <40.618450, 33.952282, 39.524368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661045, 34.187733, 39.505703>,  <40.732033, 34.580151, 39.474594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661045, 34.187733, 39.505703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504112, -0.158496, -0.848970,
		0.845206, -0.111465, 0.522687,
		-0.177474, -0.981048, 0.077771,
		40.607803, 33.893417, 39.529034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360016, 34.242104, 39.624184>,  <40.732033, 34.580151, 39.474594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360016, 34.242104, 39.624184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.626194, 34.320477, 39.912292>,  <41.785900, 34.367500, 40.085159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.626194, 34.320477, 39.912292>,  <41.360016, 34.242104, 39.624184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626194, 34.320477, 39.912292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708026, 0.139920, -0.692186,
		-0.236399, 0.970585, -0.045613,
		0.665443, 0.195928, 0.720276,
		41.825829, 34.379253, 40.128376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648888, 34.892792, 39.622929>,  <41.360016, 34.242104, 39.624184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648888, 34.892792, 39.622929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.913052, 34.639553, 39.784447>,  <42.071552, 34.487610, 39.881355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.913052, 34.639553, 39.784447>,  <41.648888, 34.892792, 39.622929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913052, 34.639553, 39.784447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665167, 0.243705, -0.705805,
		0.348434, 0.734712, 0.582058,
		0.660414, -0.633093, 0.403791,
		42.111176, 34.449627, 39.905582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195850, 35.163216, 39.401695>,  <41.648888, 34.892792, 39.622929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195850, 35.163216, 39.401695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303768, 34.790997, 39.500732>,  <42.368519, 34.567665, 39.560154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303768, 34.790997, 39.500732>,  <42.195850, 35.163216, 39.401695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303768, 34.790997, 39.500732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725726, 0.027503, -0.687433,
		0.632878, 0.365144, 0.682741,
		0.269790, -0.930545, 0.247589,
		42.384705, 34.511833, 39.575008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901974, 35.165806, 39.470329>,  <42.195850, 35.163216, 39.401695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901974, 35.165806, 39.470329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760250, 34.804207, 39.374622>,  <42.675217, 34.587246, 39.317200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760250, 34.804207, 39.374622>,  <42.901974, 35.165806, 39.470329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760250, 34.804207, 39.374622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550990, 0.004917, -0.834497,
		0.755561, -0.427505, 0.496353,
		-0.354311, -0.903999, -0.239267,
		42.653957, 34.533009, 39.302841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429661, 34.614468, 39.400612>,  <42.901974, 35.165806, 39.470329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429661, 34.614468, 39.400612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.111729, 34.587032, 39.159435>,  <42.920967, 34.570572, 39.014729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.111729, 34.587032, 39.159435>,  <43.429661, 34.614468, 39.400612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111729, 34.587032, 39.159435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596684, 0.092562, -0.797120,
		0.110484, -0.993342, -0.032645,
		-0.794834, -0.068590, -0.602938,
		42.873280, 34.566456, 38.978554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369930, 33.981720, 38.939720>,  <43.429661, 34.614468, 39.400612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369930, 33.981720, 38.939720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213463, 34.318710, 38.791546>,  <43.119583, 34.520905, 38.702641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213463, 34.318710, 38.791546>,  <43.369930, 33.981720, 38.939720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213463, 34.318710, 38.791546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686608, -0.000878, -0.727027,
		-0.612829, -0.538732, -0.578108,
		-0.391165, 0.842477, -0.370435,
		43.096115, 34.571453, 38.680416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005444, 33.911270, 38.222462>,  <43.369930, 33.981720, 38.939720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005444, 33.911270, 38.222462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175129, 34.263573, 38.306664>,  <43.276939, 34.474953, 38.357185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175129, 34.263573, 38.306664>,  <43.005444, 33.911270, 38.222462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175129, 34.263573, 38.306664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664707, -0.144988, -0.732901,
		-0.614985, 0.450833, -0.646950,
		0.424215, 0.880754, 0.210506,
		43.302395, 34.527798, 38.369816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174500, 34.234009, 37.642387>,  <43.005444, 33.911270, 38.222462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174500, 34.234009, 37.642387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.421242, 34.404346, 37.907158>,  <43.569286, 34.506550, 38.066021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.421242, 34.404346, 37.907158>,  <43.174500, 34.234009, 37.642387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421242, 34.404346, 37.907158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702639, 0.081020, -0.706919,
		-0.354669, 0.901160, -0.249240,
		0.616853, 0.425848, 0.661926,
		43.606297, 34.532101, 38.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494995, 34.873249, 37.318264>,  <43.174500, 34.234009, 37.642387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494995, 34.873249, 37.318264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692383, 34.679588, 37.607288>,  <43.810814, 34.563393, 37.780701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692383, 34.679588, 37.607288>,  <43.494995, 34.873249, 37.318264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692383, 34.679588, 37.607288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719572, -0.239410, -0.651843,
		0.488577, 0.841595, 0.230239,
		0.493466, -0.484149, 0.722559,
		43.840424, 34.534344, 37.824055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213310, 35.121494, 37.303452>,  <43.494995, 34.873249, 37.318264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213310, 35.121494, 37.303452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.181309, 34.759087, 37.469696>,  <44.162106, 34.541641, 37.569443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.181309, 34.759087, 37.469696>,  <44.213310, 35.121494, 37.303452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181309, 34.759087, 37.469696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661488, -0.360162, -0.657812,
		0.745676, 0.222290, 0.628136,
		-0.080006, -0.906019, 0.415607,
		44.157307, 34.487282, 37.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658749, 34.889381, 36.700035>,  <44.213310, 35.121494, 37.303452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658749, 34.889381, 36.700035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.704929, 34.666042, 37.028648>,  <44.732639, 34.532040, 37.225815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.704929, 34.666042, 37.028648>,  <44.658749, 34.889381, 36.700035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704929, 34.666042, 37.028648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775542, -0.466103, -0.425772,
		0.620649, 0.686290, 0.379211,
		0.115451, -0.558350, 0.821533,
		44.739563, 34.498539, 37.275108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348820, 34.932953, 37.156929>,  <44.658749, 34.889381, 36.700035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348820, 34.932953, 37.156929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.186478, 34.567387, 37.154556>,  <45.089073, 34.348045, 37.153133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.186478, 34.567387, 37.154556>,  <45.348820, 34.932953, 37.156929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186478, 34.567387, 37.154556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806047, -0.354879, -0.473654,
		0.430775, -0.197020, 0.880691,
		-0.405858, -0.913917, -0.005934,
		45.064720, 34.293213, 37.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753132, 34.412113, 37.633968>,  <45.348820, 34.932953, 37.156929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753132, 34.412113, 37.633968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.567215, 34.270737, 37.309242>,  <45.455666, 34.185909, 37.114407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.567215, 34.270737, 37.309242>,  <45.753132, 34.412113, 37.633968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567215, 34.270737, 37.309242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884134, -0.234695, -0.404012,
		-0.047733, -0.905536, 0.421577,
		-0.464789, -0.353446, -0.811817,
		45.427780, 34.164703, 37.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204468, 34.337635, 37.111141>,  <45.753132, 34.412113, 37.633968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204468, 34.337635, 37.111141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.399723, 34.664932, 36.989681>,  <46.516876, 34.861309, 36.916805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.399723, 34.664932, 36.989681>,  <46.204468, 34.337635, 37.111141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399723, 34.664932, 36.989681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794250, -0.560693, -0.234072,
		-0.361783, -0.126917, -0.923583,
		0.488139, 0.818239, -0.303653,
		46.546165, 34.910404, 36.898586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850048, 34.177872, 36.693123>,  <46.204468, 34.337635, 37.111141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850048, 34.177872, 36.693123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.932034, 34.566364, 36.741619>,  <46.981224, 34.799461, 36.770718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.932034, 34.566364, 36.741619>,  <46.850048, 34.177872, 36.693123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932034, 34.566364, 36.741619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978179, -0.207566, 0.009076,
		0.033980, 0.116732, -0.992582,
		0.204967, 0.971231, 0.121237,
		46.993523, 34.857735, 36.777988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393921, 34.513851, 36.177135>,  <46.850048, 34.177872, 36.693123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393921, 34.513851, 36.177135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.400692, 34.705276, 36.528290>,  <47.404755, 34.820133, 36.738983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.400692, 34.705276, 36.528290>,  <47.393921, 34.513851, 36.177135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400692, 34.705276, 36.528290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993316, -0.108312, 0.039890,
		0.114176, 0.871346, -0.477200,
		0.016929, 0.478565, 0.877889,
		47.405769, 34.848846, 36.791656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819710, 35.071877, 36.087433>,  <47.393921, 34.513851, 36.177135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819710, 35.071877, 36.087433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.821133, 34.934704, 36.463173>,  <47.821987, 34.852398, 36.688618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.821133, 34.934704, 36.463173>,  <47.819710, 35.071877, 36.087433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821133, 34.934704, 36.463173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967858, -0.235042, -0.089472,
		0.251471, 0.909478, 0.331077,
		0.003556, -0.342935, 0.939352,
		47.822201, 34.831821, 36.744980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315132, 35.073513, 35.445240>,  <47.819710, 35.071877, 36.087433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315132, 35.073513, 35.445240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600739, 34.832184, 35.303150>,  <47.772102, 34.687386, 35.217896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600739, 34.832184, 35.303150>,  <47.315132, 35.073513, 35.445240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600739, 34.832184, 35.303150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641508, 0.767002, -0.013231,
		0.280437, -0.218430, 0.934689,
		0.714018, -0.603321, -0.355220,
		47.814945, 34.651188, 35.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.778173, 36.569553, 56.175079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.114483, 36.561493, 56.391483>,  <32.316269, 36.556656, 56.521328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.114483, 36.561493, 56.391483>,  <31.778173, 36.569553, 56.175079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114483, 36.561493, 56.391483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524736, -0.215597, -0.823510,
		0.133238, 0.976274, -0.170693,
		0.840773, -0.020154, 0.541013,
		32.366714, 36.555447, 56.553787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265858, 36.993153, 55.850864>,  <31.778173, 36.569553, 56.175079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265858, 36.993153, 55.850864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.478279, 36.753914, 56.090950>,  <32.605732, 36.610371, 56.235001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.478279, 36.753914, 56.090950>,  <32.265858, 36.993153, 55.850864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478279, 36.753914, 56.090950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543312, -0.303223, -0.782859,
		0.650225, 0.741846, 0.163925,
		0.531055, -0.598097, 0.600217,
		32.637596, 36.574486, 56.271015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012413, 37.027416, 55.554184>,  <32.265858, 36.993153, 55.850864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012413, 37.027416, 55.554184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.975266, 36.701862, 55.783607>,  <32.952976, 36.506531, 55.921261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.975266, 36.701862, 55.783607>,  <33.012413, 37.027416, 55.554184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975266, 36.701862, 55.783607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694486, -0.465739, -0.548430,
		0.713487, 0.347397, 0.608483,
		-0.092871, -0.813881, 0.573562,
		32.947403, 36.457699, 55.955677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643238, 36.842381, 55.788204>,  <33.012413, 37.027416, 55.554184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643238, 36.842381, 55.788204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.417656, 36.512272, 55.800117>,  <33.282307, 36.314205, 55.807266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.417656, 36.512272, 55.800117>,  <33.643238, 36.842381, 55.788204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417656, 36.512272, 55.800117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641184, -0.460317, -0.613996,
		0.520425, -0.327164, 0.788747,
		-0.563951, -0.825271, 0.029788,
		33.248470, 36.264690, 55.809055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143330, 36.297752, 55.733036>,  <33.643238, 36.842381, 55.788204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143330, 36.297752, 55.733036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795181, 36.116379, 55.656250>,  <33.586292, 36.007553, 55.610180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795181, 36.116379, 55.656250>,  <34.143330, 36.297752, 55.733036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795181, 36.116379, 55.656250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447983, -0.567416, -0.690905,
		0.204357, -0.687341, 0.696993,
		-0.870373, -0.453433, -0.191962,
		33.534069, 35.980350, 55.598660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212326, 35.558510, 55.750916>,  <34.143330, 36.297752, 55.733036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212326, 35.558510, 55.750916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894302, 35.609371, 55.513695>,  <33.703487, 35.639889, 55.371361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894302, 35.609371, 55.513695>,  <34.212326, 35.558510, 55.750916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894302, 35.609371, 55.513695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417588, -0.594382, -0.687263,
		-0.439890, -0.794067, 0.419470,
		-0.795058, 0.127154, -0.593055,
		33.655785, 35.647518, 55.335777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138966, 34.884518, 55.458691>,  <34.212326, 35.558510, 55.750916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138966, 34.884518, 55.458691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.915825, 35.122433, 55.227161>,  <33.781940, 35.265182, 55.088245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.915825, 35.122433, 55.227161>,  <34.138966, 34.884518, 55.458691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915825, 35.122433, 55.227161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302446, -0.503777, -0.809157,
		-0.772873, -0.626449, 0.101140,
		-0.557847, 0.594786, -0.578822,
		33.748470, 35.300869, 55.053516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715122, 34.513054, 55.056541>,  <34.138966, 34.884518, 55.458691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715122, 34.513054, 55.056541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.757961, 34.847786, 54.841789>,  <33.783665, 35.048626, 54.712936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.757961, 34.847786, 54.841789>,  <33.715122, 34.513054, 55.056541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757961, 34.847786, 54.841789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165346, -0.547459, -0.820335,
		-0.980403, -0.000915, -0.196999,
		0.107098, 0.836832, -0.536882,
		33.790092, 35.098835, 54.680725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330105, 34.245434, 54.507111>,  <33.715122, 34.513054, 55.056541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330105, 34.245434, 54.507111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.510262, 34.587410, 54.404171>,  <33.618355, 34.792595, 54.342407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.510262, 34.587410, 54.404171>,  <33.330105, 34.245434, 54.507111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510262, 34.587410, 54.404171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045159, -0.309684, -0.949767,
		-0.891689, 0.416144, -0.178086,
		0.450390, 0.854939, -0.257349,
		33.645378, 34.843891, 54.326965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032589, 34.353279, 53.851589>,  <33.330105, 34.245434, 54.507111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032589, 34.353279, 53.851589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.363453, 34.576023, 53.881821>,  <33.561970, 34.709671, 53.899960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.363453, 34.576023, 53.881821>,  <33.032589, 34.353279, 53.851589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363453, 34.576023, 53.881821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159213, -0.103240, -0.981831,
		-0.538941, 0.824165, -0.174056,
		0.827160, 0.556861, 0.075578,
		33.611603, 34.743080, 53.904495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041092, 34.829575, 53.330109>,  <33.032589, 34.353279, 53.851589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041092, 34.829575, 53.330109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434162, 34.843956, 53.402840>,  <33.670002, 34.852585, 53.446480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434162, 34.843956, 53.402840>,  <33.041092, 34.829575, 53.330109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434162, 34.843956, 53.402840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183630, -0.055625, -0.981420,
		-0.025174, 0.997804, -0.061263,
		0.982673, 0.035956, 0.181827,
		33.728966, 34.854744, 53.457386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383682, 35.351761, 52.805317>,  <33.041092, 34.829575, 53.330109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383682, 35.351761, 52.805317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655712, 35.098598, 52.953331>,  <33.818932, 34.946701, 53.042137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655712, 35.098598, 52.953331>,  <33.383682, 35.351761, 52.805317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655712, 35.098598, 52.953331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396887, -0.106542, -0.911663,
		0.616423, 0.766861, 0.178736,
		0.680076, -0.632908, 0.370031,
		33.859734, 34.908726, 53.064339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912571, 35.514820, 52.404598>,  <33.383682, 35.351761, 52.805317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912571, 35.514820, 52.404598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.995632, 35.145905, 52.534996>,  <34.045467, 34.924557, 52.613235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.995632, 35.145905, 52.534996>,  <33.912571, 35.514820, 52.404598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995632, 35.145905, 52.534996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434951, -0.211446, -0.875276,
		0.876184, 0.323542, 0.357242,
		0.207651, -0.922286, 0.325991,
		34.057926, 34.869217, 52.632793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621696, 35.409035, 52.197277>,  <33.912571, 35.514820, 52.404598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621696, 35.409035, 52.197277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468315, 35.043228, 52.248844>,  <34.376286, 34.823742, 52.279785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468315, 35.043228, 52.248844>,  <34.621696, 35.409035, 52.197277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468315, 35.043228, 52.248844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482601, -0.317421, -0.816297,
		0.787439, -0.250798, 0.563064,
		-0.383454, -0.914519, 0.128914,
		34.353279, 34.768871, 52.287518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135944, 34.931129, 51.888802>,  <34.621696, 35.409035, 52.197277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135944, 34.931129, 51.888802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817822, 34.691315, 51.924660>,  <34.626945, 34.547424, 51.946175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817822, 34.691315, 51.924660>,  <35.135944, 34.931129, 51.888802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817822, 34.691315, 51.924660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316040, -0.536261, -0.782651,
		0.517301, -0.594120, 0.615972,
		-0.795310, -0.599538, 0.089643,
		34.579227, 34.511452, 51.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495251, 34.249397, 51.795582>,  <35.135944, 34.931129, 51.888802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495251, 34.249397, 51.795582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.104515, 34.197674, 51.727390>,  <34.870075, 34.166641, 51.686474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.104515, 34.197674, 51.727390>,  <35.495251, 34.249397, 51.795582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104515, 34.197674, 51.727390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201782, -0.291574, -0.935023,
		0.071200, -0.947768, 0.310914,
		-0.976839, -0.129310, -0.170482,
		34.811462, 34.158882, 51.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411400, 33.571213, 51.720322>,  <35.495251, 34.249397, 51.795582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411400, 33.571213, 51.720322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083588, 33.706345, 51.535175>,  <34.886902, 33.787426, 51.424088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083588, 33.706345, 51.535175>,  <35.411400, 33.571213, 51.720322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083588, 33.706345, 51.535175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229094, -0.547219, -0.805026,
		-0.525249, -0.765782, 0.371068,
		-0.819530, 0.337829, -0.462862,
		34.837730, 33.807693, 51.396317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104210, 33.029518, 51.315868>,  <35.411400, 33.571213, 51.720322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104210, 33.029518, 51.315868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.980465, 33.366962, 51.140320>,  <34.906216, 33.569431, 51.034992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.980465, 33.366962, 51.140320>,  <35.104210, 33.029518, 51.315868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980465, 33.366962, 51.140320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290854, -0.355450, -0.888290,
		-0.905371, -0.402453, -0.135406,
		-0.309365, 0.843615, -0.438869,
		34.887653, 33.620049, 51.008659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748371, 32.773491, 50.743797>,  <35.104210, 33.029518, 51.315868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748371, 32.773491, 50.743797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.765026, 33.162338, 50.651497>,  <34.775021, 33.395649, 50.596115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.765026, 33.162338, 50.651497>,  <34.748371, 32.773491, 50.743797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765026, 33.162338, 50.651497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053425, -0.228456, -0.972088,
		-0.997703, 0.052807, 0.042422,
		0.041641, 0.972121, -0.230752,
		34.777519, 33.453976, 50.582272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167286, 32.833603, 50.261269>,  <34.748371, 32.773491, 50.743797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167286, 32.833603, 50.261269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.445957, 33.117256, 50.217869>,  <34.613159, 33.287449, 50.191830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.445957, 33.117256, 50.217869>,  <34.167286, 32.833603, 50.261269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445957, 33.117256, 50.217869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092424, -0.238713, -0.966682,
		-0.711404, 0.663439, -0.231847,
		0.696680, 0.709129, -0.108504,
		34.654961, 33.329994, 50.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837727, 33.172329, 49.666698>,  <34.167286, 32.833603, 50.261269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837727, 33.172329, 49.666698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.217155, 33.296963, 49.689041>,  <34.444813, 33.371742, 49.702446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.217155, 33.296963, 49.689041>,  <33.837727, 33.172329, 49.666698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217155, 33.296963, 49.689041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147805, -0.279929, -0.948574,
		-0.279929, 0.908049, -0.311588,
		0.948574, 0.311588, 0.055854,
		34.501728, 33.390438, 49.705799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142242, 33.006916, 49.491192>,  <33.837727, 33.172329, 49.666698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142242, 33.006916, 49.491192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.836025, 33.089157, 49.247330>,  <32.652294, 33.138500, 49.101013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.836025, 33.089157, 49.247330>,  <33.142242, 33.006916, 49.491192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836025, 33.089157, 49.247330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598612, 0.119694, 0.792046,
		0.235819, 0.971288, 0.031446,
		-0.765541, 0.205604, -0.609651,
		32.606361, 33.150837, 49.064434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833649, 33.575279, 49.791130>,  <33.142242, 33.006916, 49.491192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833649, 33.575279, 49.791130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.572056, 33.403824, 49.541786>,  <32.415100, 33.300949, 49.392181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.572056, 33.403824, 49.541786>,  <32.833649, 33.575279, 49.791130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572056, 33.403824, 49.541786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754834, 0.314919, 0.575371,
		-0.050318, 0.846815, -0.529501,
		-0.653983, -0.428637, -0.623359,
		32.375862, 33.275234, 49.354778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312077, 34.020939, 49.731148>,  <32.833649, 33.575279, 49.791130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312077, 34.020939, 49.731148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.113445, 33.685474, 49.641651>,  <31.994267, 33.484196, 49.587955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.113445, 33.685474, 49.641651>,  <32.312077, 34.020939, 49.731148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113445, 33.685474, 49.641651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826715, 0.378438, 0.416326,
		-0.264485, 0.391707, -0.881257,
		-0.496579, -0.838660, -0.223739,
		31.964472, 33.433876, 49.574528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575182, 34.201855, 49.466137>,  <32.312077, 34.020939, 49.731148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575182, 34.201855, 49.466137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.589991, 33.816860, 49.573658>,  <31.598875, 33.585865, 49.638168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.589991, 33.816860, 49.573658>,  <31.575182, 34.201855, 49.466137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589991, 33.816860, 49.573658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881527, 0.095238, 0.462428,
		-0.470679, -0.254074, -0.844930,
		0.037021, -0.962484, 0.268800,
		31.601097, 33.528114, 49.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848434, 33.941730, 49.474216>,  <31.575182, 34.201855, 49.466137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848434, 33.941730, 49.474216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.055923, 33.678570, 49.692608>,  <31.180416, 33.520672, 49.823643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.055923, 33.678570, 49.692608>,  <30.848434, 33.941730, 49.474216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055923, 33.678570, 49.692608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693651, 0.049453, 0.718611,
		-0.499776, -0.751478, -0.430702,
		0.518721, -0.657902, 0.545979,
		31.211540, 33.481201, 49.856403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334356, 33.762730, 49.781868>,  <30.848434, 33.941730, 49.474216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334356, 33.762730, 49.781868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649178, 33.612953, 49.977966>,  <30.838070, 33.523087, 50.095627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649178, 33.612953, 49.977966>,  <30.334356, 33.762730, 49.781868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649178, 33.612953, 49.977966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448360, 0.198619, 0.871507,
		-0.423697, -0.905730, -0.011559,
		0.787054, -0.374437, 0.490248,
		30.885294, 33.500622, 50.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010616, 33.426876, 50.434086>,  <30.334356, 33.762730, 49.781868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010616, 33.426876, 50.434086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.400637, 33.484547, 50.501598>,  <30.634649, 33.519150, 50.542107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.400637, 33.484547, 50.501598>,  <30.010616, 33.426876, 50.434086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400637, 33.484547, 50.501598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208350, 0.332083, 0.919951,
		0.076586, -0.932166, 0.353838,
		0.975051, 0.144177, 0.168784,
		30.693151, 33.527802, 50.552235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057184, 33.368187, 51.116982>,  <30.010616, 33.426876, 50.434086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057184, 33.368187, 51.116982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.422470, 33.514172, 51.044491>,  <30.641642, 33.601761, 51.000996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.422470, 33.514172, 51.044491>,  <30.057184, 33.368187, 51.116982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422470, 33.514172, 51.044491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022486, 0.398943, 0.916700,
		0.406883, -0.841209, 0.356109,
		0.913204, 0.364982, -0.181239,
		30.696434, 33.623661, 50.990124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590839, 33.076900, 51.656086>,  <30.057184, 33.368187, 51.116982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590839, 33.076900, 51.656086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711124, 33.427166, 51.504932>,  <30.783295, 33.637325, 51.414242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711124, 33.427166, 51.504932>,  <30.590839, 33.076900, 51.656086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711124, 33.427166, 51.504932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008548, 0.393728, 0.919187,
		0.953677, -0.279640, 0.110913,
		0.300711, 0.875659, -0.377880,
		30.801338, 33.689865, 51.391567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184542, 33.316212, 52.099388>,  <30.590839, 33.076900, 51.656086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184542, 33.316212, 52.099388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024363, 33.632553, 51.914265>,  <30.928255, 33.822357, 51.803192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024363, 33.632553, 51.914265>,  <31.184542, 33.316212, 52.099388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024363, 33.632553, 51.914265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121853, 0.454626, 0.882308,
		0.908182, 0.409712, -0.085686,
		-0.400447, 0.790855, -0.462808,
		30.904228, 33.869808, 51.775421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639601, 33.945969, 52.265800>,  <31.184542, 33.316212, 52.099388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639601, 33.945969, 52.265800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.296721, 34.112904, 52.145111>,  <31.090992, 34.213066, 52.072697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.296721, 34.112904, 52.145111>,  <31.639601, 33.945969, 52.265800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296721, 34.112904, 52.145111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011345, 0.570441, 0.821260,
		0.514861, 0.707406, -0.484246,
		-0.857199, 0.417341, -0.301723,
		31.039560, 34.238106, 52.054596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706564, 34.702232, 52.422997>,  <31.639601, 33.945969, 52.265800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706564, 34.702232, 52.422997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312481, 34.650673, 52.377827>,  <31.076031, 34.619740, 52.350727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312481, 34.650673, 52.377827>,  <31.706564, 34.702232, 52.422997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312481, 34.650673, 52.377827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169586, 0.638708, 0.750528,
		-0.024617, 0.758576, -0.651119,
		-0.985208, -0.128896, -0.112921,
		31.016918, 34.612003, 52.343952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424833, 35.338242, 52.433437>,  <31.706564, 34.702232, 52.422997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424833, 35.338242, 52.433437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.124563, 35.091640, 52.528446>,  <30.944401, 34.943680, 52.585453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.124563, 35.091640, 52.528446>,  <31.424833, 35.338242, 52.433437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124563, 35.091640, 52.528446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180420, 0.537142, 0.823971,
		-0.635561, 0.575679, -0.514447,
		-0.750674, -0.616500, 0.237523,
		30.899361, 34.906689, 52.599705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797028, 35.711647, 52.577618>,  <31.424833, 35.338242, 52.433437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797028, 35.711647, 52.577618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.731539, 35.352943, 52.742065>,  <30.692245, 35.137722, 52.840733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.731539, 35.352943, 52.742065>,  <30.797028, 35.711647, 52.577618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731539, 35.352943, 52.742065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321892, 0.442494, 0.837009,
		-0.932513, 0.004700, -0.361105,
		-0.163721, -0.896759, 0.411118,
		30.682423, 35.083916, 52.865402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203028, 35.813011, 52.867123>,  <30.797028, 35.711647, 52.577618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203028, 35.813011, 52.867123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.356993, 35.486523, 53.039459>,  <30.449371, 35.290630, 53.142860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.356993, 35.486523, 53.039459>,  <30.203028, 35.813011, 52.867123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356993, 35.486523, 53.039459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344950, 0.305751, 0.887427,
		-0.856067, -0.490200, -0.163869,
		0.384913, -0.816223, 0.430838,
		30.472467, 35.241657, 53.168709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699106, 35.385918, 53.174507>,  <30.203028, 35.813011, 52.867123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699106, 35.385918, 53.174507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042528, 35.346634, 53.375797>,  <30.248581, 35.323063, 53.496571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042528, 35.346634, 53.375797>,  <29.699106, 35.385918, 53.174507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042528, 35.346634, 53.375797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467492, 0.253133, 0.846980,
		-0.210562, -0.962434, 0.171418,
		0.858554, -0.098205, 0.503230,
		30.300095, 35.317173, 53.526768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465628, 35.447227, 53.792606>,  <29.699106, 35.385918, 53.174507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465628, 35.447227, 53.792606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.860806, 35.441292, 53.854248>,  <30.097912, 35.437733, 53.891235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.860806, 35.441292, 53.854248>,  <29.465628, 35.447227, 53.792606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860806, 35.441292, 53.854248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147763, 0.206764, 0.967168,
		-0.046214, -0.978278, 0.202078,
		0.987943, -0.014837, 0.154109,
		30.157188, 35.436840, 53.900482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545086, 35.053562, 54.411289>,  <29.465628, 35.447227, 53.792606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545086, 35.053562, 54.411289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.866323, 35.283398, 54.348183>,  <30.059067, 35.421299, 54.310318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.866323, 35.283398, 54.348183>,  <29.545086, 35.053562, 54.411289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866323, 35.283398, 54.348183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048664, 0.200637, 0.978456,
		0.593863, -0.793469, 0.133168,
		0.803093, 0.574589, -0.157764,
		30.107252, 35.455772, 54.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105865, 34.907021, 54.971905>,  <29.545086, 35.053562, 54.411289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105865, 34.907021, 54.971905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.178333, 35.277321, 54.839146>,  <30.221815, 35.499500, 54.759491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.178333, 35.277321, 54.839146>,  <30.105865, 34.907021, 54.971905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178333, 35.277321, 54.839146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095470, 0.319338, 0.942820,
		0.978807, -0.202498, -0.030527,
		0.181171, 0.925753, -0.331902,
		30.232685, 35.555046, 54.739574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.571241, 35.204826, 55.417515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426247, 35.528316, 55.232231>,  <30.339249, 35.722412, 55.121063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426247, 35.528316, 55.232231>,  <30.571241, 35.204826, 55.417515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426247, 35.528316, 55.232231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032404, 0.485772, 0.873485,
		0.931424, 0.331639, -0.149881,
		-0.362489, 0.808728, -0.463206,
		30.317499, 35.770935, 55.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818464, 35.730614, 55.823864>,  <30.571241, 35.204826, 55.417515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818464, 35.730614, 55.823864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521059, 35.901741, 55.618275>,  <30.342615, 36.004417, 55.494923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521059, 35.901741, 55.618275>,  <30.818464, 35.730614, 55.823864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521059, 35.901741, 55.618275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173406, 0.618950, 0.766049,
		0.645847, 0.658693, -0.386012,
		-0.743513, 0.427814, -0.513969,
		30.298006, 36.030087, 55.464085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944639, 36.432865, 55.814205>,  <30.818464, 35.730614, 55.823864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944639, 36.432865, 55.814205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548819, 36.410786, 55.760921>,  <30.311327, 36.397537, 55.728951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548819, 36.410786, 55.760921>,  <30.944639, 36.432865, 55.814205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548819, 36.410786, 55.760921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139198, 0.606737, 0.782620,
		0.037619, 0.792984, -0.608081,
		-0.989550, -0.055203, -0.133207,
		30.251953, 36.394226, 55.720959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821894, 37.196239, 55.916508>,  <30.944639, 36.432865, 55.814205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821894, 37.196239, 55.916508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492739, 36.969364, 55.930107>,  <30.295246, 36.833241, 55.938267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492739, 36.969364, 55.930107>,  <30.821894, 37.196239, 55.916508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492739, 36.969364, 55.930107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313650, 0.503311, 0.805172,
		-0.473795, 0.651901, -0.592066,
		-0.822886, -0.567188, 0.033997,
		30.245872, 36.799206, 55.940308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306248, 37.566006, 56.013054>,  <30.821894, 37.196239, 55.916508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306248, 37.566006, 56.013054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111481, 37.225639, 56.091904>,  <29.994621, 37.021420, 56.139214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111481, 37.225639, 56.091904>,  <30.306248, 37.566006, 56.013054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111481, 37.225639, 56.091904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465459, 0.443757, 0.765785,
		-0.739093, 0.281120, -0.612138,
		-0.486918, -0.850912, 0.197127,
		29.965405, 36.970367, 56.151043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496103, 37.680504, 55.988659>,  <30.306248, 37.566006, 56.013054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496103, 37.680504, 55.988659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633814, 37.381401, 56.215759>,  <29.716440, 37.201939, 56.352020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633814, 37.381401, 56.215759>,  <29.496103, 37.680504, 55.988659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633814, 37.381401, 56.215759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377176, 0.443618, 0.812983,
		-0.859775, -0.494030, -0.129309,
		0.344274, -0.747755, 0.567748,
		29.737097, 37.157074, 56.386086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993237, 37.567852, 56.371773>,  <29.496103, 37.680504, 55.988659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993237, 37.567852, 56.371773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310614, 37.439655, 56.578743>,  <29.501040, 37.362736, 56.702927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310614, 37.439655, 56.578743>,  <28.993237, 37.567852, 56.371773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310614, 37.439655, 56.578743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380620, 0.402119, 0.832724,
		-0.474950, -0.857663, 0.197072,
		0.793443, -0.320492, 0.517430,
		29.548647, 37.343506, 56.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732143, 37.240479, 56.958897>,  <28.993237, 37.567852, 56.371773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732143, 37.240479, 56.958897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109463, 37.337135, 57.049934>,  <29.335854, 37.395130, 57.104557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109463, 37.337135, 57.049934>,  <28.732143, 37.240479, 56.958897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109463, 37.337135, 57.049934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312143, 0.412428, 0.855845,
		0.112945, -0.878357, 0.464470,
		0.943297, 0.241644, 0.227591,
		29.392452, 37.409630, 57.118214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763092, 37.227360, 57.611439>,  <28.732143, 37.240479, 56.958897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763092, 37.227360, 57.611439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089472, 37.452927, 57.560493>,  <29.285299, 37.588268, 57.529926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089472, 37.452927, 57.560493>,  <28.763092, 37.227360, 57.611439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089472, 37.452927, 57.560493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228207, 0.516590, 0.825261,
		0.531187, -0.644299, 0.550200,
		0.815942, 0.563927, -0.127372,
		29.334257, 37.622101, 57.522285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010761, 37.331696, 58.234921>,  <28.763092, 37.227360, 57.611439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010761, 37.331696, 58.234921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199289, 37.601143, 58.007206>,  <29.312407, 37.762814, 57.870579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199289, 37.601143, 58.007206>,  <29.010761, 37.331696, 58.234921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199289, 37.601143, 58.007206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141998, 0.695017, 0.704832,
		0.870456, -0.251365, 0.423229,
		0.471321, 0.673623, -0.569288,
		29.340687, 37.803230, 57.836418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514847, 37.786377, 58.739220>,  <29.010761, 37.331696, 58.234921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514847, 37.786377, 58.739220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460375, 38.003407, 58.407661>,  <29.427691, 38.133625, 58.208725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460375, 38.003407, 58.407661>,  <29.514847, 37.786377, 58.739220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460375, 38.003407, 58.407661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073097, 0.839913, 0.537776,
		0.987984, 0.012646, -0.154042,
		-0.136183, 0.542574, -0.828896,
		29.419519, 38.166180, 58.158993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034439, 38.338615, 58.813179>,  <29.514847, 37.786377, 58.739220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034439, 38.338615, 58.813179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762775, 38.471523, 58.551388>,  <29.599777, 38.551270, 58.394314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762775, 38.471523, 58.551388>,  <30.034439, 38.338615, 58.813179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762775, 38.471523, 58.551388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091168, 0.846575, 0.524404,
		0.728308, 0.415821, -0.544666,
		-0.679159, 0.332271, -0.654477,
		29.559029, 38.571205, 58.355045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181040, 39.006195, 58.757252>,  <30.034439, 38.338615, 58.813179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181040, 39.006195, 58.757252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803961, 38.975441, 58.627384>,  <29.577713, 38.956989, 58.549465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803961, 38.975441, 58.627384>,  <30.181040, 39.006195, 58.757252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803961, 38.975441, 58.627384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235096, 0.843561, 0.482841,
		0.236751, 0.531501, -0.813299,
		-0.942698, -0.076890, -0.324668,
		29.521152, 38.952374, 58.529984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017061, 39.661026, 58.507515>,  <30.181040, 39.006195, 58.757252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017061, 39.661026, 58.507515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647930, 39.531601, 58.591125>,  <29.426451, 39.453945, 58.641293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647930, 39.531601, 58.591125>,  <30.017061, 39.661026, 58.507515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647930, 39.531601, 58.591125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274544, 0.933089, 0.232315,
		-0.270208, 0.157000, -0.949915,
		-0.922829, -0.323567, 0.209025,
		29.371082, 39.434532, 58.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685326, 40.235771, 58.445171>,  <30.017061, 39.661026, 58.507515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685326, 40.235771, 58.445171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420763, 39.996685, 58.626400>,  <29.262026, 39.853233, 58.735138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420763, 39.996685, 58.626400>,  <29.685326, 40.235771, 58.445171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420763, 39.996685, 58.626400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411524, 0.794229, 0.447044,
		-0.627046, 0.109230, -0.771286,
		-0.661408, -0.597720, 0.453067,
		29.222340, 39.817368, 58.762321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159073, 40.567291, 58.454529>,  <29.685326, 40.235771, 58.445171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159073, 40.567291, 58.454529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117197, 40.321426, 58.767254>,  <29.092072, 40.173908, 58.954891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117197, 40.321426, 58.767254>,  <29.159073, 40.567291, 58.454529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117197, 40.321426, 58.767254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274645, 0.773431, 0.571292,
		-0.955829, -0.154913, -0.249784,
		-0.104690, -0.614659, 0.781814,
		29.085791, 40.137028, 59.001797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459421, 40.677612, 58.729950>,  <29.159073, 40.567291, 58.454529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459421, 40.677612, 58.729950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618887, 40.485592, 59.042519>,  <28.714565, 40.370380, 59.230061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618887, 40.485592, 59.042519>,  <28.459421, 40.677612, 58.729950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618887, 40.485592, 59.042519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324883, 0.722876, 0.609837,
		-0.857624, -0.496989, 0.132222,
		0.398663, -0.480054, 0.781419,
		28.738485, 40.341576, 59.276943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937466, 40.560432, 59.262215>,  <28.459421, 40.677612, 58.729950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937466, 40.560432, 59.262215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279234, 40.535633, 59.468563>,  <28.484295, 40.520752, 59.592373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279234, 40.535633, 59.468563>,  <27.937466, 40.560432, 59.262215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279234, 40.535633, 59.468563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370573, 0.623219, 0.688675,
		-0.364195, -0.779586, 0.509518,
		0.854423, -0.061998, 0.515867,
		28.535561, 40.517033, 59.623322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701012, 40.558727, 59.878922>,  <27.937466, 40.560432, 59.262215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701012, 40.558727, 59.878922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076145, 40.683205, 59.940414>,  <28.301226, 40.757889, 59.977310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076145, 40.683205, 59.940414>,  <27.701012, 40.558727, 59.878922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076145, 40.683205, 59.940414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308873, 0.546209, 0.778623,
		0.158331, -0.777700, 0.608370,
		0.937832, 0.311190, 0.153729,
		28.357494, 40.776562, 59.986534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787443, 40.587994, 60.587318>,  <27.701012, 40.558727, 59.878922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787443, 40.587994, 60.587318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087709, 40.811752, 60.446705>,  <28.267870, 40.946007, 60.362335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087709, 40.811752, 60.446705>,  <27.787443, 40.587994, 60.587318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087709, 40.811752, 60.446705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100582, 0.622635, 0.776022,
		0.652984, -0.547173, 0.523654,
		0.750663, 0.559400, -0.351535,
		28.312910, 40.979572, 60.341244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349571, 40.588558, 61.159199>,  <27.787443, 40.587994, 60.587318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349571, 40.588558, 61.159199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354401, 40.919426, 60.934467>,  <28.357298, 41.117947, 60.799629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354401, 40.919426, 60.934467>,  <28.349571, 40.588558, 61.159199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354401, 40.919426, 60.934467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281427, 0.541967, 0.791878,
		0.959507, 0.148554, 0.239330,
		0.012073, 0.827166, -0.561828,
		28.358023, 41.167576, 60.765919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460602, 41.029438, 61.689949>,  <28.349571, 40.588558, 61.159199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460602, 41.029438, 61.689949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375595, 41.291382, 61.399849>,  <28.324591, 41.448547, 61.225788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375595, 41.291382, 61.399849>,  <28.460602, 41.029438, 61.689949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375595, 41.291382, 61.399849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320137, 0.654583, 0.684861,
		0.923227, 0.377725, 0.070535,
		-0.212518, 0.654863, -0.725252,
		28.311840, 41.487843, 61.182274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817406, 41.718750, 61.803989>,  <28.460602, 41.029438, 61.689949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817406, 41.718750, 61.803989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480595, 41.751217, 61.590672>,  <28.278509, 41.770695, 61.462681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480595, 41.751217, 61.590672>,  <28.817406, 41.718750, 61.803989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480595, 41.751217, 61.590672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327904, 0.707990, 0.625484,
		0.428335, 0.701543, -0.569532,
		-0.842026, 0.081165, -0.533295,
		28.227987, 41.775566, 61.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316544, 41.093163, 61.946095>,  <28.817406, 41.718750, 61.803989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316544, 41.093163, 61.946095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549526, 41.336117, 62.162178>,  <29.689316, 41.481888, 62.291828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549526, 41.336117, 62.162178>,  <29.316544, 41.093163, 61.946095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549526, 41.336117, 62.162178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812816, -0.428193, -0.394944,
		-0.008569, 0.669129, -0.743097,
		0.582457, 0.607385, 0.540210,
		29.724264, 41.518333, 62.324242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818195, 41.488838, 61.498234>,  <29.316544, 41.093163, 61.946095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818195, 41.488838, 61.498234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948061, 41.398228, 61.865555>,  <30.025980, 41.343861, 62.085949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948061, 41.398228, 61.865555>,  <29.818195, 41.488838, 61.498234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948061, 41.398228, 61.865555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777278, -0.489299, -0.395507,
		0.538918, 0.842182, 0.017218,
		0.324665, -0.226529, 0.918301,
		30.045460, 41.330269, 62.141045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564644, 41.570251, 61.551289>,  <29.818195, 41.488838, 61.498234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564644, 41.570251, 61.551289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478365, 41.336418, 61.864143>,  <30.426598, 41.196117, 62.051857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478365, 41.336418, 61.864143>,  <30.564644, 41.570251, 61.551289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478365, 41.336418, 61.864143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655279, -0.680502, -0.327913,
		0.723937, 0.441786, 0.529849,
		-0.215696, -0.584587, 0.782134,
		30.413656, 41.161041, 62.098782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167549, 41.300529, 61.970345>,  <30.564644, 41.570251, 61.551289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167549, 41.300529, 61.970345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891245, 41.021187, 62.045341>,  <30.725464, 40.853580, 62.090340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891245, 41.021187, 62.045341>,  <31.167549, 41.300529, 61.970345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891245, 41.021187, 62.045341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620256, -0.705540, -0.342778,
		0.371667, -0.120480, 0.920515,
		-0.690758, -0.698354, 0.187497,
		30.684017, 40.811680, 62.101589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490902, 40.704781, 62.104935>,  <31.167549, 41.300529, 61.970345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490902, 40.704781, 62.104935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136339, 40.530575, 62.042191>,  <30.923601, 40.426052, 62.004543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136339, 40.530575, 62.042191>,  <31.490902, 40.704781, 62.104935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136339, 40.530575, 62.042191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457659, -0.773662, -0.438173,
		0.069474, -0.460189, 0.885099,
		-0.886409, -0.435515, -0.156860,
		30.870417, 40.399921, 61.995132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580114, 39.976627, 62.324150>,  <31.490902, 40.704781, 62.104935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580114, 39.976627, 62.324150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255556, 39.984718, 62.090492>,  <31.060822, 39.989574, 61.950298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255556, 39.984718, 62.090492>,  <31.580114, 39.976627, 62.324150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255556, 39.984718, 62.090492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316153, -0.825395, -0.467729,
		-0.491615, -0.564193, 0.663325,
		-0.811395, 0.020231, -0.584148,
		31.012138, 39.990788, 61.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227419, 39.312756, 62.317074>,  <31.580114, 39.976627, 62.324150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227419, 39.312756, 62.317074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093000, 39.453629, 61.967667>,  <31.012348, 39.538155, 61.758022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093000, 39.453629, 61.967667>,  <31.227419, 39.312756, 62.317074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093000, 39.453629, 61.967667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015592, -0.929409, -0.368722,
		-0.941717, -0.110288, 0.317815,
		-0.336046, 0.352187, -0.873520,
		30.992186, 39.559284, 61.705612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785473, 38.800308, 62.103497>,  <31.227419, 39.312756, 62.317074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785473, 38.800308, 62.103497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864576, 39.012707, 61.773907>,  <30.912039, 39.140144, 61.576153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864576, 39.012707, 61.773907>,  <30.785473, 38.800308, 62.103497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864576, 39.012707, 61.773907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027723, -0.843268, -0.536778,
		-0.979859, 0.083309, -0.181485,
		0.197759, 0.530997, -0.823974,
		30.923904, 39.172005, 61.526714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337934, 38.565937, 61.637299>,  <30.785473, 38.800308, 62.103497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337934, 38.565937, 61.637299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615131, 38.738071, 61.405930>,  <30.781450, 38.841354, 61.267109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615131, 38.738071, 61.405930>,  <30.337934, 38.565937, 61.637299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615131, 38.738071, 61.405930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007600, -0.806624, -0.591016,
		-0.720904, 0.405174, -0.562256,
		0.692993, 0.430339, -0.578419,
		30.823029, 38.867172, 61.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139267, 38.291676, 60.981453>,  <30.337934, 38.565937, 61.637299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139267, 38.291676, 60.981453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501904, 38.437145, 60.895821>,  <30.719486, 38.524426, 60.844440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501904, 38.437145, 60.895821>,  <30.139267, 38.291676, 60.981453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501904, 38.437145, 60.895821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115771, -0.702165, -0.702540,
		-0.405817, 0.612132, -0.678680,
		0.906592, 0.363674, -0.214083,
		30.773882, 38.546246, 60.831596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118666, 38.413101, 60.218266>,  <30.139267, 38.291676, 60.981453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118666, 38.413101, 60.218266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498350, 38.430328, 60.342937>,  <30.726160, 38.440666, 60.417740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498350, 38.430328, 60.342937>,  <30.118666, 38.413101, 60.218266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498350, 38.430328, 60.342937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303343, -0.388362, -0.870148,
		0.083567, 0.920500, -0.381702,
		0.949210, 0.043071, 0.311682,
		30.783113, 38.443249, 60.436443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490877, 38.724953, 59.668446>,  <30.118666, 38.413101, 60.218266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490877, 38.724953, 59.668446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778736, 38.545162, 59.880135>,  <30.951452, 38.437290, 60.007149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778736, 38.545162, 59.880135>,  <30.490877, 38.724953, 59.668446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778736, 38.545162, 59.880135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307167, -0.477468, -0.823209,
		0.622698, 0.754982, -0.205546,
		0.719650, -0.449474, 0.529224,
		30.994631, 38.410320, 60.038902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066298, 38.984364, 59.378407>,  <30.490877, 38.724953, 59.668446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066298, 38.984364, 59.378407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149668, 38.639072, 59.562317>,  <31.199690, 38.431896, 59.672665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149668, 38.639072, 59.562317>,  <31.066298, 38.984364, 59.378407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149668, 38.639072, 59.562317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166433, -0.431944, -0.886411,
		0.963773, 0.261274, 0.053641,
		0.208427, -0.863227, 0.459780,
		31.212196, 38.380104, 59.700253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263712, 38.624748, 58.795292>,  <31.066298, 38.984364, 59.378407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263712, 38.624748, 58.795292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267323, 38.330132, 59.065823>,  <31.269489, 38.153362, 59.228142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267323, 38.330132, 59.065823>,  <31.263712, 38.624748, 58.795292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267323, 38.330132, 59.065823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336937, -0.634563, -0.695560,
		0.941484, 0.234158, 0.242442,
		0.009026, -0.736546, 0.676327,
		31.270031, 38.109169, 59.268723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976065, 38.537411, 58.828918>,  <31.263712, 38.624748, 58.795292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976065, 38.537411, 58.828918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751034, 38.222668, 58.930401>,  <31.616016, 38.033821, 58.991291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751034, 38.222668, 58.930401>,  <31.976065, 38.537411, 58.828918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751034, 38.222668, 58.930401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497529, -0.567304, -0.656225,
		0.660283, -0.242949, 0.710635,
		-0.562576, -0.786855, 0.253707,
		31.582260, 37.986610, 59.006512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478035, 37.996277, 58.824348>,  <31.976065, 38.537411, 58.828918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478035, 37.996277, 58.824348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121937, 37.818024, 58.786648>,  <31.908279, 37.711071, 58.764027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121937, 37.818024, 58.786648>,  <32.478035, 37.996277, 58.824348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121937, 37.818024, 58.786648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351893, -0.541488, -0.763520,
		0.289209, -0.712884, 0.638869,
		-0.890241, -0.445630, -0.094255,
		31.854864, 37.684334, 58.758369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596069, 37.244850, 58.891758>,  <32.478035, 37.996277, 58.824348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596069, 37.244850, 58.891758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263851, 37.312977, 58.679646>,  <32.064522, 37.353851, 58.552380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263851, 37.312977, 58.679646>,  <32.596069, 37.244850, 58.891758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263851, 37.312977, 58.679646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310010, -0.649605, -0.694195,
		-0.462703, -0.740949, 0.486724,
		-0.830542, 0.170317, -0.530276,
		32.014690, 37.364071, 58.520561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477520, 36.645599, 58.636749>,  <32.596069, 37.244850, 58.891758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477520, 36.645599, 58.636749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264797, 36.889313, 58.401478>,  <32.137165, 37.035542, 58.260315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264797, 36.889313, 58.401478>,  <32.477520, 36.645599, 58.636749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264797, 36.889313, 58.401478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289718, -0.521734, -0.802407,
		-0.795770, -0.597128, 0.100938,
		-0.531803, 0.609288, -0.588179,
		32.105255, 37.072098, 58.225025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961243, 36.236893, 58.191158>,  <32.477520, 36.645599, 58.636749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961243, 36.236893, 58.191158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043198, 36.585545, 58.013042>,  <32.092369, 36.794735, 57.906174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043198, 36.585545, 58.013042>,  <31.961243, 36.236893, 58.191158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043198, 36.585545, 58.013042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046604, -0.463115, -0.885072,
		-0.977675, 0.160589, -0.135509,
		0.204889, 0.871628, -0.445291,
		32.104664, 36.847034, 57.879456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636732, 36.142750, 57.638451>,  <31.961243, 36.236893, 58.191158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636732, 36.142750, 57.638451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892868, 36.440697, 57.563477>,  <32.046551, 36.619465, 57.518494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892868, 36.440697, 57.563477>,  <31.636732, 36.142750, 57.638451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892868, 36.440697, 57.563477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291379, -0.461358, -0.838002,
		-0.710678, 0.481991, -0.512466,
		0.640340, 0.744871, -0.187435,
		32.084969, 36.664158, 57.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507420, 36.322468, 56.887127>,  <31.636732, 36.142750, 57.638451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507420, 36.322468, 56.887127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877153, 36.450077, 56.970867>,  <32.098995, 36.526642, 57.021111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877153, 36.450077, 56.970867>,  <31.507420, 36.322468, 56.887127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877153, 36.450077, 56.970867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338502, -0.432314, -0.835775,
		-0.176127, 0.843403, -0.507594,
		0.924335, 0.319024, 0.209352,
		32.154453, 36.545784, 57.033672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.166676, 33.497742, 51.899719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.339668, 33.856384, 51.937805>,  <47.443462, 34.071568, 51.960659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.339668, 33.856384, 51.937805>,  <47.166676, 33.497742, 51.899719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339668, 33.856384, 51.937805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899483, 0.421723, 0.114365,
		0.062385, -0.135107, 0.988865,
		0.432479, 0.896602, 0.095218,
		47.469414, 34.125366, 51.966370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847134, 33.772427, 52.408398>,  <47.166676, 33.497742, 51.899719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847134, 33.772427, 52.408398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.007347, 34.075233, 52.201908>,  <47.103474, 34.256920, 52.078014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.007347, 34.075233, 52.201908>,  <46.847134, 33.772427, 52.408398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007347, 34.075233, 52.201908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863957, 0.499682, 0.062425,
		0.305206, 0.420995, 0.854174,
		0.400534, 0.757022, -0.516227,
		47.127506, 34.302341, 52.047039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760437, 34.433025, 52.846001>,  <46.847134, 33.772427, 52.408398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760437, 34.433025, 52.846001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.796993, 34.540512, 52.462452>,  <46.818928, 34.605003, 52.232323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.796993, 34.540512, 52.462452>,  <46.760437, 34.433025, 52.846001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796993, 34.540512, 52.462452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926597, 0.375674, 0.016967,
		0.364783, 0.886938, 0.283328,
		0.091390, 0.268720, -0.958873,
		46.824409, 34.621128, 52.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348637, 34.954201, 52.776897>,  <46.760437, 34.433025, 52.846001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348637, 34.954201, 52.776897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.383125, 34.844631, 52.393745>,  <46.403816, 34.778889, 52.163857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.383125, 34.844631, 52.393745>,  <46.348637, 34.954201, 52.776897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383125, 34.844631, 52.393745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933584, 0.313462, -0.173673,
		0.347832, 0.909234, -0.228707,
		0.086218, -0.273926, -0.957878,
		46.408989, 34.762455, 52.106380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941563, 35.436363, 52.496151>,  <46.348637, 34.954201, 52.776897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941563, 35.436363, 52.496151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.984291, 35.173763, 52.197464>,  <46.009930, 35.016201, 52.018250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.984291, 35.173763, 52.197464>,  <45.941563, 35.436363, 52.496151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984291, 35.173763, 52.197464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941295, 0.175114, -0.288616,
		0.320239, 0.733716, -0.599256,
		0.106824, -0.656503, -0.746721,
		46.016338, 34.976814, 51.973446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886848, 35.786880, 51.889290>,  <45.941563, 35.436363, 52.496151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886848, 35.786880, 51.889290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.803265, 35.404568, 51.806522>,  <45.753117, 35.175179, 51.756863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.803265, 35.404568, 51.806522>,  <45.886848, 35.786880, 51.889290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803265, 35.404568, 51.806522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944946, 0.251823, -0.208956,
		0.251823, 0.151865, -0.955783,
		0.208956, 0.955783, 0.206919,
		45.740578, 35.117832, 51.744446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506226, 35.815620, 51.234161>,  <45.886848, 35.786880, 51.889290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506226, 35.815620, 51.234161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.374252, 35.474106, 51.395252>,  <45.295071, 35.269196, 51.491909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.374252, 35.474106, 51.395252>,  <45.506226, 35.815620, 51.234161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374252, 35.474106, 51.395252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912956, 0.180070, -0.366177,
		0.240118, -0.488489, -0.838881,
		-0.329931, -0.853787, 0.402731,
		45.275272, 35.217968, 51.516071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118877, 35.533051, 50.683277>,  <45.506226, 35.815620, 51.234161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118877, 35.533051, 50.683277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.999161, 35.319050, 50.999302>,  <44.927330, 35.190647, 51.188915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.999161, 35.319050, 50.999302>,  <45.118877, 35.533051, 50.683277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999161, 35.319050, 50.999302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947634, 0.069986, -0.311595,
		0.111412, -0.841944, -0.527937,
		-0.299294, -0.535006, 0.790058,
		44.909374, 35.158550, 51.236320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625828, 35.146160, 50.395214>,  <45.118877, 35.533051, 50.683277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625828, 35.146160, 50.395214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.544872, 35.110516, 50.785313>,  <44.496300, 35.089127, 51.019371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.544872, 35.110516, 50.785313>,  <44.625828, 35.146160, 50.395214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544872, 35.110516, 50.785313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975872, 0.101666, -0.193232,
		-0.081929, -0.990819, -0.107541,
		-0.202391, -0.089115, 0.975242,
		44.484154, 35.083782, 51.077885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138672, 34.575481, 50.521980>,  <44.625828, 35.146160, 50.395214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138672, 34.575481, 50.521980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103065, 34.835289, 50.824024>,  <44.081699, 34.991173, 51.005253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103065, 34.835289, 50.824024>,  <44.138672, 34.575481, 50.521980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103065, 34.835289, 50.824024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994793, -0.020206, -0.099894,
		-0.049626, -0.760072, 0.647942,
		-0.089019, 0.649525, 0.755111,
		44.076359, 35.030148, 51.050560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669674, 34.300713, 50.934902>,  <44.138672, 34.575481, 50.521980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669674, 34.300713, 50.934902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675823, 34.682327, 51.054623>,  <43.679512, 34.911297, 51.126453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675823, 34.682327, 51.054623>,  <43.669674, 34.300713, 50.934902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675823, 34.682327, 51.054623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999867, 0.016298, -0.000588,
		-0.005439, -0.299251, 0.954159,
		0.015375, 0.954035, 0.299300,
		43.680435, 34.968536, 51.144413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256096, 34.415604, 51.503460>,  <43.669674, 34.300713, 50.934902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256096, 34.415604, 51.503460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267109, 34.781834, 51.342979>,  <43.273716, 35.001572, 51.246693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267109, 34.781834, 51.342979>,  <43.256096, 34.415604, 51.503460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267109, 34.781834, 51.342979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999265, 0.035926, 0.013403,
		0.026685, 0.400533, 0.915893,
		0.027536, 0.915578, -0.401197,
		43.275372, 35.056507, 51.222622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581341, 34.647350, 51.533482>,  <43.256096, 34.415604, 51.503460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581341, 34.647350, 51.533482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.704716, 34.950550, 51.303593>,  <42.778740, 35.132469, 51.165657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.704716, 34.950550, 51.303593>,  <42.581341, 34.647350, 51.533482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704716, 34.950550, 51.303593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943070, 0.164631, -0.288989,
		-0.124434, 0.631141, 0.765622,
		0.308438, 0.757996, -0.574725,
		42.797249, 35.177948, 51.131176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242920, 35.183540, 51.728542>,  <42.581341, 34.647350, 51.533482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242920, 35.183540, 51.728542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349648, 35.280514, 51.355438>,  <42.413685, 35.338696, 51.131577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349648, 35.280514, 51.355438>,  <42.242920, 35.183540, 51.728542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349648, 35.280514, 51.355438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960889, 0.141387, -0.238122,
		0.074151, 0.959811, 0.270674,
		0.266822, 0.242431, -0.932756,
		42.429695, 35.353245, 51.075611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868576, 35.861076, 51.487007>,  <42.242920, 35.183540, 51.728542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868576, 35.861076, 51.487007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.982944, 35.661015, 51.160057>,  <42.051563, 35.540977, 50.963886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.982944, 35.661015, 51.160057>,  <41.868576, 35.861076, 51.487007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982944, 35.661015, 51.160057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871950, 0.217982, -0.438391,
		0.397435, 0.838053, -0.373782,
		0.285917, -0.500151, -0.817374,
		42.068718, 35.510971, 50.914845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746162, 36.255951, 50.954445>,  <41.868576, 35.861076, 51.487007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746162, 36.255951, 50.954445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.772285, 35.896404, 50.781113>,  <41.787960, 35.680676, 50.677113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.772285, 35.896404, 50.781113>,  <41.746162, 36.255951, 50.954445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772285, 35.896404, 50.781113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686537, 0.274668, -0.673219,
		0.724157, 0.341458, -0.599169,
		0.065303, -0.898868, -0.433326,
		41.791878, 35.626743, 50.651115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689693, 36.375095, 50.123203>,  <41.746162, 36.255951, 50.954445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689693, 36.375095, 50.123203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627262, 35.990589, 50.214077>,  <41.589802, 35.759888, 50.268600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627262, 35.990589, 50.214077>,  <41.689693, 36.375095, 50.123203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627262, 35.990589, 50.214077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722181, -0.045857, -0.690182,
		0.673864, -0.271794, -0.687048,
		-0.156081, -0.961262, 0.227186,
		41.580437, 35.702209, 50.282234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813705, 35.952908, 49.592983>,  <41.689693, 36.375095, 50.123203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813705, 35.952908, 49.592983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566887, 35.702099, 49.783184>,  <41.418797, 35.551613, 49.897305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566887, 35.702099, 49.783184>,  <41.813705, 35.952908, 49.592983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566887, 35.702099, 49.783184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523772, -0.123714, -0.842827,
		0.587296, -0.769116, -0.252079,
		-0.617046, -0.627020, 0.475498,
		41.381771, 35.513992, 49.925835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579037, 35.543835, 49.044216>,  <41.813705, 35.952908, 49.592983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579037, 35.543835, 49.044216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321144, 35.454800, 49.336727>,  <41.166409, 35.401379, 49.512234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321144, 35.454800, 49.336727>,  <41.579037, 35.543835, 49.044216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321144, 35.454800, 49.336727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709797, -0.180768, -0.680816,
		0.283732, -0.958007, -0.041443,
		-0.644735, -0.222586, 0.731281,
		41.127724, 35.388023, 49.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334290, 34.945210, 48.900597>,  <41.579037, 35.543835, 49.044216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334290, 34.945210, 48.900597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.069111, 35.111782, 49.149460>,  <40.910004, 35.211727, 49.298779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.069111, 35.111782, 49.149460>,  <41.334290, 34.945210, 48.900597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069111, 35.111782, 49.149460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748072, -0.335472, -0.572579,
		-0.029725, -0.845010, 0.533924,
		-0.662951, 0.416434, 0.622156,
		40.870224, 35.236713, 49.336105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755070, 34.540749, 48.879593>,  <41.334290, 34.945210, 48.900597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755070, 34.540749, 48.879593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605434, 34.894058, 48.992641>,  <40.515652, 35.106045, 49.060471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605434, 34.894058, 48.992641>,  <40.755070, 34.540749, 48.879593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605434, 34.894058, 48.992641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654869, -0.035811, -0.754894,
		-0.656659, -0.467482, 0.591827,
		-0.374093, 0.883277, 0.282624,
		40.493206, 35.159042, 49.077427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005867, 34.607895, 48.845394>,  <40.755070, 34.540749, 48.879593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005867, 34.607895, 48.845394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131821, 34.982952, 48.786495>,  <40.207394, 35.207985, 48.751156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131821, 34.982952, 48.786495>,  <40.005867, 34.607895, 48.845394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131821, 34.982952, 48.786495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637296, 0.093903, -0.764877,
		-0.703351, 0.334688, 0.627122,
		0.314883, 0.937639, -0.147248,
		40.226284, 35.264244, 48.742321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433704, 35.107719, 48.884232>,  <40.005867, 34.607895, 48.845394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433704, 35.107719, 48.884232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719467, 35.303341, 48.684055>,  <39.890926, 35.420715, 48.563950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719467, 35.303341, 48.684055>,  <39.433704, 35.107719, 48.884232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719467, 35.303341, 48.684055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565924, -0.016777, -0.824287,
		-0.411518, 0.872092, 0.264782,
		0.714411, 0.489055, -0.500442,
		39.933792, 35.450058, 48.533924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999210, 35.472584, 48.468136>,  <39.433704, 35.107719, 48.884232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999210, 35.472584, 48.468136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365162, 35.428143, 48.312878>,  <39.584732, 35.401478, 48.219723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365162, 35.428143, 48.312878>,  <38.999210, 35.472584, 48.468136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365162, 35.428143, 48.312878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402562, -0.324270, -0.856033,
		-0.030758, 0.939417, -0.341393,
		0.914876, -0.111102, -0.388147,
		39.639626, 35.394814, 48.196434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227951, 35.133183, 48.279068>,  <38.999210, 35.472584, 48.468136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227951, 35.133183, 48.279068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973923, 35.386208, 48.101734>,  <37.821507, 35.538025, 47.995335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973923, 35.386208, 48.101734>,  <38.227951, 35.133183, 48.279068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973923, 35.386208, 48.101734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462159, -0.771028, -0.438092,
		-0.618942, -0.073332, 0.782006,
		-0.635074, 0.632565, -0.443331,
		37.783401, 35.575977, 47.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482918, 34.862827, 48.108734>,  <38.227951, 35.133183, 48.279068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482918, 34.862827, 48.108734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582104, 34.486423, 48.016632>,  <37.641617, 34.260582, 47.961372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582104, 34.486423, 48.016632>,  <37.482918, 34.862827, 48.108734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582104, 34.486423, 48.016632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835039, -0.087115, -0.543250,
		0.491143, 0.326982, -0.807379,
		0.247968, -0.941007, -0.230256,
		37.656494, 34.204121, 47.947556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375546, 34.836250, 47.345947>,  <37.482918, 34.862827, 48.108734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375546, 34.836250, 47.345947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367859, 34.459194, 47.479252>,  <37.363247, 34.232960, 47.559235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367859, 34.459194, 47.479252>,  <37.375546, 34.836250, 47.345947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367859, 34.459194, 47.479252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875562, -0.145067, -0.460812,
		0.482724, -0.300651, -0.822549,
		-0.019219, -0.942637, 0.333265,
		37.362095, 34.176403, 47.579231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102997, 34.471691, 46.798203>,  <37.375546, 34.836250, 47.345947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102997, 34.471691, 46.798203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052025, 34.241379, 47.121246>,  <37.021442, 34.103191, 47.315071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052025, 34.241379, 47.121246>,  <37.102997, 34.471691, 46.798203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052025, 34.241379, 47.121246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862215, -0.338161, -0.377138,
		0.490252, -0.744392, -0.453358,
		-0.127431, -0.575784, 0.807610,
		37.013794, 34.068642, 47.363529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796810, 33.821007, 46.573982>,  <37.102997, 34.471691, 46.798203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796810, 33.821007, 46.573982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713200, 33.875633, 46.961311>,  <36.663033, 33.908409, 47.193710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713200, 33.875633, 46.961311>,  <36.796810, 33.821007, 46.573982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713200, 33.875633, 46.961311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954201, -0.245203, -0.171393,
		0.214029, -0.959804, 0.181569,
		-0.209025, 0.136570, 0.968327,
		36.650494, 33.916603, 47.251808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390659, 33.302052, 46.620678>,  <36.796810, 33.821007, 46.573982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390659, 33.302052, 46.620678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309669, 33.550625, 46.923420>,  <36.261074, 33.699768, 47.105064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309669, 33.550625, 46.923420>,  <36.390659, 33.302052, 46.620678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309669, 33.550625, 46.923420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978486, -0.097135, -0.182017,
		-0.039594, -0.777426, 0.627727,
		-0.202479, 0.621429, 0.756854,
		36.248924, 33.737053, 47.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969044, 33.016979, 47.060574>,  <36.390659, 33.302052, 46.620678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969044, 33.016979, 47.060574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905758, 33.397930, 47.164837>,  <35.867786, 33.626503, 47.227394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905758, 33.397930, 47.164837>,  <35.969044, 33.016979, 47.060574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905758, 33.397930, 47.164837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986289, -0.164975, 0.004135,
		0.046940, -0.256428, 0.965423,
		-0.158210, 0.952380, 0.260656,
		35.858295, 33.683643, 47.243034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431103, 33.003471, 47.464779>,  <35.969044, 33.016979, 47.060574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431103, 33.003471, 47.464779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420681, 33.392746, 47.373363>,  <35.414429, 33.626312, 47.318516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420681, 33.392746, 47.373363>,  <35.431103, 33.003471, 47.464779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420681, 33.392746, 47.373363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992870, 0.001409, 0.119196,
		0.116322, 0.230013, 0.966211,
		-0.026056, 0.973186, -0.228537,
		35.412865, 33.684704, 47.304802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970249, 33.329857, 47.946499>,  <35.431103, 33.003471, 47.464779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970249, 33.329857, 47.946499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001110, 33.587471, 47.642059>,  <35.019627, 33.742039, 47.459396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001110, 33.587471, 47.642059>,  <34.970249, 33.329857, 47.946499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001110, 33.587471, 47.642059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984672, -0.070549, -0.159509,
		-0.156424, 0.761739, 0.628717,
		0.077149, 0.644032, -0.761099,
		35.024254, 33.780682, 47.413731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472927, 33.761795, 48.107731>,  <34.970249, 33.329857, 47.946499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472927, 33.761795, 48.107731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529743, 33.831364, 47.717945>,  <34.563831, 33.873104, 47.484074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529743, 33.831364, 47.717945>,  <34.472927, 33.761795, 48.107731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529743, 33.831364, 47.717945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989411, -0.004741, -0.145063,
		-0.029849, 0.984748, 0.171406,
		0.142037, 0.173921, -0.974462,
		34.572353, 33.883541, 47.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976242, 34.280819, 47.933811>,  <34.472927, 33.761795, 48.107731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976242, 34.280819, 47.933811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090183, 34.091175, 47.600567>,  <34.158546, 33.977386, 47.400620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090183, 34.091175, 47.600567>,  <33.976242, 34.280819, 47.933811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090183, 34.091175, 47.600567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957444, -0.182881, -0.223284,
		-0.046498, 0.861261, -0.506030,
		0.284849, -0.474113, -0.833113,
		34.175636, 33.948940, 47.350632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.959806, 34.112377, 52.899445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251726, 34.362625, 52.789173>,  <30.426878, 34.512772, 52.723011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251726, 34.362625, 52.789173>,  <29.959806, 34.112377, 52.899445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251726, 34.362625, 52.789173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129362, -0.269584, -0.954248,
		-0.671311, 0.732072, -0.115811,
		0.729799, 0.625616, -0.275677,
		30.470665, 34.550308, 52.706470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761101, 34.322540, 52.268456>,  <29.959806, 34.112377, 52.899445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761101, 34.322540, 52.268456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149920, 34.412045, 52.296902>,  <30.383211, 34.465748, 52.313969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149920, 34.412045, 52.296902>,  <29.761101, 34.322540, 52.268456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149920, 34.412045, 52.296902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131702, -0.268895, -0.954123,
		-0.194374, 0.936817, -0.290848,
		0.972046, 0.223762, 0.071115,
		30.441534, 34.479172, 52.318237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898508, 34.729927, 51.606651>,  <29.761101, 34.322540, 52.268456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898508, 34.729927, 51.606651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248512, 34.582043, 51.731663>,  <30.458515, 34.493313, 51.806671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248512, 34.582043, 51.731663>,  <29.898508, 34.729927, 51.606651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248512, 34.582043, 51.731663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177385, -0.355825, -0.917564,
		0.450435, 0.858315, -0.245770,
		0.875010, -0.369707, 0.312528,
		30.511015, 34.471130, 51.825420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409170, 34.803596, 50.964985>,  <29.898508, 34.729927, 51.606651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409170, 34.803596, 50.964985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576328, 34.563057, 51.237381>,  <30.676624, 34.418736, 51.400818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576328, 34.563057, 51.237381>,  <30.409170, 34.803596, 50.964985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576328, 34.563057, 51.237381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335661, -0.594340, -0.730816,
		0.844212, 0.533987, -0.046525,
		0.417897, -0.601347, 0.680988,
		30.701698, 34.382652, 51.441677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172590, 34.801300, 50.801155>,  <30.409170, 34.803596, 50.964985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172590, 34.801300, 50.801155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.056631, 34.470692, 50.994164>,  <30.987055, 34.272327, 51.109970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.056631, 34.470692, 50.994164>,  <31.172590, 34.801300, 50.801155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056631, 34.470692, 50.994164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151448, -0.537436, -0.829594,
		0.944999, -0.167421, 0.280977,
		-0.289898, -0.826519, 0.482520,
		30.969662, 34.222736, 51.138920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728712, 34.248734, 50.605572>,  <31.172590, 34.801300, 50.801155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728712, 34.248734, 50.605572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415054, 34.043388, 50.745045>,  <31.226860, 33.920181, 50.828728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415054, 34.043388, 50.745045>,  <31.728712, 34.248734, 50.605572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415054, 34.043388, 50.745045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197851, -0.739351, -0.643596,
		0.588192, -0.435687, 0.681328,
		-0.784146, -0.513359, 0.348679,
		31.179810, 33.889381, 50.849648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950073, 33.648575, 50.874195>,  <31.728712, 34.248734, 50.605572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950073, 33.648575, 50.874195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571493, 33.610561, 50.750778>,  <31.344345, 33.587753, 50.676727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571493, 33.610561, 50.750778>,  <31.950073, 33.648575, 50.874195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571493, 33.610561, 50.750778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283390, -0.702379, -0.652958,
		-0.154664, -0.705431, 0.691698,
		-0.946451, -0.095031, -0.308545,
		31.287558, 33.582050, 50.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843367, 32.962563, 50.833080>,  <31.950073, 33.648575, 50.874195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843367, 32.962563, 50.833080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.560843, 33.135639, 50.608971>,  <31.391329, 33.239487, 50.474506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.560843, 33.135639, 50.608971>,  <31.843367, 32.962563, 50.833080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560843, 33.135639, 50.608971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272658, -0.564105, -0.779386,
		-0.653288, -0.703250, 0.280454,
		-0.706309, 0.432696, -0.560270,
		31.348949, 33.265450, 50.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779173, 32.480541, 50.472633>,  <31.843367, 32.962563, 50.833080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779173, 32.480541, 50.472633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594997, 32.777721, 50.278305>,  <31.484493, 32.956032, 50.161709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594997, 32.777721, 50.278305>,  <31.779173, 32.480541, 50.472633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594997, 32.777721, 50.278305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295923, -0.387511, -0.873078,
		-0.836916, -0.545761, -0.041433,
		-0.460436, 0.742954, -0.485817,
		31.456867, 33.000607, 50.132561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575193, 32.210339, 49.752647>,  <31.779173, 32.480541, 50.472633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575193, 32.210339, 49.752647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545017, 32.607510, 49.715958>,  <31.526913, 32.845810, 49.693943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545017, 32.607510, 49.715958>,  <31.575193, 32.210339, 49.752647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545017, 32.607510, 49.715958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498666, -0.042091, -0.865771,
		-0.863505, -0.111052, -0.491962,
		-0.075438, 0.992923, -0.091724,
		31.522387, 32.905388, 49.688442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353403, 32.365440, 49.072372>,  <31.575193, 32.210339, 49.752647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353403, 32.365440, 49.072372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554632, 32.666855, 49.241653>,  <31.675369, 32.847702, 49.343220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554632, 32.666855, 49.241653>,  <31.353403, 32.365440, 49.072372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554632, 32.666855, 49.241653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685027, -0.049119, -0.726860,
		-0.526929, 0.655567, -0.540904,
		0.503074, 0.753538, 0.423199,
		31.705555, 32.892918, 49.368614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451944, 32.798771, 48.539059>,  <31.353403, 32.365440, 49.072372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451944, 32.798771, 48.539059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733683, 32.929741, 48.790993>,  <31.902725, 33.008324, 48.942154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733683, 32.929741, 48.790993>,  <31.451944, 32.798771, 48.539059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733683, 32.929741, 48.790993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661759, 0.018181, -0.749496,
		-0.256857, 0.944701, -0.203872,
		0.704343, 0.327428, 0.629834,
		31.944986, 33.027969, 48.979942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816841, 33.303173, 48.165871>,  <31.451944, 32.798771, 48.539059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816841, 33.303173, 48.165871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056252, 33.122288, 48.430374>,  <32.199898, 33.013756, 48.589077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056252, 33.122288, 48.430374>,  <31.816841, 33.303173, 48.165871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056252, 33.122288, 48.430374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734207, -0.020568, -0.678614,
		0.320481, 0.891671, 0.319710,
		0.598524, -0.452216, 0.661263,
		32.235809, 32.986622, 48.628754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602303, 33.992229, 48.180389>,  <31.816841, 33.303173, 48.165871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602303, 33.992229, 48.180389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660112, 34.226986, 47.861725>,  <31.694798, 34.367840, 47.670525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660112, 34.226986, 47.861725>,  <31.602303, 33.992229, 48.180389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660112, 34.226986, 47.861725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314694, 0.790577, 0.525315,
		0.938126, 0.174785, 0.298948,
		0.144525, 0.586889, -0.796665,
		31.703470, 34.403053, 47.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894516, 34.630856, 48.432247>,  <31.602303, 33.992229, 48.180389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894516, 34.630856, 48.432247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754244, 34.729958, 48.070995>,  <31.670080, 34.789421, 47.854244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754244, 34.729958, 48.070995>,  <31.894516, 34.630856, 48.432247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754244, 34.729958, 48.070995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385913, 0.840451, 0.380411,
		0.853285, 0.481931, -0.199116,
		-0.350679, 0.247757, -0.903128,
		31.649040, 34.804283, 47.800056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107040, 35.410225, 48.316933>,  <31.894516, 34.630856, 48.432247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107040, 35.410225, 48.316933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.799038, 35.334351, 48.073257>,  <31.614237, 35.288826, 47.927052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.799038, 35.334351, 48.073257>,  <32.107040, 35.410225, 48.316933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799038, 35.334351, 48.073257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503501, 0.767094, 0.397560,
		0.391892, 0.612850, -0.686175,
		-0.770005, -0.189689, -0.609188,
		31.568037, 35.277443, 47.890503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903095, 36.035770, 47.888832>,  <32.107040, 35.410225, 48.316933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903095, 36.035770, 47.888832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566757, 35.819378, 47.895935>,  <31.364954, 35.689541, 47.900196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566757, 35.819378, 47.895935>,  <31.903095, 36.035770, 47.888832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566757, 35.819378, 47.895935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503033, 0.793124, 0.343382,
		-0.199845, 0.279801, -0.939028,
		-0.840845, -0.540985, 0.017753,
		31.314505, 35.657082, 47.901260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505587, 36.474312, 47.649986>,  <31.903095, 36.035770, 47.888832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505587, 36.474312, 47.649986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256756, 36.204941, 47.809746>,  <31.107458, 36.043320, 47.905602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256756, 36.204941, 47.809746>,  <31.505587, 36.474312, 47.649986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256756, 36.204941, 47.809746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596335, 0.738074, 0.315646,
		-0.507350, -0.041820, -0.860725,
		-0.622078, -0.673423, 0.399401,
		31.070133, 36.002914, 47.929565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840076, 36.734585, 47.393017>,  <31.505587, 36.474312, 47.649986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840076, 36.734585, 47.393017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769932, 36.495598, 47.706013>,  <30.727846, 36.352207, 47.893810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769932, 36.495598, 47.706013>,  <30.840076, 36.734585, 47.393017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769932, 36.495598, 47.706013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561014, 0.713774, 0.419274,
		-0.809019, -0.365462, -0.460354,
		-0.175360, -0.597465, 0.782486,
		30.717323, 36.316357, 47.940758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110088, 36.744976, 47.451855>,  <30.840076, 36.734585, 47.393017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110088, 36.744976, 47.451855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.247980, 36.632164, 47.809986>,  <30.330715, 36.564476, 48.024864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.247980, 36.632164, 47.809986>,  <30.110088, 36.744976, 47.451855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247980, 36.632164, 47.809986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571653, 0.693464, 0.438543,
		-0.744563, -0.662999, 0.077835,
		0.344730, -0.282028, 0.895333,
		30.351398, 36.547554, 48.078587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496323, 36.596527, 47.918858>,  <30.110088, 36.744976, 47.451855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496323, 36.596527, 47.918858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807858, 36.635368, 48.166721>,  <29.994780, 36.658672, 48.315441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807858, 36.635368, 48.166721>,  <29.496323, 36.596527, 47.918858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807858, 36.635368, 48.166721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535963, 0.616219, 0.577077,
		-0.325813, -0.781566, 0.531978,
		0.778839, 0.097102, 0.619662,
		30.041510, 36.664497, 48.352619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233711, 36.471500, 48.620457>,  <29.496323, 36.596527, 47.918858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233711, 36.471500, 48.620457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.565437, 36.688908, 48.672344>,  <29.764473, 36.819351, 48.703476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.565437, 36.688908, 48.672344>,  <29.233711, 36.471500, 48.620457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565437, 36.688908, 48.672344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457904, 0.527983, 0.715233,
		0.320249, -0.652554, 0.686741,
		0.829316, 0.543514, 0.129721,
		29.814232, 36.851963, 48.711262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278238, 36.564720, 49.318287>,  <29.233711, 36.471500, 48.620457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278238, 36.564720, 49.318287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.530382, 36.853645, 49.204510>,  <29.681669, 37.027000, 49.136242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.530382, 36.853645, 49.204510>,  <29.278238, 36.564720, 49.318287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530382, 36.853645, 49.204510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274534, 0.550151, 0.788648,
		0.726139, -0.419041, 0.545093,
		0.630359, 0.722314, -0.284445,
		29.719490, 37.070339, 49.119175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702852, 36.742489, 49.952480>,  <29.278238, 36.564720, 49.318287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702852, 36.742489, 49.952480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709795, 37.042519, 49.688030>,  <29.713961, 37.222538, 49.529362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709795, 37.042519, 49.688030>,  <29.702852, 36.742489, 49.952480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709795, 37.042519, 49.688030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206987, 0.649593, 0.731563,
		0.978190, 0.124146, 0.166530,
		0.017356, 0.750078, -0.661122,
		29.715002, 37.267544, 49.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147837, 37.155300, 50.224892>,  <29.702852, 36.742489, 49.952480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147837, 37.155300, 50.224892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933983, 37.392590, 49.984142>,  <29.805672, 37.534962, 49.839691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933983, 37.392590, 49.984142>,  <30.147837, 37.155300, 50.224892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933983, 37.392590, 49.984142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203422, 0.600929, 0.772984,
		0.820236, 0.535697, -0.200602,
		-0.534633, 0.593223, -0.601876,
		29.773594, 37.570557, 49.803581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489641, 37.789459, 50.314148>,  <30.147837, 37.155300, 50.224892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489641, 37.789459, 50.314148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.124990, 37.867706, 50.169556>,  <29.906200, 37.914654, 50.082802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.124990, 37.867706, 50.169556>,  <30.489641, 37.789459, 50.314148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124990, 37.867706, 50.169556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143768, 0.672163, 0.726311,
		0.385051, 0.714096, -0.584639,
		-0.911628, 0.195615, -0.361481,
		29.851501, 37.926392, 50.061111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412415, 38.474274, 50.347813>,  <30.489641, 37.789459, 50.314148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412415, 38.474274, 50.347813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026176, 38.395050, 50.280407>,  <29.794434, 38.347515, 50.239964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026176, 38.395050, 50.280407>,  <30.412415, 38.474274, 50.347813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026176, 38.395050, 50.280407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258362, 0.656939, 0.708294,
		-0.029584, 0.727463, -0.685509,
		-0.965595, -0.198064, -0.168514,
		29.736498, 38.335632, 50.229855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174967, 39.105766, 50.270912>,  <30.412415, 38.474274, 50.347813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174967, 39.105766, 50.270912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.871836, 38.880779, 50.403172>,  <29.689957, 38.745789, 50.482529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.871836, 38.880779, 50.403172>,  <30.174967, 39.105766, 50.270912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871836, 38.880779, 50.403172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210864, 0.690723, 0.691692,
		-0.617442, 0.454461, -0.642052,
		-0.757827, -0.562465, 0.330652,
		29.644487, 38.712040, 50.502369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226454, 39.604919, 49.779610>,  <30.174967, 39.105766, 50.270912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226454, 39.604919, 49.779610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.529402, 39.778088, 49.975147>,  <30.711170, 39.881989, 50.092468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.529402, 39.778088, 49.975147>,  <30.226454, 39.604919, 49.779610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529402, 39.778088, 49.975147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598175, -0.159763, -0.785279,
		-0.261867, 0.887160, -0.379964,
		0.757372, 0.432924, 0.488840,
		30.756613, 39.907963, 50.121799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469173, 40.217438, 49.368309>,  <30.226454, 39.604919, 49.779610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469173, 40.217438, 49.368309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761881, 40.101990, 49.615280>,  <30.937506, 40.032722, 49.763462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761881, 40.101990, 49.615280>,  <30.469173, 40.217438, 49.368309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761881, 40.101990, 49.615280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600995, -0.153991, -0.784278,
		0.321433, 0.944980, 0.060771,
		0.731769, -0.288616, 0.617426,
		30.981411, 40.015404, 49.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965530, 40.490631, 49.018852>,  <30.469173, 40.217438, 49.368309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965530, 40.490631, 49.018852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135160, 40.211613, 49.249878>,  <31.236938, 40.044201, 49.388493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135160, 40.211613, 49.249878>,  <30.965530, 40.490631, 49.018852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135160, 40.211613, 49.249878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745021, -0.093873, -0.660402,
		0.514881, 0.710361, 0.479880,
		0.424077, -0.697549, 0.577568,
		31.262383, 40.002350, 49.423149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683626, 40.727688, 49.151344>,  <30.965530, 40.490631, 49.018852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683626, 40.727688, 49.151344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677530, 40.338608, 49.243969>,  <31.673872, 40.105160, 49.299545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677530, 40.338608, 49.243969>,  <31.683626, 40.727688, 49.151344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677530, 40.338608, 49.243969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870616, -0.126803, -0.475340,
		0.491726, 0.194361, 0.848781,
		-0.015240, -0.972700, 0.231566,
		31.672958, 40.046799, 49.313438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375286, 40.565819, 49.468693>,  <31.683626, 40.727688, 49.151344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375286, 40.565819, 49.468693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204769, 40.240379, 49.310535>,  <32.102459, 40.045116, 49.215641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204769, 40.240379, 49.310535>,  <32.375286, 40.565819, 49.468693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204769, 40.240379, 49.310535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869179, -0.247307, -0.428216,
		0.250611, -0.526213, 0.812585,
		-0.426290, -0.813597, -0.395395,
		32.076881, 39.996300, 49.191917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922409, 40.045082, 49.307365>,  <32.375286, 40.565819, 49.468693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922409, 40.045082, 49.307365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621880, 39.880566, 49.100929>,  <32.441563, 39.781857, 48.977066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621880, 39.880566, 49.100929>,  <32.922409, 40.045082, 49.307365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621880, 39.880566, 49.100929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647696, -0.309678, -0.696124,
		0.126488, -0.857286, 0.499061,
		-0.751326, -0.411291, -0.516090,
		32.396481, 39.757179, 48.946102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168701, 39.344784, 49.094551>,  <32.922409, 40.045082, 49.307365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168701, 39.344784, 49.094551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853809, 39.394897, 48.853027>,  <32.664875, 39.424965, 48.708115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853809, 39.394897, 48.853027>,  <33.168701, 39.344784, 49.094551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853809, 39.394897, 48.853027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519427, -0.393033, -0.758762,
		-0.332375, -0.910950, 0.244330,
		-0.787224, 0.125282, -0.603806,
		32.617641, 39.432480, 48.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154900, 38.733875, 48.764858>,  <33.168701, 39.344784, 49.094551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154900, 38.733875, 48.764858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966717, 38.974838, 48.506935>,  <32.853806, 39.119415, 48.352180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966717, 38.974838, 48.506935>,  <33.154900, 38.733875, 48.764858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966717, 38.974838, 48.506935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536476, -0.384910, -0.751025,
		-0.700617, -0.699246, -0.142095,
		-0.470457, 0.602410, -0.644803,
		32.825581, 39.155560, 48.313496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931652, 38.250362, 48.174980>,  <33.154900, 38.733875, 48.764858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931652, 38.250362, 48.174980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945885, 38.623394, 48.031292>,  <32.954422, 38.847214, 47.945080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945885, 38.623394, 48.031292>,  <32.931652, 38.250362, 48.174980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945885, 38.623394, 48.031292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638535, -0.297721, -0.709673,
		-0.768770, -0.204124, -0.606074,
		0.035580, 0.932575, -0.359220,
		32.956558, 38.903168, 47.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725624, 38.234360, 47.492554>,  <32.931652, 38.250362, 48.174980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725624, 38.234360, 47.492554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952496, 38.561199, 47.533833>,  <33.088619, 38.757305, 47.558601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952496, 38.561199, 47.533833>,  <32.725624, 38.234360, 47.492554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952496, 38.561199, 47.533833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708398, -0.420091, -0.567182,
		-0.420091, 0.394803, -0.817101,
		0.567182, 0.817101, 0.103202,
		33.122650, 38.806328, 47.564793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051094, 38.368526, 46.795204>,  <32.725624, 38.234360, 47.492554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051094, 38.368526, 46.795204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283390, 38.590183, 47.033756>,  <33.422768, 38.723179, 47.176888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283390, 38.590183, 47.033756>,  <33.051094, 38.368526, 46.795204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283390, 38.590183, 47.033756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803352, -0.271487, -0.530019,
		-0.131797, 0.786905, -0.602834,
		0.580737, 0.554143, 0.596381,
		33.457611, 38.756428, 47.212669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522537, 38.649395, 46.349621>,  <33.051094, 38.368526, 46.795204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522537, 38.649395, 46.349621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689556, 38.684601, 46.711376>,  <33.789768, 38.705723, 46.928429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689556, 38.684601, 46.711376>,  <33.522537, 38.649395, 46.349621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689556, 38.684601, 46.711376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889469, -0.243048, -0.387005,
		0.185747, 0.966013, -0.179768,
		0.417544, 0.088013, 0.904384,
		33.814819, 38.711006, 46.982693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.644009, 42.137852, 55.564308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364077, 42.401531, 55.454254>,  <31.196117, 42.559738, 55.388222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364077, 42.401531, 55.454254>,  <31.644009, 42.137852, 55.564308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364077, 42.401531, 55.454254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095347, -0.295521, -0.950566,
		-0.707919, -0.691467, 0.143962,
		-0.699829, 0.659197, -0.275134,
		31.154127, 42.599289, 55.371716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216562, 41.756332, 55.284534>,  <31.644009, 42.137852, 55.564308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216562, 41.756332, 55.284534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146769, 42.120083, 55.133492>,  <31.104893, 42.338333, 55.042866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146769, 42.120083, 55.133492>,  <31.216562, 41.756332, 55.284534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146769, 42.120083, 55.133492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166794, -0.405241, -0.898866,
		-0.970430, -0.093858, 0.222387,
		-0.174486, 0.909379, -0.377603,
		31.094423, 42.392899, 55.020210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482038, 41.828232, 54.924702>,  <31.216562, 41.756332, 55.284534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482038, 41.828232, 54.924702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713066, 42.111671, 54.762566>,  <30.851683, 42.281734, 54.665283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713066, 42.111671, 54.762566>,  <30.482038, 41.828232, 54.924702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713066, 42.111671, 54.762566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259029, -0.311791, -0.914161,
		-0.774157, 0.632985, 0.003468,
		0.577569, 0.708602, -0.405336,
		30.886337, 42.324253, 54.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090073, 41.935730, 54.321510>,  <30.482038, 41.828232, 54.924702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090073, 41.935730, 54.321510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443768, 42.106075, 54.244820>,  <30.655985, 42.208282, 54.198803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443768, 42.106075, 54.244820>,  <30.090073, 41.935730, 54.321510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443768, 42.106075, 54.244820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105170, -0.218415, -0.970172,
		-0.455041, 0.878028, -0.148343,
		0.884238, 0.425867, -0.191730,
		30.709040, 42.233837, 54.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977640, 42.342083, 53.669109>,  <30.090073, 41.935730, 54.321510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977640, 42.342083, 53.669109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373184, 42.304089, 53.714951>,  <30.610510, 42.281292, 53.742455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373184, 42.304089, 53.714951>,  <29.977640, 42.342083, 53.669109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373184, 42.304089, 53.714951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089930, -0.232257, -0.968488,
		0.118607, 0.968006, -0.221128,
		0.988860, -0.094983, 0.114600,
		30.669842, 42.275593, 53.749332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235281, 42.658535, 53.115601>,  <29.977640, 42.342083, 53.669109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235281, 42.658535, 53.115601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504494, 42.405876, 53.269508>,  <30.666021, 42.254280, 53.361855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504494, 42.405876, 53.269508>,  <30.235281, 42.658535, 53.115601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504494, 42.405876, 53.269508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138349, -0.403531, -0.904446,
		0.726559, 0.661954, -0.184202,
		0.673032, -0.631649, 0.384769,
		30.706404, 42.216381, 53.384937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717981, 42.591843, 52.585823>,  <30.235281, 42.658535, 53.115601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717981, 42.591843, 52.585823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764061, 42.277542, 52.828915>,  <30.791710, 42.088963, 52.974770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764061, 42.277542, 52.828915>,  <30.717981, 42.591843, 52.585823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764061, 42.277542, 52.828915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201296, -0.580638, -0.788885,
		0.972732, 0.213213, 0.091278,
		0.115201, -0.785748, 0.607724,
		30.798622, 42.041817, 53.011230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209538, 42.255436, 52.215141>,  <30.717981, 42.591843, 52.585823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209538, 42.255436, 52.215141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054401, 41.974388, 52.453770>,  <30.961321, 41.805759, 52.596947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054401, 41.974388, 52.453770>,  <31.209538, 42.255436, 52.215141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054401, 41.974388, 52.453770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006079, -0.645271, -0.763930,
		0.921707, -0.299908, 0.245989,
		-0.387838, -0.702624, 0.596574,
		30.938049, 41.763599, 52.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567919, 41.688213, 52.104214>,  <31.209538, 42.255436, 52.215141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567919, 41.688213, 52.104214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243246, 41.520836, 52.267227>,  <31.048443, 41.420410, 52.365036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243246, 41.520836, 52.267227>,  <31.567919, 41.688213, 52.104214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243246, 41.520836, 52.267227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085996, -0.775711, -0.625201,
		0.577736, -0.472418, 0.665614,
		-0.811681, -0.418442, 0.407530,
		30.999743, 41.395302, 52.389484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651283, 40.968601, 52.225067>,  <31.567919, 41.688213, 52.104214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651283, 40.968601, 52.225067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252035, 40.986145, 52.242199>,  <31.012487, 40.996670, 52.252480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252035, 40.986145, 52.242199>,  <31.651283, 40.968601, 52.225067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252035, 40.986145, 52.242199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061215, -0.750140, -0.658439,
		0.003248, -0.659823, 0.751414,
		-0.998119, 0.043859, 0.042828,
		30.952599, 40.999302, 52.255047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445442, 40.254921, 52.196033>,  <31.651283, 40.968601, 52.225067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445442, 40.254921, 52.196033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114136, 40.448761, 52.083508>,  <30.915352, 40.565067, 52.015991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114136, 40.448761, 52.083508>,  <31.445442, 40.254921, 52.196033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114136, 40.448761, 52.083508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015835, -0.522080, -0.852749,
		-0.560115, -0.701847, 0.440093,
		-0.828264, 0.484607, -0.281312,
		30.865656, 40.594143, 51.999115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098595, 39.813721, 51.928005>,  <31.445442, 40.254921, 52.196033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098595, 39.813721, 51.928005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910654, 40.129803, 51.770618>,  <30.797890, 40.319450, 51.676186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910654, 40.129803, 51.770618>,  <31.098595, 39.813721, 51.928005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910654, 40.129803, 51.770618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112032, -0.388746, -0.914508,
		-0.875608, -0.473763, 0.094125,
		-0.469851, 0.790205, -0.393466,
		30.769699, 40.366863, 51.652580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421429, 39.626820, 51.685524>,  <31.098595, 39.813721, 51.928005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421429, 39.626820, 51.685524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567451, 39.927608, 51.465969>,  <30.655066, 40.108082, 51.334236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567451, 39.927608, 51.465969>,  <30.421429, 39.626820, 51.685524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567451, 39.927608, 51.465969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160704, -0.529824, -0.832743,
		-0.917011, 0.392205, -0.072570,
		0.365055, 0.751972, -0.548883,
		30.676968, 40.153202, 51.301304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011778, 39.578808, 51.014301>,  <30.421429, 39.626820, 51.685524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011778, 39.578808, 51.014301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332312, 39.808514, 50.947266>,  <30.524632, 39.946339, 50.907043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332312, 39.808514, 50.947266>,  <30.011778, 39.578808, 51.014301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332312, 39.808514, 50.947266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070049, -0.368301, -0.927064,
		-0.594104, 0.731146, -0.335358,
		0.801332, 0.574264, -0.167594,
		30.572712, 39.980793, 50.896988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635620, 39.681374, 50.334972>,  <30.011778, 39.578808, 51.014301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635620, 39.681374, 50.334972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499725, 39.352047, 50.516846>,  <29.418188, 39.154453, 50.625969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499725, 39.352047, 50.516846>,  <29.635620, 39.681374, 50.334972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499725, 39.352047, 50.516846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427227, 0.565771, 0.705252,
		-0.837889, 0.045347, -0.543954,
		-0.339735, -0.823315, 0.454679,
		29.397804, 39.105053, 50.653248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920464, 39.723442, 50.470474>,  <29.635620, 39.681374, 50.334972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920464, 39.723442, 50.470474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029686, 39.448021, 50.739201>,  <29.095219, 39.282768, 50.900436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029686, 39.448021, 50.739201>,  <28.920464, 39.723442, 50.470474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029686, 39.448021, 50.739201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263952, 0.617926, 0.740606,
		-0.925079, -0.379552, -0.013018,
		0.273055, -0.688555, 0.671813,
		29.111603, 39.241455, 50.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353827, 39.648663, 50.947281>,  <28.920464, 39.723442, 50.470474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353827, 39.648663, 50.947281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612062, 39.427795, 51.158306>,  <28.767004, 39.295273, 51.284920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612062, 39.427795, 51.158306>,  <28.353827, 39.648663, 50.947281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612062, 39.427795, 51.158306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482398, 0.240692, 0.842235,
		-0.592038, -0.798233, -0.110978,
		0.645588, -0.552170, 0.527564,
		28.805738, 39.262146, 51.316574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992191, 39.141605, 51.356106>,  <28.353827, 39.648663, 50.947281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992191, 39.141605, 51.356106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341417, 39.177551, 51.547806>,  <28.550953, 39.199120, 51.662827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341417, 39.177551, 51.547806>,  <27.992191, 39.141605, 51.356106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341417, 39.177551, 51.547806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482633, 0.299227, 0.823121,
		-0.069433, -0.949941, 0.304617,
		0.873066, 0.089866, 0.479249,
		28.603336, 39.204510, 51.691582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766218, 38.935318, 51.935936>,  <27.992191, 39.141605, 51.356106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766218, 38.935318, 51.935936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.119219, 39.110920, 52.003418>,  <28.331018, 39.216282, 52.043907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.119219, 39.110920, 52.003418>,  <27.766218, 38.935318, 51.935936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119219, 39.110920, 52.003418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328250, 0.318051, 0.889436,
		0.336823, -0.840301, 0.424787,
		0.882498, 0.439018, 0.168702,
		28.383970, 39.242622, 52.054031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019440, 38.750946, 52.579342>,  <27.766218, 38.935318, 51.935936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019440, 38.750946, 52.579342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195236, 39.102924, 52.507179>,  <28.300714, 39.314110, 52.463882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195236, 39.102924, 52.507179>,  <28.019440, 38.750946, 52.579342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195236, 39.102924, 52.507179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265333, 0.319054, 0.909837,
		0.858165, -0.351997, 0.373700,
		0.439490, 0.879945, -0.180405,
		28.327084, 39.366909, 52.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330698, 39.005085, 53.217690>,  <28.019440, 38.750946, 52.579342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330698, 39.005085, 53.217690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319416, 39.342484, 53.003128>,  <28.312647, 39.544922, 52.874393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319416, 39.342484, 53.003128>,  <28.330698, 39.005085, 53.217690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319416, 39.342484, 53.003128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012462, 0.536276, 0.843951,
		0.999524, 0.030489, -0.004615,
		-0.028206, 0.843492, -0.536400,
		28.310955, 39.595531, 52.842209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790802, 39.463749, 53.459976>,  <28.330698, 39.005085, 53.217690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790802, 39.463749, 53.459976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532030, 39.712769, 53.283833>,  <28.376768, 39.862179, 53.178146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532030, 39.712769, 53.283833>,  <28.790802, 39.463749, 53.459976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532030, 39.712769, 53.283833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050612, 0.541159, 0.839396,
		0.760870, 0.565316, -0.318582,
		-0.646928, 0.622547, -0.440364,
		28.337952, 39.899532, 53.151722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981308, 40.082794, 53.656166>,  <28.790802, 39.463749, 53.459976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981308, 40.082794, 53.656166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600780, 40.126190, 53.540775>,  <28.372463, 40.152225, 53.471539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600780, 40.126190, 53.540775>,  <28.981308, 40.082794, 53.656166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600780, 40.126190, 53.540775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161109, 0.622896, 0.765535,
		0.262743, 0.774746, -0.575096,
		-0.951320, 0.108486, -0.288480,
		28.315384, 40.158737, 53.454231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848181, 40.770294, 53.688755>,  <28.981308, 40.082794, 53.656166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848181, 40.770294, 53.688755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484436, 40.604202, 53.698917>,  <28.266190, 40.504547, 53.705013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484436, 40.604202, 53.698917>,  <28.848181, 40.770294, 53.688755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484436, 40.604202, 53.698917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260470, 0.615917, 0.743506,
		-0.324373, 0.669499, -0.668246,
		-0.909361, -0.415232, 0.025402,
		28.211628, 40.479633, 53.706539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444386, 41.306686, 53.901775>,  <28.848181, 40.770294, 53.688755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444386, 41.306686, 53.901775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223206, 40.980370, 53.969585>,  <28.090498, 40.784580, 54.010269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223206, 40.980370, 53.969585>,  <28.444386, 41.306686, 53.901775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223206, 40.980370, 53.969585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337492, 0.405303, 0.849605,
		-0.761805, 0.412575, -0.499434,
		-0.552948, -0.815789, 0.169521,
		28.057322, 40.735634, 54.020443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763599, 41.512226, 54.012066>,  <28.444386, 41.306686, 53.901775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763599, 41.512226, 54.012066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766634, 41.153793, 54.189594>,  <27.768456, 40.938732, 54.296112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766634, 41.153793, 54.189594>,  <27.763599, 41.512226, 54.012066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766634, 41.153793, 54.189594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386371, 0.406740, 0.827816,
		-0.922312, -0.177762, -0.343134,
		0.007588, -0.896082, 0.443823,
		27.768911, 40.884968, 54.322742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061277, 41.428696, 54.331577>,  <27.763599, 41.512226, 54.012066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061277, 41.428696, 54.331577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297525, 41.163757, 54.515953>,  <27.439274, 41.004795, 54.626579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297525, 41.163757, 54.515953>,  <27.061277, 41.428696, 54.331577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297525, 41.163757, 54.515953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502529, 0.145029, 0.852309,
		-0.631375, -0.735025, -0.247192,
		0.590619, -0.662348, 0.460939,
		27.474710, 40.965054, 54.654236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637016, 41.188091, 54.853733>,  <27.061277, 41.428696, 54.331577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637016, 41.188091, 54.853733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004946, 41.080219, 54.967716>,  <27.225704, 41.015495, 55.036106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004946, 41.080219, 54.967716>,  <26.637016, 41.188091, 54.853733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004946, 41.080219, 54.967716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274247, 0.077430, 0.958537,
		-0.280560, -0.959833, -0.002736,
		0.919823, -0.269677, 0.284955,
		27.280893, 40.999317, 55.053204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.233349, 37.692585, 58.847279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938591, 37.787628, 58.594128>,  <34.761738, 37.844654, 58.442238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938591, 37.787628, 58.594128>,  <35.233349, 37.692585, 58.847279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938591, 37.787628, 58.594128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438410, -0.544650, -0.714950,
		-0.514571, -0.804301, 0.297181,
		-0.736895, 0.237605, -0.632875,
		34.717522, 37.858910, 58.404266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969925, 37.126438, 58.574917>,  <35.233349, 37.692585, 58.847279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969925, 37.126438, 58.574917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863758, 37.403454, 58.306606>,  <34.800056, 37.569664, 58.145618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863758, 37.403454, 58.306606>,  <34.969925, 37.126438, 58.574917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863758, 37.403454, 58.306606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307778, -0.598467, -0.739669,
		-0.913688, -0.402772, -0.054305,
		-0.265419, 0.692540, -0.670776,
		34.784134, 37.611217, 58.105373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703777, 36.764751, 57.940762>,  <34.969925, 37.126438, 58.574917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703777, 36.764751, 57.940762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790459, 37.133224, 57.811474>,  <34.842468, 37.354309, 57.733902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790459, 37.133224, 57.811474>,  <34.703777, 36.764751, 57.940762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790459, 37.133224, 57.811474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275369, -0.375319, -0.885047,
		-0.936595, 0.102792, -0.334998,
		0.216707, 0.921178, -0.323216,
		34.855473, 37.409576, 57.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412930, 36.884651, 57.291267>,  <34.703777, 36.764751, 57.940762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412930, 36.884651, 57.291267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698959, 37.164162, 57.299107>,  <34.870575, 37.331867, 57.303810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698959, 37.164162, 57.299107>,  <34.412930, 36.884651, 57.291267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698959, 37.164162, 57.299107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260600, -0.240450, -0.935025,
		-0.648661, 0.673717, -0.354040,
		0.715071, 0.698777, 0.019600,
		34.913479, 37.373795, 57.304985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301540, 37.226418, 56.644291>,  <34.412930, 36.884651, 57.291267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301540, 37.226418, 56.644291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676437, 37.312874, 56.753727>,  <34.901375, 37.364750, 56.819389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676437, 37.312874, 56.753727>,  <34.301540, 37.226418, 56.644291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676437, 37.312874, 56.753727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290472, -0.049994, -0.955577,
		-0.192864, 0.975081, -0.109641,
		0.937246, 0.216144, 0.273592,
		34.957611, 37.377716, 56.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561512, 37.756145, 56.219826>,  <34.301540, 37.226418, 56.644291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561512, 37.756145, 56.219826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914871, 37.617176, 56.345619>,  <35.126888, 37.533794, 56.421097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914871, 37.617176, 56.345619>,  <34.561512, 37.756145, 56.219826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914871, 37.617176, 56.345619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292570, -0.115338, -0.949263,
		0.366068, 0.930588, -0.000245,
		0.883401, -0.347423, 0.314483,
		35.179890, 37.512951, 56.439964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061867, 37.975487, 55.711971>,  <34.561512, 37.756145, 56.219826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061867, 37.975487, 55.711971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233067, 37.678902, 55.918678>,  <35.335785, 37.500950, 56.042702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233067, 37.678902, 55.918678>,  <35.061867, 37.975487, 55.711971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233067, 37.678902, 55.918678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036047, -0.557323, -0.829513,
		0.903061, 0.373656, -0.211804,
		0.427996, -0.741466, 0.516766,
		35.361465, 37.456463, 56.073708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593693, 37.826817, 55.351383>,  <35.061867, 37.975487, 55.711971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593693, 37.826817, 55.351383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525055, 37.507862, 55.582806>,  <35.483871, 37.316490, 55.721657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525055, 37.507862, 55.582806>,  <35.593693, 37.826817, 55.351383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525055, 37.507862, 55.582806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239220, -0.603413, -0.760702,
		0.955682, 0.007868, 0.294295,
		-0.171597, -0.797390, 0.578553,
		35.473576, 37.268646, 55.756371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226212, 37.506142, 55.268696>,  <35.593693, 37.826817, 55.351383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226212, 37.506142, 55.268696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962399, 37.236725, 55.402172>,  <35.804111, 37.075073, 55.482258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962399, 37.236725, 55.402172>,  <36.226212, 37.506142, 55.268696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962399, 37.236725, 55.402172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303312, -0.644662, -0.701721,
		0.687759, -0.361597, 0.629472,
		-0.659537, -0.673542, 0.333695,
		35.764538, 37.034664, 55.502281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597504, 36.900963, 55.251293>,  <36.226212, 37.506142, 55.268696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597504, 36.900963, 55.251293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219357, 36.770813, 55.243221>,  <35.992466, 36.692722, 55.238380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219357, 36.770813, 55.243221>,  <36.597504, 36.900963, 55.251293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219357, 36.770813, 55.243221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189844, -0.499163, -0.845456,
		0.265019, -0.803099, 0.533664,
		-0.945370, -0.325375, -0.020176,
		35.935745, 36.673199, 55.237167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687836, 36.180965, 55.173504>,  <36.597504, 36.900963, 55.251293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687836, 36.180965, 55.173504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312046, 36.246819, 55.053314>,  <36.086571, 36.286331, 54.981201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312046, 36.246819, 55.053314>,  <36.687836, 36.180965, 55.173504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312046, 36.246819, 55.053314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181451, -0.504832, -0.843931,
		-0.290623, -0.847373, 0.444406,
		-0.939475, 0.164628, -0.300473,
		36.030205, 36.296207, 54.963173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358326, 35.497635, 55.013947>,  <36.687836, 36.180965, 55.173504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358326, 35.497635, 55.013947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166492, 35.791271, 54.821651>,  <36.051392, 35.967453, 54.706276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166492, 35.791271, 54.821651>,  <36.358326, 35.497635, 55.013947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166492, 35.791271, 54.821651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030682, -0.533486, -0.845252,
		-0.876962, -0.420115, 0.233325,
		-0.479579, 0.734095, -0.480737,
		36.022617, 36.011501, 54.677429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025307, 35.190266, 54.526863>,  <36.358326, 35.497635, 55.013947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025307, 35.190266, 54.526863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946186, 35.559959, 54.396225>,  <35.898712, 35.781776, 54.317841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946186, 35.559959, 54.396225>,  <36.025307, 35.190266, 54.526863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946186, 35.559959, 54.396225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046857, -0.341716, -0.938634,
		-0.979121, -0.170360, 0.110899,
		-0.197802, 0.924233, -0.326599,
		35.886845, 35.837231, 54.298244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520290, 35.078194, 54.071018>,  <36.025307, 35.190266, 54.526863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520290, 35.078194, 54.071018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668480, 35.439156, 53.983013>,  <35.757393, 35.655735, 53.930210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668480, 35.439156, 53.983013>,  <35.520290, 35.078194, 54.071018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668480, 35.439156, 53.983013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011480, -0.241302, -0.970382,
		-0.928772, 0.356975, -0.099756,
		0.370473, 0.902409, -0.220017,
		35.779621, 35.709877, 53.917007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817154, 35.332855, 54.074310>,  <35.520290, 35.078194, 54.071018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817154, 35.332855, 54.074310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460148, 35.173187, 53.990334>,  <34.245941, 35.077389, 53.939949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460148, 35.173187, 53.990334>,  <34.817154, 35.332855, 54.074310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460148, 35.173187, 53.990334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429697, 0.611206, 0.664671,
		-0.136999, 0.683442, -0.717035,
		-0.892520, -0.399167, -0.209938,
		34.192390, 35.053436, 53.927353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384541, 35.860222, 53.864136>,  <34.817154, 35.332855, 54.074310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384541, 35.860222, 53.864136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164383, 35.562057, 54.014561>,  <34.032288, 35.383160, 54.104816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164383, 35.562057, 54.014561>,  <34.384541, 35.860222, 53.864136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164383, 35.562057, 54.014561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396022, 0.629622, 0.668388,
		-0.735002, 0.218950, -0.641742,
		-0.550398, -0.745411, 0.376064,
		33.999264, 35.338436, 54.127380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757397, 36.237492, 54.074856>,  <34.384541, 35.860222, 53.864136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757397, 36.237492, 54.074856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753635, 35.881786, 54.257774>,  <33.751377, 35.668362, 54.367527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753635, 35.881786, 54.257774>,  <33.757397, 36.237492, 54.074856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753635, 35.881786, 54.257774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476945, 0.405936, 0.779576,
		-0.878883, -0.210774, -0.427947,
		-0.009405, -0.889264, 0.457298,
		33.750813, 35.615005, 54.394962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139690, 36.119957, 54.230404>,  <33.757397, 36.237492, 54.074856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139690, 36.119957, 54.230404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321167, 35.879475, 54.493526>,  <33.430054, 35.735184, 54.651402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321167, 35.879475, 54.493526>,  <33.139690, 36.119957, 54.230404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321167, 35.879475, 54.493526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568670, 0.373007, 0.733130,
		-0.686130, -0.706693, -0.172658,
		0.453695, -0.601208, 0.657807,
		33.457275, 35.699112, 54.690868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586239, 35.762939, 54.652462>,  <33.139690, 36.119957, 54.230404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586239, 35.762939, 54.652462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928547, 35.746677, 54.858761>,  <33.133934, 35.736919, 54.982540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928547, 35.746677, 54.858761>,  <32.586239, 35.762939, 54.652462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928547, 35.746677, 54.858761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484964, 0.284125, 0.827093,
		-0.180167, -0.957925, 0.223428,
		0.855774, -0.040660, 0.515749,
		33.185280, 35.734478, 55.013485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404892, 35.348083, 55.249996>,  <32.586239, 35.762939, 54.652462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404892, 35.348083, 55.249996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733952, 35.551056, 55.352577>,  <32.931385, 35.672840, 55.414127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733952, 35.551056, 55.352577>,  <32.404892, 35.348083, 55.249996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733952, 35.551056, 55.352577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370913, 0.137124, 0.918488,
		0.430901, -0.850713, 0.301017,
		0.822646, 0.507429, 0.256454,
		32.980747, 35.703285, 55.429512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398109, 35.260281, 55.977837>,  <32.404892, 35.348083, 55.249996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398109, 35.260281, 55.977837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666565, 35.553570, 55.934109>,  <32.827637, 35.729546, 55.907871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666565, 35.553570, 55.934109>,  <32.398109, 35.260281, 55.977837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666565, 35.553570, 55.934109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394814, 0.478336, 0.784421,
		0.627450, -0.483294, 0.610518,
		0.671139, 0.733226, -0.109321,
		32.867908, 35.773537, 55.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824284, 35.300636, 56.597065>,  <32.398109, 35.260281, 55.977837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824284, 35.300636, 56.597065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806217, 35.651958, 56.406681>,  <32.795376, 35.862751, 56.292450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806217, 35.651958, 56.406681>,  <32.824284, 35.300636, 56.597065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806217, 35.651958, 56.406681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407992, 0.418677, 0.811328,
		0.911867, 0.230834, 0.339431,
		-0.045170, 0.878308, -0.475956,
		32.792667, 35.915451, 56.263893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194401, 35.809143, 57.136036>,  <32.824284, 35.300636, 56.597065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194401, 35.809143, 57.136036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042503, 36.058281, 56.862438>,  <32.951363, 36.207764, 56.698280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042503, 36.058281, 56.862438>,  <33.194401, 35.809143, 57.136036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042503, 36.058281, 56.862438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444216, 0.525789, 0.725408,
		0.811458, 0.579314, 0.077013,
		-0.379746, 0.622849, -0.683997,
		32.928581, 36.245136, 56.657238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400509, 36.536644, 57.377117>,  <33.194401, 35.809143, 57.136036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400509, 36.536644, 57.377117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089569, 36.548679, 57.125778>,  <32.903004, 36.555901, 56.974976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089569, 36.548679, 57.125778>,  <33.400509, 36.536644, 57.377117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089569, 36.548679, 57.125778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525380, 0.518308, 0.674784,
		0.345977, 0.854665, -0.387102,
		-0.777352, 0.030084, -0.628346,
		32.856365, 36.557705, 56.937275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274277, 37.198368, 57.341602>,  <33.400509, 36.536644, 57.377117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274277, 37.198368, 57.341602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943394, 36.990223, 57.256794>,  <32.744865, 36.865334, 57.205910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943394, 36.990223, 57.256794>,  <33.274277, 37.198368, 57.341602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943394, 36.990223, 57.256794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458137, 0.406132, 0.790675,
		-0.325333, 0.751184, -0.574352,
		-0.827206, -0.520365, -0.212018,
		32.695232, 36.834114, 57.193188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824463, 37.752087, 57.323586>,  <33.274277, 37.198368, 57.341602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824463, 37.752087, 57.323586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592915, 37.428032, 57.360657>,  <32.453987, 37.233601, 57.382900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592915, 37.428032, 57.360657>,  <32.824463, 37.752087, 57.323586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592915, 37.428032, 57.360657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513233, 0.450300, 0.730631,
		-0.633643, 0.375376, -0.676454,
		-0.578868, -0.810138, 0.092674,
		32.419254, 37.184990, 57.388458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073082, 37.986588, 57.300903>,  <32.824463, 37.752087, 57.323586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073082, 37.986588, 57.300903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088055, 37.622993, 57.466957>,  <32.097038, 37.404835, 57.566589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088055, 37.622993, 57.466957>,  <32.073082, 37.986588, 57.300903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088055, 37.622993, 57.466957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670922, 0.285012, 0.684567,
		-0.740582, -0.304149, -0.599192,
		0.037434, -0.908989, 0.415135,
		32.099285, 37.350296, 57.591499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326124, 37.792492, 57.424232>,  <32.073082, 37.986588, 57.300903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326124, 37.792492, 57.424232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551102, 37.563892, 57.663246>,  <31.686089, 37.426731, 57.806652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551102, 37.563892, 57.663246>,  <31.326124, 37.792492, 57.424232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551102, 37.563892, 57.663246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592074, 0.226068, 0.773526,
		-0.577155, -0.788845, -0.211222,
		0.562442, -0.571503, 0.597531,
		31.719833, 37.392441, 57.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674982, 37.376526, 57.379169>,  <31.326124, 37.792492, 57.424232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674982, 37.376526, 57.379169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279804, 37.396225, 57.320469>,  <30.042698, 37.408043, 57.285248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279804, 37.396225, 57.320469>,  <30.674982, 37.376526, 57.379169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279804, 37.396225, 57.320469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060073, -0.751767, -0.656687,
		-0.142661, -0.657588, 0.739747,
		-0.987947, 0.049245, -0.146751,
		29.983419, 37.410999, 57.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404211, 36.588940, 57.361370>,  <30.674982, 37.376526, 57.379169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404211, 36.588940, 57.361370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.145226, 36.832375, 57.177891>,  <29.989834, 36.978436, 57.067802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.145226, 36.832375, 57.177891>,  <30.404211, 36.588940, 57.361370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145226, 36.832375, 57.177891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196968, -0.715080, -0.670719,
		-0.736203, -0.343916, 0.582861,
		-0.647463, 0.608591, -0.458704,
		29.950987, 37.014954, 57.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796968, 36.165909, 57.198620>,  <30.404211, 36.588940, 57.361370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796968, 36.165909, 57.198620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807203, 36.477245, 56.947689>,  <29.813345, 36.664047, 56.797131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807203, 36.477245, 56.947689>,  <29.796968, 36.165909, 57.198620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807203, 36.477245, 56.947689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016262, -0.627123, -0.778751,
		-0.999540, 0.030128, -0.003389,
		0.025587, 0.778338, -0.627324,
		29.814880, 36.710747, 56.759491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458757, 35.870060, 56.535076>,  <29.796968, 36.165909, 57.198620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458757, 35.870060, 56.535076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.595675, 36.226509, 56.415916>,  <29.677826, 36.440376, 56.344421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.595675, 36.226509, 56.415916>,  <29.458757, 35.870060, 56.535076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595675, 36.226509, 56.415916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144065, -0.363076, -0.920555,
		-0.928483, 0.272184, -0.252658,
		0.342294, 0.891118, -0.297898,
		29.698362, 36.493843, 56.326546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108900, 36.055111, 55.890816>,  <29.458757, 35.870060, 56.535076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108900, 36.055111, 55.890816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447575, 36.266674, 55.914051>,  <29.650780, 36.393612, 55.927994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447575, 36.266674, 55.914051>,  <29.108900, 36.055111, 55.890816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447575, 36.266674, 55.914051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212489, -0.236008, -0.948235,
		-0.487823, 0.815201, -0.312212,
		0.846686, 0.528912, 0.058091,
		29.701580, 36.425346, 55.931477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023724, 36.435230, 55.309223>,  <29.108900, 36.055111, 55.890816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023724, 36.435230, 55.309223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.405170, 36.423050, 55.429016>,  <29.634039, 36.415741, 55.500893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.405170, 36.423050, 55.429016>,  <29.023724, 36.435230, 55.309223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405170, 36.423050, 55.429016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280491, -0.271289, -0.920721,
		0.109285, 0.962016, -0.250164,
		0.953615, -0.030452, 0.299485,
		29.691256, 36.413914, 55.518860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352579, 36.586655, 54.712116>,  <29.023724, 36.435230, 55.309223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352579, 36.586655, 54.712116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630915, 36.425671, 54.950050>,  <29.797916, 36.329079, 55.092812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630915, 36.425671, 54.950050>,  <29.352579, 36.586655, 54.712116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630915, 36.425671, 54.950050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477076, -0.360081, -0.801710,
		0.536847, 0.841645, -0.058554,
		0.695840, -0.402462, 0.594837,
		29.839666, 36.304932, 55.128502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879122, 36.835106, 54.511028>,  <29.352579, 36.586655, 54.712116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879122, 36.835106, 54.511028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003284, 36.498009, 54.686951>,  <30.077782, 36.295750, 54.792503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003284, 36.498009, 54.686951>,  <29.879122, 36.835106, 54.511028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003284, 36.498009, 54.686951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496907, -0.250567, -0.830843,
		0.810390, 0.476440, 0.340989,
		0.310406, -0.842746, 0.439803,
		30.096407, 36.245186, 54.818893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668524, 36.720379, 54.369354>,  <29.879122, 36.835106, 54.511028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668524, 36.720379, 54.369354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505978, 36.366726, 54.461597>,  <30.408449, 36.154533, 54.516941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505978, 36.366726, 54.461597>,  <30.668524, 36.720379, 54.369354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505978, 36.366726, 54.461597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336567, -0.379479, -0.861811,
		0.849463, -0.272597, 0.451777,
		-0.406367, -0.884130, 0.230606,
		30.384068, 36.101486, 54.530781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156889, 36.229847, 54.197201>,  <30.668524, 36.720379, 54.369354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156889, 36.229847, 54.197201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842752, 35.983990, 54.226749>,  <30.654270, 35.836475, 54.244480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842752, 35.983990, 54.226749>,  <31.156889, 36.229847, 54.197201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842752, 35.983990, 54.226749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287155, -0.467397, -0.836112,
		0.548435, -0.635420, 0.543563,
		-0.785342, -0.614639, 0.073873,
		30.607149, 35.799599, 54.248913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440666, 35.521500, 54.059059>,  <31.156889, 36.229847, 54.197201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440666, 35.521500, 54.059059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044003, 35.512856, 54.008236>,  <30.806004, 35.507668, 53.977741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044003, 35.512856, 54.008236>,  <31.440666, 35.521500, 54.059059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044003, 35.512856, 54.008236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101246, -0.740645, -0.664225,
		-0.079750, -0.671549, 0.736656,
		-0.991660, -0.021612, -0.127058,
		30.746504, 35.506371, 53.970119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406189, 34.855556, 53.856049>,  <31.440666, 35.521500, 54.059059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406189, 34.855556, 53.856049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.025089, 34.965725, 53.804813>,  <30.796429, 35.031826, 53.774071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.025089, 34.965725, 53.804813>,  <31.406189, 34.855556, 53.856049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025089, 34.965725, 53.804813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147487, -0.788112, -0.597601,
		-0.265542, -0.550474, 0.791496,
		-0.952751, 0.275424, -0.128089,
		30.739264, 35.048351, 53.766388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950117, 34.274685, 53.888287>,  <31.406189, 34.855556, 53.856049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950117, 34.274685, 53.888287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792034, 34.565647, 53.663895>,  <30.697186, 34.740223, 53.529259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792034, 34.565647, 53.663895>,  <30.950117, 34.274685, 53.888287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792034, 34.565647, 53.663895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003170, -0.611773, -0.791027,
		-0.918587, -0.310840, 0.244082,
		-0.395206, 0.727401, -0.560981,
		30.673471, 34.783867, 53.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561451, 33.933514, 53.424736>,  <30.950117, 34.274685, 53.888287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561451, 33.933514, 53.424736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.584267, 34.294811, 53.254612>,  <30.597956, 34.511589, 53.152538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.584267, 34.294811, 53.254612>,  <30.561451, 33.933514, 53.424736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584267, 34.294811, 53.254612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194425, -0.407801, -0.892131,
		-0.979258, 0.133579, 0.152352,
		0.057041, 0.903247, -0.425313,
		30.601379, 34.565784, 53.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.495718, 40.811539, 55.462231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881777, 40.916210, 55.463600>,  <27.113413, 40.979012, 55.464424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881777, 40.916210, 55.463600>,  <26.495718, 40.811539, 55.462231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881777, 40.916210, 55.463600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084945, 0.300861, 0.949877,
		0.247529, -0.917065, 0.312604,
		0.965149, 0.261676, 0.003428,
		27.171322, 40.994713, 55.464626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793995, 40.580635, 56.193970>,  <26.495718, 40.811539, 55.462231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793995, 40.580635, 56.193970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.003443, 40.878750, 56.028870>,  <27.129112, 41.057621, 55.929810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.003443, 40.878750, 56.028870>,  <26.793995, 40.580635, 56.193970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003443, 40.878750, 56.028870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054865, 0.512968, 0.856652,
		0.850183, -0.425915, 0.309491,
		0.523620, 0.745291, -0.412749,
		27.160528, 41.102337, 55.905045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273001, 40.682022, 56.719299>,  <26.793995, 40.580635, 56.193970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273001, 40.682022, 56.719299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.242012, 40.997173, 56.474922>,  <27.223419, 41.186264, 56.328297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.242012, 40.997173, 56.474922>,  <27.273001, 40.682022, 56.719299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242012, 40.997173, 56.474922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043690, 0.614880, 0.787410,
		0.996037, 0.034311, -0.082058,
		-0.077473, 0.787874, -0.610944,
		27.218771, 41.233536, 56.291637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829498, 41.187496, 56.933067>,  <27.273001, 40.682022, 56.719299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829498, 41.187496, 56.933067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.566820, 41.399380, 56.718346>,  <27.409214, 41.526512, 56.589512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.566820, 41.399380, 56.718346>,  <27.829498, 41.187496, 56.933067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566820, 41.399380, 56.718346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177656, 0.800417, 0.572512,
		0.732931, 0.280600, -0.619738,
		-0.656696, 0.529713, -0.536801,
		27.369812, 41.558292, 56.557304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154638, 41.921116, 56.843941>,  <27.829498, 41.187496, 56.933067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154638, 41.921116, 56.843941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.758467, 41.956608, 56.801647>,  <27.520763, 41.977905, 56.776272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.758467, 41.956608, 56.801647>,  <28.154638, 41.921116, 56.843941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758467, 41.956608, 56.801647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006338, 0.794421, 0.607334,
		0.137883, 0.600851, -0.787380,
		-0.990428, 0.088731, -0.105729,
		27.461338, 41.983227, 56.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115387, 42.626488, 56.773762>,  <28.154638, 41.921116, 56.843941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115387, 42.626488, 56.773762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.755089, 42.494247, 56.886448>,  <27.538910, 42.414906, 56.954060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.755089, 42.494247, 56.886448>,  <28.115387, 42.626488, 56.773762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755089, 42.494247, 56.886448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102053, 0.791524, 0.602558,
		-0.422191, 0.514000, -0.746698,
		-0.900744, -0.330597, 0.281719,
		27.484865, 42.395069, 56.970963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917873, 43.247025, 57.051651>,  <28.115387, 42.626488, 56.773762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917873, 43.247025, 57.051651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.618517, 42.995331, 57.135536>,  <27.438904, 42.844315, 57.185867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.618517, 42.995331, 57.135536>,  <27.917873, 43.247025, 57.051651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618517, 42.995331, 57.135536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312383, 0.613319, 0.725436,
		-0.585090, 0.477397, -0.655562,
		-0.748389, -0.629231, 0.209716,
		27.394001, 42.806561, 57.198452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442980, 43.704414, 57.253796>,  <27.917873, 43.247025, 57.051651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442980, 43.704414, 57.253796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.352777, 43.358875, 57.433979>,  <27.298656, 43.151550, 57.542088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.352777, 43.358875, 57.433979>,  <27.442980, 43.704414, 57.253796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352777, 43.358875, 57.433979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252344, 0.498376, 0.829423,
		-0.940994, 0.073369, -0.330373,
		-0.225504, -0.863851, 0.450455,
		27.285126, 43.099720, 57.569115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833614, 43.755226, 57.583130>,  <27.442980, 43.704414, 57.253796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833614, 43.755226, 57.583130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013090, 43.447529, 57.765095>,  <27.120775, 43.262913, 57.874275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013090, 43.447529, 57.765095>,  <26.833614, 43.755226, 57.583130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013090, 43.447529, 57.765095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159858, 0.431739, 0.887720,
		-0.879275, -0.471032, 0.070748,
		0.448689, -0.769240, 0.454915,
		27.147697, 43.216759, 57.901569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407368, 43.478901, 58.086411>,  <26.833614, 43.755226, 57.583130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407368, 43.478901, 58.086411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.758369, 43.330059, 58.207420>,  <26.968971, 43.240753, 58.280025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.758369, 43.330059, 58.207420>,  <26.407368, 43.478901, 58.086411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758369, 43.330059, 58.207420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129913, 0.422799, 0.896863,
		-0.461635, -0.826305, 0.322667,
		0.877506, -0.372105, 0.302526,
		27.021622, 43.218426, 58.298180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230368, 43.089088, 58.714268>,  <26.407368, 43.478901, 58.086411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230368, 43.089088, 58.714268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.603638, 43.229980, 58.685658>,  <26.827600, 43.314518, 58.668491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.603638, 43.229980, 58.685658>,  <26.230368, 43.089088, 58.714268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603638, 43.229980, 58.685658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091759, 0.425877, 0.900116,
		0.347508, -0.833405, 0.429738,
		0.933176, 0.352230, -0.071524,
		26.883591, 43.335651, 58.664200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397203, 43.177078, 59.473225>,  <26.230368, 43.089088, 58.714268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397203, 43.177078, 59.473225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699986, 43.374672, 59.302113>,  <26.881655, 43.493229, 59.199444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699986, 43.374672, 59.302113>,  <26.397203, 43.177078, 59.473225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699986, 43.374672, 59.302113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069886, 0.712078, 0.698613,
		0.649718, -0.498923, 0.573534,
		0.756956, 0.493984, -0.427782,
		26.927073, 43.522865, 59.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991016, 43.293213, 59.981583>,  <26.397203, 43.177078, 59.473225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991016, 43.293213, 59.981583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.949532, 43.563190, 59.689365>,  <26.924641, 43.725178, 59.514034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.949532, 43.563190, 59.689365>,  <26.991016, 43.293213, 59.981583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949532, 43.563190, 59.689365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103057, 0.737843, 0.667059,
		0.989254, -0.006105, -0.146081,
		-0.103713, 0.674945, -0.730543,
		26.918417, 43.765675, 59.470203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739580, 42.973328, 60.099365>,  <26.991016, 43.293213, 59.981583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739580, 42.973328, 60.099365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.911377, 43.059364, 60.450199>,  <28.014454, 43.110989, 60.660698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.911377, 43.059364, 60.450199>,  <27.739580, 42.973328, 60.099365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911377, 43.059364, 60.450199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455975, 0.786676, -0.416206,
		-0.779502, 0.578684, 0.239793,
		0.429491, 0.215094, 0.877082,
		28.040224, 43.123894, 60.713326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885920, 42.232349, 60.220020>,  <27.739580, 42.973328, 60.099365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885920, 42.232349, 60.220020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041059, 42.019661, 60.521175>,  <28.134144, 41.892048, 60.701870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041059, 42.019661, 60.521175>,  <27.885920, 42.232349, 60.220020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041059, 42.019661, 60.521175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468495, -0.589721, -0.657830,
		0.793778, 0.607866, 0.020384,
		0.387852, -0.531721, 0.752890,
		28.157415, 41.860146, 60.747044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678316, 42.174435, 60.062279>,  <27.885920, 42.232349, 60.220020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678316, 42.174435, 60.062279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.554085, 41.866894, 60.285851>,  <28.479546, 41.682369, 60.419994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.554085, 41.866894, 60.285851>,  <28.678316, 42.174435, 60.062279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554085, 41.866894, 60.285851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327729, -0.638569, -0.696293,
		0.892263, -0.033077, 0.450302,
		-0.310580, -0.768854, 0.558931,
		28.460911, 41.636238, 60.453529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320440, 41.746468, 59.983021>,  <28.678316, 42.174435, 60.062279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320440, 41.746468, 59.983021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.038271, 41.494560, 60.113110>,  <28.868969, 41.343414, 60.191162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.038271, 41.494560, 60.113110>,  <29.320440, 41.746468, 59.983021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038271, 41.494560, 60.113110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300145, -0.681093, -0.667852,
		0.642100, -0.373503, 0.669480,
		-0.705422, -0.629769, 0.325225,
		28.826645, 41.305630, 60.210678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656651, 41.143143, 60.092632>,  <29.320440, 41.746468, 59.983021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656651, 41.143143, 60.092632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.274261, 41.047680, 60.024330>,  <29.044828, 40.990402, 59.983349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.274261, 41.047680, 60.024330>,  <29.656651, 41.143143, 60.092632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274261, 41.047680, 60.024330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290976, -0.846373, -0.446077,
		-0.038061, -0.476123, 0.878555,
		-0.955973, -0.238660, -0.170754,
		28.987469, 40.976082, 59.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710089, 40.467377, 60.225731>,  <29.656651, 41.143143, 60.092632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710089, 40.467377, 60.225731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.357082, 40.483341, 60.038296>,  <29.145279, 40.492920, 59.925835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.357082, 40.483341, 60.038296>,  <29.710089, 40.467377, 60.225731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357082, 40.483341, 60.038296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228611, -0.834330, -0.501628,
		-0.410975, -0.549819, 0.727186,
		-0.882517, 0.039914, -0.468583,
		29.092327, 40.495316, 59.897720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430374, 39.745747, 60.217793>,  <29.710089, 40.467377, 60.225731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430374, 39.745747, 60.217793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.243467, 39.941082, 59.922989>,  <29.131323, 40.058285, 59.746105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.243467, 39.941082, 59.922989>,  <29.430374, 39.745747, 60.217793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243467, 39.941082, 59.922989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110632, -0.794767, -0.596746,
		-0.877168, -0.360375, 0.317341,
		-0.467265, 0.488339, -0.737013,
		29.103287, 40.087582, 59.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951754, 39.237602, 59.923199>,  <29.430374, 39.745747, 60.217793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951754, 39.237602, 59.923199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.990223, 39.526737, 59.649479>,  <29.013306, 39.700218, 59.485249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.990223, 39.526737, 59.649479>,  <28.951754, 39.237602, 59.923199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990223, 39.526737, 59.649479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075413, -0.690799, -0.719103,
		-0.992504, 0.017555, -0.120949,
		0.096176, 0.722833, -0.684297,
		29.019075, 39.743587, 59.444191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398470, 39.053032, 59.422798>,  <28.951754, 39.237602, 59.923199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398470, 39.053032, 59.422798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.665432, 39.280506, 59.230480>,  <28.825609, 39.416992, 59.115089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.665432, 39.280506, 59.230480>,  <28.398470, 39.053032, 59.422798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665432, 39.280506, 59.230480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002651, -0.643815, -0.765176,
		-0.744690, 0.511958, -0.428178,
		0.667405, 0.568684, -0.480800,
		28.865654, 39.451111, 59.086239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187866, 39.011570, 58.756489>,  <28.398470, 39.053032, 59.422798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187866, 39.011570, 58.756489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.563364, 39.148220, 58.738365>,  <28.788662, 39.230209, 58.727489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.563364, 39.148220, 58.738365>,  <28.187866, 39.011570, 58.756489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563364, 39.148220, 58.738365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196663, -0.639031, -0.743614,
		-0.282994, 0.689151, -0.667071,
		0.938743, 0.341627, -0.045311,
		28.844986, 39.250710, 58.724773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342125, 38.907532, 58.042133>,  <28.187866, 39.011570, 58.756489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342125, 38.907532, 58.042133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.699076, 38.934216, 58.220665>,  <28.913246, 38.950226, 58.327785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.699076, 38.934216, 58.220665>,  <28.342125, 38.907532, 58.042133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699076, 38.934216, 58.220665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386791, -0.622577, -0.680287,
		0.232497, 0.779710, -0.581376,
		0.892378, 0.066707, 0.446332,
		28.966789, 38.954227, 58.354565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776390, 39.034027, 57.430210>,  <28.342125, 38.907532, 58.042133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776390, 39.034027, 57.430210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.995758, 38.884113, 57.729214>,  <29.127378, 38.794163, 57.908615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.995758, 38.884113, 57.729214>,  <28.776390, 39.034027, 57.430210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995758, 38.884113, 57.729214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447147, -0.623954, -0.640891,
		0.706609, 0.685724, -0.174603,
		0.548419, -0.374786, 0.747511,
		29.160284, 38.771679, 57.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396061, 38.905987, 57.131985>,  <28.776390, 39.034027, 57.430210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396061, 38.905987, 57.131985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.381363, 38.647202, 57.436638>,  <29.372543, 38.491928, 57.619431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.381363, 38.647202, 57.436638>,  <29.396061, 38.905987, 57.131985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381363, 38.647202, 57.436638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292786, -0.735672, -0.610790,
		0.955472, 0.200551, 0.216455,
		-0.036745, -0.646967, 0.761632,
		29.370338, 38.453110, 57.665127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104399, 38.607002, 57.176735>,  <29.396061, 38.905987, 57.131985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104399, 38.607002, 57.176735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.861832, 38.358479, 57.375225>,  <29.716291, 38.209366, 57.494320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.861832, 38.358479, 57.375225>,  <30.104399, 38.607002, 57.176735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861832, 38.358479, 57.375225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385247, -0.775500, -0.500184,
		0.695589, -0.112151, 0.709632,
		-0.606416, -0.621307, 0.496224,
		29.679907, 38.172085, 57.524094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596033, 38.102463, 57.426266>,  <30.104399, 38.607002, 57.176735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596033, 38.102463, 57.426266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226019, 37.950512, 57.426048>,  <30.004009, 37.859341, 57.425919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226019, 37.950512, 57.426048>,  <30.596033, 38.102463, 57.426266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226019, 37.950512, 57.426048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286975, -0.697868, -0.656221,
		0.248902, -0.607186, 0.754569,
		-0.925037, -0.379877, -0.000546,
		29.948507, 37.836548, 57.425884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897606, 37.724884, 58.009010>,  <30.596033, 38.102463, 57.426266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897606, 37.724884, 58.009010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225174, 37.564964, 58.173706>,  <31.421715, 37.469013, 58.272522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225174, 37.564964, 58.173706>,  <30.897606, 37.724884, 58.009010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225174, 37.564964, 58.173706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338310, 0.243238, 0.909055,
		-0.463589, -0.883740, 0.063937,
		0.818921, -0.399798, 0.411741,
		31.470850, 37.445026, 58.297230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690933, 37.152050, 58.498199>,  <30.897606, 37.724884, 58.009010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690933, 37.152050, 58.498199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.040129, 37.319744, 58.597904>,  <31.249647, 37.420361, 58.657726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.040129, 37.319744, 58.597904>,  <30.690933, 37.152050, 58.498199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040129, 37.319744, 58.597904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347766, 0.176709, 0.920778,
		0.341976, -0.890515, 0.300061,
		0.872990, 0.419235, 0.249261,
		31.302025, 37.445515, 58.672684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893555, 36.919273, 59.297695>,  <30.690933, 37.152050, 58.498199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893555, 36.919273, 59.297695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102371, 37.247841, 59.205830>,  <31.227661, 37.444981, 59.150711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102371, 37.247841, 59.205830>,  <30.893555, 36.919273, 59.297695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102371, 37.247841, 59.205830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137290, 0.346687, 0.927879,
		0.841797, -0.452862, 0.293758,
		0.522043, 0.821416, -0.229666,
		31.258984, 37.494267, 59.136929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292677, 37.061600, 59.954231>,  <30.893555, 36.919273, 59.297695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292677, 37.061600, 59.954231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.322109, 37.413326, 59.766026>,  <31.339767, 37.624363, 59.653103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.322109, 37.413326, 59.766026>,  <31.292677, 37.061600, 59.954231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322109, 37.413326, 59.766026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147469, 0.476203, 0.866882,
		0.986326, 0.005602, 0.164711,
		0.073579, 0.879318, -0.470517,
		31.344183, 37.677120, 59.624870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832739, 37.366875, 60.211464>,  <31.292677, 37.061600, 59.954231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832739, 37.366875, 60.211464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.624676, 37.673649, 60.061134>,  <31.499838, 37.857716, 59.970936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.624676, 37.673649, 60.061134>,  <31.832739, 37.366875, 60.211464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624676, 37.673649, 60.061134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020591, 0.428648, 0.903237,
		0.853821, 0.477565, -0.207173,
		-0.520159, 0.766937, -0.375822,
		31.468628, 37.903728, 59.948387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917345, 37.804810, 60.786861>,  <31.832739, 37.366875, 60.211464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917345, 37.804810, 60.786861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646360, 37.988167, 60.556759>,  <31.483768, 38.098179, 60.418697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646360, 37.988167, 60.556759>,  <31.917345, 37.804810, 60.786861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646360, 37.988167, 60.556759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374867, 0.457723, 0.806204,
		0.632865, 0.761818, -0.138255,
		-0.677463, 0.458391, -0.575258,
		31.443121, 38.125683, 60.384182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960119, 38.435280, 61.013561>,  <31.917345, 37.804810, 60.786861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960119, 38.435280, 61.013561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610460, 38.432293, 60.819321>,  <31.400665, 38.430500, 60.702778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610460, 38.432293, 60.819321>,  <31.960119, 38.435280, 61.013561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610460, 38.432293, 60.819321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369488, 0.659145, 0.654986,
		0.315188, 0.751979, -0.578951,
		-0.874148, -0.007471, -0.485602,
		31.348215, 38.430050, 60.673641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310116, 38.781231, 60.384594>,  <31.960119, 38.435280, 61.013561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310116, 38.781231, 60.384594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613205, 39.027225, 60.297283>,  <32.795059, 39.174824, 60.244896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613205, 39.027225, 60.297283>,  <32.310116, 38.781231, 60.384594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613205, 39.027225, 60.297283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304339, -0.628903, -0.715443,
		-0.577262, 0.475680, -0.663700,
		0.757725, 0.614988, -0.218273,
		32.840523, 39.211723, 60.231800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379765, 38.762386, 59.686615>,  <32.310116, 38.781231, 60.384594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379765, 38.762386, 59.686615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725845, 38.931721, 59.794102>,  <32.933495, 39.033321, 59.858593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725845, 38.931721, 59.794102>,  <32.379765, 38.762386, 59.686615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725845, 38.931721, 59.794102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428567, -0.346140, -0.834576,
		-0.260291, 0.837242, -0.480909,
		0.865205, 0.423334, 0.268717,
		32.985405, 39.058720, 59.874718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717136, 39.013710, 59.020802>,  <32.379765, 38.762386, 59.686615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717136, 39.013710, 59.020802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988232, 38.943218, 59.306347>,  <33.150890, 38.900921, 59.477676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988232, 38.943218, 59.306347>,  <32.717136, 39.013710, 59.020802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988232, 38.943218, 59.306347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611163, -0.404791, -0.680165,
		0.408834, 0.897266, -0.166638,
		0.677743, -0.176231, 0.713868,
		33.191555, 38.890350, 59.520508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275951, 39.463165, 58.866978>,  <32.717136, 39.013710, 59.020802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275951, 39.463165, 58.866978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.381672, 39.140827, 59.078922>,  <33.445103, 38.947422, 59.206089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.381672, 39.140827, 59.078922>,  <33.275951, 39.463165, 58.866978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381672, 39.140827, 59.078922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682247, -0.232099, -0.693303,
		0.681677, 0.544738, 0.488443,
		0.264301, -0.805847, 0.529863,
		33.460960, 38.899075, 59.237881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975674, 39.321495, 58.645336>,  <33.275951, 39.463165, 58.866978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975674, 39.321495, 58.645336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958149, 39.007233, 58.892181>,  <33.947632, 38.818676, 59.040291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958149, 39.007233, 58.892181>,  <33.975674, 39.321495, 58.645336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958149, 39.007233, 58.892181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657763, -0.487618, -0.574087,
		0.751949, 0.380761, 0.538139,
		-0.043816, -0.785652, 0.617115,
		33.945004, 38.771538, 59.077316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681114, 39.101707, 58.959892>,  <33.975674, 39.321495, 58.645336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681114, 39.101707, 58.959892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419994, 38.799435, 58.938709>,  <34.263321, 38.618073, 58.925999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419994, 38.799435, 58.938709>,  <34.681114, 39.101707, 58.959892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419994, 38.799435, 58.938709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584790, -0.458268, -0.669337,
		0.481534, -0.467912, 0.741069,
		-0.652799, -0.755678, -0.052959,
		34.224155, 38.572731, 58.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126598, 38.434017, 58.957489>,  <34.681114, 39.101707, 58.959892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126598, 38.434017, 58.957489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788490, 38.307396, 58.785297>,  <34.585625, 38.231422, 58.681984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788490, 38.307396, 58.785297>,  <35.126598, 38.434017, 58.957489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788490, 38.307396, 58.785297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534337, -0.503383, -0.679036,
		-0.001744, -0.803989, 0.594642,
		-0.845270, -0.316554, -0.430479,
		34.534908, 38.212429, 58.656155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.882599, 45.265858, 59.488384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572151, 45.031708, 59.394596>,  <29.385883, 44.891216, 59.338322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572151, 45.031708, 59.394596>,  <29.882599, 45.265858, 59.488384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572151, 45.031708, 59.394596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559683, -0.468152, -0.683804,
		0.290513, -0.661943, 0.690965,
		-0.776117, -0.585375, -0.234474,
		29.339315, 44.856094, 59.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152054, 44.686623, 59.461727>,  <29.882599, 45.265858, 59.488384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152054, 44.686623, 59.461727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810125, 44.647144, 59.257946>,  <29.604969, 44.623459, 59.135677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810125, 44.647144, 59.257946>,  <30.152054, 44.686623, 59.461727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810125, 44.647144, 59.257946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461274, -0.594254, -0.658853,
		-0.237718, -0.798199, 0.553507,
		-0.854820, -0.098697, -0.509454,
		29.553680, 44.617535, 59.105110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079363, 43.932652, 59.297287>,  <30.152054, 44.686623, 59.461727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079363, 43.932652, 59.297287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831905, 44.116116, 59.042130>,  <29.683430, 44.226192, 58.889034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831905, 44.116116, 59.042130>,  <30.079363, 43.932652, 59.297287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831905, 44.116116, 59.042130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481336, -0.420445, -0.769117,
		-0.620962, -0.782853, 0.039337,
		-0.618645, 0.458658, -0.637896,
		29.646313, 44.253712, 58.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907129, 43.333164, 58.842258>,  <30.079363, 43.932652, 59.297287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907129, 43.333164, 58.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828138, 43.679901, 58.659138>,  <29.780745, 43.887943, 58.549267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828138, 43.679901, 58.659138>,  <29.907129, 43.333164, 58.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828138, 43.679901, 58.659138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501890, -0.311751, -0.806795,
		-0.842086, -0.389090, -0.373497,
		-0.197478, 0.866845, -0.457801,
		29.768894, 43.939953, 58.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486483, 43.126518, 58.231281>,  <29.907129, 43.333164, 58.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486483, 43.126518, 58.231281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663345, 43.484489, 58.207268>,  <29.769463, 43.699272, 58.192860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663345, 43.484489, 58.207268>,  <29.486483, 43.126518, 58.231281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663345, 43.484489, 58.207268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346758, -0.232281, -0.908738,
		-0.827198, 0.380988, -0.413027,
		0.442157, 0.894927, -0.060031,
		29.795992, 43.752968, 58.189259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315763, 43.301380, 57.543110>,  <29.486483, 43.126518, 58.231281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315763, 43.301380, 57.543110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624905, 43.540241, 57.629005>,  <29.810389, 43.683559, 57.680542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624905, 43.540241, 57.629005>,  <29.315763, 43.301380, 57.543110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624905, 43.540241, 57.629005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305579, -0.053632, -0.950655,
		-0.556168, 0.800334, -0.223927,
		0.772851, 0.597151, 0.214737,
		29.856760, 43.719387, 57.693428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284296, 43.788036, 57.012753>,  <29.315763, 43.301380, 57.543110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284296, 43.788036, 57.012753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655264, 43.795448, 57.162178>,  <29.877844, 43.799896, 57.251835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655264, 43.795448, 57.162178>,  <29.284296, 43.788036, 57.012753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655264, 43.795448, 57.162178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369699, -0.196904, -0.908048,
		0.056735, 0.980248, -0.189461,
		0.927418, 0.018526, 0.373568,
		29.933489, 43.801006, 57.274250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606182, 44.096413, 56.506248>,  <29.284296, 43.788036, 57.012753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606182, 44.096413, 56.506248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906183, 43.933903, 56.715031>,  <30.086184, 43.836395, 56.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906183, 43.933903, 56.715031>,  <29.606182, 44.096413, 56.506248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906183, 43.933903, 56.715031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473206, -0.221771, -0.852581,
		0.462136, 0.886430, 0.025923,
		0.750004, -0.406275, 0.521952,
		30.131184, 43.812019, 56.871616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165644, 44.340919, 56.175301>,  <29.606182, 44.096413, 56.506248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165644, 44.340919, 56.175301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287815, 44.006973, 56.358482>,  <30.361118, 43.806606, 56.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287815, 44.006973, 56.358482>,  <30.165644, 44.340919, 56.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287815, 44.006973, 56.358482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563044, -0.229507, -0.793920,
		0.767916, 0.500332, 0.399966,
		0.305428, -0.834862, 0.457951,
		30.379444, 43.756516, 56.495869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870930, 44.293644, 56.026749>,  <30.165644, 44.340919, 56.175301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870930, 44.293644, 56.026749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754663, 43.923496, 56.124077>,  <30.684904, 43.701408, 56.182472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754663, 43.923496, 56.124077>,  <30.870930, 44.293644, 56.026749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754663, 43.923496, 56.124077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515123, -0.365642, -0.775212,
		0.806326, -0.099987, 0.582959,
		-0.290666, -0.925369, 0.243321,
		30.667463, 43.645885, 56.197075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484617, 43.941750, 55.816555>,  <30.870930, 44.293644, 56.026749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484617, 43.941750, 55.816555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205090, 43.663795, 55.884418>,  <31.037373, 43.497021, 55.925137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205090, 43.663795, 55.884418>,  <31.484617, 43.941750, 55.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205090, 43.663795, 55.884418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355791, -0.543435, -0.760323,
		0.620538, -0.470964, 0.626997,
		-0.698817, -0.694890, 0.169658,
		30.995445, 43.455330, 55.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803072, 43.269527, 55.884289>,  <31.484617, 43.941750, 55.816555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803072, 43.269527, 55.884289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436384, 43.234085, 55.728455>,  <31.216372, 43.212818, 55.634953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436384, 43.234085, 55.728455>,  <31.803072, 43.269527, 55.884289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436384, 43.234085, 55.728455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388438, -0.425886, -0.817152,
		-0.093514, -0.900428, 0.424836,
		-0.916717, -0.088607, -0.389587,
		31.161369, 43.207504, 55.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386410, 43.080536, 56.245754>,  <31.803072, 43.269527, 55.884289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386410, 43.080536, 56.245754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760586, 42.964977, 56.327221>,  <32.985092, 42.895641, 56.376102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760586, 42.964977, 56.327221>,  <32.386410, 43.080536, 56.245754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760586, 42.964977, 56.327221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195457, 0.057315, 0.979036,
		-0.294516, -0.955642, -0.002852,
		0.935445, -0.288900, 0.203667,
		33.041218, 42.878307, 56.388321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321674, 42.687370, 56.821529>,  <32.386410, 43.080536, 56.245754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321674, 42.687370, 56.821529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710037, 42.783054, 56.825932>,  <32.943054, 42.840466, 56.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710037, 42.783054, 56.825932>,  <32.321674, 42.687370, 56.821529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710037, 42.783054, 56.825932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022155, -0.135506, 0.990529,
		0.238436, -0.961466, -0.136863,
		0.970905, 0.239210, 0.011008,
		33.001308, 42.854816, 56.829235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598812, 42.363194, 57.347221>,  <32.321674, 42.687370, 56.821529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598812, 42.363194, 57.347221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885799, 42.634903, 57.285488>,  <33.057991, 42.797928, 57.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885799, 42.634903, 57.285488>,  <32.598812, 42.363194, 57.347221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885799, 42.634903, 57.285488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224957, -0.016251, 0.974233,
		0.659266, -0.733702, -0.164468,
		0.717470, 0.679277, -0.154337,
		33.101040, 42.838684, 57.239185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178741, 42.092495, 57.717175>,  <32.598812, 42.363194, 57.347221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178741, 42.092495, 57.717175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254105, 42.480618, 57.656513>,  <33.299324, 42.713493, 57.620117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254105, 42.480618, 57.656513>,  <33.178741, 42.092495, 57.717175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254105, 42.480618, 57.656513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278007, 0.095412, 0.955829,
		0.941921, -0.222246, -0.251777,
		0.188407, 0.970311, -0.151657,
		33.310627, 42.771709, 57.611015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682732, 42.216492, 58.162125>,  <33.178741, 42.092495, 57.717175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682732, 42.216492, 58.162125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563568, 42.589710, 58.081455>,  <33.492069, 42.813641, 58.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563568, 42.589710, 58.081455>,  <33.682732, 42.216492, 58.162125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563568, 42.589710, 58.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137339, 0.250956, 0.958206,
		0.944664, 0.257757, -0.202905,
		-0.297904, 0.933050, -0.201669,
		33.474197, 42.869625, 58.020954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133499, 42.732601, 58.429081>,  <33.682732, 42.216492, 58.162125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133499, 42.732601, 58.429081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797401, 42.946587, 58.393757>,  <33.595741, 43.074978, 58.372562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797401, 42.946587, 58.393757>,  <34.133499, 42.732601, 58.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797401, 42.946587, 58.393757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184378, 0.435075, 0.881314,
		0.509894, 0.724238, -0.464206,
		-0.840246, 0.534966, -0.088309,
		33.545326, 43.107075, 58.367264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329933, 43.401436, 58.635635>,  <34.133499, 42.732601, 58.429081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329933, 43.401436, 58.635635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933990, 43.364578, 58.678883>,  <33.696423, 43.342464, 58.704830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933990, 43.364578, 58.678883>,  <34.329933, 43.401436, 58.635635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933990, 43.364578, 58.678883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061395, 0.408827, 0.910544,
		-0.128103, 0.907948, -0.399024,
		-0.989859, -0.092145, 0.108116,
		33.637032, 43.336933, 58.711319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256889, 43.927261, 58.977493>,  <34.329933, 43.401436, 58.635635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256889, 43.927261, 58.977493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926109, 43.718525, 59.061237>,  <33.727642, 43.593281, 59.111485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926109, 43.718525, 59.061237>,  <34.256889, 43.927261, 58.977493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926109, 43.718525, 59.061237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058671, 0.290227, 0.955158,
		-0.559207, 0.802150, -0.209386,
		-0.826949, -0.521846, 0.209360,
		33.678024, 43.561970, 59.124046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917892, 44.305687, 59.488590>,  <34.256889, 43.927261, 58.977493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917892, 44.305687, 59.488590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732330, 43.953594, 59.528538>,  <33.620991, 43.742336, 59.552505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732330, 43.953594, 59.528538>,  <33.917892, 44.305687, 59.488590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732330, 43.953594, 59.528538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072548, 0.074606, 0.994571,
		-0.882908, 0.468635, 0.029248,
		-0.463909, -0.880236, 0.099869,
		33.593159, 43.689522, 59.558498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489529, 44.452885, 60.025181>,  <33.917892, 44.305687, 59.488590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489529, 44.452885, 60.025181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479359, 44.053108, 60.016552>,  <33.473255, 43.813240, 60.011375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479359, 44.053108, 60.016552>,  <33.489529, 44.452885, 60.025181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479359, 44.053108, 60.016552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127300, -0.018169, 0.991698,
		-0.991538, 0.027964, -0.126768,
		-0.025429, -0.999444, -0.021575,
		33.471729, 43.753277, 60.010078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793118, 44.208744, 60.391083>,  <33.489529, 44.452885, 60.025181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793118, 44.208744, 60.391083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111633, 43.966797, 60.388035>,  <33.302742, 43.821629, 60.386208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111633, 43.966797, 60.388035>,  <32.793118, 44.208744, 60.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111633, 43.966797, 60.388035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025075, 0.020418, 0.999477,
		-0.604396, -0.796064, 0.031426,
		0.796289, -0.604868, -0.007621,
		33.350521, 43.785336, 60.385750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624645, 43.665047, 60.832710>,  <32.793118, 44.208744, 60.391083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624645, 43.665047, 60.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024200, 43.680359, 60.821659>,  <33.263931, 43.689545, 60.815029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024200, 43.680359, 60.821659>,  <32.624645, 43.665047, 60.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024200, 43.680359, 60.821659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032558, -0.134833, 0.990333,
		0.034183, -0.990129, -0.135929,
		0.998885, 0.038279, -0.027628,
		33.323868, 43.691841, 60.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887981, 43.053112, 61.306690>,  <32.624645, 43.665047, 60.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887981, 43.053112, 61.306690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203873, 43.297169, 61.281231>,  <33.393406, 43.443604, 61.265953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203873, 43.297169, 61.281231>,  <32.887981, 43.053112, 61.306690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203873, 43.297169, 61.281231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148743, -0.089787, 0.984791,
		0.595151, -0.787185, -0.161662,
		0.789728, 0.610145, -0.063652,
		33.440792, 43.480213, 61.262135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436424, 42.803505, 61.735020>,  <32.887981, 43.053112, 61.306690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436424, 42.803505, 61.735020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523304, 43.192558, 61.702019>,  <33.575432, 43.425991, 61.682220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523304, 43.192558, 61.702019>,  <33.436424, 42.803505, 61.735020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523304, 43.192558, 61.702019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070805, 0.068597, 0.995129,
		0.973556, -0.221981, -0.053969,
		0.217198, 0.972635, -0.082500,
		33.588463, 43.484348, 61.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192436, 42.243221, 61.359177>,  <33.436424, 42.803505, 61.735020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192436, 42.243221, 61.359177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292381, 41.937702, 61.597229>,  <33.352348, 41.754391, 61.740059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292381, 41.937702, 61.597229>,  <33.192436, 42.243221, 61.359177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292381, 41.937702, 61.597229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299547, -0.645444, -0.702619,
		0.920784, -0.002713, -0.390064,
		0.249858, -0.763802, 0.595127,
		33.367340, 41.708561, 61.775768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420815, 41.741425, 60.914700>,  <33.192436, 42.243221, 61.359177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420815, 41.741425, 60.914700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337078, 41.545189, 61.253048>,  <33.286835, 41.427448, 61.456059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337078, 41.545189, 61.253048>,  <33.420815, 41.741425, 60.914700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337078, 41.545189, 61.253048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109779, -0.847779, -0.518864,
		0.971661, -0.201478, 0.123618,
		-0.209340, -0.490589, 0.845872,
		33.274277, 41.398010, 61.506809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934311, 41.136986, 61.086266>,  <33.420815, 41.741425, 60.914700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934311, 41.136986, 61.086266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569031, 41.062744, 61.231377>,  <33.349861, 41.018200, 61.318443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569031, 41.062744, 61.231377>,  <33.934311, 41.136986, 61.086266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569031, 41.062744, 61.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034186, -0.852220, -0.522066,
		0.406064, -0.489155, 0.771906,
		-0.913205, -0.185604, 0.362778,
		33.295071, 41.007065, 61.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988712, 40.442478, 61.234783>,  <33.934311, 41.136986, 61.086266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988712, 40.442478, 61.234783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597725, 40.526291, 61.244968>,  <33.363132, 40.576576, 61.251080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597725, 40.526291, 61.244968>,  <33.988712, 40.442478, 61.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597725, 40.526291, 61.244968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207838, -0.934428, -0.289218,
		-0.036803, -0.287995, 0.956924,
		-0.977471, 0.209529, 0.025467,
		33.304485, 40.589149, 61.252609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758884, 39.760853, 61.496468>,  <33.988712, 40.442478, 61.234783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758884, 39.760853, 61.496468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473343, 39.970409, 61.310589>,  <33.302017, 40.096146, 61.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473343, 39.970409, 61.310589>,  <33.758884, 39.760853, 61.496468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473343, 39.970409, 61.310589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237385, -0.805317, -0.543244,
		-0.658829, -0.277487, 0.699246,
		-0.713857, 0.523895, -0.464695,
		33.259186, 40.127579, 61.171181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219131, 39.268856, 61.476540>,  <33.758884, 39.760853, 61.496468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219131, 39.268856, 61.476540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106228, 39.536476, 61.201527>,  <33.038486, 39.697048, 61.036518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106228, 39.536476, 61.201527>,  <33.219131, 39.268856, 61.476540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106228, 39.536476, 61.201527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020204, -0.720659, -0.692996,
		-0.959127, -0.181712, 0.216927,
		-0.282256, 0.669053, -0.687532,
		33.021553, 39.737190, 60.995266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671539, 38.982292, 61.087944>,  <33.219131, 39.268856, 61.476540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671539, 38.982292, 61.087944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818611, 39.264900, 60.846069>,  <32.906853, 39.434464, 60.700947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818611, 39.264900, 60.846069>,  <32.671539, 38.982292, 61.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818611, 39.264900, 60.846069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043829, -0.662673, -0.747625,
		-0.928921, 0.248380, -0.274614,
		0.367675, 0.706520, -0.604685,
		32.928913, 39.476856, 60.664665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969791, 39.193909, 60.899712>,  <32.671539, 38.982292, 61.087944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969791, 39.193909, 60.899712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621885, 39.003418, 60.848000>,  <31.413141, 38.889122, 60.816975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621885, 39.003418, 60.848000>,  <31.969791, 39.193909, 60.899712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621885, 39.003418, 60.848000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493067, 0.828191, 0.266429,
		-0.019816, 0.295472, -0.955146,
		-0.869766, -0.476230, -0.129276,
		31.360956, 38.860550, 60.809216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598566, 39.552567, 60.420834>,  <31.969791, 39.193909, 60.899712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598566, 39.552567, 60.420834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348352, 39.341164, 60.650406>,  <31.198225, 39.214321, 60.788147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348352, 39.341164, 60.650406>,  <31.598566, 39.552567, 60.420834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348352, 39.341164, 60.650406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397347, 0.848872, 0.348613,
		-0.671434, -0.009979, -0.740997,
		-0.625532, -0.528504, 0.573927,
		31.160692, 39.182613, 60.822582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059259, 39.899883, 60.459286>,  <31.598566, 39.552567, 60.420834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059259, 39.899883, 60.459286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997377, 39.678711, 60.786781>,  <30.960249, 39.546005, 60.983280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997377, 39.678711, 60.786781>,  <31.059259, 39.899883, 60.459286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997377, 39.678711, 60.786781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371636, 0.800418, 0.470338,
		-0.915398, -0.231509, -0.329318,
		-0.154705, -0.552933, 0.818738,
		30.950966, 39.512833, 61.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415339, 40.143970, 60.702217>,  <31.059259, 39.899883, 60.459286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415339, 40.143970, 60.702217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607386, 39.960445, 61.001274>,  <30.722614, 39.850330, 61.180710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607386, 39.960445, 61.001274>,  <30.415339, 40.143970, 60.702217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607386, 39.960445, 61.001274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319753, 0.702129, 0.636218,
		-0.816851, -0.544522, 0.190397,
		0.480117, -0.458815, 0.747647,
		30.751421, 39.822800, 61.225567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964970, 40.123093, 61.234638>,  <30.415339, 40.143970, 60.702217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964970, 40.123093, 61.234638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313555, 40.094028, 61.428658>,  <30.522705, 40.076588, 61.545071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313555, 40.094028, 61.428658>,  <29.964970, 40.123093, 61.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313555, 40.094028, 61.428658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314118, 0.676836, 0.665750,
		-0.376678, -0.732539, 0.567011,
		0.871461, -0.072665, 0.485053,
		30.574993, 40.072227, 61.574173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693861, 39.959797, 61.752605>,  <29.964970, 40.123093, 61.234638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693861, 39.959797, 61.752605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058352, 40.102253, 61.835388>,  <30.277046, 40.187729, 61.885059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058352, 40.102253, 61.835388>,  <29.693861, 39.959797, 61.752605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058352, 40.102253, 61.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399508, 0.641787, 0.654601,
		0.100308, -0.679170, 0.727094,
		0.911225, 0.356142, 0.206957,
		30.331718, 40.209095, 61.897476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656313, 40.103172, 62.483627>,  <29.693861, 39.959797, 61.752605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656313, 40.103172, 62.483627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978479, 40.296997, 62.347095>,  <30.171780, 40.413292, 62.265179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978479, 40.296997, 62.347095>,  <29.656313, 40.103172, 62.483627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978479, 40.296997, 62.347095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297359, 0.828501, 0.474515,
		0.512723, -0.280684, 0.811376,
		0.805414, 0.484565, -0.341328,
		30.220104, 40.442368, 62.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006430, 40.473473, 63.117214>,  <29.656313, 40.103172, 62.483627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006430, 40.473473, 63.117214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120127, 40.676365, 62.791779>,  <30.188345, 40.798100, 62.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120127, 40.676365, 62.791779>,  <30.006430, 40.473473, 63.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120127, 40.676365, 62.791779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325902, 0.849175, 0.415559,
		0.901661, 0.147029, 0.406682,
		0.284245, 0.507232, -0.813585,
		30.205400, 40.828533, 62.547703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485081, 41.034439, 63.377205>,  <30.006430, 40.473473, 63.117214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485081, 41.034439, 63.377205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317482, 41.120197, 63.024281>,  <30.216923, 41.171650, 62.812527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317482, 41.120197, 63.024281>,  <30.485081, 41.034439, 63.377205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317482, 41.120197, 63.024281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392168, 0.833684, 0.388813,
		0.818928, 0.508928, -0.265234,
		-0.418999, 0.214394, -0.882312,
		30.191782, 41.184517, 62.759586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.369240, 35.460293, 46.606655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637123, 35.698215, 46.784504>,  <36.797855, 35.840969, 46.891212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637123, 35.698215, 46.784504>,  <36.369240, 35.460293, 46.606655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637123, 35.698215, 46.784504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581179, 0.047088, 0.812412,
		0.462295, -0.802486, 0.377227,
		0.669712, 0.594810, 0.444620,
		36.838036, 35.876659, 46.917889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517616, 35.151817, 47.232090>,  <36.369240, 35.460293, 46.606655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517616, 35.151817, 47.232090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594822, 35.541039, 47.282566>,  <36.641144, 35.774570, 47.312851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594822, 35.541039, 47.282566>,  <36.517616, 35.151817, 47.232090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594822, 35.541039, 47.282566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619230, 0.021037, 0.784928,
		0.761119, -0.229637, 0.606601,
		0.193009, 0.973049, 0.126186,
		36.652725, 35.832954, 47.320423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530563, 35.273514, 48.002052>,  <36.517616, 35.151817, 47.232090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530563, 35.273514, 48.002052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467678, 35.629654, 47.831146>,  <36.429947, 35.843338, 47.728603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467678, 35.629654, 47.831146>,  <36.530563, 35.273514, 48.002052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467678, 35.629654, 47.831146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618768, 0.248383, 0.745273,
		0.769682, 0.381545, 0.511873,
		-0.157215, 0.890353, -0.427263,
		36.420513, 35.896759, 47.702969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479034, 35.760754, 48.526257>,  <36.530563, 35.273514, 48.002052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479034, 35.760754, 48.526257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307034, 35.963284, 48.227264>,  <36.203831, 36.084801, 48.047867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307034, 35.963284, 48.227264>,  <36.479034, 35.760754, 48.526257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307034, 35.963284, 48.227264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606952, 0.450793, 0.654519,
		0.668358, 0.735134, 0.113471,
		-0.430007, 0.506324, -0.747482,
		36.178032, 36.115181, 48.003021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427975, 36.419987, 48.616364>,  <36.479034, 35.760754, 48.526257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427975, 36.419987, 48.616364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120785, 36.371605, 48.364780>,  <35.936470, 36.342575, 48.213829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120785, 36.371605, 48.364780>,  <36.427975, 36.419987, 48.616364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120785, 36.371605, 48.364780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606881, 0.451305, 0.654232,
		0.204721, 0.884135, -0.419995,
		-0.767975, -0.120952, -0.628956,
		35.890392, 36.335320, 48.176094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110184, 37.071575, 48.604343>,  <36.427975, 36.419987, 48.616364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110184, 37.071575, 48.604343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847969, 36.786247, 48.505188>,  <35.690639, 36.615051, 48.445694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847969, 36.786247, 48.505188>,  <36.110184, 37.071575, 48.604343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847969, 36.786247, 48.505188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699141, 0.449195, 0.556260,
		-0.285439, 0.537959, -0.793174,
		-0.655535, -0.713319, -0.247891,
		35.651310, 36.572250, 48.430820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474987, 37.295063, 48.673603>,  <36.110184, 37.071575, 48.604343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474987, 37.295063, 48.673603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332867, 36.922916, 48.637421>,  <35.247593, 36.699631, 48.615711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332867, 36.922916, 48.637421>,  <35.474987, 37.295063, 48.673603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332867, 36.922916, 48.637421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812999, 0.259819, 0.521081,
		-0.461292, 0.258685, -0.848700,
		-0.355304, -0.930363, -0.090459,
		35.226276, 36.643806, 48.610283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760933, 37.399815, 48.383736>,  <35.474987, 37.295063, 48.673603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760933, 37.399815, 48.383736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772427, 37.042969, 48.564098>,  <34.779324, 36.828861, 48.672314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772427, 37.042969, 48.564098>,  <34.760933, 37.399815, 48.383736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772427, 37.042969, 48.564098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889431, 0.183041, 0.418819,
		-0.456166, -0.413080, -0.788211,
		0.028731, -0.892111, 0.450903,
		34.781048, 36.775337, 48.699368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055408, 37.165184, 48.293041>,  <34.760933, 37.399815, 48.383736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055408, 37.165184, 48.293041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216366, 36.940655, 48.582314>,  <34.312939, 36.805935, 48.755878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216366, 36.940655, 48.582314>,  <34.055408, 37.165184, 48.293041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216366, 36.940655, 48.582314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879488, -0.017742, 0.475591,
		-0.254131, -0.827404, -0.500819,
		0.402392, -0.561327, 0.723183,
		34.337082, 36.772255, 48.799267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632992, 36.546616, 48.359211>,  <34.055408, 37.165184, 48.293041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632992, 36.546616, 48.359211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829601, 36.551926, 48.707516>,  <33.947567, 36.555111, 48.916500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829601, 36.551926, 48.707516>,  <33.632992, 36.546616, 48.359211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829601, 36.551926, 48.707516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868173, -0.071058, 0.491148,
		0.068396, -0.997384, -0.023400,
		0.491526, 0.013277, 0.870762,
		33.977058, 36.555908, 48.968742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322643, 36.060673, 48.730885>,  <33.632992, 36.546616, 48.359211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322643, 36.060673, 48.730885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.496464, 36.316643, 48.984394>,  <33.600758, 36.470222, 49.136497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.496464, 36.316643, 48.984394>,  <33.322643, 36.060673, 48.730885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496464, 36.316643, 48.984394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797730, -0.053175, 0.600666,
		0.418080, -0.766597, 0.487378,
		0.434552, 0.639923, 0.633769,
		33.626831, 36.508621, 49.174526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251713, 35.732819, 49.364651>,  <33.322643, 36.060673, 48.730885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251713, 35.732819, 49.364651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312645, 36.121273, 49.438076>,  <33.349205, 36.354343, 49.482132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312645, 36.121273, 49.438076>,  <33.251713, 35.732819, 49.364651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312645, 36.121273, 49.438076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786918, 0.006809, 0.617020,
		0.597959, -0.238438, 0.765240,
		0.152331, 0.971134, 0.183559,
		33.358345, 36.412613, 49.493145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084900, 35.849491, 50.051853>,  <33.251713, 35.732819, 49.364651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084900, 35.849491, 50.051853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076775, 36.228619, 49.924583>,  <33.071899, 36.456093, 49.848221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076775, 36.228619, 49.924583>,  <33.084900, 35.849491, 50.051853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076775, 36.228619, 49.924583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711303, 0.209940, 0.670800,
		0.702592, 0.239941, 0.669920,
		-0.020309, 0.947815, -0.318173,
		33.070683, 36.512962, 49.829132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096649, 36.313816, 50.640251>,  <33.084900, 35.849491, 50.051853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096649, 36.313816, 50.640251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902241, 36.476929, 50.331059>,  <32.785595, 36.574795, 50.145542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902241, 36.476929, 50.331059>,  <33.096649, 36.313816, 50.640251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902241, 36.476929, 50.331059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804921, 0.135660, 0.577666,
		0.340422, 0.902948, 0.262295,
		-0.486019, 0.407777, -0.772984,
		32.756435, 36.599262, 50.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674660, 36.988003, 50.832069>,  <33.096649, 36.313816, 50.640251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674660, 36.988003, 50.832069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.519188, 36.830872, 50.498695>,  <32.425903, 36.736591, 50.298672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.519188, 36.830872, 50.498695>,  <32.674660, 36.988003, 50.832069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519188, 36.830872, 50.498695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921058, 0.189250, 0.340348,
		0.024028, 0.899928, -0.435377,
		-0.388683, -0.392830, -0.833433,
		32.402584, 36.713024, 50.248665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121815, 37.428436, 50.586567>,  <32.674660, 36.988003, 50.832069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121815, 37.428436, 50.586567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.047550, 37.067818, 50.430241>,  <32.002991, 36.851444, 50.336445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.047550, 37.067818, 50.430241>,  <32.121815, 37.428436, 50.586567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047550, 37.067818, 50.430241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873640, -0.030592, 0.485610,
		-0.449757, 0.431595, -0.781949,
		-0.185666, -0.901549, -0.390817,
		31.991850, 36.797352, 50.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529192, 37.517941, 50.340466>,  <32.121815, 37.428436, 50.586567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529192, 37.517941, 50.340466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.506292, 37.120296, 50.303646>,  <31.492552, 36.881710, 50.281555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.506292, 37.120296, 50.303646>,  <31.529192, 37.517941, 50.340466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506292, 37.120296, 50.303646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936348, 0.021478, 0.350416,
		-0.346375, 0.106248, -0.932060,
		-0.057250, -0.994108, -0.092046,
		31.489117, 36.822063, 50.276031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996851, 37.278931, 49.881046>,  <31.529192, 37.517941, 50.340466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996851, 37.278931, 49.881046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.080053, 36.980991, 50.134640>,  <31.129974, 36.802227, 50.286797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.080053, 36.980991, 50.134640>,  <30.996851, 37.278931, 49.881046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080053, 36.980991, 50.134640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971225, -0.080416, 0.224178,
		-0.115996, -0.662370, -0.740143,
		0.208007, -0.744849, 0.633982,
		31.142456, 36.757538, 50.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553360, 36.626682, 49.702507>,  <30.996851, 37.278931, 49.881046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553360, 36.626682, 49.702507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.675091, 36.596478, 50.082336>,  <30.748129, 36.578354, 50.310234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.675091, 36.596478, 50.082336>,  <30.553360, 36.626682, 49.702507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675091, 36.596478, 50.082336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930295, -0.237865, 0.279234,
		0.204784, -0.968358, -0.142638,
		0.304327, -0.075513, 0.949570,
		30.766390, 36.573822, 50.367207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318844, 35.969666, 49.915188>,  <30.553360, 36.626682, 49.702507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318844, 35.969666, 49.915188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.383238, 36.162510, 50.259666>,  <30.421873, 36.278217, 50.466354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.383238, 36.162510, 50.259666>,  <30.318844, 35.969666, 49.915188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383238, 36.162510, 50.259666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910197, -0.264862, 0.318416,
		0.381609, -0.835117, 0.396174,
		0.160983, 0.482107, 0.861195,
		30.431532, 36.307140, 50.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113363, 35.540054, 50.496864>,  <30.318844, 35.969666, 49.915188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113363, 35.540054, 50.496864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.089598, 35.910431, 50.646053>,  <30.075338, 36.132656, 50.735569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.089598, 35.910431, 50.646053>,  <30.113363, 35.540054, 50.496864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089598, 35.910431, 50.646053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881573, -0.223953, 0.415542,
		0.468294, -0.304115, 0.829587,
		-0.059416, 0.925937, 0.372975,
		30.071774, 36.188213, 50.757946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775988, 35.438374, 51.044796>,  <30.113363, 35.540054, 50.496864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775988, 35.438374, 51.044796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.739647, 35.834816, 51.005917>,  <29.717842, 36.072681, 50.982590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.739647, 35.834816, 51.005917>,  <29.775988, 35.438374, 51.044796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739647, 35.834816, 51.005917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904607, -0.041317, 0.424239,
		0.416452, 0.126468, 0.900319,
		-0.090851, 0.991110, -0.097198,
		29.712391, 36.132149, 50.976757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615721, 35.674843, 51.713539>,  <29.775988, 35.438374, 51.044796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615721, 35.674843, 51.713539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484951, 35.937057, 51.441246>,  <29.406490, 36.094387, 51.277870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484951, 35.937057, 51.441246>,  <29.615721, 35.674843, 51.713539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484951, 35.937057, 51.441246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874842, 0.062526, 0.480356,
		0.357453, 0.752573, 0.553047,
		-0.326923, 0.655533, -0.680733,
		29.386873, 36.133717, 51.237026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297659, 36.135609, 52.151798>,  <29.615721, 35.674843, 51.713539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297659, 36.135609, 52.151798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185127, 36.153221, 51.768360>,  <29.117607, 36.163788, 51.538296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185127, 36.153221, 51.768360>,  <29.297659, 36.135609, 52.151798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185127, 36.153221, 51.768360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959341, 0.010765, 0.282043,
		0.022739, 0.998972, 0.039217,
		-0.281331, 0.044036, -0.958600,
		29.100727, 36.166431, 51.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876034, 36.731441, 52.125687>,  <29.297659, 36.135609, 52.151798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876034, 36.731441, 52.125687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767159, 36.537983, 51.792942>,  <28.701834, 36.421906, 51.593296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767159, 36.537983, 51.792942>,  <28.876034, 36.731441, 52.125687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767159, 36.537983, 51.792942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933180, -0.078195, 0.350799,
		-0.234711, 0.871763, -0.430047,
		-0.272187, -0.483648, -0.831865,
		28.685503, 36.392887, 51.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201895, 36.879997, 51.990940>,  <28.876034, 36.731441, 52.125687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201895, 36.879997, 51.990940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.218008, 36.558647, 51.753300>,  <28.227676, 36.365837, 51.610714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.218008, 36.558647, 51.753300>,  <28.201895, 36.879997, 51.990940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218008, 36.558647, 51.753300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947645, -0.219223, 0.232188,
		-0.316776, 0.553644, -0.770150,
		0.040285, -0.803380, -0.594103,
		28.230093, 36.317635, 51.575069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727306, 37.011284, 51.472248>,  <28.201895, 36.879997, 51.990940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727306, 37.011284, 51.472248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.762207, 36.616421, 51.418728>,  <27.783148, 36.379501, 51.386616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.762207, 36.616421, 51.418728>,  <27.727306, 37.011284, 51.472248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762207, 36.616421, 51.418728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993431, -0.096206, 0.061966,
		-0.074042, 0.127516, -0.989069,
		0.087253, -0.987160, -0.133802,
		27.788383, 36.320274, 51.378586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149290, 36.843586, 51.040733>,  <27.727306, 37.011284, 51.472248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149290, 36.843586, 51.040733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.260307, 36.501324, 51.215469>,  <27.326918, 36.295967, 51.320312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.260307, 36.501324, 51.215469>,  <27.149290, 36.843586, 51.040733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260307, 36.501324, 51.215469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959366, -0.270916, 0.078871,
		0.050861, -0.440980, -0.896075,
		0.277542, -0.855653, 0.436841,
		27.343571, 36.244629, 51.346523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657154, 36.451477, 50.746719>,  <27.149290, 36.843586, 51.040733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657154, 36.451477, 50.746719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.781324, 36.217087, 51.046124>,  <26.855827, 36.076450, 51.225765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.781324, 36.217087, 51.046124>,  <26.657154, 36.451477, 50.746719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781324, 36.217087, 51.046124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920084, -0.383118, 0.081653,
		0.238920, -0.714037, -0.658080,
		0.310425, -0.585980, 0.748508,
		26.874453, 36.041294, 51.270676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208765, 35.953720, 50.750092>,  <26.657154, 36.451477, 50.746719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208765, 35.953720, 50.750092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381420, 35.896408, 51.106331>,  <26.485012, 35.862019, 51.320072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381420, 35.896408, 51.106331>,  <26.208765, 35.953720, 50.750092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381420, 35.896408, 51.106331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827154, -0.456752, 0.327405,
		0.359870, -0.877980, -0.315667,
		0.431636, -0.143282, 0.890596,
		26.510912, 35.853424, 51.373508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111500, 35.247837, 50.962734>,  <26.208765, 35.953720, 50.750092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111500, 35.247837, 50.962734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.179609, 35.457844, 51.296288>,  <26.220474, 35.583847, 51.496422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.179609, 35.457844, 51.296288>,  <26.111500, 35.247837, 50.962734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179609, 35.457844, 51.296288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698741, -0.532368, 0.477855,
		0.694815, -0.664036, 0.276202,
		0.170272, 0.525015, 0.833887,
		26.230690, 35.615349, 51.546455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024208, 34.768009, 51.435047>,  <26.111500, 35.247837, 50.962734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024208, 34.768009, 51.435047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.987831, 35.103680, 51.649529>,  <25.966005, 35.305080, 51.778217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.987831, 35.103680, 51.649529>,  <26.024208, 34.768009, 51.435047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987831, 35.103680, 51.649529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732728, -0.421028, 0.534645,
		0.674418, -0.344271, 0.653175,
		-0.090942, 0.839174, 0.536206,
		25.960548, 35.355431, 51.810390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776684, 34.487381, 52.086460>,  <26.024208, 34.768009, 51.435047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776684, 34.487381, 52.086460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.718168, 34.882725, 52.103130>,  <25.683060, 35.119930, 52.113132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.718168, 34.882725, 52.103130>,  <25.776684, 34.487381, 52.086460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718168, 34.882725, 52.103130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742082, -0.137497, 0.656055,
		0.654151, 0.065049, 0.753561,
		-0.146288, 0.988364, 0.041672,
		25.674282, 35.179234, 52.115631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779922, 34.737850, 52.816353>,  <25.776684, 34.487381, 52.086460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779922, 34.737850, 52.816353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.559898, 34.996868, 52.605404>,  <25.427885, 35.152279, 52.478836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.559898, 34.996868, 52.605404>,  <25.779922, 34.737850, 52.816353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559898, 34.996868, 52.605404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783159, -0.180687, 0.594991,
		0.289995, 0.740294, 0.606521,
		-0.550058, 0.647547, -0.527370,
		25.394880, 35.191132, 52.447193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530331, 35.264774, 53.284973>,  <25.779922, 34.737850, 52.816353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530331, 35.264774, 53.284973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.279739, 35.252239, 52.973450>,  <25.129385, 35.244717, 52.786537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.279739, 35.252239, 52.973450>,  <25.530331, 35.264774, 53.284973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279739, 35.252239, 52.973450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760974, -0.191599, 0.619845,
		-0.168646, 0.980973, 0.096182,
		-0.626480, -0.031342, -0.778807,
		25.091795, 35.242836, 52.739807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.794113, 32.924736, 50.138664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833282, 32.641315, 50.418198>,  <35.856785, 32.471264, 50.585918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833282, 32.641315, 50.418198>,  <35.794113, 32.924736, 50.138664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833282, 32.641315, 50.418198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973229, -0.214896, -0.081514,
		0.207933, -0.672142, -0.710626,
		0.097922, -0.708551, 0.698832,
		35.862659, 32.428749, 50.627846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776524, 33.650642, 49.821404>,  <35.794113, 32.924736, 50.138664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776524, 33.650642, 49.821404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384079, 33.589241, 49.774307>,  <35.148613, 33.552399, 49.746048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384079, 33.589241, 49.774307>,  <35.776524, 33.650642, 49.821404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384079, 33.589241, 49.774307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175775, 0.453079, 0.873969,
		-0.080808, 0.878155, -0.471501,
		-0.981108, -0.153502, -0.117745,
		35.089748, 33.543190, 49.738983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538181, 34.288769, 49.831051>,  <35.776524, 33.650642, 49.821404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538181, 34.288769, 49.831051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261906, 34.025948, 49.951870>,  <35.096142, 33.868256, 50.024361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261906, 34.025948, 49.951870>,  <35.538181, 34.288769, 49.831051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261906, 34.025948, 49.951870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138823, 0.530381, 0.836316,
		-0.709705, 0.535700, -0.457541,
		-0.690686, -0.657055, 0.302046,
		35.054699, 33.828831, 50.042484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065899, 34.634392, 50.196205>,  <35.538181, 34.288769, 49.831051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065899, 34.634392, 50.196205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970997, 34.264496, 50.315243>,  <34.914055, 34.042557, 50.386665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970997, 34.264496, 50.315243>,  <35.065899, 34.634392, 50.196205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970997, 34.264496, 50.315243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278547, 0.358235, 0.891111,
		-0.930656, 0.128529, -0.342578,
		-0.237257, -0.924742, 0.297593,
		34.899818, 33.987072, 50.404522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387028, 34.601803, 50.371403>,  <35.065899, 34.634392, 50.196205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387028, 34.601803, 50.371403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525505, 34.294018, 50.586098>,  <34.608589, 34.109348, 50.714916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525505, 34.294018, 50.586098>,  <34.387028, 34.601803, 50.371403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525505, 34.294018, 50.586098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498764, 0.333613, 0.799961,
		-0.794599, -0.544643, -0.268285,
		0.346190, -0.769459, 0.536737,
		34.629360, 34.063179, 50.747120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892628, 34.493969, 50.809650>,  <34.387028, 34.601803, 50.371403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892628, 34.493969, 50.809650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174034, 34.269943, 50.984646>,  <34.342876, 34.135529, 51.089642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174034, 34.269943, 50.984646>,  <33.892628, 34.493969, 50.809650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174034, 34.269943, 50.984646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423607, 0.163814, 0.890911,
		-0.570634, -0.812091, -0.122002,
		0.703516, -0.560065, 0.437485,
		34.385090, 34.101925, 51.115891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551895, 34.037224, 51.300114>,  <33.892628, 34.493969, 50.809650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551895, 34.037224, 51.300114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.933933, 34.064342, 51.415485>,  <34.163158, 34.080612, 51.484707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.933933, 34.064342, 51.415485>,  <33.551895, 34.037224, 51.300114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933933, 34.064342, 51.415485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295441, 0.144440, 0.944379,
		0.022362, -0.987189, 0.157983,
		0.955099, 0.067793, 0.288426,
		34.220463, 34.084682, 51.502014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529495, 33.764664, 51.942833>,  <33.551895, 34.037224, 51.300114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529495, 33.764664, 51.942833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864605, 33.982918, 51.951027>,  <34.065670, 34.113873, 51.955944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864605, 33.982918, 51.951027>,  <33.529495, 33.764664, 51.942833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864605, 33.982918, 51.951027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147347, 0.189800, 0.970703,
		0.525764, -0.816245, 0.239407,
		0.837771, 0.545637, 0.020481,
		34.115936, 34.146610, 51.957172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905521, 33.537125, 52.472610>,  <33.529495, 33.764664, 51.942833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905521, 33.537125, 52.472610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016064, 33.916328, 52.409489>,  <34.082390, 34.143852, 52.371616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016064, 33.916328, 52.409489>,  <33.905521, 33.537125, 52.472610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016064, 33.916328, 52.409489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202177, 0.217869, 0.954807,
		0.939548, -0.231966, 0.251876,
		0.276358, 0.948011, -0.157800,
		34.098972, 34.200733, 52.362148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301937, 33.657875, 53.020798>,  <33.905521, 33.537125, 52.472610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301937, 33.657875, 53.020798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237595, 34.036537, 52.909111>,  <34.198990, 34.263737, 52.842098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237595, 34.036537, 52.909111>,  <34.301937, 33.657875, 53.020798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237595, 34.036537, 52.909111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206172, 0.244435, 0.947494,
		0.965204, 0.209976, 0.155856,
		-0.160855, 0.946658, -0.279221,
		34.189339, 34.320534, 52.825344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831127, 34.074322, 53.394215>,  <34.301937, 33.657875, 53.020798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831127, 34.074322, 53.394215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518135, 34.302200, 53.293682>,  <34.330341, 34.438927, 53.233360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518135, 34.302200, 53.293682>,  <34.831127, 34.074322, 53.394215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518135, 34.302200, 53.293682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091831, 0.293641, 0.951495,
		0.615869, 0.767604, -0.177452,
		-0.782479, 0.569700, -0.251334,
		34.283390, 34.473110, 53.218281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964252, 34.691128, 53.784882>,  <34.831127, 34.074322, 53.394215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964252, 34.691128, 53.784882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577393, 34.721634, 53.687889>,  <34.345276, 34.739937, 53.629692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577393, 34.721634, 53.687889>,  <34.964252, 34.691128, 53.784882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577393, 34.721634, 53.687889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194626, 0.391454, 0.899380,
		0.163513, 0.917032, -0.363752,
		-0.967153, 0.076265, -0.242486,
		34.287247, 34.744514, 53.615143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157188, 35.302261, 53.408691>,  <34.964252, 34.691128, 53.784882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157188, 35.302261, 53.408691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501999, 35.503891, 53.429955>,  <35.708885, 35.624870, 53.442711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501999, 35.503891, 53.429955>,  <35.157188, 35.302261, 53.408691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501999, 35.503891, 53.429955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101411, -0.068767, -0.992465,
		-0.496620, 0.860919, -0.110397,
		0.862023, 0.504073, 0.053156,
		35.760605, 35.655113, 53.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199230, 35.718369, 52.713196>,  <35.157188, 35.302261, 53.408691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199230, 35.718369, 52.713196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559418, 35.711296, 52.887020>,  <35.775532, 35.707054, 52.991314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559418, 35.711296, 52.887020>,  <35.199230, 35.718369, 52.713196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559418, 35.711296, 52.887020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430866, -0.099883, -0.896871,
		0.059264, 0.994842, -0.082323,
		0.900468, -0.017682, 0.434563,
		35.829559, 35.705990, 53.017387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620708, 36.026272, 52.223167>,  <35.199230, 35.718369, 52.713196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620708, 36.026272, 52.223167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880692, 35.843868, 52.466351>,  <36.036682, 35.734425, 52.612263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880692, 35.843868, 52.466351>,  <35.620708, 36.026272, 52.223167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880692, 35.843868, 52.466351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627721, -0.128820, -0.767705,
		0.428398, 0.880603, 0.202519,
		0.649955, -0.456009, 0.607960,
		36.075680, 35.707066, 52.648739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246243, 36.457031, 52.321655>,  <35.620708, 36.026272, 52.223167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246243, 36.457031, 52.321655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349121, 36.076000, 52.386696>,  <36.410851, 35.847382, 52.425720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349121, 36.076000, 52.386696>,  <36.246243, 36.457031, 52.321655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349121, 36.076000, 52.386696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596556, 0.024138, -0.802208,
		0.760243, 0.303327, 0.574476,
		0.257198, -0.952581, 0.162601,
		36.426281, 35.790226, 52.435474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990749, 36.422398, 52.159985>,  <36.246243, 36.457031, 52.321655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990749, 36.422398, 52.159985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873924, 36.039852, 52.156937>,  <36.803829, 35.810326, 52.155109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873924, 36.039852, 52.156937>,  <36.990749, 36.422398, 52.159985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873924, 36.039852, 52.156937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490845, -0.143054, -0.859422,
		0.820835, -0.254745, 0.511210,
		-0.292064, -0.956368, -0.007616,
		36.786304, 35.752941, 52.154652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640545, 36.106911, 52.185120>,  <36.990749, 36.422398, 52.159985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640545, 36.106911, 52.185120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370636, 35.843441, 52.051956>,  <37.208691, 35.685360, 51.972057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370636, 35.843441, 52.051956>,  <37.640545, 36.106911, 52.185120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370636, 35.843441, 52.051956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572966, -0.183219, -0.798837,
		0.465179, -0.729779, 0.501029,
		-0.674773, -0.658676, -0.332909,
		37.168205, 35.645840, 51.952084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036167, 35.476398, 52.031395>,  <37.640545, 36.106911, 52.185120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036167, 35.476398, 52.031395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689529, 35.476379, 51.831791>,  <37.481544, 35.476368, 51.712029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689529, 35.476379, 51.831791>,  <38.036167, 35.476398, 52.031395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689529, 35.476379, 51.831791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484352, -0.240646, -0.841126,
		-0.120044, -0.970613, 0.208566,
		-0.866598, -0.000047, -0.499006,
		37.429550, 35.476364, 51.682091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066086, 34.922848, 51.556179>,  <38.036167, 35.476398, 52.031395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066086, 34.922848, 51.556179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754871, 35.122704, 51.403854>,  <37.568142, 35.242619, 51.312458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754871, 35.122704, 51.403854>,  <38.066086, 34.922848, 51.556179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754871, 35.122704, 51.403854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332442, -0.186890, -0.924421,
		-0.533047, -0.845832, -0.020693,
		-0.778038, 0.499640, -0.380811,
		37.521461, 35.272594, 51.289612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022194, 34.564659, 50.871979>,  <38.066086, 34.922848, 51.556179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022194, 34.564659, 50.871979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792862, 34.890244, 50.834522>,  <37.655262, 35.085594, 50.812050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792862, 34.890244, 50.834522>,  <38.022194, 34.564659, 50.871979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792862, 34.890244, 50.834522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227437, 0.048311, -0.972594,
		-0.787127, -0.578911, -0.212822,
		-0.573327, 0.813959, -0.093639,
		37.620865, 35.134430, 50.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435127, 34.521561, 50.275097>,  <38.022194, 34.564659, 50.871979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435127, 34.521561, 50.275097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524422, 34.904900, 50.346355>,  <37.577999, 35.134903, 50.389111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524422, 34.904900, 50.346355>,  <37.435127, 34.521561, 50.275097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524422, 34.904900, 50.346355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247106, 0.121155, -0.961384,
		-0.942924, 0.258636, -0.209768,
		0.223234, 0.958347, 0.178150,
		37.591393, 35.192402, 50.399799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138351, 34.895126, 49.728577>,  <37.435127, 34.521561, 50.275097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138351, 34.895126, 49.728577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408310, 35.148808, 49.879467>,  <37.570286, 35.301018, 49.970001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408310, 35.148808, 49.879467>,  <37.138351, 34.895126, 49.728577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408310, 35.148808, 49.879467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295647, 0.235992, -0.925689,
		-0.676100, 0.736269, -0.028231,
		0.674894, 0.634205, 0.377230,
		37.610779, 35.339069, 49.992638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917225, 35.601223, 49.438389>,  <37.138351, 34.895126, 49.728577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917225, 35.601223, 49.438389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298805, 35.629551, 49.554981>,  <37.527752, 35.646549, 49.624935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298805, 35.629551, 49.554981>,  <36.917225, 35.601223, 49.438389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298805, 35.629551, 49.554981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247674, 0.362214, -0.898587,
		-0.169216, 0.929401, 0.327994,
		0.953951, 0.070820, 0.291481,
		37.584991, 35.650795, 49.642426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111774, 36.363049, 49.482582>,  <36.917225, 35.601223, 49.438389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111774, 36.363049, 49.482582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131691, 36.760941, 49.518448>,  <37.143642, 36.999676, 49.539967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131691, 36.760941, 49.518448>,  <37.111774, 36.363049, 49.482582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131691, 36.760941, 49.518448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862017, 0.002540, -0.506873,
		-0.504428, 0.102529, -0.857345,
		0.049791, 0.994727, 0.089663,
		37.146629, 37.059357, 49.545345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177914, 36.590527, 48.859501>,  <37.111774, 36.363049, 49.482582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177914, 36.590527, 48.859501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360161, 36.852207, 49.100971>,  <37.469509, 37.009216, 49.245853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360161, 36.852207, 49.100971>,  <37.177914, 36.590527, 48.859501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360161, 36.852207, 49.100971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776079, 0.040246, -0.629350,
		-0.436019, 0.755247, -0.489376,
		0.455620, 0.654203, 0.603679,
		37.496845, 37.048470, 49.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466793, 37.216827, 48.518387>,  <37.177914, 36.590527, 48.859501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466793, 37.216827, 48.518387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715145, 37.225552, 48.831825>,  <37.864159, 37.230785, 49.019890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715145, 37.225552, 48.831825>,  <37.466793, 37.216827, 48.518387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715145, 37.225552, 48.831825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777430, 0.111065, -0.619085,
		-0.100532, 0.993574, 0.052004,
		0.620883, 0.021808, 0.783600,
		37.901409, 37.232094, 49.066906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852379, 37.897202, 48.603416>,  <37.466793, 37.216827, 48.518387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852379, 37.897202, 48.603416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063316, 37.595943, 48.760731>,  <38.189880, 37.415188, 48.855122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063316, 37.595943, 48.760731>,  <37.852379, 37.897202, 48.603416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063316, 37.595943, 48.760731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831621, 0.362685, -0.420555,
		0.174098, 0.548847, 0.817592,
		0.527349, -0.753144, 0.393290,
		38.221519, 37.369999, 48.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124092, 37.859180, 48.426441>,  <37.852379, 37.897202, 48.603416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124092, 37.859180, 48.426441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794346, 37.999321, 48.248600>,  <36.596497, 38.083405, 48.141895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794346, 37.999321, 48.248600>,  <37.124092, 37.859180, 48.426441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794346, 37.999321, 48.248600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093884, 0.689937, 0.717755,
		0.558216, 0.633435, -0.535869,
		-0.824367, 0.350352, -0.444603,
		36.547035, 38.104427, 48.115219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188087, 38.487633, 48.363720>,  <37.124092, 37.859180, 48.426441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188087, 38.487633, 48.363720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790424, 38.483578, 48.320747>,  <36.551826, 38.481144, 48.294964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790424, 38.483578, 48.320747>,  <37.188087, 38.487633, 48.363720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790424, 38.483578, 48.320747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073108, 0.795569, 0.601435,
		0.079369, 0.605778, -0.791665,
		-0.994161, -0.010141, -0.107431,
		36.492176, 38.480534, 48.288517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082493, 39.176830, 48.196461>,  <37.188087, 38.487633, 48.363720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082493, 39.176830, 48.196461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725319, 39.032051, 48.303543>,  <36.511013, 38.945183, 48.367790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725319, 39.032051, 48.303543>,  <37.082493, 39.176830, 48.196461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725319, 39.032051, 48.303543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180769, 0.832873, 0.523112,
		-0.412299, 0.418712, -0.809129,
		-0.892934, -0.361944, 0.267703,
		36.457439, 38.923470, 48.383854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581787, 39.692886, 48.148228>,  <37.082493, 39.176830, 48.196461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581787, 39.692886, 48.148228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449711, 39.420155, 48.409328>,  <36.370464, 39.256516, 48.565987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449711, 39.420155, 48.409328>,  <36.581787, 39.692886, 48.148228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449711, 39.420155, 48.409328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247068, 0.729853, 0.637395,
		-0.911006, 0.049187, -0.409449,
		-0.330189, -0.681833, 0.652748,
		36.350655, 39.215603, 48.605152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925552, 39.830811, 48.281269>,  <36.581787, 39.692886, 48.148228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925552, 39.830811, 48.281269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023830, 39.619244, 48.606201>,  <36.082798, 39.492302, 48.801159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023830, 39.619244, 48.606201>,  <35.925552, 39.830811, 48.281269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023830, 39.619244, 48.606201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332178, 0.741336, 0.583163,
		-0.910654, -0.413119, 0.006449,
		0.245697, -0.528917, 0.812330,
		36.097538, 39.460567, 48.849899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457760, 40.066242, 48.734352>,  <35.925552, 39.830811, 48.281269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457760, 40.066242, 48.734352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711769, 39.884930, 48.984566>,  <35.864174, 39.776142, 49.134693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711769, 39.884930, 48.984566>,  <35.457760, 40.066242, 48.734352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711769, 39.884930, 48.984566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336238, 0.566837, 0.752090,
		-0.695482, -0.687918, 0.207542,
		0.635018, -0.453282, 0.625529,
		35.902275, 39.748943, 49.172226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029255, 39.838261, 49.266975>,  <35.457760, 40.066242, 48.734352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029255, 39.838261, 49.266975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405552, 39.874081, 49.397812>,  <35.631329, 39.895573, 49.476315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405552, 39.874081, 49.397812>,  <35.029255, 39.838261, 49.266975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405552, 39.874081, 49.397812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319502, 0.557404, 0.766302,
		-0.113705, -0.825398, 0.552982,
		0.940739, 0.089547, 0.327096,
		35.687775, 39.900944, 49.495941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950653, 39.735317, 49.968712>,  <35.029255, 39.838261, 49.266975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950653, 39.735317, 49.968712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292339, 39.931057, 49.898445>,  <35.497349, 40.048500, 49.856285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292339, 39.931057, 49.898445>,  <34.950653, 39.735317, 49.968712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292339, 39.931057, 49.898445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183382, 0.599720, 0.778914,
		0.486511, -0.633144, 0.602026,
		0.854212, 0.489351, -0.175664,
		35.548603, 40.077862, 49.845745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249760, 39.772541, 50.612545>,  <34.950653, 39.735317, 49.968712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249760, 39.772541, 50.612545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411953, 40.062973, 50.390415>,  <35.509270, 40.237232, 50.257137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411953, 40.062973, 50.390415>,  <35.249760, 39.772541, 50.612545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411953, 40.062973, 50.390415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142813, 0.650373, 0.746069,
		0.902876, -0.223213, 0.367411,
		0.405487, 0.726079, -0.555329,
		35.533600, 40.280796, 50.223816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661556, 40.090622, 51.084576>,  <35.249760, 39.772541, 50.612545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661556, 40.090622, 51.084576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630543, 40.361557, 50.791946>,  <35.611935, 40.524117, 50.616367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630543, 40.361557, 50.791946>,  <35.661556, 40.090622, 51.084576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630543, 40.361557, 50.791946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070653, 0.735674, 0.673641,
		0.994483, 0.000545, -0.104898,
		-0.077537, 0.677336, -0.731577,
		35.607281, 40.564758, 50.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071430, 40.619030, 51.333210>,  <35.661556, 40.090622, 51.084576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071430, 40.619030, 51.333210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825710, 40.771381, 51.056786>,  <35.678276, 40.862793, 50.890930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825710, 40.771381, 51.056786>,  <36.071430, 40.619030, 51.333210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825710, 40.771381, 51.056786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185566, 0.781499, 0.595672,
		0.766940, 0.494161, -0.409400,
		-0.614304, 0.380874, -0.691062,
		35.641418, 40.885643, 50.849468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143414, 41.323044, 51.297184>,  <36.071430, 40.619030, 51.333210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143414, 41.323044, 51.297184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774822, 41.278919, 51.148209>,  <35.553669, 41.252445, 51.058823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774822, 41.278919, 51.148209>,  <36.143414, 41.323044, 51.297184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774822, 41.278919, 51.148209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332154, 0.720870, 0.608292,
		0.201373, 0.684234, -0.700908,
		-0.921478, -0.110316, -0.372435,
		35.498379, 41.245823, 51.036480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851589, 41.999016, 51.177975>,  <36.143414, 41.323044, 51.297184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851589, 41.999016, 51.177975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526783, 41.766815, 51.202118>,  <35.331898, 41.627495, 51.216606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526783, 41.766815, 51.202118>,  <35.851589, 41.999016, 51.177975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526783, 41.766815, 51.202118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401766, 0.631004, 0.663639,
		-0.423331, 0.514637, -0.745613,
		-0.812019, -0.580501, 0.060360,
		35.283176, 41.592667, 51.220226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270622, 42.461811, 51.313923>,  <35.851589, 41.999016, 51.177975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270622, 42.461811, 51.313923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143623, 42.104992, 51.442574>,  <35.067425, 41.890900, 51.519764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143623, 42.104992, 51.442574>,  <35.270622, 42.461811, 51.313923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143623, 42.104992, 51.442574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528910, 0.448104, 0.720734,
		-0.787052, 0.058719, -0.614085,
		-0.317495, -0.892051, 0.321624,
		35.048374, 41.837376, 51.539062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631840, 42.544613, 51.495522>,  <35.270622, 42.461811, 51.313923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631840, 42.544613, 51.495522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713299, 42.206791, 51.693615>,  <34.762173, 42.004097, 51.812469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713299, 42.206791, 51.693615>,  <34.631840, 42.544613, 51.495522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713299, 42.206791, 51.693615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502025, 0.344188, 0.793414,
		-0.840535, -0.410195, -0.353895,
		0.203648, -0.844556, 0.495230,
		34.774391, 41.953423, 51.842182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955780, 42.373932, 51.776318>,  <34.631840, 42.544613, 51.495522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955780, 42.373932, 51.776318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208309, 42.129326, 51.967098>,  <34.359825, 41.982563, 52.081566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208309, 42.129326, 51.967098>,  <33.955780, 42.373932, 51.776318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208309, 42.129326, 51.967098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386063, 0.285565, 0.877159,
		-0.672596, -0.737903, -0.055800,
		0.631323, -0.611516, 0.476947,
		34.397705, 41.945869, 52.110184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510410, 41.935432, 52.283283>,  <33.955780, 42.373932, 51.776318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510410, 41.935432, 52.283283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885380, 41.956676, 52.420933>,  <34.110359, 41.969425, 52.503521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885380, 41.956676, 52.420933>,  <33.510410, 41.935432, 52.283283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885380, 41.956676, 52.420933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342950, 0.311730, 0.886121,
		-0.060209, -0.948685, 0.310437,
		0.937422, 0.053112, 0.344121,
		34.166607, 41.972610, 52.524170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452427, 41.675716, 52.939220>,  <33.510410, 41.935432, 52.283283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452427, 41.675716, 52.939220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801846, 41.870308, 52.932774>,  <34.011497, 41.987064, 52.928905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801846, 41.870308, 52.932774>,  <33.452427, 41.675716, 52.939220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801846, 41.870308, 52.932774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097148, 0.206699, 0.973570,
		0.476956, -0.848888, 0.227821,
		0.873542, 0.486482, -0.016119,
		34.063908, 42.016251, 52.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661026, 41.508442, 53.563976>,  <33.452427, 41.675716, 52.939220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661026, 41.508442, 53.563976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900471, 41.818993, 53.485085>,  <34.044136, 42.005325, 53.437752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900471, 41.818993, 53.485085>,  <33.661026, 41.508442, 53.563976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900471, 41.818993, 53.485085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002745, 0.248201, 0.968705,
		0.801035, -0.579336, 0.150707,
		0.598611, 0.776380, -0.197227,
		34.080055, 42.051907, 53.425915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247345, 41.462734, 54.056858>,  <33.661026, 41.508442, 53.563976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247345, 41.462734, 54.056858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196720, 41.844315, 53.948071>,  <34.166348, 42.073261, 53.882797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196720, 41.844315, 53.948071>,  <34.247345, 41.462734, 54.056858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196720, 41.844315, 53.948071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166052, 0.249932, 0.953919,
		0.977962, 0.165887, 0.126774,
		-0.126558, 0.953947, -0.271970,
		34.158752, 42.130497, 53.866478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661415, 41.796921, 54.473442>,  <34.247345, 41.462734, 54.056858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661415, 41.796921, 54.473442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442326, 42.099266, 54.329960>,  <34.310871, 42.280674, 54.243870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442326, 42.099266, 54.329960>,  <34.661415, 41.796921, 54.473442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442326, 42.099266, 54.329960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282715, 0.236310, 0.929640,
		0.787445, 0.610599, 0.084260,
		-0.547725, 0.755861, -0.358707,
		34.278008, 42.326023, 54.222347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853745, 42.306156, 54.941280>,  <34.661415, 41.796921, 54.473442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853745, 42.306156, 54.941280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532806, 42.456718, 54.756001>,  <34.340244, 42.547058, 54.644833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532806, 42.456718, 54.756001>,  <34.853745, 42.306156, 54.941280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532806, 42.456718, 54.756001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355844, 0.321384, 0.877546,
		0.479183, 0.868923, -0.123918,
		-0.802346, 0.376410, -0.463203,
		34.292103, 42.569641, 54.617039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717930, 43.003532, 55.232506>,  <34.853745, 42.306156, 54.941280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717930, 43.003532, 55.232506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370445, 42.876762, 55.080250>,  <34.161953, 42.800701, 54.988895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370445, 42.876762, 55.080250>,  <34.717930, 43.003532, 55.232506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370445, 42.876762, 55.080250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434650, 0.119267, 0.892667,
		-0.237513, 0.940921, -0.241362,
		-0.868716, -0.316928, -0.380643,
		34.109829, 42.781685, 54.966057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178600, 43.552063, 55.324581>,  <34.717930, 43.003532, 55.232506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178600, 43.552063, 55.324581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994076, 43.198261, 55.296726>,  <33.883362, 42.985981, 55.280014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994076, 43.198261, 55.296726>,  <34.178600, 43.552063, 55.324581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994076, 43.198261, 55.296726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541136, 0.218286, 0.812110,
		-0.703113, 0.412316, -0.579334,
		-0.461307, -0.884503, -0.069639,
		33.855682, 42.932911, 55.275833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538967, 43.703327, 55.430046>,  <34.178600, 43.552063, 55.324581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538967, 43.703327, 55.430046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.556938, 43.311695, 55.509422>,  <33.567722, 43.076714, 55.557049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.556938, 43.311695, 55.509422>,  <33.538967, 43.703327, 55.430046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556938, 43.311695, 55.509422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432597, 0.159979, 0.887280,
		-0.900467, -0.125706, -0.416361,
		0.044927, -0.979084, 0.198436,
		33.570415, 43.017971, 55.568954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934856, 43.561481, 55.684696>,  <33.538967, 43.703327, 55.430046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934856, 43.561481, 55.684696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159306, 43.270092, 55.841900>,  <33.293976, 43.095257, 55.936222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159306, 43.270092, 55.841900>,  <32.934856, 43.561481, 55.684696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159306, 43.270092, 55.841900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451988, 0.128106, 0.882777,
		-0.693431, -0.672985, -0.257380,
		0.561124, -0.728478, 0.393014,
		33.327644, 43.051548, 55.959805>
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
