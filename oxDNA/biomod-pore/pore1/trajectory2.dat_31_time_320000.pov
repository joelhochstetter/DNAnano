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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.956112, 41.392845, 45.389854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072945, 41.249245, 45.744438>,  <44.143044, 41.163082, 45.957188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072945, 41.249245, 45.744438>,  <43.956112, 41.392845, 45.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072945, 41.249245, 45.744438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949510, 0.002145, 0.313730,
		-0.114533, -0.933331, -0.340257,
		0.292084, -0.359010, 0.886453,
		44.160568, 41.141544, 46.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608295, 40.825596, 45.531815>,  <43.956112, 41.392845, 45.389854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608295, 40.825596, 45.531815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698135, 40.946068, 45.902512>,  <43.752037, 41.018353, 46.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698135, 40.946068, 45.902512>,  <43.608295, 40.825596, 45.531815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698135, 40.946068, 45.902512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936769, -0.195183, 0.290462,
		0.268366, -0.933377, 0.238302,
		0.224598, 0.301184, 0.926739,
		43.765514, 41.036423, 46.180534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480133, 40.285557, 45.918850>,  <43.608295, 40.825596, 45.531815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480133, 40.285557, 45.918850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453400, 40.599007, 46.165901>,  <43.437359, 40.787075, 46.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453400, 40.599007, 46.165901>,  <43.480133, 40.285557, 45.918850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453400, 40.599007, 46.165901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927674, -0.276712, 0.250701,
		0.367361, -0.556205, 0.745441,
		-0.066831, 0.783624, 0.617630,
		43.433350, 40.834095, 46.351189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209305, 39.963783, 46.465691>,  <43.480133, 40.285557, 45.918850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209305, 39.963783, 46.465691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140331, 40.356537, 46.497101>,  <43.098949, 40.592190, 46.515945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140331, 40.356537, 46.497101>,  <43.209305, 39.963783, 46.465691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140331, 40.356537, 46.497101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876663, -0.189323, 0.442288,
		0.449143, 0.007426, 0.893429,
		-0.172431, 0.981886, 0.078523,
		43.088600, 40.651104, 46.520657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854786, 40.068195, 47.104305>,  <43.209305, 39.963783, 46.465691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854786, 40.068195, 47.104305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769592, 40.392975, 46.886913>,  <42.718475, 40.587841, 46.756477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769592, 40.392975, 46.886913>,  <42.854786, 40.068195, 47.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769592, 40.392975, 46.886913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905211, 0.045377, 0.422533,
		0.367737, 0.581961, 0.725321,
		-0.212984, 0.811950, -0.543484,
		42.705696, 40.636559, 46.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507511, 40.492725, 47.554943>,  <42.854786, 40.068195, 47.104305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507511, 40.492725, 47.554943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390778, 40.632446, 47.198780>,  <42.320736, 40.716278, 46.985085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390778, 40.632446, 47.198780>,  <42.507511, 40.492725, 47.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390778, 40.632446, 47.198780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895806, 0.226435, 0.382439,
		0.335205, 0.909239, 0.246825,
		-0.291838, 0.349303, -0.890403,
		42.303226, 40.737236, 46.931660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098263, 41.104218, 47.768818>,  <42.507511, 40.492725, 47.554943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098263, 41.104218, 47.768818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024502, 40.970100, 47.399261>,  <41.980244, 40.889629, 47.177528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024502, 40.970100, 47.399261>,  <42.098263, 41.104218, 47.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024502, 40.970100, 47.399261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982844, 0.066251, 0.172125,
		0.003496, 0.939780, -0.341762,
		-0.184402, -0.335297, -0.923889,
		41.969181, 40.869511, 47.122093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524143, 41.495380, 47.619617>,  <42.098263, 41.104218, 47.768818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524143, 41.495380, 47.619617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541679, 41.190849, 47.360863>,  <41.552200, 41.008129, 47.205612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541679, 41.190849, 47.360863>,  <41.524143, 41.495380, 47.619617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541679, 41.190849, 47.360863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992915, -0.104789, 0.056035,
		-0.110447, 0.639846, -0.760525,
		0.043841, -0.761325, -0.646886,
		41.554832, 40.962452, 47.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008579, 41.627384, 47.160889>,  <41.524143, 41.495380, 47.619617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008579, 41.627384, 47.160889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057579, 41.232918, 47.116211>,  <41.086979, 40.996239, 47.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057579, 41.232918, 47.116211>,  <41.008579, 41.627384, 47.160889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057579, 41.232918, 47.116211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992400, -0.120393, -0.025450,
		0.011651, 0.113959, -0.993417,
		0.122501, -0.986164, -0.111690,
		41.094330, 40.937069, 47.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437660, 41.414410, 46.810898>,  <41.008579, 41.627384, 47.160889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437660, 41.414410, 46.810898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571640, 41.069344, 46.962486>,  <40.652027, 40.862305, 47.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571640, 41.069344, 46.962486>,  <40.437660, 41.414410, 46.810898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571640, 41.069344, 46.962486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934880, -0.254105, 0.247850,
		-0.117513, -0.437309, -0.891600,
		0.334947, -0.862665, 0.378971,
		40.672123, 40.810543, 47.076180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922260, 40.905495, 46.583588>,  <40.437660, 41.414410, 46.810898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922260, 40.905495, 46.583588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121651, 40.744583, 46.890755>,  <40.241283, 40.648037, 47.075054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121651, 40.744583, 46.890755>,  <39.922260, 40.905495, 46.583588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121651, 40.744583, 46.890755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855303, -0.372644, 0.359990,
		0.141341, -0.836246, -0.529826,
		0.498476, -0.402280, 0.767914,
		40.271194, 40.623898, 47.121128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667526, 40.250805, 46.598690>,  <39.922260, 40.905495, 46.583588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667526, 40.250805, 46.598690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829308, 40.292686, 46.962109>,  <39.926376, 40.317814, 47.180161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829308, 40.292686, 46.962109>,  <39.667526, 40.250805, 46.598690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829308, 40.292686, 46.962109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835344, -0.362132, 0.413595,
		0.372319, -0.926228, -0.059001,
		0.404450, 0.104703, 0.908547,
		39.950642, 40.324097, 47.234673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529018, 39.589565, 47.003483>,  <39.667526, 40.250805, 46.598690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529018, 39.589565, 47.003483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643776, 39.818642, 47.310654>,  <39.712631, 39.956089, 47.494957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643776, 39.818642, 47.310654>,  <39.529018, 39.589565, 47.003483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643776, 39.818642, 47.310654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720220, -0.399622, 0.567086,
		0.631647, -0.715770, 0.297817,
		0.286889, 0.572692, 0.767932,
		39.729843, 39.990448, 47.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777973, 39.211605, 47.572578>,  <39.529018, 39.589565, 47.003483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777973, 39.211605, 47.572578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633377, 39.554749, 47.718678>,  <39.546619, 39.760635, 47.806339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633377, 39.554749, 47.718678>,  <39.777973, 39.211605, 47.572578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633377, 39.554749, 47.718678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655118, -0.512442, 0.555179,
		0.663432, -0.038589, 0.747240,
		-0.361493, 0.857854, 0.365251,
		39.524929, 39.812103, 47.828255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812817, 39.177639, 48.256405>,  <39.777973, 39.211605, 47.572578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812817, 39.177639, 48.256405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545929, 39.471733, 48.208660>,  <39.385796, 39.648190, 48.180012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545929, 39.471733, 48.208660>,  <39.812817, 39.177639, 48.256405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545929, 39.471733, 48.208660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603296, -0.439441, 0.665527,
		0.436863, 0.516067, 0.736767,
		-0.667222, 0.735233, -0.119365,
		39.345764, 39.692303, 48.172852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637024, 39.315674, 48.927170>,  <39.812817, 39.177639, 48.256405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637024, 39.315674, 48.927170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331276, 39.458107, 48.712158>,  <39.147827, 39.543568, 48.583153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331276, 39.458107, 48.712158>,  <39.637024, 39.315674, 48.927170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331276, 39.458107, 48.712158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643648, -0.470666, 0.603482,
		-0.038105, 0.807264, 0.588959,
		-0.764373, 0.356086, -0.537529,
		39.101963, 39.564934, 48.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214680, 39.665089, 49.375397>,  <39.637024, 39.315674, 48.927170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214680, 39.665089, 49.375397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987053, 39.586281, 49.056061>,  <38.850475, 39.538998, 48.864460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987053, 39.586281, 49.056061>,  <39.214680, 39.665089, 49.375397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987053, 39.586281, 49.056061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700088, -0.393169, 0.596066,
		-0.431318, 0.898110, 0.085810,
		-0.569071, -0.197019, -0.798337,
		38.816330, 39.527176, 48.816559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597843, 39.912968, 49.608047>,  <39.214680, 39.665089, 49.375397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597843, 39.912968, 49.608047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510159, 39.690689, 49.287262>,  <38.457550, 39.557323, 49.094791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510159, 39.690689, 49.287262>,  <38.597843, 39.912968, 49.608047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510159, 39.690689, 49.287262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861553, -0.275515, 0.426401,
		-0.457903, 0.784408, -0.418365,
		-0.219207, -0.555694, -0.801968,
		38.444397, 39.523979, 49.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843929, 39.986225, 49.466053>,  <38.597843, 39.912968, 49.608047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843929, 39.986225, 49.466053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955086, 39.658928, 49.264755>,  <38.021778, 39.462551, 49.143974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955086, 39.658928, 49.264755>,  <37.843929, 39.986225, 49.466053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955086, 39.658928, 49.264755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866520, -0.439642, 0.236342,
		-0.414634, 0.370398, -0.831194,
		0.277887, -0.818242, -0.503248,
		38.038452, 39.413456, 49.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287327, 39.752037, 49.099068>,  <37.843929, 39.986225, 49.466053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287327, 39.752037, 49.099068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524197, 39.432487, 49.141273>,  <37.666321, 39.240757, 49.166595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524197, 39.432487, 49.141273>,  <37.287327, 39.752037, 49.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524197, 39.432487, 49.141273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800148, -0.567464, 0.194290,
		-0.095338, -0.199479, -0.975253,
		0.592177, -0.798870, 0.105512,
		37.701851, 39.192825, 49.172928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004345, 39.163055, 48.740044>,  <37.287327, 39.752037, 49.099068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004345, 39.163055, 48.740044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261093, 39.022095, 49.012463>,  <37.415142, 38.937519, 49.175915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261093, 39.022095, 49.012463>,  <37.004345, 39.163055, 48.740044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261093, 39.022095, 49.012463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670597, -0.688704, 0.275656,
		0.371897, -0.633641, -0.678375,
		0.641867, -0.352400, 0.681045,
		37.453651, 38.916374, 49.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914101, 38.463886, 48.722351>,  <37.004345, 39.163055, 48.740044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914101, 38.463886, 48.722351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105690, 38.499344, 49.071690>,  <37.220642, 38.520618, 49.281292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105690, 38.499344, 49.071690>,  <36.914101, 38.463886, 48.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105690, 38.499344, 49.071690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571210, -0.723976, 0.386753,
		0.666561, -0.684106, -0.296134,
		0.478974, 0.088640, 0.873342,
		37.249382, 38.525936, 49.333691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918694, 37.755493, 48.849850>,  <36.914101, 38.463886, 48.722351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918694, 37.755493, 48.849850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977364, 37.985840, 49.171562>,  <37.012566, 38.124046, 49.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977364, 37.985840, 49.171562>,  <36.918694, 37.755493, 48.849850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977364, 37.985840, 49.171562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675600, -0.535572, 0.506683,
		0.722531, -0.617689, 0.310500,
		0.146678, 0.575868, 0.804277,
		37.021366, 38.158600, 49.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997669, 37.227547, 49.430923>,  <36.918694, 37.755493, 48.849850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997669, 37.227547, 49.430923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924049, 37.574814, 49.615273>,  <36.879875, 37.783176, 49.725883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924049, 37.574814, 49.615273>,  <36.997669, 37.227547, 49.430923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924049, 37.574814, 49.615273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621672, -0.466008, 0.629572,
		0.761347, -0.170639, 0.625487,
		-0.184052, 0.868170, 0.460875,
		36.868835, 37.835266, 49.753536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865273, 37.064144, 50.148773>,  <36.997669, 37.227547, 49.430923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865273, 37.064144, 50.148773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699379, 37.422256, 50.083687>,  <36.599842, 37.637123, 50.044636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699379, 37.422256, 50.083687>,  <36.865273, 37.064144, 50.148773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699379, 37.422256, 50.083687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787365, -0.263449, 0.557360,
		0.456125, 0.359270, 0.814171,
		-0.414736, 0.895276, -0.162711,
		36.574959, 37.690838, 50.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508713, 37.247463, 50.791752>,  <36.865273, 37.064144, 50.148773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508713, 37.247463, 50.791752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339203, 37.503593, 50.535500>,  <36.237495, 37.657272, 50.381748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339203, 37.503593, 50.535500>,  <36.508713, 37.247463, 50.791752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339203, 37.503593, 50.535500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877376, -0.114495, 0.465942,
		0.225005, 0.759524, 0.610325,
		-0.423773, 0.640324, -0.640626,
		36.212070, 37.695690, 50.343311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111992, 37.689407, 51.268410>,  <36.508713, 37.247463, 50.791752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111992, 37.689407, 51.268410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945084, 37.733505, 50.907581>,  <35.844940, 37.759964, 50.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945084, 37.733505, 50.907581>,  <36.111992, 37.689407, 51.268410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945084, 37.733505, 50.907581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900230, -0.186014, 0.393681,
		-0.124397, 0.976343, 0.176862,
		-0.417267, 0.110244, -0.902072,
		35.819904, 37.766579, 50.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541142, 38.202049, 51.437477>,  <36.111992, 37.689407, 51.268410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541142, 38.202049, 51.437477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449718, 38.033539, 51.086411>,  <35.394863, 37.932434, 50.875771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449718, 38.033539, 51.086411>,  <35.541142, 38.202049, 51.437477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449718, 38.033539, 51.086411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913533, -0.218787, 0.342914,
		-0.336481, 0.880149, -0.334840,
		-0.228557, -0.421272, -0.877663,
		35.381153, 37.907158, 50.823112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858807, 38.477425, 51.226990>,  <35.541142, 38.202049, 51.437477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858807, 38.477425, 51.226990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919647, 38.144012, 51.014542>,  <34.956150, 37.943966, 50.887074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919647, 38.144012, 51.014542>,  <34.858807, 38.477425, 51.226990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919647, 38.144012, 51.014542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910279, -0.327485, 0.253269,
		-0.385042, 0.444950, -0.808556,
		0.152098, -0.833531, -0.531124,
		34.965275, 37.893951, 50.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330292, 38.292145, 50.805244>,  <34.858807, 38.477425, 51.226990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330292, 38.292145, 50.805244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518646, 37.944557, 50.866119>,  <34.631660, 37.736004, 50.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518646, 37.944557, 50.866119>,  <34.330292, 38.292145, 50.805244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518646, 37.944557, 50.866119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853625, -0.405261, 0.327243,
		-0.222687, -0.284007, -0.932604,
		0.470888, -0.868967, 0.152189,
		34.659912, 37.683868, 50.911777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946266, 37.841248, 50.478649>,  <34.330292, 38.292145, 50.805244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946266, 37.841248, 50.478649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147423, 37.633789, 50.755230>,  <34.268116, 37.509312, 50.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147423, 37.633789, 50.755230>,  <33.946266, 37.841248, 50.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147423, 37.633789, 50.755230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824506, -0.527927, 0.203675,
		0.259398, -0.672530, -0.693121,
		0.502894, -0.518649, 0.691448,
		34.298290, 37.478195, 50.962666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630596, 37.237385, 50.392738>,  <33.946266, 37.841248, 50.478649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630596, 37.237385, 50.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819160, 37.206329, 50.744137>,  <33.932297, 37.187695, 50.954975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819160, 37.206329, 50.744137>,  <33.630596, 37.237385, 50.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819160, 37.206329, 50.744137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810116, -0.431809, 0.396552,
		0.348551, -0.898617, -0.266458,
		0.471407, -0.077643, 0.878491,
		33.960583, 37.183037, 51.007683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684532, 36.558075, 50.510281>,  <33.630596, 37.237385, 50.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684532, 36.558075, 50.510281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722466, 36.733521, 50.867744>,  <33.745224, 36.838787, 51.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722466, 36.733521, 50.867744>,  <33.684532, 36.558075, 50.510281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722466, 36.733521, 50.867744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815306, -0.480882, 0.322535,
		0.571212, -0.759191, 0.312003,
		0.094829, 0.438614, 0.893659,
		33.750916, 36.865105, 51.135841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389950, 35.981350, 50.978851>,  <33.684532, 36.558075, 50.510281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389950, 35.981350, 50.978851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411442, 36.310410, 51.205254>,  <33.424335, 36.507847, 51.341095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411442, 36.310410, 51.205254>,  <33.389950, 35.981350, 50.978851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411442, 36.310410, 51.205254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701314, -0.372405, 0.607843,
		0.710825, -0.429607, 0.556926,
		0.053731, 0.822650, 0.566004,
		33.427563, 36.557205, 51.375053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520454, 35.739372, 51.700809>,  <33.389950, 35.981350, 50.978851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520454, 35.739372, 51.700809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365334, 36.105484, 51.744396>,  <33.272263, 36.325150, 51.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365334, 36.105484, 51.744396>,  <33.520454, 35.739372, 51.700809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365334, 36.105484, 51.744396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569382, -0.330841, 0.752561,
		0.724855, 0.229801, 0.649444,
		-0.387802, 0.915279, 0.108968,
		33.248993, 36.380066, 51.777088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698696, 35.928116, 52.346668>,  <33.520454, 35.739372, 51.700809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698696, 35.928116, 52.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395519, 36.169235, 52.246948>,  <33.213612, 36.313908, 52.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395519, 36.169235, 52.246948>,  <33.698696, 35.928116, 52.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395519, 36.169235, 52.246948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449105, -0.205039, 0.869634,
		0.473101, 0.771096, 0.426130,
		-0.757945, 0.602802, -0.249299,
		33.168137, 36.350075, 52.172157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648048, 36.342888, 52.900257>,  <33.698696, 35.928116, 52.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648048, 36.342888, 52.900257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295242, 36.351143, 52.711948>,  <33.083561, 36.356094, 52.598961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295242, 36.351143, 52.711948>,  <33.648048, 36.342888, 52.900257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295242, 36.351143, 52.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469588, -0.121701, 0.874457,
		-0.039248, 0.992352, 0.117032,
		-0.882013, 0.020636, -0.470774,
		33.030640, 36.357334, 52.570717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148083, 36.733719, 53.349365>,  <33.648048, 36.342888, 52.900257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148083, 36.733719, 53.349365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888802, 36.543701, 53.111320>,  <32.733231, 36.429691, 52.968494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888802, 36.543701, 53.111320>,  <33.148083, 36.733719, 53.349365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888802, 36.543701, 53.111320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497373, -0.327640, 0.803288,
		-0.576582, 0.816690, -0.023897,
		-0.648208, -0.475047, -0.595111,
		32.694340, 36.401188, 52.932789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434654, 36.869225, 53.641937>,  <33.148083, 36.733719, 53.349365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434654, 36.869225, 53.641937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426590, 36.539276, 53.415955>,  <32.421753, 36.341305, 53.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426590, 36.539276, 53.415955>,  <32.434654, 36.869225, 53.641937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426590, 36.539276, 53.415955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551434, -0.462178, 0.694487,
		-0.833975, 0.325537, -0.445546,
		-0.020160, -0.824874, -0.564957,
		32.420544, 36.291813, 53.246468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755453, 36.696754, 53.671230>,  <32.434654, 36.869225, 53.641937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755453, 36.696754, 53.671230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955633, 36.369019, 53.559353>,  <32.075741, 36.172379, 53.492226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955633, 36.369019, 53.559353>,  <31.755453, 36.696754, 53.671230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955633, 36.369019, 53.559353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373126, -0.495639, 0.784295,
		-0.781234, -0.288138, -0.553760,
		0.500450, -0.819341, -0.279699,
		32.105770, 36.123215, 53.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218088, 36.063229, 53.602116>,  <31.755453, 36.696754, 53.671230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218088, 36.063229, 53.602116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587975, 35.926201, 53.668507>,  <31.809906, 35.843983, 53.708340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587975, 35.926201, 53.668507>,  <31.218088, 36.063229, 53.602116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587975, 35.926201, 53.668507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303263, -0.399454, 0.865140,
		-0.230068, -0.850344, -0.473270,
		0.924717, -0.342567, 0.165976,
		31.865389, 35.823429, 53.718300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023001, 35.396194, 53.829956>,  <31.218088, 36.063229, 53.602116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023001, 35.396194, 53.829956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407331, 35.450989, 53.926331>,  <31.637930, 35.483868, 53.984154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407331, 35.450989, 53.926331>,  <31.023001, 35.396194, 53.829956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407331, 35.450989, 53.926331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157971, -0.443588, 0.882199,
		0.227728, -0.885699, -0.404570,
		0.960825, 0.136991, 0.240932,
		31.695580, 35.492085, 53.998611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529402, 34.740501, 53.945786>,  <31.023001, 35.396194, 53.829956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529402, 34.740501, 53.945786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593124, 35.074432, 54.156570>,  <31.631357, 35.274792, 54.283039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593124, 35.074432, 54.156570>,  <31.529402, 34.740501, 53.945786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593124, 35.074432, 54.156570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338609, -0.455191, 0.823495,
		0.927343, -0.309621, 0.210165,
		0.159306, 0.834827, 0.526959,
		31.640917, 35.324879, 54.314659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906433, 34.517368, 54.537922>,  <31.529402, 34.740501, 53.945786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906433, 34.517368, 54.537922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676884, 34.838913, 54.600494>,  <31.539154, 35.031841, 54.638039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676884, 34.838913, 54.600494>,  <31.906433, 34.517368, 54.537922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676884, 34.838913, 54.600494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302781, -0.385749, 0.871505,
		0.760917, 0.452766, 0.464766,
		-0.573871, 0.803866, 0.156434,
		31.504723, 35.080074, 54.647423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091919, 34.702225, 55.145893>,  <31.906433, 34.517368, 54.537922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091919, 34.702225, 55.145893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717625, 34.822517, 55.072189>,  <31.493048, 34.894695, 55.027969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717625, 34.822517, 55.072189>,  <32.091919, 34.702225, 55.145893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717625, 34.822517, 55.072189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341147, -0.639208, 0.689226,
		0.089496, 0.707794, 0.700727,
		-0.935740, 0.300734, -0.184255,
		31.436903, 34.912739, 55.016914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679449, 34.485767, 55.786377>,  <32.091919, 34.702225, 55.145893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679449, 34.485767, 55.786377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424391, 34.535400, 55.482269>,  <31.271357, 34.565178, 55.299805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424391, 34.535400, 55.482269>,  <31.679449, 34.485767, 55.786377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424391, 34.535400, 55.482269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539112, -0.776847, 0.325371,
		-0.550242, 0.617343, 0.562246,
		-0.637645, 0.124081, -0.760272,
		31.233097, 34.572624, 55.254189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112894, 35.017475, 55.960102>,  <31.679449, 34.485767, 55.786377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112894, 35.017475, 55.960102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142569, 35.203362, 55.607162>,  <31.160374, 35.314892, 55.395397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142569, 35.203362, 55.607162>,  <31.112894, 35.017475, 55.960102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142569, 35.203362, 55.607162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351587, 0.815786, 0.459216,
		0.933211, -0.344290, -0.102866,
		0.074186, 0.464712, -0.882349,
		31.164825, 35.342773, 55.342457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315645, 35.758617, 55.860050>,  <31.112894, 35.017475, 55.960102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315645, 35.758617, 55.860050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557461, 35.753204, 56.178635>,  <31.702551, 35.749958, 56.369785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557461, 35.753204, 56.178635>,  <31.315645, 35.758617, 55.860050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557461, 35.753204, 56.178635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693187, -0.483672, -0.534372,
		0.392456, 0.875145, -0.283019,
		0.604541, -0.013533, 0.796459,
		31.738823, 35.749146, 56.417572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872601, 36.049999, 55.616127>,  <31.315645, 35.758617, 55.860050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872601, 36.049999, 55.616127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936012, 35.788391, 55.911999>,  <31.974060, 35.631428, 56.089523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936012, 35.788391, 55.911999>,  <31.872601, 36.049999, 55.616127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936012, 35.788391, 55.911999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663023, -0.484603, -0.570579,
		0.731621, 0.580880, 0.356805,
		0.158529, -0.654017, 0.739682,
		31.983572, 35.592186, 56.133904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553959, 36.137287, 55.979546>,  <31.872601, 36.049999, 55.616127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553959, 36.137287, 55.979546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395454, 35.772087, 55.940739>,  <32.300350, 35.552967, 55.917454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395454, 35.772087, 55.940739>,  <32.553959, 36.137287, 55.979546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395454, 35.772087, 55.940739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722569, -0.244917, -0.646460,
		0.566455, -0.326269, 0.756754,
		-0.396262, -0.912998, -0.097018,
		32.276577, 35.498188, 55.911633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166580, 35.591866, 55.993179>,  <32.553959, 36.137287, 55.979546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166580, 35.591866, 55.993179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836403, 35.480995, 55.796478>,  <32.638298, 35.414474, 55.678455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836403, 35.480995, 55.796478>,  <33.166580, 35.591866, 55.993179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836403, 35.480995, 55.796478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547816, -0.183152, -0.816304,
		0.136194, -0.943202, 0.303022,
		-0.825438, -0.277176, -0.491757,
		32.588772, 35.397842, 55.648952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134392, 34.968433, 55.854172>,  <33.166580, 35.591866, 55.993179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134392, 34.968433, 55.854172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932659, 35.107559, 55.538025>,  <32.811619, 35.191036, 55.348339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932659, 35.107559, 55.538025>,  <33.134392, 34.968433, 55.854172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932659, 35.107559, 55.538025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812783, -0.117885, -0.570514,
		-0.291605, -0.930123, -0.223244,
		-0.504331, 0.347814, -0.790364,
		32.781361, 35.211903, 55.300915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213543, 34.528152, 55.356308>,  <33.134392, 34.968433, 55.854172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213543, 34.528152, 55.356308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136841, 34.880859, 55.183926>,  <33.090820, 35.092484, 55.080498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136841, 34.880859, 55.183926>,  <33.213543, 34.528152, 55.356308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136841, 34.880859, 55.183926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846549, -0.073571, -0.527202,
		-0.496575, -0.465914, -0.732351,
		-0.191751, 0.881766, -0.430953,
		33.079315, 35.145390, 55.054638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490612, 34.528259, 54.663609>,  <33.213543, 34.528152, 55.356308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490612, 34.528259, 54.663609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458149, 34.912674, 54.769302>,  <33.438671, 35.143322, 54.832718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458149, 34.912674, 54.769302>,  <33.490612, 34.528259, 54.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458149, 34.912674, 54.769302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865116, 0.199575, -0.460157,
		-0.494963, 0.191251, -0.847605,
		-0.081155, 0.961037, 0.264237,
		33.433804, 35.200985, 54.848572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640865, 34.876064, 54.005020>,  <33.490612, 34.528259, 54.663609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640865, 34.876064, 54.005020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684799, 35.138359, 54.303806>,  <33.711159, 35.295734, 54.483078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684799, 35.138359, 54.303806>,  <33.640865, 34.876064, 54.005020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684799, 35.138359, 54.303806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882169, 0.281935, -0.377214,
		-0.457946, 0.700377, -0.547501,
		0.109832, 0.655732, 0.746962,
		33.717751, 35.335079, 54.527893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899323, 35.411930, 53.678875>,  <33.640865, 34.876064, 54.005020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899323, 35.411930, 53.678875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005402, 35.488152, 54.056946>,  <34.069050, 35.533886, 54.283787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005402, 35.488152, 54.056946>,  <33.899323, 35.411930, 53.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005402, 35.488152, 54.056946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877384, 0.358810, -0.318517,
		-0.399834, 0.913752, -0.072035,
		0.265199, 0.190556, 0.945176,
		34.084961, 35.545319, 54.340500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204166, 36.013897, 53.595341>,  <33.899323, 35.411930, 53.678875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204166, 36.013897, 53.595341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348930, 35.867088, 53.938110>,  <34.435787, 35.779003, 54.143772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348930, 35.867088, 53.938110>,  <34.204166, 36.013897, 53.595341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348930, 35.867088, 53.938110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916898, 0.306091, -0.256138,
		-0.168290, 0.878411, 0.447294,
		0.361907, -0.367017, 0.856926,
		34.457504, 35.756985, 54.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683071, 36.572399, 53.857342>,  <34.204166, 36.013897, 53.595341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683071, 36.572399, 53.857342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806065, 36.248459, 54.057178>,  <34.879860, 36.054092, 54.177078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806065, 36.248459, 54.057178>,  <34.683071, 36.572399, 53.857342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806065, 36.248459, 54.057178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947901, 0.306651, -0.086310,
		-0.083301, 0.500099, 0.861952,
		0.307482, -0.809855, 0.499589,
		34.898308, 36.005501, 54.207054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265976, 36.738159, 54.177132>,  <34.683071, 36.572399, 53.857342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265976, 36.738159, 54.177132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291924, 36.340446, 54.211075>,  <35.307491, 36.101818, 54.231441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291924, 36.340446, 54.211075>,  <35.265976, 36.738159, 54.177132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291924, 36.340446, 54.211075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989506, 0.053091, -0.134389,
		0.129115, 0.092685, 0.987289,
		0.064872, -0.994279, 0.084857,
		35.311386, 36.042164, 54.236530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783939, 36.568871, 54.748985>,  <35.265976, 36.738159, 54.177132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783939, 36.568871, 54.748985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737812, 36.254395, 54.506134>,  <35.710136, 36.065708, 54.360424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737812, 36.254395, 54.506134>,  <35.783939, 36.568871, 54.748985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737812, 36.254395, 54.506134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993150, -0.102840, -0.055462,
		-0.018834, -0.609365, 0.792666,
		-0.115315, -0.786192, -0.607128,
		35.703217, 36.018536, 54.323997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254028, 36.172001, 54.945435>,  <35.783939, 36.568871, 54.748985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254028, 36.172001, 54.945435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197655, 36.009720, 54.584206>,  <36.163830, 35.912354, 54.367466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197655, 36.009720, 54.584206>,  <36.254028, 36.172001, 54.945435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197655, 36.009720, 54.584206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961183, -0.274623, -0.026634,
		-0.237200, -0.871774, 0.428657,
		-0.140938, -0.405700, -0.903075,
		36.155373, 35.888008, 54.313282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730309, 35.601646, 54.929909>,  <36.254028, 36.172001, 54.945435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730309, 35.601646, 54.929909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644501, 35.674057, 54.545990>,  <36.593018, 35.717503, 54.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644501, 35.674057, 54.545990>,  <36.730309, 35.601646, 54.929909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644501, 35.674057, 54.545990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974949, -0.019468, -0.221575,
		-0.058796, -0.983286, -0.172315,
		-0.214516, 0.181026, -0.959798,
		36.580147, 35.728363, 54.258049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196575, 35.130928, 54.461739>,  <36.730309, 35.601646, 54.929909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196575, 35.130928, 54.461739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074329, 35.445213, 54.246613>,  <37.000980, 35.633785, 54.117535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074329, 35.445213, 54.246613>,  <37.196575, 35.130928, 54.461739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074329, 35.445213, 54.246613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948317, 0.200518, -0.245943,
		-0.085399, -0.585186, -0.806390,
		-0.305618, 0.785716, -0.537818,
		36.982643, 35.680927, 54.085266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480976, 35.061798, 53.744858>,  <37.196575, 35.130928, 54.461739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480976, 35.061798, 53.744858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415146, 35.447754, 53.826744>,  <37.375648, 35.679325, 53.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415146, 35.447754, 53.826744>,  <37.480976, 35.061798, 53.744858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415146, 35.447754, 53.826744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857004, 0.242629, -0.454614,
		-0.488321, 0.100623, -0.866843,
		-0.164577, 0.964886, 0.204715,
		37.365772, 35.737221, 53.888157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868950, 35.279617, 53.230263>,  <37.480976, 35.061798, 53.744858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868950, 35.279617, 53.230263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799271, 35.585258, 53.478714>,  <37.757462, 35.768642, 53.627785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799271, 35.585258, 53.478714>,  <37.868950, 35.279617, 53.230263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799271, 35.585258, 53.478714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876316, 0.407996, -0.256144,
		-0.449139, 0.499686, -0.740667,
		-0.174198, 0.764103, 0.621130,
		37.747013, 35.814487, 53.665054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974968, 35.931843, 52.840454>,  <37.868950, 35.279617, 53.230263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974968, 35.931843, 52.840454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024933, 36.021294, 53.227108>,  <38.054913, 36.074963, 53.459103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024933, 36.021294, 53.227108>,  <37.974968, 35.931843, 52.840454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024933, 36.021294, 53.227108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903658, 0.376602, -0.203895,
		-0.409634, 0.898979, -0.155038,
		0.124910, 0.223623, 0.966639,
		38.062405, 36.088379, 53.517101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209816, 36.563496, 52.795528>,  <37.974968, 35.931843, 52.840454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209816, 36.563496, 52.795528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303673, 36.426353, 53.159374>,  <38.359985, 36.344070, 53.377682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303673, 36.426353, 53.159374>,  <38.209816, 36.563496, 52.795528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303673, 36.426353, 53.159374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920997, 0.377760, -0.095193,
		-0.310978, 0.860087, 0.404404,
		0.234642, -0.342852, 0.909613,
		38.374065, 36.323498, 53.432259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507404, 37.154125, 53.165447>,  <38.209816, 36.563496, 52.795528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507404, 37.154125, 53.165447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636475, 36.827232, 53.356453>,  <38.713917, 36.631096, 53.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636475, 36.827232, 53.356453>,  <38.507404, 37.154125, 53.165447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636475, 36.827232, 53.356453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941045, 0.331131, -0.069187,
		-0.101578, 0.471687, 0.875896,
		0.322671, -0.817229, 0.477514,
		38.733276, 36.582062, 53.499706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031902, 37.287018, 53.568996>,  <38.507404, 37.154125, 53.165447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031902, 37.287018, 53.568996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076530, 36.891609, 53.528259>,  <39.103306, 36.654362, 53.503815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076530, 36.891609, 53.528259>,  <39.031902, 37.287018, 53.568996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076530, 36.891609, 53.528259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971411, 0.130096, -0.198586,
		0.209557, -0.076779, 0.974777,
		0.111567, -0.988524, -0.101846,
		39.110001, 36.595051, 53.497704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683052, 37.283890, 53.839775>,  <39.031902, 37.287018, 53.568996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683052, 37.283890, 53.839775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631866, 36.943810, 53.635506>,  <39.601154, 36.739761, 53.512943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631866, 36.943810, 53.635506>,  <39.683052, 37.283890, 53.839775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631866, 36.943810, 53.635506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958900, 0.025422, -0.282603,
		0.253251, -0.525845, 0.812004,
		-0.127962, -0.850200, -0.510671,
		39.593479, 36.688751, 53.482304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297268, 36.804810, 53.969677>,  <39.683052, 37.283890, 53.839775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297268, 36.804810, 53.969677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139137, 36.677917, 53.624870>,  <40.044258, 36.601780, 53.417984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139137, 36.677917, 53.624870>,  <40.297268, 36.804810, 53.969677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139137, 36.677917, 53.624870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908625, 0.002459, -0.417607,
		0.134598, -0.948345, 0.287273,
		-0.395328, -0.317232, -0.862020,
		40.020538, 36.582748, 53.366264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933990, 36.499813, 53.652622>,  <40.297268, 36.804810, 53.969677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933990, 36.499813, 53.652622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663063, 36.523369, 53.359291>,  <40.500507, 36.537502, 53.183292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663063, 36.523369, 53.359291>,  <40.933990, 36.499813, 53.652622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663063, 36.523369, 53.359291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735078, 0.094795, -0.671323,
		0.029984, -0.993754, -0.107492,
		-0.677320, 0.058886, -0.733328,
		40.459866, 36.541035, 53.139294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178490, 36.122841, 53.178986>,  <40.933990, 36.499813, 53.652622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178490, 36.122841, 53.178986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923187, 36.369202, 52.994251>,  <40.770004, 36.517017, 52.883411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923187, 36.369202, 52.994251>,  <41.178490, 36.122841, 53.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923187, 36.369202, 52.994251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682802, 0.175846, -0.709126,
		-0.355544, -0.767944, -0.532777,
		-0.638255, 0.615906, -0.461832,
		40.731712, 36.553974, 52.855701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107552, 35.979568, 52.528610>,  <41.178490, 36.122841, 53.178986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107552, 35.979568, 52.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985973, 36.356834, 52.474846>,  <40.913025, 36.583195, 52.442589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985973, 36.356834, 52.474846>,  <41.107552, 35.979568, 52.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985973, 36.356834, 52.474846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712713, 0.131489, -0.689022,
		-0.632185, -0.305218, -0.712168,
		-0.303944, 0.943161, -0.134407,
		40.894791, 36.639782, 52.434525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139736, 36.079617, 51.821331>,  <41.107552, 35.979568, 52.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139736, 36.079617, 51.821331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138779, 36.454529, 51.960762>,  <41.138203, 36.679474, 52.044418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138779, 36.454529, 51.960762>,  <41.139736, 36.079617, 51.821331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138779, 36.454529, 51.960762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823773, 0.199463, -0.530671,
		-0.566914, 0.285873, -0.772583,
		-0.002397, 0.937279, 0.348573,
		41.138058, 36.735714, 52.065334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084606, 36.475792, 51.228535>,  <41.139736, 36.079617, 51.821331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084606, 36.475792, 51.228535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247322, 36.700249, 51.516880>,  <41.344952, 36.834923, 51.689888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247322, 36.700249, 51.516880>,  <41.084606, 36.475792, 51.228535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247322, 36.700249, 51.516880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780212, 0.197048, -0.593668,
		-0.475176, 0.803924, -0.357652,
		0.406790, 0.561141, 0.720863,
		41.369358, 36.868591, 51.733139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225117, 37.013920, 50.921280>,  <41.084606, 36.475792, 51.228535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225117, 37.013920, 50.921280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453964, 37.072144, 51.244141>,  <41.591274, 37.107079, 51.437855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453964, 37.072144, 51.244141>,  <41.225117, 37.013920, 50.921280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453964, 37.072144, 51.244141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640206, 0.535878, -0.550428,
		-0.512653, 0.831653, 0.213399,
		0.572121, 0.145559, 0.807149,
		41.625599, 37.115810, 51.486286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440937, 37.624718, 50.938332>,  <41.225117, 37.013920, 50.921280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440937, 37.624718, 50.938332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715065, 37.474937, 51.188171>,  <41.879543, 37.385071, 51.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715065, 37.474937, 51.188171>,  <41.440937, 37.624718, 50.938332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715065, 37.474937, 51.188171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726122, 0.416727, -0.546888,
		-0.055506, 0.828328, 0.557487,
		0.685322, -0.374448, 0.624598,
		41.920662, 37.362602, 51.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899384, 38.190819, 51.046730>,  <41.440937, 37.624718, 50.938332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899384, 38.190819, 51.046730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110947, 37.866440, 51.146835>,  <42.237885, 37.671814, 51.206898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110947, 37.866440, 51.146835>,  <41.899384, 38.190819, 51.046730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110947, 37.866440, 51.146835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767859, 0.331666, -0.548079,
		0.361459, 0.482045, 0.798110,
		0.528905, -0.810944, 0.250259,
		42.269619, 37.623158, 51.221912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553474, 38.407547, 51.231812>,  <41.899384, 38.190819, 51.046730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553474, 38.407547, 51.231812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599648, 38.025093, 51.124119>,  <42.627350, 37.795620, 51.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599648, 38.025093, 51.124119>,  <42.553474, 38.407547, 51.231812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599648, 38.025093, 51.124119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785523, 0.253762, -0.564410,
		0.607972, -0.146340, 0.780356,
		0.115429, -0.956133, -0.269234,
		42.634277, 37.738255, 51.043350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193108, 38.299713, 51.345718>,  <42.553474, 38.407547, 51.231812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193108, 38.299713, 51.345718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102638, 38.007416, 51.088081>,  <43.048359, 37.832035, 50.933498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102638, 38.007416, 51.088081>,  <43.193108, 38.299713, 51.345718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102638, 38.007416, 51.088081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830706, 0.200619, -0.519307,
		0.508699, -0.652504, 0.561661,
		-0.226171, -0.730746, -0.644094,
		43.034786, 37.788193, 50.894852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781418, 37.964306, 51.249672>,  <43.193108, 38.299713, 51.345718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781418, 37.964306, 51.249672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562431, 37.878410, 50.926147>,  <43.431042, 37.826874, 50.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562431, 37.878410, 50.926147>,  <43.781418, 37.964306, 51.249672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562431, 37.878410, 50.926147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820608, 0.051620, -0.569156,
		0.163968, -0.975307, 0.147953,
		-0.547464, -0.214735, -0.808809,
		43.398193, 37.813992, 50.683506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272663, 37.658508, 50.852531>,  <43.781418, 37.964306, 51.249672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272663, 37.658508, 50.852531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972031, 37.734322, 50.599800>,  <43.791653, 37.779808, 50.448162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972031, 37.734322, 50.599800>,  <44.272663, 37.658508, 50.852531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972031, 37.734322, 50.599800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659619, 0.224222, -0.717375,
		0.005703, -0.955930, -0.293541,
		-0.751578, 0.189534, -0.631828,
		43.746555, 37.791180, 50.410252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549454, 37.404404, 50.238789>,  <44.272663, 37.658508, 50.852531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549454, 37.404404, 50.238789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228355, 37.590973, 50.090172>,  <44.035694, 37.702915, 50.001003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228355, 37.590973, 50.090172>,  <44.549454, 37.404404, 50.238789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228355, 37.590973, 50.090172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543140, 0.314709, -0.778432,
		-0.246152, -0.826684, -0.505966,
		-0.802750, 0.466423, -0.371539,
		43.987530, 37.730900, 49.978710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412880, 37.118404, 49.474113>,  <44.549454, 37.404404, 50.238789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412880, 37.118404, 49.474113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236404, 37.475914, 49.506413>,  <44.130520, 37.690418, 49.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236404, 37.475914, 49.506413>,  <44.412880, 37.118404, 49.474113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236404, 37.475914, 49.506413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428097, 0.288686, -0.856384,
		-0.788723, -0.343262, -0.509987,
		-0.441191, 0.893773, 0.080744,
		44.104046, 37.744045, 49.530636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145836, 37.204365, 48.720650>,  <44.412880, 37.118404, 49.474113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145836, 37.204365, 48.720650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168175, 37.540474, 48.936359>,  <44.181580, 37.742142, 49.065784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168175, 37.540474, 48.936359>,  <44.145836, 37.204365, 48.720650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168175, 37.540474, 48.936359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168439, 0.524445, -0.834617,
		-0.984129, 0.137446, -0.112246,
		0.055848, 0.840277, 0.539273,
		44.184929, 37.792557, 49.098141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895363, 37.662197, 48.296326>,  <44.145836, 37.204365, 48.720650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895363, 37.662197, 48.296326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095062, 37.877800, 48.567684>,  <44.214882, 38.007160, 48.730499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095062, 37.877800, 48.567684>,  <43.895363, 37.662197, 48.296326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095062, 37.877800, 48.567684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209076, 0.684875, -0.698021,
		-0.840855, 0.490323, 0.229229,
		0.499249, 0.539008, 0.678396,
		44.244839, 38.039501, 48.771202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691132, 38.321339, 48.454113>,  <43.895363, 37.662197, 48.296326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691132, 38.321339, 48.454113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070709, 38.394089, 48.557201>,  <44.298458, 38.437740, 48.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070709, 38.394089, 48.557201>,  <43.691132, 38.321339, 48.454113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070709, 38.394089, 48.557201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023031, 0.774897, -0.631668,
		-0.314590, 0.605356, 0.731148,
		0.948948, 0.181877, 0.257716,
		44.355392, 38.448650, 48.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767879, 39.028175, 48.373772>,  <43.691132, 38.321339, 48.454113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767879, 39.028175, 48.373772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152214, 38.917656, 48.382343>,  <44.382812, 38.851345, 48.387486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152214, 38.917656, 48.382343>,  <43.767879, 39.028175, 48.373772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152214, 38.917656, 48.382343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235515, 0.773366, -0.588590,
		0.146056, 0.570582, 0.808148,
		0.960833, -0.276298, 0.021426,
		44.440464, 38.834766, 48.388771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167419, 39.634399, 48.413517>,  <43.767879, 39.028175, 48.373772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167419, 39.634399, 48.413517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448059, 39.373940, 48.297752>,  <44.616444, 39.217663, 48.228294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448059, 39.373940, 48.297752>,  <44.167419, 39.634399, 48.413517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448059, 39.373940, 48.297752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447111, 0.718536, -0.532728,
		0.554840, 0.244362, 0.795261,
		0.701601, -0.651148, -0.289416,
		44.658539, 39.178596, 48.210926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774574, 39.967674, 48.523552>,  <44.167419, 39.634399, 48.413517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774574, 39.967674, 48.523552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846184, 39.673996, 48.261589>,  <44.889149, 39.497787, 48.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846184, 39.673996, 48.261589>,  <44.774574, 39.967674, 48.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846184, 39.673996, 48.261589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396742, 0.663012, -0.634831,
		0.900302, -0.146176, 0.409985,
		0.179028, -0.734199, -0.654905,
		44.899891, 39.453735, 48.065117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496563, 40.019085, 48.293301>,  <44.774574, 39.967674, 48.523552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496563, 40.019085, 48.293301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341637, 39.811111, 47.988762>,  <45.248680, 39.686325, 47.806038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341637, 39.811111, 47.988762>,  <45.496563, 40.019085, 48.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341637, 39.811111, 47.988762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304047, 0.707570, -0.637887,
		0.870368, -0.478550, -0.115969,
		-0.387317, -0.519937, -0.761348,
		45.225441, 39.655128, 47.760357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565205, 39.863026, 49.066582>,  <45.496563, 40.019085, 48.293301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565205, 39.863026, 49.066582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471436, 40.248390, 49.014595>,  <45.415173, 40.479607, 48.983402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471436, 40.248390, 49.014595>,  <45.565205, 39.863026, 49.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471436, 40.248390, 49.014595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413786, 0.022088, 0.910106,
		0.879674, 0.267129, 0.393467,
		-0.234425, 0.963408, -0.129965,
		45.401108, 40.537411, 48.975605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751450, 40.165188, 49.602081>,  <45.565205, 39.863026, 49.066582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751450, 40.165188, 49.602081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473129, 40.407951, 49.448452>,  <45.306137, 40.553612, 49.356274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473129, 40.407951, 49.448452>,  <45.751450, 40.165188, 49.602081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473129, 40.407951, 49.448452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483867, -0.000918, 0.875141,
		0.530781, 0.794769, 0.294303,
		-0.695805, 0.606912, -0.384075,
		45.264389, 40.590023, 49.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505577, 40.440575, 50.222435>,  <45.751450, 40.165188, 49.602081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505577, 40.440575, 50.222435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227779, 40.564545, 49.962704>,  <45.061100, 40.638927, 49.806866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227779, 40.564545, 49.962704>,  <45.505577, 40.440575, 50.222435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227779, 40.564545, 49.962704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676850, 0.024672, 0.735708,
		0.244036, 0.950440, 0.192640,
		-0.694494, 0.309927, -0.649326,
		45.019432, 40.657524, 49.767906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292351, 40.988647, 50.506992>,  <45.505577, 40.440575, 50.222435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292351, 40.988647, 50.506992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011059, 40.851982, 50.257595>,  <44.842285, 40.769985, 50.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011059, 40.851982, 50.257595>,  <45.292351, 40.988647, 50.506992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011059, 40.851982, 50.257595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643253, -0.067767, 0.762649,
		-0.302818, 0.937378, -0.172118,
		-0.703226, -0.341659, -0.623492,
		44.800091, 40.749485, 50.070549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745773, 41.366047, 50.567307>,  <45.292351, 40.988647, 50.506992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745773, 41.366047, 50.567307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570759, 41.042747, 50.409679>,  <44.465752, 40.848766, 50.315102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570759, 41.042747, 50.409679>,  <44.745773, 41.366047, 50.567307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570759, 41.042747, 50.409679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687114, 0.017831, 0.726331,
		-0.580030, 0.588570, -0.563161,
		-0.437538, -0.808250, -0.394072,
		44.439499, 40.800274, 50.291458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097370, 41.494339, 50.687775>,  <44.745773, 41.366047, 50.567307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097370, 41.494339, 50.687775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089893, 41.103798, 50.601624>,  <44.085407, 40.869473, 50.549934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089893, 41.103798, 50.601624>,  <44.097370, 41.494339, 50.687775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089893, 41.103798, 50.601624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701872, -0.140601, 0.698288,
		-0.712058, 0.164220, -0.682646,
		-0.018692, -0.976352, -0.215377,
		44.084286, 40.810894, 50.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386139, 41.344479, 50.646034>,  <44.097370, 41.494339, 50.687775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386139, 41.344479, 50.646034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572472, 40.996117, 50.708675>,  <43.684273, 40.787098, 50.746258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572472, 40.996117, 50.708675>,  <43.386139, 41.344479, 50.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572472, 40.996117, 50.708675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569543, -0.159657, 0.806306,
		-0.677214, -0.464795, -0.570392,
		0.465834, -0.870905, 0.156598,
		43.712223, 40.734844, 50.755653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937824, 40.943493, 50.760487>,  <43.386139, 41.344479, 50.646034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937824, 40.943493, 50.760487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226055, 40.689880, 50.872757>,  <43.398994, 40.537712, 50.940121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226055, 40.689880, 50.872757>,  <42.937824, 40.943493, 50.760487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226055, 40.689880, 50.872757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642715, -0.458861, 0.613485,
		-0.260177, -0.622456, -0.738144,
		0.720573, -0.634031, 0.280677,
		43.442226, 40.499672, 50.956959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711208, 40.283840, 50.736809>,  <42.937824, 40.943493, 50.760487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711208, 40.283840, 50.736809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992992, 40.287460, 51.020683>,  <43.162064, 40.289631, 51.191006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992992, 40.287460, 51.020683>,  <42.711208, 40.283840, 50.736809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992992, 40.287460, 51.020683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611856, -0.498980, 0.613719,
		0.359673, -0.866566, -0.345975,
		0.704462, 0.009051, 0.709683,
		43.204330, 40.290176, 51.233589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596905, 39.748966, 51.188374>,  <42.711208, 40.283840, 50.736809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596905, 39.748966, 51.188374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807671, 39.971069, 51.445763>,  <42.934128, 40.104332, 51.600197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807671, 39.971069, 51.445763>,  <42.596905, 39.748966, 51.188374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807671, 39.971069, 51.445763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483785, -0.426534, 0.764212,
		0.698796, -0.713973, 0.043880,
		0.526911, 0.555257, 0.643470,
		42.965744, 40.137646, 51.638805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019703, 39.301266, 51.619614>,  <42.596905, 39.748966, 51.188374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019703, 39.301266, 51.619614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966164, 39.652130, 51.804077>,  <42.934040, 39.862648, 51.914753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966164, 39.652130, 51.804077>,  <43.019703, 39.301266, 51.619614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966164, 39.652130, 51.804077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399023, -0.473658, 0.785130,
		0.907119, -0.078924, 0.413408,
		-0.133848, 0.877165, 0.461156,
		42.926010, 39.915279, 51.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995083, 39.017200, 52.246090>,  <43.019703, 39.301266, 51.619614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995083, 39.017200, 52.246090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902054, 39.404373, 52.284081>,  <42.846237, 39.636677, 52.306877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902054, 39.404373, 52.284081>,  <42.995083, 39.017200, 52.246090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902054, 39.404373, 52.284081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602146, -0.219995, 0.767478,
		0.763759, 0.121306, 0.634000,
		-0.232577, 0.967929, 0.094979,
		42.832279, 39.694752, 52.312572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234344, 39.359013, 52.892918>,  <42.995083, 39.017200, 52.246090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234344, 39.359013, 52.892918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904671, 39.558121, 52.784885>,  <42.706867, 39.677586, 52.720066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904671, 39.558121, 52.784885>,  <43.234344, 39.359013, 52.892918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904671, 39.558121, 52.784885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391397, -0.155984, 0.906906,
		0.409300, 0.853168, 0.323384,
		-0.824186, 0.497768, -0.270083,
		42.657413, 39.707451, 52.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898289, 39.682270, 53.530415>,  <43.234344, 39.359013, 52.892918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898289, 39.682270, 53.530415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603523, 39.679871, 53.260029>,  <42.426666, 39.678432, 53.097797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603523, 39.679871, 53.260029>,  <42.898289, 39.682270, 53.530415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603523, 39.679871, 53.260029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661923, -0.196545, 0.723345,
		-0.137194, 0.980476, 0.140867,
		-0.736909, -0.005995, -0.675965,
		42.382450, 39.678074, 53.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376797, 40.104553, 53.769192>,  <42.898289, 39.682270, 53.530415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376797, 40.104553, 53.769192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198944, 39.854805, 53.512299>,  <42.092232, 39.704956, 53.358162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198944, 39.854805, 53.512299>,  <42.376797, 40.104553, 53.769192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198944, 39.854805, 53.512299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773295, -0.094259, 0.627001,
		-0.452018, 0.775419, -0.440913,
		-0.444629, -0.624372, -0.642235,
		42.065556, 39.667492, 53.319630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656101, 40.186718, 53.845505>,  <42.376797, 40.104553, 53.769192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656101, 40.186718, 53.845505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660175, 39.842018, 53.642616>,  <41.662621, 39.635197, 53.520882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660175, 39.842018, 53.642616>,  <41.656101, 40.186718, 53.845505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660175, 39.842018, 53.642616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744807, -0.344994, 0.571176,
		-0.667203, 0.371966, -0.645354,
		0.010185, -0.861754, -0.507224,
		41.663231, 39.583492, 53.490448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932064, 40.043335, 53.582825>,  <41.656101, 40.186718, 53.845505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932064, 40.043335, 53.582825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129757, 39.696175, 53.602776>,  <41.248371, 39.487881, 53.614746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129757, 39.696175, 53.602776>,  <40.932064, 40.043335, 53.582825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129757, 39.696175, 53.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723609, -0.378907, 0.576905,
		-0.481797, -0.321215, -0.815287,
		0.494229, -0.867900, 0.049878,
		41.278027, 39.435806, 53.617741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369301, 39.608315, 53.446983>,  <40.932064, 40.043335, 53.582825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369301, 39.608315, 53.446983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646088, 39.374420, 53.616341>,  <40.812160, 39.234081, 53.717957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646088, 39.374420, 53.616341>,  <40.369301, 39.608315, 53.446983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646088, 39.374420, 53.616341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715167, -0.475148, 0.512612,
		-0.098569, -0.657507, -0.746973,
		0.691969, -0.584738, 0.423393,
		40.853680, 39.198997, 53.743359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167274, 38.934345, 53.352020>,  <40.369301, 39.608315, 53.446983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167274, 38.934345, 53.352020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450134, 38.884834, 53.630478>,  <40.619850, 38.855125, 53.797550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450134, 38.884834, 53.630478>,  <40.167274, 38.934345, 53.352020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450134, 38.884834, 53.630478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553457, -0.709618, 0.436036,
		0.440022, -0.693628, -0.570315,
		0.707154, -0.123779, 0.696141,
		40.662281, 38.847702, 53.839321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036709, 38.289753, 53.528503>,  <40.167274, 38.934345, 53.352020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036709, 38.289753, 53.528503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281448, 38.403038, 53.823917>,  <40.428291, 38.471008, 54.001163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281448, 38.403038, 53.823917>,  <40.036709, 38.289753, 53.528503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281448, 38.403038, 53.823917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464870, -0.626668, 0.625446,
		0.639947, -0.726002, -0.251772,
		0.611852, 0.283212, 0.738531,
		40.465004, 38.488003, 54.045475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375336, 37.652077, 53.834621>,  <40.036709, 38.289753, 53.528503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375336, 37.652077, 53.834621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355774, 37.959206, 54.090137>,  <40.344036, 38.143482, 54.243446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355774, 37.959206, 54.090137>,  <40.375336, 37.652077, 53.834621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355774, 37.959206, 54.090137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534536, -0.560382, 0.632648,
		0.843729, -0.310517, 0.437836,
		-0.048907, 0.767822, 0.638793,
		40.341103, 38.189552, 54.281776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426785, 37.337627, 54.486679>,  <40.375336, 37.652077, 53.834621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426785, 37.337627, 54.486679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258217, 37.697426, 54.532829>,  <40.157078, 37.913307, 54.560520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258217, 37.697426, 54.532829>,  <40.426785, 37.337627, 54.486679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258217, 37.697426, 54.532829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682473, -0.398342, 0.612825,
		0.597193, 0.179514, 0.781751,
		-0.421415, 0.899499, 0.115373,
		40.131794, 37.967274, 54.567440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423298, 37.426384, 55.189899>,  <40.426785, 37.337627, 54.486679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423298, 37.426384, 55.189899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152527, 37.662270, 55.013710>,  <39.990067, 37.803799, 54.907997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152527, 37.662270, 55.013710>,  <40.423298, 37.426384, 55.189899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152527, 37.662270, 55.013710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713536, -0.378870, 0.589342,
		0.180662, 0.713231, 0.677246,
		-0.676925, 0.589711, -0.440469,
		39.949448, 37.839184, 54.881569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040703, 37.676926, 55.725113>,  <40.423298, 37.426384, 55.189899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040703, 37.676926, 55.725113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796028, 37.746689, 55.416458>,  <39.649223, 37.788548, 55.231266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796028, 37.746689, 55.416458>,  <40.040703, 37.676926, 55.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796028, 37.746689, 55.416458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764809, -0.379758, 0.520434,
		-0.202267, 0.908496, 0.365681,
		-0.611683, 0.174409, -0.771638,
		39.612522, 37.799011, 55.184967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513912, 37.904129, 56.073509>,  <40.040703, 37.676926, 55.725113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513912, 37.904129, 56.073509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360306, 37.813477, 55.715477>,  <39.268143, 37.759087, 55.500656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360306, 37.813477, 55.715477>,  <39.513912, 37.904129, 56.073509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360306, 37.813477, 55.715477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839982, -0.316741, 0.440574,
		-0.383357, 0.921039, -0.068734,
		-0.384015, -0.226632, -0.895081,
		39.245102, 37.745487, 55.446953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801109, 38.137859, 56.086529>,  <39.513912, 37.904129, 56.073509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801109, 38.137859, 56.086529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802757, 37.871704, 55.787933>,  <38.803745, 37.712013, 55.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802757, 37.871704, 55.787933>,  <38.801109, 38.137859, 56.086529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802757, 37.871704, 55.787933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933643, -0.269942, 0.235460,
		-0.358180, 0.695983, -0.622346,
		0.004121, -0.665386, -0.746488,
		38.803993, 37.672089, 55.563988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256065, 38.256645, 55.653687>,  <38.801109, 38.137859, 56.086529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256065, 38.256645, 55.653687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338028, 37.866486, 55.621151>,  <38.387207, 37.632389, 55.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338028, 37.866486, 55.621151>,  <38.256065, 38.256645, 55.653687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338028, 37.866486, 55.621151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965528, -0.215063, 0.146641,
		-0.160526, 0.048483, -0.985840,
		0.204908, -0.975396, -0.081335,
		38.399502, 37.573868, 55.596748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649647, 37.972706, 55.139446>,  <38.256065, 38.256645, 55.653687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649647, 37.972706, 55.139446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829956, 37.698959, 55.368683>,  <37.938141, 37.534710, 55.506226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829956, 37.698959, 55.368683>,  <37.649647, 37.972706, 55.139446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829956, 37.698959, 55.368683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892586, -0.338751, 0.297552,
		-0.009499, -0.645666, -0.763561,
		0.450776, -0.684371, 0.573094,
		37.965191, 37.493649, 55.540611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162319, 37.383778, 55.129543>,  <37.649647, 37.972706, 55.139446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162319, 37.383778, 55.129543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403267, 37.291870, 55.435318>,  <37.547836, 37.236725, 55.618782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403267, 37.291870, 55.435318>,  <37.162319, 37.383778, 55.129543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403267, 37.291870, 55.435318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764325, -0.442138, 0.469384,
		0.230136, -0.867018, -0.441947,
		0.602366, -0.229769, 0.764435,
		37.583977, 37.222939, 55.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995888, 36.718555, 55.291771>,  <37.162319, 37.383778, 55.129543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995888, 36.718555, 55.291771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181648, 36.858986, 55.616997>,  <37.293106, 36.943245, 55.812134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181648, 36.858986, 55.616997>,  <36.995888, 36.718555, 55.291771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181648, 36.858986, 55.616997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680649, -0.445878, 0.581300,
		0.566608, -0.823370, 0.031892,
		0.464405, 0.351076, 0.813064,
		37.320969, 36.964310, 55.860916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091873, 36.136692, 55.744984>,  <36.995888, 36.718555, 55.291771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091873, 36.136692, 55.744984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135658, 36.464478, 55.970016>,  <37.161930, 36.661148, 56.105038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135658, 36.464478, 55.970016>,  <37.091873, 36.136692, 55.744984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135658, 36.464478, 55.970016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736480, -0.313239, 0.599565,
		0.667543, -0.479962, 0.569230,
		0.109463, 0.819462, 0.562583,
		37.168499, 36.710316, 56.138790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121868, 35.967407, 56.444038>,  <37.091873, 36.136692, 55.744984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121868, 35.967407, 56.444038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968918, 36.336868, 56.454281>,  <36.877148, 36.558544, 56.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968918, 36.336868, 56.454281>,  <37.121868, 35.967407, 56.444038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968918, 36.336868, 56.454281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845948, -0.361088, 0.392413,
		0.371697, 0.128393, 0.919433,
		-0.382379, 0.923651, 0.025601,
		36.854202, 36.613964, 56.461960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688320, 35.924740, 57.061428>,  <37.121868, 35.967407, 56.444038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688320, 35.924740, 57.061428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535645, 36.252693, 56.890736>,  <36.444038, 36.449467, 56.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535645, 36.252693, 56.890736>,  <36.688320, 35.924740, 57.061428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535645, 36.252693, 56.890736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842861, -0.119266, 0.524749,
		0.379340, 0.559967, 0.736572,
		-0.381690, 0.819886, -0.426731,
		36.421139, 36.498657, 56.762714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402348, 36.246387, 57.581226>,  <36.688320, 35.924740, 57.061428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402348, 36.246387, 57.581226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206123, 36.412338, 57.274704>,  <36.088390, 36.511909, 57.090790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206123, 36.412338, 57.274704>,  <36.402348, 36.246387, 57.581226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206123, 36.412338, 57.274704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847678, -0.023369, 0.529997,
		0.201973, 0.909579, 0.363143,
		-0.490560, 0.414873, -0.766310,
		36.058956, 36.536800, 57.044811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987164, 36.572819, 57.890450>,  <36.402348, 36.246387, 57.581226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987164, 36.572819, 57.890450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826721, 36.574211, 57.524040>,  <35.730457, 36.575047, 57.304195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826721, 36.574211, 57.524040>,  <35.987164, 36.572819, 57.890450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826721, 36.574211, 57.524040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914300, -0.062988, 0.400109,
		-0.056306, 0.998008, 0.028448,
		-0.401104, 0.003481, -0.916026,
		35.706390, 36.575256, 57.249233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389740, 36.984341, 57.911171>,  <35.987164, 36.572819, 57.890450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389740, 36.984341, 57.911171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301289, 36.748840, 57.600182>,  <35.248219, 36.607540, 57.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301289, 36.748840, 57.600182>,  <35.389740, 36.984341, 57.911171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301289, 36.748840, 57.600182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924227, -0.127962, 0.359763,
		-0.311299, 0.798119, -0.515848,
		-0.221125, -0.588754, -0.777478,
		35.234951, 36.572212, 57.366940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602966, 37.142632, 57.695919>,  <35.389740, 36.984341, 57.911171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602966, 37.142632, 57.695919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720940, 36.788116, 57.553085>,  <34.791721, 36.575409, 57.467384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720940, 36.788116, 57.553085>,  <34.602966, 37.142632, 57.695919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720940, 36.788116, 57.553085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861727, -0.408173, 0.301364,
		-0.412851, 0.218838, -0.884118,
		0.294923, -0.886287, -0.357094,
		34.809418, 36.522232, 57.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025936, 37.012371, 57.205250>,  <34.602966, 37.142632, 57.695919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025936, 37.012371, 57.205250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196754, 36.659813, 57.286026>,  <34.299244, 36.448280, 57.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196754, 36.659813, 57.286026>,  <34.025936, 37.012371, 57.205250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196754, 36.659813, 57.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882530, -0.357630, 0.305356,
		-0.196918, -0.308620, -0.930579,
		0.427042, -0.881393, 0.201942,
		34.324867, 36.395393, 57.346607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886269, 37.344711, 56.600323>,  <34.025936, 37.012371, 57.205250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886269, 37.344711, 56.600323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 37.610069, 56.892849>,  <33.784885, 37.769283, 57.068363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 37.610069, 56.892849>,  <33.886269, 37.344711, 56.600323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822903, 37.610069, 56.892849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374153, 0.725758, -0.577308,
		-0.913737, 0.182171, -0.363177,
		-0.158410, 0.663392, 0.731312,
		33.775379, 37.809086, 57.112244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847435, 37.889828, 56.224468>,  <33.886269, 37.344711, 56.600323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847435, 37.889828, 56.224468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881592, 38.035255, 56.595528>,  <33.902088, 38.122513, 56.818161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881592, 38.035255, 56.595528>,  <33.847435, 37.889828, 56.224468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881592, 38.035255, 56.595528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498048, 0.790801, -0.355785,
		-0.862935, 0.492393, -0.113546,
		0.085394, 0.363571, 0.927645,
		33.907211, 38.144325, 56.873821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666019, 38.680939, 56.218723>,  <33.847435, 37.889828, 56.224468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666019, 38.680939, 56.218723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895889, 38.629051, 56.541939>,  <34.033810, 38.597919, 56.735867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895889, 38.629051, 56.541939>,  <33.666019, 38.680939, 56.218723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895889, 38.629051, 56.541939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566224, 0.775904, -0.278141,
		-0.590879, 0.617370, 0.519342,
		0.574676, -0.129716, 0.808036,
		34.068291, 38.590137, 56.784351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891850, 39.370010, 56.320698>,  <33.666019, 38.680939, 56.218723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891850, 39.370010, 56.320698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124077, 39.120079, 56.529514>,  <34.263412, 38.970119, 56.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124077, 39.120079, 56.529514>,  <33.891850, 39.370010, 56.320698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124077, 39.120079, 56.529514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782229, 0.605963, -0.144657,
		-0.225950, 0.492337, 0.840566,
		0.580572, -0.624830, 0.522038,
		34.298248, 38.932629, 56.686127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294670, 39.874722, 56.733662>,  <33.891850, 39.370010, 56.320698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294670, 39.874722, 56.733662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495838, 39.529289, 56.748085>,  <34.616539, 39.322029, 56.756741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495838, 39.529289, 56.748085>,  <34.294670, 39.874722, 56.733662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495838, 39.529289, 56.748085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855073, 0.491005, -0.166626,
		0.126189, 0.114635, 0.985361,
		0.502918, -0.863582, 0.036062,
		34.646713, 39.270214, 56.758904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836906, 39.983574, 57.107552>,  <34.294670, 39.874722, 56.733662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836906, 39.983574, 57.107552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923264, 39.662598, 56.885025>,  <34.975079, 39.470013, 56.751511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923264, 39.662598, 56.885025>,  <34.836906, 39.983574, 57.107552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923264, 39.662598, 56.885025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876449, 0.410392, -0.251825,
		0.430380, -0.433214, 0.791895,
		0.215894, -0.802436, -0.556315,
		34.988033, 39.421867, 56.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510330, 39.757530, 57.355396>,  <34.836906, 39.983574, 57.107552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510330, 39.757530, 57.355396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483879, 39.566307, 57.005062>,  <35.468010, 39.451572, 56.794861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483879, 39.566307, 57.005062>,  <35.510330, 39.757530, 57.355396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483879, 39.566307, 57.005062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929230, 0.290292, -0.228610,
		0.363537, -0.828968, 0.425033,
		-0.066126, -0.478062, -0.875834,
		35.464043, 39.422890, 56.742313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103390, 39.318092, 57.268627>,  <35.510330, 39.757530, 57.355396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103390, 39.318092, 57.268627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992195, 39.326004, 56.884476>,  <35.925476, 39.330750, 56.653984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992195, 39.326004, 56.884476>,  <36.103390, 39.318092, 57.268627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992195, 39.326004, 56.884476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914382, 0.311786, -0.258254,
		0.294325, -0.949947, -0.104758,
		-0.277989, 0.019779, -0.960381,
		35.908798, 39.331936, 56.596363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587917, 38.973801, 56.936951>,  <36.103390, 39.318092, 57.268627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587917, 38.973801, 56.936951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412865, 39.199783, 56.657150>,  <36.307835, 39.335373, 56.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412865, 39.199783, 56.657150>,  <36.587917, 38.973801, 56.936951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412865, 39.199783, 56.657150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893967, 0.356822, -0.271109,
		0.096435, -0.743980, -0.661206,
		-0.437633, 0.564952, -0.699504,
		36.281574, 39.369270, 56.447300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916145, 38.878735, 56.360577>,  <36.587917, 38.973801, 56.936951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916145, 38.878735, 56.360577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740692, 39.227455, 56.273338>,  <36.635418, 39.436687, 56.220997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740692, 39.227455, 56.273338>,  <36.916145, 38.878735, 56.360577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740692, 39.227455, 56.273338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785914, 0.254441, -0.563559,
		-0.435818, -0.418602, -0.796766,
		-0.438637, 0.871798, -0.218094,
		36.609100, 39.488995, 56.207909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906952, 38.964142, 55.671314>,  <36.916145, 38.878735, 56.360577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906952, 38.964142, 55.671314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857780, 39.342873, 55.790253>,  <36.828278, 39.570110, 55.861618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857780, 39.342873, 55.790253>,  <36.906952, 38.964142, 55.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857780, 39.342873, 55.790253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705565, 0.294086, -0.644742,
		-0.697902, 0.130542, -0.704196,
		-0.122928, 0.946822, 0.297349,
		36.820904, 39.626919, 55.879456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019024, 39.388718, 55.060501>,  <36.906952, 38.964142, 55.671314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019024, 39.388718, 55.060501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060547, 39.640503, 55.368526>,  <37.085461, 39.791576, 55.553341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060547, 39.640503, 55.368526>,  <37.019024, 39.388718, 55.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060547, 39.640503, 55.368526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813957, 0.391179, -0.429480,
		-0.571575, 0.671381, -0.471751,
		0.103806, 0.629465, 0.770064,
		37.091690, 39.829342, 55.599545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 40.021523, 54.839096>,  <37.019024, 39.388718, 55.060501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050476, 40.021523, 54.839096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228264, 40.088242, 55.191147>,  <37.334934, 40.128273, 55.402378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228264, 40.088242, 55.191147>,  <37.050476, 40.021523, 54.839096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228264, 40.088242, 55.191147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804664, 0.357424, -0.474093,
		-0.393656, 0.918927, 0.024648,
		0.444467, 0.166796, 0.880130,
		37.361603, 40.138279, 55.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211990, 40.640991, 54.801842>,  <37.050476, 40.021523, 54.839096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211990, 40.640991, 54.801842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461578, 40.483925, 55.072094>,  <37.611332, 40.389683, 55.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461578, 40.483925, 55.072094>,  <37.211990, 40.640991, 54.801842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461578, 40.483925, 55.072094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769917, 0.456906, -0.445494,
		-0.133767, 0.798152, 0.587418,
		0.623967, -0.392670, 0.675629,
		37.648769, 40.366123, 55.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580025, 41.220219, 55.015633>,  <37.211990, 40.640991, 54.801842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580025, 41.220219, 55.015633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785080, 40.886375, 55.096260>,  <37.908115, 40.686069, 55.144638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785080, 40.886375, 55.096260>,  <37.580025, 41.220219, 55.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785080, 40.886375, 55.096260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839596, 0.438159, -0.321084,
		0.179660, 0.333837, 0.925351,
		0.512640, -0.834607, 0.201569,
		37.938873, 40.635994, 55.156731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065090, 41.530365, 55.357662>,  <37.580025, 41.220219, 55.015633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065090, 41.530365, 55.357662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165573, 41.166206, 55.226162>,  <38.225864, 40.947712, 55.147263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165573, 41.166206, 55.226162>,  <38.065090, 41.530365, 55.357662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165573, 41.166206, 55.226162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816097, 0.381835, -0.433805,
		0.520462, -0.159315, 0.838891,
		0.251206, -0.910396, -0.328747,
		38.240936, 40.893089, 55.127537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811001, 41.514687, 55.498341>,  <38.065090, 41.530365, 55.357662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811001, 41.514687, 55.498341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747566, 41.210587, 55.246353>,  <38.709507, 41.028126, 55.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747566, 41.210587, 55.246353>,  <38.811001, 41.514687, 55.498341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747566, 41.210587, 55.246353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912275, 0.131206, -0.387995,
		0.377630, -0.636237, 0.672754,
		-0.158587, -0.760255, -0.629970,
		38.699989, 40.982510, 55.057362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413574, 41.059746, 55.496483>,  <38.811001, 41.514687, 55.498341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413574, 41.059746, 55.496483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223671, 41.011047, 55.147820>,  <39.109730, 40.981827, 54.938622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223671, 41.011047, 55.147820>,  <39.413574, 41.059746, 55.496483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223671, 41.011047, 55.147820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869781, 0.086447, -0.485807,
		0.134498, -0.988790, 0.064853,
		-0.474754, -0.121747, -0.871657,
		39.081245, 40.974522, 54.886322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856110, 40.589951, 55.035023>,  <39.413574, 41.059746, 55.496483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856110, 40.589951, 55.035023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617050, 40.806061, 54.798065>,  <39.473614, 40.935726, 54.655891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617050, 40.806061, 54.798065>,  <39.856110, 40.589951, 55.035023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617050, 40.806061, 54.798065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798925, 0.339215, -0.496641,
		-0.067373, -0.770091, -0.634367,
		-0.597645, 0.540272, -0.592391,
		39.437756, 40.968143, 54.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153378, 40.483234, 54.366936>,  <39.856110, 40.589951, 55.035023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153378, 40.483234, 54.366936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942444, 40.819984, 54.321049>,  <39.815884, 41.022034, 54.293514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942444, 40.819984, 54.321049>,  <40.153378, 40.483234, 54.366936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942444, 40.819984, 54.321049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791570, 0.437721, -0.426399,
		-0.308760, -0.315665, -0.897231,
		-0.527336, 0.841876, -0.114720,
		39.784245, 41.072548, 54.286633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090111, 40.659378, 53.659550>,  <40.153378, 40.483234, 54.366936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090111, 40.659378, 53.659550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010033, 41.008057, 53.838463>,  <39.961987, 41.217266, 53.945812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010033, 41.008057, 53.838463>,  <40.090111, 40.659378, 53.659550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010033, 41.008057, 53.838463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623706, 0.465459, -0.627963,
		-0.755587, 0.153256, -0.636868,
		-0.200197, 0.871700, 0.447282,
		39.949974, 41.269566, 53.972649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244854, 41.091465, 53.153595>,  <40.090111, 40.659378, 53.659550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244854, 41.091465, 53.153595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208321, 41.347374, 53.458839>,  <40.186401, 41.500919, 53.641987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208321, 41.347374, 53.458839>,  <40.244854, 41.091465, 53.153595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208321, 41.347374, 53.458839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601940, 0.645942, -0.469496,
		-0.793301, 0.416469, -0.444103,
		-0.091334, 0.639775, 0.763116,
		40.180920, 41.539307, 53.687775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941341, 41.701637, 52.936768>,  <40.244854, 41.091465, 53.153595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941341, 41.701637, 52.936768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179100, 41.775833, 53.249763>,  <40.321754, 41.820351, 53.437561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179100, 41.775833, 53.249763>,  <39.941341, 41.701637, 52.936768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179100, 41.775833, 53.249763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704921, 0.348107, -0.617987,
		-0.387019, 0.918921, 0.076159,
		0.594393, 0.185487, 0.782491,
		40.357418, 41.831478, 53.484512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260292, 42.345276, 52.760452>,  <39.941341, 41.701637, 52.936768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260292, 42.345276, 52.760452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504272, 42.214478, 53.049183>,  <40.650661, 42.135998, 53.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504272, 42.214478, 53.049183>,  <40.260292, 42.345276, 52.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504272, 42.214478, 53.049183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791947, 0.283663, -0.540699,
		-0.027947, 0.901447, 0.431986,
		0.609950, -0.326999, 0.721826,
		40.687256, 42.116379, 53.265732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798794, 42.918190, 52.892429>,  <40.260292, 42.345276, 52.760452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798794, 42.918190, 52.892429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 42.576538, 53.023209>,  <41.057636, 42.371548, 53.101677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 42.576538, 53.023209>,  <40.798794, 42.918190, 52.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960571, 42.576538, 53.023209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898378, 0.304070, -0.316951,
		0.171302, 0.421910, 0.890308,
		0.404441, -0.854127, 0.326947,
		41.081905, 42.320301, 53.121292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488644, 43.136143, 53.091969>,  <40.798794, 42.918190, 52.892429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488644, 43.136143, 53.091969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532906, 42.738754, 53.103096>,  <41.559464, 42.500320, 53.109772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532906, 42.738754, 53.103096>,  <41.488644, 43.136143, 53.091969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532906, 42.738754, 53.103096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983492, 0.105427, -0.147065,
		0.143171, 0.043637, 0.988736,
		0.110657, -0.993469, 0.027822,
		41.566101, 42.440712, 53.111443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019878, 42.963436, 53.496239>,  <41.488644, 43.136143, 53.091969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019878, 42.963436, 53.496239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968849, 42.665627, 53.234119>,  <41.938232, 42.486942, 53.076847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968849, 42.665627, 53.234119>,  <42.019878, 42.963436, 53.496239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968849, 42.665627, 53.234119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950037, 0.098040, -0.296340,
		0.284878, -0.660358, 0.694818,
		-0.127570, -0.744524, -0.655294,
		41.930576, 42.442268, 53.037533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574825, 42.662621, 53.565773>,  <42.019878, 42.963436, 53.496239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574825, 42.662621, 53.565773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446198, 42.566177, 53.199501>,  <42.369022, 42.508312, 52.979740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446198, 42.566177, 53.199501>,  <42.574825, 42.662621, 53.565773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446198, 42.566177, 53.199501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911396, 0.183465, -0.368372,
		0.256812, -0.952999, 0.160752,
		-0.321566, -0.241111, -0.915675,
		42.349728, 42.493843, 52.924797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063843, 42.249992, 53.389648>,  <42.574825, 42.662621, 53.565773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063843, 42.249992, 53.389648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882256, 42.383026, 53.059002>,  <42.773304, 42.462849, 52.860615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882256, 42.383026, 53.059002>,  <43.063843, 42.249992, 53.389648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882256, 42.383026, 53.059002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884456, 0.280581, -0.372844,
		0.107930, -0.900366, -0.421535,
		-0.453970, 0.332588, -0.826617,
		42.746063, 42.482803, 52.811016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371162, 41.929222, 52.766048>,  <43.063843, 42.249992, 53.389648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371162, 41.929222, 52.766048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206680, 42.271996, 52.641739>,  <43.107990, 42.477661, 52.567154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206680, 42.271996, 52.641739>,  <43.371162, 41.929222, 52.766048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206680, 42.271996, 52.641739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828011, 0.208574, -0.520476,
		-0.381194, -0.471343, -0.795316,
		-0.411204, 0.856932, -0.310770,
		43.083321, 42.529076, 52.548508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860100, 42.117439, 52.263580>,  <43.371162, 41.929222, 52.766048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860100, 42.117439, 52.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626556, 42.442169, 52.266083>,  <43.486431, 42.637009, 52.267586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626556, 42.442169, 52.266083>,  <43.860100, 42.117439, 52.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626556, 42.442169, 52.266083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768519, 0.555164, -0.318075,
		-0.261696, -0.180905, -0.948045,
		-0.583861, 0.811829, 0.006255,
		43.451397, 42.685719, 52.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842354, 42.424156, 51.551517>,  <43.860100, 42.117439, 52.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842354, 42.424156, 51.551517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736813, 42.710960, 51.809597>,  <43.673489, 42.883045, 51.964443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736813, 42.710960, 51.809597>,  <43.842354, 42.424156, 51.551517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736813, 42.710960, 51.809597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719796, 0.591633, -0.363130,
		-0.642088, 0.368597, -0.672205,
		-0.263850, 0.717012, 0.645195,
		43.657658, 42.926064, 52.003155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870079, 42.924782, 51.135101>,  <43.842354, 42.424156, 51.551517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870079, 42.924782, 51.135101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868256, 43.106812, 51.491280>,  <43.867161, 43.216030, 51.704987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868256, 43.106812, 51.491280>,  <43.870079, 42.924782, 51.135101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868256, 43.106812, 51.491280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666594, 0.665139, -0.336515,
		-0.745407, 0.592029, -0.306382,
		-0.004560, 0.455074, 0.890442,
		43.866886, 43.243332, 51.758411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783440, 43.534992, 50.962444>,  <43.870079, 42.924782, 51.135101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783440, 43.534992, 50.962444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937801, 43.581787, 51.328480>,  <44.030418, 43.609863, 51.548100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937801, 43.581787, 51.328480>,  <43.783440, 43.534992, 50.962444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937801, 43.581787, 51.328480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460900, 0.834815, -0.301090,
		-0.799153, 0.537958, 0.268244,
		0.385908, 0.116984, 0.915090,
		44.053574, 43.616882, 51.603008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622540, 44.229256, 51.187881>,  <43.783440, 43.534992, 50.962444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622540, 44.229256, 51.187881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943619, 44.120750, 51.400330>,  <44.136269, 44.055649, 51.527798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943619, 44.120750, 51.400330>,  <43.622540, 44.229256, 51.187881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943619, 44.120750, 51.400330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481986, 0.819558, -0.309861,
		-0.351230, 0.504718, 0.788604,
		0.802700, -0.271264, 0.531120,
		44.184429, 44.039371, 51.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704914, 44.744267, 51.622410>,  <43.622540, 44.229256, 51.187881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704914, 44.744267, 51.622410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065033, 44.571144, 51.603851>,  <44.281105, 44.467270, 51.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065033, 44.571144, 51.603851>,  <43.704914, 44.744267, 51.622410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065033, 44.571144, 51.603851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421762, 0.893721, -0.152902,
		0.107639, 0.118090, 0.987152,
		0.900295, -0.432801, -0.046393,
		44.335121, 44.441303, 51.589931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101818, 45.123459, 52.110638>,  <43.704914, 44.744267, 51.622410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101818, 45.123459, 52.110638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359398, 44.962479, 51.850372>,  <44.513947, 44.865891, 51.694214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359398, 44.962479, 51.850372>,  <44.101818, 45.123459, 52.110638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359398, 44.962479, 51.850372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499290, 0.865456, -0.041164,
		0.579689, -0.298364, 0.758248,
		0.643948, -0.402448, -0.650666,
		44.552582, 44.841743, 51.655174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839794, 45.347664, 52.297234>,  <44.101818, 45.123459, 52.110638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839794, 45.347664, 52.297234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883835, 45.199898, 51.928146>,  <44.910259, 45.111237, 51.706696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883835, 45.199898, 51.928146>,  <44.839794, 45.347664, 52.297234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883835, 45.199898, 51.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533262, 0.805388, -0.258810,
		0.838754, -0.463554, 0.285673,
		0.110105, -0.369416, -0.922718,
		44.916866, 45.089073, 51.651329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419079, 45.555248, 52.174763>,  <44.839794, 45.347664, 52.297234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419079, 45.555248, 52.174763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275620, 45.473328, 51.810471>,  <45.189545, 45.424175, 51.591896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275620, 45.473328, 51.810471>,  <45.419079, 45.555248, 52.174763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275620, 45.473328, 51.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496022, 0.784684, -0.371797,
		0.790781, -0.585085, -0.179835,
		-0.358646, -0.204808, -0.910728,
		45.168026, 45.411884, 51.537251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007626, 45.457832, 51.688423>,  <45.419079, 45.555248, 52.174763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007626, 45.457832, 51.688423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686523, 45.582237, 51.484913>,  <45.493862, 45.656879, 51.362808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686523, 45.582237, 51.484913>,  <46.007626, 45.457832, 51.688423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686523, 45.582237, 51.484913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521428, 0.780054, -0.345874,
		0.289302, -0.542943, -0.788364,
		-0.802756, 0.311013, -0.508777,
		45.445698, 45.675541, 51.332279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.280308, 41.395115, 51.022404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241341, 41.129028, 50.726295>,  <35.217960, 40.969376, 50.548630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241341, 41.129028, 50.726295>,  <35.280308, 41.395115, 51.022404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241341, 41.129028, 50.726295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941051, 0.180529, -0.286065,
		0.323934, -0.724501, 0.608412,
		-0.097418, -0.665213, -0.740272,
		35.212116, 40.929466, 50.504215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827175, 40.920338, 51.091251>,  <35.280308, 41.395115, 51.022404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827175, 40.920338, 51.091251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710938, 40.909698, 50.708660>,  <35.641193, 40.903316, 50.479107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710938, 40.909698, 50.708660>,  <35.827175, 40.920338, 51.091251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710938, 40.909698, 50.708660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948068, 0.127085, -0.291576,
		0.129308, -0.991535, -0.011719,
		-0.290597, -0.026593, -0.956476,
		35.623760, 40.901718, 50.421719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314449, 40.421780, 50.745167>,  <35.827175, 40.920338, 51.091251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314449, 40.421780, 50.745167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171959, 40.632851, 50.436710>,  <36.086464, 40.759491, 50.251637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171959, 40.632851, 50.436710>,  <36.314449, 40.421780, 50.745167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171959, 40.632851, 50.436710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932548, 0.148857, -0.328932,
		-0.058778, -0.836303, -0.545108,
		-0.356230, 0.527673, -0.771143,
		36.065090, 40.791153, 50.205368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711285, 40.200520, 50.108166>,  <36.314449, 40.421780, 50.745167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711285, 40.200520, 50.108166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546444, 40.552315, 50.012939>,  <36.447540, 40.763390, 49.955803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546444, 40.552315, 50.012939>,  <36.711285, 40.200520, 50.108166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546444, 40.552315, 50.012939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850457, 0.277543, -0.446870,
		-0.326942, -0.386621, -0.862342,
		-0.412106, 0.879485, -0.238064,
		36.422813, 40.816162, 49.941521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925827, 40.282913, 49.433510>,  <36.711285, 40.200520, 50.108166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925827, 40.282913, 49.433510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833916, 40.645126, 49.576172>,  <36.778767, 40.862453, 49.661770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833916, 40.645126, 49.576172>,  <36.925827, 40.282913, 49.433510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833916, 40.645126, 49.576172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765661, 0.394421, -0.508129,
		-0.600803, 0.156321, -0.783964,
		-0.229781, 0.905536, 0.356658,
		36.764980, 40.916786, 49.683170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974224, 40.721577, 48.826916>,  <36.925827, 40.282913, 49.433510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974224, 40.721577, 48.826916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989502, 40.969429, 49.140499>,  <36.998669, 41.118141, 49.328651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989502, 40.969429, 49.140499>,  <36.974224, 40.721577, 48.826916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989502, 40.969429, 49.140499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795392, 0.456053, -0.399209,
		-0.604891, 0.638803, -0.475434,
		0.038192, 0.619634, 0.783961,
		37.000961, 41.155319, 49.375687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043068, 41.316494, 48.550621>,  <36.974224, 40.721577, 48.826916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043068, 41.316494, 48.550621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188271, 41.390495, 48.915916>,  <37.275391, 41.434895, 49.135094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188271, 41.390495, 48.915916>,  <37.043068, 41.316494, 48.550621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188271, 41.390495, 48.915916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742274, 0.535041, -0.403436,
		-0.563256, 0.824321, 0.056901,
		0.363005, 0.185002, 0.913237,
		37.297173, 41.445995, 49.189888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353596, 41.947205, 48.520329>,  <37.043068, 41.316494, 48.550621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353596, 41.947205, 48.520329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506264, 41.804649, 48.861458>,  <37.597866, 41.719116, 49.066135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506264, 41.804649, 48.861458>,  <37.353596, 41.947205, 48.520329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506264, 41.804649, 48.861458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885519, 0.405445, -0.226873,
		-0.264920, 0.841785, 0.470334,
		0.381673, -0.356387, 0.852827,
		37.620766, 41.697735, 49.117306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600391, 42.554516, 48.826714>,  <37.353596, 41.947205, 48.520329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600391, 42.554516, 48.826714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770191, 42.227730, 48.982849>,  <37.872070, 42.031658, 49.076530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770191, 42.227730, 48.982849>,  <37.600391, 42.554516, 48.826714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770191, 42.227730, 48.982849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903334, 0.352830, -0.243922,
		0.061551, 0.456155, 0.887769,
		0.424498, -0.816966, 0.390343,
		37.897541, 41.982639, 49.099953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186920, 42.820972, 49.227768>,  <37.600391, 42.554516, 48.826714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186920, 42.820972, 49.227768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259857, 42.437378, 49.140965>,  <38.303619, 42.207222, 49.088882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259857, 42.437378, 49.140965>,  <38.186920, 42.820972, 49.227768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259857, 42.437378, 49.140965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978429, 0.198774, -0.056257,
		0.097085, -0.202068, 0.974548,
		0.182347, -0.958988, -0.217007,
		38.314560, 42.149681, 49.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764545, 42.679401, 49.609756>,  <38.186920, 42.820972, 49.227768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764545, 42.679401, 49.609756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777390, 42.382507, 49.342010>,  <38.785095, 42.204369, 49.181362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777390, 42.382507, 49.342010>,  <38.764545, 42.679401, 49.609756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777390, 42.382507, 49.342010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948060, 0.234670, -0.214737,
		0.316466, -0.627704, 0.711222,
		0.032112, -0.742238, -0.669366,
		38.787022, 42.159836, 49.141201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258728, 42.276783, 49.734535>,  <38.764545, 42.679401, 49.609756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258728, 42.276783, 49.734535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202316, 42.235504, 49.340691>,  <39.168468, 42.210735, 49.104385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202316, 42.235504, 49.340691>,  <39.258728, 42.276783, 49.734535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202316, 42.235504, 49.340691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953761, 0.252484, -0.163071,
		0.265427, -0.962082, 0.062819,
		-0.141027, -0.103197, -0.984613,
		39.160007, 42.204544, 49.045307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877033, 41.962456, 49.476810>,  <39.258728, 42.276783, 49.734535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877033, 41.962456, 49.476810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723507, 42.070137, 49.123489>,  <39.631393, 42.134747, 48.911499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723507, 42.070137, 49.123489>,  <39.877033, 41.962456, 49.476810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723507, 42.070137, 49.123489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901950, 0.314323, -0.296122,
		0.197924, -0.910347, -0.363448,
		-0.383814, 0.269202, -0.883299,
		39.608364, 42.150898, 48.858501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400455, 41.761635, 49.007900>,  <39.877033, 41.962456, 49.476810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400455, 41.761635, 49.007900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166924, 42.035187, 48.832878>,  <40.026806, 42.199318, 48.727863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166924, 42.035187, 48.832878>,  <40.400455, 41.761635, 49.007900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166924, 42.035187, 48.832878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809679, 0.450801, -0.375765,
		-0.059727, -0.573662, -0.816912,
		-0.583827, 0.683879, -0.437557,
		39.991776, 42.240349, 48.701611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801464, 41.920139, 48.415836>,  <40.400455, 41.761635, 49.007900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801464, 41.920139, 48.415836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538715, 42.219604, 48.451683>,  <40.381065, 42.399284, 48.473190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538715, 42.219604, 48.451683>,  <40.801464, 41.920139, 48.415836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538715, 42.219604, 48.451683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650019, 0.622492, -0.435867,
		-0.382101, -0.228056, -0.895539,
		-0.656867, 0.748662, 0.089614,
		40.341656, 42.444202, 48.478569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760925, 42.234062, 47.742516>,  <40.801464, 41.920139, 48.415836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760925, 42.234062, 47.742516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672653, 42.492943, 48.034386>,  <40.619690, 42.648273, 48.209507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672653, 42.492943, 48.034386>,  <40.760925, 42.234062, 47.742516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672653, 42.492943, 48.034386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727324, 0.607649, -0.319001,
		-0.649846, 0.460313, -0.604824,
		-0.220680, 0.647205, 0.729675,
		40.606449, 42.687103, 48.253288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865227, 42.813816, 47.384800>,  <40.760925, 42.234062, 47.742516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865227, 42.813816, 47.384800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847229, 42.952431, 47.759583>,  <40.836430, 43.035599, 47.984451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847229, 42.952431, 47.759583>,  <40.865227, 42.813816, 47.384800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847229, 42.952431, 47.759583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597717, 0.760840, -0.252698,
		-0.800444, 0.548666, -0.241361,
		-0.044991, 0.346536, 0.936957,
		40.833733, 43.056393, 48.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872387, 43.624184, 47.318298>,  <40.865227, 42.813816, 47.384800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872387, 43.624184, 47.318298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988037, 43.515610, 47.685501>,  <41.057426, 43.450466, 47.905823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988037, 43.515610, 47.685501>,  <40.872387, 43.624184, 47.318298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988037, 43.515610, 47.685501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830527, 0.548013, -0.099535,
		-0.476060, 0.791205, 0.383877,
		0.289122, -0.271435, 0.918004,
		41.074772, 43.434177, 47.960903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131485, 44.191864, 47.614952>,  <40.872387, 43.624184, 47.318298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131485, 44.191864, 47.614952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.285179, 43.904419, 47.846798>,  <41.377396, 43.731953, 47.985905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.285179, 43.904419, 47.846798>,  <41.131485, 44.191864, 47.614952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285179, 43.904419, 47.846798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819131, 0.554968, 0.145037,
		-0.425894, 0.419052, 0.801879,
		0.384239, -0.718614, 0.579615,
		41.400452, 43.688835, 48.020683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549187, 44.614410, 48.002815>,  <41.131485, 44.191864, 47.614952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549187, 44.614410, 48.002815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661930, 44.243790, 48.102463>,  <41.729576, 44.021416, 48.162251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661930, 44.243790, 48.102463>,  <41.549187, 44.614410, 48.002815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661930, 44.243790, 48.102463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931367, 0.326588, 0.160922,
		-0.230462, 0.186664, 0.955010,
		0.281856, -0.926551, 0.249119,
		41.746487, 43.965824, 48.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927937, 44.583099, 48.649982>,  <41.549187, 44.614410, 48.002815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927937, 44.583099, 48.649982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.055641, 44.270432, 48.435665>,  <42.132263, 44.082832, 48.307076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.055641, 44.270432, 48.435665>,  <41.927937, 44.583099, 48.649982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055641, 44.270432, 48.435665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942837, 0.319010, 0.096396,
		0.095572, -0.535937, 0.838831,
		0.319257, -0.781668, -0.535789,
		42.151417, 44.035931, 48.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403057, 44.187302, 49.051178>,  <41.927937, 44.583099, 48.649982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403057, 44.187302, 49.051178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.480934, 44.096024, 48.669598>,  <42.527660, 44.041256, 48.440651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.480934, 44.096024, 48.669598>,  <42.403057, 44.187302, 49.051178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480934, 44.096024, 48.669598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968494, 0.198691, 0.150135,
		0.155280, -0.953125, 0.259692,
		0.194696, -0.228197, -0.953949,
		42.539345, 44.027565, 48.383411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835018, 44.752880, 48.985901>,  <42.403057, 44.187302, 49.051178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835018, 44.752880, 48.985901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.862774, 45.000015, 49.299194>,  <42.879429, 45.148296, 49.487171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.862774, 45.000015, 49.299194>,  <42.835018, 44.752880, 48.985901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862774, 45.000015, 49.299194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941337, -0.219370, 0.256440,
		0.330257, -0.755085, 0.566372,
		0.069389, 0.617838, 0.783238,
		42.883591, 45.185368, 49.534164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792175, 44.269611, 49.696842>,  <42.835018, 44.752880, 48.985901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792175, 44.269611, 49.696842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687073, 44.641045, 49.801678>,  <42.624012, 44.863903, 49.864578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687073, 44.641045, 49.801678>,  <42.792175, 44.269611, 49.696842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687073, 44.641045, 49.801678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770856, -0.365399, 0.521790,
		0.580293, -0.064929, 0.811815,
		-0.262757, 0.928584, 0.262089,
		42.608246, 44.919621, 49.880306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676342, 44.188408, 50.336823>,  <42.792175, 44.269611, 49.696842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676342, 44.188408, 50.336823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.472610, 44.523521, 50.258129>,  <42.350372, 44.724590, 50.210911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.472610, 44.523521, 50.258129>,  <42.676342, 44.188408, 50.336823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472610, 44.523521, 50.258129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795659, -0.371336, 0.478578,
		0.327889, 0.400288, 0.855721,
		-0.509329, 0.837782, -0.196736,
		42.319813, 44.774857, 50.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441483, 44.422783, 50.975460>,  <42.676342, 44.188408, 50.336823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441483, 44.422783, 50.975460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.214924, 44.590828, 50.691856>,  <42.078991, 44.691654, 50.521694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.214924, 44.590828, 50.691856>,  <42.441483, 44.422783, 50.975460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214924, 44.590828, 50.691856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823729, -0.315549, 0.471061,
		-0.025828, 0.850842, 0.524786,
		-0.566395, 0.420116, -0.709014,
		42.045006, 44.716862, 50.479153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966831, 44.860889, 51.420033>,  <42.441483, 44.422783, 50.975460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966831, 44.860889, 51.420033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799217, 44.801308, 51.061764>,  <41.698650, 44.765560, 50.846802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799217, 44.801308, 51.061764>,  <41.966831, 44.860889, 51.420033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799217, 44.801308, 51.061764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877932, -0.185170, 0.441529,
		-0.231620, 0.971352, -0.053181,
		-0.419033, -0.148956, -0.895669,
		41.673508, 44.756622, 50.793064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318119, 45.273987, 51.472527>,  <41.966831, 44.860889, 51.420033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318119, 45.273987, 51.472527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270901, 45.018158, 51.168682>,  <41.242569, 44.864662, 50.986374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270901, 45.018158, 51.168682>,  <41.318119, 45.273987, 51.472527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270901, 45.018158, 51.168682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916775, -0.223743, 0.330853,
		-0.381562, 0.735452, -0.559930,
		-0.118046, -0.639570, -0.759615,
		41.235485, 44.826286, 50.940796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617771, 45.367046, 51.176792>,  <41.318119, 45.273987, 51.472527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617771, 45.367046, 51.176792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.730293, 44.998489, 51.069527>,  <40.797806, 44.777355, 51.005169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.730293, 44.998489, 51.069527>,  <40.617771, 45.367046, 51.176792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730293, 44.998489, 51.069527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896496, -0.352007, 0.269047,
		-0.342291, 0.164720, -0.925043,
		0.281304, -0.921389, -0.268160,
		40.814686, 44.722073, 50.989079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030338, 45.004955, 51.021267>,  <40.617771, 45.367046, 51.176792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030338, 45.004955, 51.021267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281261, 44.694992, 51.052288>,  <40.431816, 44.509014, 51.070900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281261, 44.694992, 51.052288>,  <40.030338, 45.004955, 51.021267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281261, 44.694992, 51.052288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773688, -0.608746, 0.175598,
		-0.088864, -0.170151, -0.981403,
		0.627304, -0.774904, 0.077548,
		40.469452, 44.462521, 51.075554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614517, 44.528152, 50.751869>,  <40.030338, 45.004955, 51.021267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614517, 44.528152, 50.751869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902824, 44.340439, 50.955933>,  <40.075809, 44.227810, 51.078373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902824, 44.340439, 50.955933>,  <39.614517, 44.528152, 50.751869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902824, 44.340439, 50.955933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669390, -0.662357, 0.336452,
		0.180019, -0.584002, -0.791539,
		0.720770, -0.469281, 0.510162,
		40.119057, 44.199654, 51.108982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518639, 43.864342, 50.587402>,  <39.614517, 44.528152, 50.751869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518639, 43.864342, 50.587402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709305, 43.863426, 50.939034>,  <39.823704, 43.862877, 51.150013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709305, 43.863426, 50.939034>,  <39.518639, 43.864342, 50.587402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709305, 43.863426, 50.939034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679738, -0.635075, 0.366928,
		0.557444, -0.772447, -0.304273,
		0.476669, -0.002285, 0.879080,
		39.852306, 43.862740, 51.202759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510273, 43.178795, 50.846443>,  <39.518639, 43.864342, 50.587402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510273, 43.178795, 50.846443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585594, 43.413528, 51.161446>,  <39.630787, 43.554367, 51.350449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585594, 43.413528, 51.161446>,  <39.510273, 43.178795, 50.846443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585594, 43.413528, 51.161446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604711, -0.562552, 0.563791,
		0.773866, -0.582376, 0.248937,
		0.188298, 0.586833, 0.787509,
		39.642082, 43.589577, 51.397697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561234, 42.721245, 51.361588>,  <39.510273, 43.178795, 50.846443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561234, 42.721245, 51.361588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501755, 43.071037, 51.546268>,  <39.466068, 43.280914, 51.657078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501755, 43.071037, 51.546268>,  <39.561234, 42.721245, 51.361588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501755, 43.071037, 51.546268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668230, -0.433020, 0.604949,
		0.728943, -0.218566, 0.648746,
		-0.148698, 0.874484, 0.461699,
		39.457146, 43.333382, 51.684776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560631, 42.580528, 52.001053>,  <39.561234, 42.721245, 51.361588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560631, 42.580528, 52.001053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340599, 42.914513, 51.994720>,  <39.208580, 43.114902, 51.990921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340599, 42.914513, 51.994720>,  <39.560631, 42.580528, 52.001053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340599, 42.914513, 51.994720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621207, -0.396435, 0.675974,
		0.558139, 0.381671, 0.736755,
		-0.550076, 0.834965, -0.015831,
		39.175575, 43.165001, 51.989971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195763, 42.492062, 52.569782>,  <39.560631, 42.580528, 52.001053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195763, 42.492062, 52.569782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008251, 42.789528, 52.379116>,  <38.895744, 42.968006, 52.264717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008251, 42.789528, 52.379116>,  <39.195763, 42.492062, 52.569782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008251, 42.789528, 52.379116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879473, -0.342663, 0.330316,
		0.082308, 0.574062, 0.814664,
		-0.468778, 0.743663, -0.476668,
		38.867619, 43.012627, 52.236115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793144, 42.792885, 53.129360>,  <39.195763, 42.492062, 52.569782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793144, 42.792885, 53.129360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637024, 42.872536, 52.769802>,  <38.543354, 42.920326, 52.554066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637024, 42.872536, 52.769802>,  <38.793144, 42.792885, 53.129360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637024, 42.872536, 52.769802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880805, -0.365006, 0.301583,
		-0.268050, 0.909461, 0.317853,
		-0.390297, 0.199128, -0.898898,
		38.519936, 42.932274, 52.500134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198135, 43.142757, 53.226963>,  <38.793144, 42.792885, 53.129360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198135, 43.142757, 53.226963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.131844, 42.994835, 52.861279>,  <38.092068, 42.906082, 52.641869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.131844, 42.994835, 52.861279>,  <38.198135, 43.142757, 53.226963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131844, 42.994835, 52.861279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817788, -0.466551, 0.336974,
		-0.551141, 0.803475, -0.225104,
		-0.165728, -0.369808, -0.914208,
		38.082127, 42.883892, 52.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489712, 43.310364, 53.100861>,  <38.198135, 43.142757, 53.226963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489712, 43.310364, 53.100861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591125, 43.011238, 52.855423>,  <37.651974, 42.831764, 52.708160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591125, 43.011238, 52.855423>,  <37.489712, 43.310364, 53.100861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591125, 43.011238, 52.855423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863393, -0.460978, 0.205062,
		-0.436201, 0.477781, -0.762532,
		0.253536, -0.747813, -0.613592,
		37.667187, 42.786896, 52.671345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870262, 43.172207, 52.653790>,  <37.489712, 43.310364, 53.100861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870262, 43.172207, 52.653790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101471, 42.845848, 52.648186>,  <37.240196, 42.650032, 52.644825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101471, 42.845848, 52.648186>,  <36.870262, 43.172207, 52.653790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101471, 42.845848, 52.648186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767625, -0.549483, 0.329880,
		-0.276845, -0.179928, -0.943919,
		0.578022, -0.815901, -0.014005,
		37.274876, 42.601078, 52.643986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.741314, 42.724789, 51.849869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927814, 42.435684, 52.053921>,  <37.039715, 42.262222, 52.176350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927814, 42.435684, 52.053921>,  <36.741314, 42.724789, 51.849869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927814, 42.435684, 52.053921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869459, -0.480796, 0.113474,
		0.163254, -0.496443, -0.852580,
		0.466251, -0.722758, 0.510128,
		37.067688, 42.218857, 52.206959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530773, 42.052425, 51.499847>,  <36.741314, 42.724789, 51.849869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530773, 42.052425, 51.499847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611435, 41.954147, 51.879105>,  <36.659832, 41.895180, 52.106659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611435, 41.954147, 51.879105>,  <36.530773, 42.052425, 51.499847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611435, 41.954147, 51.879105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725773, -0.687522, -0.023798,
		0.657715, -0.683336, -0.316960,
		0.201655, -0.245693, 0.948140,
		36.671932, 41.880440, 52.163548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352810, 41.306015, 51.470554>,  <36.530773, 42.052425, 51.499847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352810, 41.306015, 51.470554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339066, 41.437553, 51.848057>,  <36.330818, 41.516476, 52.074558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339066, 41.437553, 51.848057>,  <36.352810, 41.306015, 51.470554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339066, 41.437553, 51.848057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758847, -0.623096, 0.189482,
		0.650362, -0.709656, 0.270955,
		-0.034364, 0.328845, 0.943758,
		36.328754, 41.536205, 52.131184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998882, 40.774239, 51.795845>,  <36.352810, 41.306015, 51.470554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998882, 40.774239, 51.795845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997055, 41.034035, 52.099987>,  <35.995956, 41.189911, 52.282471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997055, 41.034035, 52.099987>,  <35.998882, 40.774239, 51.795845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997055, 41.034035, 52.099987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827939, -0.428874, 0.361364,
		0.560799, -0.627877, 0.539699,
		-0.004571, 0.649490, 0.760356,
		35.995686, 41.228882, 52.328094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860668, 40.371727, 52.411694>,  <35.998882, 40.774239, 51.795845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860668, 40.371727, 52.411694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767006, 40.742310, 52.529579>,  <35.710808, 40.964657, 52.600311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767006, 40.742310, 52.529579>,  <35.860668, 40.371727, 52.411694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767006, 40.742310, 52.529579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803156, -0.355154, 0.478336,
		0.547824, -0.124693, 0.827249,
		-0.234156, 0.926454, 0.294710,
		35.696758, 41.020245, 52.617992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772781, 40.344269, 53.171684>,  <35.860668, 40.371727, 52.411694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772781, 40.344269, 53.171684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575516, 40.667961, 53.043972>,  <35.457157, 40.862175, 52.967346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575516, 40.667961, 53.043972>,  <35.772781, 40.344269, 53.171684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575516, 40.667961, 53.043972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822400, -0.314018, 0.474396,
		0.283637, 0.496527, 0.820373,
		-0.493162, 0.809230, -0.319277,
		35.427567, 40.910728, 52.948189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388863, 40.501701, 53.695896>,  <35.772781, 40.344269, 53.171684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388863, 40.501701, 53.695896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205421, 40.701447, 53.401871>,  <35.095356, 40.821293, 53.225456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205421, 40.701447, 53.401871>,  <35.388863, 40.501701, 53.695896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205421, 40.701447, 53.401871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883082, -0.163710, 0.439732,
		0.099247, 0.850787, 0.516054,
		-0.458601, 0.499361, -0.735067,
		35.067841, 40.851254, 53.181351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993931, 41.119869, 54.000977>,  <35.388863, 40.501701, 53.695896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993931, 41.119869, 54.000977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836037, 41.027191, 53.645336>,  <34.741299, 40.971584, 53.431953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836037, 41.027191, 53.645336>,  <34.993931, 41.119869, 54.000977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836037, 41.027191, 53.645336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918774, 0.093238, 0.383614,
		-0.005985, 0.968309, -0.249682,
		-0.394737, -0.231697, -0.889100,
		34.717617, 40.957684, 53.378605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338116, 41.425980, 53.971832>,  <34.993931, 41.119869, 54.000977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338116, 41.425980, 53.971832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296059, 41.179474, 53.659637>,  <34.270824, 41.031570, 53.472321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296059, 41.179474, 53.659637>,  <34.338116, 41.425980, 53.971832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296059, 41.179474, 53.659637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956962, -0.150781, 0.247968,
		-0.270497, 0.772969, -0.573891,
		-0.105140, -0.616267, -0.780488,
		34.264515, 40.994595, 53.425491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642136, 41.668282, 53.763824>,  <34.338116, 41.425980, 53.971832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642136, 41.668282, 53.763824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721245, 41.301109, 53.626251>,  <33.768711, 41.080807, 53.543709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721245, 41.301109, 53.626251>,  <33.642136, 41.668282, 53.763824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721245, 41.301109, 53.626251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916313, -0.297763, 0.267782,
		-0.348216, 0.262192, -0.900001,
		0.197777, -0.917928, -0.343935,
		33.780579, 41.025730, 53.523071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079361, 41.476685, 53.379208>,  <33.642136, 41.668282, 53.763824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079361, 41.476685, 53.379208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252052, 41.145706, 53.522842>,  <33.355667, 40.947121, 53.609024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252052, 41.145706, 53.522842>,  <33.079361, 41.476685, 53.379208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252052, 41.145706, 53.522842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889416, -0.324240, 0.322194,
		-0.150167, -0.458479, -0.875927,
		0.431729, -0.827446, 0.359088,
		33.381573, 40.897472, 53.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518238, 40.916294, 53.155720>,  <33.079361, 41.476685, 53.379208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518238, 40.916294, 53.155720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750580, 40.755508, 53.438854>,  <32.889984, 40.659039, 53.608734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750580, 40.755508, 53.438854>,  <32.518238, 40.916294, 53.155720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750580, 40.755508, 53.438854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811810, -0.349925, 0.467458,
		0.059791, -0.846156, -0.529570,
		0.580853, -0.401960, 0.707840,
		32.924835, 40.634922, 53.651207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223995, 40.245167, 53.323456>,  <32.518238, 40.916294, 53.155720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223995, 40.245167, 53.323456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453865, 40.314285, 53.643429>,  <32.591789, 40.355759, 53.835411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453865, 40.314285, 53.643429>,  <32.223995, 40.245167, 53.323456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453865, 40.314285, 53.643429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663469, -0.473875, 0.579009,
		0.479119, -0.863472, -0.157677,
		0.574677, 0.172800, 0.799929,
		32.626266, 40.366127, 53.883408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277416, 39.579124, 53.729794>,  <32.223995, 40.245167, 53.323456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277416, 39.579124, 53.729794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362564, 39.857246, 54.004379>,  <32.413654, 40.024120, 54.169132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362564, 39.857246, 54.004379>,  <32.277416, 39.579124, 53.729794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362564, 39.857246, 54.004379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474542, -0.540574, 0.694687,
		0.854106, -0.473635, 0.214880,
		0.212869, 0.695305, 0.686467,
		32.426426, 40.065838, 54.210320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561192, 39.323082, 54.246780>,  <32.277416, 39.579124, 53.729794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561192, 39.323082, 54.246780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417290, 39.657349, 54.412788>,  <32.330948, 39.857906, 54.512394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417290, 39.657349, 54.412788>,  <32.561192, 39.323082, 54.246780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417290, 39.657349, 54.412788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501831, -0.548283, 0.668993,
		0.786602, 0.032403, 0.616609,
		-0.359754, 0.835665, 0.415020,
		32.309364, 39.908047, 54.537292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780174, 39.232048, 54.974300>,  <32.561192, 39.323082, 54.246780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780174, 39.232048, 54.974300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486523, 39.502548, 54.998779>,  <32.310333, 39.664848, 55.013466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486523, 39.502548, 54.998779>,  <32.780174, 39.232048, 54.974300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486523, 39.502548, 54.998779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380506, -0.484366, 0.787785,
		0.562380, 0.555049, 0.612903,
		-0.734128, 0.676247, 0.061198,
		32.266285, 39.705421, 55.017139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738144, 39.371059, 55.650288>,  <32.780174, 39.232048, 54.974300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738144, 39.371059, 55.650288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389267, 39.507324, 55.509872>,  <32.179939, 39.589085, 55.425625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389267, 39.507324, 55.509872>,  <32.738144, 39.371059, 55.650288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389267, 39.507324, 55.509872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484687, -0.505029, 0.714160,
		0.066003, 0.793029, 0.605598,
		-0.872194, 0.340661, -0.351038,
		32.127609, 39.609524, 55.404560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369514, 39.664547, 56.273449>,  <32.738144, 39.371059, 55.650288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369514, 39.664547, 56.273449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086395, 39.606232, 55.996964>,  <31.916525, 39.571243, 55.831074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086395, 39.606232, 55.996964>,  <32.369514, 39.664547, 56.273449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086395, 39.606232, 55.996964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563274, -0.474028, 0.676772,
		-0.426318, 0.868357, 0.253396,
		-0.707796, -0.145788, -0.691210,
		31.874056, 39.562496, 55.789600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795261, 39.913887, 56.506214>,  <32.369514, 39.664547, 56.273449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795261, 39.913887, 56.506214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683075, 39.626251, 56.251892>,  <31.615763, 39.453671, 56.099297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683075, 39.626251, 56.251892>,  <31.795261, 39.913887, 56.506214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683075, 39.626251, 56.251892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606153, -0.380921, 0.698196,
		-0.744257, 0.581217, -0.329042,
		-0.280465, -0.719087, -0.635810,
		31.598936, 39.410526, 56.061150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008797, 39.701614, 56.627308>,  <31.795261, 39.913887, 56.506214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008797, 39.701614, 56.627308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156250, 39.393974, 56.418465>,  <31.244722, 39.209389, 56.293159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156250, 39.393974, 56.418465>,  <31.008797, 39.701614, 56.627308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156250, 39.393974, 56.418465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622265, -0.621420, 0.476050,
		-0.690577, 0.149400, -0.707661,
		0.368633, -0.769102, -0.522105,
		31.266840, 39.163242, 56.261833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515837, 39.344265, 56.599350>,  <31.008797, 39.701614, 56.627308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515837, 39.344265, 56.599350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812515, 39.082588, 56.540123>,  <30.990522, 38.925583, 56.504589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812515, 39.082588, 56.540123>,  <30.515837, 39.344265, 56.599350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812515, 39.082588, 56.540123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425992, -0.629952, 0.649378,
		-0.518088, -0.418569, -0.745913,
		0.741698, -0.654187, -0.148064,
		31.035025, 38.886333, 56.495705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176888, 38.712425, 56.505665>,  <30.515837, 39.344265, 56.599350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176888, 38.712425, 56.505665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555759, 38.649200, 56.617279>,  <30.783083, 38.611263, 56.684250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555759, 38.649200, 56.617279>,  <30.176888, 38.712425, 56.505665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555759, 38.649200, 56.617279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318545, -0.564338, 0.761611,
		0.037087, -0.810270, -0.584882,
		0.947182, -0.158065, 0.279037,
		30.839914, 38.601780, 56.700989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344147, 38.000393, 56.449810>,  <30.176888, 38.712425, 56.505665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344147, 38.000393, 56.449810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558037, 38.187630, 56.731224>,  <30.686371, 38.299973, 56.900070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558037, 38.187630, 56.731224>,  <30.344147, 38.000393, 56.449810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558037, 38.187630, 56.731224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473460, -0.523642, 0.708262,
		0.699934, -0.711818, -0.058378,
		0.534723, 0.468097, 0.703531,
		30.718454, 38.328060, 56.942284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956949, 37.588810, 55.921375>,  <30.344147, 38.000393, 56.449810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956949, 37.588810, 55.921375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045259, 37.244781, 55.737400>,  <30.098246, 37.038364, 55.627014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045259, 37.244781, 55.737400>,  <29.956949, 37.588810, 55.921375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045259, 37.244781, 55.737400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201356, 0.501608, -0.841336,
		0.954313, 0.093135, 0.283922,
		0.220775, -0.860067, -0.459938,
		30.111492, 36.986763, 55.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683638, 37.431793, 55.752068>,  <29.956949, 37.588810, 55.921375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683638, 37.431793, 55.752068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465405, 37.242485, 55.475414>,  <30.334465, 37.128902, 55.309422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465405, 37.242485, 55.475414>,  <30.683638, 37.431793, 55.752068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465405, 37.242485, 55.475414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494455, 0.484552, -0.721612,
		0.676648, -0.735681, -0.030355,
		-0.545585, -0.473268, -0.691632,
		30.301729, 37.100506, 55.267925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113819, 37.115570, 55.249870>,  <30.683638, 37.431793, 55.752068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113819, 37.115570, 55.249870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768526, 37.163475, 55.053711>,  <30.561350, 37.192219, 54.936016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768526, 37.163475, 55.053711>,  <31.113819, 37.115570, 55.249870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768526, 37.163475, 55.053711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490640, 0.427570, -0.759247,
		0.118749, -0.896014, -0.427853,
		-0.863233, 0.119762, -0.490393,
		30.509556, 37.199402, 54.906593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250067, 36.934200, 54.569416>,  <31.113819, 37.115570, 55.249870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250067, 36.934200, 54.569416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916328, 37.153160, 54.543438>,  <30.716085, 37.284538, 54.527851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916328, 37.153160, 54.543438>,  <31.250067, 36.934200, 54.569416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916328, 37.153160, 54.543438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369714, 0.468296, -0.802502,
		-0.408877, -0.693576, -0.593103,
		-0.834345, 0.547403, -0.064949,
		30.666025, 37.317383, 54.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043339, 36.830891, 53.934788>,  <31.250067, 36.934200, 54.569416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043339, 36.830891, 53.934788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.852919, 37.171661, 54.022060>,  <30.738667, 37.376122, 54.074425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.852919, 37.171661, 54.022060>,  <31.043339, 36.830891, 53.934788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852919, 37.171661, 54.022060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450686, 0.449378, -0.771325,
		-0.755155, -0.268859, -0.597876,
		-0.476050, 0.851924, 0.218178,
		30.710104, 37.427238, 54.087513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676493, 37.109039, 53.233021>,  <31.043339, 36.830891, 53.934788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676493, 37.109039, 53.233021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687885, 37.437515, 53.460999>,  <30.694721, 37.634602, 53.597786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687885, 37.437515, 53.460999>,  <30.676493, 37.109039, 53.233021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687885, 37.437515, 53.460999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277094, 0.541342, -0.793831,
		-0.960421, 0.180536, -0.212129,
		0.028481, 0.821192, 0.569941,
		30.696430, 37.683872, 53.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339602, 37.635471, 52.937595>,  <30.676493, 37.109039, 53.233021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339602, 37.635471, 52.937595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602243, 37.821335, 53.175236>,  <30.759829, 37.932854, 53.317822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602243, 37.821335, 53.175236>,  <30.339602, 37.635471, 52.937595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602243, 37.821335, 53.175236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309862, 0.551963, -0.774159,
		-0.687644, 0.692408, 0.218442,
		0.656605, 0.464659, 0.594106,
		30.799225, 37.960732, 53.353466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279762, 38.322563, 52.686253>,  <30.339602, 37.635471, 52.937595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279762, 38.322563, 52.686253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630615, 38.301773, 52.877224>,  <30.841127, 38.289299, 52.991806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630615, 38.301773, 52.877224>,  <30.279762, 38.322563, 52.686253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630615, 38.301773, 52.877224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420404, 0.563683, -0.711001,
		-0.232167, 0.824354, 0.516274,
		0.877131, -0.051973, 0.477430,
		30.893755, 38.286182, 53.020454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690893, 38.916351, 52.436985>,  <30.279762, 38.322563, 52.686253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690893, 38.916351, 52.436985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991488, 38.715393, 52.608040>,  <31.171844, 38.594818, 52.710670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991488, 38.715393, 52.608040>,  <30.690893, 38.916351, 52.436985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991488, 38.715393, 52.608040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657818, 0.521038, -0.543870,
		0.050422, 0.690017, 0.722035,
		0.751487, -0.502391, 0.427633,
		31.216934, 38.564674, 52.736328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122749, 39.436943, 52.800056>,  <30.690893, 38.916351, 52.436985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122749, 39.436943, 52.800056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350155, 39.113274, 52.740677>,  <31.486599, 38.919071, 52.705051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350155, 39.113274, 52.740677>,  <31.122749, 39.436943, 52.800056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350155, 39.113274, 52.740677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731037, 0.579658, -0.359975,
		0.377329, 0.096131, 0.921076,
		0.568514, -0.809170, -0.148447,
		31.520708, 38.870522, 52.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822704, 39.591358, 53.007992>,  <31.122749, 39.436943, 52.800056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822704, 39.591358, 53.007992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861263, 39.276184, 52.764725>,  <31.884399, 39.087078, 52.618767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861263, 39.276184, 52.764725>,  <31.822704, 39.591358, 53.007992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861263, 39.276184, 52.764725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728306, 0.472309, -0.496483,
		0.678438, -0.395069, 0.619389,
		0.096398, -0.787937, -0.608163,
		31.890182, 39.039803, 52.582275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489506, 39.435532, 52.958836>,  <31.822704, 39.591358, 53.007992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489506, 39.435532, 52.958836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.354042, 39.242920, 52.635494>,  <32.272762, 39.127354, 52.441490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.354042, 39.242920, 52.635494>,  <32.489506, 39.435532, 52.958836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354042, 39.242920, 52.635494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688457, 0.458789, -0.561730,
		0.641354, -0.746753, 0.176140,
		-0.338662, -0.481532, -0.808353,
		32.252445, 39.098461, 52.392990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053635, 39.155186, 52.682892>,  <32.489506, 39.435532, 52.958836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053635, 39.155186, 52.682892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805931, 39.154129, 52.368820>,  <32.657310, 39.153496, 52.180378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805931, 39.154129, 52.368820>,  <33.053635, 39.155186, 52.682892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805931, 39.154129, 52.368820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749911, 0.294375, -0.592433,
		0.232704, -0.955686, -0.180312,
		-0.619260, -0.002644, -0.785182,
		32.620152, 39.153336, 52.133266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474350, 38.876045, 52.224007>,  <33.053635, 39.155186, 52.682892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474350, 38.876045, 52.224007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176674, 39.037193, 52.010887>,  <32.998070, 39.133884, 51.883015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176674, 39.037193, 52.010887>,  <33.474350, 38.876045, 52.224007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176674, 39.037193, 52.010887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656992, 0.297454, -0.692735,
		-0.120600, -0.865572, -0.486046,
		-0.744189, 0.402873, -0.532801,
		32.953419, 39.158054, 51.851048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534187, 38.619110, 51.585232>,  <33.474350, 38.876045, 52.224007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534187, 38.619110, 51.585232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333275, 38.962502, 51.543793>,  <33.212727, 39.168537, 51.518929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333275, 38.962502, 51.543793>,  <33.534187, 38.619110, 51.585232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333275, 38.962502, 51.543793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659049, 0.302497, -0.688585,
		-0.559796, -0.414140, -0.717716,
		-0.502278, 0.858478, -0.103602,
		33.182590, 39.220043, 51.512711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695362, 38.823059, 50.889214>,  <33.534187, 38.619110, 51.585232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695362, 38.823059, 50.889214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540703, 39.163742, 51.030693>,  <33.447906, 39.368153, 51.115582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540703, 39.163742, 51.030693>,  <33.695362, 38.823059, 50.889214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540703, 39.163742, 51.030693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584301, 0.522966, -0.620564,
		-0.713511, -0.033269, -0.699853,
		-0.386645, 0.851704, 0.353703,
		33.424709, 39.419254, 51.136803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412060, 39.157619, 50.339504>,  <33.695362, 38.823059, 50.889214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412060, 39.157619, 50.339504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472515, 39.443138, 50.613045>,  <33.508789, 39.614449, 50.777168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472515, 39.443138, 50.613045>,  <33.412060, 39.157619, 50.339504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472515, 39.443138, 50.613045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624152, 0.467551, -0.625963,
		-0.766545, 0.521436, -0.374851,
		0.151138, 0.713793, 0.683854,
		33.517857, 39.657276, 50.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529701, 39.734966, 49.966137>,  <33.412060, 39.157619, 50.339504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529701, 39.734966, 49.966137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669243, 39.821007, 50.331001>,  <33.752968, 39.872631, 50.549919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669243, 39.821007, 50.331001>,  <33.529701, 39.734966, 49.966137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669243, 39.821007, 50.331001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723891, 0.556313, -0.408041,
		-0.595215, 0.802650, 0.038363,
		0.348856, 0.215101, 0.912157,
		33.773899, 39.885536, 50.604649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560383, 40.490261, 50.045040>,  <33.529701, 39.734966, 49.966137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560383, 40.490261, 50.045040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831375, 40.320251, 50.285164>,  <33.993973, 40.218246, 50.429237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831375, 40.320251, 50.285164>,  <33.560383, 40.490261, 50.045040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831375, 40.320251, 50.285164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653854, 0.721809, -0.226862,
		-0.336886, 0.546210, 0.766918,
		0.677483, -0.425025, 0.600309,
		34.034618, 40.192745, 50.465256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881100, 41.067856, 50.445889>,  <33.560383, 40.490261, 50.045040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881100, 41.067856, 50.445889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138901, 40.768288, 50.507504>,  <34.293583, 40.588547, 50.544472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138901, 40.768288, 50.507504>,  <33.881100, 41.067856, 50.445889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138901, 40.768288, 50.507504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763858, 0.621795, -0.172892,
		0.033702, 0.229094, 0.972821,
		0.644503, -0.748924, 0.154040,
		34.332253, 40.543610, 50.553715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351181, 41.342934, 50.807949>,  <33.881100, 41.067856, 50.445889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351181, 41.342934, 50.807949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549519, 41.030891, 50.655334>,  <34.668522, 40.843666, 50.563766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549519, 41.030891, 50.655334>,  <34.351181, 41.342934, 50.807949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549519, 41.030891, 50.655334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762632, 0.601311, -0.238365,
		0.415374, -0.172781, 0.893091,
		0.495840, -0.780110, -0.381537,
		34.698269, 40.796860, 50.540874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.234173, 44.465122, 52.306808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302555, 44.116310, 52.123360>,  <39.343582, 43.907021, 52.013290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302555, 44.116310, 52.123360>,  <39.234173, 44.465122, 52.306808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302555, 44.116310, 52.123360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920415, 0.307440, -0.241490,
		0.351586, -0.380837, 0.855190,
		0.170952, -0.872034, -0.458620,
		39.353840, 43.854698, 51.985775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885384, 44.330173, 52.436672>,  <39.234173, 44.465122, 52.306808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885384, 44.330173, 52.436672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826355, 44.081734, 52.128784>,  <39.790936, 43.932671, 51.944054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826355, 44.081734, 52.128784>,  <39.885384, 44.330173, 52.436672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826355, 44.081734, 52.128784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881523, 0.270295, -0.387115,
		0.448486, -0.735650, 0.507621,
		-0.147574, -0.621096, -0.769716,
		39.782082, 43.895405, 51.897869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518108, 43.968182, 52.335556>,  <39.885384, 44.330173, 52.436672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518108, 43.968182, 52.335556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338421, 43.928452, 51.980404>,  <40.230606, 43.904613, 51.767311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338421, 43.928452, 51.980404>,  <40.518108, 43.968182, 52.335556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338421, 43.928452, 51.980404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859309, 0.223950, -0.459820,
		0.244515, -0.969526, -0.015248,
		-0.449223, -0.099330, -0.887881,
		40.203655, 43.898651, 51.714039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029537, 43.685947, 51.945858>,  <40.518108, 43.968182, 52.335556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029537, 43.685947, 51.945858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760624, 43.848351, 51.698250>,  <40.599274, 43.945793, 51.549686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760624, 43.848351, 51.698250>,  <41.029537, 43.685947, 51.945858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760624, 43.848351, 51.698250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737934, 0.300877, -0.604092,
		-0.059017, -0.862920, -0.501883,
		-0.672288, 0.406008, -0.619021,
		40.558937, 43.970154, 51.512543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100830, 43.389709, 51.251034>,  <41.029537, 43.685947, 51.945858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100830, 43.389709, 51.251034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933105, 43.749901, 51.204861>,  <40.832470, 43.966015, 51.177158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933105, 43.749901, 51.204861>,  <41.100830, 43.389709, 51.251034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933105, 43.749901, 51.204861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651865, 0.210138, -0.728638,
		-0.631865, -0.380769, -0.675101,
		-0.419307, 0.900476, -0.115432,
		40.807312, 44.020042, 51.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121941, 43.534466, 50.622841>,  <41.100830, 43.389709, 51.251034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121941, 43.534466, 50.622841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029404, 43.907303, 50.734329>,  <40.973881, 44.131004, 50.801220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029404, 43.907303, 50.734329>,  <41.121941, 43.534466, 50.622841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029404, 43.907303, 50.734329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623024, 0.361976, -0.693408,
		-0.747211, 0.013237, -0.664455,
		-0.231338, 0.932093, 0.278719,
		40.960003, 44.186932, 50.817944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998516, 43.876595, 50.048496>,  <41.121941, 43.534466, 50.622841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998516, 43.876595, 50.048496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061752, 44.173233, 50.309277>,  <41.099693, 44.351215, 50.465744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061752, 44.173233, 50.309277>,  <40.998516, 43.876595, 50.048496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061752, 44.173233, 50.309277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630170, 0.432540, -0.644821,
		-0.760193, 0.512782, -0.398951,
		0.158091, 0.741595, 0.651954,
		41.109180, 44.395710, 50.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951881, 44.541676, 49.700409>,  <40.998516, 43.876595, 50.048496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951881, 44.541676, 49.700409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.180351, 44.608765, 50.021812>,  <41.317432, 44.649017, 50.214657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.180351, 44.608765, 50.021812>,  <40.951881, 44.541676, 49.700409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180351, 44.608765, 50.021812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705025, 0.401069, -0.584879,
		-0.420360, 0.900563, 0.110831,
		0.571171, 0.167721, 0.803513,
		41.351704, 44.659081, 50.262867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253349, 45.114365, 49.528492>,  <40.951881, 44.541676, 49.700409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253349, 45.114365, 49.528492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503658, 44.988655, 49.814049>,  <41.653843, 44.913231, 49.985382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503658, 44.988655, 49.814049>,  <41.253349, 45.114365, 49.528492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503658, 44.988655, 49.814049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741424, 0.523952, -0.419243,
		-0.242290, 0.791648, 0.560882,
		0.625768, -0.314273, 0.713895,
		41.691387, 44.894375, 50.028217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565151, 45.767910, 49.898884>,  <41.253349, 45.114365, 49.528492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565151, 45.767910, 49.898884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802132, 45.457344, 49.984844>,  <41.944321, 45.271004, 50.036419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802132, 45.457344, 49.984844>,  <41.565151, 45.767910, 49.898884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802132, 45.457344, 49.984844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800548, 0.537547, -0.264887,
		0.090145, 0.328969, 0.940028,
		0.592449, -0.776416, 0.214899,
		41.979866, 45.224419, 50.049313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253933, 46.113522, 50.246391>,  <41.565151, 45.767910, 49.898884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253933, 46.113522, 50.246391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357658, 45.743172, 50.136478>,  <42.419895, 45.520962, 50.070530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357658, 45.743172, 50.136478>,  <42.253933, 46.113522, 50.246391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357658, 45.743172, 50.136478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915429, 0.326310, -0.235608,
		0.307808, -0.190445, 0.932194,
		0.259314, -0.925879, -0.274780,
		42.435452, 45.465408, 50.054043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879025, 46.101673, 50.571129>,  <42.253933, 46.113522, 50.246391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879025, 46.101673, 50.571129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878273, 45.819389, 50.287727>,  <42.877823, 45.650021, 50.117687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878273, 45.819389, 50.287727>,  <42.879025, 46.101673, 50.571129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878273, 45.819389, 50.287727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898187, 0.310277, -0.311431,
		0.439610, -0.636950, 0.633275,
		-0.001875, -0.705707, -0.708501,
		42.877712, 45.607677, 50.075176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527180, 45.703587, 50.554848>,  <42.879025, 46.101673, 50.571129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527180, 45.703587, 50.554848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387451, 45.674919, 50.181145>,  <43.303612, 45.657719, 49.956924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387451, 45.674919, 50.181145>,  <43.527180, 45.703587, 50.554848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387451, 45.674919, 50.181145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818092, 0.462792, -0.341392,
		0.456838, -0.883564, -0.103024,
		-0.349321, -0.071678, -0.934258,
		43.282654, 45.653419, 49.900867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021454, 45.392780, 50.147274>,  <43.527180, 45.703587, 50.554848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021454, 45.392780, 50.147274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809647, 45.629135, 49.903809>,  <43.682564, 45.770947, 49.757729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809647, 45.629135, 49.903809>,  <44.021454, 45.392780, 50.147274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809647, 45.629135, 49.903809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819860, 0.172235, -0.546045,
		-0.217819, -0.788154, -0.575646,
		-0.529514, 0.590888, -0.608659,
		43.650791, 45.806400, 49.721210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474743, 45.824459, 50.538132>,  <44.021454, 45.392780, 50.147274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474743, 45.824459, 50.538132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788902, 45.776070, 50.780956>,  <44.977398, 45.747036, 50.926651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788902, 45.776070, 50.780956>,  <44.474743, 45.824459, 50.538132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788902, 45.776070, 50.780956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280216, -0.943958, 0.174422,
		0.551936, -0.307097, -0.775279,
		0.785395, -0.120976, 0.607058,
		45.024521, 45.739777, 50.963074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755188, 45.227104, 50.302383>,  <44.474743, 45.824459, 50.538132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755188, 45.227104, 50.302383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875240, 45.288177, 50.679024>,  <44.947269, 45.324821, 50.905006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875240, 45.288177, 50.679024>,  <44.755188, 45.227104, 50.302383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875240, 45.288177, 50.679024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278605, -0.930036, 0.239609,
		0.912306, -0.334248, -0.236590,
		0.300126, 0.152681, 0.941601,
		44.965279, 45.333981, 50.961506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107346, 44.639988, 50.468864>,  <44.755188, 45.227104, 50.302383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107346, 44.639988, 50.468864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039215, 44.785522, 50.835167>,  <44.998337, 44.872845, 51.054951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039215, 44.785522, 50.835167>,  <45.107346, 44.639988, 50.468864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039215, 44.785522, 50.835167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167109, -0.926541, 0.337041,
		0.971115, -0.095626, 0.218610,
		-0.170322, 0.363837, 0.915758,
		44.988117, 44.894672, 51.109894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400829, 44.188133, 50.846867>,  <45.107346, 44.639988, 50.468864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400829, 44.188133, 50.846867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162262, 44.381958, 51.102829>,  <45.019119, 44.498253, 51.256405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162262, 44.381958, 51.102829>,  <45.400829, 44.188133, 50.846867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162262, 44.381958, 51.102829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230214, -0.866993, 0.441955,
		0.768950, 0.116276, 0.628646,
		-0.596421, 0.484565, 0.639906,
		44.983337, 44.527328, 51.294800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458702, 43.827915, 51.585575>,  <45.400829, 44.188133, 50.846867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458702, 43.827915, 51.585575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112297, 44.027863, 51.590488>,  <44.904453, 44.147831, 51.593437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112297, 44.027863, 51.590488>,  <45.458702, 43.827915, 51.585575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112297, 44.027863, 51.590488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436872, -0.768362, 0.467720,
		0.243240, 0.399684, 0.883791,
		-0.866012, 0.499872, 0.012286,
		44.852493, 44.177826, 51.594173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216621, 43.638680, 52.257114>,  <45.458702, 43.827915, 51.585575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216621, 43.638680, 52.257114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900486, 43.774635, 52.053215>,  <44.710804, 43.856209, 51.930878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900486, 43.774635, 52.053215>,  <45.216621, 43.638680, 52.257114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900486, 43.774635, 52.053215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576529, -0.694128, 0.431045,
		-0.207321, 0.634554, 0.744552,
		-0.790336, 0.339892, -0.509746,
		44.663383, 43.876602, 51.900291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747505, 43.826134, 52.717289>,  <45.216621, 43.638680, 52.257114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747505, 43.826134, 52.717289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523621, 43.766335, 52.391251>,  <44.389290, 43.730457, 52.195629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523621, 43.766335, 52.391251>,  <44.747505, 43.826134, 52.717289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523621, 43.766335, 52.391251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648963, -0.532593, 0.543316,
		-0.515336, 0.833064, 0.201081,
		-0.559711, -0.149496, -0.815091,
		44.355709, 43.721485, 52.146725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934811, 43.818661, 52.919254>,  <44.747505, 43.826134, 52.717289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934811, 43.818661, 52.919254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900734, 43.654999, 52.555862>,  <43.880287, 43.556801, 52.337826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900734, 43.654999, 52.555862>,  <43.934811, 43.818661, 52.919254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900734, 43.654999, 52.555862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719286, -0.605695, 0.340236,
		-0.689471, 0.682443, -0.242698,
		-0.085191, -0.409153, -0.908481,
		43.875175, 43.532253, 52.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310131, 43.943851, 52.670513>,  <43.934811, 43.818661, 52.919254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310131, 43.943851, 52.670513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416687, 43.611649, 52.474846>,  <43.480621, 43.412327, 52.357445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416687, 43.611649, 52.474846>,  <43.310131, 43.943851, 52.670513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416687, 43.611649, 52.474846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901223, -0.394589, 0.179154,
		-0.341811, 0.393127, -0.853590,
		0.266387, -0.830513, -0.489170,
		43.496605, 43.362495, 52.328094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747082, 43.793118, 52.141899>,  <43.310131, 43.943851, 52.670513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747082, 43.793118, 52.141899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955772, 43.455856, 52.193878>,  <43.080986, 43.253498, 52.225067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955772, 43.455856, 52.193878>,  <42.747082, 43.793118, 52.141899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955772, 43.455856, 52.193878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850460, -0.526037, 0.001362,
		0.067210, -0.111229, -0.991519,
		0.521728, -0.843157, 0.129951,
		43.112289, 43.202908, 52.232864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425743, 43.269367, 51.688160>,  <42.747082, 43.793118, 52.141899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425743, 43.269367, 51.688160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634644, 43.078804, 51.971085>,  <42.759983, 42.964466, 52.140839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634644, 43.078804, 51.971085>,  <42.425743, 43.269367, 51.688160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634644, 43.078804, 51.971085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723683, -0.686362, 0.072047,
		0.451148, -0.549497, -0.703220,
		0.522253, -0.476404, 0.707312,
		42.791321, 42.935883, 52.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209190, 42.624222, 51.537159>,  <42.425743, 43.269367, 51.688160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209190, 42.624222, 51.537159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.337486, 42.615448, 51.915924>,  <42.414463, 42.610184, 52.143185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.337486, 42.615448, 51.915924>,  <42.209190, 42.624222, 51.537159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337486, 42.615448, 51.915924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780218, -0.572936, 0.251006,
		0.537014, -0.819307, -0.200879,
		0.320742, -0.021936, 0.946913,
		42.433708, 42.608868, 52.199997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891914, 42.026272, 51.823559>,  <42.209190, 42.624222, 51.537159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891914, 42.026272, 51.823559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032356, 42.204948, 52.152725>,  <42.116623, 42.312157, 52.350224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032356, 42.204948, 52.152725>,  <41.891914, 42.026272, 51.823559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032356, 42.204948, 52.152725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780444, -0.345963, 0.520785,
		0.517329, -0.825090, 0.227150,
		0.351109, 0.446695, 0.822913,
		42.137688, 42.338955, 52.399601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819103, 41.489990, 52.210953>,  <41.891914, 42.026272, 51.823559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819103, 41.489990, 52.210953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.836075, 41.805298, 52.456497>,  <41.846260, 41.994484, 52.603825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.836075, 41.805298, 52.456497>,  <41.819103, 41.489990, 52.210953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836075, 41.805298, 52.456497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744981, -0.384445, 0.545165,
		0.665734, -0.480451, 0.570933,
		0.042433, 0.788269, 0.613865,
		41.848804, 42.041779, 52.640656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403946, 40.968346, 52.414562>,  <41.819103, 41.489990, 52.210953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403946, 40.968346, 52.414562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.540558, 40.592957, 52.394073>,  <42.622524, 40.367722, 52.381779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.540558, 40.592957, 52.394073>,  <42.403946, 40.968346, 52.414562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540558, 40.592957, 52.394073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793098, 0.317016, -0.520092,
		0.504331, 0.137001, 0.852573,
		0.341533, -0.938473, -0.051226,
		42.643017, 40.311413, 52.378704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067883, 41.054405, 52.500324>,  <42.403946, 40.968346, 52.414562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067883, 41.054405, 52.500324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026897, 40.690102, 52.340317>,  <43.002304, 40.471519, 52.244312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026897, 40.690102, 52.340317>,  <43.067883, 41.054405, 52.500324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026897, 40.690102, 52.340317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751856, 0.192396, -0.630632,
		0.651317, -0.365375, 0.665047,
		-0.102465, -0.910761, -0.400020,
		42.996159, 40.416874, 52.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731174, 40.804817, 52.447086>,  <43.067883, 41.054405, 52.500324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731174, 40.804817, 52.447086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494865, 40.614609, 52.186359>,  <43.353081, 40.500484, 52.029922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494865, 40.614609, 52.186359>,  <43.731174, 40.804817, 52.447086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494865, 40.614609, 52.186359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628040, 0.236142, -0.741487,
		0.506514, -0.847418, 0.159140,
		-0.590770, -0.475519, -0.651822,
		43.317635, 40.471954, 51.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142838, 40.339943, 52.111614>,  <43.731174, 40.804817, 52.447086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142838, 40.339943, 52.111614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838734, 40.352875, 51.852089>,  <43.656273, 40.360634, 51.696373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838734, 40.352875, 51.852089>,  <44.142838, 40.339943, 52.111614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838734, 40.352875, 51.852089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647017, 0.127002, -0.751824,
		0.058093, -0.991375, -0.117474,
		-0.760259, 0.032332, -0.648814,
		43.610657, 40.362576, 51.657444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465275, 39.941624, 51.539501>,  <44.142838, 40.339943, 52.111614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465275, 39.941624, 51.539501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146835, 40.114914, 51.370483>,  <43.955772, 40.218887, 51.269073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146835, 40.114914, 51.370483>,  <44.465275, 39.941624, 51.539501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146835, 40.114914, 51.370483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483069, 0.034342, -0.874908,
		-0.364525, -0.900629, -0.236620,
		-0.796094, 0.433230, -0.422548,
		43.908009, 40.244884, 51.243717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246639, 39.606316, 50.949722>,  <44.465275, 39.941624, 51.539501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246639, 39.606316, 50.949722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096676, 39.971268, 50.883984>,  <44.006699, 40.190239, 50.844540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096676, 39.971268, 50.883984>,  <44.246639, 39.606316, 50.949722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096676, 39.971268, 50.883984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350551, -0.024596, -0.936221,
		-0.858228, -0.408612, -0.310613,
		-0.374911, 0.912377, -0.164348,
		43.984203, 40.244980, 50.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855415, 39.523380, 50.381390>,  <44.246639, 39.606316, 50.949722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855415, 39.523380, 50.381390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.948387, 39.912102, 50.397293>,  <44.004169, 40.145332, 50.406834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.948387, 39.912102, 50.397293>,  <43.855415, 39.523380, 50.381390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948387, 39.912102, 50.397293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414803, -0.062069, -0.907792,
		-0.879726, 0.227486, -0.417532,
		0.232426, 0.971801, 0.039758,
		44.018116, 40.203644, 50.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873577, 39.846226, 49.638794>,  <43.855415, 39.523380, 50.381390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873577, 39.846226, 49.638794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014793, 40.177612, 49.812691>,  <44.099525, 40.376446, 49.917030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014793, 40.177612, 49.812691>,  <43.873577, 39.846226, 49.638794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014793, 40.177612, 49.812691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545413, 0.195306, -0.815095,
		-0.760188, 0.524879, -0.382905,
		0.353043, 0.828467, 0.434746,
		44.120705, 40.426151, 49.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955387, 40.235912, 49.179020>,  <43.873577, 39.846226, 49.638794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955387, 40.235912, 49.179020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185303, 40.438347, 49.436234>,  <44.323254, 40.559807, 49.590561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185303, 40.438347, 49.436234>,  <43.955387, 40.235912, 49.179020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185303, 40.438347, 49.436234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499846, 0.405038, -0.765570,
		-0.647898, 0.761460, -0.020153,
		0.574788, 0.506085, 0.643036,
		44.357738, 40.590172, 49.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091755, 40.871872, 48.903610>,  <43.955387, 40.235912, 49.179020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091755, 40.871872, 48.903610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384468, 40.828880, 49.172813>,  <44.560097, 40.803085, 49.334335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384468, 40.828880, 49.172813>,  <44.091755, 40.871872, 48.903610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384468, 40.828880, 49.172813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662094, 0.346303, -0.664609,
		-0.161634, 0.931946, 0.324579,
		0.731783, -0.107478, 0.673010,
		44.604004, 40.796638, 49.374718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475246, 41.511730, 48.927139>,  <44.091755, 40.871872, 48.903610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475246, 41.511730, 48.927139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712456, 41.214813, 49.051922>,  <44.854782, 41.036663, 49.126793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712456, 41.214813, 49.051922>,  <44.475246, 41.511730, 48.927139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712456, 41.214813, 49.051922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712439, 0.303210, -0.632847,
		0.375169, 0.597547, 0.708651,
		0.593025, -0.742295, 0.311961,
		44.890362, 40.992126, 49.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191174, 41.761627, 48.916718>,  <44.475246, 41.511730, 48.927139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191174, 41.761627, 48.916718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241627, 41.364853, 48.911865>,  <45.271896, 41.126789, 48.908955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241627, 41.364853, 48.911865>,  <45.191174, 41.761627, 48.916718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241627, 41.364853, 48.911865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828921, 0.112105, -0.548016,
		0.544959, 0.059062, 0.836380,
		0.126129, -0.991940, -0.012135,
		45.279465, 41.067272, 48.908226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.215366, 39.199036, 55.170971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249390, 38.913460, 54.892963>,  <40.269806, 38.742115, 54.726158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249390, 38.913460, 54.892963>,  <40.215366, 39.199036, 55.170971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249390, 38.913460, 54.892963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893176, 0.363789, -0.264376,
		0.441590, -0.598289, 0.668617,
		0.085062, -0.713939, -0.695022,
		40.274910, 38.699280, 54.684456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920738, 38.939060, 55.120682>,  <40.215366, 39.199036, 55.170971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920738, 38.939060, 55.120682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784538, 38.828621, 54.761166>,  <40.702816, 38.762356, 54.545456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784538, 38.828621, 54.761166>,  <40.920738, 38.939060, 55.120682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784538, 38.828621, 54.761166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760098, 0.481845, -0.435977,
		0.553451, -0.831622, 0.045792,
		-0.340503, -0.276098, -0.898792,
		40.682388, 38.745792, 54.491528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537735, 38.720234, 54.795429>,  <40.920738, 38.939060, 55.120682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537735, 38.720234, 54.795429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255135, 38.744675, 54.513401>,  <41.085575, 38.759338, 54.344185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255135, 38.744675, 54.513401>,  <41.537735, 38.720234, 54.795429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255135, 38.744675, 54.513401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628015, 0.513423, -0.584802,
		0.326265, -0.855958, -0.401108,
		-0.706504, 0.061102, -0.705067,
		41.043182, 38.763004, 54.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774246, 38.414425, 54.265125>,  <41.537735, 38.720234, 54.795429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774246, 38.414425, 54.265125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498428, 38.646515, 54.091747>,  <41.332939, 38.785767, 53.987720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498428, 38.646515, 54.091747>,  <41.774246, 38.414425, 54.265125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498428, 38.646515, 54.091747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686198, 0.331973, -0.647245,
		-0.231655, -0.743730, -0.627057,
		-0.689542, 0.580223, -0.433443,
		41.291565, 38.820583, 53.961716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937336, 38.329140, 53.529354>,  <41.774246, 38.414425, 54.265125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937336, 38.329140, 53.529354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738266, 38.671059, 53.588203>,  <41.618824, 38.876209, 53.623512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738266, 38.671059, 53.588203>,  <41.937336, 38.329140, 53.529354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738266, 38.671059, 53.588203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560466, 0.446380, -0.697583,
		-0.661964, -0.264711, -0.701236,
		-0.497676, 0.854794, 0.147126,
		41.588963, 38.927498, 53.632339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624432, 38.474632, 52.822041>,  <41.937336, 38.329140, 53.529354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624432, 38.474632, 52.822041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647408, 38.810730, 53.037704>,  <41.661194, 39.012386, 53.167103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647408, 38.810730, 53.037704>,  <41.624432, 38.474632, 52.822041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647408, 38.810730, 53.037704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363345, 0.485423, -0.795201,
		-0.929882, 0.241580, -0.277414,
		0.057441, 0.840240, 0.539163,
		41.664639, 39.062801, 53.199455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321087, 39.106213, 52.319843>,  <41.624432, 38.474632, 52.822041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321087, 39.106213, 52.319843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555473, 39.253616, 52.608524>,  <41.696106, 39.342056, 52.781731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555473, 39.253616, 52.608524>,  <41.321087, 39.106213, 52.319843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555473, 39.253616, 52.608524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493413, 0.544227, -0.678499,
		-0.642800, 0.753671, 0.137071,
		0.585963, 0.368506, 0.721700,
		41.731262, 39.364170, 52.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412655, 39.835510, 52.220196>,  <41.321087, 39.106213, 52.319843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412655, 39.835510, 52.220196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714897, 39.764923, 52.472519>,  <41.896244, 39.722569, 52.623913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714897, 39.764923, 52.472519>,  <41.412655, 39.835510, 52.220196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714897, 39.764923, 52.472519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592093, 0.595895, -0.542526,
		-0.280155, 0.783433, 0.554749,
		0.755605, -0.176472, 0.630808,
		41.941578, 39.711983, 52.661762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692310, 40.523567, 52.406979>,  <41.412655, 39.835510, 52.220196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692310, 40.523567, 52.406979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976063, 40.249901, 52.474739>,  <42.146317, 40.085701, 52.515396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976063, 40.249901, 52.474739>,  <41.692310, 40.523567, 52.406979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976063, 40.249901, 52.474739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647223, 0.537156, -0.540894,
		0.279064, 0.493342, 0.823855,
		0.709385, -0.684161, 0.169402,
		42.188877, 40.044651, 52.525558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668064, 41.129307, 52.949181>,  <41.692310, 40.523567, 52.406979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668064, 41.129307, 52.949181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634865, 41.522499, 53.014732>,  <41.614944, 41.758415, 53.054062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634865, 41.522499, 53.014732>,  <41.668064, 41.129307, 52.949181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634865, 41.522499, 53.014732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881405, -0.149146, 0.448198,
		0.465012, -0.107245, 0.878784,
		-0.083000, 0.982982, 0.163881,
		41.609966, 41.817394, 53.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607716, 41.254414, 53.679417>,  <41.668064, 41.129307, 52.949181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607716, 41.254414, 53.679417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442123, 41.565086, 53.489513>,  <41.342770, 41.751488, 53.375572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442123, 41.565086, 53.489513>,  <41.607716, 41.254414, 53.679417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442123, 41.565086, 53.489513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766174, -0.015679, 0.642441,
		0.491526, 0.629703, 0.601561,
		-0.413979, 0.776678, -0.474756,
		41.317928, 41.798088, 53.347088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371830, 41.647003, 54.257877>,  <41.607716, 41.254414, 53.679417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371830, 41.647003, 54.257877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170029, 41.812172, 53.954567>,  <41.048950, 41.911274, 53.772583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170029, 41.812172, 53.954567>,  <41.371830, 41.647003, 54.257877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170029, 41.812172, 53.954567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856862, -0.131473, 0.498500,
		0.106149, 0.901227, 0.420144,
		-0.504500, 0.412921, -0.758272,
		41.018681, 41.936047, 53.727085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939568, 42.135109, 54.580551>,  <41.371830, 41.647003, 54.257877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939568, 42.135109, 54.580551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757797, 42.044449, 54.235962>,  <40.648735, 41.990051, 54.029209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757797, 42.044449, 54.235962>,  <40.939568, 42.135109, 54.580551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757797, 42.044449, 54.235962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831076, -0.240240, 0.501595,
		-0.320646, 0.943883, -0.079192,
		-0.454422, -0.226649, -0.861470,
		40.621471, 41.976456, 53.977520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259270, 42.321499, 54.768276>,  <40.939568, 42.135109, 54.580551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259270, 42.321499, 54.768276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235676, 42.092812, 54.440945>,  <40.221519, 41.955601, 54.244545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235676, 42.092812, 54.440945>,  <40.259270, 42.321499, 54.768276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235676, 42.092812, 54.440945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864526, -0.380609, 0.328226,
		-0.499115, 0.726827, -0.471812,
		-0.058988, -0.571716, -0.818329,
		40.217979, 41.921295, 54.195446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615646, 42.425098, 54.495377>,  <40.259270, 42.321499, 54.768276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615646, 42.425098, 54.495377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724579, 42.063110, 54.364613>,  <39.789936, 41.845917, 54.286156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724579, 42.063110, 54.364613>,  <39.615646, 42.425098, 54.495377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724579, 42.063110, 54.364613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931319, -0.333298, 0.146825,
		-0.241831, 0.264473, -0.933580,
		0.272329, -0.904968, -0.326910,
		39.806278, 41.791618, 54.266541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013588, 42.141132, 54.125275>,  <39.615646, 42.425098, 54.495377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013588, 42.141132, 54.125275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255127, 41.829163, 54.191109>,  <39.400051, 41.641979, 54.230610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255127, 41.829163, 54.191109>,  <39.013588, 42.141132, 54.125275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255127, 41.829163, 54.191109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796852, -0.595818, 0.100143,
		0.019958, -0.191619, -0.981266,
		0.603845, -0.779925, 0.164583,
		39.436279, 41.595184, 54.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633865, 41.572254, 53.816299>,  <39.013588, 42.141132, 54.125275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633865, 41.572254, 53.816299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891434, 41.393044, 54.064377>,  <39.045975, 41.285515, 54.213223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891434, 41.393044, 54.064377>,  <38.633865, 41.572254, 53.816299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891434, 41.393044, 54.064377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761307, -0.455768, 0.461180,
		0.076043, -0.769120, -0.634564,
		0.643917, -0.448029, 0.620194,
		39.084610, 41.258636, 54.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443302, 40.809685, 53.755913>,  <38.633865, 41.572254, 53.816299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443302, 40.809685, 53.755913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634293, 40.872910, 54.101639>,  <38.748886, 40.910843, 54.309074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634293, 40.872910, 54.101639>,  <38.443302, 40.809685, 53.755913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634293, 40.872910, 54.101639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683367, -0.551517, 0.478371,
		0.552294, -0.819052, -0.155323,
		0.477474, 0.158059, 0.864312,
		38.777534, 40.920326, 54.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404514, 40.126270, 54.089005>,  <38.443302, 40.809685, 53.755913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404514, 40.126270, 54.089005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488968, 40.399933, 54.368248>,  <38.539642, 40.564129, 54.535793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488968, 40.399933, 54.368248>,  <38.404514, 40.126270, 54.089005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488968, 40.399933, 54.368248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476257, -0.551691, 0.684702,
		0.853581, -0.477044, 0.209351,
		0.211136, 0.684154, 0.698108,
		38.552307, 40.605179, 54.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758205, 39.808735, 54.661247>,  <38.404514, 40.126270, 54.089005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758205, 39.808735, 54.661247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585060, 40.138428, 54.807274>,  <38.481174, 40.336243, 54.894890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585060, 40.138428, 54.807274>,  <38.758205, 39.808735, 54.661247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585060, 40.138428, 54.807274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422193, -0.543167, 0.725757,
		0.796484, 0.160023, 0.583101,
		-0.432859, 0.824234, 0.365063,
		38.455204, 40.385696, 54.916794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614410, 39.551243, 55.441765>,  <38.758205, 39.808735, 54.661247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614410, 39.551243, 55.441765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416039, 39.891533, 55.372116>,  <38.297016, 40.095707, 55.330326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416039, 39.891533, 55.372116>,  <38.614410, 39.551243, 55.441765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416039, 39.891533, 55.372116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637822, -0.220798, 0.737856,
		0.589265, 0.476989, 0.652111,
		-0.495934, 0.850723, -0.174125,
		38.267258, 40.146751, 55.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469688, 39.860626, 56.140198>,  <38.614410, 39.551243, 55.441765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469688, 39.860626, 56.140198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221367, 40.034340, 55.879124>,  <38.072372, 40.138569, 55.722481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221367, 40.034340, 55.879124>,  <38.469688, 39.860626, 56.140198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221367, 40.034340, 55.879124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778038, -0.239128, 0.580926,
		0.096214, 0.868454, 0.486344,
		-0.620806, 0.434287, -0.652682,
		38.035126, 40.164627, 55.683319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933098, 40.309555, 56.586769>,  <38.469688, 39.860626, 56.140198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933098, 40.309555, 56.586769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759686, 40.240234, 56.233040>,  <37.655640, 40.198643, 56.020802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759686, 40.240234, 56.233040>,  <37.933098, 40.309555, 56.586769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759686, 40.240234, 56.233040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866082, -0.190930, 0.462004,
		-0.248907, 0.966185, -0.067316,
		-0.433529, -0.173297, -0.884320,
		37.629627, 40.188244, 55.967743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.059959, 37.287052, 49.728188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166916, 37.481178, 50.061169>,  <35.231091, 37.597656, 50.260956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166916, 37.481178, 50.061169>,  <35.059959, 37.287052, 49.728188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166916, 37.481178, 50.061169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820542, 0.338246, -0.460761,
		-0.505188, 0.806260, -0.307782,
		0.267387, 0.485319, 0.832448,
		35.247131, 37.626774, 50.310902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293907, 37.900784, 49.449245>,  <35.059959, 37.287052, 49.728188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293907, 37.900784, 49.449245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461739, 37.860558, 49.810097>,  <35.562439, 37.836422, 50.026608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461739, 37.860558, 49.810097>,  <35.293907, 37.900784, 49.449245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461739, 37.860558, 49.810097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890892, 0.236094, -0.388036,
		-0.173964, 0.966512, 0.188655,
		0.419582, -0.100567, 0.902129,
		35.587612, 37.830387, 50.080734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688793, 38.567097, 49.607052>,  <35.293907, 37.900784, 49.449245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688793, 38.567097, 49.607052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834084, 38.280594, 49.845390>,  <35.921257, 38.108692, 49.988396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834084, 38.280594, 49.845390>,  <35.688793, 38.567097, 49.607052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834084, 38.280594, 49.845390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923996, 0.194853, -0.329034,
		0.119571, 0.670077, 0.732598,
		0.363227, -0.716261, 0.595850,
		35.943050, 38.065716, 50.024147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152531, 38.944920, 50.010662>,  <35.688793, 38.567097, 49.607052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152531, 38.944920, 50.010662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258755, 38.559578, 49.995529>,  <36.322487, 38.328373, 49.986450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258755, 38.559578, 49.995529>,  <36.152531, 38.944920, 50.010662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258755, 38.559578, 49.995529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951412, 0.268204, -0.151269,
		0.155871, 0.004180, 0.987769,
		0.265556, -0.963353, -0.037828,
		36.338421, 38.270573, 49.984180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705070, 38.979942, 50.346455>,  <36.152531, 38.944920, 50.010662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705070, 38.979942, 50.346455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.742462, 38.630867, 50.154755>,  <36.764896, 38.421421, 50.039734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.742462, 38.630867, 50.154755>,  <36.705070, 38.979942, 50.346455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742462, 38.630867, 50.154755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947668, 0.225580, -0.225920,
		0.305266, -0.433049, 0.848105,
		0.093481, -0.872687, -0.479248,
		36.770508, 38.369061, 50.010979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262310, 38.680229, 50.592979>,  <36.705070, 38.979942, 50.346455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262310, 38.680229, 50.592979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183933, 38.524910, 50.232796>,  <37.136906, 38.431717, 50.016685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183933, 38.524910, 50.232796>,  <37.262310, 38.680229, 50.592979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183933, 38.524910, 50.232796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917181, 0.252335, -0.308394,
		0.346967, -0.886313, 0.306698,
		-0.195943, -0.388300, -0.900461,
		37.125149, 38.408421, 49.962658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937386, 38.559784, 50.423393>,  <37.262310, 38.680229, 50.592979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937386, 38.559784, 50.423393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732044, 38.544891, 50.080444>,  <37.608841, 38.535954, 49.874676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732044, 38.544891, 50.080444>,  <37.937386, 38.559784, 50.423393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732044, 38.544891, 50.080444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835540, 0.206267, -0.509240,
		0.195805, -0.977787, -0.074783,
		-0.513354, -0.037227, -0.857369,
		37.578037, 38.533722, 49.823235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363625, 38.318115, 49.899147>,  <37.937386, 38.559784, 50.423393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363625, 38.318115, 49.899147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078503, 38.496086, 49.682278>,  <37.907429, 38.602867, 49.552158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078503, 38.496086, 49.682278>,  <38.363625, 38.318115, 49.899147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078503, 38.496086, 49.682278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701219, 0.436623, -0.563606,
		-0.014037, -0.781923, -0.623217,
		-0.712807, 0.444923, -0.542170,
		37.864662, 38.629562, 49.519627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570026, 38.228481, 49.257633>,  <38.363625, 38.318115, 49.899147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570026, 38.228481, 49.257633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306763, 38.528206, 49.228333>,  <38.148804, 38.708042, 49.210751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306763, 38.528206, 49.228333>,  <38.570026, 38.228481, 49.257633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306763, 38.528206, 49.228333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609593, 0.473266, -0.635937,
		-0.441847, -0.463199, -0.768256,
		-0.658155, 0.749310, -0.073252,
		38.109318, 38.752998, 49.206356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588314, 38.425163, 48.522091>,  <38.570026, 38.228481, 49.257633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588314, 38.425163, 48.522091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407661, 38.716682, 48.727959>,  <38.299271, 38.891594, 48.851479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407661, 38.716682, 48.727959>,  <38.588314, 38.425163, 48.522091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407661, 38.716682, 48.727959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317435, 0.670362, -0.670709,
		-0.833827, -0.139535, -0.534099,
		-0.451627, 0.728797, 0.514673,
		38.272175, 38.935322, 48.882362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214664, 38.700539, 48.067162>,  <38.588314, 38.425163, 48.522091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214664, 38.700539, 48.067162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248550, 38.967804, 48.362831>,  <38.268883, 39.128162, 48.540234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248550, 38.967804, 48.362831>,  <38.214664, 38.700539, 48.067162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248550, 38.967804, 48.362831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387805, 0.661237, -0.642163,
		-0.917840, 0.341057, -0.203100,
		0.084717, 0.668166, 0.739173,
		38.273964, 39.168255, 48.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064716, 39.306545, 47.766766>,  <38.214664, 38.700539, 48.067162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064716, 39.306545, 47.766766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271183, 39.397881, 48.096962>,  <38.395061, 39.452682, 48.295082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271183, 39.397881, 48.096962>,  <38.064716, 39.306545, 47.766766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271183, 39.397881, 48.096962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377262, 0.804663, -0.458466,
		-0.768927, 0.548071, 0.329195,
		0.516163, 0.228334, 0.825493,
		38.426033, 39.466381, 48.344608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148388, 39.980915, 47.775070>,  <38.064716, 39.306545, 47.766766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148388, 39.980915, 47.775070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436794, 39.862160, 48.025509>,  <38.609837, 39.790905, 48.175770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436794, 39.862160, 48.025509>,  <38.148388, 39.980915, 47.775070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436794, 39.862160, 48.025509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580159, 0.752716, -0.311183,
		-0.378884, 0.587602, 0.714962,
		0.721015, -0.296889, 0.626095,
		38.653099, 39.773094, 48.213337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547409, 40.658630, 47.996178>,  <38.148388, 39.980915, 47.775070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547409, 40.658630, 47.996178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803112, 40.363335, 48.082291>,  <38.956535, 40.186157, 48.133957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803112, 40.363335, 48.082291>,  <38.547409, 40.658630, 47.996178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803112, 40.363335, 48.082291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760090, 0.564119, -0.322541,
		0.116669, 0.369821, 0.921749,
		0.639258, -0.738243, 0.215282,
		38.994888, 40.141861, 48.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621471, 40.961246, 48.789364>,  <38.547409, 40.658630, 47.996178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621471, 40.961246, 48.789364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522896, 41.335922, 48.888863>,  <38.463749, 41.560730, 48.948563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522896, 41.335922, 48.888863>,  <38.621471, 40.961246, 48.789364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522896, 41.335922, 48.888863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780100, -0.344020, 0.522585,
		0.575075, -0.065262, 0.815493,
		-0.246441, 0.936692, 0.248748,
		38.448963, 41.616928, 48.963486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489796, 40.906204, 49.527859>,  <38.621471, 40.961246, 48.789364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489796, 40.906204, 49.527859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308338, 41.236603, 49.394028>,  <38.199463, 41.434841, 49.313728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308338, 41.236603, 49.394028>,  <38.489796, 40.906204, 49.527859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308338, 41.236603, 49.394028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798034, -0.209403, 0.565059,
		0.396673, 0.523342, 0.754165,
		-0.453643, 0.825993, -0.334580,
		38.172245, 41.484402, 49.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225433, 41.246342, 50.131950>,  <38.489796, 40.906204, 49.527859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225433, 41.246342, 50.131950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023964, 41.382027, 49.814144>,  <37.903084, 41.463436, 49.623459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023964, 41.382027, 49.814144>,  <38.225433, 41.246342, 50.131950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023964, 41.382027, 49.814144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862493, -0.145054, 0.484836,
		0.049213, 0.929461, 0.365624,
		-0.503671, 0.339208, -0.794514,
		37.872864, 41.483788, 49.575790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649963, 41.715153, 50.412411>,  <38.225433, 41.246342, 50.131950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649963, 41.715153, 50.412411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538288, 41.643600, 50.035042>,  <37.471283, 41.600670, 49.808620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538288, 41.643600, 50.035042>,  <37.649963, 41.715153, 50.412411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538288, 41.643600, 50.035042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916125, -0.244740, 0.317517,
		-0.287691, 0.952946, -0.095545,
		-0.279192, -0.178878, -0.943427,
		37.454529, 41.589935, 49.752014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061325, 42.086330, 50.248295>,  <37.649963, 41.715153, 50.412411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061325, 42.086330, 50.248295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032059, 41.793335, 49.977558>,  <37.014500, 41.617538, 49.815117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032059, 41.793335, 49.977558>,  <37.061325, 42.086330, 50.248295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032059, 41.793335, 49.977558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943169, -0.169762, 0.285680,
		-0.324158, 0.659275, -0.678438,
		-0.073169, -0.732487, -0.676838,
		37.010109, 41.573589, 49.774506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379913, 42.164253, 50.023705>,  <37.061325, 42.086330, 50.248295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379913, 42.164253, 50.023705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489098, 41.791222, 49.929226>,  <36.554607, 41.567402, 49.872540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489098, 41.791222, 49.929226>,  <36.379913, 42.164253, 50.023705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489098, 41.791222, 49.929226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938335, -0.312242, 0.148430,
		-0.212174, 0.181120, -0.960301,
		0.272963, -0.932577, -0.236201,
		36.570988, 41.511448, 49.858364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875053, 41.974297, 49.579758>,  <36.379913, 42.164253, 50.023705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875053, 41.974297, 49.579758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045311, 41.641342, 49.721725>,  <36.147465, 41.441570, 49.806908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045311, 41.641342, 49.721725>,  <35.875053, 41.974297, 49.579758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045311, 41.641342, 49.721725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904575, -0.401798, 0.142490,
		0.024000, -0.381701, -0.923974,
		0.425639, -0.832384, 0.354920,
		36.173004, 41.391628, 49.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565552, 41.483475, 49.187691>,  <35.875053, 41.974297, 49.579758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565552, 41.483475, 49.187691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716305, 41.298882, 49.508934>,  <35.806759, 41.188126, 49.701679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716305, 41.298882, 49.508934>,  <35.565552, 41.483475, 49.187691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716305, 41.298882, 49.508934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909943, -0.346491, 0.227920,
		0.173090, -0.816686, -0.550512,
		0.376887, -0.461484, 0.803112,
		35.829372, 41.160435, 49.749866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228859, 40.812592, 49.176994>,  <35.565552, 41.483475, 49.187691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228859, 40.812592, 49.176994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356323, 40.855614, 49.553692>,  <35.432804, 40.881428, 49.779713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356323, 40.855614, 49.553692>,  <35.228859, 40.812592, 49.176994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356323, 40.855614, 49.553692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747671, -0.582169, 0.319480,
		0.582617, -0.805922, -0.105100,
		0.318662, 0.107554, 0.941746,
		35.451923, 40.887878, 49.836216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203209, 40.176311, 49.448151>,  <35.228859, 40.812592, 49.176994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203209, 40.176311, 49.448151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199333, 40.420998, 49.764557>,  <35.197006, 40.567810, 49.954399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199333, 40.420998, 49.764557>,  <35.203209, 40.176311, 49.448151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199333, 40.420998, 49.764557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816342, -0.461685, 0.347034,
		0.577488, -0.642377, 0.503845,
		-0.009691, 0.611718, 0.791017,
		35.196426, 40.604511, 50.001862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278290, 39.736107, 49.981384>,  <35.203209, 40.176311, 49.448151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278290, 39.736107, 49.981384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135468, 40.057144, 50.172531>,  <35.049774, 40.249767, 50.287220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135468, 40.057144, 50.172531>,  <35.278290, 39.736107, 49.981384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135468, 40.057144, 50.172531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580590, -0.591453, 0.559552,
		0.731726, -0.077649, 0.677161,
		-0.357060, 0.802592, 0.477864,
		35.028351, 40.297920, 50.315891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105068, 39.507275, 50.625156>,  <35.278290, 39.736107, 49.981384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105068, 39.507275, 50.625156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894539, 39.847351, 50.620045>,  <34.768219, 40.051395, 50.616978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894539, 39.847351, 50.620045>,  <35.105068, 39.507275, 50.625156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894539, 39.847351, 50.620045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648023, -0.391348, 0.653386,
		0.550498, 0.352178, 0.756917,
		-0.526326, 0.850187, -0.012784,
		34.736641, 40.102406, 50.616211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913975, 39.796440, 51.359512>,  <35.105068, 39.507275, 50.625156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913975, 39.796440, 51.359512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646835, 39.889534, 51.076721>,  <34.486553, 39.945389, 50.907047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646835, 39.889534, 51.076721>,  <34.913975, 39.796440, 51.359512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646835, 39.889534, 51.076721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727325, -0.405759, 0.553496,
		-0.158046, 0.883852, 0.440257,
		-0.667848, 0.232732, -0.706976,
		34.446480, 39.959354, 50.864628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339455, 40.079220, 51.729633>,  <34.913975, 39.796440, 51.359512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339455, 40.079220, 51.729633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142319, 40.039024, 51.383915>,  <34.024036, 40.014908, 51.176483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142319, 40.039024, 51.383915>,  <34.339455, 40.079220, 51.729633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142319, 40.039024, 51.383915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840640, -0.201380, 0.502763,
		-0.224577, 0.974345, 0.014769,
		-0.492839, -0.100493, -0.864298,
		33.994469, 40.008877, 51.124626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374199, 40.707127, 52.137177>,  <34.339455, 40.079220, 51.729633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374199, 40.707127, 52.137177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.479572, 40.764786, 52.518715>,  <34.542797, 40.799381, 52.747639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.479572, 40.764786, 52.518715>,  <34.374199, 40.707127, 52.137177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479572, 40.764786, 52.518715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883995, 0.359787, -0.298508,
		-0.386210, 0.921833, -0.032644,
		0.263430, 0.144144, 0.953849,
		34.558601, 40.808029, 52.804871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472424, 41.448456, 52.213737>,  <34.374199, 40.707127, 52.137177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472424, 41.448456, 52.213737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668514, 41.258492, 52.506077>,  <34.786171, 41.144512, 52.681480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668514, 41.258492, 52.506077>,  <34.472424, 41.448456, 52.213737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668514, 41.258492, 52.506077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819459, 0.536787, -0.200863,
		-0.296917, 0.697368, 0.652318,
		0.490231, -0.474909, 0.730846,
		34.815582, 41.116020, 52.725330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731762, 41.937855, 52.555763>,  <34.472424, 41.448456, 52.213737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731762, 41.937855, 52.555763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961136, 41.625549, 52.655022>,  <35.098759, 41.438164, 52.714577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961136, 41.625549, 52.655022>,  <34.731762, 41.937855, 52.555763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961136, 41.625549, 52.655022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813087, 0.579471, -0.055702,
		-0.100302, 0.233704, 0.967120,
		0.573436, -0.780766, 0.248144,
		35.133167, 41.391319, 52.729465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295383, 42.231361, 52.895473>,  <34.731762, 41.937855, 52.555763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295383, 42.231361, 52.895473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425079, 41.859795, 52.823944>,  <35.502895, 41.636852, 52.781029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425079, 41.859795, 52.823944>,  <35.295383, 42.231361, 52.895473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425079, 41.859795, 52.823944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941364, 0.335483, -0.035852,
		0.093294, -0.156710, 0.983229,
		0.324238, -0.928920, -0.178820,
		35.522350, 41.581120, 52.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817181, 42.141541, 53.279594>,  <35.295383, 42.231361, 52.895473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817181, 42.141541, 53.279594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892990, 41.871483, 52.994423>,  <35.938477, 41.709450, 52.823318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892990, 41.871483, 52.994423>,  <35.817181, 42.141541, 53.279594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892990, 41.871483, 52.994423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963651, 0.267145, 0.003193,
		0.188299, -0.687618, 0.701231,
		0.189526, -0.675141, -0.712927,
		35.949848, 41.668941, 52.780544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410381, 41.922764, 53.384487>,  <35.817181, 42.141541, 53.279594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410381, 41.922764, 53.384487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.380363, 41.819046, 52.999336>,  <36.362354, 41.756817, 52.768246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.380363, 41.819046, 52.999336>,  <36.410381, 41.922764, 53.384487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380363, 41.819046, 52.999336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980608, 0.156121, -0.118467,
		0.181044, -0.953096, 0.242552,
		-0.075043, -0.259296, -0.962878,
		36.357849, 41.741257, 52.710472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977924, 41.495228, 53.312778>,  <36.410381, 41.922764, 53.384487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977924, 41.495228, 53.312778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883060, 41.628639, 52.947811>,  <36.826141, 41.708687, 52.728828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883060, 41.628639, 52.947811>,  <36.977924, 41.495228, 53.312778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883060, 41.628639, 52.947811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959703, 0.226182, -0.166767,
		0.150752, -0.915205, -0.373729,
		-0.237156, 0.333528, -0.912423,
		36.811913, 41.728699, 52.674084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591030, 41.263237, 52.929401>,  <36.977924, 41.495228, 53.312778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591030, 41.263237, 52.929401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418915, 41.564949, 52.731041>,  <37.315643, 41.745975, 52.612026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418915, 41.564949, 52.731041>,  <37.591030, 41.263237, 52.929401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418915, 41.564949, 52.731041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899055, 0.407351, -0.160516,
		0.080931, -0.514908, -0.853417,
		-0.430291, 0.754278, -0.495898,
		37.289829, 41.791233, 52.582272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979603, 41.498653, 52.397263>,  <37.591030, 41.263237, 52.929401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979603, 41.498653, 52.397263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766891, 41.824997, 52.488113>,  <37.639267, 42.020805, 52.542622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766891, 41.824997, 52.488113>,  <37.979603, 41.498653, 52.397263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766891, 41.824997, 52.488113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796342, 0.572982, -0.193728,
		-0.288193, 0.077848, -0.954403,
		-0.531774, 0.815862, 0.227123,
		37.607361, 42.069756, 52.556252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047192, 41.854809, 51.812531>,  <37.979603, 41.498653, 52.397263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047192, 41.854809, 51.812531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935532, 42.123322, 52.087181>,  <37.868534, 42.284428, 52.251972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935532, 42.123322, 52.087181>,  <38.047192, 41.854809, 51.812531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935532, 42.123322, 52.087181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600315, 0.680091, -0.420830,
		-0.749464, 0.294719, -0.592827,
		-0.279150, 0.671280, 0.686628,
		37.851788, 42.324707, 52.293171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924999, 42.376854, 51.382523>,  <38.047192, 41.854809, 51.812531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924999, 42.376854, 51.382523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959003, 42.527985, 51.751308>,  <37.979404, 42.618664, 51.972580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959003, 42.527985, 51.751308>,  <37.924999, 42.376854, 51.382523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959003, 42.527985, 51.751308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670280, 0.662957, -0.333487,
		-0.737224, 0.646324, -0.196894,
		0.085008, 0.377829, 0.921965,
		37.984505, 42.641335, 52.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057034, 43.066067, 51.232769>,  <37.924999, 42.376854, 51.382523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057034, 43.066067, 51.232769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188286, 43.016350, 51.607338>,  <38.267036, 42.986519, 51.832077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188286, 43.016350, 51.607338>,  <38.057034, 43.066067, 51.232769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188286, 43.016350, 51.607338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721910, 0.672339, -0.163727,
		-0.609240, 0.729734, 0.310345,
		0.328134, -0.124292, 0.936418,
		38.286728, 42.979061, 51.888264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227680, 43.813541, 51.455570>,  <38.057034, 43.066067, 51.232769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227680, 43.813541, 51.455570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419754, 43.566513, 51.704739>,  <38.534996, 43.418297, 51.854240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419754, 43.566513, 51.704739>,  <38.227680, 43.813541, 51.455570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419754, 43.566513, 51.704739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819614, 0.568891, -0.067800,
		-0.312503, 0.543111, 0.779341,
		0.480183, -0.617571, 0.622921,
		38.563808, 43.381241, 51.891617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570911, 44.302803, 51.992580>,  <38.227680, 43.813541, 51.455570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570911, 44.302803, 51.992580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754890, 43.947670, 51.986794>,  <38.865276, 43.734592, 51.983322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754890, 43.947670, 51.986794>,  <38.570911, 44.302803, 51.992580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754890, 43.947670, 51.986794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866460, 0.452316, -0.211322,
		0.194161, 0.084663, 0.977310,
		0.459944, -0.887830, -0.014465,
		38.892872, 43.681320, 51.982452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.259148, 40.654881, 56.591747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176010, 40.425575, 56.274719>,  <37.126129, 40.287991, 56.084503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176010, 40.425575, 56.274719>,  <37.259148, 40.654881, 56.591747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176010, 40.425575, 56.274719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882442, -0.239689, 0.404777,
		-0.422015, 0.783529, -0.456054,
		-0.207843, -0.573264, -0.792572,
		37.113659, 40.253597, 56.036949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635067, 40.864857, 56.268150>,  <37.259148, 40.654881, 56.591747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635067, 40.864857, 56.268150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689606, 40.489670, 56.140633>,  <36.722328, 40.264557, 56.064121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689606, 40.489670, 56.140633>,  <36.635067, 40.864857, 56.268150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689606, 40.489670, 56.140633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936171, -0.227246, 0.268220,
		-0.324025, 0.261872, -0.909082,
		0.136346, -0.937967, -0.318790,
		36.730511, 40.208279, 56.044994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063229, 40.674183, 56.023151>,  <36.635067, 40.864857, 56.268150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063229, 40.674183, 56.023151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220131, 40.307793, 56.056908>,  <36.314274, 40.087959, 56.077160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220131, 40.307793, 56.056908>,  <36.063229, 40.674183, 56.023151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220131, 40.307793, 56.056908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909149, -0.372100, 0.187053,
		-0.139934, -0.150097, -0.978718,
		0.392257, -0.915976, 0.084391,
		36.337807, 40.033001, 56.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672050, 40.170448, 55.580044>,  <36.063229, 40.674183, 56.023151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672050, 40.170448, 55.580044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861362, 39.962311, 55.864368>,  <35.974949, 39.837429, 56.034962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861362, 39.962311, 55.864368>,  <35.672050, 40.170448, 55.580044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861362, 39.962311, 55.864368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769348, -0.637185, 0.045817,
		0.429076, -0.568544, -0.701891,
		0.473284, -0.520340, 0.710809,
		36.003349, 39.806210, 56.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549244, 39.500805, 55.348431>,  <35.672050, 40.170448, 55.580044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549244, 39.500805, 55.348431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638237, 39.440277, 55.733681>,  <35.691635, 39.403961, 55.964828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638237, 39.440277, 55.733681>,  <35.549244, 39.500805, 55.348431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638237, 39.440277, 55.733681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785908, -0.612428, 0.085326,
		0.576931, -0.775908, -0.255182,
		0.222486, -0.151323, 0.963121,
		35.704983, 39.394882, 56.022617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386768, 38.858284, 55.575615>,  <35.549244, 39.500805, 55.348431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386768, 38.858284, 55.575615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406349, 39.039352, 55.931747>,  <35.418098, 39.147995, 56.145428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406349, 39.039352, 55.931747>,  <35.386768, 38.858284, 55.575615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406349, 39.039352, 55.931747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821961, -0.488162, 0.293392,
		0.567437, -0.746180, 0.348184,
		0.048954, 0.452675, 0.890331,
		35.421036, 39.175156, 56.198845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344414, 38.339508, 56.037205>,  <35.386768, 38.858284, 55.575615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344414, 38.339508, 56.037205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238480, 38.671577, 56.233437>,  <35.174919, 38.870819, 56.351177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238480, 38.671577, 56.233437>,  <35.344414, 38.339508, 56.037205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238480, 38.671577, 56.233437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677236, -0.522286, 0.518236,
		0.686452, -0.194995, 0.700543,
		-0.264831, 0.830177, 0.490582,
		35.159031, 38.920631, 56.380611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366478, 38.127998, 56.681488>,  <35.344414, 38.339508, 56.037205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366478, 38.127998, 56.681488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.152672, 38.464622, 56.712646>,  <35.024387, 38.666595, 56.731342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.152672, 38.464622, 56.712646>,  <35.366478, 38.127998, 56.681488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152672, 38.464622, 56.712646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685848, -0.485778, 0.541879,
		0.493866, 0.236216, 0.836839,
		-0.534518, 0.841559, 0.077901,
		34.992317, 38.717091, 56.736015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153446, 38.128227, 57.322575>,  <35.366478, 38.127998, 56.681488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153446, 38.128227, 57.322575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914536, 38.383682, 57.128506>,  <34.771187, 38.536957, 57.012062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914536, 38.383682, 57.128506>,  <35.153446, 38.128227, 57.322575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914536, 38.383682, 57.128506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793019, -0.379815, 0.476300,
		0.119908, 0.669237, 0.733310,
		-0.597280, 0.638641, -0.485175,
		34.735352, 38.575275, 56.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772053, 38.509113, 57.863068>,  <35.153446, 38.128227, 57.322575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772053, 38.509113, 57.863068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545738, 38.532310, 57.534065>,  <34.409950, 38.546230, 57.336662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545738, 38.532310, 57.534065>,  <34.772053, 38.509113, 57.863068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545738, 38.532310, 57.534065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744377, -0.464993, 0.479254,
		-0.354666, 0.883412, 0.306258,
		-0.565787, 0.057997, -0.822509,
		34.376003, 38.549709, 57.287312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180912, 38.591831, 58.068611>,  <34.772053, 38.509113, 57.863068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180912, 38.591831, 58.068611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078056, 38.471832, 57.701160>,  <34.016342, 38.399834, 57.480690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078056, 38.471832, 57.701160>,  <34.180912, 38.591831, 58.068611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078056, 38.471832, 57.701160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697248, -0.600601, 0.391310,
		-0.669124, 0.741132, -0.054739,
		-0.257136, -0.300002, -0.918629,
		34.000916, 38.381832, 57.425571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434139, 38.650272, 58.025642>,  <34.180912, 38.591831, 58.068611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434139, 38.650272, 58.025642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539474, 38.398811, 57.732944>,  <33.602676, 38.247932, 57.557327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539474, 38.398811, 57.732944>,  <33.434139, 38.650272, 58.025642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539474, 38.398811, 57.732944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766842, -0.596631, 0.236612,
		-0.585328, 0.498823, -0.639193,
		0.263335, -0.628655, -0.731743,
		33.618477, 38.210213, 57.513420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753864, 38.319485, 57.890564>,  <33.434139, 38.650272, 58.025642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753864, 38.319485, 57.890564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023132, 38.088783, 57.705437>,  <33.184692, 37.950363, 57.594360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023132, 38.088783, 57.705437>,  <32.753864, 38.319485, 57.890564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023132, 38.088783, 57.705437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579669, -0.800164, 0.154018,
		-0.459161, 0.164602, -0.872970,
		0.673168, -0.576753, -0.462818,
		33.225082, 37.915756, 57.566589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628323, 37.971928, 57.168171>,  <32.753864, 38.319485, 57.890564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628323, 37.971928, 57.168171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814342, 37.792091, 57.473221>,  <32.925953, 37.684189, 57.656250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814342, 37.792091, 57.473221>,  <32.628323, 37.971928, 57.168171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814342, 37.792091, 57.473221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815879, -0.552021, 0.172091,
		0.343615, -0.702240, -0.623529,
		0.465050, -0.449591, 0.762625,
		32.953857, 37.657215, 57.702007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107666, 38.291985, 56.922039>,  <32.628323, 37.971928, 57.168171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107666, 38.291985, 56.922039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742821, 38.302032, 56.758369>,  <31.523914, 38.308060, 56.660168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742821, 38.302032, 56.758369>,  <32.107666, 38.291985, 56.922039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742821, 38.302032, 56.758369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353509, 0.553578, -0.754044,
		0.207572, -0.832419, -0.513802,
		-0.912110, 0.025116, -0.409175,
		31.469187, 38.309566, 56.635616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008499, 38.126896, 56.108837>,  <32.107666, 38.291985, 56.922039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008499, 38.126896, 56.108837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687712, 38.336281, 56.223961>,  <31.495239, 38.461910, 56.293034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687712, 38.336281, 56.223961>,  <32.008499, 38.126896, 56.108837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687712, 38.336281, 56.223961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158593, 0.651076, -0.742258,
		-0.575930, -0.549623, -0.605160,
		-0.801968, 0.523463, 0.287808,
		31.447121, 38.493320, 56.310303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666533, 38.188797, 55.535763>,  <32.008499, 38.126896, 56.108837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666533, 38.188797, 55.535763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532404, 38.485519, 55.768066>,  <31.451927, 38.663551, 55.907448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532404, 38.485519, 55.768066>,  <31.666533, 38.188797, 55.535763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532404, 38.485519, 55.768066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151785, 0.650937, -0.743802,
		-0.929796, -0.161262, -0.330868,
		-0.335321, 0.741805, 0.580762,
		31.431808, 38.708061, 55.942295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088301, 38.597946, 55.149956>,  <31.666533, 38.188797, 55.535763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088301, 38.597946, 55.149956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241774, 38.852547, 55.417583>,  <31.333858, 39.005306, 55.578159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241774, 38.852547, 55.417583>,  <31.088301, 38.597946, 55.149956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241774, 38.852547, 55.417583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276289, 0.612206, -0.740856,
		-0.881164, 0.469110, 0.059034,
		0.383684, 0.636505, 0.669065,
		31.356878, 39.043499, 55.618301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882605, 39.280376, 54.940701>,  <31.088301, 38.597946, 55.149956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882605, 39.280376, 54.940701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194181, 39.353966, 55.180500>,  <31.381128, 39.398121, 55.324379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194181, 39.353966, 55.180500>,  <30.882605, 39.280376, 54.940701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194181, 39.353966, 55.180500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368233, 0.639629, -0.674744,
		-0.507593, 0.746343, 0.430489,
		0.778944, 0.183975, 0.599500,
		31.427864, 39.409157, 55.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046593, 40.113831, 54.941475>,  <30.882605, 39.280376, 54.940701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046593, 40.113831, 54.941475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.373186, 39.936371, 55.089275>,  <31.569141, 39.829895, 55.177956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.373186, 39.936371, 55.089275>,  <31.046593, 40.113831, 54.941475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373186, 39.936371, 55.089275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570672, 0.522889, -0.633183,
		0.087702, 0.727848, 0.680107,
		0.816482, -0.443650, 0.369504,
		31.618130, 39.803276, 55.200127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416773, 40.694290, 55.079468>,  <31.046593, 40.113831, 54.941475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416773, 40.694290, 55.079468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647379, 40.371017, 55.031338>,  <31.785742, 40.177055, 55.002460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647379, 40.371017, 55.031338>,  <31.416773, 40.694290, 55.079468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647379, 40.371017, 55.031338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622169, 0.529658, -0.576513,
		0.529658, 0.257505, 0.808179,
		0.576513, -0.808179, -0.120326,
		31.820333, 40.128563, 54.995239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046249, 40.948494, 55.261246>,  <31.416773, 40.694290, 55.079468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046249, 40.948494, 55.261246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105782, 40.618332, 55.043415>,  <32.141502, 40.420235, 54.912716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105782, 40.618332, 55.043415>,  <32.046249, 40.948494, 55.261246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105782, 40.618332, 55.043415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704160, 0.475107, -0.527666,
		0.694268, -0.304935, 0.651925,
		0.148830, -0.825401, -0.544575,
		32.150429, 40.370712, 54.880043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696362, 40.961250, 55.115005>,  <32.046249, 40.948494, 55.261246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696362, 40.961250, 55.115005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.628811, 40.677956, 54.840816>,  <32.588280, 40.507977, 54.676304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.628811, 40.677956, 54.840816>,  <32.696362, 40.961250, 55.115005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628811, 40.677956, 54.840816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795138, 0.313076, -0.519363,
		0.582440, -0.632755, 0.510278,
		-0.168874, -0.708240, -0.685476,
		32.578148, 40.465485, 54.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380852, 40.676121, 54.890602>,  <32.696362, 40.961250, 55.115005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380852, 40.676121, 54.890602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153412, 40.556267, 54.584160>,  <33.016949, 40.484356, 54.400295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153412, 40.556267, 54.584160>,  <33.380852, 40.676121, 54.890602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153412, 40.556267, 54.584160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736947, 0.228271, -0.636240,
		0.365519, -0.926343, 0.091020,
		-0.568599, -0.299635, -0.766103,
		32.982834, 40.466377, 54.354328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741390, 40.113354, 54.528599>,  <33.380852, 40.676121, 54.890602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741390, 40.113354, 54.528599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485275, 40.271271, 54.265030>,  <33.331608, 40.366020, 54.106888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485275, 40.271271, 54.265030>,  <33.741390, 40.113354, 54.528599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485275, 40.271271, 54.265030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750473, 0.138599, -0.646205,
		-0.163793, -0.908255, -0.385026,
		-0.640283, 0.394795, -0.658919,
		33.293190, 40.389709, 54.067352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848572, 39.756706, 53.923923>,  <33.741390, 40.113354, 54.528599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848572, 39.756706, 53.923923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685898, 40.111145, 53.834984>,  <33.588295, 40.323807, 53.781620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685898, 40.111145, 53.834984>,  <33.848572, 39.756706, 53.923923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685898, 40.111145, 53.834984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799223, 0.227183, -0.556445,
		-0.442550, -0.404004, -0.800581,
		-0.406685, 0.886097, -0.222350,
		33.563892, 40.376976, 53.768280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951710, 39.783310, 53.136074>,  <33.848572, 39.756706, 53.923923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951710, 39.783310, 53.136074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893425, 40.156822, 53.266811>,  <33.858456, 40.380928, 53.345253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893425, 40.156822, 53.266811>,  <33.951710, 39.783310, 53.136074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893425, 40.156822, 53.266811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743077, 0.321405, -0.586971,
		-0.653150, 0.157345, -0.740701,
		-0.145708, 0.933778, 0.326845,
		33.849712, 40.436954, 53.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014004, 40.161816, 52.469147>,  <33.951710, 39.783310, 53.136074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014004, 40.161816, 52.469147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098774, 40.409782, 52.771351>,  <34.149635, 40.558563, 52.952675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098774, 40.409782, 52.771351>,  <34.014004, 40.161816, 52.469147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098774, 40.409782, 52.771351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796650, 0.338201, -0.500968,
		-0.566072, 0.708044, -0.422181,
		0.211925, 0.619914, 0.755509,
		34.162350, 40.595757, 52.998005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716709, 40.478592, 51.760857>,  <34.014004, 40.161816, 52.469147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716709, 40.478592, 51.760857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642502, 40.230324, 51.456131>,  <33.597977, 40.081364, 51.273296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642502, 40.230324, 51.456131>,  <33.716709, 40.478592, 51.760857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642502, 40.230324, 51.456131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862250, -0.269004, 0.429140,
		-0.471284, 0.736483, -0.485267,
		-0.185516, -0.620669, -0.761810,
		33.586845, 40.044125, 51.227589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027592, 40.516739, 51.642002>,  <33.716709, 40.478592, 51.760857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027592, 40.516739, 51.642002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153160, 40.162262, 51.505695>,  <33.228500, 39.949577, 51.423912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153160, 40.162262, 51.505695>,  <33.027592, 40.516739, 51.642002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153160, 40.162262, 51.505695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802602, -0.439433, 0.403396,
		-0.507229, 0.146866, -0.849205,
		0.313923, -0.886188, -0.340768,
		33.247337, 39.896404, 51.403465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423470, 40.259117, 51.399387>,  <33.027592, 40.516739, 51.642002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423470, 40.259117, 51.399387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.658691, 39.936249, 51.420078>,  <32.799824, 39.742527, 51.432491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.658691, 39.936249, 51.420078>,  <32.423470, 40.259117, 51.399387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658691, 39.936249, 51.420078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723394, -0.496257, 0.480032,
		-0.361795, -0.319705, -0.875724,
		0.588053, -0.807167, 0.051729,
		32.835106, 39.694099, 51.435596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071316, 39.801727, 51.058723>,  <32.423470, 40.259117, 51.399387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071316, 39.801727, 51.058723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329563, 39.612778, 51.298737>,  <32.484512, 39.499409, 51.442745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329563, 39.612778, 51.298737>,  <32.071316, 39.801727, 51.058723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329563, 39.612778, 51.298737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762337, -0.444937, 0.469972,
		0.044973, -0.760849, -0.647369,
		0.645616, -0.472377, 0.600033,
		32.523247, 39.471066, 51.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721809, 39.161770, 51.179810>,  <32.071316, 39.801727, 51.058723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721809, 39.161770, 51.179810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003944, 39.140045, 51.462524>,  <32.173225, 39.127010, 51.632153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003944, 39.140045, 51.462524>,  <31.721809, 39.161770, 51.179810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003944, 39.140045, 51.462524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655614, -0.429138, 0.621298,
		0.269568, -0.901605, -0.338293,
		0.705340, -0.054307, 0.706786,
		32.215546, 39.123753, 51.674561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789978, 38.457737, 51.368942>,  <31.721809, 39.161770, 51.179810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789978, 38.457737, 51.368942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926720, 38.672096, 51.677734>,  <32.008766, 38.800713, 51.863010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926720, 38.672096, 51.677734>,  <31.789978, 38.457737, 51.368942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926720, 38.672096, 51.677734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497390, -0.593798, 0.632461,
		0.797333, -0.600184, 0.063557,
		0.341853, 0.535895, 0.771980,
		32.029274, 38.832867, 51.909328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986107, 37.964642, 51.820271>,  <31.789978, 38.457737, 51.368942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986107, 37.964642, 51.820271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921242, 38.291351, 52.041752>,  <31.882322, 38.487377, 52.174641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921242, 38.291351, 52.041752>,  <31.986107, 37.964642, 51.820271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921242, 38.291351, 52.041752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490829, -0.553553, 0.672805,
		0.856032, -0.162668, 0.490662,
		-0.162164, 0.816773, 0.553701,
		31.872593, 38.536385, 52.207863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731144, 37.627148, 51.744152>,  <31.986107, 37.964642, 51.820271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731144, 37.627148, 51.744152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884312, 37.258583, 51.770596>,  <32.976212, 37.037445, 51.786461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884312, 37.258583, 51.770596>,  <32.731144, 37.627148, 51.744152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884312, 37.258583, 51.770596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772423, 0.280101, -0.570006,
		0.506695, 0.269328, 0.818977,
		0.382915, -0.921415, 0.066109,
		32.999187, 36.982159, 51.790428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332901, 37.639027, 52.093239>,  <32.731144, 37.627148, 51.744152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332901, 37.639027, 52.093239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377792, 37.301735, 51.882954>,  <33.404728, 37.099361, 51.756783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377792, 37.301735, 51.882954>,  <33.332901, 37.639027, 52.093239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377792, 37.301735, 51.882954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825733, 0.373451, -0.422729,
		0.552784, -0.386659, 0.738190,
		0.112226, -0.843226, -0.525715,
		33.411461, 37.048767, 51.725239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955738, 37.451103, 52.322212>,  <33.332901, 37.639027, 52.093239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955738, 37.451103, 52.322212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884125, 37.272758, 51.971405>,  <33.841156, 37.165752, 51.760921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884125, 37.272758, 51.971405>,  <33.955738, 37.451103, 52.322212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884125, 37.272758, 51.971405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867300, 0.349319, -0.354636,
		0.464478, -0.824124, 0.324160,
		-0.179029, -0.445865, -0.877014,
		33.830418, 37.139000, 51.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589302, 37.010712, 52.158932>,  <33.955738, 37.451103, 52.322212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589302, 37.010712, 52.158932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405384, 37.061073, 51.807312>,  <34.295033, 37.091290, 51.596340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405384, 37.061073, 51.807312>,  <34.589302, 37.010712, 52.158932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405384, 37.061073, 51.807312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880221, 0.195546, -0.432404,
		0.117455, -0.972579, -0.200735,
		-0.459800, 0.125903, -0.879052,
		34.267445, 37.098843, 51.543598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057373, 36.838978, 51.722256>,  <34.589302, 37.010712, 52.158932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057373, 36.838978, 51.722256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808952, 37.025795, 51.470490>,  <34.659901, 37.137886, 51.319427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808952, 37.025795, 51.470490>,  <35.057373, 36.838978, 51.722256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808952, 37.025795, 51.470490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783330, 0.396792, -0.478487,
		0.026273, -0.790206, -0.612278,
		-0.621050, 0.467045, -0.629417,
		34.622639, 37.165909, 51.281666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289333, 36.529179, 50.966812>,  <35.057373, 36.838978, 51.722256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289333, 36.529179, 50.966812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096649, 36.879196, 50.947823>,  <34.981037, 37.089207, 50.936428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096649, 36.879196, 50.947823>,  <35.289333, 36.529179, 50.966812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096649, 36.879196, 50.947823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762892, 0.392078, -0.514073,
		-0.431221, -0.283854, -0.856432,
		-0.481710, 0.875044, -0.047478,
		34.952137, 37.141708, 50.933578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375797, 36.749031, 50.299786>,  <35.289333, 36.529179, 50.966812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375797, 36.749031, 50.299786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249916, 37.086693, 50.473389>,  <35.174385, 37.289291, 50.577549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249916, 37.086693, 50.473389>,  <35.375797, 36.749031, 50.299786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249916, 37.086693, 50.473389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586128, 0.532478, -0.610673,
		-0.746602, 0.062201, -0.662357,
		-0.314706, 0.844155, 0.434007,
		35.155506, 37.339939, 50.603592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.954777, 35.278076, 57.706814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746925, 35.598389, 57.587658>,  <34.622215, 35.790577, 57.516163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746925, 35.598389, 57.587658>,  <34.954777, 35.278076, 57.706814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746925, 35.598389, 57.587658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729546, 0.234394, -0.642512,
		-0.444685, -0.551195, -0.706002,
		-0.519632, 0.800777, -0.297891,
		34.591034, 35.838623, 57.498291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106705, 35.352127, 57.036011>,  <34.954777, 35.278076, 57.706814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106705, 35.352127, 57.036011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.017063, 35.725838, 57.146935>,  <34.963280, 35.950066, 57.213490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.017063, 35.725838, 57.146935>,  <35.106705, 35.352127, 57.036011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017063, 35.725838, 57.146935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697991, 0.352453, -0.623367,
		-0.680138, 0.053865, -0.731102,
		-0.224101, 0.934278, 0.277314,
		34.949833, 36.006123, 57.230129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009998, 35.739727, 56.418201>,  <35.106705, 35.352127, 57.036011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009998, 35.739727, 56.418201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.111919, 35.972961, 56.726768>,  <35.173073, 36.112904, 56.911911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.111919, 35.972961, 56.726768>,  <35.009998, 35.739727, 56.418201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111919, 35.972961, 56.726768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770536, 0.359567, -0.526294,
		-0.584251, 0.728508, -0.357669,
		0.254804, 0.583085, 0.771419,
		35.188362, 36.147888, 56.958195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111687, 36.403992, 56.111740>,  <35.009998, 35.739727, 56.418201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111687, 36.403992, 56.111740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298527, 36.438164, 56.463768>,  <35.410629, 36.458668, 56.674984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298527, 36.438164, 56.463768>,  <35.111687, 36.403992, 56.111740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298527, 36.438164, 56.463768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797381, 0.389422, -0.461014,
		-0.382104, 0.917089, 0.113776,
		0.467098, 0.085433, 0.880069,
		35.438656, 36.463795, 56.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374023, 37.106159, 56.148289>,  <35.111687, 36.403992, 56.111740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374023, 37.106159, 56.148289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 36.908142, 56.426422>,  <35.707466, 36.789333, 56.593304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 36.908142, 56.426422>,  <35.374023, 37.106159, 56.148289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582424, 36.908142, 56.426422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850222, 0.372902, -0.371572,
		-0.075346, 0.784777, 0.615181,
		0.521004, -0.495044, 0.695332,
		35.738724, 36.759628, 56.635021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876621, 37.672829, 56.459930>,  <35.374023, 37.106159, 56.148289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876621, 37.672829, 56.459930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060822, 37.339134, 56.581253>,  <36.171341, 37.138916, 56.654045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060822, 37.339134, 56.581253>,  <35.876621, 37.672829, 56.459930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060822, 37.339134, 56.581253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841427, 0.301403, -0.448505,
		0.282742, 0.461744, 0.840744,
		0.460497, -0.834235, 0.303304,
		36.198971, 37.088863, 56.672245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566078, 37.854065, 56.598732>,  <35.876621, 37.672829, 56.459930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566078, 37.854065, 56.598732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636314, 37.466400, 56.529583>,  <36.678455, 37.233799, 56.488094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636314, 37.466400, 56.529583>,  <36.566078, 37.854065, 56.598732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636314, 37.466400, 56.529583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950106, 0.212818, -0.228052,
		0.257809, -0.124198, 0.958180,
		0.175595, -0.969166, -0.172868,
		36.688992, 37.175652, 56.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231899, 37.769264, 56.895050>,  <36.566078, 37.854065, 56.598732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231899, 37.769264, 56.895050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194622, 37.454742, 56.650742>,  <37.172256, 37.266029, 56.504158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194622, 37.454742, 56.650742>,  <37.231899, 37.769264, 56.895050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194622, 37.454742, 56.650742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934158, 0.143182, -0.326876,
		0.344475, -0.601019, 0.721189,
		-0.093197, -0.786305, -0.610769,
		37.166664, 37.218849, 56.467510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940712, 37.434177, 56.886669>,  <37.231899, 37.769264, 56.895050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940712, 37.434177, 56.886669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740864, 37.300362, 56.567055>,  <37.620956, 37.220074, 56.375286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740864, 37.300362, 56.567055>,  <37.940712, 37.434177, 56.886669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740864, 37.300362, 56.567055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815745, 0.128640, -0.563925,
		0.291443, -0.933561, 0.208625,
		-0.499621, -0.334537, -0.799039,
		37.590977, 37.200001, 56.327343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368809, 37.003944, 56.650681>,  <37.940712, 37.434177, 56.886669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368809, 37.003944, 56.650681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.128822, 37.071884, 56.337967>,  <37.984833, 37.112648, 56.150337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.128822, 37.071884, 56.337967>,  <38.368809, 37.003944, 56.650681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128822, 37.071884, 56.337967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796493, 0.035066, -0.603630,
		-0.075116, -0.984845, -0.156327,
		-0.599964, 0.169855, -0.781788,
		37.948833, 37.122841, 56.103432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604946, 36.485798, 56.103168>,  <38.368809, 37.003944, 56.650681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604946, 36.485798, 56.103168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415806, 36.793671, 55.931587>,  <38.302322, 36.978394, 55.828640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415806, 36.793671, 55.931587>,  <38.604946, 36.485798, 56.103168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415806, 36.793671, 55.931587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603881, -0.071435, -0.793867,
		-0.641670, -0.634413, -0.431021,
		-0.472850, 0.769686, -0.428948,
		38.273952, 37.024578, 55.802902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589729, 36.332073, 55.381153>,  <38.604946, 36.485798, 56.103168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589729, 36.332073, 55.381153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537666, 36.726250, 55.424911>,  <38.506428, 36.962757, 55.451168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537666, 36.726250, 55.424911>,  <38.589729, 36.332073, 55.381153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537666, 36.726250, 55.424911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718959, 0.169781, -0.673997,
		-0.682757, -0.009074, -0.730589,
		-0.130156, 0.985440, 0.109395,
		38.498619, 37.021881, 55.457729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052536, 36.275627, 54.779530>,  <38.589729, 36.332073, 55.381153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052536, 36.275627, 54.779530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054947, 36.239586, 54.381165>,  <38.056393, 36.217960, 54.142143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054947, 36.239586, 54.381165>,  <38.052536, 36.275627, 54.779530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054947, 36.239586, 54.381165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970426, -0.240873, 0.015923,
		-0.241324, 0.966365, -0.088889,
		0.006024, -0.090103, -0.995914,
		38.056755, 36.212555, 54.082390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519306, 36.775047, 54.546276>,  <38.052536, 36.275627, 54.779530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519306, 36.775047, 54.546276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592384, 36.494469, 54.270710>,  <37.636230, 36.326122, 54.105370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592384, 36.494469, 54.270710>,  <37.519306, 36.775047, 54.546276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592384, 36.494469, 54.270710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964893, -0.262399, 0.011284,
		-0.188685, 0.662664, -0.724758,
		0.182699, -0.701443, -0.688911,
		37.647194, 36.284035, 54.064037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080856, 37.000225, 53.879787>,  <37.519306, 36.775047, 54.546276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080856, 37.000225, 53.879787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.165436, 36.609772, 53.899628>,  <37.216183, 36.375500, 53.911530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.165436, 36.609772, 53.899628>,  <37.080856, 37.000225, 53.879787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165436, 36.609772, 53.899628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974175, -0.214595, -0.070226,
		0.079193, -0.033466, -0.996297,
		0.211450, -0.976130, 0.049596,
		37.228870, 36.316933, 53.914505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589775, 36.734634, 53.456680>,  <37.080856, 37.000225, 53.879787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589775, 36.734634, 53.456680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713440, 36.396576, 53.631107>,  <36.787640, 36.193741, 53.735764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713440, 36.396576, 53.631107>,  <36.589775, 36.734634, 53.456680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713440, 36.396576, 53.631107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948608, -0.241493, 0.204508,
		-0.067532, -0.476883, -0.876369,
		0.309163, -0.845142, 0.436067,
		36.806190, 36.143032, 53.761929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313545, 36.151344, 53.055008>,  <36.589775, 36.734634, 53.456680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313545, 36.151344, 53.055008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403221, 36.047623, 53.430775>,  <36.457027, 35.985390, 53.656235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403221, 36.047623, 53.430775>,  <36.313545, 36.151344, 53.055008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403221, 36.047623, 53.430775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957950, -0.235775, 0.163530,
		0.179087, -0.936574, -0.301258,
		0.224187, -0.259304, 0.939416,
		36.470478, 35.969833, 53.712601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985828, 35.500824, 53.130577>,  <36.313545, 36.151344, 53.055008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985828, 35.500824, 53.130577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055061, 35.630806, 53.502480>,  <36.096603, 35.708797, 53.725620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055061, 35.630806, 53.502480>,  <35.985828, 35.500824, 53.130577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055061, 35.630806, 53.502480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955110, -0.175065, 0.238993,
		0.240430, -0.929384, 0.280069,
		0.173086, 0.324957, 0.929754,
		36.106987, 35.728294, 53.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549587, 35.043861, 53.410908>,  <35.985828, 35.500824, 53.130577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549587, 35.043861, 53.410908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603695, 35.320915, 53.694305>,  <35.636158, 35.487148, 53.864346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603695, 35.320915, 53.694305>,  <35.549587, 35.043861, 53.410908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603695, 35.320915, 53.694305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952414, -0.106235, 0.285694,
		0.273148, -0.713424, 0.645303,
		0.135267, 0.692633, 0.708493,
		35.644276, 35.528706, 53.906853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211632, 34.764851, 54.049267>,  <35.549587, 35.043861, 53.410908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211632, 34.764851, 54.049267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.270729, 35.151459, 54.133186>,  <35.306187, 35.383423, 54.183540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.270729, 35.151459, 54.133186>,  <35.211632, 34.764851, 54.049267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270729, 35.151459, 54.133186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869171, 0.025666, 0.493845,
		0.471924, -0.255319, 0.843860,
		0.147747, 0.966516, 0.209803,
		35.315052, 35.441414, 54.196129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191872, 34.880363, 54.818867>,  <35.211632, 34.764851, 54.049267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191872, 34.880363, 54.818867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104729, 35.220909, 54.627991>,  <35.052441, 35.425236, 54.513466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104729, 35.220909, 54.627991>,  <35.191872, 34.880363, 54.818867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104729, 35.220909, 54.627991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940975, -0.053456, 0.334229,
		0.259043, 0.521841, 0.812760,
		-0.217861, 0.851366, -0.477192,
		35.039371, 35.476318, 54.484833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901134, 35.365032, 55.337791>,  <35.191872, 34.880363, 54.818867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901134, 35.365032, 55.337791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761768, 35.468979, 54.977554>,  <34.678146, 35.531349, 54.761410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761768, 35.468979, 54.977554>,  <34.901134, 35.365032, 55.337791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761768, 35.468979, 54.977554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937112, -0.117749, 0.328568,
		-0.020659, 0.958438, 0.284553,
		-0.348417, 0.259870, -0.900596,
		34.657242, 35.546940, 54.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341633, 35.749603, 55.580730>,  <34.901134, 35.365032, 55.337791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341633, 35.749603, 55.580730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258820, 35.699715, 55.192589>,  <34.209133, 35.669781, 54.959705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258820, 35.699715, 55.192589>,  <34.341633, 35.749603, 55.580730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258820, 35.699715, 55.192589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953057, -0.198293, 0.228827,
		-0.220954, 0.972175, -0.077813,
		-0.207030, -0.124720, -0.970352,
		34.196712, 35.662300, 54.901482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854321, 36.222717, 55.430836>,  <34.341633, 35.749603, 55.580730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854321, 36.222717, 55.430836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824287, 35.947853, 55.141788>,  <33.806267, 35.782936, 54.968361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824287, 35.947853, 55.141788>,  <33.854321, 36.222717, 55.430836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824287, 35.947853, 55.141788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948150, -0.175229, 0.265154,
		-0.308827, 0.705056, -0.638374,
		-0.075086, -0.687161, -0.722614,
		33.801762, 35.741703, 54.925003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331669, 36.487309, 55.015503>,  <33.854321, 36.222717, 55.430836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331669, 36.487309, 55.015503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363331, 36.091187, 54.969841>,  <33.382328, 35.853512, 54.942444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363331, 36.091187, 54.969841>,  <33.331669, 36.487309, 55.015503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363331, 36.091187, 54.969841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981153, -0.097649, 0.166744,
		-0.176275, 0.098808, -0.979369,
		0.079159, -0.990303, -0.114159,
		33.387077, 35.794094, 54.935593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714165, 36.337448, 54.796562>,  <33.331669, 36.487309, 55.015503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714165, 36.337448, 54.796562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844723, 35.966026, 54.867283>,  <32.923058, 35.743172, 54.909714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844723, 35.966026, 54.867283>,  <32.714165, 36.337448, 54.796562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844723, 35.966026, 54.867283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917339, -0.266063, 0.296140,
		-0.227940, -0.258847, -0.938638,
		0.326392, -0.928552, 0.176804,
		32.942638, 35.687462, 54.920322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943871, 35.821030, 54.301441>,  <32.714165, 36.337448, 54.796562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943871, 35.821030, 54.301441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586533, 35.669197, 54.205231>,  <32.372131, 35.578098, 54.147503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586533, 35.669197, 54.205231>,  <32.943871, 35.821030, 54.301441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586533, 35.669197, 54.205231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069377, 0.412332, -0.908388,
		0.443990, -0.828189, -0.342019,
		-0.893342, -0.379587, -0.240528,
		32.318531, 35.555321, 54.133072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043114, 35.293114, 53.726231>,  <32.943871, 35.821030, 54.301441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043114, 35.293114, 53.726231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.672276, 35.442924, 53.720287>,  <32.449772, 35.532810, 53.716721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.672276, 35.442924, 53.720287>,  <33.043114, 35.293114, 53.726231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672276, 35.442924, 53.720287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199995, 0.460768, -0.864694,
		-0.317007, -0.804626, -0.502080,
		-0.927097, 0.374528, -0.014854,
		32.394146, 35.555283, 53.715832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731434, 35.045315, 53.067741>,  <33.043114, 35.293114, 53.726231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731434, 35.045315, 53.067741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.530170, 35.368103, 53.191437>,  <32.409412, 35.561775, 53.265652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.530170, 35.368103, 53.191437>,  <32.731434, 35.045315, 53.067741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530170, 35.368103, 53.191437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253230, 0.479797, -0.840041,
		-0.826263, -0.344363, -0.445762,
		-0.503154, 0.806975, 0.309236,
		32.379223, 35.610195, 53.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212276, 35.255375, 52.446648>,  <32.731434, 35.045315, 53.067741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212276, 35.255375, 52.446648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277718, 35.571014, 52.683475>,  <32.316982, 35.760399, 52.825573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277718, 35.571014, 52.683475>,  <32.212276, 35.255375, 52.446648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277718, 35.571014, 52.683475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188022, 0.564218, -0.803931,
		-0.968444, 0.242845, -0.056064,
		0.163598, 0.789103, 0.592074,
		32.326797, 35.807747, 52.861099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823067, 35.802425, 52.105453>,  <32.212276, 35.255375, 52.446648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823067, 35.802425, 52.105453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.109184, 35.959419, 52.336731>,  <32.280857, 36.053616, 52.475498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.109184, 35.959419, 52.336731>,  <31.823067, 35.802425, 52.105453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109184, 35.959419, 52.336731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273075, 0.604614, -0.748246,
		-0.643259, 0.693107, 0.325301,
		0.715296, 0.392484, 0.578194,
		32.323772, 36.077164, 52.510189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871414, 36.551613, 51.995552>,  <31.823067, 35.802425, 52.105453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871414, 36.551613, 51.995552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.233261, 36.457245, 52.137547>,  <32.450367, 36.400623, 52.222744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.233261, 36.457245, 52.137547>,  <31.871414, 36.551613, 51.995552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233261, 36.457245, 52.137547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423686, 0.588573, -0.688529,
		-0.046498, 0.773256, 0.632387,
		0.904615, -0.235918, 0.354985,
		32.504646, 36.386471, 52.244041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164375, 37.170174, 51.879845>,  <31.871414, 36.551613, 51.995552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164375, 37.170174, 51.879845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.469254, 36.932518, 51.982647>,  <32.652180, 36.789925, 52.044327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.469254, 36.932518, 51.982647>,  <32.164375, 37.170174, 51.879845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469254, 36.932518, 51.982647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535675, 0.355964, -0.765729,
		0.363469, 0.721306, 0.589583,
		0.762196, -0.594144, 0.257004,
		32.697914, 36.754276, 52.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111710, 37.667397, 52.509502>,  <32.164375, 37.170174, 51.879845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111710, 37.667397, 52.509502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.961967, 38.032585, 52.574417>,  <31.872122, 38.251698, 52.613365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.961967, 38.032585, 52.574417>,  <32.111710, 37.667397, 52.509502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961967, 38.032585, 52.574417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484989, -0.341941, 0.804899,
		0.790345, 0.222609, 0.570789,
		-0.374354, 0.912974, 0.162288,
		31.849661, 38.306477, 52.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138035, 37.750668, 53.298019>,  <32.111710, 37.667397, 52.509502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138035, 37.750668, 53.298019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.865873, 37.988800, 53.127079>,  <31.702578, 38.131680, 53.024513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.865873, 37.988800, 53.127079>,  <32.138035, 37.750668, 53.298019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865873, 37.988800, 53.127079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644204, -0.207884, 0.736061,
		0.349362, 0.776120, 0.524961,
		-0.680403, 0.595333, -0.427353,
		31.661753, 38.167400, 52.998875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980299, 38.266060, 53.754623>,  <32.138035, 37.750668, 53.298019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980299, 38.266060, 53.754623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649891, 38.271187, 53.529228>,  <31.451645, 38.274261, 53.393990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649891, 38.271187, 53.529228>,  <31.980299, 38.266060, 53.754623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649891, 38.271187, 53.529228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542419, -0.289809, 0.788538,
		-0.153200, 0.956999, 0.246339,
		-0.826022, 0.012815, -0.563493,
		31.402084, 38.275032, 53.360180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513969, 38.617809, 54.191032>,  <31.980299, 38.266060, 53.754623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513969, 38.617809, 54.191032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.312925, 38.398743, 53.923466>,  <31.192299, 38.267303, 53.762924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.312925, 38.398743, 53.923466>,  <31.513969, 38.617809, 54.191032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312925, 38.398743, 53.923466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487722, -0.459232, 0.742451,
		-0.713801, 0.699408, -0.036293,
		-0.502609, -0.547663, -0.668917,
		31.162142, 38.234444, 53.722790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780718, 38.691837, 54.448433>,  <31.513969, 38.617809, 54.191032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780718, 38.691837, 54.448433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760553, 38.387863, 54.189217>,  <30.748455, 38.205479, 54.033688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760553, 38.387863, 54.189217>,  <30.780718, 38.691837, 54.448433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760553, 38.387863, 54.189217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451933, -0.561273, 0.693346,
		-0.890626, 0.327824, -0.315145,
		-0.050413, -0.759937, -0.648039,
		30.745430, 38.159882, 53.994804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119392, 38.546055, 54.477600>,  <30.780718, 38.691837, 54.448433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119392, 38.546055, 54.477600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301603, 38.216698, 54.342236>,  <30.410929, 38.019085, 54.261017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301603, 38.216698, 54.342236>,  <30.119392, 38.546055, 54.477600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301603, 38.216698, 54.342236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528380, -0.556018, 0.641607,
		-0.716458, -0.113456, -0.688343,
		0.455525, -0.823390, -0.338415,
		30.438261, 37.969681, 54.240711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618120, 38.045681, 54.358955>,  <30.119392, 38.546055, 54.477600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618120, 38.045681, 54.358955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946444, 37.819832, 54.393539>,  <30.143438, 37.684322, 54.414288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946444, 37.819832, 54.393539>,  <29.618120, 38.045681, 54.358955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946444, 37.819832, 54.393539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525494, -0.687099, 0.501749,
		-0.223892, -0.457274, -0.860682,
		0.820810, -0.564620, 0.086458,
		30.192686, 37.650444, 54.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462425, 37.268826, 54.215134>,  <29.618120, 38.045681, 54.358955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462425, 37.268826, 54.215134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777081, 37.268661, 54.462101>,  <29.965874, 37.268562, 54.610279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777081, 37.268661, 54.462101>,  <29.462425, 37.268826, 54.215134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777081, 37.268661, 54.462101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401050, -0.760648, 0.510465,
		0.469427, -0.649165, -0.598517,
		0.786637, -0.000410, 0.617416,
		30.013071, 37.268539, 54.647327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487228, 36.547962, 54.459606>,  <29.462425, 37.268826, 54.215134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487228, 36.547962, 54.459606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704119, 36.763496, 54.717487>,  <29.834253, 36.892818, 54.872215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704119, 36.763496, 54.717487>,  <29.487228, 36.547962, 54.459606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704119, 36.763496, 54.717487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179907, -0.675047, 0.715503,
		0.820747, -0.503951, -0.269086,
		0.542225, 0.538837, 0.644707,
		29.866787, 36.925148, 54.910900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.767467, 43.627022, 47.181061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.715858, 43.738327, 47.561779>,  <42.684895, 43.805111, 47.790211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.715858, 43.738327, 47.561779>,  <42.767467, 43.627022, 47.181061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715858, 43.738327, 47.561779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874753, -0.484025, 0.022933,
		0.467077, -0.829631, 0.305862,
		-0.129019, 0.278266, 0.951800,
		42.677155, 43.821808, 47.847321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462742, 43.011002, 47.529865>,  <42.767467, 43.627022, 47.181061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462742, 43.011002, 47.529865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.357582, 43.329475, 47.747849>,  <42.294487, 43.520557, 47.878639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.357582, 43.329475, 47.747849>,  <42.462742, 43.011002, 47.529865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357582, 43.329475, 47.747849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935917, -0.347669, 0.056443,
		0.234405, -0.495200, 0.836559,
		-0.262895, 0.796180, 0.544962,
		42.278713, 43.568329, 47.911339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213619, 42.757580, 48.287033>,  <42.462742, 43.011002, 47.529865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213619, 42.757580, 48.287033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.077187, 43.128708, 48.226616>,  <41.995327, 43.351383, 48.190365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.077187, 43.128708, 48.226616>,  <42.213619, 42.757580, 48.287033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077187, 43.128708, 48.226616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913105, -0.288827, 0.287781,
		0.223384, 0.236074, 0.945711,
		-0.341084, 0.927819, -0.151042,
		41.974861, 43.407055, 48.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784592, 42.772949, 48.758522>,  <42.213619, 42.757580, 48.287033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784592, 42.772949, 48.758522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676319, 43.075340, 48.520119>,  <41.611355, 43.256775, 48.377075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676319, 43.075340, 48.520119>,  <41.784592, 42.772949, 48.758522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676319, 43.075340, 48.520119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962628, -0.218323, 0.160256,
		-0.008973, 0.617114, 0.786823,
		-0.270678, 0.755980, -0.596010,
		41.595116, 43.302135, 48.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352440, 43.038456, 49.173492>,  <41.784592, 42.772949, 48.758522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352440, 43.038456, 49.173492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.275146, 43.169708, 48.803627>,  <41.228771, 43.248459, 48.581707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.275146, 43.169708, 48.803627>,  <41.352440, 43.038456, 49.173492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275146, 43.169708, 48.803627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958010, -0.266578, 0.105603,
		-0.211843, 0.906239, 0.365860,
		-0.193232, 0.328127, -0.924659,
		41.217178, 43.268147, 48.526230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794136, 43.501656, 49.291023>,  <41.352440, 43.038456, 49.173492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794136, 43.501656, 49.291023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826103, 43.355759, 48.919952>,  <40.845284, 43.268223, 48.697311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826103, 43.355759, 48.919952>,  <40.794136, 43.501656, 49.291023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826103, 43.355759, 48.919952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968033, -0.250373, 0.015051,
		-0.237755, 0.896815, -0.373089,
		0.079913, -0.364741, -0.927674,
		40.850079, 43.246338, 48.641651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215805, 43.686226, 48.946442>,  <40.794136, 43.501656, 49.291023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215805, 43.686226, 48.946442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339378, 43.369637, 48.735489>,  <40.413521, 43.179684, 48.608917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339378, 43.369637, 48.735489>,  <40.215805, 43.686226, 48.946442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339378, 43.369637, 48.735489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875145, -0.453677, 0.168222,
		-0.372403, 0.409563, -0.832811,
		0.308929, -0.791477, -0.527378,
		40.432056, 43.132195, 48.577274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619469, 43.496593, 48.826435>,  <40.215805, 43.686226, 48.946442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619469, 43.496593, 48.826435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.833122, 43.186279, 48.692059>,  <39.961315, 43.000092, 48.611431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.833122, 43.186279, 48.692059>,  <39.619469, 43.496593, 48.826435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833122, 43.186279, 48.692059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800247, -0.592101, 0.094978,
		-0.272594, 0.218105, -0.937082,
		0.534132, -0.775788, -0.335941,
		39.993362, 42.953545, 48.591274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396648, 43.314926, 48.213879>,  <39.619469, 43.496593, 48.826435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396648, 43.314926, 48.213879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555771, 42.974297, 48.350445>,  <39.651245, 42.769917, 48.432384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555771, 42.974297, 48.350445>,  <39.396648, 43.314926, 48.213879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555771, 42.974297, 48.350445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872836, -0.465930, -0.145144,
		0.282676, -0.240258, -0.928639,
		0.397809, -0.851578, 0.341413,
		39.675114, 42.718822, 48.452869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127110, 42.722733, 47.851093>,  <39.396648, 43.314926, 48.213879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127110, 42.722733, 47.851093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291161, 42.520126, 48.154472>,  <39.389591, 42.398563, 48.336498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291161, 42.520126, 48.154472>,  <39.127110, 42.722733, 47.851093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291161, 42.520126, 48.154472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834534, -0.543874, 0.088054,
		0.367897, -0.669061, -0.645763,
		0.410127, -0.506517, 0.758443,
		39.414200, 42.368172, 48.382004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086857, 41.914543, 47.775368>,  <39.127110, 42.722733, 47.851093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086857, 41.914543, 47.775368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.090149, 42.030563, 48.158157>,  <39.092125, 42.100174, 48.387833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.090149, 42.030563, 48.158157>,  <39.086857, 41.914543, 47.775368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090149, 42.030563, 48.158157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858731, -0.488302, 0.155379,
		0.512361, -0.823064, 0.245054,
		0.008227, 0.290046, 0.956977,
		39.092617, 42.117577, 48.445251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708946, 41.340931, 48.100674>,  <39.086857, 41.914543, 47.775368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708946, 41.340931, 48.100674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723145, 41.605568, 48.400284>,  <38.731663, 41.764351, 48.580048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723145, 41.605568, 48.400284>,  <38.708946, 41.340931, 48.100674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723145, 41.605568, 48.400284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842264, -0.383600, 0.378736,
		0.537895, -0.644317, 0.543622,
		0.035493, 0.661594, 0.749022,
		38.733791, 41.804047, 48.624989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286610, 40.979752, 48.302040>,  <38.708946, 41.340931, 48.100674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286610, 40.979752, 48.302040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364487, 40.613266, 48.161957>,  <39.411213, 40.393375, 48.077908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364487, 40.613266, 48.161957>,  <39.286610, 40.979752, 48.302040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364487, 40.613266, 48.161957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828387, 0.344778, -0.441478,
		0.525231, -0.204150, 0.826108,
		0.194696, -0.916216, -0.350204,
		39.422894, 40.338402, 48.056896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877197, 40.745724, 48.598755>,  <39.286610, 40.979752, 48.302040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877197, 40.745724, 48.598755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.821903, 40.557480, 48.250179>,  <39.788727, 40.444534, 48.041035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.821903, 40.557480, 48.250179>,  <39.877197, 40.745724, 48.598755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821903, 40.557480, 48.250179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918219, 0.268853, -0.290846,
		0.371166, -0.840381, 0.394962,
		-0.138234, -0.470614, -0.871444,
		39.780434, 40.416294, 47.988747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498360, 40.484253, 48.471626>,  <39.877197, 40.745724, 48.598755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498360, 40.484253, 48.471626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329712, 40.427658, 48.113358>,  <40.228523, 40.393703, 47.898396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329712, 40.427658, 48.113358>,  <40.498360, 40.484253, 48.471626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329712, 40.427658, 48.113358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881932, 0.165638, -0.441316,
		0.210796, -0.975985, 0.054944,
		-0.421617, -0.141485, -0.895668,
		40.203228, 40.385212, 47.844658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769844, 39.966583, 48.131306>,  <40.498360, 40.484253, 48.471626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769844, 39.966583, 48.131306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645138, 40.193260, 47.826241>,  <40.570312, 40.329266, 47.643200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645138, 40.193260, 47.826241>,  <40.769844, 39.966583, 48.131306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645138, 40.193260, 47.826241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938117, 0.056194, -0.341731,
		-0.150800, -0.822010, -0.549144,
		-0.311764, 0.566694, -0.762667,
		40.551609, 40.363270, 47.597439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051434, 39.665611, 47.531227>,  <40.769844, 39.966583, 48.131306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051434, 39.665611, 47.531227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955856, 40.031067, 47.399673>,  <40.898510, 40.250340, 47.320744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955856, 40.031067, 47.399673>,  <41.051434, 39.665611, 47.531227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955856, 40.031067, 47.399673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933611, 0.123032, -0.336503,
		-0.266981, -0.387452, -0.882385,
		-0.238940, 0.913643, -0.328882,
		40.884174, 40.305161, 47.301010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408749, 39.709442, 46.941196>,  <41.051434, 39.665611, 47.531227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408749, 39.709442, 46.941196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.305576, 40.095566, 46.957405>,  <41.243671, 40.327240, 46.967133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.305576, 40.095566, 46.957405>,  <41.408749, 39.709442, 46.941196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305576, 40.095566, 46.957405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867763, 0.249903, -0.429577,
		-0.424804, -0.075635, -0.902120,
		-0.257934, 0.965312, 0.040526,
		41.228195, 40.385159, 46.969563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571766, 39.950531, 46.332005>,  <41.408749, 39.709442, 46.941196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571766, 39.950531, 46.332005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566486, 40.272408, 46.569424>,  <41.563316, 40.465534, 46.711876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566486, 40.272408, 46.569424>,  <41.571766, 39.950531, 46.332005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566486, 40.272408, 46.569424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868352, 0.303541, -0.392208,
		-0.495772, 0.510230, -0.702762,
		-0.013201, 0.804691, 0.593547,
		41.562527, 40.513817, 46.747486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632595, 40.600628, 45.897469>,  <41.571766, 39.950531, 46.332005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632595, 40.600628, 45.897469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.745365, 40.677094, 46.273548>,  <41.813026, 40.722973, 46.499195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.745365, 40.677094, 46.273548>,  <41.632595, 40.600628, 45.897469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745365, 40.677094, 46.273548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923397, 0.211997, -0.319993,
		-0.260490, 0.958391, -0.116751,
		0.281927, 0.191163, 0.940199,
		41.829945, 40.734444, 46.555607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994389, 41.236694, 45.790688>,  <41.632595, 40.600628, 45.897469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994389, 41.236694, 45.790688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.080299, 41.065689, 46.141937>,  <42.131844, 40.963085, 46.352688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.080299, 41.065689, 46.141937>,  <41.994389, 41.236694, 45.790688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080299, 41.065689, 46.141937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976413, 0.114364, -0.183134,
		-0.022134, 0.896747, 0.441990,
		0.214773, -0.427511, 0.878127,
		42.144730, 40.937435, 46.405376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418945, 41.696018, 46.123642>,  <41.994389, 41.236694, 45.790688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418945, 41.696018, 46.123642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.523968, 41.388542, 46.356941>,  <42.586983, 41.204056, 46.496922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.523968, 41.388542, 46.356941>,  <42.418945, 41.696018, 46.123642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523968, 41.388542, 46.356941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948608, 0.316289, -0.010173,
		-0.176654, 0.555942, 0.812232,
		0.262555, -0.768694, 0.583245,
		42.602734, 41.157932, 46.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903164, 41.905743, 46.714073>,  <42.418945, 41.696018, 46.123642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903164, 41.905743, 46.714073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.961159, 41.515526, 46.647987>,  <42.995956, 41.281395, 46.608337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.961159, 41.515526, 46.647987>,  <42.903164, 41.905743, 46.714073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961159, 41.515526, 46.647987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987360, 0.153456, -0.039633,
		0.064016, -0.157377, 0.985462,
		0.144988, -0.975543, -0.165211,
		43.004654, 41.222862, 46.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591366, 41.833717, 47.123775>,  <42.903164, 41.905743, 46.714073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591366, 41.833717, 47.123775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.519295, 41.517609, 46.889507>,  <43.476051, 41.327946, 46.748947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.519295, 41.517609, 46.889507>,  <43.591366, 41.833717, 47.123775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519295, 41.517609, 46.889507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981909, -0.179752, -0.059538,
		-0.058225, -0.585801, 0.808360,
		-0.180182, -0.790269, -0.585669,
		43.465240, 41.280529, 46.713806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116943, 41.354935, 47.345131>,  <43.591366, 41.833717, 47.123775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116943, 41.354935, 47.345131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.006477, 41.234238, 46.980125>,  <43.940197, 41.161819, 46.761120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.006477, 41.234238, 46.980125>,  <44.116943, 41.354935, 47.345131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006477, 41.234238, 46.980125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958937, -0.150337, -0.240498,
		-0.064617, -0.941462, 0.330870,
		-0.276162, -0.301743, -0.912516,
		43.923630, 41.143715, 46.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437592, 40.719818, 47.203419>,  <44.116943, 41.354935, 47.345131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437592, 40.719818, 47.203419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.346611, 40.861588, 46.840618>,  <44.292023, 40.946651, 46.622940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.346611, 40.861588, 46.840618>,  <44.437592, 40.719818, 47.203419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346611, 40.861588, 46.840618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933522, -0.185711, -0.306672,
		-0.277133, -0.916457, -0.288626,
		-0.227450, 0.354428, -0.906999,
		44.278378, 40.967915, 46.568520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738918, 40.282871, 46.592499>,  <44.437592, 40.719818, 47.203419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738918, 40.282871, 46.592499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.659180, 40.644066, 46.440247>,  <44.611336, 40.860783, 46.348896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.659180, 40.644066, 46.440247>,  <44.738918, 40.282871, 46.592499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659180, 40.644066, 46.440247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879453, -0.006469, -0.475942,
		-0.432230, -0.429628, -0.792841,
		-0.199349, 0.902983, -0.380634,
		44.599377, 40.914959, 46.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353661, 39.693325, 46.968590>,  <44.738918, 40.282871, 46.592499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353661, 39.693325, 46.968590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.747124, 39.655769, 47.030045>,  <44.983200, 39.633236, 47.066917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.747124, 39.655769, 47.030045>,  <44.353661, 39.693325, 46.968590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747124, 39.655769, 47.030045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160630, -0.843121, 0.513171,
		0.081351, -0.529462, -0.844424,
		0.983656, -0.093893, 0.153636,
		45.042221, 39.627602, 47.076134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615520, 39.021046, 46.849300>,  <44.353661, 39.693325, 46.968590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615520, 39.021046, 46.849300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.813210, 39.203033, 47.145611>,  <44.931824, 39.312225, 47.323399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.813210, 39.203033, 47.145611>,  <44.615520, 39.021046, 46.849300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813210, 39.203033, 47.145611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348415, -0.677025, 0.648262,
		0.796463, -0.578483, -0.176082,
		0.494221, 0.454967, 0.740777,
		44.961475, 39.339523, 47.367844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000301, 38.489067, 47.164616>,  <44.615520, 39.021046, 46.849300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000301, 38.489067, 47.164616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.978600, 38.781837, 47.436302>,  <44.965576, 38.957500, 47.599316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.978600, 38.781837, 47.436302>,  <45.000301, 38.489067, 47.164616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978600, 38.781837, 47.436302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161681, -0.677682, 0.717361,
		0.985350, -0.070894, 0.155109,
		-0.054258, 0.731930, 0.679216,
		44.962322, 39.001415, 47.640068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562984, 38.408924, 47.759148>,  <45.000301, 38.489067, 47.164616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562984, 38.408924, 47.759148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.251312, 38.622498, 47.890472>,  <45.064308, 38.750641, 47.969269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.251312, 38.622498, 47.890472>,  <45.562984, 38.408924, 47.759148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251312, 38.622498, 47.890472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025791, -0.550668, 0.834326,
		0.626264, 0.641626, 0.442842,
		-0.779184, 0.533930, 0.328315,
		45.017555, 38.782677, 47.988968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667973, 38.460724, 48.420723>,  <45.562984, 38.408924, 47.759148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667973, 38.460724, 48.420723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.281193, 38.560356, 48.398907>,  <45.049126, 38.620136, 48.385818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.281193, 38.560356, 48.398907>,  <45.667973, 38.460724, 48.420723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281193, 38.560356, 48.398907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176043, -0.497398, 0.849473,
		0.184461, 0.830995, 0.524806,
		-0.966945, 0.249083, -0.054541,
		44.991108, 38.635082, 48.382545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500656, 38.589558, 49.086647>,  <45.667973, 38.460724, 48.420723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500656, 38.589558, 49.086647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.142544, 38.518646, 48.923164>,  <44.927677, 38.476101, 48.825073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.142544, 38.518646, 48.923164>,  <45.500656, 38.589558, 49.086647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142544, 38.518646, 48.923164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304651, -0.425757, 0.852009,
		-0.325051, 0.887302, 0.327165,
		-0.895282, -0.177275, -0.408710,
		44.873959, 38.465466, 48.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016098, 38.823879, 49.586704>,  <45.500656, 38.589558, 49.086647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016098, 38.823879, 49.586704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.788445, 38.600677, 49.345139>,  <44.651852, 38.466755, 49.200199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.788445, 38.600677, 49.345139>,  <45.016098, 38.823879, 49.586704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788445, 38.600677, 49.345139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556167, -0.279715, 0.782584,
		-0.605611, 0.781274, -0.151149,
		-0.569134, -0.558005, -0.603918,
		44.617702, 38.433277, 49.163963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355598, 38.913872, 49.838631>,  <45.016098, 38.823879, 49.586704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355598, 38.913872, 49.838631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.300007, 38.588753, 49.612343>,  <44.266651, 38.393681, 49.476570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.300007, 38.588753, 49.612343>,  <44.355598, 38.913872, 49.838631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300007, 38.588753, 49.612343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656234, -0.352235, 0.667298,
		-0.741647, 0.463987, -0.484434,
		-0.138983, -0.812802, -0.565718,
		44.258312, 38.344913, 49.442627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667873, 38.944374, 49.736073>,  <44.355598, 38.913872, 49.838631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667873, 38.944374, 49.736073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798843, 38.571693, 49.673176>,  <43.877426, 38.348083, 49.635437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798843, 38.571693, 49.673176>,  <43.667873, 38.944374, 49.736073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798843, 38.571693, 49.673176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765440, -0.359114, 0.533984,
		-0.553981, -0.054480, -0.830745,
		0.327424, -0.931702, -0.157241,
		43.897072, 38.292183, 49.626003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103954, 38.552586, 49.520802>,  <43.667873, 38.944374, 49.736073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103954, 38.552586, 49.520802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.360977, 38.282341, 49.665390>,  <43.515190, 38.120193, 49.752144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.360977, 38.282341, 49.665390>,  <43.103954, 38.552586, 49.520802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360977, 38.282341, 49.665390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720787, -0.372901, 0.584304,
		-0.259972, -0.635994, -0.726586,
		0.642558, -0.675616, 0.361472,
		43.553745, 38.079655, 49.773830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809475, 37.906109, 49.524879>,  <43.103954, 38.552586, 49.520802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809475, 37.906109, 49.524879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.096119, 37.877792, 49.802429>,  <43.268105, 37.860802, 49.968960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.096119, 37.877792, 49.802429>,  <42.809475, 37.906109, 49.524879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096119, 37.877792, 49.802429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616006, -0.530819, 0.582038,
		0.327119, -0.844524, -0.423997,
		0.716610, -0.070789, 0.693872,
		43.311104, 37.856556, 50.010590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796181, 37.262161, 49.612854>,  <42.809475, 37.906109, 49.524879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796181, 37.262161, 49.612854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.978714, 37.424774, 49.929459>,  <43.088234, 37.522343, 50.119423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.978714, 37.424774, 49.929459>,  <42.796181, 37.262161, 49.612854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978714, 37.424774, 49.929459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617842, -0.495370, 0.610639,
		0.640334, -0.767686, 0.025116,
		0.456337, 0.406531, 0.791510,
		43.115616, 37.546734, 50.166912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660538, 36.825443, 50.126534>,  <42.796181, 37.262161, 49.612854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660538, 36.825443, 50.126534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.782463, 37.129333, 50.356281>,  <42.855618, 37.311668, 50.494129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.782463, 37.129333, 50.356281>,  <42.660538, 36.825443, 50.126534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782463, 37.129333, 50.356281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564041, -0.341943, 0.751620,
		0.767429, -0.553074, 0.324288,
		0.304813, 0.759727, 0.574373,
		42.873905, 37.357250, 50.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879417, 36.509449, 50.699757>,  <42.660538, 36.825443, 50.126534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879417, 36.509449, 50.699757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.777340, 36.881950, 50.803795>,  <42.716095, 37.105450, 50.866219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.777340, 36.881950, 50.803795>,  <42.879417, 36.509449, 50.699757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777340, 36.881950, 50.803795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627784, -0.364172, 0.687943,
		0.735366, 0.012274, 0.677559,
		-0.255192, 0.931250, 0.260094,
		42.700783, 37.161327, 50.881824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965282, 36.509560, 51.504601>,  <42.879417, 36.509449, 50.699757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965282, 36.509560, 51.504601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.746700, 36.829559, 51.405495>,  <42.615551, 37.021561, 51.346031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.746700, 36.829559, 51.405495>,  <42.965282, 36.509560, 51.504601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746700, 36.829559, 51.405495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613436, -0.180938, 0.768738,
		0.570159, 0.572070, 0.589623,
		-0.546456, 0.799999, -0.247765,
		42.582764, 37.069557, 51.331165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829235, 36.753468, 52.084984>,  <42.965282, 36.509560, 51.504601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829235, 36.753468, 52.084984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.538483, 36.908096, 51.857933>,  <42.364029, 37.000874, 51.721703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.538483, 36.908096, 51.857933>,  <42.829235, 36.753468, 52.084984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538483, 36.908096, 51.857933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666480, -0.197695, 0.718833,
		0.165662, 0.900821, 0.401344,
		-0.726884, 0.386571, -0.567629,
		42.320419, 37.024067, 51.687645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388508, 37.251286, 52.557335>,  <42.829235, 36.753468, 52.084984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388508, 37.251286, 52.557335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.167183, 37.187584, 52.230293>,  <42.034386, 37.149364, 52.034069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.167183, 37.187584, 52.230293>,  <42.388508, 37.251286, 52.557335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167183, 37.187584, 52.230293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812382, -0.113721, 0.571929,
		-0.184061, 0.980666, -0.066453,
		-0.553315, -0.159255, -0.817607,
		42.001190, 37.139809, 51.985012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813049, 37.744003, 52.601425>,  <42.388508, 37.251286, 52.557335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813049, 37.744003, 52.601425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.673790, 37.485901, 52.329414>,  <41.590233, 37.331039, 52.166210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.673790, 37.485901, 52.329414>,  <41.813049, 37.744003, 52.601425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673790, 37.485901, 52.329414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894800, 0.012452, 0.446294,
		-0.279507, 0.763864, -0.581711,
		-0.348151, -0.645257, -0.680025,
		41.569344, 37.292324, 52.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137104, 37.861961, 52.647057>,  <41.813049, 37.744003, 52.601425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137104, 37.861961, 52.647057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122391, 37.517059, 52.445000>,  <41.113564, 37.310120, 52.323765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122391, 37.517059, 52.445000>,  <41.137104, 37.861961, 52.647057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122391, 37.517059, 52.445000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930728, -0.154492, 0.331478,
		-0.363858, 0.482338, -0.796842,
		-0.036779, -0.862254, -0.505138,
		41.111359, 37.258385, 52.293457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462101, 37.848949, 52.406353>,  <41.137104, 37.861961, 52.647057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462101, 37.848949, 52.406353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595116, 37.471718, 52.404564>,  <40.674923, 37.245380, 52.403488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595116, 37.471718, 52.404564>,  <40.462101, 37.848949, 52.406353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595116, 37.471718, 52.404564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891998, -0.316060, 0.323181,
		-0.306196, -0.103488, -0.946327,
		0.332541, -0.943078, -0.004466,
		40.694878, 37.188793, 52.403221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870121, 37.389156, 52.269043>,  <40.462101, 37.848949, 52.406353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870121, 37.389156, 52.269043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128265, 37.132355, 52.434616>,  <40.283150, 36.978271, 52.533958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128265, 37.132355, 52.434616>,  <39.870121, 37.389156, 52.269043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128265, 37.132355, 52.434616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762744, -0.512029, 0.395029,
		-0.041666, -0.570660, -0.820129,
		0.645357, -0.642008, 0.413934,
		40.321873, 36.939751, 52.558796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687912, 36.728424, 52.058998>,  <39.870121, 37.389156, 52.269043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687912, 36.728424, 52.058998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895111, 36.693192, 52.399334>,  <40.019432, 36.672050, 52.603535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895111, 36.693192, 52.399334>,  <39.687912, 36.728424, 52.058998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895111, 36.693192, 52.399334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791819, -0.425649, 0.438003,
		0.323577, -0.900591, -0.290230,
		0.517997, -0.088082, 0.850835,
		40.050510, 36.666767, 52.654583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576336, 36.056503, 52.260700>,  <39.687912, 36.728424, 52.058998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576336, 36.056503, 52.260700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702793, 36.256325, 52.583313>,  <39.778667, 36.376217, 52.776882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702793, 36.256325, 52.583313>,  <39.576336, 36.056503, 52.260700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702793, 36.256325, 52.583313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650713, -0.504467, 0.567526,
		0.690381, -0.704241, 0.165585,
		0.316143, 0.499557, 0.806533,
		39.797638, 36.406193, 52.825272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575153, 35.548859, 52.853714>,  <39.576336, 36.056503, 52.260700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575153, 35.548859, 52.853714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.542984, 35.907120, 53.028679>,  <39.523682, 36.122078, 53.133659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.542984, 35.907120, 53.028679>,  <39.575153, 35.548859, 52.853714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542984, 35.907120, 53.028679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728814, -0.352202, 0.587183,
		0.679973, -0.271573, 0.681091,
		-0.080419, 0.895657, 0.437414,
		39.518860, 36.175816, 53.159904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198280, 35.319775, 53.413952>,  <39.575153, 35.548859, 52.853714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198280, 35.319775, 53.413952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.188416, 35.717361, 53.456703>,  <39.182499, 35.955914, 53.482353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.188416, 35.717361, 53.456703>,  <39.198280, 35.319775, 53.413952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188416, 35.717361, 53.456703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721338, -0.091711, 0.686484,
		0.692144, -0.060169, 0.719247,
		-0.024658, 0.993966, 0.106879,
		39.181019, 36.015553, 53.488766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035267, 35.478680, 54.086605>,  <39.198280, 35.319775, 53.413952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035267, 35.478680, 54.086605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930061, 35.822014, 53.910389>,  <38.866936, 36.028015, 53.804657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930061, 35.822014, 53.910389>,  <39.035267, 35.478680, 54.086605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930061, 35.822014, 53.910389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822120, 0.039576, 0.567937,
		0.504917, 0.511558, 0.695246,
		-0.263018, 0.858337, -0.440545,
		38.851154, 36.079514, 53.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713051, 35.961418, 54.624477>,  <39.035267, 35.478680, 54.086605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713051, 35.961418, 54.624477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593208, 36.074234, 54.259911>,  <38.521301, 36.141926, 54.041168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593208, 36.074234, 54.259911>,  <38.713051, 35.961418, 54.624477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593208, 36.074234, 54.259911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943008, 0.057454, 0.327773,
		0.144811, 0.957680, 0.248756,
		-0.299609, 0.282044, -0.911420,
		38.503326, 36.158848, 53.986485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883987, 36.731377, 54.696117>,  <38.713051, 35.961418, 54.624477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883987, 36.731377, 54.696117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843605, 37.034317, 54.954178>,  <38.819378, 37.216084, 55.109016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843605, 37.034317, 54.954178>,  <38.883987, 36.731377, 54.696117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843605, 37.034317, 54.954178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754175, 0.481187, -0.446856,
		-0.648867, 0.441448, -0.619754,
		-0.100954, 0.757353, 0.645155,
		38.813320, 37.261524, 55.147724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695766, 37.395687, 54.298729>,  <38.883987, 36.731377, 54.696117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695766, 37.395687, 54.298729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885002, 37.492249, 54.637646>,  <38.998543, 37.550186, 54.840996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885002, 37.492249, 54.637646>,  <38.695766, 37.395687, 54.298729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885002, 37.492249, 54.637646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738778, 0.415265, -0.530813,
		-0.479991, 0.877086, 0.018117,
		0.473092, 0.241401, 0.847295,
		39.026928, 37.564671, 54.891834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890633, 38.083057, 54.162540>,  <38.695766, 37.395687, 54.298729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890633, 38.083057, 54.162540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114128, 37.978661, 54.477425>,  <39.248226, 37.916023, 54.666355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114128, 37.978661, 54.477425>,  <38.890633, 38.083057, 54.162540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114128, 37.978661, 54.477425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763880, 0.531583, -0.365933,
		-0.322959, 0.805792, 0.496383,
		0.558735, -0.260996, 0.787208,
		39.281750, 37.900360, 54.713589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071732, 38.678204, 54.413834>,  <38.890633, 38.083057, 54.162540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071732, 38.678204, 54.413834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.344212, 38.423927, 54.559082>,  <39.507702, 38.271362, 54.646233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.344212, 38.423927, 54.559082>,  <39.071732, 38.678204, 54.413834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344212, 38.423927, 54.559082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728293, 0.537959, -0.424487,
		0.074496, 0.553623, 0.829428,
		0.681204, -0.635690, 0.363124,
		39.548573, 38.233219, 54.668018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540779, 39.101440, 54.792980>,  <39.071732, 38.678204, 54.413834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540779, 39.101440, 54.792980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.729767, 38.754761, 54.728981>,  <39.843159, 38.546753, 54.690582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.729767, 38.754761, 54.728981>,  <39.540779, 39.101440, 54.792980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729767, 38.754761, 54.728981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828752, 0.498665, -0.253975,
		0.299905, -0.012601, 0.953886,
		0.472469, -0.866703, -0.159996,
		39.871506, 38.494751, 54.680981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
