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
	<36.181225, 52.898281, 49.907188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359413, 52.786354, 50.247368>,  <36.466324, 52.719200, 50.451477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359413, 52.786354, 50.247368>,  <36.181225, 52.898281, 49.907188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359413, 52.786354, 50.247368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366483, 0.923666, 0.111939,
		-0.816852, 0.261810, 0.514012,
		0.445469, -0.279814, 0.850448,
		36.493053, 52.702412, 50.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862080, 52.889015, 49.472057>,  <36.181225, 52.898281, 49.907188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862080, 52.889015, 49.472057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961319, 52.744843, 49.112385>,  <37.020863, 52.658337, 48.896580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961319, 52.744843, 49.112385>,  <36.862080, 52.889015, 49.472057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961319, 52.744843, 49.112385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961990, 0.201002, 0.184859,
		0.114108, -0.910870, 0.396604,
		0.248101, -0.360435, -0.899184,
		37.035748, 52.636711, 48.842628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356899, 52.299580, 49.485111>,  <36.862080, 52.889015, 49.472057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356899, 52.299580, 49.485111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379181, 52.508648, 49.144825>,  <37.392551, 52.634090, 48.940655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379181, 52.508648, 49.144825>,  <37.356899, 52.299580, 49.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379181, 52.508648, 49.144825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956853, 0.215417, 0.195008,
		0.285183, -0.824871, -0.488118,
		0.055707, 0.522669, -0.850713,
		37.395893, 52.665447, 48.889610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845936, 51.990528, 48.911808>,  <37.356899, 52.299580, 49.485111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845936, 51.990528, 48.911808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778584, 52.381935, 48.959385>,  <37.738171, 52.616779, 48.987930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778584, 52.381935, 48.959385>,  <37.845936, 51.990528, 48.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778584, 52.381935, 48.959385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985513, 0.164635, 0.040729,
		0.020272, 0.124076, -0.992066,
		-0.168382, 0.978520, 0.118941,
		37.728069, 52.675491, 48.995068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196663, 52.374378, 48.446423>,  <37.845936, 51.990528, 48.911808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196663, 52.374378, 48.446423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156864, 52.561932, 48.797478>,  <38.132984, 52.674465, 49.008110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156864, 52.561932, 48.797478>,  <38.196663, 52.374378, 48.446423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156864, 52.561932, 48.797478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994180, 0.083461, 0.068121,
		-0.041307, 0.879307, -0.474461,
		-0.099498, 0.468886, 0.877637,
		38.127014, 52.702599, 49.060768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541790, 52.682930, 47.871082>,  <38.196663, 52.374378, 48.446423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541790, 52.682930, 47.871082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529881, 52.283573, 47.890392>,  <38.522736, 52.043961, 47.901978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529881, 52.283573, 47.890392>,  <38.541790, 52.682930, 47.871082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529881, 52.283573, 47.890392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959475, -0.042087, -0.278632,
		0.280215, 0.038019, 0.959184,
		-0.029775, -0.998390, 0.048271,
		38.520947, 51.984055, 47.904873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028866, 52.275112, 48.412395>,  <38.541790, 52.682930, 47.871082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028866, 52.275112, 48.412395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990566, 52.091526, 48.059082>,  <38.967587, 51.981377, 47.847095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990566, 52.091526, 48.059082>,  <39.028866, 52.275112, 48.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990566, 52.091526, 48.059082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990305, 0.045789, -0.131147,
		0.100636, -0.887275, 0.450129,
		-0.095753, -0.458963, -0.883281,
		38.961842, 51.953838, 47.794098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386566, 51.750286, 48.578739>,  <39.028866, 52.275112, 48.412395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386566, 51.750286, 48.578739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395542, 51.872887, 48.198097>,  <39.400928, 51.946445, 47.969711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395542, 51.872887, 48.198097>,  <39.386566, 51.750286, 48.578739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395542, 51.872887, 48.198097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992577, 0.106972, 0.057865,
		0.119531, -0.945842, -0.301821,
		0.022444, 0.306497, -0.951607,
		39.402275, 51.964836, 47.912617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908535, 51.371349, 48.156521>,  <39.386566, 51.750286, 48.578739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908535, 51.371349, 48.156521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866947, 51.740444, 48.008064>,  <39.841995, 51.961903, 47.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866947, 51.740444, 48.008064>,  <39.908535, 51.371349, 48.156521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866947, 51.740444, 48.008064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992643, 0.119553, 0.019167,
		0.062057, -0.366421, -0.928377,
		-0.103967, 0.922736, -0.371144,
		39.835758, 52.017265, 47.896721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434212, 51.466629, 47.667191>,  <39.908535, 51.371349, 48.156521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434212, 51.466629, 47.667191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330456, 51.826992, 47.806381>,  <40.268204, 52.043209, 47.889896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330456, 51.826992, 47.806381>,  <40.434212, 51.466629, 47.667191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330456, 51.826992, 47.806381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948145, 0.306078, -0.085657,
		-0.183678, 0.307718, -0.933580,
		-0.259390, 0.900903, 0.347981,
		40.252640, 52.097263, 47.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602081, 51.869862, 48.259205>,  <40.434212, 51.466629, 47.667191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602081, 51.869862, 48.259205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530422, 51.583332, 48.528954>,  <40.487427, 51.411415, 48.690804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530422, 51.583332, 48.528954>,  <40.602081, 51.869862, 48.259205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530422, 51.583332, 48.528954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942877, -0.320703, -0.090180,
		0.280873, 0.619698, 0.732861,
		-0.179147, -0.716327, 0.674376,
		40.476677, 51.368435, 48.731266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129688, 51.845440, 48.833958>,  <40.602081, 51.869862, 48.259205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129688, 51.845440, 48.833958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960526, 51.483589, 48.812767>,  <40.859028, 51.266479, 48.800053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960526, 51.483589, 48.812767>,  <41.129688, 51.845440, 48.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960526, 51.483589, 48.812767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906158, -0.422511, -0.019022,
		-0.005177, -0.056054, 0.998414,
		-0.422908, -0.904623, -0.052981,
		40.833652, 51.212204, 48.796871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201653, 51.438389, 49.448986>,  <41.129688, 51.845440, 48.833958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201653, 51.438389, 49.448986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170624, 51.224426, 49.112450>,  <41.152008, 51.096046, 48.910526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170624, 51.224426, 49.112450>,  <41.201653, 51.438389, 49.448986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170624, 51.224426, 49.112450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932773, -0.336900, 0.128193,
		-0.352019, -0.774835, 0.525084,
		-0.077572, -0.534910, -0.841340,
		41.147350, 51.063953, 48.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466614, 50.798450, 49.594749>,  <41.201653, 51.438389, 49.448986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466614, 50.798450, 49.594749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501484, 50.906319, 49.211151>,  <41.522408, 50.971039, 48.980991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501484, 50.906319, 49.211151>,  <41.466614, 50.798450, 49.594749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501484, 50.906319, 49.211151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956392, -0.292047, 0.004817,
		-0.278774, -0.917599, -0.283367,
		0.087177, 0.269667, -0.958999,
		41.527637, 50.987217, 48.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677452, 50.230694, 49.147839>,  <41.466614, 50.798450, 49.594749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677452, 50.230694, 49.147839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782158, 50.578465, 48.980232>,  <41.844982, 50.787128, 48.879669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782158, 50.578465, 48.980232>,  <41.677452, 50.230694, 49.147839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782158, 50.578465, 48.980232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955488, -0.294671, -0.014522,
		-0.136098, -0.396565, -0.907862,
		0.261762, 0.869428, -0.419017,
		41.860687, 50.839294, 48.854527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086269, 50.059280, 48.537727>,  <41.677452, 50.230694, 49.147839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086269, 50.059280, 48.537727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167862, 50.393726, 48.741413>,  <42.216820, 50.594395, 48.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167862, 50.393726, 48.741413>,  <42.086269, 50.059280, 48.537727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167862, 50.393726, 48.741413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949543, -0.295563, 0.104930,
		0.238238, 0.462117, -0.854220,
		0.203986, 0.836117, 0.509214,
		42.229057, 50.644562, 48.894176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681007, 50.309124, 48.390892>,  <42.086269, 50.059280, 48.537727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681007, 50.309124, 48.390892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623558, 50.436249, 48.765778>,  <42.589088, 50.512524, 48.990707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623558, 50.436249, 48.765778>,  <42.681007, 50.309124, 48.390892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623558, 50.436249, 48.765778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924709, -0.294270, 0.241492,
		0.352543, 0.901333, -0.251619,
		-0.143621, 0.317811, 0.937214,
		42.580471, 50.531593, 49.046940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220394, 50.008751, 48.671913>,  <42.681007, 50.309124, 48.390892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220394, 50.008751, 48.671913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319683, 50.041950, 49.057968>,  <43.379257, 50.061871, 49.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319683, 50.041950, 49.057968>,  <43.220394, 50.008751, 48.671913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319683, 50.041950, 49.057968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392678, 0.902172, -0.178575,
		-0.885546, 0.423316, 0.191345,
		0.248219, 0.083000, 0.965141,
		43.394150, 50.066849, 49.347511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018688, 49.764614, 48.514641>,  <43.220394, 50.008751, 48.671913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018688, 49.764614, 48.514641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034676, 50.051556, 48.792866>,  <44.044270, 50.223721, 48.959801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034676, 50.051556, 48.792866>,  <44.018688, 49.764614, 48.514641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034676, 50.051556, 48.792866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743467, -0.486433, 0.458954,
		0.667576, 0.498780, -0.552775,
		0.039971, 0.717357, 0.695558,
		44.046665, 50.266762, 49.001534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668919, 50.229671, 48.711987>,  <44.018688, 49.764614, 48.514641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668919, 50.229671, 48.711987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441475, 50.183556, 49.037781>,  <44.305008, 50.155888, 49.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441475, 50.183556, 49.037781>,  <44.668919, 50.229671, 48.711987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441475, 50.183556, 49.037781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793715, -0.336993, 0.506411,
		0.216091, 0.934422, 0.283127,
		-0.568613, -0.115291, 0.814486,
		44.270889, 50.148968, 49.282127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030239, 50.631004, 49.248760>,  <44.668919, 50.229671, 48.711987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030239, 50.631004, 49.248760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821342, 50.301994, 49.338837>,  <44.696007, 50.104588, 49.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821342, 50.301994, 49.338837>,  <45.030239, 50.631004, 49.248760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821342, 50.301994, 49.338837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747075, -0.313911, 0.585951,
		-0.411272, 0.474242, 0.778428,
		-0.522240, -0.822529, 0.225191,
		44.664669, 50.055237, 49.406395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351871, 51.277493, 49.453251>,  <45.030239, 50.631004, 49.248760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351871, 51.277493, 49.453251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082233, 51.417496, 49.713432>,  <44.920452, 51.501499, 49.869541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082233, 51.417496, 49.713432>,  <45.351871, 51.277493, 49.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082233, 51.417496, 49.713432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111491, 0.918727, -0.378828,
		-0.730184, -0.182846, -0.658330,
		-0.674093, 0.350012, 0.650454,
		44.880005, 51.522499, 49.908569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788952, 51.847393, 49.562634>,  <45.351871, 51.277493, 49.453251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788952, 51.847393, 49.562634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642422, 51.905853, 49.930206>,  <45.554504, 51.940929, 50.150749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642422, 51.905853, 49.930206>,  <45.788952, 51.847393, 49.562634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642422, 51.905853, 49.930206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099007, 0.975858, -0.194675,
		-0.925204, -0.162296, -0.343013,
		-0.366327, 0.146153, 0.918936,
		45.532524, 51.949699, 50.205887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163040, 52.172726, 49.476574>,  <45.788952, 51.847393, 49.562634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163040, 52.172726, 49.476574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330544, 52.273575, 49.825531>,  <45.431046, 52.334084, 50.034904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330544, 52.273575, 49.825531>,  <45.163040, 52.172726, 49.476574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330544, 52.273575, 49.825531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022943, 0.957441, -0.287717,
		-0.907810, 0.140498, 0.395148,
		0.418754, 0.252127, 0.872397,
		45.456169, 52.349213, 50.087250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697025, 52.630405, 49.869820>,  <45.163040, 52.172726, 49.476574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697025, 52.630405, 49.869820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070236, 52.695923, 49.997971>,  <45.294163, 52.735233, 50.074860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070236, 52.695923, 49.997971>,  <44.697025, 52.630405, 49.869820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070236, 52.695923, 49.997971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127110, 0.983014, -0.132392,
		-0.336618, 0.082802, 0.937994,
		0.933023, 0.163794, 0.320376,
		45.350143, 52.745060, 50.094082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804913, 53.035339, 50.538921>,  <44.697025, 52.630405, 49.869820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804913, 53.035339, 50.538921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058094, 53.090759, 50.234245>,  <45.210003, 53.124012, 50.051441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058094, 53.090759, 50.234245>,  <44.804913, 53.035339, 50.538921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058094, 53.090759, 50.234245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367406, 0.919765, -0.138004,
		0.681456, 0.367200, 0.633073,
		0.632953, 0.138551, -0.761691,
		45.247978, 53.132324, 50.005737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010838, 53.822063, 50.403687>,  <44.804913, 53.035339, 50.538921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010838, 53.822063, 50.403687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056923, 53.640507, 50.757114>,  <45.084576, 53.531570, 50.969173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056923, 53.640507, 50.757114>,  <45.010838, 53.822063, 50.403687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056923, 53.640507, 50.757114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303194, -0.830982, -0.466415,
		0.945938, 0.321633, 0.041876,
		0.115217, -0.453896, 0.883574,
		45.091488, 53.504337, 51.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725838, 53.627178, 50.498318>,  <45.010838, 53.822063, 50.403687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725838, 53.627178, 50.498318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539661, 53.336864, 50.700943>,  <45.427956, 53.162674, 50.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539661, 53.336864, 50.700943>,  <45.725838, 53.627178, 50.498318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539661, 53.336864, 50.700943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635010, -0.672518, -0.380108,
		0.616548, 0.144755, 0.773896,
		-0.465436, -0.725786, 0.506561,
		45.400032, 53.119129, 50.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274750, 53.232090, 50.833321>,  <45.725838, 53.627178, 50.498318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274750, 53.232090, 50.833321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940529, 53.025745, 50.757694>,  <45.739998, 52.901939, 50.712318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940529, 53.025745, 50.757694>,  <46.274750, 53.232090, 50.833321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940529, 53.025745, 50.757694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548969, -0.797724, -0.249538,
		-0.022098, -0.312294, 0.949728,
		-0.835550, -0.515857, -0.189068,
		45.689865, 52.870987, 50.700974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226261, 52.697029, 51.245407>,  <46.274750, 53.232090, 50.833321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226261, 52.697029, 51.245407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024925, 52.596310, 50.914772>,  <45.904125, 52.535877, 50.716389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024925, 52.596310, 50.914772>,  <46.226261, 52.697029, 51.245407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024925, 52.596310, 50.914772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509081, -0.859367, -0.048215,
		-0.698204, -0.445070, 0.560735,
		-0.503336, -0.251796, -0.826590,
		45.873924, 52.520771, 50.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779957, 52.463924, 51.630203>,  <46.226261, 52.697029, 51.245407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779957, 52.463924, 51.630203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648602, 52.469887, 52.007973>,  <46.569790, 52.473465, 52.234634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648602, 52.469887, 52.007973>,  <46.779957, 52.463924, 51.630203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648602, 52.469887, 52.007973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769364, -0.575820, 0.276605,
		0.547943, 0.817441, 0.177622,
		-0.328386, 0.014908, 0.944426,
		46.550087, 52.474358, 52.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.303406, 52.779060, 52.063953>,  <46.779957, 52.463924, 51.630203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.303406, 52.779060, 52.063953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081741, 52.512924, 52.264042>,  <46.948742, 52.353241, 52.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081741, 52.512924, 52.264042>,  <47.303406, 52.779060, 52.063953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081741, 52.512924, 52.264042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830416, -0.483423, 0.276969,
		0.057542, 0.568881, 0.820404,
		-0.554165, -0.665339, 0.500225,
		46.915493, 52.313324, 52.414108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774212, 52.986050, 51.472050>,  <47.303406, 52.779060, 52.063953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774212, 52.986050, 51.472050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625427, 52.629581, 51.368153>,  <47.536156, 52.415699, 51.305817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625427, 52.629581, 51.368153>,  <47.774212, 52.986050, 51.472050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625427, 52.629581, 51.368153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318115, -0.140491, 0.937584,
		-0.872038, 0.431368, -0.231238,
		-0.371958, -0.891169, -0.259739,
		47.513840, 52.362232, 51.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.394611, 52.981228, 51.931782>,  <47.774212, 52.986050, 51.472050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.394611, 52.981228, 51.931782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.359875, 53.265625, 52.210911>,  <48.339035, 53.436264, 52.378387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.359875, 53.265625, 52.210911>,  <48.394611, 52.981228, 51.931782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.359875, 53.265625, 52.210911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710655, 0.535102, -0.456766,
		-0.698161, 0.456244, -0.551736,
		-0.086838, 0.710991, 0.697819,
		48.333824, 53.478924, 52.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.141384, 53.714863, 51.652630>,  <48.394611, 52.981228, 51.931782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.141384, 53.714863, 51.652630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.378452, 53.774780, 51.969189>,  <48.520691, 53.810730, 52.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.378452, 53.774780, 51.969189>,  <48.141384, 53.714863, 51.652630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.378452, 53.774780, 51.969189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731960, 0.309876, -0.606805,
		-0.336128, 0.938904, 0.074012,
		0.592666, 0.149790, 0.791397,
		48.556252, 53.819717, 52.206608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.471283, 54.537533, 51.717285>,  <48.141384, 53.714863, 51.652630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.471283, 54.537533, 51.717285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679874, 54.226585, 51.858002>,  <48.805031, 54.040016, 51.942432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679874, 54.226585, 51.858002>,  <48.471283, 54.537533, 51.717285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.679874, 54.226585, 51.858002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819984, 0.342546, -0.458573,
		0.235977, 0.527597, 0.816061,
		0.521480, -0.777370, 0.351788,
		48.836319, 53.993374, 51.963539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.213619, 54.763847, 51.652176>,  <48.471283, 54.537533, 51.717285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.213619, 54.763847, 51.652176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250538, 54.377678, 51.749695>,  <49.272690, 54.145977, 51.808208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250538, 54.377678, 51.749695>,  <49.213619, 54.763847, 51.652176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.250538, 54.377678, 51.749695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953207, 0.014878, -0.301952,
		0.287884, 0.260261, 0.921622,
		0.092298, -0.965423, 0.243800,
		49.278229, 54.088051, 51.822834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.915886, 54.673481, 52.142044>,  <49.213619, 54.763847, 51.652176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.915886, 54.673481, 52.142044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.831520, 54.310265, 51.997276>,  <49.780903, 54.092335, 51.910416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.831520, 54.310265, 51.997276>,  <49.915886, 54.673481, 52.142044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.831520, 54.310265, 51.997276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953562, -0.109677, -0.280518,
		0.215026, -0.404276, 0.889002,
		-0.210910, -0.908037, -0.361918,
		49.768246, 54.037853, 51.888702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.216476, 54.170353, 52.425228>,  <49.915886, 54.673481, 52.142044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.216476, 54.170353, 52.425228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.160873, 54.027294, 52.055847>,  <50.127510, 53.941460, 51.834217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.160873, 54.027294, 52.055847>,  <50.216476, 54.170353, 52.425228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.160873, 54.027294, 52.055847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973907, 0.119551, -0.192903,
		0.179391, -0.926173, 0.331696,
		-0.139007, -0.357647, -0.923453,
		50.119171, 53.920002, 51.778812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.590992, 53.514359, 52.268475>,  <50.216476, 54.170353, 52.425228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.590992, 53.514359, 52.268475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.527100, 53.763176, 51.961868>,  <50.488766, 53.912468, 51.777905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.527100, 53.763176, 51.961868>,  <50.590992, 53.514359, 52.268475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.527100, 53.763176, 51.961868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986548, 0.127942, -0.101752,
		0.034775, -0.772456, -0.634116,
		-0.159729, 0.622048, -0.766514,
		50.479179, 53.949791, 51.731915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.052692, 53.194641, 51.771069>,  <50.590992, 53.514359, 52.268475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.052692, 53.194641, 51.771069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002384, 53.588940, 51.726368>,  <50.972198, 53.825520, 51.699547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002384, 53.588940, 51.726368>,  <51.052692, 53.194641, 51.771069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.002384, 53.588940, 51.726368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979165, 0.141448, 0.145700,
		0.159429, -0.091094, -0.982998,
		-0.125771, 0.985746, -0.111747,
		50.964653, 53.884663, 51.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.419769, 53.436287, 51.181499>,  <51.052692, 53.194641, 51.771069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.419769, 53.436287, 51.181499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.391567, 53.698448, 51.482292>,  <51.374645, 53.855743, 51.662769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.391567, 53.698448, 51.482292>,  <51.419769, 53.436287, 51.181499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.391567, 53.698448, 51.482292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996762, 0.017071, 0.078575,
		0.038661, 0.755086, -0.654485,
		-0.070504, 0.655404, 0.751981,
		51.370415, 53.895069, 51.707886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.896782, 54.074493, 51.064266>,  <51.419769, 53.436287, 51.181499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.896782, 54.074493, 51.064266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.816483, 53.982376, 51.445141>,  <51.768303, 53.927105, 51.673668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.816483, 53.982376, 51.445141>,  <51.896782, 54.074493, 51.064266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.816483, 53.982376, 51.445141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974186, 0.055517, 0.218815,
		-0.103253, 0.971537, 0.213200,
		-0.200750, -0.230290, 0.952190,
		51.756256, 53.913288, 51.730797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.299046, 54.518520, 51.353817>,  <51.896782, 54.074493, 51.064266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.299046, 54.518520, 51.353817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.248695, 54.192532, 51.580086>,  <52.218483, 53.996941, 51.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.248695, 54.192532, 51.580086>,  <52.299046, 54.518520, 51.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.248695, 54.192532, 51.580086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992046, -0.103548, 0.071576,
		0.000241, 0.570179, 0.821520,
		-0.125878, -0.814968, 0.565669,
		52.210934, 53.948040, 51.749786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.794254, 54.461170, 51.859993>,  <52.299046, 54.518520, 51.353817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.794254, 54.461170, 51.859993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.716362, 54.069160, 51.843826>,  <52.669624, 53.833954, 51.834126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.716362, 54.069160, 51.843826>,  <52.794254, 54.461170, 51.859993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.716362, 54.069160, 51.843826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917258, -0.196547, 0.346421,
		-0.347444, 0.030392, 0.937208,
		-0.194734, -0.980023, -0.040412,
		52.657940, 53.775154, 51.831703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.740807, 54.185890, 52.533844>,  <52.794254, 54.461170, 51.859993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.740807, 54.185890, 52.533844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.860893, 53.882248, 52.302803>,  <52.932945, 53.700062, 52.164181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.860893, 53.882248, 52.302803>,  <52.740807, 54.185890, 52.533844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.860893, 53.882248, 52.302803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893949, 0.012673, 0.447989,
		-0.332753, -0.650838, 0.682411,
		0.300217, -0.759111, -0.577599,
		52.950958, 53.654514, 52.129524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.031792, 53.718037, 52.987679>,  <52.740807, 54.185890, 52.533844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.031792, 53.718037, 52.987679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.185635, 53.659088, 52.623180>,  <53.277939, 53.623718, 52.404484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.185635, 53.659088, 52.623180>,  <53.031792, 53.718037, 52.987679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.185635, 53.659088, 52.623180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922908, 0.080518, 0.376506,
		0.017885, -0.985798, 0.166978,
		0.384604, -0.147371, -0.911241,
		53.301014, 53.614876, 52.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.547680, 53.260067, 53.208424>,  <53.031792, 53.718037, 52.987679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.547680, 53.260067, 53.208424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.586498, 53.428310, 52.847610>,  <53.609791, 53.529255, 52.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.586498, 53.428310, 52.847610>,  <53.547680, 53.260067, 53.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.586498, 53.428310, 52.847610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861977, 0.417577, 0.287446,
		0.497572, -0.805431, -0.322031,
		0.097045, 0.420608, -0.902037,
		53.615612, 53.554493, 52.577000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.198757, 53.265892, 52.972572>,  <53.547680, 53.260067, 53.208424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.198757, 53.265892, 52.972572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.064468, 53.598763, 52.796043>,  <53.983894, 53.798485, 52.690125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.064468, 53.598763, 52.796043>,  <54.198757, 53.265892, 52.972572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.064468, 53.598763, 52.796043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795465, 0.501401, 0.340341,
		0.504506, -0.236797, -0.830302,
		-0.335723, 0.832180, -0.441324,
		53.963753, 53.848415, 52.663647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.397266, 52.608383, 52.640167>,  <54.198757, 53.265892, 52.972572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.397266, 52.608383, 52.640167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.541679, 52.237423, 52.679333>,  <54.628326, 52.014847, 52.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.541679, 52.237423, 52.679333>,  <54.397266, 52.608383, 52.640167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.541679, 52.237423, 52.679333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886162, 0.373884, 0.273729,
		-0.290465, -0.012057, 0.956810,
		0.361036, -0.927397, 0.097916,
		54.649990, 51.959206, 52.708706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.709610, 52.488510, 53.337795>,  <54.397266, 52.608383, 52.640167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.709610, 52.488510, 53.337795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.880463, 52.220543, 53.094887>,  <54.982975, 52.059765, 52.949142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.880463, 52.220543, 53.094887>,  <54.709610, 52.488510, 53.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.880463, 52.220543, 53.094887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893137, 0.417286, 0.167862,
		0.140952, -0.614073, 0.776561,
		0.427128, -0.669915, -0.607269,
		55.008602, 52.019569, 52.912704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.278500, 52.199284, 53.722351>,  <54.709610, 52.488510, 53.337795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.278500, 52.199284, 53.722351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.351517, 52.150337, 53.332130>,  <55.395329, 52.120968, 53.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.351517, 52.150337, 53.332130>,  <55.278500, 52.199284, 53.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.351517, 52.150337, 53.332130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943320, 0.301516, 0.138693,
		0.277174, -0.945577, 0.170469,
		0.182544, -0.122364, -0.975554,
		55.406281, 52.113628, 53.039463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.761368, 51.812737, 53.735054>,  <55.278500, 52.199284, 53.722351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.761368, 51.812737, 53.735054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.746849, 52.037270, 53.404335>,  <55.738136, 52.171989, 53.205906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.746849, 52.037270, 53.404335>,  <55.761368, 51.812737, 53.735054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.746849, 52.037270, 53.404335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910193, 0.360147, 0.204555,
		0.412591, -0.745116, -0.523995,
		-0.036298, 0.561334, -0.826793,
		55.735958, 52.205669, 53.156296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.016312, 51.642811, 54.439342>,  <55.761368, 51.812737, 53.735054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.016312, 51.642811, 54.439342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.199913, 51.686951, 54.086720>,  <56.310074, 51.713436, 53.875145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.199913, 51.686951, 54.086720>,  <56.016312, 51.642811, 54.439342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.199913, 51.686951, 54.086720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878221, -0.093660, -0.468994,
		-0.134322, 0.989470, 0.053924,
		0.459005, 0.110353, -0.881553,
		56.337616, 51.720058, 53.822254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.190426, 52.278744, 54.099133>,  <56.016312, 51.642811, 54.439342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.190426, 52.278744, 54.099133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.923546, 52.472557, 54.325432>,  <55.763420, 52.588844, 54.461212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.923546, 52.472557, 54.325432>,  <56.190426, 52.278744, 54.099133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.923546, 52.472557, 54.325432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667895, -0.725422, -0.166370,
		0.329796, -0.488864, 0.807618,
		-0.667196, 0.484536, 0.565751,
		55.723389, 52.617916, 54.495155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.740089, 52.644165, 54.199066>,  <56.190426, 52.278744, 54.099133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.740089, 52.644165, 54.199066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.073143, 52.520287, 54.015411>,  <57.272976, 52.445961, 53.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.073143, 52.520287, 54.015411>,  <56.740089, 52.644165, 54.199066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.073143, 52.520287, 54.015411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502506, 0.770976, 0.391257,
		0.232810, -0.556493, 0.797568,
		0.832638, -0.309695, -0.459132,
		57.322933, 52.427380, 53.877670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.367836, 52.488148, 54.663017>,  <56.740089, 52.644165, 54.199066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.367836, 52.488148, 54.663017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.508476, 52.572720, 54.298233>,  <57.592861, 52.623463, 54.079361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.508476, 52.572720, 54.298233>,  <57.367836, 52.488148, 54.663017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.508476, 52.572720, 54.298233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499359, 0.781639, 0.373739,
		0.791846, -0.586802, 0.169243,
		0.351598, 0.211430, -0.911963,
		57.613956, 52.636147, 54.024643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.187233, 52.561123, 54.615509>,  <57.367836, 52.488148, 54.663017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.187233, 52.561123, 54.615509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.018349, 52.792858, 54.336624>,  <57.917019, 52.931900, 54.169292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.018349, 52.792858, 54.336624>,  <58.187233, 52.561123, 54.615509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.018349, 52.792858, 54.336624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745363, 0.659606, 0.096716,
		0.515917, -0.478843, -0.710309,
		-0.422212, 0.579335, -0.697214,
		57.891685, 52.966660, 54.127460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.778908, 52.987637, 54.583073>,  <58.187233, 52.561123, 54.615509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.778908, 52.987637, 54.583073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.490448, 53.107220, 54.333092>,  <58.317371, 53.178970, 54.183102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.490448, 53.107220, 54.333092>,  <58.778908, 52.987637, 54.583073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.490448, 53.107220, 54.333092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526579, 0.822732, -0.214073,
		0.450169, -0.483465, -0.750739,
		-0.721154, 0.298954, -0.624951,
		58.274101, 53.196907, 54.145607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.731518, 53.668961, 54.470444>,  <58.778908, 52.987637, 54.583073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.731518, 53.668961, 54.470444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.082069, 53.509544, 54.362278>,  <59.292400, 53.413895, 54.297379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.082069, 53.509544, 54.362278>,  <58.731518, 53.668961, 54.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.082069, 53.509544, 54.362278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474185, 0.615722, 0.629314,
		-0.084309, -0.679743, 0.728589,
		0.876380, -0.398542, -0.270413,
		59.344982, 53.389980, 54.281155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.119446, 53.845589, 55.041332>,  <58.731518, 53.668961, 54.470444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.119446, 53.845589, 55.041332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.396751, 53.784149, 54.759682>,  <59.563133, 53.747284, 54.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.396751, 53.784149, 54.759682>,  <59.119446, 53.845589, 55.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.396751, 53.784149, 54.759682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491391, 0.815443, 0.305922,
		0.527186, -0.558085, 0.640793,
		0.693261, -0.153602, -0.704128,
		59.604729, 53.738068, 54.548443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.584793, 54.300987, 55.307789>,  <59.119446, 53.845589, 55.041332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.584793, 54.300987, 55.307789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.731903, 54.193760, 54.951614>,  <59.820168, 54.129425, 54.737907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.731903, 54.193760, 54.951614>,  <59.584793, 54.300987, 55.307789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.731903, 54.193760, 54.951614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679656, 0.731021, 0.060640,
		0.634675, -0.627494, 0.451042,
		0.367772, -0.268067, -0.890440,
		59.842236, 54.113338, 54.684483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.262074, 54.076580, 55.334003>,  <59.584793, 54.300987, 55.307789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.262074, 54.076580, 55.334003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.202072, 54.244179, 54.975800>,  <60.166073, 54.344738, 54.760876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.202072, 54.244179, 54.975800>,  <60.262074, 54.076580, 55.334003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.202072, 54.244179, 54.975800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812892, 0.567830, 0.129518,
		0.562765, -0.708525, -0.425779,
		-0.150003, 0.419001, -0.895510,
		60.157070, 54.369881, 54.707146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.781464, 53.819809, 54.739849>,  <60.262074, 54.076580, 55.334003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.781464, 53.819809, 54.739849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.840088, 54.179626, 54.575249>,  <60.875263, 54.395519, 54.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.840088, 54.179626, 54.575249>,  <60.781464, 53.819809, 54.739849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.840088, 54.179626, 54.575249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752877, 0.168398, 0.636253,
		0.641636, -0.403061, -0.652568,
		0.146558, 0.899547, -0.411505,
		60.884056, 54.449490, 54.451797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.410191, 54.035583, 54.381081>,  <60.781464, 53.819809, 54.739849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.410191, 54.035583, 54.381081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.311234, 54.391685, 54.534050>,  <61.251858, 54.605347, 54.625832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.311234, 54.391685, 54.534050>,  <61.410191, 54.035583, 54.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.311234, 54.391685, 54.534050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932210, 0.111089, 0.344446,
		0.264160, 0.441712, -0.857385,
		-0.247392, 0.890252, 0.382424,
		61.237015, 54.658760, 54.648777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.718292, 54.741814, 54.143887>,  <61.410191, 54.035583, 54.381081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.718292, 54.741814, 54.143887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650055, 54.659569, 54.529346>,  <61.609112, 54.610222, 54.760624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650055, 54.659569, 54.529346>,  <61.718292, 54.741814, 54.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.650055, 54.659569, 54.529346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973952, 0.113078, 0.196549,
		-0.149380, 0.972079, 0.180963,
		-0.170598, -0.205609, 0.963650,
		61.598877, 54.597885, 54.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.998600, 55.365063, 54.569210>,  <61.718292, 54.741814, 54.143887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.998600, 55.365063, 54.569210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.051880, 54.982048, 54.671486>,  <62.083847, 54.752239, 54.732853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.051880, 54.982048, 54.671486>,  <61.998600, 55.365063, 54.569210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.051880, 54.982048, 54.671486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987908, 0.148931, 0.043093,
		-0.079344, 0.246859, 0.965798,
		0.133199, -0.957539, 0.255690,
		62.091839, 54.694786, 54.748192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.465664, 55.928902, 54.513039>,  <61.998600, 55.365063, 54.569210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.465664, 55.928902, 54.513039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.502853, 55.701675, 54.185951>,  <61.525169, 55.565338, 53.989700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.502853, 55.701675, 54.185951>,  <61.465664, 55.928902, 54.513039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.502853, 55.701675, 54.185951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207424, 0.814304, -0.542112,
		0.973823, -0.119210, 0.193542,
		0.092977, -0.568066, -0.817714,
		61.530746, 55.531258, 53.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.085754, 56.177143, 54.085915>,  <61.465664, 55.928902, 54.513039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.085754, 56.177143, 54.085915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.882950, 55.998035, 53.791313>,  <61.761265, 55.890572, 53.614552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.882950, 55.998035, 53.791313>,  <62.085754, 56.177143, 54.085915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.882950, 55.998035, 53.791313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283080, 0.720579, -0.632955,
		0.814127, -0.529407, -0.238590,
		-0.507014, -0.447765, -0.736507,
		61.730846, 55.863705, 53.570362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.496376, 56.447411, 54.654968>,  <62.085754, 56.177143, 54.085915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.496376, 56.447411, 54.654968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.692360, 56.099361, 54.633682>,  <62.809952, 55.890533, 54.620911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.692360, 56.099361, 54.633682>,  <62.496376, 56.447411, 54.654968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.692360, 56.099361, 54.633682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775289, 0.407029, 0.482965,
		-0.398578, -0.277888, 0.874022,
		0.489962, -0.870118, -0.053211,
		62.839348, 55.838326, 54.617718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.756485, 56.173470, 55.403763>,  <62.496376, 56.447411, 54.654968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.756485, 56.173470, 55.403763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.979134, 56.008820, 55.115112>,  <63.112720, 55.910030, 54.941921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.979134, 56.008820, 55.115112>,  <62.756485, 56.173470, 55.403763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.979134, 56.008820, 55.115112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829654, 0.320395, 0.457187,
		0.043012, -0.853175, 0.519848,
		0.556618, -0.411630, -0.721622,
		63.146118, 55.885330, 54.898624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.320271, 55.573132, 55.567917>,  <62.756485, 56.173470, 55.403763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.320271, 55.573132, 55.567917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.445900, 55.785172, 55.252869>,  <63.521278, 55.912395, 55.063839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.445900, 55.785172, 55.252869>,  <63.320271, 55.573132, 55.567917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.445900, 55.785172, 55.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813448, 0.277525, 0.511157,
		0.489549, -0.801234, -0.344043,
		0.314076, 0.530098, -0.787625,
		63.540123, 55.944202, 55.016582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.921696, 55.476959, 55.285561>,  <63.320271, 55.573132, 55.567917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.921696, 55.476959, 55.285561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.892433, 55.853371, 55.153427>,  <63.874878, 56.079216, 55.074146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.892433, 55.853371, 55.153427>,  <63.921696, 55.476959, 55.285561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.892433, 55.853371, 55.153427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838621, 0.237309, 0.490305,
		0.539781, -0.241158, -0.806523,
		-0.073154, 0.941025, -0.330335,
		63.870487, 56.135677, 55.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.584557, 55.725327, 55.019379>,  <63.921696, 55.476959, 55.285561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.584557, 55.725327, 55.019379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.338600, 55.993904, 55.184822>,  <64.191025, 56.155048, 55.284088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.338600, 55.993904, 55.184822>,  <64.584557, 55.725327, 55.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.338600, 55.993904, 55.184822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766002, 0.383859, 0.515649,
		0.187461, 0.633894, -0.750358,
		-0.614898, 0.671440, 0.413605,
		64.154129, 56.195335, 55.308903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.890709, 56.378506, 54.989544>,  <64.584557, 55.725327, 55.019379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.890709, 56.378506, 54.989544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.637444, 56.338825, 55.296600>,  <64.485489, 56.315018, 55.480835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.637444, 56.338825, 55.296600>,  <64.890709, 56.378506, 54.989544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.637444, 56.338825, 55.296600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711341, 0.316394, 0.627606,
		-0.305136, 0.943427, -0.129762,
		-0.633156, -0.099200, 0.767641,
		64.447495, 56.309067, 55.526894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.994301, 57.026268, 55.378208>,  <64.890709, 56.378506, 54.989544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.994301, 57.026268, 55.378208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.872833, 56.756538, 55.647453>,  <64.799957, 56.594700, 55.808998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.872833, 56.756538, 55.647453>,  <64.994301, 57.026268, 55.378208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.872833, 56.756538, 55.647453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737061, 0.281423, 0.614445,
		-0.603764, 0.682705, 0.411561,
		-0.303662, -0.674325, 0.673108,
		64.781738, 56.554241, 55.849384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.523605, 57.164082, 56.130447>,  <64.994301, 57.026268, 55.378208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.523605, 57.164082, 56.130447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.811852, 56.887726, 56.153679>,  <64.984802, 56.721912, 56.167618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.811852, 56.887726, 56.153679>,  <64.523605, 57.164082, 56.130447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.811852, 56.887726, 56.153679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406039, 0.488436, 0.772375,
		-0.561994, -0.533009, 0.632506,
		0.720621, -0.690892, 0.058075,
		65.028038, 56.680458, 56.171101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.521034, 56.959805, 56.744717>,  <64.523605, 57.164082, 56.130447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.521034, 56.959805, 56.744717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.893471, 56.909573, 56.607727>,  <65.116936, 56.879433, 56.525532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.893471, 56.909573, 56.607727>,  <64.521034, 56.959805, 56.744717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.893471, 56.909573, 56.607727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356198, 0.515384, 0.779424,
		0.078631, -0.847708, 0.524602,
		0.931096, -0.125576, -0.342477,
		65.172798, 56.871899, 56.504982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.858154, 56.744434, 57.349911>,  <64.521034, 56.959805, 56.744717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.858154, 56.744434, 57.349911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.130219, 56.861935, 57.081253>,  <65.293457, 56.932434, 56.920059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.130219, 56.861935, 57.081253>,  <64.858154, 56.744434, 57.349911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.130219, 56.861935, 57.081253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603714, 0.295267, 0.740504,
		0.415840, -0.909134, 0.023482,
		0.680151, 0.293755, -0.671641,
		65.334267, 56.950062, 56.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.471497, 56.328220, 57.446617>,  <64.858154, 56.744434, 57.349911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.471497, 56.328220, 57.446617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.522217, 56.703098, 57.316643>,  <65.552650, 56.928024, 57.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.522217, 56.703098, 57.316643>,  <65.471497, 56.328220, 57.446617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.522217, 56.703098, 57.316643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403139, 0.250611, 0.880155,
		0.906310, -0.242605, -0.346041,
		0.126809, 0.937196, -0.324935,
		65.560257, 56.984257, 57.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.521935, 55.598015, 57.388519>,  <65.471497, 56.328220, 57.446617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.521935, 55.598015, 57.388519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.889984, 55.620537, 57.543533>,  <66.110817, 55.634052, 57.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.889984, 55.620537, 57.543533>,  <65.521935, 55.598015, 57.388519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.889984, 55.620537, 57.543533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284332, -0.776542, -0.562261,
		0.269279, 0.627544, -0.730532,
		0.920133, 0.056308, 0.387537,
		66.166023, 55.637428, 57.659794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.537659, 55.142250, 56.882427>,  <65.521935, 55.598015, 57.388519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.537659, 55.142250, 56.882427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.830040, 55.274639, 56.643707>,  <66.005470, 55.354073, 56.500477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.830040, 55.274639, 56.643707>,  <65.537659, 55.142250, 56.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.830040, 55.274639, 56.643707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640845, 0.633512, -0.433568,
		0.234579, 0.699372, 0.675168,
		0.730952, 0.330972, -0.596797,
		66.049324, 55.373932, 56.464668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.013054, 54.713440, 57.235817>,  <65.537659, 55.142250, 56.882427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.013054, 54.713440, 57.235817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.038124, 55.112652, 57.235237>,  <66.053169, 55.352180, 57.234890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.038124, 55.112652, 57.235237>,  <66.013054, 54.713440, 57.235817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.038124, 55.112652, 57.235237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866055, -0.053669, 0.497060,
		0.496004, -0.032411, -0.867715,
		0.062680, 0.998033, -0.001450,
		66.056931, 55.412060, 57.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.595970, 54.820541, 56.852951>,  <66.013054, 54.713440, 57.235817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.595970, 54.820541, 56.852951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.522163, 55.096561, 57.132889>,  <66.477882, 55.262173, 57.300854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.522163, 55.096561, 57.132889>,  <66.595970, 54.820541, 56.852951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.522163, 55.096561, 57.132889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880792, -0.199846, 0.429263,
		0.436075, 0.695624, -0.570916,
		-0.184511, 0.690050, 0.699848,
		66.466812, 55.303577, 57.342842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.162979, 55.065109, 57.040539>,  <66.595970, 54.820541, 56.852951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.162979, 55.065109, 57.040539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.947243, 55.197441, 57.350288>,  <66.817802, 55.276840, 57.536140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.947243, 55.197441, 57.350288>,  <67.162979, 55.065109, 57.040539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.947243, 55.197441, 57.350288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700892, -0.333352, 0.630576,
		0.466752, 0.882853, -0.052082,
		-0.539345, 0.330827, 0.774378,
		66.785439, 55.296688, 57.582603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.669624, 55.382771, 57.463089>,  <67.162979, 55.065109, 57.040539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.669624, 55.382771, 57.463089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368820, 55.293556, 57.711197>,  <67.188339, 55.240028, 57.860062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368820, 55.293556, 57.711197>,  <67.669624, 55.382771, 57.463089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.368820, 55.293556, 57.711197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657172, -0.326485, 0.679362,
		0.050989, 0.918512, 0.392092,
		-0.752014, -0.223032, 0.620267,
		67.143219, 55.226646, 57.897278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.374420, 55.514236, 57.545429>,  <67.669624, 55.382771, 57.463089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.374420, 55.514236, 57.545429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.523308, 55.645741, 57.198242>,  <68.612640, 55.724644, 56.989929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.523308, 55.645741, 57.198242>,  <68.374420, 55.514236, 57.545429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.523308, 55.645741, 57.198242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655245, 0.569244, 0.496604,
		0.657350, -0.753577, -0.003535,
		0.372217, 0.328759, -0.867970,
		68.634972, 55.744370, 56.937851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.118027, 55.420948, 57.447094>,  <68.374420, 55.514236, 57.545429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.118027, 55.420948, 57.447094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.985039, 55.746593, 57.256645>,  <68.905251, 55.941978, 57.142376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.985039, 55.746593, 57.256645>,  <69.118027, 55.420948, 57.447094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.985039, 55.746593, 57.256645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537275, 0.578402, 0.613829,
		0.775114, -0.051732, -0.629700,
		-0.332465, 0.814110, -0.476122,
		68.885300, 55.990826, 57.113808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.656754, 55.704929, 57.030262>,  <69.118027, 55.420948, 57.447094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.656754, 55.704929, 57.030262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.385788, 55.946991, 57.197548>,  <69.223213, 56.092228, 57.297920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.385788, 55.946991, 57.197548>,  <69.656754, 55.704929, 57.030262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.385788, 55.946991, 57.197548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734640, 0.527431, 0.426756,
		0.037671, 0.596328, -0.801857,
		-0.677411, 0.605152, 0.418217,
		69.182564, 56.128536, 57.323013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.707436, 56.385372, 56.959244>,  <69.656754, 55.704929, 57.030262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.707436, 56.385372, 56.959244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.572815, 56.404007, 57.335449>,  <69.492043, 56.415188, 57.561172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.572815, 56.404007, 57.335449>,  <69.707436, 56.385372, 56.959244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.572815, 56.404007, 57.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848021, 0.449206, 0.281203,
		-0.409381, 0.892213, -0.190691,
		-0.336552, 0.046591, 0.940511,
		69.471848, 56.417984, 57.617603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.860283, 57.100899, 57.152119>,  <69.707436, 56.385372, 56.959244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.860283, 57.100899, 57.152119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.851921, 56.826492, 57.443031>,  <69.846909, 56.661846, 57.617580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.851921, 56.826492, 57.443031>,  <69.860283, 57.100899, 57.152119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.851921, 56.826492, 57.443031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966054, 0.173495, 0.191411,
		-0.257491, 0.706597, 0.659105,
		-0.020899, -0.686018, 0.727284,
		69.845650, 56.620686, 57.661217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.209610, 57.333511, 57.746243>,  <69.860283, 57.100899, 57.152119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.209610, 57.333511, 57.746243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.255440, 56.937145, 57.774406>,  <70.282936, 56.699326, 57.791306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.255440, 56.937145, 57.774406>,  <70.209610, 57.333511, 57.746243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.255440, 56.937145, 57.774406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981657, 0.123810, 0.144983,
		-0.152384, 0.052506, 0.986926,
		0.114579, -0.990916, 0.070409,
		70.289810, 56.639870, 57.795528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.409897, 57.225456, 58.475616>,  <70.209610, 57.333511, 57.746243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.409897, 57.225456, 58.475616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.542023, 57.070686, 58.131248>,  <70.621300, 56.977825, 57.924629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.542023, 57.070686, 58.131248>,  <70.409897, 57.225456, 58.475616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.542023, 57.070686, 58.131248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904550, 0.390291, 0.171643,
		0.269596, -0.835441, 0.478911,
		0.330313, -0.386925, -0.860920,
		70.641113, 56.954609, 57.872974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.858315, 56.663128, 58.526138>,  <70.409897, 57.225456, 58.475616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.858315, 56.663128, 58.526138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.938210, 56.928455, 58.237663>,  <70.986145, 57.087650, 58.064579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.938210, 56.928455, 58.237663>,  <70.858315, 56.663128, 58.526138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.938210, 56.928455, 58.237663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854905, 0.241679, 0.459052,
		0.478793, -0.708239, -0.518801,
		0.199735, 0.663317, -0.721191,
		70.998131, 57.127449, 58.021305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.563454, 56.578575, 58.261154>,  <70.858315, 56.663128, 58.526138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.563454, 56.578575, 58.261154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.420685, 56.951481, 58.237526>,  <71.335022, 57.175224, 58.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.420685, 56.951481, 58.237526>,  <71.563454, 56.578575, 58.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.420685, 56.951481, 58.237526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778121, 0.331707, 0.533384,
		0.516850, 0.144410, -0.843808,
		-0.356923, 0.932264, -0.059074,
		71.313606, 57.231159, 58.219803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.000031, 57.115894, 57.973206>,  <71.563454, 56.578575, 58.261154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.000031, 57.115894, 57.973206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.772278, 57.320309, 58.230774>,  <71.635628, 57.442959, 58.385315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.772278, 57.320309, 58.230774>,  <72.000031, 57.115894, 57.973206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.772278, 57.320309, 58.230774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821659, 0.378507, 0.426156,
		-0.025950, 0.771735, -0.635414,
		-0.569388, 0.511035, 0.643926,
		71.601463, 57.473618, 58.423950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.197647, 57.779335, 58.079376>,  <72.000031, 57.115894, 57.973206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.197647, 57.779335, 58.079376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.003334, 57.683594, 58.415642>,  <71.886742, 57.626148, 58.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.003334, 57.683594, 58.415642>,  <72.197647, 57.779335, 58.079376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.003334, 57.683594, 58.415642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819406, 0.210097, 0.533323,
		-0.304273, 0.947929, 0.094063,
		-0.485790, -0.239351, 0.840666,
		71.857597, 57.611790, 58.667843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.454071, 58.322243, 58.508087>,  <72.197647, 57.779335, 58.079376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.454071, 58.322243, 58.508087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.345451, 57.988037, 58.699158>,  <72.280281, 57.787514, 58.813801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.345451, 57.988037, 58.699158>,  <72.454071, 58.322243, 58.508087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.345451, 57.988037, 58.699158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821875, 0.056933, 0.566815,
		-0.500778, 0.546510, 0.671229,
		-0.271555, -0.835515, 0.477674,
		72.263985, 57.737381, 58.842461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.668587, 58.425110, 59.167103>,  <72.454071, 58.322243, 58.508087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.668587, 58.425110, 59.167103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.635086, 58.027168, 59.144310>,  <72.614983, 57.788403, 59.130634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.635086, 58.027168, 59.144310>,  <72.668587, 58.425110, 59.167103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.635086, 58.027168, 59.144310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791779, -0.101153, 0.602374,
		-0.605039, 0.005335, 0.796178,
		-0.083749, -0.994857, -0.056978,
		72.609962, 57.728710, 59.127216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.691467, 58.226456, 59.870895>,  <72.668587, 58.425110, 59.167103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.691467, 58.226456, 59.870895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.814095, 57.925705, 59.637421>,  <72.887672, 57.745255, 59.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.814095, 57.925705, 59.637421>,  <72.691467, 58.226456, 59.870895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.814095, 57.925705, 59.637421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781321, -0.151452, 0.605475,
		-0.543643, -0.641672, 0.541026,
		0.306577, -0.751877, -0.583688,
		72.906067, 57.700142, 59.462315>
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
