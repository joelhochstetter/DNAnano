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
	<0.949974, 3.431635, 2.876451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.611118, 3.639355, 2.921501>,  <0.407805, 3.763987, 2.948531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.611118, 3.639355, 2.921501>,  <0.949974, 3.431635, 2.876451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.611118, 3.639355, 2.921501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074031, -0.094539, 0.992765,
		0.526190, 0.849347, 0.041643,
		-0.847139, 0.519300, 0.112624,
		0.356977, 3.795145, 2.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.087127, 4.004057, 3.376627>,  <0.949974, 3.431635, 2.876451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.087127, 4.004057, 3.376627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.738562, 3.809814, 3.348846>,  <0.529422, 3.693269, 3.332178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.738562, 3.809814, 3.348846>,  <1.087127, 4.004057, 3.376627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.738562, 3.809814, 3.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138450, -0.379292, 0.914860,
		-0.470606, 0.787606, 0.397752,
		-0.871414, -0.485607, -0.069453,
		0.477138, 3.664132, 3.328011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.587283, 4.274414, 3.905646>,  <1.087127, 4.004057, 3.376627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.587283, 4.274414, 3.905646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.555048, 3.888542, 3.805328>,  <0.535707, 3.657019, 3.745138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.555048, 3.888542, 3.805328>,  <0.587283, 4.274414, 3.905646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.555048, 3.888542, 3.805328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172864, -0.261327, 0.949645,
		-0.981643, 0.033176, 0.187818,
		-0.080587, -0.964680, -0.250795,
		0.530872, 3.599138, 3.730090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.241312, 3.829449, 4.401633>,  <0.587283, 4.274414, 3.905646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.241312, 3.829449, 4.401633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.568287, 3.641945, 4.267731>,  <0.764472, 3.529443, 4.187389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.568287, 3.641945, 4.267731>,  <0.241312, 3.829449, 4.401633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.568287, 3.641945, 4.267731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317647, -0.117961, 0.940843,
		-0.480518, -0.875413, 0.052475,
		0.817437, -0.468761, -0.334755,
		0.813518, 3.501317, 4.167304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.239572, 3.204775, 4.747330>,  <0.241312, 3.829449, 4.401633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.239572, 3.204775, 4.747330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.605633, 3.319275, 4.633801>,  <0.825269, 3.387975, 4.565682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.605633, 3.319275, 4.633801>,  <0.239572, 3.204775, 4.747330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.605633, 3.319275, 4.633801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322465, -0.097348, 0.941562,
		0.241893, -0.953197, -0.181395,
		0.915153, 0.286251, -0.283825,
		0.880179, 3.405150, 4.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704406, 2.738077, 5.092187>,  <0.239572, 3.204775, 4.747330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704406, 2.738077, 5.092187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907391, 3.076103, 5.024841>,  <1.029182, 3.278919, 4.984434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907391, 3.076103, 5.024841>,  <0.704406, 2.738077, 5.092187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.907391, 3.076103, 5.024841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385789, -0.048107, 0.921332,
		0.770486, -0.532495, -0.350429,
		0.507462, 0.845065, -0.168365,
		1.059629, 3.329623, 4.974332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.352516, 2.573903, 5.432067>,  <0.704406, 2.738077, 5.092187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.352516, 2.573903, 5.432067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338140, 2.968506, 5.368179>,  <1.329515, 3.205268, 5.329846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338140, 2.968506, 5.368179>,  <1.352516, 2.573903, 5.432067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.338140, 2.968506, 5.368179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377479, 0.161384, 0.911847,
		0.925321, -0.027521, -0.378185,
		-0.035938, 0.986508, -0.159721,
		1.327359, 3.264458, 5.320263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.035092, 2.976578, 5.601578>,  <1.352516, 2.573903, 5.432067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.035092, 2.976578, 5.601578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.722479, 3.225677, 5.616489>,  <1.534911, 3.375138, 5.625436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.722479, 3.225677, 5.616489>,  <2.035092, 2.976578, 5.601578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.722479, 3.225677, 5.616489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260704, 0.271721, 0.926391,
		0.566781, 0.733723, -0.374713,
		-0.781532, 0.622750, 0.037278,
		1.488019, 3.412503, 5.627673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.690704, 4.324996, 2.452615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.334294, 4.327873, 2.271057>,  <1.120448, 4.329599, 2.162122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.334294, 4.327873, 2.271057>,  <1.690704, 4.324996, 2.452615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.334294, 4.327873, 2.271057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437045, -0.256749, -0.862016,
		-0.122735, -0.966452, 0.225628,
		-0.891026, 0.007190, -0.453894,
		1.066986, 4.330031, 2.134889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.507330, 3.649962, 2.099405>,  <1.690704, 4.324996, 2.452615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.507330, 3.649962, 2.099405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369381, 3.985252, 1.930435>,  <1.286612, 4.186426, 1.829053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369381, 3.985252, 1.930435>,  <1.507330, 3.649962, 2.099405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369381, 3.985252, 1.930435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468378, -0.236326, -0.851335,
		-0.813440, -0.491456, -0.311104,
		-0.344872, 0.838225, -0.422424,
		1.265919, 4.236720, 1.803708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.092547, 3.456214, 1.517828>,  <1.507330, 3.649962, 2.099405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.092547, 3.456214, 1.517828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.231410, 3.829376, 1.479523>,  <1.314728, 4.053273, 1.456540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.231410, 3.829376, 1.479523>,  <1.092547, 3.456214, 1.517828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.231410, 3.829376, 1.479523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392824, -0.237379, -0.888448,
		-0.851570, 0.270813, -0.448875,
		0.347157, 0.932905, -0.095763,
		1.335557, 4.109248, 1.450794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.726487, 3.808786, 0.924520>,  <1.092547, 3.456214, 1.517828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.726487, 3.808786, 0.924520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105073, 3.904732, 1.010933>,  <1.332224, 3.962299, 1.062780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105073, 3.904732, 1.010933>,  <0.726487, 3.808786, 0.924520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105073, 3.904732, 1.010933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263345, -0.186692, -0.946465,
		-0.186692, 0.952686, -0.239864,
		0.946465, 0.239864, 0.216032,
		1.389012, 3.976691, 1.075742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.790079, 4.258052, 0.445804>,  <0.726487, 3.808786, 0.924520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.790079, 4.258052, 0.445804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.134637, 4.083847, 0.550362>,  <1.341372, 3.979324, 0.613096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.134637, 4.083847, 0.550362>,  <0.790079, 4.258052, 0.445804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.134637, 4.083847, 0.550362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219008, -0.145872, -0.964757,
		0.458294, 0.888285, -0.030273,
		0.861396, -0.435512, 0.261394,
		1.393056, 3.953193, 0.628780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.453628, 4.523006, 0.203108>,  <0.790079, 4.258052, 0.445804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.453628, 4.523006, 0.203108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.473167, 4.124016, 0.223717>,  <1.484890, 3.884621, 0.236082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.473167, 4.124016, 0.223717>,  <1.453628, 4.523006, 0.203108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.473167, 4.124016, 0.223717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004875, -0.051820, -0.998644,
		0.998794, 0.048529, -0.007394,
		0.048847, -0.997477, 0.051521,
		1.487821, 3.824773, 0.239173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.928177, 4.297563, -0.309408>,  <1.453628, 4.523006, 0.203108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.928177, 4.297563, -0.309408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.660333, 4.010078, -0.234489>,  <1.499627, 3.837588, -0.189538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.660333, 4.010078, -0.234489>,  <1.928177, 4.297563, -0.309408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.660333, 4.010078, -0.234489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192907, -0.075225, -0.978329,
		0.717224, -0.691228, -0.088273,
		-0.669609, -0.718710, 0.187296,
		1.459450, 3.794466, -0.178301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012674, 3.894351, -0.841198>,  <1.928177, 4.297563, -0.309408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012674, 3.894351, -0.841198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.685011, 3.721451, -0.690392>,  <1.488413, 3.617711, -0.599908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.685011, 3.721451, -0.690392>,  <2.012674, 3.894351, -0.841198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.685011, 3.721451, -0.690392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293909, -0.248127, -0.923066,
		0.492543, -0.866945, 0.076213,
		-0.819157, -0.432250, 0.377016,
		1.439264, 3.591776, -0.577287>
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
