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
	<-0.334571, 4.329446, 3.528762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.138851, 4.106140, 3.260755>,  <-0.021419, 3.972157, 3.099950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.138851, 4.106140, 3.260755>,  <-0.334571, 4.329446, 3.528762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.138851, 4.106140, 3.260755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697436, -0.210783, 0.684948,
		-0.523611, -0.802441, 0.286218,
		0.489301, -0.558265, -0.670019,
		0.007939, 3.938661, 3.059749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.286660, 3.560092, 3.702375>,  <-0.334571, 4.329446, 3.528762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.286660, 3.560092, 3.702375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.019466, 3.707249, 3.491114>,  <0.203142, 3.795543, 3.364357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.019466, 3.707249, 3.491114>,  <-0.286660, 3.560092, 3.702375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.019466, 3.707249, 3.491114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635925, -0.305391, 0.708756,
		0.099452, -0.878289, -0.467672,
		0.765316, 0.367892, -0.528154,
		0.249061, 3.817616, 3.332667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.209679, 3.050120, 3.522989>,  <-0.286660, 3.560092, 3.702375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.209679, 3.050120, 3.522989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383404, 3.405380, 3.583072>,  <0.487639, 3.618536, 3.619122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383404, 3.405380, 3.583072>,  <0.209679, 3.050120, 3.522989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.383404, 3.405380, 3.583072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579317, -0.403107, 0.708447,
		0.689756, -0.220670, -0.689595,
		0.434313, 0.888150, 0.150207,
		0.513698, 3.671825, 3.628134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.866434, 2.846282, 3.656435>,  <0.209679, 3.050120, 3.522989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.866434, 2.846282, 3.656435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814754, 3.204277, 3.827224>,  <0.783747, 3.419074, 3.929697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814754, 3.204277, 3.827224>,  <0.866434, 2.846282, 3.656435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.814754, 3.204277, 3.827224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558864, -0.289963, 0.776912,
		0.819133, 0.338995, -0.462713,
		-0.129200, 0.894988, 0.426971,
		0.775995, 3.472774, 3.955315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478218, 3.014897, 3.844182>,  <0.866434, 2.846282, 3.656435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478218, 3.014897, 3.844182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242317, 3.239231, 4.076615>,  <1.100777, 3.373832, 4.216075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242317, 3.239231, 4.076615>,  <1.478218, 3.014897, 3.844182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.242317, 3.239231, 4.076615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547354, -0.251470, 0.798227,
		0.593799, 0.788814, -0.158671,
		-0.589751, 0.560835, 0.581083,
		1.065392, 3.407482, 4.250940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.945669, 3.385538, 4.250685>,  <1.478218, 3.014897, 3.844182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.945669, 3.385538, 4.250685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.586617, 3.378098, 4.426827>,  <1.371185, 3.373633, 4.532513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.586617, 3.378098, 4.426827>,  <1.945669, 3.385538, 4.250685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.586617, 3.378098, 4.426827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415509, -0.368963, 0.831396,
		0.147011, 0.929258, 0.338921,
		-0.897630, -0.018600, 0.440357,
		1.317327, 3.372517, 4.558935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.151941, 3.723806, 4.848404>,  <1.945669, 3.385538, 4.250685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.151941, 3.723806, 4.848404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.806133, 3.532040, 4.908760>,  <1.598649, 3.416980, 4.944973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.806133, 3.532040, 4.908760>,  <2.151941, 3.723806, 4.848404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.806133, 3.532040, 4.908760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272480, -0.194800, 0.942235,
		-0.422329, 0.855695, 0.299040,
		-0.864519, -0.479415, 0.150890,
		1.546777, 3.388215, 4.954027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.838278, 3.950625, 5.563775>,  <2.151941, 3.723806, 4.848404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.838278, 3.950625, 5.563775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718918, 3.582600, 5.462234>,  <1.647302, 3.361784, 5.401310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718918, 3.582600, 5.462234>,  <1.838278, 3.950625, 5.563775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718918, 3.582600, 5.462234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023037, -0.272834, 0.961785,
		-0.954162, 0.281150, 0.102609,
		-0.298401, -0.920063, -0.253851,
		1.629397, 3.306581, 5.386079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.391391, 2.592964, 1.158203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.045311, 2.392502, 1.151599>,  <1.837663, 2.272225, 1.147636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.045311, 2.392502, 1.151599>,  <2.391391, 2.592964, 1.158203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.045311, 2.392502, 1.151599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281627, 0.512919, -0.810925,
		0.414866, -0.696964, -0.584917,
		-0.865201, -0.501154, -0.016509,
		1.785751, 2.242155, 1.146646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.321425, 2.318045, 0.485391>,  <2.391391, 2.592964, 1.158203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.321425, 2.318045, 0.485391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993729, 2.412401, 0.694465>,  <1.797111, 2.469015, 0.819909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993729, 2.412401, 0.694465>,  <2.321425, 2.318045, 0.485391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993729, 2.412401, 0.694465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267692, 0.648754, -0.712362,
		-0.507133, -0.723515, -0.468340,
		-0.819242, 0.235891, 0.522684,
		1.747956, 2.483169, 0.851270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.753889, 2.131138, 0.068228>,  <2.321425, 2.318045, 0.485391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.753889, 2.131138, 0.068228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.679649, 2.428228, 0.325572>,  <1.635105, 2.606483, 0.479978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.679649, 2.428228, 0.325572>,  <1.753889, 2.131138, 0.068228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.679649, 2.428228, 0.325572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418807, 0.532497, -0.735560,
		-0.888906, -0.405963, 0.212227,
		-0.185600, 0.742726, 0.643359,
		1.623969, 2.651046, 0.518580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.965655, 2.288755, 0.219493>,  <1.753889, 2.131138, 0.068228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.965655, 2.288755, 0.219493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.165604, 2.630665, 0.275335>,  <1.285573, 2.835811, 0.308841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.165604, 2.630665, 0.275335>,  <0.965655, 2.288755, 0.219493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.165604, 2.630665, 0.275335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504659, 0.418455, -0.755126,
		-0.703881, 0.307011, 0.640543,
		0.499871, 0.854774, 0.139607,
		1.315565, 2.887097, 0.317218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.458537, 2.748764, 0.172200>,  <0.965655, 2.288755, 0.219493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.458537, 2.748764, 0.172200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.801270, 2.940580, 0.096430>,  <1.006909, 3.055670, 0.050969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.801270, 2.940580, 0.096430>,  <0.458537, 2.748764, 0.172200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.801270, 2.940580, 0.096430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462772, 0.553271, -0.692628,
		-0.227341, 0.681124, 0.695978,
		0.856830, 0.479542, -0.189424,
		1.058319, 3.084443, 0.039603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.248853, 3.401434, 0.254994>,  <0.458537, 2.748764, 0.172200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.248853, 3.401434, 0.254994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.579834, 3.393169, 0.030532>,  <0.778422, 3.388211, -0.104146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.579834, 3.393169, 0.030532>,  <0.248853, 3.401434, 0.254994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.579834, 3.393169, 0.030532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446687, 0.581359, -0.680068,
		0.340285, 0.813385, 0.471818,
		0.827452, -0.020662, -0.561156,
		0.828070, 3.386971, -0.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.320442, 4.118019, -0.041545>,  <0.248853, 3.401434, 0.254994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.320442, 4.118019, -0.041545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562050, 3.883961, -0.257977>,  <0.707014, 3.743526, -0.387836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562050, 3.883961, -0.257977>,  <0.320442, 4.118019, -0.041545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.562050, 3.883961, -0.257977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349178, 0.415987, -0.839660,
		0.716405, 0.696104, 0.046945,
		0.604019, -0.585144, -0.541079,
		0.743256, 3.708417, -0.420301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.541932, 4.583981, -0.442864>,  <0.320442, 4.118019, -0.041545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.541932, 4.583981, -0.442864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600319, 4.231745, -0.623199>,  <0.635351, 4.020403, -0.731401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600319, 4.231745, -0.623199>,  <0.541932, 4.583981, -0.442864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.600319, 4.231745, -0.623199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406014, 0.362246, -0.839006,
		0.902134, 0.305515, -0.304655,
		0.145968, -0.880590, -0.450838,
		0.644109, 3.967568, -0.758451>
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
