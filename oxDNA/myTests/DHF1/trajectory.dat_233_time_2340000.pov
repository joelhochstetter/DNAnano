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
	<1.831940, 3.744195, 6.246949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.888222, 4.055496, 6.002155>,  <1.921991, 4.242277, 5.855279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.888222, 4.055496, 6.002155>,  <1.831940, 3.744195, 6.246949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.888222, 4.055496, 6.002155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439429, -0.603003, -0.665800,
		-0.887189, -0.175244, -0.426832,
		0.140703, 0.778253, -0.611985,
		1.930433, 4.288972, 5.818560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.515315, 3.495069, 5.685112>,  <1.831940, 3.744195, 6.246949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.515315, 3.495069, 5.685112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716736, 3.805634, 5.533524>,  <1.837588, 3.991972, 5.442571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716736, 3.805634, 5.533524>,  <1.515315, 3.495069, 5.685112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.716736, 3.805634, 5.533524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021826, -0.449933, -0.892795,
		-0.863689, 0.441298, -0.243511,
		0.503552, 0.776412, -0.378971,
		1.867802, 4.038557, 5.419832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216792, 3.673311, 5.039834>,  <1.515315, 3.495069, 5.685112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216792, 3.673311, 5.039834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595993, 3.799042, 5.019882>,  <1.823514, 3.874480, 5.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595993, 3.799042, 5.019882>,  <1.216792, 3.673311, 5.039834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595993, 3.799042, 5.019882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082109, -0.392971, -0.915878,
		-0.307485, 0.864160, -0.398347,
		0.948004, 0.314327, -0.049878,
		1.880394, 3.893340, 5.004919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.315178, 4.007047, 4.349530>,  <1.216792, 3.673311, 5.039834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.315178, 4.007047, 4.349530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658802, 3.858627, 4.490578>,  <1.864976, 3.769576, 4.575207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658802, 3.858627, 4.490578>,  <1.315178, 4.007047, 4.349530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.658802, 3.858627, 4.490578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211875, -0.369343, -0.904818,
		0.465968, 0.852003, -0.238672,
		0.859059, -0.371048, 0.352620,
		1.916520, 3.747313, 4.596364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.892806, 4.311028, 3.883950>,  <1.315178, 4.007047, 4.349530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.892806, 4.311028, 3.883950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019379, 3.981606, 4.072258>,  <2.095322, 3.783952, 4.185243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019379, 3.981606, 4.072258>,  <1.892806, 4.311028, 3.883950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019379, 3.981606, 4.072258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333760, -0.367884, -0.867909,
		0.887961, 0.431759, 0.158460,
		0.316432, -0.823557, 0.470770,
		2.114308, 3.734539, 4.213489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.584213, 4.244256, 3.713460>,  <1.892806, 4.311028, 3.883950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.584213, 4.244256, 3.713460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471062, 3.873474, 3.812035>,  <2.403171, 3.651005, 3.871180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471062, 3.873474, 3.812035>,  <2.584213, 4.244256, 3.713460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.471062, 3.873474, 3.812035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290974, -0.327758, -0.898838,
		0.913955, -0.182555, 0.362436,
		-0.282879, -0.926956, 0.246437,
		2.386198, 3.595387, 3.885966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117054, 3.845027, 3.521594>,  <2.584213, 4.244256, 3.713460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117054, 3.845027, 3.521594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.825504, 3.574249, 3.562561>,  <2.650575, 3.411783, 3.587141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.825504, 3.574249, 3.562561>,  <3.117054, 3.845027, 3.521594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.825504, 3.574249, 3.562561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223267, -0.376428, -0.899141,
		0.647221, -0.632493, 0.425508,
		-0.728873, -0.676945, 0.102417,
		2.606842, 3.371166, 3.593286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.417529, 3.131732, 3.464148>,  <3.117054, 3.845027, 3.521594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.417529, 3.131732, 3.464148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.030533, 3.095634, 3.369644>,  <2.798335, 3.073976, 3.312942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.030533, 3.095634, 3.369644>,  <3.417529, 3.131732, 3.464148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.030533, 3.095634, 3.369644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249908, -0.484625, -0.838263,
		-0.038848, -0.870055, 0.491423,
		-0.967490, -0.090245, -0.236260,
		2.740286, 3.068561, 3.298766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.632523, 3.358618, 1.295749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.526209, 3.744209, 1.291679>,  <2.462420, 3.975564, 1.289238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.526209, 3.744209, 1.291679>,  <2.632523, 3.358618, 1.295749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.526209, 3.744209, 1.291679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398808, -0.100338, 0.911529,
		0.877673, 0.246328, 0.411111,
		-0.265785, 0.963979, -0.010174,
		2.446473, 4.033403, 1.288627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.862359, 2.945051, 1.924108>,  <2.632523, 3.358618, 1.295749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.862359, 2.945051, 1.924108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576408, 2.680862, 2.015961>,  <2.404838, 2.522349, 2.071072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576408, 2.680862, 2.015961>,  <2.862359, 2.945051, 1.924108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.576408, 2.680862, 2.015961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157722, 0.472238, 0.867246,
		-0.681231, 0.583755, -0.441762,
		-0.714876, -0.660471, 0.229632,
		2.361946, 2.482721, 2.084850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130481, 3.287412, 2.029740>,  <2.862359, 2.945051, 1.924108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130481, 3.287412, 2.029740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.211531, 2.956207, 2.238869>,  <2.260160, 2.757485, 2.364346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.211531, 2.956207, 2.238869>,  <2.130481, 3.287412, 2.029740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.211531, 2.956207, 2.238869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192960, 0.489668, 0.850289,
		-0.960057, -0.273171, -0.060556,
		0.202623, -0.828011, 0.522821,
		2.272317, 2.707804, 2.395715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.776610, 3.340608, 2.601487>,  <2.130481, 3.287412, 2.029740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.776610, 3.340608, 2.601487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046280, 3.071800, 2.724045>,  <2.208082, 2.910516, 2.797580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046280, 3.071800, 2.724045>,  <1.776610, 3.340608, 2.601487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.046280, 3.071800, 2.724045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051876, 0.370738, 0.927288,
		-0.736747, -0.641049, 0.215081,
		0.674175, -0.672019, 0.306395,
		2.248533, 2.870194, 2.815963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.466518, 2.967192, 3.161580>,  <1.776610, 3.340608, 2.601487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.466518, 2.967192, 3.161580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863951, 2.954651, 3.205055>,  <2.102410, 2.947126, 3.231140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863951, 2.954651, 3.205055>,  <1.466518, 2.967192, 3.161580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863951, 2.954651, 3.205055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089304, 0.372342, 0.923789,
		-0.069432, -0.927566, 0.367152,
		0.993581, -0.031353, 0.108688,
		2.162025, 2.945245, 3.237661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636238, 2.551811, 3.760834>,  <1.466518, 2.967192, 3.161580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636238, 2.551811, 3.760834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949963, 2.795532, 3.714172>,  <2.138197, 2.941765, 3.686176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949963, 2.795532, 3.714172>,  <1.636238, 2.551811, 3.760834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.949963, 2.795532, 3.714172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122907, 0.336926, 0.933475,
		0.608072, -0.717796, 0.339142,
		0.784311, 0.609303, -0.116653,
		2.185256, 2.978323, 3.679177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.182203, 2.354586, 4.314591>,  <1.636238, 2.551811, 3.760834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.182203, 2.354586, 4.314591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179060, 2.733910, 4.187691>,  <2.177174, 2.961504, 4.111550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179060, 2.733910, 4.187691>,  <2.182203, 2.354586, 4.314591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.179060, 2.733910, 4.187691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111145, 0.316124, 0.942185,
		0.993773, -0.027857, -0.107884,
		-0.007859, 0.948309, -0.317251,
		2.176702, 3.018402, 4.092515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.717984, 2.665097, 4.665667>,  <2.182203, 2.354586, 4.314591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.717984, 2.665097, 4.665667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493717, 2.973770, 4.545563>,  <2.359157, 3.158974, 4.473500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493717, 2.973770, 4.545563>,  <2.717984, 2.665097, 4.665667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493717, 2.973770, 4.545563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133065, 0.441870, 0.887155,
		0.817279, 0.457445, -0.350427,
		-0.560668, 0.771683, -0.300261,
		2.325517, 3.205275, 4.455484>
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
