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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.335392, 53.394413, 50.154884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612984, 53.113853, 50.089855>,  <36.779537, 52.945518, 50.050838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612984, 53.113853, 50.089855>,  <36.335392, 53.394413, 50.154884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612984, 53.113853, 50.089855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653706, 0.708447, -0.266031,
		0.301768, 0.078346, 0.950157,
		0.693978, -0.701402, -0.162572,
		36.821178, 52.903431, 50.041084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081806, 53.408127, 50.261955>,  <36.335392, 53.394413, 50.154884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081806, 53.408127, 50.261955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783657, 53.357780, 50.523815>,  <36.604767, 53.327572, 50.680931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783657, 53.357780, 50.523815>,  <37.081806, 53.408127, 50.261955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783657, 53.357780, 50.523815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664229, -0.056699, 0.745376,
		-0.056699, 0.990426, 0.125865,
		-0.745376, -0.125865, 0.654655,
		36.560043, 53.320023, 50.720211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844494, 53.193508, 50.461033>,  <37.081806, 53.408127, 50.261955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844494, 53.193508, 50.461033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178917, 53.399048, 50.384132>,  <38.379570, 53.522373, 50.337994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178917, 53.399048, 50.384132>,  <37.844494, 53.193508, 50.461033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178917, 53.399048, 50.384132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395855, -0.807611, -0.437108,
		-0.379873, 0.289345, -0.878622,
		0.836060, 0.513852, -0.192251,
		38.429733, 53.553204, 50.326458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080227, 52.930672, 49.766602>,  <37.844494, 53.193508, 50.461033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080227, 52.930672, 49.766602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399998, 53.104141, 49.932903>,  <38.591858, 53.208225, 50.032684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399998, 53.104141, 49.932903>,  <38.080227, 52.930672, 49.766602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399998, 53.104141, 49.932903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573833, -0.756098, -0.314692,
		0.177874, 0.490143, -0.853300,
		0.799423, 0.433676, 0.415750,
		38.639824, 53.234245, 50.057629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696133, 53.062374, 49.292797>,  <38.080227, 52.930672, 49.766602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696133, 53.062374, 49.292797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822605, 52.998501, 49.666862>,  <38.898491, 52.960178, 49.891300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822605, 52.998501, 49.666862>,  <38.696133, 53.062374, 49.292797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822605, 52.998501, 49.666862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546928, -0.774757, -0.317209,
		0.775176, 0.611763, -0.157632,
		0.316184, -0.159680, 0.935163,
		38.917461, 52.950596, 49.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440762, 52.974995, 49.299286>,  <38.696133, 53.062374, 49.292797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440762, 52.974995, 49.299286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273796, 52.768948, 49.598732>,  <39.173618, 52.645321, 49.778400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273796, 52.768948, 49.598732>,  <39.440762, 52.974995, 49.299286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273796, 52.768948, 49.598732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494648, -0.819868, -0.288341,
		0.762293, 0.249943, 0.597024,
		-0.417412, -0.515117, 0.748613,
		39.148571, 52.614414, 49.823315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883739, 53.479637, 48.947002>,  <39.440762, 52.974995, 49.299286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883739, 53.479637, 48.947002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933453, 53.408058, 49.337395>,  <39.963280, 53.365108, 49.571629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933453, 53.408058, 49.337395>,  <39.883739, 53.479637, 48.947002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933453, 53.408058, 49.337395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910593, 0.370174, 0.183827,
		-0.394177, -0.911563, -0.116947,
		0.124279, -0.178951, 0.975977,
		39.970737, 53.354374, 49.630188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522221, 52.927784, 48.784607>,  <39.883739, 53.479637, 48.947002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522221, 52.927784, 48.784607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493252, 53.325806, 48.757389>,  <40.475872, 53.564617, 48.741058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493252, 53.325806, 48.757389>,  <40.522221, 52.927784, 48.784607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493252, 53.325806, 48.757389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754834, 0.010089, -0.655839,
		-0.651906, -0.098860, -0.751828,
		-0.072422, 0.995050, -0.068045,
		40.471527, 53.624321, 48.736977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099514, 53.224487, 49.034351>,  <40.522221, 52.927784, 48.784607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099514, 53.224487, 49.034351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107616, 53.619522, 49.096649>,  <41.112476, 53.856544, 49.134029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107616, 53.619522, 49.096649>,  <41.099514, 53.224487, 49.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107616, 53.619522, 49.096649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497899, -0.145051, 0.855018,
		0.866998, 0.060225, -0.494658,
		0.020258, 0.987590, 0.155745,
		41.113693, 53.915798, 49.143372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759647, 53.431442, 49.138309>,  <41.099514, 53.224487, 49.034351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759647, 53.431442, 49.138309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530678, 53.695053, 49.333454>,  <41.393295, 53.853218, 49.450542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530678, 53.695053, 49.333454>,  <41.759647, 53.431442, 49.138309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530678, 53.695053, 49.333454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625626, -0.033560, 0.779401,
		0.530017, 0.751372, -0.393093,
		-0.572428, 0.659025, 0.487866,
		41.358948, 53.892761, 49.479813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124084, 54.141941, 49.327045>,  <41.759647, 53.431442, 49.138309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124084, 54.141941, 49.327045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835316, 54.009983, 49.570358>,  <41.662056, 53.930809, 49.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835316, 54.009983, 49.570358>,  <42.124084, 54.141941, 49.327045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835316, 54.009983, 49.570358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686461, -0.230665, 0.689612,
		-0.087188, 0.915404, 0.392980,
		-0.721920, -0.329891, 0.608278,
		41.618740, 53.911015, 49.752842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089645, 54.434071, 50.073803>,  <42.124084, 54.141941, 49.327045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089645, 54.434071, 50.073803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918430, 54.072655, 50.081810>,  <41.815701, 53.855804, 50.086613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918430, 54.072655, 50.081810>,  <42.089645, 54.434071, 50.073803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918430, 54.072655, 50.081810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789449, -0.363022, 0.494959,
		-0.439950, 0.227660, 0.868685,
		-0.428035, -0.903541, 0.020014,
		41.790020, 53.801594, 50.087814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969803, 54.186806, 50.803795>,  <42.089645, 54.434071, 50.073803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969803, 54.186806, 50.803795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077446, 53.906757, 50.539246>,  <42.142033, 53.738728, 50.380516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077446, 53.906757, 50.539246>,  <41.969803, 54.186806, 50.803795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077446, 53.906757, 50.539246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742654, -0.286384, 0.605350,
		-0.613224, -0.654076, 0.442878,
		0.269112, -0.700121, -0.661370,
		42.158180, 53.696720, 50.340836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498974, 54.595135, 50.963387>,  <41.969803, 54.186806, 50.803795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498974, 54.595135, 50.963387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891064, 54.667233, 50.996071>,  <43.126316, 54.710491, 51.015682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891064, 54.667233, 50.996071>,  <42.498974, 54.595135, 50.963387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891064, 54.667233, 50.996071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145352, -0.375521, -0.915345,
		-0.134302, 0.909118, -0.394293,
		0.980222, 0.180244, 0.081709,
		43.185131, 54.721306, 51.020584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880688, 55.074585, 50.381172>,  <42.498974, 54.595135, 50.963387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880688, 55.074585, 50.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119404, 54.786209, 50.522072>,  <43.262634, 54.613182, 50.606609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119404, 54.786209, 50.522072>,  <42.880688, 55.074585, 50.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119404, 54.786209, 50.522072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359248, -0.152461, -0.920704,
		0.717480, 0.676014, 0.168010,
		0.596794, -0.720944, 0.352245,
		43.298443, 54.569927, 50.627747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602528, 55.259766, 50.282246>,  <42.880688, 55.074585, 50.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602528, 55.259766, 50.282246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542381, 54.864407, 50.273689>,  <43.506294, 54.627190, 50.268555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542381, 54.864407, 50.273689>,  <43.602528, 55.259766, 50.282246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542381, 54.864407, 50.273689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499841, -0.057339, -0.864217,
		0.852965, -0.140641, 0.502665,
		-0.150367, -0.988399, -0.021390,
		43.497272, 54.567886, 50.267273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186081, 54.786427, 50.346111>,  <43.602528, 55.259766, 50.282246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186081, 54.786427, 50.346111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926014, 54.591545, 50.112900>,  <43.769974, 54.474617, 49.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926014, 54.591545, 50.112900>,  <44.186081, 54.786427, 50.346111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926014, 54.591545, 50.112900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731399, -0.193501, -0.653921,
		0.205775, -0.851582, 0.482147,
		-0.650163, -0.487202, -0.583028,
		43.730965, 54.445385, 49.937992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320641, 54.125946, 50.362103>,  <44.186081, 54.786427, 50.346111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320641, 54.125946, 50.362103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149315, 54.226048, 50.014786>,  <44.046520, 54.286106, 49.806396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149315, 54.226048, 50.014786>,  <44.320641, 54.125946, 50.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149315, 54.226048, 50.014786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842600, -0.236537, -0.483813,
		-0.326456, -0.938842, -0.109548,
		-0.428312, 0.250249, -0.868288,
		44.020821, 54.301121, 49.754299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467690, 53.712200, 49.688614>,  <44.320641, 54.125946, 50.362103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467690, 53.712200, 49.688614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357548, 54.051224, 49.507141>,  <44.291462, 54.254639, 49.398258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357548, 54.051224, 49.507141>,  <44.467690, 53.712200, 49.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357548, 54.051224, 49.507141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872670, 0.022403, -0.487796,
		-0.403271, -0.530233, -0.745806,
		-0.275353, 0.847556, -0.453684,
		44.274940, 54.305492, 49.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402767, 53.719040, 48.843307>,  <44.467690, 53.712200, 49.688614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402767, 53.719040, 48.843307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496174, 54.084740, 48.975742>,  <44.552216, 54.304161, 49.055202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496174, 54.084740, 48.975742>,  <44.402767, 53.719040, 48.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496174, 54.084740, 48.975742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816716, 0.000369, -0.577039,
		-0.527679, 0.405153, -0.746596,
		0.233514, 0.914249, 0.331090,
		44.566227, 54.359013, 49.075069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489029, 54.304420, 48.315964>,  <44.402767, 53.719040, 48.843307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489029, 54.304420, 48.315964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727436, 54.389252, 48.625748>,  <44.870480, 54.440151, 48.811619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727436, 54.389252, 48.625748>,  <44.489029, 54.304420, 48.315964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727436, 54.389252, 48.625748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789345, 0.022179, -0.613550,
		-0.147296, 0.977001, -0.154183,
		0.596019, 0.212077, 0.774458,
		44.906242, 54.452873, 48.858086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889015, 54.769669, 48.004002>,  <44.489029, 54.304420, 48.315964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889015, 54.769669, 48.004002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122658, 54.647881, 48.304962>,  <45.262844, 54.574806, 48.485538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122658, 54.647881, 48.304962>,  <44.889015, 54.769669, 48.004002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122658, 54.647881, 48.304962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802895, 0.080754, -0.590625,
		0.119071, 0.949091, 0.291630,
		0.584107, -0.304474, 0.752406,
		45.297890, 54.556538, 48.530685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520199, 55.230995, 48.256424>,  <44.889015, 54.769669, 48.004002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520199, 55.230995, 48.256424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654591, 54.861591, 48.330444>,  <45.735226, 54.639950, 48.374855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654591, 54.861591, 48.330444>,  <45.520199, 55.230995, 48.256424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654591, 54.861591, 48.330444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872701, 0.231335, -0.429974,
		0.354279, 0.305953, 0.883674,
		0.335977, -0.923513, 0.185049,
		45.755383, 54.584538, 48.385960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038143, 55.062920, 48.811886>,  <45.520199, 55.230995, 48.256424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038143, 55.062920, 48.811886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083187, 54.815453, 48.500870>,  <46.110214, 54.666973, 48.314259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083187, 54.815453, 48.500870>,  <46.038143, 55.062920, 48.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083187, 54.815453, 48.500870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966242, 0.250669, -0.059507,
		0.231721, -0.744593, 0.626008,
		0.112612, -0.618665, -0.777543,
		46.116970, 54.629852, 48.267609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565895, 54.494652, 49.052681>,  <46.038143, 55.062920, 48.811886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565895, 54.494652, 49.052681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553284, 54.629753, 48.676399>,  <46.545719, 54.710815, 48.450630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553284, 54.629753, 48.676399>,  <46.565895, 54.494652, 49.052681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553284, 54.629753, 48.676399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817887, 0.549704, 0.169960,
		0.574515, -0.764032, -0.293578,
		-0.031526, 0.337758, -0.940705,
		46.543827, 54.731079, 48.394188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287918, 54.482368, 48.709343>,  <46.565895, 54.494652, 49.052681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287918, 54.482368, 48.709343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057659, 54.784878, 48.584961>,  <46.919506, 54.966381, 48.510334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057659, 54.784878, 48.584961>,  <47.287918, 54.482368, 48.709343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057659, 54.784878, 48.584961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788997, 0.613580, 0.031672,
		0.214745, -0.227107, -0.949898,
		-0.575646, 0.756269, -0.310950,
		46.884964, 55.011757, 48.491676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504520, 54.826935, 48.062672>,  <47.287918, 54.482368, 48.709343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504520, 54.826935, 48.062672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320431, 55.099388, 48.290443>,  <47.209976, 55.262859, 48.427105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320431, 55.099388, 48.290443>,  <47.504520, 54.826935, 48.062672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320431, 55.099388, 48.290443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801286, 0.594856, -0.063928,
		-0.382273, 0.426856, -0.819550,
		-0.460226, 0.681132, 0.569431,
		47.182362, 55.303726, 48.461273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607002, 55.478428, 47.744930>,  <47.504520, 54.826935, 48.062672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607002, 55.478428, 47.744930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506828, 55.533630, 48.128227>,  <47.446724, 55.566753, 48.358208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506828, 55.533630, 48.128227>,  <47.607002, 55.478428, 47.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506828, 55.533630, 48.128227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686760, 0.722967, 0.075359,
		-0.682380, 0.676958, -0.275838,
		-0.250436, 0.138011, 0.958246,
		47.431698, 55.575035, 48.415703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717178, 56.189796, 47.759064>,  <47.607002, 55.478428, 47.744930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717178, 56.189796, 47.759064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726860, 56.044273, 48.131527>,  <47.732670, 55.956959, 48.355007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726860, 56.044273, 48.131527>,  <47.717178, 56.189796, 47.759064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726860, 56.044273, 48.131527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739732, 0.633059, 0.228107,
		-0.672466, 0.683288, 0.284443,
		0.024207, -0.363806, 0.931160,
		47.734123, 55.935131, 48.410873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.837486, 56.736988, 48.225327>,  <47.717178, 56.189796, 47.759064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.837486, 56.736988, 48.225327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.018677, 56.410965, 48.369820>,  <48.127392, 56.215351, 48.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.018677, 56.410965, 48.369820>,  <47.837486, 56.736988, 48.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.018677, 56.410965, 48.369820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864534, 0.500532, 0.045263,
		-0.217701, 0.291796, 0.931376,
		0.452976, -0.815060, 0.361234,
		48.154568, 56.166447, 48.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.287579, 56.929829, 48.837318>,  <47.837486, 56.736988, 48.225327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.287579, 56.929829, 48.837318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440475, 56.600075, 48.670326>,  <48.532211, 56.402222, 48.570129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440475, 56.600075, 48.670326>,  <48.287579, 56.929829, 48.837318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.440475, 56.600075, 48.670326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923719, 0.328534, 0.196999,
		-0.025245, -0.460936, 0.887074,
		0.382238, -0.824381, -0.417482,
		48.555145, 56.352760, 48.545082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.756546, 56.517574, 49.349739>,  <48.287579, 56.929829, 48.837318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.756546, 56.517574, 49.349739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.877735, 56.495926, 48.969154>,  <48.950447, 56.482937, 48.740803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.877735, 56.495926, 48.969154>,  <48.756546, 56.517574, 49.349739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.877735, 56.495926, 48.969154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833786, 0.498563, 0.237141,
		0.461529, -0.865162, 0.196174,
		0.302971, -0.054120, -0.951462,
		48.968628, 56.479691, 48.683716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.360302, 56.334244, 49.390766>,  <48.756546, 56.517574, 49.349739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.360302, 56.334244, 49.390766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.364128, 56.503189, 49.028214>,  <49.366425, 56.604557, 48.810684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.364128, 56.503189, 49.028214>,  <49.360302, 56.334244, 49.390766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.364128, 56.503189, 49.028214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782900, 0.560721, 0.269553,
		0.622073, -0.712183, -0.325300,
		0.009569, 0.422359, -0.906378,
		49.367001, 56.629898, 48.756302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.041134, 56.226112, 49.064430>,  <49.360302, 56.334244, 49.390766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.041134, 56.226112, 49.064430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.851871, 56.559055, 48.948982>,  <49.738316, 56.758823, 48.879715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.851871, 56.559055, 48.948982>,  <50.041134, 56.226112, 49.064430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.851871, 56.559055, 48.948982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813279, 0.538631, 0.220123,
		0.338681, -0.130577, -0.931797,
		-0.473152, 0.832362, -0.288620,
		49.709927, 56.808765, 48.862396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.599384, 56.028366, 48.559025>,  <50.041134, 56.226112, 49.064430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.599384, 56.028366, 48.559025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.962429, 56.194687, 48.535858>,  <51.180256, 56.294479, 48.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.962429, 56.194687, 48.535858>,  <50.599384, 56.028366, 48.559025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.962429, 56.194687, 48.535858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315664, -0.584979, 0.747098,
		0.276765, -0.696356, -0.662186,
		0.907611, 0.415798, -0.057912,
		51.234711, 56.319427, 48.518486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.807087, 55.409267, 48.685471>,  <50.599384, 56.028366, 48.559025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.807087, 55.409267, 48.685471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.866383, 55.527802, 49.062874>,  <50.901958, 55.598923, 49.289318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.866383, 55.527802, 49.062874>,  <50.807087, 55.409267, 48.685471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.866383, 55.527802, 49.062874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286333, -0.900327, 0.327757,
		0.946593, -0.318745, -0.048614,
		0.148240, 0.296333, 0.943511,
		50.910854, 55.616703, 49.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.203667, 54.975803, 49.126434>,  <50.807087, 55.409267, 48.685471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.203667, 54.975803, 49.126434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943756, 55.158752, 49.369282>,  <50.787811, 55.268524, 49.514992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943756, 55.158752, 49.369282>,  <51.203667, 54.975803, 49.126434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.943756, 55.158752, 49.369282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368398, -0.888129, 0.274792,
		0.664885, -0.045108, 0.745583,
		-0.649778, 0.457376, 0.607121,
		50.748821, 55.295963, 49.551418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.262249, 54.711800, 49.814171>,  <51.203667, 54.975803, 49.126434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.262249, 54.711800, 49.814171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.885723, 54.781952, 49.698811>,  <50.659809, 54.824043, 49.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.885723, 54.781952, 49.698811>,  <51.262249, 54.711800, 49.814171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.885723, 54.781952, 49.698811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276019, -0.891735, 0.358638,
		-0.194280, 0.417194, 0.887808,
		-0.941312, 0.175376, -0.288401,
		50.603329, 54.834564, 49.612289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.859680, 54.451286, 50.258492>,  <51.262249, 54.711800, 49.814171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.859680, 54.451286, 50.258492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.966431, 54.665886, 50.578728>,  <52.030483, 54.794647, 50.770870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.966431, 54.665886, 50.578728>,  <51.859680, 54.451286, 50.258492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.966431, 54.665886, 50.578728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695014, -0.682631, 0.225766,
		0.667630, 0.496169, -0.555055,
		0.266880, 0.536499, 0.800590,
		52.046494, 54.826836, 50.818905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.575508, 54.648602, 50.223480>,  <51.859680, 54.451286, 50.258492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.575508, 54.648602, 50.223480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.475391, 54.658066, 50.610634>,  <52.415321, 54.663746, 50.842926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.475391, 54.658066, 50.610634>,  <52.575508, 54.648602, 50.223480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.475391, 54.658066, 50.610634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745476, -0.633164, 0.208253,
		0.617756, 0.773656, 0.140834,
		-0.250287, 0.023661, 0.967882,
		52.400307, 54.665165, 50.900997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.126846, 54.964626, 50.735451>,  <52.575508, 54.648602, 50.223480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.126846, 54.964626, 50.735451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.874718, 54.681820, 50.863716>,  <52.723442, 54.512138, 50.940678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.874718, 54.681820, 50.863716>,  <53.126846, 54.964626, 50.735451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.874718, 54.681820, 50.863716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776315, -0.571038, 0.266929,
		-0.005610, 0.417189, 0.908802,
		-0.630321, -0.707014, 0.320667,
		52.685623, 54.469715, 50.959915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.176231, 54.663441, 51.525471>,  <53.126846, 54.964626, 50.735451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.176231, 54.663441, 51.525471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.024216, 54.397720, 51.268013>,  <52.933006, 54.238289, 51.113537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.024216, 54.397720, 51.268013>,  <53.176231, 54.663441, 51.525471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.024216, 54.397720, 51.268013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720296, -0.649098, 0.244634,
		-0.580299, -0.370646, 0.725172,
		-0.380035, -0.664299, -0.643646,
		52.910206, 54.198429, 51.074921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.260796, 53.913784, 51.791149>,  <53.176231, 54.663441, 51.525471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.260796, 53.913784, 51.791149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.269798, 53.914345, 51.391251>,  <53.275200, 53.914680, 51.151310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.269798, 53.914345, 51.391251>,  <53.260796, 53.913784, 51.791149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.269798, 53.914345, 51.391251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799775, -0.600055, 0.017161,
		-0.599879, -0.799958, -0.014612,
		0.022496, 0.001392, -0.999746,
		53.276550, 53.914764, 51.091328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.561314, 53.332485, 51.323238>,  <53.260796, 53.913784, 51.791149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.561314, 53.332485, 51.323238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.942532, 53.405910, 51.419579>,  <54.171261, 53.449966, 51.477383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.942532, 53.405910, 51.419579>,  <53.561314, 53.332485, 51.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.942532, 53.405910, 51.419579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300068, 0.465334, 0.832721,
		0.040776, -0.865893, 0.498564,
		0.953046, 0.183558, 0.240852,
		54.228447, 53.460979, 51.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.679379, 53.160572, 52.090515>,  <53.561314, 53.332485, 51.323238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.679379, 53.160572, 52.090515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.932812, 53.425713, 51.930916>,  <54.084873, 53.584797, 51.835155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.932812, 53.425713, 51.930916>,  <53.679379, 53.160572, 52.090515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.932812, 53.425713, 51.930916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158257, 0.615855, 0.771802,
		0.757317, -0.425854, 0.495095,
		0.633581, 0.662850, -0.399003,
		54.122887, 53.624569, 51.811214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.179607, 53.375557, 52.544270>,  <53.679379, 53.160572, 52.090515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.179607, 53.375557, 52.544270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.128548, 53.678944, 52.288635>,  <54.097912, 53.860977, 52.135254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.128548, 53.678944, 52.288635>,  <54.179607, 53.375557, 52.544270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.128548, 53.678944, 52.288635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103760, 0.630610, 0.769132,
		0.986377, 0.164487, -0.001795,
		-0.127645, 0.758468, -0.639087,
		54.090256, 53.906483, 52.096909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.595680, 53.420910, 53.075783>,  <54.179607, 53.375557, 52.544270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.595680, 53.420910, 53.075783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.655457, 53.110764, 52.830353>,  <54.691322, 52.924675, 52.683094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.655457, 53.110764, 52.830353>,  <54.595680, 53.420910, 53.075783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.655457, 53.110764, 52.830353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862109, 0.406047, -0.303140,
		0.484185, -0.483669, 0.729130,
		0.149441, -0.775365, -0.613577,
		54.700291, 52.878155, 52.646278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.110790, 52.963421, 53.275795>,  <54.595680, 53.420910, 53.075783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.110790, 52.963421, 53.275795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.099396, 52.953094, 52.876091>,  <55.092560, 52.946899, 52.636269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.099396, 52.953094, 52.876091>,  <55.110790, 52.963421, 53.275795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.099396, 52.953094, 52.876091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978293, 0.204555, -0.033172,
		0.205260, -0.978515, 0.019424,
		-0.028486, -0.025811, -0.999261,
		55.090851, 52.945351, 52.576313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.669109, 52.496956, 53.061512>,  <55.110790, 52.963421, 53.275795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.669109, 52.496956, 53.061512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.567001, 52.745743, 52.765408>,  <55.505737, 52.895016, 52.587746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.567001, 52.745743, 52.765408>,  <55.669109, 52.496956, 53.061512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.567001, 52.745743, 52.765408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917567, 0.397204, 0.017319,
		0.304808, -0.674820, -0.672093,
		-0.255271, 0.621969, -0.740264,
		55.490421, 52.932335, 52.543327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.059486, 52.171001, 53.694618>,  <55.669109, 52.496956, 53.061512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.059486, 52.171001, 53.694618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.351677, 52.386166, 53.526310>,  <56.526993, 52.515266, 53.425323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.351677, 52.386166, 53.526310>,  <56.059486, 52.171001, 53.694618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.351677, 52.386166, 53.526310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282217, 0.323292, 0.903237,
		0.621896, -0.778544, 0.084349,
		0.730478, 0.537915, -0.420772,
		56.570820, 52.547539, 53.400078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.600819, 52.108044, 54.045563>,  <56.059486, 52.171001, 53.694618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.600819, 52.108044, 54.045563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.660233, 52.450390, 53.847397>,  <56.695881, 52.655796, 53.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.660233, 52.450390, 53.847397>,  <56.600819, 52.108044, 54.045563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.660233, 52.450390, 53.847397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565353, 0.337535, 0.752626,
		0.811365, -0.391876, -0.433729,
		0.148537, 0.855864, -0.495413,
		56.704792, 52.707150, 53.698772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.344681, 52.211567, 54.122509>,  <56.600819, 52.108044, 54.045563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.344681, 52.211567, 54.122509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.196419, 52.560829, 53.995884>,  <57.107460, 52.770386, 53.919910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.196419, 52.560829, 53.995884>,  <57.344681, 52.211567, 54.122509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.196419, 52.560829, 53.995884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390551, 0.455768, 0.799841,
		0.842666, 0.172831, -0.509945,
		-0.370654, 0.873158, -0.316560,
		57.085224, 52.822777, 53.900917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.837242, 52.744675, 54.280136>,  <57.344681, 52.211567, 54.122509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.837242, 52.744675, 54.280136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510719, 52.961349, 54.199917>,  <57.314808, 53.091354, 54.151783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510719, 52.961349, 54.199917>,  <57.837242, 52.744675, 54.280136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.510719, 52.961349, 54.199917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240371, 0.634274, 0.734791,
		0.525231, 0.551607, -0.647967,
		-0.816305, 0.541688, -0.200550,
		57.265827, 53.123856, 54.139751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.870422, 53.353909, 53.976078>,  <57.837242, 52.744675, 54.280136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.870422, 53.353909, 53.976078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.585487, 53.329025, 54.255707>,  <57.414524, 53.314095, 54.423485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.585487, 53.329025, 54.255707>,  <57.870422, 53.353909, 53.976078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.585487, 53.329025, 54.255707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597002, 0.469990, 0.650152,
		-0.369000, 0.880477, -0.297656,
		-0.712340, -0.062205, 0.699073,
		57.371784, 53.310364, 54.465427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.755165, 53.972038, 54.249573>,  <57.870422, 53.353909, 53.976078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.755165, 53.972038, 54.249573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.691833, 53.713345, 54.548012>,  <57.653835, 53.558128, 54.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.691833, 53.713345, 54.548012>,  <57.755165, 53.972038, 54.249573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.691833, 53.713345, 54.548012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677086, 0.478873, 0.558780,
		-0.718669, 0.593649, 0.362072,
		-0.158333, -0.646732, 0.746102,
		57.644333, 53.519325, 54.771843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.288975, 54.098934, 54.807365>,  <57.755165, 53.972038, 54.249573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.288975, 54.098934, 54.807365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.090813, 53.790482, 54.967331>,  <57.971916, 53.605412, 55.063309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.090813, 53.790482, 54.967331>,  <58.288975, 54.098934, 54.807365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.090813, 53.790482, 54.967331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558561, 0.069791, 0.826522,
		-0.665267, 0.632840, 0.396149,
		-0.495408, -0.771131, 0.399909,
		57.942192, 53.559143, 55.087303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.150925, 54.302132, 55.525887>,  <58.288975, 54.098934, 54.807365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.150925, 54.302132, 55.525887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.215775, 53.908546, 55.496132>,  <58.254684, 53.672394, 55.478279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.215775, 53.908546, 55.496132>,  <58.150925, 54.302132, 55.525887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.215775, 53.908546, 55.496132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656842, 0.051355, 0.752278,
		-0.736394, -0.170819, 0.654634,
		0.162122, -0.983963, -0.074383,
		58.264412, 53.613358, 55.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.136082, 53.923168, 56.215218>,  <58.150925, 54.302132, 55.525887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.136082, 53.923168, 56.215218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.360207, 53.734711, 55.942726>,  <58.494682, 53.621635, 55.779232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.360207, 53.734711, 55.942726>,  <58.136082, 53.923168, 56.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.360207, 53.734711, 55.942726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797186, 0.083519, 0.597929,
		-0.224816, -0.878093, 0.422386,
		0.560315, -0.471144, -0.681227,
		58.528301, 53.593369, 55.738358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.404762, 53.373173, 56.469860>,  <58.136082, 53.923168, 56.215218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.404762, 53.373173, 56.469860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.662537, 53.428089, 56.168968>,  <58.817200, 53.461040, 55.988434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.662537, 53.428089, 56.168968>,  <58.404762, 53.373173, 56.469860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.662537, 53.428089, 56.168968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760696, -0.215159, 0.612412,
		-0.077770, -0.966880, -0.243094,
		0.644433, 0.137293, -0.752234,
		58.855865, 53.469276, 55.943298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.856045, 52.839481, 56.501247>,  <58.404762, 53.373173, 56.469860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.856045, 52.839481, 56.501247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.042763, 53.150154, 56.332077>,  <59.154793, 53.336559, 56.230576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.042763, 53.150154, 56.332077>,  <58.856045, 52.839481, 56.501247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.042763, 53.150154, 56.332077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728397, -0.066446, 0.681925,
		0.501537, -0.626379, -0.596749,
		0.466796, 0.776681, -0.422928,
		59.182800, 53.383160, 56.205200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.494816, 52.746674, 56.522575>,  <58.856045, 52.839481, 56.501247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.494816, 52.746674, 56.522575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.518265, 53.142681, 56.471306>,  <59.532333, 53.380287, 56.440544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.518265, 53.142681, 56.471306>,  <59.494816, 52.746674, 56.522575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.518265, 53.142681, 56.471306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604250, 0.067015, 0.793971,
		0.794635, -0.123994, -0.594290,
		0.058621, 0.990017, -0.128176,
		59.535851, 53.439686, 56.432854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.157711, 53.054688, 56.389557>,  <59.494816, 52.746674, 56.522575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.157711, 53.054688, 56.389557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.897346, 53.257164, 56.615860>,  <59.741127, 53.378651, 56.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.897346, 53.257164, 56.615860>,  <60.157711, 53.054688, 56.389557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.897346, 53.257164, 56.615860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602162, -0.109564, 0.790820,
		0.462293, 0.855434, -0.233492,
		-0.650912, 0.506191, 0.565760,
		59.702072, 53.409019, 56.785587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.688629, 53.160465, 56.918201>,  <60.157711, 53.054688, 56.389557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.688629, 53.160465, 56.918201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.340012, 53.292496, 57.063232>,  <60.130840, 53.371716, 57.150249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.340012, 53.292496, 57.063232>,  <60.688629, 53.160465, 56.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.340012, 53.292496, 57.063232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462261, 0.306563, 0.832066,
		0.163495, 0.892785, -0.419766,
		-0.871541, 0.330080, 0.362579,
		60.078548, 53.391521, 57.172005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.142899, 53.108803, 57.424965>,  <60.688629, 53.160465, 56.918201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.142899, 53.108803, 57.424965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089508, 53.367966, 57.724937>,  <61.057472, 53.523464, 57.904922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089508, 53.367966, 57.724937>,  <61.142899, 53.108803, 57.424965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.089508, 53.367966, 57.724937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904070, 0.389604, -0.175687,
		-0.406005, 0.654539, -0.637760,
		-0.133480, 0.647910, 0.749931,
		61.049465, 53.562340, 57.949917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.225140, 53.818714, 57.311481>,  <61.142899, 53.108803, 57.424965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.225140, 53.818714, 57.311481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.334221, 53.726147, 57.685020>,  <61.399670, 53.670609, 57.909145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.334221, 53.726147, 57.685020>,  <61.225140, 53.818714, 57.311481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.334221, 53.726147, 57.685020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891726, 0.425190, -0.155040,
		-0.361185, 0.875020, 0.322313,
		0.272708, -0.231417, 0.933851,
		61.416035, 53.656723, 57.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.444202, 53.369984, 56.674156>,  <61.225140, 53.818714, 57.311481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.444202, 53.369984, 56.674156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.779823, 53.311409, 56.464569>,  <61.981197, 53.276264, 56.338818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.779823, 53.311409, 56.464569>,  <61.444202, 53.369984, 56.674156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.779823, 53.311409, 56.464569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217280, 0.973149, 0.075962,
		0.498777, -0.177584, 0.848343,
		0.839054, -0.146439, -0.523970,
		62.031540, 53.267479, 56.307377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.178776, 53.426788, 57.021023>,  <61.444202, 53.369984, 56.674156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.178776, 53.426788, 57.021023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.086517, 53.536247, 56.647514>,  <62.031162, 53.601921, 56.423409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.086517, 53.536247, 56.647514>,  <62.178776, 53.426788, 57.021023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.086517, 53.536247, 56.647514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031595, 0.961242, 0.273890,
		0.972524, 0.033670, -0.230355,
		-0.230648, 0.273642, -0.933767,
		62.017323, 53.618340, 56.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.511211, 54.071083, 56.951172>,  <62.178776, 53.426788, 57.021023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.511211, 54.071083, 56.951172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.231003, 54.033840, 56.668159>,  <62.062878, 54.011494, 56.498352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.231003, 54.033840, 56.668159>,  <62.511211, 54.071083, 56.951172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.231003, 54.033840, 56.668159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168934, 0.984908, 0.037653,
		0.693346, 0.145903, -0.705680,
		-0.700523, -0.093107, -0.707529,
		62.020847, 54.005909, 56.455902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.682121, 54.603962, 56.447548>,  <62.511211, 54.071083, 56.951172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.682121, 54.603962, 56.447548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.296684, 54.521431, 56.379524>,  <62.065422, 54.471912, 56.338711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.296684, 54.521431, 56.379524>,  <62.682121, 54.603962, 56.447548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.296684, 54.521431, 56.379524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211456, 0.977308, 0.012444,
		0.163631, 0.047951, -0.985355,
		-0.963593, -0.206323, -0.170057,
		62.007607, 54.459534, 56.328506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.631886, 54.936134, 55.859203>,  <62.682121, 54.603962, 56.447548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.631886, 54.936134, 55.859203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.284477, 54.887638, 56.051445>,  <62.076035, 54.858540, 56.166790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.284477, 54.887638, 56.051445>,  <62.631886, 54.936134, 55.859203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.284477, 54.887638, 56.051445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178916, 0.980935, -0.075866,
		-0.462242, -0.151879, -0.873651,
		-0.868517, -0.121242, 0.480603,
		62.023922, 54.851265, 56.195625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.224297, 55.405857, 56.144920>,  <62.631886, 54.936134, 55.859203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.224297, 55.405857, 56.144920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.560661, 55.250092, 56.295235>,  <63.762482, 55.156631, 56.385426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.560661, 55.250092, 56.295235>,  <63.224297, 55.405857, 56.144920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.560661, 55.250092, 56.295235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501857, 0.820977, -0.272279,
		-0.202486, 0.417557, 0.885802,
		0.840916, -0.389413, 0.375790,
		63.812935, 55.133266, 56.407970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.530659, 56.030472, 56.500816>,  <63.224297, 55.405857, 56.144920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.530659, 56.030472, 56.500816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.795311, 55.752411, 56.388382>,  <63.954102, 55.585575, 56.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.795311, 55.752411, 56.388382>,  <63.530659, 56.030472, 56.500816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.795311, 55.752411, 56.388382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568054, 0.709372, -0.417260,
		0.489453, 0.116401, 0.864226,
		0.661627, -0.695156, -0.281082,
		63.993797, 55.543865, 56.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.277580, 56.204041, 56.517857>,  <63.530659, 56.030472, 56.500816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.277580, 56.204041, 56.517857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.221672, 55.922264, 56.239510>,  <64.188126, 55.753197, 56.072502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.221672, 55.922264, 56.239510>,  <64.277580, 56.204041, 56.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.221672, 55.922264, 56.239510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502744, 0.554956, -0.662776,
		0.853061, -0.442476, 0.276588,
		-0.139768, -0.704442, -0.695864,
		64.179741, 55.710930, 56.030750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.900276, 56.155201, 56.147511>,  <64.277580, 56.204041, 56.517857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.900276, 56.155201, 56.147511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.612404, 56.040829, 55.894432>,  <64.439682, 55.972206, 55.742584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.612404, 56.040829, 55.894432>,  <64.900276, 56.155201, 56.147511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.612404, 56.040829, 55.894432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426964, 0.536332, -0.728045,
		0.547515, -0.794094, -0.263898,
		-0.719673, -0.285941, -0.632699,
		64.396500, 55.955051, 55.704624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.248901, 55.805153, 55.646458>,  <64.900276, 56.155201, 56.147511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.248901, 55.805153, 55.646458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.909302, 55.977165, 55.523651>,  <64.705544, 56.080372, 55.449966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.909302, 55.977165, 55.523651>,  <65.248901, 55.805153, 55.646458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.909302, 55.977165, 55.523651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525114, 0.622150, -0.580676,
		-0.058697, -0.654218, -0.754025,
		-0.849005, 0.430033, -0.307021,
		64.654602, 56.106174, 55.431545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.205376, 55.927933, 54.852356>,  <65.248901, 55.805153, 55.646458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.205376, 55.927933, 54.852356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.064316, 56.182209, 55.127029>,  <64.979683, 56.334774, 55.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.064316, 56.182209, 55.127029>,  <65.205376, 55.927933, 54.852356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.064316, 56.182209, 55.127029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579494, 0.724539, -0.373135,
		-0.734730, 0.266348, -0.623884,
		-0.352644, 0.635690, 0.686688,
		64.958519, 56.372917, 55.333035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.168602, 56.557613, 54.507816>,  <65.205376, 55.927933, 54.852356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.168602, 56.557613, 54.507816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.174622, 56.658295, 54.894890>,  <65.178238, 56.718704, 55.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.174622, 56.658295, 54.894890>,  <65.168602, 56.557613, 54.507816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.174622, 56.658295, 54.894890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563710, 0.797196, -0.216126,
		-0.825836, 0.548748, -0.129888,
		0.015052, 0.251704, 0.967687,
		65.179138, 56.733807, 55.185196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.079536, 57.358044, 54.572540>,  <65.168602, 56.557613, 54.507816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.079536, 57.358044, 54.572540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.288383, 57.189537, 54.869167>,  <65.413689, 57.088432, 55.047146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.288383, 57.189537, 54.869167>,  <65.079536, 57.358044, 54.572540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.288383, 57.189537, 54.869167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789967, 0.566613, -0.234314,
		-0.321476, 0.708156, 0.628624,
		0.522117, -0.421266, 0.741572,
		65.445015, 57.063156, 55.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.616707, 57.782959, 54.525299>,  <65.079536, 57.358044, 54.572540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.616707, 57.782959, 54.525299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.710182, 57.543957, 54.832123>,  <65.766266, 57.400555, 55.016216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.710182, 57.543957, 54.832123>,  <65.616707, 57.782959, 54.525299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.710182, 57.543957, 54.832123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797687, 0.568895, 0.200134,
		-0.555958, 0.565105, 0.609564,
		0.233681, -0.597507, 0.767058,
		65.780289, 57.364704, 55.062241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.111732, 58.161808, 54.705742>,  <65.616707, 57.782959, 54.525299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.111732, 58.161808, 54.705742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.192360, 57.829514, 54.913300>,  <66.240738, 57.630138, 55.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.192360, 57.829514, 54.913300>,  <66.111732, 58.161808, 54.705742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.192360, 57.829514, 54.913300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820180, 0.432745, 0.374215,
		-0.535423, 0.350160, 0.768576,
		0.201562, -0.830734, 0.518896,
		66.252831, 57.580292, 55.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.398750, 58.413509, 55.380375>,  <66.111732, 58.161808, 54.705742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.398750, 58.413509, 55.380375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.509140, 58.032497, 55.328949>,  <66.575378, 57.803890, 55.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.509140, 58.032497, 55.328949>,  <66.398750, 58.413509, 55.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.509140, 58.032497, 55.328949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941096, 0.240603, 0.237591,
		-0.195378, -0.186561, 0.962820,
		0.275982, -0.952526, -0.128564,
		66.591934, 57.746738, 55.290379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.980820, 58.403320, 55.817734>,  <66.398750, 58.413509, 55.380375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.980820, 58.403320, 55.817734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.018646, 58.078217, 55.587784>,  <67.041344, 57.883156, 55.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.018646, 58.078217, 55.587784>,  <66.980820, 58.403320, 55.817734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.018646, 58.078217, 55.587784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995056, 0.094768, 0.029702,
		0.030339, -0.574841, 0.817703,
		0.094566, -0.812759, -0.574874,
		67.047020, 57.834389, 55.415321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.632233, 58.355350, 55.944408>,  <66.980820, 58.403320, 55.817734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.632233, 58.355350, 55.944408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.550560, 58.043648, 55.707405>,  <67.501556, 57.856625, 55.565205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.550560, 58.043648, 55.707405>,  <67.632233, 58.355350, 55.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.550560, 58.043648, 55.707405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971554, -0.087138, -0.220204,
		0.119966, -0.620616, 0.774883,
		-0.204184, -0.779258, -0.592508,
		67.489304, 57.809872, 55.529652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.040680, 58.120720, 56.473484>,  <67.632233, 58.355350, 55.944408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.040680, 58.120720, 56.473484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.187424, 57.782707, 56.317879>,  <68.275475, 57.579899, 56.224518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.187424, 57.782707, 56.317879>,  <68.040680, 58.120720, 56.473484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.187424, 57.782707, 56.317879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431458, -0.215913, 0.875915,
		-0.824168, -0.489186, 0.285384,
		0.366867, -0.845032, -0.389011,
		68.297485, 57.529198, 56.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.785500, 57.772606, 57.018322>,  <68.040680, 58.120720, 56.473484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.785500, 57.772606, 57.018322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.098679, 57.609215, 56.830650>,  <68.286591, 57.511181, 56.718048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.098679, 57.609215, 56.830650>,  <67.785500, 57.772606, 57.018322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.098679, 57.609215, 56.830650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453019, -0.142496, 0.880039,
		-0.426334, -0.901576, 0.073482,
		0.782951, -0.408479, -0.469182,
		68.333565, 57.486671, 56.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.026886, 57.375095, 57.501328>,  <67.785500, 57.772606, 57.018322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.026886, 57.375095, 57.501328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.314270, 57.373642, 57.223106>,  <68.486702, 57.372768, 57.056171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.314270, 57.373642, 57.223106>,  <68.026886, 57.375095, 57.501328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.314270, 57.373642, 57.223106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656853, -0.325411, 0.680185,
		-0.228812, -0.945566, -0.231410,
		0.718463, -0.003633, -0.695556,
		68.529808, 57.372551, 57.014439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.314445, 56.649048, 57.544865>,  <68.026886, 57.375095, 57.501328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.314445, 56.649048, 57.544865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.567657, 56.906769, 57.373215>,  <68.719582, 57.061401, 57.270226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.567657, 56.906769, 57.373215>,  <68.314445, 56.649048, 57.544865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.567657, 56.906769, 57.373215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759337, -0.408946, 0.506133,
		0.150613, -0.646249, -0.748117,
		0.633027, 0.644303, -0.429128,
		68.757568, 57.100060, 57.244476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.932869, 56.585934, 57.928776>,  <68.314445, 56.649048, 57.544865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.932869, 56.585934, 57.928776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.042191, 56.849854, 57.648781>,  <69.107780, 57.008205, 57.480785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.042191, 56.849854, 57.648781>,  <68.932869, 56.585934, 57.928776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.042191, 56.849854, 57.648781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954521, -0.095873, 0.282309,
		0.119156, -0.745304, -0.655991,
		0.273298, 0.659796, -0.699984,
		69.124184, 57.047791, 57.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.561295, 56.375454, 57.438118>,  <68.932869, 56.585934, 57.928776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.561295, 56.375454, 57.438118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.499229, 56.749256, 57.566261>,  <69.461990, 56.973537, 57.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.499229, 56.749256, 57.566261>,  <69.561295, 56.375454, 57.438118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.499229, 56.749256, 57.566261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926488, 0.025104, 0.375487,
		0.342851, 0.355069, -0.869700,
		-0.155157, 0.934503, 0.320360,
		69.452682, 57.029606, 57.662369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.123367, 56.892445, 57.265141>,  <69.561295, 56.375454, 57.438118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.123367, 56.892445, 57.265141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.947517, 57.022842, 57.599915>,  <69.842010, 57.101082, 57.800777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.947517, 57.022842, 57.599915>,  <70.123367, 56.892445, 57.265141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.947517, 57.022842, 57.599915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884977, -0.001969, 0.465631,
		0.153440, 0.945370, -0.287632,
		-0.439627, 0.325994, 0.836932,
		69.815628, 57.120640, 57.850994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.620338, 57.262897, 57.706593>,  <70.123367, 56.892445, 57.265141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.620338, 57.262897, 57.706593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.329330, 57.138870, 57.951401>,  <70.154724, 57.064453, 58.098286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.329330, 57.138870, 57.951401>,  <70.620338, 57.262897, 57.706593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.329330, 57.138870, 57.951401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680030, -0.207591, 0.703182,
		-0.090987, 0.927772, 0.361884,
		-0.727517, -0.310073, 0.612025,
		70.111076, 57.045849, 58.135010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.544815, 57.730122, 58.243568>,  <70.620338, 57.262897, 57.706593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.544815, 57.730122, 58.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405884, 57.372120, 58.355522>,  <70.322525, 57.157318, 58.422695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405884, 57.372120, 58.355522>,  <70.544815, 57.730122, 58.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.405884, 57.372120, 58.355522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788813, -0.117446, 0.603307,
		-0.507093, 0.430314, 0.746784,
		-0.347319, -0.895006, 0.279882,
		70.301689, 57.103619, 58.439487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.417435, 57.681782, 59.016586>,  <70.544815, 57.730122, 58.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.417435, 57.681782, 59.016586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.504990, 57.322586, 58.863899>,  <70.557518, 57.107067, 58.772285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.504990, 57.322586, 58.863899>,  <70.417435, 57.681782, 59.016586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.504990, 57.322586, 58.863899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740117, -0.102145, 0.664675,
		-0.635861, -0.428000, 0.642259,
		0.218878, -0.897988, -0.381720,
		70.570656, 57.053188, 58.749382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.365639, 57.296577, 59.501102>,  <70.417435, 57.681782, 59.016586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.365639, 57.296577, 59.501102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.608574, 57.115501, 59.239960>,  <70.754333, 57.006855, 59.083275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.608574, 57.115501, 59.239960>,  <70.365639, 57.296577, 59.501102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.608574, 57.115501, 59.239960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727470, -0.013356, 0.686010,
		-0.319267, -0.891569, 0.321205,
		0.607335, -0.452687, -0.652854,
		70.790771, 56.979694, 59.044102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.699585, 56.825211, 59.815128>,  <70.365639, 57.296577, 59.501102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.699585, 56.825211, 59.815128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.962372, 56.895695, 59.521912>,  <71.120041, 56.937984, 59.345982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.962372, 56.895695, 59.521912>,  <70.699585, 56.825211, 59.815128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.962372, 56.895695, 59.521912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739972, 0.035450, 0.671703,
		0.144349, -0.983713, -0.107104,
		0.656966, 0.176214, -0.733038,
		71.159462, 56.948559, 59.302002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.316299, 56.360653, 59.832855>,  <70.699585, 56.825211, 59.815128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.316299, 56.360653, 59.832855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.463783, 56.681973, 59.645767>,  <71.552277, 56.874763, 59.533512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.463783, 56.681973, 59.645767>,  <71.316299, 56.360653, 59.832855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.463783, 56.681973, 59.645767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772486, 0.015074, 0.634853,
		0.517026, -0.595387, -0.614978,
		0.368713, 0.803297, -0.467722,
		71.574394, 56.922962, 59.505451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.036819, 56.251888, 59.736916>,  <71.316299, 56.360653, 59.832855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.036819, 56.251888, 59.736916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.942520, 56.640545, 59.729469>,  <71.885941, 56.873737, 59.725002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.942520, 56.640545, 59.729469>,  <72.036819, 56.251888, 59.736916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.942520, 56.640545, 59.729469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805729, 0.206127, 0.555259,
		0.543347, 0.115900, -0.831469,
		-0.235742, 0.971637, -0.018614,
		71.871796, 56.932037, 59.723885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.639786, 56.799026, 59.440514>,  <72.036819, 56.251888, 59.736916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.639786, 56.799026, 59.440514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.408363, 56.907722, 59.748131>,  <72.269508, 56.972942, 59.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.408363, 56.907722, 59.748131>,  <72.639786, 56.799026, 59.440514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.408363, 56.907722, 59.748131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809045, 0.310899, 0.498787,
		-0.103554, 0.910768, -0.399724,
		-0.578553, 0.271743, 0.769046,
		72.234795, 56.989246, 59.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.706818, 57.507671, 59.475357>,  <72.639786, 56.799026, 59.440514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.706818, 57.507671, 59.475357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.628357, 57.386982, 59.848557>,  <72.581276, 57.314568, 60.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.628357, 57.386982, 59.848557>,  <72.706818, 57.507671, 59.475357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.628357, 57.386982, 59.848557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792637, 0.511362, 0.332017,
		-0.577277, 0.804656, 0.138852,
		-0.196156, -0.301725, 0.932998,
		72.569511, 57.296463, 60.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.812256, 58.008095, 59.984135>,  <72.706818, 57.507671, 59.475357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.812256, 58.008095, 59.984135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.078033, 58.179825, 60.228821>,  <73.237503, 58.282864, 60.375633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.078033, 58.179825, 60.228821>,  <72.812256, 58.008095, 59.984135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.078033, 58.179825, 60.228821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541229, 0.840872, -0.002281,
		-0.515352, -0.329561, 0.791076,
		0.664443, 0.429329, 0.611713,
		73.277367, 58.308624, 60.412334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
