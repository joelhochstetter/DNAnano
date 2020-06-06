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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.170422, 31.994751, 22.990871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132431, 32.391380, 22.955639>,  <43.109634, 32.629356, 22.934500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132431, 32.391380, 22.955639>,  <43.170422, 31.994751, 22.990871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132431, 32.391380, 22.955639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889241, -0.044738, 0.455247,
		0.447470, 0.121567, 0.885997,
		-0.094981, 0.991575, -0.088084,
		43.103935, 32.688854, 22.929214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757404, 32.180969, 23.520245>,  <43.170422, 31.994751, 22.990871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757404, 32.180969, 23.520245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731194, 32.451260, 23.226551>,  <42.715469, 32.613434, 23.050335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731194, 32.451260, 23.226551>,  <42.757404, 32.180969, 23.520245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731194, 32.451260, 23.226551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992009, 0.035389, 0.121098,
		0.107813, 0.736301, 0.668010,
		-0.065524, 0.675728, -0.734233,
		42.711536, 32.653976, 23.006281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584763, 32.481739, 24.260674>,  <42.757404, 32.180969, 23.520245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584763, 32.481739, 24.260674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884445, 32.298031, 24.069775>,  <43.064255, 32.187805, 23.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884445, 32.298031, 24.069775>,  <42.584763, 32.481739, 24.260674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884445, 32.298031, 24.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209255, -0.519514, 0.828443,
		-0.628418, -0.720537, -0.293116,
		0.749202, -0.459272, -0.477248,
		43.109207, 32.160248, 23.926600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327324, 32.899666, 23.665010>,  <42.584763, 32.481739, 24.260674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327324, 32.899666, 23.665010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180389, 32.725620, 23.336197>,  <42.092228, 32.621193, 23.138908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180389, 32.725620, 23.336197>,  <42.327324, 32.899666, 23.665010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180389, 32.725620, 23.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638502, -0.760631, 0.117283,
		-0.676296, -0.481788, 0.557229,
		-0.367340, -0.435110, -0.822035,
		42.070187, 32.595089, 23.089586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603580, 32.856293, 24.043564>,  <42.327324, 32.899666, 23.665010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603580, 32.856293, 24.043564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571362, 33.241035, 24.148132>,  <41.552029, 33.471882, 24.210873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571362, 33.241035, 24.148132>,  <41.603580, 32.856293, 24.043564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571362, 33.241035, 24.148132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985811, -0.038123, -0.163473,
		-0.147272, -0.270879, 0.951281,
		-0.080547, 0.961858, 0.261421,
		41.547199, 33.529594, 24.226559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989498, 32.349586, 24.280890>,  <41.603580, 32.856293, 24.043564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989498, 32.349586, 24.280890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608574, 32.412975, 24.385193>,  <40.380020, 32.451008, 24.447775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608574, 32.412975, 24.385193>,  <40.989498, 32.349586, 24.280890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608574, 32.412975, 24.385193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006659, -0.865155, 0.501461,
		0.305063, 0.475809, 0.824950,
		-0.952309, 0.158470, 0.260758,
		40.322880, 32.460518, 24.463421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906658, 32.196068, 24.974827>,  <40.989498, 32.349586, 24.280890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906658, 32.196068, 24.974827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548004, 32.167744, 24.799999>,  <40.332813, 32.150749, 24.695103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548004, 32.167744, 24.799999>,  <40.906658, 32.196068, 24.974827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548004, 32.167744, 24.799999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064402, -0.955777, 0.286955,
		-0.438060, 0.285442, 0.852424,
		-0.896636, -0.070806, -0.437070,
		40.279015, 32.146503, 24.668879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453167, 31.797018, 25.450626>,  <40.906658, 32.196068, 24.974827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453167, 31.797018, 25.450626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294281, 31.774597, 25.084221>,  <40.198948, 31.761145, 24.864378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294281, 31.774597, 25.084221>,  <40.453167, 31.797018, 25.450626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294281, 31.774597, 25.084221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229692, -0.960293, 0.158364,
		-0.888517, 0.273305, 0.368568,
		-0.397215, -0.056052, -0.916012,
		40.175117, 31.757782, 24.809418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716873, 31.493479, 25.503466>,  <40.453167, 31.797018, 25.450626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716873, 31.493479, 25.503466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850082, 31.433773, 25.131054>,  <39.930008, 31.397949, 24.907606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850082, 31.433773, 25.131054>,  <39.716873, 31.493479, 25.503466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850082, 31.433773, 25.131054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128465, -0.985366, 0.112025,
		-0.934127, 0.082298, -0.347324,
		0.333022, -0.149264, -0.931030,
		39.949989, 31.388994, 24.851746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362671, 30.880991, 25.289219>,  <39.716873, 31.493479, 25.503466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362671, 30.880991, 25.289219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655842, 30.877274, 25.017120>,  <39.831745, 30.875044, 24.853861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655842, 30.877274, 25.017120>,  <39.362671, 30.880991, 25.289219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655842, 30.877274, 25.017120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059781, -0.996918, -0.050793,
		-0.677677, 0.077893, -0.731223,
		0.732926, -0.009292, -0.680245,
		39.875721, 30.874487, 24.813047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051548, 30.432793, 24.853537>,  <39.362671, 30.880991, 25.289219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051548, 30.432793, 24.853537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443264, 30.465549, 24.779465>,  <39.678291, 30.485203, 24.735022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443264, 30.465549, 24.779465>,  <39.051548, 30.432793, 24.853537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443264, 30.465549, 24.779465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075456, -0.996283, -0.041546,
		-0.187894, 0.026712, -0.981826,
		0.979287, 0.081890, -0.185180,
		39.737049, 30.490116, 24.723911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117424, 30.106569, 24.191286>,  <39.051548, 30.432793, 24.853537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117424, 30.106569, 24.191286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468784, 30.090096, 24.381748>,  <39.679600, 30.080212, 24.496025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468784, 30.090096, 24.381748>,  <39.117424, 30.106569, 24.191286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468784, 30.090096, 24.381748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014162, -0.993600, -0.112064,
		0.477723, 0.105180, -0.872191,
		0.878396, -0.041184, 0.476155,
		39.732304, 30.077740, 24.524595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542648, 29.634592, 23.803169>,  <39.117424, 30.106569, 24.191286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542648, 29.634592, 23.803169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731495, 29.663429, 24.154602>,  <39.844803, 29.680733, 24.365461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731495, 29.663429, 24.154602>,  <39.542648, 29.634592, 23.803169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731495, 29.663429, 24.154602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191574, -0.981222, -0.022427,
		0.860468, 0.178902, -0.477062,
		0.472116, 0.072095, 0.878583,
		39.873131, 29.685059, 24.418177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259804, 29.273748, 23.727211>,  <39.542648, 29.634592, 23.803169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259804, 29.273748, 23.727211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147648, 29.297024, 24.110458>,  <40.080353, 29.310989, 24.340408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147648, 29.297024, 24.110458>,  <40.259804, 29.273748, 23.727211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147648, 29.297024, 24.110458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021630, -0.997524, 0.066910,
		0.959642, 0.039485, 0.278438,
		-0.280391, 0.058187, 0.958121,
		40.063530, 29.314480, 24.397894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718464, 28.877510, 24.124943>,  <40.259804, 29.273748, 23.727211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718464, 28.877510, 24.124943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386654, 28.904850, 24.346653>,  <40.187569, 28.921255, 24.479679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386654, 28.904850, 24.346653>,  <40.718464, 28.877510, 24.124943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386654, 28.904850, 24.346653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015404, -0.989304, 0.145052,
		0.558262, 0.128862, 0.819597,
		-0.829522, 0.068352, 0.554276,
		40.137798, 28.925356, 24.512936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782257, 28.412964, 24.777472>,  <40.718464, 28.877510, 24.124943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782257, 28.412964, 24.777472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392597, 28.502151, 24.762955>,  <40.158802, 28.555664, 24.754246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392597, 28.502151, 24.762955>,  <40.782257, 28.412964, 24.777472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392597, 28.502151, 24.762955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225164, -0.945371, 0.235742,
		0.018255, 0.237819, 0.971138,
		-0.974150, 0.222968, -0.036290,
		40.100353, 28.569042, 24.752068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511459, 28.074415, 25.349682>,  <40.782257, 28.412964, 24.777472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511459, 28.074415, 25.349682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219345, 28.117359, 25.079819>,  <40.044079, 28.143126, 24.917900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219345, 28.117359, 25.079819>,  <40.511459, 28.074415, 25.349682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219345, 28.117359, 25.079819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284225, -0.945790, 0.157152,
		-0.621213, 0.306519, 0.721207,
		-0.730281, 0.107360, -0.674658,
		40.000259, 28.149567, 24.877420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916843, 27.779242, 25.695337>,  <40.511459, 28.074415, 25.349682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916843, 27.779242, 25.695337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842907, 27.792702, 25.302460>,  <39.798546, 27.800777, 25.066734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842907, 27.792702, 25.302460>,  <39.916843, 27.779242, 25.695337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842907, 27.792702, 25.302460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524226, -0.848732, 0.069575,
		-0.831277, 0.527751, 0.174522,
		-0.184841, 0.033653, -0.982192,
		39.787457, 27.802797, 25.007803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160885, 27.631390, 25.602087>,  <39.916843, 27.779242, 25.695337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160885, 27.631390, 25.602087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358261, 27.528042, 25.269878>,  <39.476685, 27.466034, 25.070553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358261, 27.528042, 25.269878>,  <39.160885, 27.631390, 25.602087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358261, 27.528042, 25.269878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479760, -0.877316, -0.012116,
		-0.725499, 0.404429, -0.556856,
		0.493439, -0.258368, -0.830521,
		39.506294, 27.450531, 25.020721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626644, 27.371368, 25.186075>,  <39.160885, 27.631390, 25.602087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626644, 27.371368, 25.186075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982082, 27.250740, 25.047832>,  <39.195347, 27.178364, 24.964886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982082, 27.250740, 25.047832>,  <38.626644, 27.371368, 25.186075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982082, 27.250740, 25.047832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378808, -0.907359, -0.182221,
		-0.258639, 0.292840, -0.920517,
		0.888601, -0.301570, -0.345608,
		39.248661, 27.160269, 24.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492764, 26.934988, 24.624754>,  <38.626644, 27.371368, 25.186075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492764, 26.934988, 24.624754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873604, 26.821877, 24.671307>,  <39.102108, 26.754009, 24.699238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873604, 26.821877, 24.671307>,  <38.492764, 26.934988, 24.624754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873604, 26.821877, 24.671307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291651, -0.954130, 0.067646,
		0.091916, -0.098349, -0.990898,
		0.952098, -0.282779, 0.116383,
		39.159233, 26.737043, 24.706223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608467, 26.442013, 24.133133>,  <38.492764, 26.934988, 24.624754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608467, 26.442013, 24.133133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910404, 26.362896, 24.383282>,  <39.091568, 26.315426, 24.533371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910404, 26.362896, 24.383282>,  <38.608467, 26.442013, 24.133133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910404, 26.362896, 24.383282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259532, -0.965703, 0.007830,
		0.602373, -0.168214, -0.780288,
		0.754844, -0.197793, 0.625371,
		39.136856, 26.303558, 24.570892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860981, 26.016489, 23.792160>,  <38.608467, 26.442013, 24.133133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860981, 26.016489, 23.792160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956669, 25.973999, 24.178215>,  <39.014080, 25.948505, 24.409847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956669, 25.973999, 24.178215>,  <38.860981, 26.016489, 23.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956669, 25.973999, 24.178215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268847, -0.962381, -0.039284,
		0.933003, -0.250077, -0.258779,
		0.239220, -0.106224, 0.965138,
		39.028435, 25.942131, 24.467756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182957, 25.418665, 23.807495>,  <38.860981, 26.016489, 23.792160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182957, 25.418665, 23.807495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088402, 25.477943, 24.191612>,  <39.031670, 25.513512, 24.422083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088402, 25.477943, 24.191612>,  <39.182957, 25.418665, 23.807495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088402, 25.477943, 24.191612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260052, -0.961896, 0.084430,
		0.936213, -0.229768, 0.265919,
		-0.236387, 0.148197, 0.960291,
		39.017487, 25.522402, 24.479700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470963, 24.840904, 24.122238>,  <39.182957, 25.418665, 23.807495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470963, 24.840904, 24.122238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188496, 24.970711, 24.373959>,  <39.019016, 25.048595, 24.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188496, 24.970711, 24.373959>,  <39.470963, 24.840904, 24.122238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188496, 24.970711, 24.373959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333197, -0.936530, 0.109051,
		0.624746, -0.132673, 0.769474,
		-0.706167, 0.324516, 0.629299,
		38.976646, 25.068066, 24.562748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476929, 24.406237, 24.752323>,  <39.470963, 24.840904, 24.122238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476929, 24.406237, 24.752323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114555, 24.572144, 24.718266>,  <38.897129, 24.671688, 24.697830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114555, 24.572144, 24.718266>,  <39.476929, 24.406237, 24.752323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114555, 24.572144, 24.718266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420383, -0.905097, 0.063847,
		-0.050584, 0.093635, 0.994321,
		-0.905935, 0.414766, -0.085145,
		38.842773, 24.696573, 24.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054619, 23.978445, 25.185188>,  <39.476929, 24.406237, 24.752323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054619, 23.978445, 25.185188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816662, 24.195911, 24.948364>,  <38.673889, 24.326391, 24.806271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816662, 24.195911, 24.948364>,  <39.054619, 23.978445, 25.185188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816662, 24.195911, 24.948364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679929, -0.733211, 0.009898,
		-0.428722, 0.408446, 0.805834,
		-0.594889, 0.543667, -0.592058,
		38.638195, 24.359011, 24.770746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458530, 24.115393, 25.421230>,  <39.054619, 23.978445, 25.185188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458530, 24.115393, 25.421230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412148, 24.093563, 25.024529>,  <38.384319, 24.080465, 24.786507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412148, 24.093563, 25.024529>,  <38.458530, 24.115393, 25.421230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412148, 24.093563, 25.024529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634264, -0.764332, 0.116217,
		-0.764371, 0.642510, 0.054016,
		-0.115956, -0.054572, -0.991754,
		38.377361, 24.077190, 24.727003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742580, 24.138906, 25.182833>,  <38.458530, 24.115393, 25.421230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742580, 24.138906, 25.182833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964176, 23.929935, 24.923553>,  <38.097134, 23.804552, 24.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964176, 23.929935, 24.923553>,  <37.742580, 24.138906, 25.182833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964176, 23.929935, 24.923553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630499, -0.771726, 0.083124,
		-0.543657, 0.362639, -0.756921,
		0.553992, -0.522429, -0.648198,
		38.130375, 23.773207, 24.729094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320656, 23.905319, 24.754705>,  <37.742580, 24.138906, 25.182833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320656, 23.905319, 24.754705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632923, 23.662956, 24.693466>,  <37.820282, 23.517538, 24.656723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632923, 23.662956, 24.693466>,  <37.320656, 23.905319, 24.754705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632923, 23.662956, 24.693466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538345, -0.776412, 0.327671,
		-0.317407, -0.173381, -0.932305,
		0.780665, -0.605907, -0.153100,
		37.867123, 23.481184, 24.647535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049126, 23.370800, 24.299690>,  <37.320656, 23.905319, 24.754705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049126, 23.370800, 24.299690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371597, 23.239647, 24.496696>,  <37.565079, 23.160955, 24.614901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371597, 23.239647, 24.496696>,  <37.049126, 23.370800, 24.299690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371597, 23.239647, 24.496696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474679, -0.855336, 0.207559,
		0.353211, -0.401116, -0.845191,
		0.806177, -0.327883, 0.492515,
		37.613449, 23.141281, 24.644451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589333, 23.889738, 24.396008>,  <37.049126, 23.370800, 24.299690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589333, 23.889738, 24.396008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497749, 24.058514, 24.045113>,  <36.442799, 24.159779, 23.834576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497749, 24.058514, 24.045113>,  <36.589333, 23.889738, 24.396008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497749, 24.058514, 24.045113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829287, 0.387376, 0.402768,
		0.509765, 0.819699, 0.261216,
		-0.228960, 0.421940, -0.877236,
		36.429062, 24.185095, 23.781942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543633, 23.420908, 23.728315>,  <36.589333, 23.889738, 24.396008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543633, 23.420908, 23.728315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225471, 23.503918, 23.500538>,  <36.034576, 23.553724, 23.363871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225471, 23.503918, 23.500538>,  <36.543633, 23.420908, 23.728315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225471, 23.503918, 23.500538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096905, 0.971011, 0.218512,
		0.598284, 0.118623, -0.792455,
		-0.795403, 0.207525, -0.569445,
		35.986851, 23.566175, 23.329704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733440, 23.975428, 23.269342>,  <36.543633, 23.420908, 23.728315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733440, 23.975428, 23.269342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341518, 23.974937, 23.349327>,  <36.106365, 23.974644, 23.397318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341518, 23.974937, 23.349327>,  <36.733440, 23.975428, 23.269342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341518, 23.974937, 23.349327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058600, 0.954323, 0.292975,
		-0.191186, 0.298776, -0.934977,
		-0.979803, -0.001223, 0.199961,
		36.047577, 23.974571, 23.409315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411572, 24.519590, 22.882324>,  <36.733440, 23.975428, 23.269342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411572, 24.519590, 22.882324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153492, 24.464954, 23.183006>,  <35.998646, 24.432173, 23.363415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153492, 24.464954, 23.183006>,  <36.411572, 24.519590, 22.882324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153492, 24.464954, 23.183006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010598, 0.982194, 0.187569,
		-0.763941, 0.128986, -0.632263,
		-0.645199, -0.136591, 0.751706,
		35.959934, 24.423977, 23.408518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809334, 24.964882, 22.905828>,  <36.411572, 24.519590, 22.882324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809334, 24.964882, 22.905828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926231, 24.896599, 23.282223>,  <35.996368, 24.855629, 23.508059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926231, 24.896599, 23.282223>,  <35.809334, 24.964882, 22.905828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926231, 24.896599, 23.282223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261261, 0.960763, 0.093155,
		-0.919965, 0.218618, 0.325378,
		0.292245, -0.170708, 0.940984,
		36.013905, 24.845387, 23.564518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474422, 25.432980, 23.383932>,  <35.809334, 24.964882, 22.905828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474422, 25.432980, 23.383932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835381, 25.312698, 23.507393>,  <36.051956, 25.240530, 23.581470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835381, 25.312698, 23.507393>,  <35.474422, 25.432980, 23.383932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835381, 25.312698, 23.507393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280874, 0.953657, 0.107923,
		-0.326802, -0.010696, 0.945032,
		0.902391, -0.300704, 0.308653,
		36.106098, 25.222486, 23.599989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564003, 25.867342, 23.996559>,  <35.474422, 25.432980, 23.383932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564003, 25.867342, 23.996559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922386, 25.712685, 23.909130>,  <36.137417, 25.619890, 23.856672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922386, 25.712685, 23.909130>,  <35.564003, 25.867342, 23.996559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922386, 25.712685, 23.909130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416049, 0.902869, 0.108313,
		0.155463, -0.187980, 0.969791,
		0.895955, -0.386642, -0.218571,
		36.191174, 25.596691, 23.843559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985184, 26.151182, 24.554100>,  <35.564003, 25.867342, 23.996559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985184, 26.151182, 24.554100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190533, 26.042881, 24.228367>,  <36.313744, 25.977900, 24.032927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190533, 26.042881, 24.228367>,  <35.985184, 26.151182, 24.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190533, 26.042881, 24.228367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532162, 0.844882, 0.054573,
		0.673241, -0.461375, 0.577824,
		0.513372, -0.270755, -0.814335,
		36.344543, 25.961655, 23.984066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677799, 26.241430, 24.731968>,  <35.985184, 26.151182, 24.554100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677799, 26.241430, 24.731968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 26.291008, 24.337421>,  <36.608513, 26.320755, 24.100693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 26.291008, 24.337421>,  <36.677799, 26.241430, 24.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634495, 26.291008, 24.337421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437677, 0.896804, 0.064655,
		0.892591, -0.424711, -0.151334,
		-0.108258, 0.123946, -0.986366,
		36.602016, 26.328192, 24.041512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341312, 26.635185, 24.507853>,  <36.677799, 26.241430, 24.731968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341312, 26.635185, 24.507853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118145, 26.679516, 24.178867>,  <36.984245, 26.706114, 23.981476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118145, 26.679516, 24.178867>,  <37.341312, 26.635185, 24.507853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118145, 26.679516, 24.178867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287374, 0.955529, -0.066182,
		0.778554, -0.273279, -0.564952,
		-0.557915, 0.110826, -0.822465,
		36.950771, 26.712763, 23.932127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735561, 26.911415, 23.962538>,  <37.341312, 26.635185, 24.507853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735561, 26.911415, 23.962538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350616, 27.003159, 23.904232>,  <37.119648, 27.058205, 23.869249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350616, 27.003159, 23.904232>,  <37.735561, 26.911415, 23.962538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350616, 27.003159, 23.904232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248892, 0.959233, -0.133880,
		0.109114, -0.165121, -0.980219,
		-0.962365, 0.229361, -0.145763,
		37.061909, 27.071966, 23.860504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874054, 27.435333, 23.496395>,  <37.735561, 26.911415, 23.962538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874054, 27.435333, 23.496395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492523, 27.469250, 23.611649>,  <37.263603, 27.489599, 23.680799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492523, 27.469250, 23.611649>,  <37.874054, 27.435333, 23.496395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492523, 27.469250, 23.611649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083253, 0.996373, -0.017614,
		-0.288580, 0.007187, -0.957429,
		-0.953829, 0.084792, 0.288132,
		37.206375, 27.494688, 23.698088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472183, 27.915470, 22.993206>,  <37.874054, 27.435333, 23.496395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472183, 27.915470, 22.993206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280872, 27.912663, 23.344479>,  <37.166084, 27.910978, 23.555243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280872, 27.912663, 23.344479>,  <37.472183, 27.915470, 22.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280872, 27.912663, 23.344479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061145, 0.997808, -0.025324,
		-0.876076, -0.065808, -0.477660,
		-0.478280, -0.007021, 0.878179,
		37.137390, 27.910557, 23.607933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082153, 28.466560, 23.047098>,  <37.472183, 27.915470, 22.993206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082153, 28.466560, 23.047098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031937, 28.372517, 23.432629>,  <37.001808, 28.316090, 23.663948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031937, 28.372517, 23.432629>,  <37.082153, 28.466560, 23.047098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031937, 28.372517, 23.432629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086009, 0.970435, 0.225519,
		-0.988353, -0.054586, -0.142051,
		-0.125541, -0.235110, 0.963827,
		36.994274, 28.301983, 23.721777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592659, 28.918699, 23.227526>,  <37.082153, 28.466560, 23.047098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592659, 28.918699, 23.227526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754593, 28.794044, 23.571384>,  <36.851753, 28.719252, 23.777700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754593, 28.794044, 23.571384>,  <36.592659, 28.918699, 23.227526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754593, 28.794044, 23.571384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187474, 0.948447, 0.255542,
		-0.894967, 0.057710, 0.442385,
		0.404831, -0.311637, 0.859648,
		36.876041, 28.700554, 23.829279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242317, 29.253958, 23.836136>,  <36.592659, 28.918699, 23.227526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242317, 29.253958, 23.836136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592484, 29.129013, 23.983692>,  <36.802582, 29.054047, 24.072226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592484, 29.129013, 23.983692>,  <36.242317, 29.253958, 23.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592484, 29.129013, 23.983692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162957, 0.909197, 0.383154,
		-0.455077, -0.275305, 0.846825,
		0.875414, -0.312360, 0.368891,
		36.855106, 29.035305, 24.094360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239849, 29.478678, 24.659136>,  <36.242317, 29.253958, 23.836136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239849, 29.478678, 24.659136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610748, 29.430485, 24.517326>,  <36.833290, 29.401569, 24.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610748, 29.430485, 24.517326>,  <36.239849, 29.478678, 24.659136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610748, 29.430485, 24.517326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223420, 0.937829, 0.265632,
		0.300480, -0.325515, 0.896522,
		0.927251, -0.120484, -0.354526,
		36.888924, 29.394341, 24.410969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723808, 29.847490, 25.141144>,  <36.239849, 29.478678, 24.659136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723808, 29.847490, 25.141144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934906, 29.813042, 24.803135>,  <37.061565, 29.792372, 24.600328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934906, 29.813042, 24.803135>,  <36.723808, 29.847490, 25.141144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934906, 29.813042, 24.803135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384004, 0.911567, 0.146921,
		0.757643, -0.402030, 0.514149,
		0.527748, -0.086122, -0.845023,
		37.093231, 29.787205, 24.549627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306442, 30.153540, 25.256638>,  <36.723808, 29.847490, 25.141144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306442, 30.153540, 25.256638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295898, 30.189606, 24.858406>,  <37.289574, 30.211246, 24.619467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295898, 30.189606, 24.858406>,  <37.306442, 30.153540, 25.256638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295898, 30.189606, 24.858406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229235, 0.969930, 0.081776,
		0.973014, -0.226066, -0.046232,
		-0.026355, 0.090167, -0.995578,
		37.287991, 30.216656, 24.559732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991009, 30.236874, 25.051764>,  <37.306442, 30.153540, 25.256638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991009, 30.236874, 25.051764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747284, 30.385654, 24.771652>,  <37.601048, 30.474924, 24.603586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747284, 30.385654, 24.771652>,  <37.991009, 30.236874, 25.051764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747284, 30.385654, 24.771652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407249, 0.904568, 0.126115,
		0.680358, -0.208344, -0.702642,
		-0.609312, 0.371953, -0.700278,
		37.564491, 30.497240, 24.561569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393547, 30.781124, 24.609682>,  <37.991009, 30.236874, 25.051764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393547, 30.781124, 24.609682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000854, 30.840408, 24.561958>,  <37.765240, 30.875978, 24.533323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000854, 30.840408, 24.561958>,  <38.393547, 30.781124, 24.609682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000854, 30.840408, 24.561958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155038, 0.986638, -0.050079,
		0.110294, -0.067662, -0.991593,
		-0.981732, 0.148212, -0.119310,
		37.706333, 30.884872, 24.526165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254860, 31.260141, 24.015066>,  <38.393547, 30.781124, 24.609682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254860, 31.260141, 24.015066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916721, 31.268780, 24.228577>,  <37.713837, 31.273962, 24.356684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916721, 31.268780, 24.228577>,  <38.254860, 31.260141, 24.015066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916721, 31.268780, 24.228577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035631, 0.999237, 0.016004,
		-0.533023, 0.032548, -0.845475,
		-0.845350, 0.021595, 0.533776,
		37.663116, 31.275259, 24.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948223, 31.741541, 23.608038>,  <38.254860, 31.260141, 24.015066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948223, 31.741541, 23.608038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756638, 31.734474, 23.959103>,  <37.641685, 31.730234, 24.169741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756638, 31.734474, 23.959103>,  <37.948223, 31.741541, 23.608038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756638, 31.734474, 23.959103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052266, 0.997450, 0.048601,
		-0.876280, 0.069150, -0.476814,
		-0.478959, -0.017667, 0.877659,
		37.612949, 31.729174, 24.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558407, 32.274025, 23.633909>,  <37.948223, 31.741541, 23.608038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558407, 32.274025, 23.633909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573055, 32.200645, 24.026848>,  <37.581844, 32.156616, 24.262611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573055, 32.200645, 24.026848>,  <37.558407, 32.274025, 23.633909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573055, 32.200645, 24.026848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063482, 0.980594, 0.185490,
		-0.997311, -0.069154, 0.024265,
		0.036621, -0.183450, 0.982347,
		37.584042, 32.145611, 24.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130352, 32.745155, 23.936077>,  <37.558407, 32.274025, 23.633909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130352, 32.745155, 23.936077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322796, 32.628071, 24.266617>,  <37.438263, 32.557819, 24.464941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322796, 32.628071, 24.266617>,  <37.130352, 32.745155, 23.936077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322796, 32.628071, 24.266617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051347, 0.931585, 0.359879,
		-0.875155, -0.215572, 0.433166,
		0.481111, -0.292708, 0.826350,
		37.467129, 32.540260, 24.514523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682201, 32.808498, 24.572556>,  <37.130352, 32.745155, 23.936077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682201, 32.808498, 24.572556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062145, 32.809643, 24.697617>,  <37.290112, 32.810329, 24.772654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062145, 32.809643, 24.697617>,  <36.682201, 32.808498, 24.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062145, 32.809643, 24.697617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093456, 0.956839, 0.275182,
		-0.298369, -0.290605, 0.909134,
		0.949864, 0.002859, 0.312650,
		37.347103, 32.810501, 24.791412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779896, 33.202042, 25.300226>,  <36.682201, 32.808498, 24.572556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779896, 33.202042, 25.300226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106880, 33.225239, 25.071003>,  <37.303070, 33.239159, 24.933468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106880, 33.225239, 25.071003>,  <36.779896, 33.202042, 25.300226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106880, 33.225239, 25.071003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047211, 0.998317, 0.033688,
		0.574049, -0.000484, 0.818821,
		0.817459, 0.057996, -0.573060,
		37.352119, 33.242638, 24.899084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218769, 33.576729, 25.328911>,  <36.779896, 33.202042, 25.300226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218769, 33.576729, 25.328911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140358, 33.576420, 24.936672>,  <36.093311, 33.576233, 24.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140358, 33.576420, 24.936672>,  <36.218769, 33.576729, 25.328911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140358, 33.576420, 24.936672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913736, 0.363078, 0.182376,
		0.355892, 0.931758, -0.071883,
		-0.196030, -0.000776, -0.980598,
		36.081551, 33.576187, 24.642492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727566, 33.753838, 25.930607>,  <36.218769, 33.576729, 25.328911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727566, 33.753838, 25.930607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406357, 33.981716, 26.000576>,  <35.213631, 34.118443, 26.042557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406357, 33.981716, 26.000576>,  <35.727566, 33.753838, 25.930607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406357, 33.981716, 26.000576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462251, 0.410189, 0.786173,
		0.376127, 0.712176, -0.592734,
		-0.803027, 0.569693, 0.174921,
		35.165447, 34.152626, 26.053053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323631, 33.268082, 26.234823>,  <35.727566, 33.753838, 25.930607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323631, 33.268082, 26.234823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672668, 33.115574, 26.112694>,  <36.882092, 33.024071, 26.039415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672668, 33.115574, 26.112694>,  <36.323631, 33.268082, 26.234823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672668, 33.115574, 26.112694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267531, -0.896034, 0.354331,
		-0.408676, -0.227502, -0.883870,
		0.872588, -0.381269, -0.305324,
		36.934444, 33.001194, 26.021097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699432, 32.890591, 26.257307>,  <36.323631, 33.268082, 26.234823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699432, 32.890591, 26.257307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688450, 32.748199, 26.630943>,  <35.681862, 32.662766, 26.855125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688450, 32.748199, 26.630943>,  <35.699432, 32.890591, 26.257307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688450, 32.748199, 26.630943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390192, 0.856500, 0.337873,
		-0.920324, 0.373752, 0.115382,
		-0.027456, -0.355974, 0.934093,
		35.680214, 32.641407, 26.911171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125568, 33.044006, 26.726095>,  <35.699432, 32.890591, 26.257307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125568, 33.044006, 26.726095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479164, 32.998398, 26.907452>,  <35.691322, 32.971031, 27.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479164, 32.998398, 26.907452>,  <35.125568, 33.044006, 26.726095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479164, 32.998398, 26.907452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091644, 0.993249, 0.071117,
		-0.458442, -0.021316, 0.888469,
		0.883987, -0.114026, 0.453393,
		35.744362, 32.964191, 27.043470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693665, 33.217216, 26.083477>,  <35.125568, 33.044006, 26.726095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693665, 33.217216, 26.083477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892319, 33.541824, 25.960331>,  <35.011513, 33.736591, 25.886442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892319, 33.541824, 25.960331>,  <34.693665, 33.217216, 26.083477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892319, 33.541824, 25.960331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334775, -0.506357, -0.794688,
		-0.800797, 0.291606, -0.523153,
		0.496639, 0.811522, -0.307867,
		35.041309, 33.785282, 25.867971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077381, 33.392555, 26.385397>,  <34.693665, 33.217216, 26.083477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077381, 33.392555, 26.385397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735939, 33.310932, 26.577114>,  <33.531075, 33.261959, 26.692144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735939, 33.310932, 26.577114>,  <34.077381, 33.392555, 26.385397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735939, 33.310932, 26.577114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152463, -0.977659, -0.144702,
		0.498112, -0.050443, 0.865644,
		-0.853604, -0.204056, 0.479293,
		33.479858, 33.249714, 26.720901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218739, 32.836151, 26.793690>,  <34.077381, 33.392555, 26.385397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218739, 32.836151, 26.793690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823135, 32.825199, 26.851822>,  <33.585773, 32.818626, 26.886702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823135, 32.825199, 26.851822>,  <34.218739, 32.836151, 26.793690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823135, 32.825199, 26.851822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032404, -0.998952, 0.032318,
		0.144294, 0.036672, 0.988855,
		-0.989004, -0.027379, 0.145332,
		33.526436, 32.816986, 26.895422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144539, 32.497742, 27.405462>,  <34.218739, 32.836151, 26.793690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144539, 32.497742, 27.405462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798634, 32.459751, 27.208218>,  <33.591091, 32.436958, 27.089870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798634, 32.459751, 27.208218>,  <34.144539, 32.497742, 27.405462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798634, 32.459751, 27.208218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027876, -0.989517, 0.141698,
		-0.501401, 0.108790, 0.858349,
		-0.864766, -0.094975, -0.493112,
		33.539204, 32.431259, 27.060284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661079, 32.012314, 27.825375>,  <34.144539, 32.497742, 27.405462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661079, 32.012314, 27.825375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537487, 32.019249, 27.445011>,  <33.463329, 32.023411, 27.216793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537487, 32.019249, 27.445011>,  <33.661079, 32.012314, 27.825375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537487, 32.019249, 27.445011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249767, -0.966219, 0.063539,
		-0.917685, 0.257139, 0.302877,
		-0.308984, 0.017340, -0.950909,
		33.444794, 32.024452, 27.159739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007812, 31.774963, 27.774399>,  <33.661079, 32.012314, 27.825375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007812, 31.774963, 27.774399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169300, 31.706646, 27.414879>,  <33.266193, 31.665655, 27.199167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169300, 31.706646, 27.414879>,  <33.007812, 31.774963, 27.774399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169300, 31.706646, 27.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101268, -0.984725, 0.141636,
		-0.909263, 0.033839, -0.414844,
		0.403715, -0.170795, -0.898801,
		33.290413, 31.655407, 27.145239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605362, 31.343575, 27.412874>,  <33.007812, 31.774963, 27.774399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605362, 31.343575, 27.412874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939545, 31.281685, 27.201946>,  <33.140057, 31.244551, 27.075390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939545, 31.281685, 27.201946>,  <32.605362, 31.343575, 27.412874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939545, 31.281685, 27.201946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268964, -0.951891, -0.146838,
		-0.479231, 0.264508, -0.836883,
		0.835461, -0.154722, -0.527319,
		33.190182, 31.235268, 27.043751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392406, 31.092978, 26.801790>,  <32.605362, 31.343575, 27.412874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392406, 31.092978, 26.801790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779125, 30.996113, 26.834427>,  <33.011158, 30.937994, 26.854010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779125, 30.996113, 26.834427>,  <32.392406, 31.092978, 26.801790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779125, 30.996113, 26.834427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243941, -0.969710, 0.012439,
		0.076108, -0.031929, -0.996588,
		0.966799, -0.242162, 0.081591,
		33.069164, 30.923464, 26.858904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483994, 30.488297, 26.313717>,  <32.392406, 31.092978, 26.801790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483994, 30.488297, 26.313717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806519, 30.478474, 26.550110>,  <33.000034, 30.472580, 26.691946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806519, 30.478474, 26.550110>,  <32.483994, 30.488297, 26.313717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806519, 30.478474, 26.550110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095507, -0.991432, 0.089107,
		0.583733, -0.128291, -0.801747,
		0.806309, -0.024558, 0.590984,
		33.048412, 30.471106, 26.727406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765182, 29.887808, 26.072586>,  <32.483994, 30.488297, 26.313717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765182, 29.887808, 26.072586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961109, 29.914673, 26.420280>,  <33.078663, 29.930792, 26.628897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961109, 29.914673, 26.420280>,  <32.765182, 29.887808, 26.072586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961109, 29.914673, 26.420280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, -0.970778, 0.170290,
		0.855271, -0.230391, -0.464145,
		0.489815, 0.067161, 0.869236,
		33.108055, 29.934822, 26.681051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238575, 29.229872, 26.193693>,  <32.765182, 29.887808, 26.072586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238575, 29.229872, 26.193693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194473, 29.386082, 26.559280>,  <33.168015, 29.479807, 26.778633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194473, 29.386082, 26.559280>,  <33.238575, 29.229872, 26.193693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194473, 29.386082, 26.559280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141380, -0.904061, 0.403344,
		0.983797, 0.173686, 0.044460,
		-0.110250, 0.390523, 0.913968,
		33.161400, 29.503239, 26.833471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808311, 28.994535, 26.613091>,  <33.238575, 29.229872, 26.193693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808311, 28.994535, 26.613091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518970, 29.094116, 26.870705>,  <33.345367, 29.153864, 27.025274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518970, 29.094116, 26.870705>,  <33.808311, 28.994535, 26.613091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518970, 29.094116, 26.870705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149795, -0.853946, 0.498335,
		0.674035, 0.456945, 0.580412,
		-0.723352, 0.248952, 0.644038,
		33.301964, 29.168802, 27.063915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103863, 28.850098, 27.199482>,  <33.808311, 28.994535, 26.613091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103863, 28.850098, 27.199482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713028, 28.869095, 27.282471>,  <33.478527, 28.880493, 27.332264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713028, 28.869095, 27.282471>,  <34.103863, 28.850098, 27.199482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713028, 28.869095, 27.282471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083477, -0.811174, 0.578817,
		0.195786, 0.582873, 0.788623,
		-0.977087, 0.047493, 0.207473,
		33.419903, 28.883343, 27.344713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115761, 28.720631, 27.778143>,  <34.103863, 28.850098, 27.199482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115761, 28.720631, 27.778143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734604, 28.639168, 27.688229>,  <33.505909, 28.590290, 27.634279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734604, 28.639168, 27.688229>,  <34.115761, 28.720631, 27.778143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734604, 28.639168, 27.688229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046995, -0.831256, 0.553900,
		-0.299660, 0.517241, 0.801664,
		-0.952888, -0.203656, -0.224787,
		33.448738, 28.578072, 27.620792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659798, 28.724270, 28.399555>,  <34.115761, 28.720631, 27.778143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659798, 28.724270, 28.399555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450962, 28.504070, 28.138977>,  <33.325661, 28.371950, 27.982630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450962, 28.504070, 28.138977>,  <33.659798, 28.724270, 28.399555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450962, 28.504070, 28.138977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121308, -0.708112, 0.695602,
		-0.844223, 0.442189, 0.302915,
		-0.522085, -0.550497, -0.651445,
		33.294338, 28.338921, 27.943544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985649, 28.535418, 28.754496>,  <33.659798, 28.724270, 28.399555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985649, 28.535418, 28.754496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059036, 28.286270, 28.450291>,  <33.103069, 28.136782, 28.267769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059036, 28.286270, 28.450291>,  <32.985649, 28.535418, 28.754496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059036, 28.286270, 28.450291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127345, -0.782183, 0.609896,
		-0.974743, -0.015046, -0.222821,
		0.183463, -0.622868, -0.760512,
		33.114075, 28.099409, 28.222137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457142, 28.061852, 28.813324>,  <32.985649, 28.535418, 28.754496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457142, 28.061852, 28.813324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738918, 27.884434, 28.591682>,  <32.907986, 27.777983, 28.458698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738918, 27.884434, 28.591682>,  <32.457142, 28.061852, 28.813324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738918, 27.884434, 28.591682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168981, -0.863047, 0.476020,
		-0.689353, -0.241695, -0.682917,
		0.704441, -0.443546, -0.554102,
		32.950249, 27.751369, 28.425451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205410, 27.451845, 28.616804>,  <32.457142, 28.061852, 28.813324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205410, 27.451845, 28.616804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586861, 27.374905, 28.524204>,  <32.815731, 27.328739, 28.468645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586861, 27.374905, 28.524204>,  <32.205410, 27.451845, 28.616804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586861, 27.374905, 28.524204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093036, -0.919857, 0.381060,
		-0.286244, -0.341852, -0.895099,
		0.953629, -0.192353, -0.231499,
		32.872948, 27.317200, 28.454754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257351, 26.831434, 28.278557>,  <32.205410, 27.451845, 28.616804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257351, 26.831434, 28.278557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627518, 26.859795, 28.427464>,  <32.849617, 26.876812, 28.516808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627518, 26.859795, 28.427464>,  <32.257351, 26.831434, 28.278557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627518, 26.859795, 28.427464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152069, -0.830301, 0.536166,
		0.347109, -0.552786, -0.757590,
		0.925414, 0.070902, 0.372267,
		32.905140, 26.881065, 28.539145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549038, 26.254045, 28.309530>,  <32.257351, 26.831434, 28.278557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549038, 26.254045, 28.309530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810471, 26.414940, 28.565979>,  <32.967331, 26.511477, 28.719849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810471, 26.414940, 28.565979>,  <32.549038, 26.254045, 28.309530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810471, 26.414940, 28.565979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025965, -0.834670, 0.550137,
		0.756408, -0.376207, -0.535083,
		0.653584, 0.402235, 0.641120,
		33.006546, 26.535610, 28.758314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887871, 25.658672, 28.443707>,  <32.549038, 26.254045, 28.309530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887871, 25.658672, 28.443707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995235, 25.900021, 28.744080>,  <33.059654, 26.044830, 28.924303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995235, 25.900021, 28.744080>,  <32.887871, 25.658672, 28.443707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995235, 25.900021, 28.744080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177459, -0.797167, 0.577091,
		0.946819, -0.021636, -0.321040,
		0.268408, 0.603371, 0.750933,
		33.075760, 26.081032, 28.969360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495308, 25.415825, 28.765450>,  <32.887871, 25.658672, 28.443707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495308, 25.415825, 28.765450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300594, 25.618225, 29.050266>,  <33.183765, 25.739666, 29.221155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300594, 25.618225, 29.050266>,  <33.495308, 25.415825, 28.765450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300594, 25.618225, 29.050266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110212, -0.773047, 0.624701,
		0.866540, 0.382572, 0.320543,
		-0.486788, 0.506001, 0.712040,
		33.154556, 25.770025, 29.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871586, 25.214266, 29.354187>,  <33.495308, 25.415825, 28.765450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871586, 25.214266, 29.354187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520931, 25.355240, 29.485214>,  <33.310539, 25.439823, 29.563831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520931, 25.355240, 29.485214>,  <33.871586, 25.214266, 29.354187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520931, 25.355240, 29.485214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010547, -0.694709, 0.719214,
		0.481040, 0.627033, 0.612723,
		-0.876635, 0.352433, 0.327569,
		33.257942, 25.460970, 29.583485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841179, 25.280136, 30.186533>,  <33.871586, 25.214266, 29.354187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841179, 25.280136, 30.186533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 25.242764, 30.082493>,  <33.226109, 25.220339, 30.020069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 25.242764, 30.082493>,  <33.841179, 25.280136, 30.186533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456760, 25.242764, 30.082493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117752, -0.713002, 0.691204,
		-0.250035, 0.694909, 0.674229,
		-0.961050, -0.093433, -0.260102,
		33.168446, 25.214733, 30.004461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498962, 25.319435, 30.795147>,  <33.841179, 25.280136, 30.186533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498962, 25.319435, 30.795147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 25.139568, 30.539406>,  <33.099781, 25.031649, 30.385962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 25.139568, 30.539406>,  <33.498962, 25.319435, 30.795147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249474, 25.139568, 30.539406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219044, -0.684629, 0.695199,
		-0.750329, 0.573656, 0.328520,
		-0.623719, -0.449668, -0.639353,
		33.062359, 25.004667, 30.347599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018517, 25.073004, 31.274700>,  <33.498962, 25.319435, 30.795147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018517, 25.073004, 31.274700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916435, 24.866230, 30.947861>,  <32.855186, 24.742165, 30.751757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916435, 24.866230, 30.947861>,  <33.018517, 25.073004, 31.274700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916435, 24.866230, 30.947861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290063, -0.765223, 0.574715,
		-0.922352, 0.383681, 0.045346,
		-0.255207, -0.516936, -0.817096,
		32.839874, 24.711149, 30.702732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263062, 24.876474, 31.269732>,  <33.018517, 25.073004, 31.274700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263062, 24.876474, 31.269732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452770, 24.615849, 31.032909>,  <32.566597, 24.459473, 30.890816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452770, 24.615849, 31.032909>,  <32.263062, 24.876474, 31.269732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452770, 24.615849, 31.032909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370820, -0.757783, 0.536896,
		-0.798473, -0.035088, -0.601007,
		0.474272, -0.651563, -0.592058,
		32.595051, 24.420380, 30.855293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940001, 24.432987, 31.513969>,  <32.263062, 24.876474, 31.269732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940001, 24.432987, 31.513969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195988, 24.245846, 31.270149>,  <32.349579, 24.133562, 31.123857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195988, 24.245846, 31.270149>,  <31.940001, 24.432987, 31.513969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195988, 24.245846, 31.270149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352980, -0.883617, 0.307613,
		-0.682529, 0.018297, -0.730630,
		0.639969, -0.467852, -0.609553,
		32.387978, 24.105490, 31.087284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602385, 23.865332, 31.160248>,  <31.940001, 24.432987, 31.513969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602385, 23.865332, 31.160248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990438, 23.768631, 31.152336>,  <32.223270, 23.710611, 31.147589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990438, 23.768631, 31.152336>,  <31.602385, 23.865332, 31.160248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990438, 23.768631, 31.152336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212556, -0.886587, 0.410833,
		-0.116854, -0.394360, -0.911496,
		0.970137, -0.241752, -0.019777,
		32.281479, 23.696106, 31.146402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668835, 23.128353, 30.812822>,  <31.602385, 23.865332, 31.160248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668835, 23.128353, 30.812822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973959, 23.200153, 31.061306>,  <32.157032, 23.243233, 31.210396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973959, 23.200153, 31.061306>,  <31.668835, 23.128353, 30.812822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973959, 23.200153, 31.061306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078404, -0.927934, 0.364405,
		0.641850, -0.326677, -0.693765,
		0.762811, 0.179499, 0.621208,
		32.202801, 23.254004, 31.247669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045265, 22.534672, 30.814564>,  <31.668835, 23.128353, 30.812822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045265, 22.534672, 30.814564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218891, 22.729801, 31.117512>,  <32.323067, 22.846880, 31.299280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218891, 22.729801, 31.117512>,  <32.045265, 22.534672, 30.814564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218891, 22.729801, 31.117512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119504, -0.802092, 0.585121,
		0.892919, -0.344490, -0.289864,
		0.434066, 0.487826, 0.757372,
		32.349110, 22.876148, 31.344723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609955, 22.034472, 31.086063>,  <32.045265, 22.534672, 30.814564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609955, 22.034472, 31.086063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498299, 22.296021, 31.367355>,  <32.431305, 22.452950, 31.536131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498299, 22.296021, 31.367355>,  <32.609955, 22.034472, 31.086063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498299, 22.296021, 31.367355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122646, -0.750617, 0.649255,
		0.952386, 0.094984, 0.289721,
		-0.279138, 0.653875, 0.703228,
		32.414558, 22.492184, 31.578323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717033, 21.666250, 31.567545>,  <32.609955, 22.034472, 31.086063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717033, 21.666250, 31.567545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536163, 21.977936, 31.741150>,  <32.427643, 22.164948, 31.845312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536163, 21.977936, 31.741150>,  <32.717033, 21.666250, 31.567545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536163, 21.977936, 31.741150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084949, -0.522008, 0.848700,
		0.887876, 0.346891, 0.302231,
		-0.452173, 0.779214, 0.434010,
		32.400513, 22.211700, 31.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024761, 21.758692, 32.198017>,  <32.717033, 21.666250, 31.567545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024761, 21.758692, 32.198017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652466, 21.904305, 32.211937>,  <32.429089, 21.991673, 32.220287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652466, 21.904305, 32.211937>,  <33.024761, 21.758692, 32.198017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652466, 21.904305, 32.211937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184583, -0.549809, 0.814641,
		0.315689, 0.751792, 0.578921,
		-0.930736, 0.364032, 0.034801,
		32.373245, 22.013514, 32.222378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892647, 21.909313, 32.883846>,  <33.024761, 21.758692, 32.198017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892647, 21.909313, 32.883846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532448, 21.861629, 32.716560>,  <32.316330, 21.833019, 32.616188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532448, 21.861629, 32.716560>,  <32.892647, 21.909313, 32.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532448, 21.861629, 32.716560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259645, -0.624082, 0.736957,
		-0.348851, 0.772211, 0.531029,
		-0.900493, -0.119209, -0.418213,
		32.262299, 21.825867, 32.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407818, 21.871773, 33.461353>,  <32.892647, 21.909313, 32.883846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407818, 21.871773, 33.461353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191200, 21.731258, 33.155849>,  <32.061230, 21.646950, 32.972546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191200, 21.731258, 33.155849>,  <32.407818, 21.871773, 33.461353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191200, 21.731258, 33.155849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485380, -0.611133, 0.625238,
		-0.686397, 0.709306, 0.160447,
		-0.541540, -0.351283, -0.763763,
		32.028740, 21.625874, 32.926720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702921, 21.797939, 33.642056>,  <32.407818, 21.871773, 33.461353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702921, 21.797939, 33.642056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712860, 21.537010, 33.339043>,  <31.718824, 21.380453, 33.157234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712860, 21.537010, 33.339043>,  <31.702921, 21.797939, 33.642056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712860, 21.537010, 33.339043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447966, -0.684696, 0.574907,
		-0.893705, 0.325064, -0.309232,
		0.024848, -0.652323, -0.757534,
		31.720314, 21.341312, 33.111782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958132, 21.562927, 33.479832>,  <31.702921, 21.797939, 33.642056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958132, 21.562927, 33.479832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203459, 21.275928, 33.347748>,  <31.350655, 21.103729, 33.268497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203459, 21.275928, 33.347748>,  <30.958132, 21.562927, 33.479832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203459, 21.275928, 33.347748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398216, -0.641952, 0.655227,
		-0.682106, -0.270363, -0.679438,
		0.613315, -0.717497, -0.330216,
		31.387453, 21.060680, 33.248684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547661, 20.891479, 33.387730>,  <30.958132, 21.562927, 33.479832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547661, 20.891479, 33.387730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923565, 20.768661, 33.447830>,  <31.149107, 20.694971, 33.483891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923565, 20.768661, 33.447830>,  <30.547661, 20.891479, 33.387730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923565, 20.768661, 33.447830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337382, -0.762354, 0.552259,
		-0.055020, -0.569684, -0.820020,
		0.939759, -0.307046, 0.150256,
		31.205492, 20.676548, 33.492908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389635, 20.314720, 33.516911>,  <30.547661, 20.891479, 33.387730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389635, 20.314720, 33.516911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776892, 20.294846, 33.615082>,  <31.009245, 20.282921, 33.673985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776892, 20.294846, 33.615082>,  <30.389635, 20.314720, 33.516911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776892, 20.294846, 33.615082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202915, -0.729966, 0.652668,
		0.146723, -0.681676, -0.716792,
		0.968141, -0.049686, 0.245425,
		31.067333, 20.279940, 33.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587755, 19.602104, 33.484604>,  <30.389635, 20.314720, 33.516911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587755, 19.602104, 33.484604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835194, 19.793198, 33.734119>,  <30.983656, 19.907854, 33.883827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835194, 19.793198, 33.734119>,  <30.587755, 19.602104, 33.484604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835194, 19.793198, 33.734119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279260, -0.608394, 0.742880,
		0.734406, -0.633741, -0.242939,
		0.618597, 0.477733, 0.623787,
		31.020773, 19.936518, 33.921257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825821, 19.066687, 33.987854>,  <30.587755, 19.602104, 33.484604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825821, 19.066687, 33.987854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967514, 19.400375, 34.156895>,  <31.052530, 19.600588, 34.258320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967514, 19.400375, 34.156895>,  <30.825821, 19.066687, 33.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967514, 19.400375, 34.156895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024294, -0.443547, 0.895922,
		0.934841, -0.327632, -0.136852,
		0.354233, 0.834220, 0.422606,
		31.073784, 19.650640, 34.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441225, 18.962982, 34.342396>,  <30.825821, 19.066687, 33.987854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441225, 18.962982, 34.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293533, 19.283936, 34.529949>,  <31.204918, 19.476507, 34.642479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293533, 19.283936, 34.529949>,  <31.441225, 18.962982, 34.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293533, 19.283936, 34.529949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021918, -0.496873, 0.867546,
		0.929080, 0.330601, 0.165873,
		-0.369230, 0.802384, 0.468881,
		31.182764, 19.524651, 34.670612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895174, 19.172655, 34.908085>,  <31.441225, 18.962982, 34.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895174, 19.172655, 34.908085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518311, 19.277149, 34.992081>,  <31.292192, 19.339846, 35.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518311, 19.277149, 34.992081>,  <31.895174, 19.172655, 34.908085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518311, 19.277149, 34.992081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066468, -0.759693, 0.646876,
		0.328514, 0.595502, 0.733114,
		-0.942157, 0.261236, 0.209988,
		31.235662, 19.355520, 35.055077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647467, 19.251518, 35.643284>,  <31.895174, 19.172655, 34.908085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647467, 19.251518, 35.643284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268398, 19.256031, 35.515667>,  <31.040956, 19.258739, 35.439095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268398, 19.256031, 35.515667>,  <31.647467, 19.251518, 35.643284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268398, 19.256031, 35.515667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273179, -0.545799, 0.792134,
		-0.165196, 0.837840, 0.520321,
		-0.947673, 0.011283, -0.319045,
		30.984097, 19.259417, 35.419952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240084, 19.596088, 36.015404>,  <31.647467, 19.251518, 35.643284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240084, 19.596088, 36.015404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059908, 19.283958, 35.841877>,  <30.951803, 19.096680, 35.737759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059908, 19.283958, 35.841877>,  <31.240084, 19.596088, 36.015404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059908, 19.283958, 35.841877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201232, -0.384666, 0.900854,
		-0.869834, 0.493076, 0.016241,
		-0.450437, -0.780325, -0.433819,
		30.924776, 19.049860, 35.711731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969381, 19.222404, 36.621113>,  <31.240084, 19.596088, 36.015404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969381, 19.222404, 36.621113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025621, 18.833057, 36.548683>,  <31.059366, 18.599449, 36.505226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025621, 18.833057, 36.548683>,  <30.969381, 19.222404, 36.621113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025621, 18.833057, 36.548683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208512, -0.149673, 0.966499,
		-0.967861, -0.173645, 0.181915,
		0.140600, -0.973368, -0.181070,
		31.067802, 18.541046, 36.494362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514156, 18.761290, 36.971645>,  <30.969381, 19.222404, 36.621113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514156, 18.761290, 36.971645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851746, 18.556850, 36.906544>,  <31.054298, 18.434187, 36.867481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851746, 18.556850, 36.906544>,  <30.514156, 18.761290, 36.971645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851746, 18.556850, 36.906544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096815, -0.153295, 0.983426,
		-0.527576, -0.845742, -0.079895,
		0.843973, -0.511098, -0.162756,
		31.104937, 18.403521, 36.857716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394579, 18.117559, 36.979183>,  <30.514156, 18.761290, 36.971645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394579, 18.117559, 36.979183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995083, 18.114906, 36.959270>,  <29.755386, 18.113314, 36.947323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995083, 18.114906, 36.959270>,  <30.394579, 18.117559, 36.979183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995083, 18.114906, 36.959270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002142, 0.984711, -0.174183,
		0.050174, -0.174070, -0.983454,
		-0.998738, -0.006633, -0.049780,
		29.695461, 18.112917, 36.944336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185234, 18.341013, 36.338127>,  <30.394579, 18.117559, 36.979183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185234, 18.341013, 36.338127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899166, 18.420830, 36.606071>,  <29.727526, 18.468719, 36.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899166, 18.420830, 36.606071>,  <30.185234, 18.341013, 36.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899166, 18.420830, 36.606071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028864, 0.965996, -0.256942,
		-0.698355, -0.164422, -0.696610,
		-0.715169, 0.199544, 0.669862,
		29.684616, 18.480692, 36.807030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698153, 18.798510, 35.973999>,  <30.185234, 18.341013, 36.338127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698153, 18.798510, 35.973999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703033, 18.856468, 36.369747>,  <29.705963, 18.891243, 36.607197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703033, 18.856468, 36.369747>,  <29.698153, 18.798510, 35.973999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703033, 18.856468, 36.369747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098683, 0.984440, -0.145393,
		-0.995044, 0.099409, -0.002286,
		0.012203, 0.144898, 0.989371,
		29.706694, 18.899939, 36.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118877, 19.281414, 36.164154>,  <29.698153, 18.798510, 35.973999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118877, 19.281414, 36.164154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431160, 19.304741, 36.413021>,  <29.618530, 19.318737, 36.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431160, 19.304741, 36.413021>,  <29.118877, 19.281414, 36.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431160, 19.304741, 36.413021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120574, 0.962868, -0.241552,
		-0.613153, 0.263599, 0.744687,
		0.780708, 0.058318, 0.622169,
		29.665373, 19.322237, 36.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026752, 19.799320, 36.621090>,  <29.118877, 19.281414, 36.164154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026752, 19.799320, 36.621090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424234, 19.769676, 36.654701>,  <29.662724, 19.751890, 36.674866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424234, 19.769676, 36.654701>,  <29.026752, 19.799320, 36.621090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424234, 19.769676, 36.654701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082692, 0.991158, -0.103770,
		-0.075591, 0.110065, 0.991046,
		0.993704, -0.074108, 0.084024,
		29.722345, 19.747444, 36.679909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252518, 20.312943, 37.140919>,  <29.026752, 19.799320, 36.621090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252518, 20.312943, 37.140919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528648, 20.227776, 36.864338>,  <29.694326, 20.176676, 36.698387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528648, 20.227776, 36.864338>,  <29.252518, 20.312943, 37.140919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528648, 20.227776, 36.864338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111658, 0.975620, -0.188942,
		0.714827, 0.053225, 0.697272,
		0.690329, -0.212917, -0.691457,
		29.735746, 20.163900, 36.656902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822680, 20.947664, 37.155979>,  <29.252518, 20.312943, 37.140919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822680, 20.947664, 37.155979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859734, 20.765793, 36.801651>,  <29.881966, 20.656670, 36.589054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859734, 20.765793, 36.801651>,  <29.822680, 20.947664, 37.155979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859734, 20.765793, 36.801651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048460, 0.886537, -0.460114,
		0.994520, 0.085550, 0.060090,
		0.092635, -0.454681, -0.885824,
		29.887524, 20.629389, 36.535904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131039, 21.391003, 36.831875>,  <29.822680, 20.947664, 37.155979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131039, 21.391003, 36.831875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001066, 21.178535, 36.518883>,  <29.923082, 21.051056, 36.331085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001066, 21.178535, 36.518883>,  <30.131039, 21.391003, 36.831875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001066, 21.178535, 36.518883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000603, 0.827495, -0.561473,
		0.945737, -0.181970, -0.269201,
		-0.324933, -0.531168, -0.782482,
		29.903585, 21.019184, 36.284138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537739, 21.569208, 36.258430>,  <30.131039, 21.391003, 36.831875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537739, 21.569208, 36.258430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194670, 21.414845, 36.122505>,  <29.988829, 21.322226, 36.040951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194670, 21.414845, 36.122505>,  <30.537739, 21.569208, 36.258430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194670, 21.414845, 36.122505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092411, 0.765779, -0.636430,
		0.505824, -0.514447, -0.692450,
		-0.857673, -0.385911, -0.339809,
		29.937368, 21.299070, 36.020561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565388, 21.692665, 35.443451>,  <30.537739, 21.569208, 36.258430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565388, 21.692665, 35.443451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177822, 21.613823, 35.503254>,  <29.945282, 21.566517, 35.539135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177822, 21.613823, 35.503254>,  <30.565388, 21.692665, 35.443451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177822, 21.613823, 35.503254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242382, 0.635311, -0.733233,
		0.049541, -0.746679, -0.663338,
		-0.968915, -0.197106, 0.149507,
		29.887148, 21.554691, 35.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269487, 21.565708, 34.746326>,  <30.565388, 21.692665, 35.443451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269487, 21.565708, 34.746326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967775, 21.657795, 34.992275>,  <29.786749, 21.713047, 35.139843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967775, 21.657795, 34.992275>,  <30.269487, 21.565708, 34.746326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967775, 21.657795, 34.992275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401863, 0.578700, -0.709656,
		-0.519200, -0.782372, -0.343985,
		-0.754279, 0.230218, 0.614867,
		29.741491, 21.726860, 35.176735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623398, 21.441254, 34.380173>,  <30.269487, 21.565708, 34.746326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623398, 21.441254, 34.380173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560862, 21.700058, 34.678684>,  <29.523340, 21.855341, 34.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560862, 21.700058, 34.678684>,  <29.623398, 21.441254, 34.380173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560862, 21.700058, 34.678684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352593, 0.669228, -0.654073,
		-0.922624, -0.365392, 0.123503,
		-0.156341, 0.647010, 0.746281,
		29.513960, 21.894161, 34.902569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912815, 21.651569, 34.329491>,  <29.623398, 21.441254, 34.380173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912815, 21.651569, 34.329491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122227, 21.924328, 34.533817>,  <29.247873, 22.087984, 34.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122227, 21.924328, 34.533817>,  <28.912815, 21.651569, 34.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122227, 21.924328, 34.533817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396537, 0.725661, -0.562294,
		-0.754105, 0.091821, 0.650303,
		0.523530, 0.681898, 0.510814,
		29.279285, 22.128897, 34.687061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498932, 22.178465, 34.234837>,  <28.912815, 21.651569, 34.329491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498932, 22.178465, 34.234837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847879, 22.334526, 34.352654>,  <29.057249, 22.428162, 34.423344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847879, 22.334526, 34.352654>,  <28.498932, 22.178465, 34.234837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847879, 22.334526, 34.352654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180980, 0.817468, -0.546802,
		-0.454111, 0.423708, 0.783744,
		0.872370, 0.390151, 0.294539,
		29.109591, 22.451571, 34.441013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317371, 22.843195, 34.420334>,  <28.498932, 22.178465, 34.234837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317371, 22.843195, 34.420334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706760, 22.855217, 34.329609>,  <28.940393, 22.862431, 34.275173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706760, 22.855217, 34.329609>,  <28.317371, 22.843195, 34.420334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706760, 22.855217, 34.329609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136978, 0.870601, -0.472537,
		0.183262, 0.491071, 0.851624,
		0.973474, 0.030056, -0.226814,
		28.998802, 22.864233, 34.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565512, 23.625092, 34.550472>,  <28.317371, 22.843195, 34.420334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565512, 23.625092, 34.550472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845940, 23.442528, 34.331314>,  <29.014196, 23.332991, 34.199818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845940, 23.442528, 34.331314>,  <28.565512, 23.625092, 34.550472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845940, 23.442528, 34.331314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144106, 0.843168, -0.517978,
		0.698379, 0.284184, 0.656891,
		0.701070, -0.456407, -0.547898,
		29.056261, 23.305605, 34.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047451, 24.090071, 34.538586>,  <28.565512, 23.625092, 34.550472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047451, 24.090071, 34.538586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134542, 23.844769, 34.234871>,  <29.186798, 23.697588, 34.052643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134542, 23.844769, 34.234871>,  <29.047451, 24.090071, 34.538586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134542, 23.844769, 34.234871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258909, 0.786367, -0.560886,
		0.941042, -0.074464, 0.329992,
		0.217729, -0.613255, -0.759284,
		29.199862, 23.660791, 34.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673471, 24.362650, 34.220127>,  <29.047451, 24.090071, 34.538586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673471, 24.362650, 34.220127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517542, 24.133018, 33.932106>,  <29.423985, 23.995239, 33.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517542, 24.133018, 33.932106>,  <29.673471, 24.362650, 34.220127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517542, 24.133018, 33.932106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352907, 0.629082, -0.692613,
		0.850585, -0.524106, -0.042634,
		-0.389823, -0.574080, -0.720049,
		29.400595, 23.960794, 33.716091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018124, 24.539017, 33.617722>,  <29.673471, 24.362650, 34.220127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018124, 24.539017, 33.617722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729200, 24.305943, 33.468723>,  <29.555847, 24.166098, 33.379326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729200, 24.305943, 33.468723>,  <30.018124, 24.539017, 33.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729200, 24.305943, 33.468723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081569, 0.463075, -0.882558,
		0.686747, -0.667860, -0.286953,
		-0.722306, -0.582687, -0.372492,
		29.512508, 24.131136, 33.356976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332098, 24.230906, 32.958614>,  <30.018124, 24.539017, 33.617722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332098, 24.230906, 32.958614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934483, 24.273834, 32.966301>,  <29.695913, 24.299591, 32.970913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934483, 24.273834, 32.966301>,  <30.332098, 24.230906, 32.958614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934483, 24.273834, 32.966301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041996, 0.539515, -0.840928,
		-0.100615, -0.835108, -0.540806,
		-0.994038, 0.107322, 0.019213,
		29.636271, 24.306030, 32.972065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963556, 23.940872, 32.351749>,  <30.332098, 24.230906, 32.958614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963556, 23.940872, 32.351749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733086, 24.237774, 32.488617>,  <29.594803, 24.415915, 32.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733086, 24.237774, 32.488617>,  <29.963556, 23.940872, 32.351749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733086, 24.237774, 32.488617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044224, 0.446347, -0.893767,
		-0.816128, -0.499835, -0.290000,
		-0.576176, 0.742253, 0.342172,
		29.560232, 24.460449, 32.591267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842752, 24.220261, 31.797802>,  <29.963556, 23.940872, 32.351749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842752, 24.220261, 31.797802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676018, 24.505840, 32.022842>,  <29.575977, 24.677189, 32.157867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676018, 24.505840, 32.022842>,  <29.842752, 24.220261, 31.797802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676018, 24.505840, 32.022842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077602, 0.644628, -0.760547,
		-0.905663, -0.273365, -0.324109,
		-0.416837, 0.713951, 0.562603,
		29.550966, 24.720026, 32.191624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451994, 24.592360, 31.337204>,  <29.842752, 24.220261, 31.797802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451994, 24.592360, 31.337204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463280, 24.847610, 31.644970>,  <29.470051, 25.000761, 31.829630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463280, 24.847610, 31.644970>,  <29.451994, 24.592360, 31.337204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463280, 24.847610, 31.644970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183793, 0.759909, -0.623505,
		-0.982560, -0.123823, 0.138722,
		0.028212, 0.638127, 0.769414,
		29.471743, 25.039049, 31.875793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943203, 25.067858, 31.209797>,  <29.451994, 24.592360, 31.337204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943203, 25.067858, 31.209797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197149, 25.254673, 31.455990>,  <29.349518, 25.366762, 31.603706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197149, 25.254673, 31.455990>,  <28.943203, 25.067858, 31.209797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197149, 25.254673, 31.455990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037208, 0.814173, -0.579430,
		-0.771726, 0.344959, 0.534268,
		0.634866, 0.467040, 0.615483,
		29.387609, 25.394785, 31.640635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671831, 25.688099, 31.375036>,  <28.943203, 25.067858, 31.209797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671831, 25.688099, 31.375036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067549, 25.728554, 31.417114>,  <29.304979, 25.752827, 31.442360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067549, 25.728554, 31.417114>,  <28.671831, 25.688099, 31.375036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067549, 25.728554, 31.417114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067236, 0.955706, -0.286541,
		-0.129514, 0.276401, 0.952275,
		0.989295, 0.101139, 0.105193,
		29.364338, 25.758896, 31.448671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739370, 26.436584, 31.725967>,  <28.671831, 25.688099, 31.375036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739370, 26.436584, 31.725967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072527, 26.305252, 31.547756>,  <29.272421, 26.226454, 31.440830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072527, 26.305252, 31.547756>,  <28.739370, 26.436584, 31.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072527, 26.305252, 31.547756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139177, 0.903403, -0.405577,
		0.535654, 0.275793, 0.798131,
		0.832889, -0.328330, -0.445527,
		29.322393, 26.206753, 31.414099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285351, 27.005695, 31.875633>,  <28.739370, 26.436584, 31.725967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285351, 27.005695, 31.875633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467575, 26.807747, 31.579643>,  <29.576910, 26.688976, 31.402048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467575, 26.807747, 31.579643>,  <29.285351, 27.005695, 31.875633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467575, 26.807747, 31.579643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237151, 0.868670, -0.434940,
		0.858035, 0.022655, 0.513091,
		0.455560, -0.494874, -0.739976,
		29.604242, 26.659285, 31.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045856, 27.245592, 31.913382>,  <29.285351, 27.005695, 31.875633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045856, 27.245592, 31.913382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970026, 27.105949, 31.546299>,  <29.924528, 27.022163, 31.326050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970026, 27.105949, 31.546299>,  <30.045856, 27.245592, 31.913382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970026, 27.105949, 31.546299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294696, 0.871334, -0.392341,
		0.936598, -0.344823, -0.062304,
		-0.189575, -0.349105, -0.917707,
		29.913153, 27.001219, 31.270987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498257, 27.549871, 31.572811>,  <30.045856, 27.245592, 31.913382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498257, 27.549871, 31.572811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281563, 27.425835, 31.260307>,  <30.151546, 27.351412, 31.072805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281563, 27.425835, 31.260307>,  <30.498257, 27.549871, 31.572811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281563, 27.425835, 31.260307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201749, 0.854322, -0.478989,
		0.815979, -0.417103, -0.400254,
		-0.541734, -0.310094, -0.781259,
		30.119043, 27.332806, 31.025930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884686, 27.661922, 31.024193>,  <30.498257, 27.549871, 31.572811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884686, 27.661922, 31.024193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504414, 27.679733, 30.901409>,  <30.276251, 27.690420, 30.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504414, 27.679733, 30.901409>,  <30.884686, 27.661922, 31.024193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504414, 27.679733, 30.901409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195703, 0.853896, -0.482247,
		0.240639, -0.518535, -0.820496,
		-0.950680, 0.044526, -0.306960,
		30.219210, 27.693090, 30.809320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918211, 27.647261, 30.320223>,  <30.884686, 27.661922, 31.024193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918211, 27.647261, 30.320223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569149, 27.816998, 30.416889>,  <30.359711, 27.918840, 30.474890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569149, 27.816998, 30.416889>,  <30.918211, 27.647261, 30.320223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569149, 27.816998, 30.416889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232597, 0.796324, -0.558361,
		-0.429383, -0.431046, -0.793618,
		-0.872657, 0.424343, 0.241668,
		30.307352, 27.944300, 30.489389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703138, 27.878275, 29.690294>,  <30.918211, 27.647261, 30.320223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703138, 27.878275, 29.690294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449005, 28.075806, 29.927776>,  <30.296526, 28.194324, 30.070267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449005, 28.075806, 29.927776>,  <30.703138, 27.878275, 29.690294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449005, 28.075806, 29.927776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103444, 0.816306, -0.568282,
		-0.765279, -0.299633, -0.569710,
		-0.635333, 0.493827, 0.593706,
		30.258406, 28.223953, 30.105888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211418, 28.288521, 29.266140>,  <30.703138, 27.878275, 29.690294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211418, 28.288521, 29.266140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195978, 28.463451, 29.625530>,  <30.186714, 28.568409, 29.841164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195978, 28.463451, 29.625530>,  <30.211418, 28.288521, 29.266140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195978, 28.463451, 29.625530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107545, 0.895740, -0.431375,
		-0.993451, 0.079974, -0.081609,
		-0.038602, 0.437327, 0.898474,
		30.184397, 28.594650, 29.895073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689533, 28.787571, 29.220989>,  <30.211418, 28.288521, 29.266140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689533, 28.787571, 29.220989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925024, 28.895115, 29.525913>,  <30.066319, 28.959641, 29.708866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925024, 28.895115, 29.525913>,  <29.689533, 28.787571, 29.220989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925024, 28.895115, 29.525913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030056, 0.935131, -0.353024,
		-0.807772, 0.230748, 0.542458,
		0.588729, 0.268859, 0.762308,
		30.101643, 28.975773, 29.754606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412956, 29.404402, 29.445978>,  <29.689533, 28.787571, 29.220989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412956, 29.404402, 29.445978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782112, 29.411892, 29.599823>,  <30.003605, 29.416386, 29.692129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782112, 29.411892, 29.599823>,  <29.412956, 29.404402, 29.445978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782112, 29.411892, 29.599823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106368, 0.947555, -0.301372,
		-0.370085, 0.319043, 0.872495,
		0.922888, 0.018727, 0.384612,
		30.058979, 29.417511, 29.715206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485165, 30.090450, 29.801329>,  <29.412956, 29.404402, 29.445978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485165, 30.090450, 29.801329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866207, 29.976677, 29.758179>,  <30.094833, 29.908413, 29.732288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866207, 29.976677, 29.758179>,  <29.485165, 30.090450, 29.801329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866207, 29.976677, 29.758179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235415, 0.913885, -0.330748,
		0.192662, 0.289677, 0.937533,
		0.952608, -0.284432, -0.107877,
		30.151989, 29.891348, 29.725815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826054, 30.539759, 30.185629>,  <29.485165, 30.090450, 29.801329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826054, 30.539759, 30.185629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096722, 30.397243, 29.927891>,  <30.259123, 30.311735, 29.773249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096722, 30.397243, 29.927891>,  <29.826054, 30.539759, 30.185629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096722, 30.397243, 29.927891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188707, 0.929815, -0.315964,
		0.711695, 0.092212, 0.696411,
		0.676669, -0.356287, -0.644343,
		30.299723, 30.290358, 29.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406750, 31.041126, 30.159542>,  <29.826054, 30.539759, 30.185629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406750, 31.041126, 30.159542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471298, 30.820156, 29.832424>,  <30.510027, 30.687574, 29.636154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471298, 30.820156, 29.832424>,  <30.406750, 31.041126, 30.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471298, 30.820156, 29.832424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179618, 0.831254, -0.526074,
		0.970411, -0.061997, 0.233367,
		0.161372, -0.552425, -0.817793,
		30.519711, 30.654428, 29.587086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883886, 31.474394, 29.802084>,  <30.406750, 31.041126, 30.159542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883886, 31.474394, 29.802084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790417, 31.208797, 29.517967>,  <30.734335, 31.049440, 29.347498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790417, 31.208797, 29.517967>,  <30.883886, 31.474394, 29.802084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790417, 31.208797, 29.517967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001259, 0.730722, -0.682674,
		0.972314, -0.158630, -0.171588,
		-0.233675, -0.663990, -0.710291,
		30.720314, 31.009600, 29.304880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412823, 31.453516, 29.340179>,  <30.883886, 31.474394, 29.802084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412823, 31.453516, 29.340179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105755, 31.323032, 29.119537>,  <30.921513, 31.244741, 28.987152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105755, 31.323032, 29.119537>,  <31.412823, 31.453516, 29.340179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105755, 31.323032, 29.119537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123636, 0.769184, -0.626952,
		0.628803, -0.549492, -0.550150,
		-0.767672, -0.326211, -0.551603,
		30.875454, 31.225168, 28.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683155, 31.391184, 28.559584>,  <31.412823, 31.453516, 29.340179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683155, 31.391184, 28.559584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284817, 31.424252, 28.574871>,  <31.045815, 31.444092, 28.584044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284817, 31.424252, 28.574871>,  <31.683155, 31.391184, 28.559584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284817, 31.424252, 28.574871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042682, 0.794320, -0.605998,
		-0.080455, -0.601848, -0.794548,
		-0.995844, 0.082669, 0.038219,
		30.986063, 31.449053, 28.586336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531887, 31.294064, 27.944351>,  <31.683155, 31.391184, 28.559584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531887, 31.294064, 27.944351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232454, 31.493031, 28.119713>,  <31.052794, 31.612410, 28.224930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232454, 31.493031, 28.119713>,  <31.531887, 31.294064, 27.944351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232454, 31.493031, 28.119713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077355, 0.722208, -0.687336,
		-0.658512, -0.480616, -0.579111,
		-0.748584, 0.497416, 0.438405,
		31.007879, 31.642256, 28.251234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166611, 31.659706, 27.417089>,  <31.531887, 31.294064, 27.944351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166611, 31.659706, 27.417089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020285, 31.853497, 27.734947>,  <30.932489, 31.969770, 27.925663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020285, 31.853497, 27.734947>,  <31.166611, 31.659706, 27.417089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020285, 31.853497, 27.734947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024026, 0.858457, -0.512322,
		-0.930378, -0.168323, -0.325676,
		-0.365814, 0.484478, 0.794645,
		30.910540, 31.998840, 27.973341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660219, 32.032574, 27.214306>,  <31.166611, 31.659706, 27.417089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660219, 32.032574, 27.214306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731958, 32.233391, 27.552723>,  <30.775002, 32.353882, 27.755774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731958, 32.233391, 27.552723>,  <30.660219, 32.032574, 27.214306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731958, 32.233391, 27.552723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027156, 0.857132, -0.514380,
		-0.983411, 0.115228, 0.140091,
		0.179347, 0.502043, 0.846042,
		30.785763, 32.384003, 27.806536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118364, 32.476456, 27.177322>,  <30.660219, 32.032574, 27.214306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118364, 32.476456, 27.177322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434132, 32.592144, 27.393902>,  <30.623592, 32.661556, 27.523849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434132, 32.592144, 27.393902>,  <30.118364, 32.476456, 27.177322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434132, 32.592144, 27.393902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074398, 0.830469, -0.552075,
		-0.609329, 0.476101, 0.634071,
		0.789419, 0.289222, 0.541450,
		30.670958, 32.678909, 27.556337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765562, 31.910774, 26.993580>,  <30.118364, 32.476456, 27.177322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765562, 31.910774, 26.993580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393391, 31.870388, 26.852661>,  <29.170088, 31.846155, 26.768110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393391, 31.870388, 26.852661>,  <29.765562, 31.910774, 26.993580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393391, 31.870388, 26.852661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239136, -0.561173, 0.792401,
		-0.277705, 0.821517, 0.497985,
		-0.930427, -0.100968, -0.352295,
		29.114264, 31.840097, 26.746973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178120, 31.986086, 27.512980>,  <29.765562, 31.910774, 26.993580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178120, 31.986086, 27.512980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017162, 31.755791, 27.228275>,  <28.920588, 31.617613, 27.057453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017162, 31.755791, 27.228275>,  <29.178120, 31.986086, 27.512980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017162, 31.755791, 27.228275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368168, -0.610064, 0.701622,
		-0.838171, 0.544377, 0.033518,
		-0.402395, -0.575739, -0.711760,
		28.896444, 31.583069, 27.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420156, 31.881033, 27.622852>,  <29.178120, 31.986086, 27.512980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420156, 31.881033, 27.622852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540501, 31.592224, 27.373642>,  <28.612707, 31.418938, 27.224115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540501, 31.592224, 27.373642>,  <28.420156, 31.881033, 27.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540501, 31.592224, 27.373642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363434, -0.690803, 0.625066,
		-0.881702, 0.038371, -0.470244,
		0.300861, -0.722024, -0.623027,
		28.630758, 31.375616, 27.186733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794632, 31.499952, 27.561636>,  <28.420156, 31.881033, 27.622852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794632, 31.499952, 27.561636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093157, 31.263283, 27.439690>,  <28.272272, 31.121281, 27.366522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093157, 31.263283, 27.439690>,  <27.794632, 31.499952, 27.561636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093157, 31.263283, 27.439690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407895, -0.768508, 0.492967,
		-0.525966, -0.243555, -0.814887,
		0.746311, -0.591673, -0.304864,
		28.317051, 31.085781, 27.348230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505096, 30.948061, 27.202946>,  <27.794632, 31.499952, 27.561636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505096, 30.948061, 27.202946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868547, 30.830769, 27.321884>,  <28.086618, 30.760393, 27.393248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868547, 30.830769, 27.321884>,  <27.505096, 30.948061, 27.202946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868547, 30.830769, 27.321884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417390, -0.660821, 0.623780,
		0.013583, -0.690892, -0.722830,
		0.908626, -0.293229, 0.297347,
		28.141136, 30.742800, 27.411089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381737, 30.301079, 27.334482>,  <27.505096, 30.948061, 27.202946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381737, 30.301079, 27.334482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747110, 30.337982, 27.493038>,  <27.966335, 30.360125, 27.588171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747110, 30.337982, 27.493038>,  <27.381737, 30.301079, 27.334482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747110, 30.337982, 27.493038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197635, -0.750866, 0.630191,
		0.355776, -0.653979, -0.667634,
		0.913435, 0.092259, 0.396389,
		28.021141, 30.365660, 27.611956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673515, 29.597364, 27.327847>,  <27.381737, 30.301079, 27.334482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673515, 29.597364, 27.327847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861097, 29.794109, 27.621281>,  <27.973646, 29.912157, 27.797342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861097, 29.794109, 27.621281>,  <27.673515, 29.597364, 27.327847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861097, 29.794109, 27.621281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294779, -0.695793, 0.654964,
		0.832578, -0.523396, -0.181305,
		0.468956, 0.491863, 0.733588,
		28.001783, 29.941668, 27.841356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976873, 29.105391, 27.811319>,  <27.673515, 29.597364, 27.327847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976873, 29.105391, 27.811319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948248, 29.432369, 28.039936>,  <27.931072, 29.628557, 28.177107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948248, 29.432369, 28.039936>,  <27.976873, 29.105391, 27.811319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948248, 29.432369, 28.039936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374186, -0.553162, 0.744309,
		0.924588, -0.160599, 0.345463,
		-0.071562, 0.817447, 0.571541,
		27.926779, 29.677603, 28.211399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190340, 28.947741, 28.394585>,  <27.976873, 29.105391, 27.811319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190340, 28.947741, 28.394585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973688, 29.269958, 28.490700>,  <27.843697, 29.463289, 28.548368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973688, 29.269958, 28.490700>,  <28.190340, 28.947741, 28.394585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973688, 29.269958, 28.490700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292146, -0.448412, 0.844735,
		0.788218, 0.387334, 0.478209,
		-0.541629, 0.805543, 0.240289,
		27.811199, 29.511621, 28.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334814, 29.117361, 29.105137>,  <28.190340, 28.947741, 28.394585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334814, 29.117361, 29.105137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979145, 29.280060, 29.021297>,  <27.765743, 29.377680, 28.970993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979145, 29.280060, 29.021297>,  <28.334814, 29.117361, 29.105137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979145, 29.280060, 29.021297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417936, -0.535443, 0.733914,
		0.186289, 0.740174, 0.646095,
		-0.889171, 0.406747, -0.209598,
		27.712393, 29.402084, 28.958418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064190, 29.065359, 29.736454>,  <28.334814, 29.117361, 29.105137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064190, 29.065359, 29.736454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735619, 29.125721, 29.516460>,  <27.538475, 29.161938, 29.384464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735619, 29.125721, 29.516460>,  <28.064190, 29.065359, 29.736454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735619, 29.125721, 29.516460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508420, -0.630672, 0.586312,
		-0.258382, 0.761236, 0.594775,
		-0.821431, 0.150903, -0.549982,
		27.489189, 29.170992, 29.351465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596935, 29.245989, 30.238136>,  <28.064190, 29.065359, 29.736454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596935, 29.245989, 30.238136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389990, 29.128525, 29.916615>,  <27.265823, 29.058046, 29.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389990, 29.128525, 29.916615>,  <27.596935, 29.245989, 30.238136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389990, 29.128525, 29.916615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456001, -0.700222, 0.549320,
		-0.724153, 0.650733, 0.228361,
		-0.517364, -0.293659, -0.803803,
		27.234781, 29.040428, 29.675474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916456, 29.293242, 30.462633>,  <27.596935, 29.245989, 30.238136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916456, 29.293242, 30.462633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964682, 29.033218, 30.162529>,  <26.993616, 28.877205, 29.982466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964682, 29.033218, 30.162529>,  <26.916456, 29.293242, 30.462633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964682, 29.033218, 30.162529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443606, -0.711395, 0.545097,
		-0.888076, 0.267101, -0.374138,
		0.120564, -0.650057, -0.750260,
		27.000851, 28.838202, 29.937450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309240, 28.963726, 30.421350>,  <26.916456, 29.293242, 30.462633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309240, 28.963726, 30.421350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570696, 28.707516, 30.260113>,  <26.727570, 28.553789, 30.163370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570696, 28.707516, 30.260113>,  <26.309240, 28.963726, 30.421350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570696, 28.707516, 30.260113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391213, -0.741911, 0.544537,
		-0.647849, -0.198234, -0.735523,
		0.653638, -0.640524, -0.403095,
		26.766787, 28.515358, 30.139185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922871, 28.312271, 30.419859>,  <26.309240, 28.963726, 30.421350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922871, 28.312271, 30.419859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296709, 28.194252, 30.340382>,  <26.521011, 28.123440, 30.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296709, 28.194252, 30.340382>,  <25.922871, 28.312271, 30.419859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296709, 28.194252, 30.340382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200649, -0.898500, 0.390432,
		-0.293724, -0.325028, -0.898935,
		0.934594, -0.295050, -0.198694,
		26.577087, 28.105738, 30.280773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936163, 27.714590, 30.022964>,  <25.922871, 28.312271, 30.419859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936163, 27.714590, 30.022964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296314, 27.709087, 30.196922>,  <26.512405, 27.705786, 30.301296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296314, 27.709087, 30.196922>,  <25.936163, 27.714590, 30.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296314, 27.709087, 30.196922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119416, -0.968932, 0.216588,
		0.418404, -0.246944, -0.874047,
		0.900377, -0.013754, 0.434894,
		26.566427, 27.704962, 30.327391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249062, 27.088314, 29.866537>,  <25.936163, 27.714590, 30.022964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249062, 27.088314, 29.866537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434917, 27.213825, 30.197754>,  <26.546431, 27.289131, 30.396484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434917, 27.213825, 30.197754>,  <26.249062, 27.088314, 29.866537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434917, 27.213825, 30.197754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076220, -0.945814, 0.315637,
		0.882213, -0.083544, -0.463380,
		0.464641, 0.313778, 0.828041,
		26.574310, 27.307959, 30.446167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920263, 26.763363, 29.975910>,  <26.249062, 27.088314, 29.866537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920263, 26.763363, 29.975910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808052, 26.878429, 30.342201>,  <26.740726, 26.947470, 30.561975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808052, 26.878429, 30.342201>,  <26.920263, 26.763363, 29.975910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808052, 26.878429, 30.342201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138226, -0.931982, 0.335116,
		0.949841, 0.220586, 0.221683,
		-0.280526, 0.287665, 0.915726,
		26.723894, 26.964729, 30.616919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229097, 26.227385, 30.407824>,  <26.920263, 26.763363, 29.975910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229097, 26.227385, 30.407824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999176, 26.424103, 30.669430>,  <26.861223, 26.542133, 30.826393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999176, 26.424103, 30.669430>,  <27.229097, 26.227385, 30.407824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999176, 26.424103, 30.669430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010094, -0.803448, 0.595290,
		0.818229, 0.335573, 0.466789,
		-0.574804, 0.491795, 0.654017,
		26.826735, 26.571642, 30.865635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615589, 26.384832, 31.158985>,  <27.229097, 26.227385, 30.407824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615589, 26.384832, 31.158985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218933, 26.363186, 31.205841>,  <26.980940, 26.350199, 31.233955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218933, 26.363186, 31.205841>,  <27.615589, 26.384832, 31.158985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218933, 26.363186, 31.205841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106227, -0.857731, 0.503005,
		0.073254, 0.511244, 0.856308,
		-0.991640, -0.054116, 0.117141,
		26.921442, 26.346951, 31.240984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568329, 26.229668, 31.841187>,  <27.615589, 26.384832, 31.158985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568329, 26.229668, 31.841187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208622, 26.140907, 31.690414>,  <26.992798, 26.087650, 31.599951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208622, 26.140907, 31.690414>,  <27.568329, 26.229668, 31.841187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208622, 26.140907, 31.690414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002238, -0.859409, 0.511284,
		-0.437391, 0.460625, 0.772343,
		-0.899269, -0.221902, -0.376928,
		26.938841, 26.074337, 31.577335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219666, 26.002277, 32.526840>,  <27.568329, 26.229668, 31.841187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219666, 26.002277, 32.526840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066307, 25.828503, 32.200829>,  <26.974291, 25.724237, 32.005222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066307, 25.828503, 32.200829>,  <27.219666, 26.002277, 32.526840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066307, 25.828503, 32.200829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005630, -0.881348, 0.472435,
		-0.923567, 0.185718, 0.335460,
		-0.383397, -0.434436, -0.815029,
		26.951288, 25.698172, 31.956320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806366, 25.406998, 32.854374>,  <27.219666, 26.002277, 32.526840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806366, 25.406998, 32.854374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815189, 25.321365, 32.463745>,  <26.820482, 25.269987, 32.229370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815189, 25.321365, 32.463745>,  <26.806366, 25.406998, 32.854374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815189, 25.321365, 32.463745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146137, -0.967003, 0.208682,
		-0.989018, 0.138110, -0.052614,
		0.022057, -0.214079, -0.976568,
		26.821806, 25.257141, 32.170776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264769, 24.966234, 32.679413>,  <26.806366, 25.406998, 32.854374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264769, 24.966234, 32.679413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552652, 24.904186, 32.408722>,  <26.725382, 24.866957, 32.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552652, 24.904186, 32.408722>,  <26.264769, 24.966234, 32.679413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552652, 24.904186, 32.408722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071732, -0.986118, 0.149754,
		-0.690561, -0.059236, -0.720844,
		0.719708, -0.155122, -0.676726,
		26.768564, 24.857649, 32.205704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020620, 24.346415, 32.264641>,  <26.264769, 24.966234, 32.679413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020620, 24.346415, 32.264641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412195, 24.362667, 32.184612>,  <26.647141, 24.372419, 32.136597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412195, 24.362667, 32.184612>,  <26.020620, 24.346415, 32.264641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412195, 24.362667, 32.184612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018719, -0.993731, -0.110222,
		-0.203294, 0.104156, -0.973562,
		0.978939, 0.040632, -0.200070,
		26.705877, 24.374857, 32.124592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092508, 23.860888, 31.726812>,  <26.020620, 24.346415, 32.264641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092508, 23.860888, 31.726812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452854, 23.906925, 31.894238>,  <26.669062, 23.934547, 31.994692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452854, 23.906925, 31.894238>,  <26.092508, 23.860888, 31.726812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452854, 23.906925, 31.894238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109313, -0.993286, 0.037853,
		0.420109, 0.011654, -0.907399,
		0.900865, 0.115093, 0.418563,
		26.723114, 23.941454, 32.019806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480122, 23.330162, 31.370630>,  <26.092508, 23.860888, 31.726812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480122, 23.330162, 31.370630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702152, 23.446556, 31.682327>,  <26.835371, 23.516392, 31.869345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702152, 23.446556, 31.682327>,  <26.480122, 23.330162, 31.370630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702152, 23.446556, 31.682327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383507, -0.920830, 0.070674,
		0.738113, 0.259616, -0.622726,
		0.555077, 0.290985, 0.779241,
		26.868675, 23.533852, 31.916100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183514, 23.089931, 31.183022>,  <26.480122, 23.330162, 31.370630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183514, 23.089931, 31.183022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149410, 23.139462, 31.578476>,  <27.128948, 23.169180, 31.815748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149410, 23.139462, 31.578476>,  <27.183514, 23.089931, 31.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149410, 23.139462, 31.578476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458074, -0.876294, 0.149256,
		0.884816, 0.465593, 0.017990,
		-0.085257, 0.123823, 0.988635,
		27.123833, 23.176609, 31.875067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833599, 23.029432, 31.514233>,  <27.183514, 23.089931, 31.183022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833599, 23.029432, 31.514233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576166, 22.924847, 31.801964>,  <27.421705, 22.862095, 31.974604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576166, 22.924847, 31.801964>,  <27.833599, 23.029432, 31.514233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576166, 22.924847, 31.801964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489054, -0.863436, 0.123711,
		0.588750, 0.431409, 0.683564,
		-0.643584, -0.261465, 0.719330,
		27.383091, 22.846407, 32.017761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221731, 22.585291, 31.898445>,  <27.833599, 23.029432, 31.514233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221731, 22.585291, 31.898445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854145, 22.543537, 32.050556>,  <27.633595, 22.518486, 32.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854145, 22.543537, 32.050556>,  <28.221731, 22.585291, 31.898445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854145, 22.543537, 32.050556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185797, -0.965196, 0.184052,
		0.347829, 0.239791, 0.906375,
		-0.918964, -0.104383, 0.380276,
		27.578457, 22.512222, 32.164639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346659, 22.217714, 32.500210>,  <28.221731, 22.585291, 31.898445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346659, 22.217714, 32.500210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967363, 22.126419, 32.411892>,  <27.739786, 22.071642, 32.358902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967363, 22.126419, 32.411892>,  <28.346659, 22.217714, 32.500210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967363, 22.126419, 32.411892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124731, -0.907103, 0.402002,
		-0.292032, 0.353655, 0.888620,
		-0.948240, -0.228236, -0.220791,
		27.682892, 22.057949, 32.345654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136051, 21.903421, 33.121284>,  <28.346659, 22.217714, 32.500210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136051, 21.903421, 33.121284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868769, 21.780499, 32.850269>,  <27.708399, 21.706745, 32.687660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868769, 21.780499, 32.850269>,  <28.136051, 21.903421, 33.121284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868769, 21.780499, 32.850269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103435, -0.940232, 0.324446,
		-0.736749, 0.146716, 0.660057,
		-0.668208, -0.307308, -0.677540,
		27.668306, 21.688307, 32.647007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776358, 21.396711, 33.480335>,  <28.136051, 21.903421, 33.121284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776358, 21.396711, 33.480335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723925, 21.322865, 33.090725>,  <27.692465, 21.278557, 32.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723925, 21.322865, 33.090725>,  <27.776358, 21.396711, 33.480335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723925, 21.322865, 33.090725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006361, -0.982331, 0.187046,
		-0.991351, 0.030715, 0.127594,
		-0.131085, -0.184616, -0.974030,
		27.684599, 21.267479, 32.798515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238649, 20.885359, 33.534969>,  <27.776358, 21.396711, 33.480335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238649, 20.885359, 33.534969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401289, 20.847656, 33.171478>,  <27.498873, 20.825035, 32.953384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401289, 20.847656, 33.171478>,  <27.238649, 20.885359, 33.534969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401289, 20.847656, 33.171478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013145, -0.993958, 0.108975,
		-0.913512, -0.056255, -0.402904,
		0.406599, -0.094254, -0.908732,
		27.523270, 20.819380, 32.898857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991402, 20.280434, 33.394646>,  <27.238649, 20.885359, 33.534969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991402, 20.280434, 33.394646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288603, 20.329441, 33.131454>,  <27.466925, 20.358845, 32.973541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288603, 20.329441, 33.131454>,  <26.991402, 20.280434, 33.394646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288603, 20.329441, 33.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019793, -0.986694, -0.161376,
		-0.668993, 0.106880, -0.735545,
		0.743005, 0.122519, -0.657976,
		27.511505, 20.366198, 32.934063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787449, 19.851404, 32.794071>,  <26.991402, 20.280434, 33.394646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787449, 19.851404, 32.794071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183994, 19.891029, 32.759701>,  <27.421921, 19.914804, 32.739079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183994, 19.891029, 32.759701>,  <26.787449, 19.851404, 32.794071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183994, 19.891029, 32.759701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084107, -0.983043, -0.162949,
		-0.100613, 0.154314, -0.982885,
		0.991364, 0.099062, -0.085928,
		27.481403, 19.920748, 32.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030853, 19.599119, 32.131924>,  <26.787449, 19.851404, 32.794071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030853, 19.599119, 32.131924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341900, 19.562870, 32.380795>,  <27.528528, 19.541121, 32.530117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341900, 19.562870, 32.380795>,  <27.030853, 19.599119, 32.131924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341900, 19.562870, 32.380795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093839, -0.961746, -0.257367,
		0.621696, 0.258517, -0.739367,
		0.777617, -0.090623, 0.622173,
		27.575186, 19.535683, 32.567448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488747, 19.090668, 31.856627>,  <27.030853, 19.599119, 32.131924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488747, 19.090668, 31.856627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601995, 19.120014, 32.239136>,  <27.669945, 19.137623, 32.468643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601995, 19.120014, 32.239136>,  <27.488747, 19.090668, 31.856627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601995, 19.120014, 32.239136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021433, -0.996337, 0.082786,
		0.958844, -0.043934, -0.280512,
		0.283122, 0.073366, 0.956274,
		27.686932, 19.142023, 32.526016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879690, 18.532566, 31.815836>,  <27.488747, 19.090668, 31.856627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879690, 18.532566, 31.815836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720474, 18.309296, 31.524632>,  <27.624945, 18.175333, 31.349909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720474, 18.309296, 31.524632>,  <27.879690, 18.532566, 31.815836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720474, 18.309296, 31.524632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035027, 0.802257, -0.595951,
		0.916699, -0.211713, -0.338882,
		-0.398041, -0.558177, -0.728012,
		27.601063, 18.141842, 31.306229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282778, 18.770716, 31.198601>,  <27.879690, 18.532566, 31.815836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282778, 18.770716, 31.198601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946762, 18.589725, 31.078865>,  <27.745153, 18.481131, 31.007023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946762, 18.589725, 31.078865>,  <28.282778, 18.770716, 31.198601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946762, 18.589725, 31.078865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187602, 0.759973, -0.622291,
		0.509060, -0.466591, -0.723291,
		-0.840037, -0.452475, -0.299339,
		27.694752, 18.453983, 30.989063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325260, 18.844046, 30.522312>,  <28.282778, 18.770716, 31.198601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325260, 18.844046, 30.522312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941135, 18.789822, 30.619816>,  <27.710659, 18.757286, 30.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941135, 18.789822, 30.619816>,  <28.325260, 18.844046, 30.522312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941135, 18.789822, 30.619816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271483, 0.654767, -0.705391,
		-0.063983, -0.743574, -0.665585,
		-0.960314, -0.135562, 0.243761,
		27.653042, 18.749153, 30.692944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979778, 18.989115, 29.912405>,  <28.325260, 18.844046, 30.522312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979778, 18.989115, 29.912405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693583, 19.020157, 30.190125>,  <27.521866, 19.038782, 30.356756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693583, 19.020157, 30.190125>,  <27.979778, 18.989115, 29.912405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693583, 19.020157, 30.190125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364601, 0.806257, -0.465850,
		-0.595938, -0.586453, -0.548572,
		-0.715489, 0.077608, 0.694301,
		27.478935, 19.043440, 30.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367990, 19.207413, 29.540245>,  <27.979778, 18.989115, 29.912405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367990, 19.207413, 29.540245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257751, 19.275242, 29.918724>,  <27.191608, 19.315939, 30.145811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257751, 19.275242, 29.918724>,  <27.367990, 19.207413, 29.540245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257751, 19.275242, 29.918724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393103, 0.878369, -0.271914,
		-0.877221, -0.446892, -0.175416,
		-0.275596, 0.169572, 0.946199,
		27.175072, 19.326113, 30.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753363, 19.631821, 29.463726>,  <27.367990, 19.207413, 29.540245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753363, 19.631821, 29.463726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887840, 19.706333, 29.833000>,  <26.968527, 19.751041, 30.054565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887840, 19.706333, 29.833000>,  <26.753363, 19.631821, 29.463726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887840, 19.706333, 29.833000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267862, 0.958673, -0.095896,
		-0.902898, -0.215047, 0.372196,
		0.336192, 0.186282, 0.923187,
		26.988697, 19.762218, 30.109957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296736, 20.132269, 29.722048>,  <26.753363, 19.631821, 29.463726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296736, 20.132269, 29.722048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617298, 20.155853, 29.960133>,  <26.809635, 20.170004, 30.102983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617298, 20.155853, 29.960133>,  <26.296736, 20.132269, 29.722048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617298, 20.155853, 29.960133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112724, 0.992186, 0.053487,
		-0.587406, -0.109960, 0.801788,
		0.801404, 0.058962, 0.595210,
		26.857719, 20.173542, 30.138697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135912, 20.660313, 30.162693>,  <26.296736, 20.132269, 29.722048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135912, 20.660313, 30.162693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532354, 20.619976, 30.197433>,  <26.770220, 20.595774, 30.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532354, 20.619976, 30.197433>,  <26.135912, 20.660313, 30.162693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532354, 20.619976, 30.197433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105486, 0.993132, -0.050619,
		-0.081150, 0.059330, 0.994934,
		0.991104, -0.100844, 0.086852,
		26.829685, 20.589724, 30.223490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301306, 21.091782, 30.608475>,  <26.135912, 20.660313, 30.162693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301306, 21.091782, 30.608475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657118, 21.038109, 30.433784>,  <26.870605, 21.005905, 30.328970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657118, 21.038109, 30.433784>,  <26.301306, 21.091782, 30.608475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657118, 21.038109, 30.433784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087957, 0.988313, -0.124505,
		0.448327, 0.072338, 0.890938,
		0.889531, -0.134183, -0.436724,
		26.923977, 20.997854, 30.302767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756701, 21.486286, 30.946630>,  <26.301306, 21.091782, 30.608475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756701, 21.486286, 30.946630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939255, 21.431332, 30.594986>,  <27.048788, 21.398359, 30.383999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939255, 21.431332, 30.594986>,  <26.756701, 21.486286, 30.946630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939255, 21.431332, 30.594986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139220, 0.986865, -0.081950,
		0.878822, -0.084989, 0.469519,
		0.456387, -0.137386, -0.879111,
		27.076170, 21.390116, 30.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383215, 21.940802, 31.017319>,  <26.756701, 21.486286, 30.946630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383215, 21.940802, 31.017319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301680, 21.862038, 30.633720>,  <27.252758, 21.814779, 30.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301680, 21.862038, 30.633720>,  <27.383215, 21.940802, 31.017319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301680, 21.862038, 30.633720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179681, 0.955400, -0.234364,
		0.962375, -0.220085, -0.159362,
		-0.203834, -0.196912, -0.958998,
		27.240528, 21.802965, 30.346022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951900, 22.066912, 30.595589>,  <27.383215, 21.940802, 31.017319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951900, 22.066912, 30.595589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633448, 22.097202, 30.355442>,  <27.442375, 22.115377, 30.211355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633448, 22.097202, 30.355442>,  <27.951900, 22.066912, 30.595589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633448, 22.097202, 30.355442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326663, 0.888940, -0.321056,
		0.509376, -0.451720, -0.732451,
		-0.796132, 0.075727, -0.600365,
		27.394608, 22.119921, 30.175333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213497, 22.448997, 30.065865>,  <27.951900, 22.066912, 30.595589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213497, 22.448997, 30.065865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822477, 22.471565, 29.984657>,  <27.587866, 22.485106, 29.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822477, 22.471565, 29.984657>,  <28.213497, 22.448997, 30.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822477, 22.471565, 29.984657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159344, 0.828367, -0.537046,
		0.137876, -0.557338, -0.818758,
		-0.977548, 0.056418, -0.203020,
		27.529213, 22.488491, 29.923752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032043, 22.454542, 29.338776>,  <28.213497, 22.448997, 30.065865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032043, 22.454542, 29.338776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740719, 22.664135, 29.515411>,  <27.565924, 22.789890, 29.621393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740719, 22.664135, 29.515411>,  <28.032043, 22.454542, 29.338776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740719, 22.664135, 29.515411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109694, 0.725269, -0.679670,
		-0.676408, -0.446573, -0.585701,
		-0.728313, 0.523982, 0.441591,
		27.522224, 22.821329, 29.647888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743843, 22.855230, 28.754175>,  <28.032043, 22.454542, 29.338776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743843, 22.855230, 28.754175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568953, 23.013355, 29.077301>,  <27.464018, 23.108231, 29.271175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568953, 23.013355, 29.077301>,  <27.743843, 22.855230, 28.754175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568953, 23.013355, 29.077301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227635, 0.820325, -0.524642,
		-0.870066, -0.413275, -0.268681,
		-0.437227, 0.395312, 0.807812,
		27.437784, 23.131948, 29.319645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197317, 23.196449, 28.489515>,  <27.743843, 22.855230, 28.754175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197317, 23.196449, 28.489515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258739, 23.357143, 28.850632>,  <27.295593, 23.453560, 29.067301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258739, 23.357143, 28.850632>,  <27.197317, 23.196449, 28.489515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258739, 23.357143, 28.850632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156350, 0.911995, -0.379236,
		-0.975692, -0.082917, 0.202852,
		0.153555, 0.401734, 0.902790,
		27.304806, 23.477663, 29.121469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644478, 23.616564, 28.576574>,  <27.197317, 23.196449, 28.489515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644478, 23.616564, 28.576574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927620, 23.727200, 28.836555>,  <27.097506, 23.793581, 28.992544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927620, 23.727200, 28.836555>,  <26.644478, 23.616564, 28.576574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927620, 23.727200, 28.836555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097381, 0.949574, -0.298036,
		-0.699614, 0.147673, 0.699094,
		0.707854, 0.276589, 0.649955,
		27.139977, 23.810177, 29.031542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467947, 24.305899, 28.678043>,  <26.644478, 23.616564, 28.576574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467947, 24.305899, 28.678043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836319, 24.304104, 28.833923>,  <27.057343, 24.303026, 28.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836319, 24.304104, 28.833923>,  <26.467947, 24.305899, 28.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836319, 24.304104, 28.833923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065528, 0.987481, -0.143486,
		-0.384178, 0.157677, 0.909695,
		0.920931, -0.004487, 0.389701,
		27.112598, 24.302757, 28.950834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503595, 24.878456, 29.133131>,  <26.467947, 24.305899, 28.678043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503595, 24.878456, 29.133131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874044, 24.796745, 29.006279>,  <27.096313, 24.747719, 28.930168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874044, 24.796745, 29.006279>,  <26.503595, 24.878456, 29.133131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874044, 24.796745, 29.006279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112884, 0.952240, -0.283719,
		0.359940, 0.226959, 0.904949,
		0.926121, -0.204276, -0.317130,
		27.151880, 24.735462, 28.911140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773724, 25.355211, 29.487215>,  <26.503595, 24.878456, 29.133131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773724, 25.355211, 29.487215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030958, 25.259930, 29.196095>,  <27.185299, 25.202761, 29.021421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030958, 25.259930, 29.196095>,  <26.773724, 25.355211, 29.487215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030958, 25.259930, 29.196095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028886, 0.957261, -0.287779,
		0.765247, 0.164044, 0.622484,
		0.643088, -0.238203, -0.727803,
		27.223885, 25.188469, 28.977755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203033, 25.790947, 29.592995>,  <26.773724, 25.355211, 29.487215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203033, 25.790947, 29.592995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283457, 25.683636, 29.216145>,  <27.331711, 25.619249, 28.990034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283457, 25.683636, 29.216145>,  <27.203033, 25.790947, 29.592995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283457, 25.683636, 29.216145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054248, 0.963340, -0.262741,
		0.978076, 0.001719, 0.208243,
		0.201061, -0.268277, -0.942126,
		27.343775, 25.603153, 28.933506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734659, 26.192905, 29.273071>,  <27.203033, 25.790947, 29.592995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734659, 26.192905, 29.273071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543106, 26.066074, 28.945625>,  <27.428173, 25.989975, 28.749157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543106, 26.066074, 28.945625>,  <27.734659, 26.192905, 29.273071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543106, 26.066074, 28.945625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037046, 0.938962, -0.342020,
		0.877095, -0.133462, -0.461402,
		-0.478886, -0.317077, -0.818615,
		27.399441, 25.970951, 28.700041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963856, 26.564074, 28.817329>,  <27.734659, 26.192905, 29.273071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963856, 26.564074, 28.817329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633564, 26.421158, 28.642738>,  <27.435389, 26.335409, 28.537983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633564, 26.421158, 28.642738>,  <27.963856, 26.564074, 28.817329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633564, 26.421158, 28.642738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146597, 0.883153, -0.445590,
		0.544681, -0.303951, -0.781624,
		-0.825731, -0.357288, -0.436478,
		27.385845, 26.313971, 28.511795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042181, 26.685745, 28.028080>,  <27.963856, 26.564074, 28.817329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042181, 26.685745, 28.028080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653784, 26.685200, 28.123726>,  <27.420746, 26.684872, 28.181112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653784, 26.685200, 28.123726>,  <28.042181, 26.685745, 28.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653784, 26.685200, 28.123726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173525, 0.692027, -0.700705,
		-0.164517, -0.721870, -0.672189,
		-0.970991, -0.001364, 0.239113,
		27.362486, 26.684790, 28.195459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670698, 26.665051, 27.351170>,  <28.042181, 26.685745, 28.028080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670698, 26.665051, 27.351170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402735, 26.790001, 27.620583>,  <27.241957, 26.864971, 27.782230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402735, 26.790001, 27.620583>,  <27.670698, 26.665051, 27.351170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402735, 26.790001, 27.620583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267708, 0.744524, -0.611569,
		-0.692500, -0.590005, -0.415137,
		-0.669908, 0.312376, 0.673531,
		27.201763, 26.883715, 27.822641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137295, 26.834639, 26.942389>,  <27.670698, 26.665051, 27.351170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137295, 26.834639, 26.942389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028624, 27.040756, 27.267513>,  <26.963421, 27.164427, 27.462587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028624, 27.040756, 27.267513>,  <27.137295, 26.834639, 26.942389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028624, 27.040756, 27.267513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454761, 0.675600, -0.580308,
		-0.848164, -0.527292, 0.050789,
		-0.271679, 0.515293, 0.812812,
		26.947121, 27.195345, 27.511356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411203, 27.088514, 26.873432>,  <27.137295, 26.834639, 26.942389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411203, 27.088514, 26.873432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511408, 27.308361, 27.192223>,  <26.571529, 27.440269, 27.383497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511408, 27.308361, 27.192223>,  <26.411203, 27.088514, 26.873432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511408, 27.308361, 27.192223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388101, 0.811192, -0.437429,
		-0.886917, -0.199726, 0.416518,
		0.250510, 0.549615, 0.796974,
		26.586561, 27.473246, 27.431314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767056, 27.362007, 27.138206>,  <26.411203, 27.088514, 26.873432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767056, 27.362007, 27.138206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081503, 27.590641, 27.232281>,  <26.270170, 27.727821, 27.288725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081503, 27.590641, 27.232281>,  <25.767056, 27.362007, 27.138206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081503, 27.590641, 27.232281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369068, 0.739323, -0.563197,
		-0.495792, 0.355940, 0.792147,
		0.786117, 0.571584, 0.235184,
		26.317337, 27.762115, 27.302835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490917, 27.943159, 27.364443>,  <25.767056, 27.362007, 27.138206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490917, 27.943159, 27.364443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853357, 28.090511, 27.281227>,  <26.070822, 28.178923, 27.231297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853357, 28.090511, 27.281227>,  <25.490917, 27.943159, 27.364443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853357, 28.090511, 27.281227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421015, 0.833511, -0.357781,
		0.041604, 0.411773, 0.910336,
		0.906099, 0.368380, -0.208040,
		26.125187, 28.201025, 27.218815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321333, 28.685549, 27.456253>,  <25.490917, 27.943159, 27.364443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321333, 28.685549, 27.456253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663605, 28.660072, 27.250824>,  <25.868967, 28.644787, 27.127567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663605, 28.660072, 27.250824>,  <25.321333, 28.685549, 27.456253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663605, 28.660072, 27.250824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276932, 0.781992, -0.558388,
		0.437174, 0.620026, 0.651496,
		0.855680, -0.063693, -0.513571,
		25.920309, 28.640965, 27.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507393, 29.297689, 27.232985>,  <25.321333, 28.685549, 27.456253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507393, 29.297689, 27.232985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694252, 29.070587, 26.961861>,  <25.806368, 28.934326, 26.799187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694252, 29.070587, 26.961861>,  <25.507393, 29.297689, 27.232985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694252, 29.070587, 26.961861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221473, 0.667023, -0.711358,
		0.855991, 0.482427, 0.185857,
		0.467149, -0.567754, -0.677811,
		25.834396, 28.900261, 26.758518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732178, 29.870090, 26.697992>,  <25.507393, 29.297689, 27.232985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732178, 29.870090, 26.697992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785147, 29.513908, 26.523842>,  <25.816927, 29.300200, 26.419352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785147, 29.513908, 26.523842>,  <25.732178, 29.870090, 26.697992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785147, 29.513908, 26.523842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013290, 0.437607, -0.899068,
		0.991105, 0.124841, 0.046114,
		0.132420, -0.890457, -0.435374,
		25.824873, 29.246771, 26.393230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266613, 29.989861, 26.218493>,  <25.732178, 29.870090, 26.697992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266613, 29.989861, 26.218493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026125, 29.687431, 26.115044>,  <25.881832, 29.505974, 26.052975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026125, 29.687431, 26.115044>,  <26.266613, 29.989861, 26.218493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026125, 29.687431, 26.115044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119303, 0.404952, -0.906521,
		0.790127, -0.514164, -0.333667,
		-0.601220, -0.756075, -0.258622,
		25.845758, 29.460609, 26.037457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523323, 29.782457, 25.656975>,  <26.266613, 29.989861, 26.218493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523323, 29.782457, 25.656975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152197, 29.633957, 25.642384>,  <25.929522, 29.544857, 25.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152197, 29.633957, 25.642384>,  <26.523323, 29.782457, 25.656975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152197, 29.633957, 25.642384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123212, 0.397280, -0.909388,
		0.352102, -0.839250, -0.414346,
		-0.927816, -0.371250, -0.036477,
		25.873852, 29.522581, 25.631439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446228, 29.698807, 25.001951>,  <26.523323, 29.782457, 25.656975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446228, 29.698807, 25.001951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068352, 29.688175, 25.132706>,  <25.841625, 29.681797, 25.211159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068352, 29.688175, 25.132706>,  <26.446228, 29.698807, 25.001951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068352, 29.688175, 25.132706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288538, 0.541157, -0.789870,
		-0.155903, -0.840502, -0.518894,
		-0.944690, -0.026577, 0.326885,
		25.784945, 29.680202, 25.230772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094406, 29.762203, 24.398630>,  <26.446228, 29.698807, 25.001951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094406, 29.762203, 24.398630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812035, 29.869698, 24.660759>,  <25.642611, 29.934195, 24.818035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812035, 29.869698, 24.660759>,  <26.094406, 29.762203, 24.398630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812035, 29.869698, 24.660759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346109, 0.676351, -0.650198,
		-0.617958, -0.685806, -0.384445,
		-0.705930, 0.268735, 0.655321,
		25.600256, 29.950317, 24.857355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418131, 29.597231, 24.097586>,  <26.094406, 29.762203, 24.398630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418131, 29.597231, 24.097586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366606, 29.879150, 24.376633>,  <25.335690, 30.048302, 24.544060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366606, 29.879150, 24.376633>,  <25.418131, 29.597231, 24.097586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366606, 29.879150, 24.376633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407331, 0.603787, -0.685217,
		-0.904150, -0.372427, 0.209309,
		-0.128815, 0.704797, 0.697616,
		25.327961, 30.090590, 24.585917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685463, 29.806248, 24.077702>,  <25.418131, 29.597231, 24.097586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685463, 29.806248, 24.077702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896711, 30.099422, 24.249233>,  <25.023460, 30.275326, 24.352152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896711, 30.099422, 24.249233>,  <24.685463, 29.806248, 24.077702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896711, 30.099422, 24.249233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485314, 0.674913, -0.555844,
		-0.696821, 0.085436, 0.712139,
		0.528121, 0.732935, 0.428830,
		25.055147, 30.319304, 24.377882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.236822, 30.353067, 24.383520>,  <24.685463, 29.806248, 24.077702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.236822, 30.353067, 24.383520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575523, 30.551392, 24.306393>,  <24.778744, 30.670387, 24.260117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575523, 30.551392, 24.306393>,  <24.236822, 30.353067, 24.383520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.575523, 30.551392, 24.306393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528805, 0.744887, -0.406828,
		-0.058082, 0.446447, 0.892923,
		0.846754, 0.495811, -0.192818,
		24.829550, 30.700134, 24.248547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003353, 31.087748, 24.327242>,  <24.236822, 30.353067, 24.383520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003353, 31.087748, 24.327242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370834, 31.111778, 24.171101>,  <24.591324, 31.126198, 24.077415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370834, 31.111778, 24.171101>,  <24.003353, 31.087748, 24.327242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370834, 31.111778, 24.171101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245674, 0.860805, -0.445712,
		0.309240, 0.505376, 0.805584,
		0.918703, 0.060079, -0.390354,
		24.646444, 31.129803, 24.053995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275621, 31.771856, 24.390930>,  <24.003353, 31.087748, 24.327242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275621, 31.771856, 24.390930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452538, 31.611202, 24.070164>,  <24.558687, 31.514811, 23.877705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452538, 31.611202, 24.070164>,  <24.275621, 31.771856, 24.390930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452538, 31.611202, 24.070164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323381, 0.762566, -0.560283,
		0.836542, 0.507133, 0.207396,
		0.442291, -0.401633, -0.801916,
		24.585224, 31.490713, 23.829588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657400, 32.271473, 24.051111>,  <24.275621, 31.771856, 24.390930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657400, 32.271473, 24.051111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471472, 31.991093, 23.834740>,  <24.359915, 31.822863, 23.704916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471472, 31.991093, 23.834740>,  <24.657400, 32.271473, 24.051111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471472, 31.991093, 23.834740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606364, 0.697199, -0.382408,
		0.645187, 0.150250, -0.749105,
		-0.464818, -0.700955, -0.540931,
		24.332026, 31.780806, 23.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851295, 32.331963, 23.387468>,  <24.657400, 32.271473, 24.051111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851295, 32.331963, 23.387468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491917, 32.156807, 23.400452>,  <24.276289, 32.051716, 23.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491917, 32.156807, 23.400452>,  <24.851295, 32.331963, 23.387468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491917, 32.156807, 23.400452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429862, 0.862093, -0.268353,
		0.089527, -0.255053, -0.962774,
		-0.898445, -0.437884, 0.032457,
		24.222383, 32.025440, 23.410189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476212, 32.667042, 22.760969>,  <24.851295, 32.331963, 23.387468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476212, 32.667042, 22.760969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215771, 32.512722, 23.022419>,  <24.059505, 32.420132, 23.179289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215771, 32.512722, 23.022419>,  <24.476212, 32.667042, 22.760969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215771, 32.512722, 23.022419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635960, 0.747358, -0.192383,
		-0.414271, -0.540940, -0.731959,
		-0.651103, -0.385797, 0.653625,
		24.020439, 32.396984, 23.218506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.781397, 32.707726, 22.525082>,  <24.476212, 32.667042, 22.760969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.781397, 32.707726, 22.525082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.722609, 32.681160, 22.919846>,  <23.687336, 32.665222, 23.156704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.722609, 32.681160, 22.919846>,  <23.781397, 32.707726, 22.525082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.722609, 32.681160, 22.919846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685651, 0.725980, -0.053255,
		-0.712940, -0.684502, -0.152231,
		-0.146970, -0.066409, 0.986909,
		23.678518, 32.661236, 23.215918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.087160, 32.884773, 22.569004>,  <23.781397, 32.707726, 22.525082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.087160, 32.884773, 22.569004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264910, 32.957840, 22.919811>,  <23.371559, 33.001678, 23.130297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264910, 32.957840, 22.919811>,  <23.087160, 32.884773, 22.569004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264910, 32.957840, 22.919811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574532, 0.809255, 0.122555,
		-0.687346, -0.558336, 0.464561,
		0.444375, 0.182667, 0.877020,
		23.398222, 33.012642, 23.182917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778660, 33.570354, 22.643604>,  <23.087160, 32.884773, 22.569004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778660, 33.570354, 22.643604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440886, 33.733822, 22.505089>,  <22.238220, 33.831902, 22.421980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440886, 33.733822, 22.505089>,  <22.778660, 33.570354, 22.643604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440886, 33.733822, 22.505089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172443, -0.404658, -0.898062,
		-0.507142, -0.818070, 0.271234,
		-0.844434, 0.408672, -0.346290,
		22.187555, 33.856422, 22.401201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.283878, 33.043175, 22.376179>,  <22.778660, 33.570354, 22.643604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.283878, 33.043175, 22.376179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219213, 33.390472, 22.188553>,  <22.180414, 33.598850, 22.075977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219213, 33.390472, 22.188553>,  <22.283878, 33.043175, 22.376179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219213, 33.390472, 22.188553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325580, -0.401780, -0.855904,
		-0.931591, -0.291087, -0.217729,
		-0.161663, 0.868241, -0.469066,
		22.170715, 33.650944, 22.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874514, 32.876953, 21.833517>,  <22.283878, 33.043175, 22.376179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874514, 32.876953, 21.833517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066441, 33.211376, 21.727100>,  <22.181597, 33.412029, 21.663250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066441, 33.211376, 21.727100>,  <21.874514, 32.876953, 21.833517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066441, 33.211376, 21.727100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258953, -0.424670, -0.867525,
		-0.838283, 0.347361, -0.420264,
		0.479818, 0.836060, -0.266043,
		22.210386, 33.462193, 21.647287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731846, 32.822598, 21.130939>,  <21.874514, 32.876953, 21.833517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731846, 32.822598, 21.130939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986877, 33.130558, 21.141884>,  <22.139896, 33.315334, 21.148451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986877, 33.130558, 21.141884>,  <21.731846, 32.822598, 21.130939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986877, 33.130558, 21.141884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251695, -0.174610, -0.951925,
		-0.728108, 0.613814, -0.305107,
		0.637580, 0.769898, 0.027359,
		22.178152, 33.361526, 21.150091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.609888, 33.381241, 20.649448>,  <21.731846, 32.822598, 21.130939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.609888, 33.381241, 20.649448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.001253, 33.419823, 20.722561>,  <22.236073, 33.442970, 20.766428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.001253, 33.419823, 20.722561>,  <21.609888, 33.381241, 20.649448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.001253, 33.419823, 20.722561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202201, -0.263860, -0.943129,
		-0.042736, 0.959727, -0.277666,
		0.978411, 0.096450, 0.182781,
		22.294777, 33.448757, 20.777395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926208, 33.891449, 20.188276>,  <21.609888, 33.381241, 20.649448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926208, 33.891449, 20.188276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242582, 33.678444, 20.308846>,  <22.432405, 33.550640, 20.381187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242582, 33.678444, 20.308846>,  <21.926208, 33.891449, 20.188276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242582, 33.678444, 20.308846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290627, -0.106571, -0.950883,
		0.538481, 0.839686, 0.070472,
		0.790933, -0.532513, 0.301422,
		22.479862, 33.518688, 20.399273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588966, 34.195045, 19.875673>,  <21.926208, 33.891449, 20.188276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588966, 34.195045, 19.875673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655981, 33.813995, 19.977211>,  <22.696190, 33.585365, 20.038134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655981, 33.813995, 19.977211>,  <22.588966, 34.195045, 19.875673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655981, 33.813995, 19.977211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367542, -0.178569, -0.912703,
		0.914792, 0.246208, 0.320213,
		0.167535, -0.952625, 0.253845,
		22.706242, 33.528210, 20.053364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.234873, 34.018890, 19.570122>,  <22.588966, 34.195045, 19.875673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.234873, 34.018890, 19.570122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082289, 33.654743, 19.634277>,  <22.990738, 33.436256, 19.672771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082289, 33.654743, 19.634277>,  <23.234873, 34.018890, 19.570122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.082289, 33.654743, 19.634277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400881, -0.319263, -0.858700,
		0.832937, -0.263260, 0.486734,
		-0.381458, -0.910365, 0.160390,
		22.967852, 33.381634, 19.682394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805197, 33.566315, 19.375025>,  <23.234873, 34.018890, 19.570122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805197, 33.566315, 19.375025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458317, 33.367157, 19.371922>,  <23.250189, 33.247662, 19.370060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458317, 33.367157, 19.371922>,  <23.805197, 33.566315, 19.375025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.458317, 33.367157, 19.371922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177579, -0.294662, -0.938957,
		0.465220, -0.815642, 0.343947,
		-0.867201, -0.497899, -0.007758,
		23.198156, 33.217789, 19.369595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937918, 32.989510, 19.101307>,  <23.805197, 33.566315, 19.375025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937918, 32.989510, 19.101307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542259, 32.998203, 19.043179>,  <23.304865, 33.003418, 19.008303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542259, 32.998203, 19.043179>,  <23.937918, 32.989510, 19.101307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542259, 32.998203, 19.043179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138716, -0.188012, -0.972322,
		-0.048453, -0.981926, 0.182957,
		-0.989146, 0.021733, -0.145319,
		23.245516, 33.004723, 18.999582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954496, 32.688248, 18.505112>,  <23.937918, 32.989510, 19.101307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954496, 32.688248, 18.505112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568058, 32.787296, 18.534351>,  <23.336195, 32.846725, 18.551895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568058, 32.787296, 18.534351>,  <23.954496, 32.688248, 18.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568058, 32.787296, 18.534351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074448, 0.003929, -0.997217,
		-0.247217, -0.968850, 0.014639,
		-0.966096, 0.247619, 0.073100,
		23.278229, 32.861580, 18.556282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.640671, 32.173748, 18.061569>,  <23.954496, 32.688248, 18.505112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.640671, 32.173748, 18.061569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431480, 32.513012, 18.095341>,  <23.305965, 32.716568, 18.115604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431480, 32.513012, 18.095341>,  <23.640671, 32.173748, 18.061569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.431480, 32.513012, 18.095341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108503, 0.164495, -0.980392,
		-0.845413, -0.503561, -0.178055,
		-0.522976, 0.848156, 0.084429,
		23.274588, 32.767460, 18.120668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.378441, 32.170673, 17.465176>,  <23.640671, 32.173748, 18.061569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.378441, 32.170673, 17.465176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339699, 32.549599, 17.587307>,  <23.316454, 32.776955, 17.660585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339699, 32.549599, 17.587307>,  <23.378441, 32.170673, 17.465176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.339699, 32.549599, 17.587307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206797, 0.319228, -0.924840,
		-0.973578, -0.026434, -0.226819,
		-0.096854, 0.947309, 0.305327,
		23.310642, 32.833790, 17.678905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.897989, 32.493908, 17.014959>,  <23.378441, 32.170673, 17.465176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.897989, 32.493908, 17.014959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110472, 32.779877, 17.196823>,  <23.237961, 32.951458, 17.305941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110472, 32.779877, 17.196823>,  <22.897989, 32.493908, 17.014959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.110472, 32.779877, 17.196823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180383, 0.428897, -0.885161,
		-0.827819, 0.552214, 0.098873,
		0.531205, 0.714918, 0.454659,
		23.269833, 32.994350, 17.333221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.768953, 33.064110, 16.699791>,  <22.897989, 32.493908, 17.014959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.768953, 33.064110, 16.699791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116266, 33.157074, 16.875095>,  <23.324654, 33.212852, 16.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116266, 33.157074, 16.875095>,  <22.768953, 33.064110, 16.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.116266, 33.157074, 16.875095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331572, 0.385231, -0.861195,
		-0.368983, 0.893075, 0.257428,
		0.868281, 0.232410, 0.438263,
		23.376751, 33.226795, 17.006575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037931, 33.702351, 16.378021>,  <22.768953, 33.064110, 16.699791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037931, 33.702351, 16.378021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.374651, 33.552620, 16.533588>,  <23.576683, 33.462780, 16.626928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.374651, 33.552620, 16.533588>,  <23.037931, 33.702351, 16.378021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.374651, 33.552620, 16.533588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436811, 0.049093, -0.898213,
		0.317134, 0.925996, 0.204837,
		0.841797, -0.374329, 0.388916,
		23.627190, 33.440323, 16.650263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.514938, 34.058243, 16.081064>,  <23.037931, 33.702351, 16.378021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.514938, 34.058243, 16.081064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.742336, 33.759686, 16.219463>,  <23.878775, 33.580551, 16.302504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.742336, 33.759686, 16.219463>,  <23.514938, 34.058243, 16.081064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.742336, 33.759686, 16.219463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568961, 0.052928, -0.820660,
		0.594220, 0.663400, 0.454756,
		0.568495, -0.746391, 0.345998,
		23.912886, 33.535767, 16.323263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241625, 34.279144, 16.053040>,  <23.514938, 34.058243, 16.081064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241625, 34.279144, 16.053040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269920, 33.880661, 16.073338>,  <24.286898, 33.641571, 16.085516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269920, 33.880661, 16.073338>,  <24.241625, 34.279144, 16.053040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269920, 33.880661, 16.073338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516947, -0.006894, -0.855990,
		0.853090, 0.086782, 0.514497,
		0.070738, -0.996203, 0.050743,
		24.291142, 33.581799, 16.088560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916698, 34.110153, 16.154589>,  <24.241625, 34.279144, 16.053040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916698, 34.110153, 16.154589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712332, 33.809166, 15.988332>,  <24.589712, 33.628574, 15.888577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712332, 33.809166, 15.988332>,  <24.916698, 34.110153, 16.154589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712332, 33.809166, 15.988332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615636, 0.017177, -0.787844,
		0.599966, -0.658406, 0.454469,
		-0.510914, -0.752467, -0.415644,
		24.559057, 33.583427, 15.863639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424646, 33.690186, 15.888158>,  <24.916698, 34.110153, 16.154589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424646, 33.690186, 15.888158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098507, 33.557884, 15.698083>,  <24.902822, 33.478504, 15.584038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098507, 33.557884, 15.698083>,  <25.424646, 33.690186, 15.888158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098507, 33.557884, 15.698083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552956, -0.201625, -0.808447,
		0.171588, -0.921926, 0.347288,
		-0.815351, -0.330755, -0.475188,
		24.853901, 33.458656, 15.555527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745129, 33.276333, 15.516466>,  <25.424646, 33.690186, 15.888158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745129, 33.276333, 15.516466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400473, 33.285191, 15.313651>,  <25.193680, 33.290504, 15.191962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400473, 33.285191, 15.313651>,  <25.745129, 33.276333, 15.516466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400473, 33.285191, 15.313651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500319, -0.130655, -0.855927,
		-0.085205, -0.991181, 0.101496,
		-0.861639, 0.022149, -0.507039,
		25.141981, 33.291836, 15.161539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688181, 32.587395, 15.096825>,  <25.745129, 33.276333, 15.516466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688181, 32.587395, 15.096825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487835, 32.885441, 14.920671>,  <25.367626, 33.064266, 14.814979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487835, 32.885441, 14.920671>,  <25.688181, 32.587395, 15.096825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487835, 32.885441, 14.920671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470046, -0.193069, -0.861267,
		-0.726766, -0.638381, -0.253536,
		-0.500867, 0.745114, -0.440384,
		25.337574, 33.108974, 14.788555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366127, 32.278980, 14.441048>,  <25.688181, 32.587395, 15.096825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366127, 32.278980, 14.441048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456827, 32.668552, 14.438634>,  <25.511248, 32.902298, 14.437185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456827, 32.668552, 14.438634>,  <25.366127, 32.278980, 14.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456827, 32.668552, 14.438634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596276, -0.143720, -0.789809,
		-0.770089, 0.175493, -0.613323,
		0.226753, 0.973934, -0.006035,
		25.524853, 32.960732, 14.436823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186066, 32.552753, 13.832441>,  <25.366127, 32.278980, 14.441048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186066, 32.552753, 13.832441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524452, 32.705360, 13.981460>,  <25.727484, 32.796925, 14.070870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524452, 32.705360, 13.981460>,  <25.186066, 32.552753, 13.832441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524452, 32.705360, 13.981460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456253, -0.156261, -0.876023,
		-0.276000, 0.911060, -0.306258,
		0.845965, 0.381514, 0.372545,
		25.778242, 32.819813, 14.093224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478783, 33.105217, 13.502550>,  <25.186066, 32.552753, 13.832441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478783, 33.105217, 13.502550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769344, 32.907917, 13.693984>,  <25.943682, 32.789539, 13.808845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769344, 32.907917, 13.693984>,  <25.478783, 33.105217, 13.502550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769344, 32.907917, 13.693984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563486, 0.028763, -0.825625,
		0.393470, 0.869415, 0.298830,
		0.726405, -0.493245, 0.478586,
		25.987267, 32.759945, 13.837560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196835, 33.424580, 13.516988>,  <25.478783, 33.105217, 13.502550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196835, 33.424580, 13.516988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270758, 33.033714, 13.558934>,  <26.315111, 32.799194, 13.584103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270758, 33.033714, 13.558934>,  <26.196835, 33.424580, 13.516988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270758, 33.033714, 13.558934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612717, 0.031133, -0.789689,
		0.768391, 0.210194, 0.604479,
		0.184807, -0.977164, 0.104867,
		26.326200, 32.740566, 13.590394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631357, 33.886196, 13.659638>,  <26.196835, 33.424580, 13.516988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631357, 33.886196, 13.659638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759943, 34.264603, 13.676173>,  <26.837093, 34.491646, 13.686094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759943, 34.264603, 13.676173>,  <26.631357, 33.886196, 13.659638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759943, 34.264603, 13.676173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910531, 0.320801, -0.260807,
		-0.259989, 0.046202, 0.964506,
		0.321464, 0.946019, 0.041337,
		26.856382, 34.548409, 13.688574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139456, 34.281116, 14.023522>,  <26.631357, 33.886196, 13.659638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139456, 34.281116, 14.023522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319628, 34.567913, 13.810719>,  <26.427731, 34.739990, 13.683038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319628, 34.567913, 13.810719>,  <26.139456, 34.281116, 14.023522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319628, 34.567913, 13.810719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872241, 0.480570, -0.090821,
		0.190549, 0.504947, 0.841855,
		0.450430, 0.716994, -0.532008,
		26.454758, 34.783012, 13.651117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241638, 34.922726, 14.385823>,  <26.139456, 34.281116, 14.023522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241638, 34.922726, 14.385823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281755, 35.034035, 14.003722>,  <26.305826, 35.100819, 13.774462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281755, 35.034035, 14.003722>,  <26.241638, 34.922726, 14.385823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281755, 35.034035, 14.003722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650532, 0.744787, 0.148658,
		0.752827, 0.606513, 0.255721,
		0.100295, 0.278269, -0.955253,
		26.311844, 35.117516, 13.717146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195259, 35.656467, 14.459264>,  <26.241638, 34.922726, 14.385823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195259, 35.656467, 14.459264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068169, 35.560524, 14.092326>,  <25.991915, 35.502960, 13.872164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068169, 35.560524, 14.092326>,  <26.195259, 35.656467, 14.459264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068169, 35.560524, 14.092326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708307, 0.703224, 0.061453,
		0.630359, 0.669287, -0.393323,
		-0.317724, -0.239856, -0.917344,
		25.972851, 35.488567, 13.817122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236267, 36.428982, 14.481972>,  <26.195259, 35.656467, 14.459264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236267, 36.428982, 14.481972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852037, 36.461365, 14.375581>,  <25.621500, 36.480793, 14.311747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852037, 36.461365, 14.375581>,  <26.236267, 36.428982, 14.481972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852037, 36.461365, 14.375581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169464, 0.587920, 0.790969,
		0.220407, 0.804858, -0.551021,
		-0.960574, 0.080957, -0.265976,
		25.563866, 36.485653, 14.295788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989000, 37.095398, 14.663123>,  <26.236267, 36.428982, 14.481972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989000, 37.095398, 14.663123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649549, 36.888062, 14.620868>,  <25.445879, 36.763660, 14.595514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649549, 36.888062, 14.620868>,  <25.989000, 37.095398, 14.663123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649549, 36.888062, 14.620868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339414, 0.380360, 0.860305,
		-0.405747, 0.765933, -0.498714,
		-0.848627, -0.518337, -0.105639,
		25.394962, 36.732559, 14.589176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265259, 37.546848, 14.797618>,  <25.989000, 37.095398, 14.663123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265259, 37.546848, 14.797618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236141, 37.153000, 14.861135>,  <25.218672, 36.916691, 14.899244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236141, 37.153000, 14.861135>,  <25.265259, 37.546848, 14.797618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236141, 37.153000, 14.861135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493986, 0.173907, 0.851900,
		-0.866417, -0.016430, -0.499050,
		-0.072792, -0.984625, 0.158792,
		25.214304, 36.857613, 14.908772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658827, 37.427086, 15.116604>,  <25.265259, 37.546848, 14.797618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658827, 37.427086, 15.116604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.864599, 37.103901, 15.231530>,  <24.988064, 36.909988, 15.300486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.864599, 37.103901, 15.231530>,  <24.658827, 37.427086, 15.116604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.864599, 37.103901, 15.231530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472191, 0.012785, 0.881403,
		-0.715817, -0.589091, -0.374938,
		0.514433, -0.807966, 0.287315,
		25.018929, 36.861511, 15.317724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121090, 37.009319, 15.380675>,  <24.658827, 37.427086, 15.116604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121090, 37.009319, 15.380675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453070, 36.845394, 15.532065>,  <24.652258, 36.747040, 15.622900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453070, 36.845394, 15.532065>,  <24.121090, 37.009319, 15.380675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453070, 36.845394, 15.532065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442162, -0.069609, 0.894230,
		-0.340119, -0.909511, -0.238974,
		0.829947, -0.409810, 0.378476,
		24.702053, 36.722450, 15.645608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917255, 36.274349, 15.612383>,  <24.121090, 37.009319, 15.380675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917255, 36.274349, 15.612383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231077, 36.403584, 15.824077>,  <24.419371, 36.481125, 15.951093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231077, 36.403584, 15.824077>,  <23.917255, 36.274349, 15.612383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.231077, 36.403584, 15.824077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393532, -0.400140, 0.827660,
		0.479171, -0.857616, -0.186788,
		0.784556, 0.323084, 0.529235,
		24.466444, 36.500507, 15.982847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938072, 35.777702, 16.172943>,  <23.917255, 36.274349, 15.612383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938072, 35.777702, 16.172943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192362, 36.048397, 16.321476>,  <24.344934, 36.210812, 16.410597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192362, 36.048397, 16.321476>,  <23.938072, 35.777702, 16.172943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192362, 36.048397, 16.321476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355280, -0.170556, 0.919068,
		0.685298, -0.716200, 0.132003,
		0.635723, 0.676733, 0.371333,
		24.383080, 36.251415, 16.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199457, 35.477554, 16.819178>,  <23.938072, 35.777702, 16.172943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199457, 35.477554, 16.819178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285830, 35.868092, 16.823547>,  <24.337652, 36.102413, 16.826170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285830, 35.868092, 16.823547>,  <24.199457, 35.477554, 16.819178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285830, 35.868092, 16.823547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235134, 0.041135, 0.971092,
		0.947674, -0.212257, 0.238454,
		0.215930, 0.976348, 0.010927,
		24.350609, 36.160995, 16.826826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760361, 35.532307, 17.352467>,  <24.199457, 35.477554, 16.819178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760361, 35.532307, 17.352467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574879, 35.885017, 17.317928>,  <24.463591, 36.096642, 17.297205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574879, 35.885017, 17.317928>,  <24.760361, 35.532307, 17.352467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574879, 35.885017, 17.317928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183296, -0.000129, 0.983058,
		0.866823, 0.471674, 0.161685,
		-0.463703, 0.881773, -0.086344,
		24.435768, 36.149548, 17.292025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011803, 35.940834, 17.824913>,  <24.760361, 35.532307, 17.352467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011803, 35.940834, 17.824913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667456, 36.134159, 17.761272>,  <24.460848, 36.250153, 17.723087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667456, 36.134159, 17.761272>,  <25.011803, 35.940834, 17.824913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667456, 36.134159, 17.761272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134397, 0.085600, 0.987224,
		0.490757, 0.871253, -0.008735,
		-0.860869, 0.483312, -0.159103,
		24.409195, 36.279152, 17.713541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883568, 36.523647, 18.275087>,  <25.011803, 35.940834, 17.824913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883568, 36.523647, 18.275087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517889, 36.412216, 18.157349>,  <24.298481, 36.345360, 18.086706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517889, 36.412216, 18.157349>,  <24.883568, 36.523647, 18.275087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517889, 36.412216, 18.157349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303291, -0.011461, 0.952829,
		-0.268807, 0.960346, -0.074011,
		-0.914198, -0.278574, -0.294345,
		24.243629, 36.328644, 18.069046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445078, 36.936176, 18.657686>,  <24.883568, 36.523647, 18.275087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445078, 36.936176, 18.657686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202248, 36.649361, 18.520679>,  <24.056549, 36.477272, 18.438475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202248, 36.649361, 18.520679>,  <24.445078, 36.936176, 18.657686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202248, 36.649361, 18.520679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461269, -0.033005, 0.886647,
		-0.647061, 0.696255, -0.310709,
		-0.607077, -0.717035, -0.342517,
		24.020124, 36.434250, 18.417925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.752626, 37.141640, 18.883144>,  <24.445078, 36.936176, 18.657686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.752626, 37.141640, 18.883144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.644131, 36.769718, 18.783630>,  <23.579033, 36.546566, 18.723921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.644131, 36.769718, 18.783630>,  <23.752626, 37.141640, 18.883144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.644131, 36.769718, 18.783630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609824, -0.033966, 0.791809,
		-0.744676, 0.366487, -0.557803,
		-0.271241, -0.929803, -0.248787,
		23.562757, 36.490776, 18.708994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917311, 37.036106, 18.843237>,  <23.752626, 37.141640, 18.883144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917311, 37.036106, 18.843237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098188, 36.686699, 18.915333>,  <23.206715, 36.477055, 18.958590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098188, 36.686699, 18.915333>,  <22.917311, 37.036106, 18.843237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098188, 36.686699, 18.915333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565562, -0.124558, 0.815245,
		-0.689681, -0.470586, -0.550353,
		0.452194, -0.873518, 0.180240,
		23.233847, 36.424644, 18.969404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394100, 36.705830, 19.085371>,  <22.917311, 37.036106, 18.843237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394100, 36.705830, 19.085371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691486, 36.464603, 19.201004>,  <22.869919, 36.319866, 19.270384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691486, 36.464603, 19.201004>,  <22.394100, 36.705830, 19.085371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691486, 36.464603, 19.201004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568813, -0.342886, 0.747583,
		-0.351757, -0.720207, -0.597971,
		0.743450, -0.603101, 0.289051,
		22.914526, 36.283684, 19.287729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154669, 36.070175, 19.077679>,  <22.394100, 36.705830, 19.085371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154669, 36.070175, 19.077679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.461483, 36.051868, 19.333668>,  <22.645571, 36.040882, 19.487261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.461483, 36.051868, 19.333668>,  <22.154669, 36.070175, 19.077679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.461483, 36.051868, 19.333668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572368, -0.499529, 0.650281,
		0.289921, -0.865087, -0.409353,
		0.767034, -0.045770, 0.639972,
		22.691593, 36.038136, 19.525660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.948339, 35.457203, 19.490196>,  <22.154669, 36.070175, 19.077679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.948339, 35.457203, 19.490196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.218704, 35.682983, 19.679737>,  <22.380924, 35.818451, 19.793461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.218704, 35.682983, 19.679737>,  <21.948339, 35.457203, 19.490196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.218704, 35.682983, 19.679737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478467, -0.152945, 0.864683,
		0.560545, -0.811174, 0.166693,
		0.675913, 0.564451, 0.473853,
		22.421478, 35.852318, 19.821894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.248001, 35.092163, 20.192575>,  <21.948339, 35.457203, 19.490196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.248001, 35.092163, 20.192575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338448, 35.481197, 20.214272>,  <22.392715, 35.714619, 20.227289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338448, 35.481197, 20.214272>,  <22.248001, 35.092163, 20.192575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.338448, 35.481197, 20.214272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409617, 0.044413, 0.911176,
		0.883791, -0.228249, 0.408431,
		0.226114, 0.972589, 0.054242,
		22.406282, 35.772976, 20.230545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563133, 35.150070, 20.817223>,  <22.248001, 35.092163, 20.192575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563133, 35.150070, 20.817223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430483, 35.520977, 20.747711>,  <22.350893, 35.743523, 20.706003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430483, 35.520977, 20.747711>,  <22.563133, 35.150070, 20.817223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430483, 35.520977, 20.747711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492426, -0.013016, 0.870257,
		0.804699, 0.374175, 0.460927,
		-0.331628, 0.927267, -0.173780,
		22.330994, 35.799156, 20.695578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644394, 35.504650, 21.461306>,  <22.563133, 35.150070, 20.817223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644394, 35.504650, 21.461306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365910, 35.704922, 21.255543>,  <22.198820, 35.825085, 21.132086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365910, 35.704922, 21.255543>,  <22.644394, 35.504650, 21.461306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.365910, 35.704922, 21.255543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566037, 0.057805, 0.822351,
		0.441470, 0.863700, 0.243159,
		-0.696209, 0.500680, -0.514405,
		22.157047, 35.855125, 21.101221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422361, 36.153969, 21.782091>,  <22.644394, 35.504650, 21.461306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422361, 36.153969, 21.782091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095509, 36.043007, 21.579964>,  <21.899397, 35.976429, 21.458687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095509, 36.043007, 21.579964>,  <22.422361, 36.153969, 21.782091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.095509, 36.043007, 21.579964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554297, 0.137418, 0.820897,
		-0.158278, 0.950876, -0.266051,
		-0.817131, -0.277401, -0.505317,
		21.850368, 35.959785, 21.428368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894625, 36.209251, 22.323151>,  <22.422361, 36.153969, 21.782091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894625, 36.209251, 22.323151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683319, 36.062729, 22.016750>,  <21.556536, 35.974815, 21.832911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683319, 36.062729, 22.016750>,  <21.894625, 36.209251, 22.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683319, 36.062729, 22.016750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728805, -0.267252, 0.630412,
		-0.435637, 0.891291, -0.125783,
		-0.528265, -0.366302, -0.766002,
		21.524839, 35.952839, 21.786949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139921, 36.411076, 22.487791>,  <21.894625, 36.209251, 22.323151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139921, 36.411076, 22.487791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099606, 36.126240, 22.209866>,  <21.075417, 35.955338, 22.043110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099606, 36.126240, 22.209866>,  <21.139921, 36.411076, 22.487791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099606, 36.126240, 22.209866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798463, -0.358743, 0.483488,
		-0.593548, 0.603512, -0.532422,
		-0.100788, -0.712093, -0.694813,
		21.069368, 35.912613, 22.001421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430058, 36.395473, 22.303993>,  <21.139921, 36.411076, 22.487791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430058, 36.395473, 22.303993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.584944, 36.052990, 22.167187>,  <20.677876, 35.847500, 22.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.584944, 36.052990, 22.167187>,  <20.430058, 36.395473, 22.303993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584944, 36.052990, 22.167187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824691, -0.487506, 0.286744,
		-0.412246, 0.171024, -0.894876,
		0.387217, -0.856206, -0.342015,
		20.701109, 35.796127, 22.064583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804211, 36.423649, 22.825352>,  <20.430058, 36.395473, 22.303993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804211, 36.423649, 22.825352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632032, 36.737465, 22.646816>,  <19.528725, 36.925755, 22.539696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632032, 36.737465, 22.646816>,  <19.804211, 36.423649, 22.825352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632032, 36.737465, 22.646816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749455, -0.035070, 0.661126,
		0.503025, 0.619089, 0.603071,
		-0.430446, 0.784537, -0.446338,
		19.502899, 36.972828, 22.512915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649622, 36.873585, 23.349113>,  <19.804211, 36.423649, 22.825352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649622, 36.873585, 23.349113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.422647, 37.008881, 23.048817>,  <19.286463, 37.090057, 22.868639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.422647, 37.008881, 23.048817>,  <19.649622, 36.873585, 23.349113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422647, 37.008881, 23.048817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702194, 0.277401, 0.655723,
		0.430046, 0.899247, 0.080100,
		-0.567437, 0.338236, -0.750741,
		19.252417, 37.110352, 22.823595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559938, 37.604488, 23.293671>,  <19.649622, 36.873585, 23.349113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559938, 37.604488, 23.293671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201412, 37.447598, 23.210949>,  <18.986296, 37.353462, 23.161316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201412, 37.447598, 23.210949>,  <19.559938, 37.604488, 23.293671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201412, 37.447598, 23.210949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420762, 0.605199, 0.675792,
		-0.139908, 0.692740, -0.707486,
		-0.896318, -0.392231, -0.206806,
		18.932516, 37.329929, 23.148907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058205, 38.103046, 23.199505>,  <19.559938, 37.604488, 23.293671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058205, 38.103046, 23.199505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872129, 37.778427, 23.340919>,  <18.760485, 37.583656, 23.425768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872129, 37.778427, 23.340919>,  <19.058205, 38.103046, 23.199505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872129, 37.778427, 23.340919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559307, 0.579025, 0.593216,
		-0.686130, 0.078223, -0.723261,
		-0.465190, -0.811549, 0.353536,
		18.732573, 37.534962, 23.446980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.790083, 23.516300, 27.199411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113848, 23.503151, 27.433941>,  <31.308105, 23.495260, 27.574659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113848, 23.503151, 27.433941>,  <30.790083, 23.516300, 27.199411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113848, 23.503151, 27.433941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266172, 0.910520, -0.316394,
		-0.523458, 0.412155, 0.745734,
		0.809410, -0.032874, 0.586323,
		31.356670, 23.493288, 27.609838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698183, 24.050297, 27.591747>,  <30.790083, 23.516300, 27.199411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698183, 24.050297, 27.591747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.084383, 23.947723, 27.609844>,  <31.316103, 23.886179, 27.620703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.084383, 23.947723, 27.609844>,  <30.698183, 24.050297, 27.591747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084383, 23.947723, 27.609844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260271, 0.955734, -0.137226,
		-0.008049, 0.144267, 0.989506,
		0.965502, -0.256436, 0.045241,
		31.374033, 23.870792, 27.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031391, 24.609650, 28.052538>,  <30.698183, 24.050297, 27.591747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031391, 24.609650, 28.052538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.328672, 24.433216, 27.851303>,  <31.507040, 24.327356, 27.730562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.328672, 24.433216, 27.851303>,  <31.031391, 24.609650, 28.052538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328672, 24.433216, 27.851303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390085, 0.896560, -0.209797,
		0.543586, -0.040326, 0.838384,
		0.743201, -0.441083, -0.503088,
		31.551632, 24.300892, 27.700377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695595, 24.928972, 28.200161>,  <31.031391, 24.609650, 28.052538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695595, 24.928972, 28.200161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767813, 24.749252, 27.850182>,  <31.811144, 24.641420, 27.640194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767813, 24.749252, 27.850182>,  <31.695595, 24.928972, 28.200161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767813, 24.749252, 27.850182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349446, 0.860831, -0.369942,
		0.919397, -0.238955, 0.312427,
		0.180547, -0.449300, -0.874947,
		31.821978, 24.614462, 27.587698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332577, 25.286905, 27.878532>,  <31.695595, 24.928972, 28.200161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332577, 25.286905, 27.878532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.132744, 25.116024, 27.577091>,  <32.012844, 25.013496, 27.396227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.132744, 25.116024, 27.577091>,  <32.332577, 25.286905, 27.878532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132744, 25.116024, 27.577091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116112, 0.829070, -0.546956,
		0.858449, -0.360752, -0.364586,
		-0.499583, -0.427201, -0.753602,
		31.982868, 24.987864, 27.351011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769760, 25.326445, 27.308350>,  <32.332577, 25.286905, 27.878532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769760, 25.326445, 27.308350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.400444, 25.270805, 27.165138>,  <32.178852, 25.237421, 27.079212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.400444, 25.270805, 27.165138>,  <32.769760, 25.326445, 27.308350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400444, 25.270805, 27.165138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154551, 0.718796, -0.677825,
		0.351633, -0.681164, -0.642161,
		-0.923292, -0.139099, -0.358027,
		32.123455, 25.229076, 27.057730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833260, 25.500175, 26.629545>,  <32.769760, 25.326445, 27.308350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833260, 25.500175, 26.629545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.434944, 25.511883, 26.664276>,  <32.195953, 25.518908, 26.685114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.434944, 25.511883, 26.664276>,  <32.833260, 25.500175, 26.629545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434944, 25.511883, 26.664276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028240, 0.803460, -0.594688,
		-0.087167, -0.594639, -0.799254,
		-0.995793, 0.029267, 0.086828,
		32.136208, 25.520662, 26.690325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541508, 25.504061, 25.965742>,  <32.833260, 25.500175, 26.629545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541508, 25.504061, 25.965742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260578, 25.660534, 26.203640>,  <32.092022, 25.754417, 26.346378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260578, 25.660534, 26.203640>,  <32.541508, 25.504061, 25.965742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260578, 25.660534, 26.203640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006041, 0.832175, -0.554480,
		-0.711836, -0.393015, -0.582090,
		-0.702320, 0.391182, 0.594746,
		32.049881, 25.777889, 26.382065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101463, 25.886658, 25.549587>,  <32.541508, 25.504061, 25.965742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101463, 25.886658, 25.549587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.013252, 26.023159, 25.915081>,  <31.960325, 26.105061, 26.134378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.013252, 26.023159, 25.915081>,  <32.101463, 25.886658, 25.549587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013252, 26.023159, 25.915081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133456, 0.917432, -0.374844,
		-0.966207, -0.204608, -0.156778,
		-0.220529, 0.341254, 0.913735,
		31.947094, 26.125536, 26.189201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397070, 26.209995, 25.565224>,  <32.101463, 25.886658, 25.549587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397070, 26.209995, 25.565224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611938, 26.364231, 25.865295>,  <31.740860, 26.456774, 26.045338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611938, 26.364231, 25.865295>,  <31.397070, 26.209995, 25.565224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611938, 26.364231, 25.865295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367617, 0.907502, -0.203220,
		-0.759148, -0.166614, 0.629233,
		0.537171, 0.385591, 0.750178,
		31.773090, 26.479908, 26.090349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911585, 26.680937, 25.915274>,  <31.397070, 26.209995, 25.565224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911585, 26.680937, 25.915274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.276606, 26.780807, 26.044834>,  <31.495617, 26.840731, 26.122570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.276606, 26.780807, 26.044834>,  <30.911585, 26.680937, 25.915274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276606, 26.780807, 26.044834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204341, 0.964425, -0.167717,
		-0.354255, 0.086864, 0.931106,
		0.912551, 0.249678, 0.323902,
		31.550371, 26.855711, 26.142004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771982, 27.190220, 26.368708>,  <30.911585, 26.680937, 25.915274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771982, 27.190220, 26.368708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.150776, 27.247818, 26.253826>,  <31.378052, 27.282377, 26.184896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.150776, 27.247818, 26.253826>,  <30.771982, 27.190220, 26.368708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150776, 27.247818, 26.253826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243707, 0.904457, -0.350091,
		0.209353, 0.401524, 0.891599,
		0.946984, 0.143996, -0.287205,
		31.434872, 27.291018, 26.167665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002525, 27.886192, 26.667612>,  <30.771982, 27.190220, 26.368708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002525, 27.886192, 26.667612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.258770, 27.792233, 26.375191>,  <31.412518, 27.735857, 26.199738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.258770, 27.792233, 26.375191>,  <31.002525, 27.886192, 26.667612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258770, 27.792233, 26.375191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174315, 0.882715, -0.436382,
		0.747817, 0.406986, 0.524531,
		0.640613, -0.234900, -0.731052,
		31.450954, 27.721762, 26.155874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397360, 28.526945, 26.498905>,  <31.002525, 27.886192, 26.667612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397360, 28.526945, 26.498905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437859, 28.296890, 26.174198>,  <31.462158, 28.158857, 25.979374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437859, 28.296890, 26.174198>,  <31.397360, 28.526945, 26.498905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437859, 28.296890, 26.174198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123967, 0.802306, -0.583898,
		0.987107, 0.159750, 0.009932,
		0.101246, -0.575139, -0.811766,
		31.468233, 28.124348, 25.930668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840088, 28.953051, 26.105883>,  <31.397360, 28.526945, 26.498905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840088, 28.953051, 26.105883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.631207, 28.711609, 25.864899>,  <31.505877, 28.566744, 25.720308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.631207, 28.711609, 25.864899>,  <31.840088, 28.953051, 26.105883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631207, 28.711609, 25.864899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388768, 0.797252, -0.461789,
		0.759054, -0.006929, -0.650991,
		-0.522204, -0.603607, -0.602463,
		31.474545, 28.530527, 25.684160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794739, 29.335091, 25.467672>,  <31.840088, 28.953051, 26.105883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794739, 29.335091, 25.467672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523777, 29.048218, 25.402222>,  <31.361200, 28.876095, 25.362951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523777, 29.048218, 25.402222>,  <31.794739, 29.335091, 25.467672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523777, 29.048218, 25.402222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438497, 0.572282, -0.692975,
		0.590639, -0.397665, -0.702146,
		-0.677397, -0.717186, -0.163637,
		31.320557, 28.833063, 25.353132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721685, 29.343891, 24.772661>,  <31.794739, 29.335091, 25.467672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721685, 29.343891, 24.772661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.397997, 29.146248, 24.899796>,  <31.203785, 29.027662, 24.976076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.397997, 29.146248, 24.899796>,  <31.721685, 29.343891, 24.772661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397997, 29.146248, 24.899796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563153, 0.498222, -0.659268,
		0.167398, -0.712482, -0.681430,
		-0.809220, -0.494109, 0.317835,
		31.155231, 28.998014, 24.995146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378790, 29.187824, 24.200790>,  <31.721685, 29.343891, 24.772661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378790, 29.187824, 24.200790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.104362, 29.157337, 24.490204>,  <30.939705, 29.139044, 24.663851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.104362, 29.157337, 24.490204>,  <31.378790, 29.187824, 24.200790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104362, 29.157337, 24.490204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621373, 0.578668, -0.528241,
		-0.378423, -0.811994, -0.444368,
		-0.686070, -0.076219, 0.723532,
		30.898542, 29.134472, 24.707264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735815, 29.038252, 23.875563>,  <31.378790, 29.187824, 24.200790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735815, 29.038252, 23.875563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623522, 29.180843, 24.232014>,  <30.556145, 29.266397, 24.445885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623522, 29.180843, 24.232014>,  <30.735815, 29.038252, 23.875563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623522, 29.180843, 24.232014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662671, 0.599657, -0.448642,
		-0.694303, -0.716475, 0.067883,
		-0.280734, 0.356477, 0.891130,
		30.539301, 29.287786, 24.499353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986940, 28.834999, 23.850657>,  <30.735815, 29.038252, 23.875563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986940, 28.834999, 23.850657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.045172, 29.106823, 24.138268>,  <30.080111, 29.269918, 24.310835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.045172, 29.106823, 24.138268>,  <29.986940, 28.834999, 23.850657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045172, 29.106823, 24.138268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770574, 0.533702, -0.348392,
		-0.620501, -0.503347, 0.601349,
		0.145579, 0.679561, 0.719029,
		30.088846, 29.310692, 24.353977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424828, 28.966314, 24.242477>,  <29.986940, 28.834999, 23.850657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424828, 28.966314, 24.242477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619390, 29.310577, 24.302711>,  <29.736128, 29.517136, 24.338852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619390, 29.310577, 24.302711>,  <29.424828, 28.966314, 24.242477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619390, 29.310577, 24.302711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847440, 0.506671, -0.158525,
		-0.212733, -0.050504, 0.975804,
		0.486405, 0.860659, 0.150584,
		29.765312, 29.568775, 24.347887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991865, 29.388453, 24.532291>,  <29.424828, 28.966314, 24.242477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991865, 29.388453, 24.532291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257141, 29.671021, 24.433376>,  <29.416307, 29.840561, 24.374027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257141, 29.671021, 24.433376>,  <28.991865, 29.388453, 24.532291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257141, 29.671021, 24.433376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738412, 0.563611, -0.370258,
		-0.122182, 0.428153, 0.895409,
		0.663189, 0.706419, -0.247290,
		29.456099, 29.882946, 24.359190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843754, 29.959768, 24.846806>,  <28.991865, 29.388453, 24.532291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843754, 29.959768, 24.846806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.019091, 30.047283, 24.498096>,  <29.124292, 30.099792, 24.288872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.019091, 30.047283, 24.498096>,  <28.843754, 29.959768, 24.846806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019091, 30.047283, 24.498096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830318, 0.469930, -0.299561,
		0.344131, 0.855159, 0.387656,
		0.438344, 0.218789, -0.871772,
		29.150593, 30.112921, 24.236565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208038, 29.439009, 24.940664>,  <28.843754, 29.959768, 24.846806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208038, 29.439009, 24.940664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126823, 29.392998, 24.551708>,  <28.078094, 29.365391, 24.318335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126823, 29.392998, 24.551708>,  <28.208038, 29.439009, 24.940664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126823, 29.392998, 24.551708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078587, -0.987958, 0.133278,
		-0.976012, 0.103478, 0.191554,
		-0.203039, -0.115027, -0.972391,
		28.065912, 29.358490, 24.259991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610605, 28.970810, 24.933235>,  <28.208038, 29.439009, 24.940664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610605, 28.970810, 24.933235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.751961, 28.938473, 24.560444>,  <27.836773, 28.919071, 24.336769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.751961, 28.938473, 24.560444>,  <27.610605, 28.970810, 24.933235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751961, 28.938473, 24.560444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146887, -0.988696, 0.030067,
		-0.923874, 0.126270, -0.361267,
		0.353387, -0.080843, -0.931978,
		27.857977, 28.914219, 24.280851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045023, 28.684885, 24.599386>,  <27.610605, 28.970810, 24.933235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045023, 28.684885, 24.599386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354446, 28.609631, 24.357323>,  <27.540100, 28.564478, 24.212086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354446, 28.609631, 24.357323>,  <27.045023, 28.684885, 24.599386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354446, 28.609631, 24.357323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156065, -0.982062, 0.105821,
		-0.614210, 0.012585, -0.789042,
		0.773557, -0.188138, -0.605156,
		27.586514, 28.553188, 24.175776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823664, 28.247452, 24.031712>,  <27.045023, 28.684885, 24.599386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823664, 28.247452, 24.031712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.209591, 28.194725, 24.122707>,  <27.441147, 28.163090, 24.177305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.209591, 28.194725, 24.122707>,  <26.823664, 28.247452, 24.031712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209591, 28.194725, 24.122707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132585, -0.991099, -0.011965,
		0.227042, -0.018617, -0.973707,
		0.964818, -0.131816, 0.227489,
		27.499037, 28.155180, 24.190954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166178, 27.720865, 23.454494>,  <26.823664, 28.247452, 24.031712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166178, 27.720865, 23.454494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.410212, 27.706329, 23.771095>,  <27.556631, 27.697609, 23.961056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.410212, 27.706329, 23.771095>,  <27.166178, 27.720865, 23.454494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410212, 27.706329, 23.771095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071460, -0.997400, 0.009289,
		0.789109, -0.062228, -0.611093,
		0.610083, -0.036338, 0.791504,
		27.593237, 27.695427, 24.008547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592257, 27.105913, 23.264671>,  <27.166178, 27.720865, 23.454494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592257, 27.105913, 23.264671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652897, 27.192070, 23.650547>,  <27.689281, 27.243765, 23.882072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652897, 27.192070, 23.650547>,  <27.592257, 27.105913, 23.264671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652897, 27.192070, 23.650547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145347, -0.970217, 0.193786,
		0.977697, 0.110837, -0.178393,
		0.151601, 0.215393, 0.964688,
		27.698378, 27.256687, 23.939953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269880, 26.827967, 23.416040>,  <27.592257, 27.105913, 23.264671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269880, 26.827967, 23.416040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.037867, 26.866325, 23.739613>,  <27.898659, 26.889341, 23.933756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.037867, 26.866325, 23.739613>,  <28.269880, 26.827967, 23.416040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037867, 26.866325, 23.739613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102294, -0.976611, 0.189124,
		0.808144, 0.192446, 0.556657,
		-0.580033, 0.095897, 0.808928,
		27.863857, 26.895094, 23.982290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668663, 26.425743, 23.962564>,  <28.269880, 26.827967, 23.416040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668663, 26.425743, 23.962564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.303530, 26.456367, 24.123001>,  <28.084450, 26.474743, 24.219263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.303530, 26.456367, 24.123001>,  <28.668663, 26.425743, 23.962564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303530, 26.456367, 24.123001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000064, -0.982238, 0.187639,
		0.408335, 0.171309, 0.896614,
		-0.912832, 0.076562, 0.401093,
		28.029680, 26.479336, 24.243328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728039, 26.195910, 24.665220>,  <28.668663, 26.425743, 23.962564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728039, 26.195910, 24.665220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.339132, 26.177631, 24.573475>,  <28.105787, 26.166664, 24.518429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.339132, 26.177631, 24.573475>,  <28.728039, 26.195910, 24.665220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339132, 26.177631, 24.573475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019250, -0.961759, 0.273219,
		-0.233077, 0.270058, 0.934208,
		-0.972268, -0.045698, -0.229362,
		28.047451, 26.163921, 24.504665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413696, 25.742321, 25.267231>,  <28.728039, 26.195910, 24.665220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413696, 25.742321, 25.267231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.098351, 25.723938, 25.021835>,  <27.909143, 25.712908, 24.874598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.098351, 25.723938, 25.021835>,  <28.413696, 25.742321, 25.267231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098351, 25.723938, 25.021835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126291, -0.963879, 0.234497,
		-0.602107, 0.262347, 0.754083,
		-0.788364, -0.045959, -0.613490,
		27.861841, 25.710150, 24.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822067, 25.473282, 25.659660>,  <28.413696, 25.742321, 25.267231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822067, 25.473282, 25.659660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.756601, 25.401665, 25.271606>,  <27.717321, 25.358694, 25.038774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.756601, 25.401665, 25.271606>,  <27.822067, 25.473282, 25.659660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756601, 25.401665, 25.271606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248789, -0.944117, 0.216211,
		-0.954630, 0.276744, 0.109974,
		-0.163664, -0.179041, -0.970133,
		27.707502, 25.347952, 24.980566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124449, 25.281570, 25.525082>,  <27.822067, 25.473282, 25.659660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124449, 25.281570, 25.525082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.355524, 25.118385, 25.242283>,  <27.494169, 25.020475, 25.072603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.355524, 25.118385, 25.242283>,  <27.124449, 25.281570, 25.525082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355524, 25.118385, 25.242283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156285, -0.905401, 0.394746,
		-0.801158, -0.117546, -0.586796,
		0.577686, -0.407961, -0.706998,
		27.528830, 24.995996, 25.030184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792713, 24.641539, 25.457914>,  <27.124449, 25.281570, 25.525082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792713, 24.641539, 25.457914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.158955, 24.619488, 25.298599>,  <27.378698, 24.606256, 25.203011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.158955, 24.619488, 25.298599>,  <26.792713, 24.641539, 25.457914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158955, 24.619488, 25.298599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126275, -0.901016, 0.414999,
		-0.381742, -0.430267, -0.818012,
		0.915602, -0.055128, -0.398287,
		27.433636, 24.602949, 25.179113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891529, 24.028492, 25.157310>,  <26.792713, 24.641539, 25.457914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891529, 24.028492, 25.157310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.276134, 24.136524, 25.177505>,  <27.506897, 24.201344, 25.189623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.276134, 24.136524, 25.177505>,  <26.891529, 24.028492, 25.157310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276134, 24.136524, 25.177505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250709, -0.937593, 0.240965,
		0.112418, -0.219033, -0.969220,
		0.961513, 0.270081, 0.050488,
		27.564589, 24.217548, 25.192652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299114, 23.452793, 24.826374>,  <26.891529, 24.028492, 25.157310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299114, 23.452793, 24.826374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524349, 23.663490, 25.081081>,  <27.659491, 23.789909, 25.233906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524349, 23.663490, 25.081081>,  <27.299114, 23.452793, 24.826374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524349, 23.663490, 25.081081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425009, -0.845407, 0.323502,
		0.708729, 0.088471, -0.699911,
		0.563089, 0.526744, 0.636766,
		27.693275, 23.821514, 25.272112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953920, 23.236345, 24.714869>,  <27.299114, 23.452793, 24.826374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953920, 23.236345, 24.714869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.939997, 23.400623, 25.079311>,  <27.931643, 23.499189, 25.297977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.939997, 23.400623, 25.079311>,  <27.953920, 23.236345, 24.714869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939997, 23.400623, 25.079311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641695, -0.689726, 0.335419,
		0.766170, 0.596329, -0.239532,
		-0.034809, 0.410694, 0.911108,
		27.929554, 23.523832, 25.352644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675484, 23.130953, 24.904373>,  <27.953920, 23.236345, 24.714869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675484, 23.130953, 24.904373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.507156, 23.206703, 25.259235>,  <28.406160, 23.252153, 25.472153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.507156, 23.206703, 25.259235>,  <28.675484, 23.130953, 24.904373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507156, 23.206703, 25.259235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545925, -0.728177, 0.414396,
		0.724483, 0.658707, 0.203048,
		-0.420820, 0.189374, 0.887157,
		28.380911, 23.263515, 25.525383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.320974, 23.255159, 25.308765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010059, 23.158218, 25.541004>,  <28.823511, 23.100054, 25.680347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010059, 23.158218, 25.541004>,  <29.320974, 23.255159, 25.308765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010059, 23.158218, 25.541004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608811, -0.522473, 0.596969,
		0.158669, 0.817489, 0.553657,
		-0.777286, -0.242352, 0.580597,
		28.776875, 23.085512, 25.715183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514933, 23.302509, 26.029747>,  <29.320974, 23.255159, 25.308765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514933, 23.302509, 26.029747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189449, 23.072044, 26.060520>,  <28.994160, 22.933765, 26.078983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189449, 23.072044, 26.060520>,  <29.514933, 23.302509, 26.029747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189449, 23.072044, 26.060520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514116, -0.651605, 0.557759,
		-0.271230, 0.493405, 0.826430,
		-0.813707, -0.576161, 0.076932,
		28.945337, 22.899197, 26.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229084, 23.338818, 26.738157>,  <29.514933, 23.302509, 26.029747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229084, 23.338818, 26.738157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.119469, 22.984570, 26.588181>,  <29.053699, 22.772020, 26.498194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.119469, 22.984570, 26.588181>,  <29.229084, 23.338818, 26.738157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119469, 22.984570, 26.588181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416837, -0.460721, 0.783570,
		-0.866688, 0.058440, 0.495415,
		-0.274040, -0.885619, -0.374942,
		29.037256, 22.718884, 26.475698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139084, 22.997524, 27.225786>,  <29.229084, 23.338818, 26.738157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139084, 22.997524, 27.225786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098566, 22.686787, 26.977188>,  <29.074255, 22.500345, 26.828030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098566, 22.686787, 26.977188>,  <29.139084, 22.997524, 27.225786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098566, 22.686787, 26.977188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263898, -0.623309, 0.736101,
		-0.959217, -0.089449, 0.268144,
		-0.101293, -0.776843, -0.621494,
		29.068178, 22.453733, 26.790739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844484, 22.536648, 27.635084>,  <29.139084, 22.997524, 27.225786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844484, 22.536648, 27.635084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010004, 22.329018, 27.335930>,  <29.109316, 22.204439, 27.156437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010004, 22.329018, 27.335930>,  <28.844484, 22.536648, 27.635084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010004, 22.329018, 27.335930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345142, -0.670740, 0.656495,
		-0.842407, -0.529782, -0.098395,
		0.413796, -0.519076, -0.747886,
		29.134144, 22.173296, 27.111565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504414, 21.911440, 27.674322>,  <28.844484, 22.536648, 27.635084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504414, 21.911440, 27.674322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842899, 21.836418, 27.474827>,  <29.045992, 21.791405, 27.355129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842899, 21.836418, 27.474827>,  <28.504414, 21.911440, 27.674322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842899, 21.836418, 27.474827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271309, -0.653920, 0.706243,
		-0.458594, -0.732948, -0.502474,
		0.846217, -0.187553, -0.498739,
		29.096764, 21.780151, 27.325205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529060, 21.177601, 27.519371>,  <28.504414, 21.911440, 27.674322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529060, 21.177601, 27.519371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899546, 21.328030, 27.529949>,  <29.121838, 21.418287, 27.536297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899546, 21.328030, 27.529949>,  <28.529060, 21.177601, 27.519371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899546, 21.328030, 27.529949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285669, -0.745878, 0.601714,
		0.246015, -0.549760, -0.798274,
		0.926212, 0.376073, 0.026448,
		29.177410, 21.440851, 27.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877432, 20.532635, 27.258104>,  <28.529060, 21.177601, 27.519371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877432, 20.532635, 27.258104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138445, 20.759041, 27.459629>,  <29.295053, 20.894884, 27.580544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138445, 20.759041, 27.459629>,  <28.877432, 20.532635, 27.258104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138445, 20.759041, 27.459629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375067, -0.818970, 0.434295,
		0.658426, -0.094429, -0.746699,
		0.652534, 0.566013, 0.503814,
		29.334206, 20.928844, 27.610773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392639, 20.060719, 27.228222>,  <28.877432, 20.532635, 27.258104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392639, 20.060719, 27.228222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516747, 20.336712, 27.489803>,  <29.591211, 20.502308, 27.646751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516747, 20.336712, 27.489803>,  <29.392639, 20.060719, 27.228222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516747, 20.336712, 27.489803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451487, -0.712322, 0.537360,
		0.836596, 0.128526, -0.532530,
		0.310268, 0.689984, 0.653954,
		29.609827, 20.543707, 27.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159504, 19.950411, 27.314421>,  <29.392639, 20.060719, 27.228222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159504, 19.950411, 27.314421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025028, 20.136196, 27.642139>,  <29.944342, 20.247667, 27.838770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025028, 20.136196, 27.642139>,  <30.159504, 19.950411, 27.314421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025028, 20.136196, 27.642139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399700, -0.717336, 0.570675,
		0.852769, 0.519329, 0.055516,
		-0.336192, 0.464464, 0.819298,
		29.924171, 20.275536, 27.887928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614563, 19.750557, 27.817841>,  <30.159504, 19.950411, 27.314421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614563, 19.750557, 27.817841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311083, 19.895931, 28.034096>,  <30.128996, 19.983156, 28.163849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311083, 19.895931, 28.034096>,  <30.614563, 19.750557, 27.817841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311083, 19.895931, 28.034096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080730, -0.771060, 0.631624,
		0.646421, 0.522858, 0.555662,
		-0.758698, 0.363436, 0.540639,
		30.083473, 20.004963, 28.196287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858303, 19.741529, 28.577946>,  <30.614563, 19.750557, 27.817841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858303, 19.741529, 28.577946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458382, 19.741379, 28.570065>,  <30.218428, 19.741287, 28.565336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458382, 19.741379, 28.570065>,  <30.858303, 19.741529, 28.577946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458382, 19.741379, 28.570065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010530, -0.834809, 0.550439,
		-0.016655, 0.550540, 0.834643,
		-0.999806, -0.000379, -0.019701,
		30.158440, 19.741264, 28.564154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691603, 19.558422, 29.251261>,  <30.858303, 19.741529, 28.577946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691603, 19.558422, 29.251261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385023, 19.461002, 29.013523>,  <30.201077, 19.402550, 28.870880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385023, 19.461002, 29.013523>,  <30.691603, 19.558422, 29.251261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385023, 19.461002, 29.013523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115135, -0.858241, 0.500166,
		-0.631904, 0.451780, 0.629756,
		-0.766447, -0.243550, -0.594342,
		30.155088, 19.387938, 28.835220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085136, 19.453300, 29.741329>,  <30.691603, 19.558422, 29.251261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085136, 19.453300, 29.741329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968559, 19.281898, 29.399231>,  <29.898613, 19.179058, 29.193972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968559, 19.281898, 29.399231>,  <30.085136, 19.453300, 29.741329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968559, 19.281898, 29.399231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218686, -0.840535, 0.495658,
		-0.931255, 0.331487, 0.151261,
		-0.291444, -0.428506, -0.855245,
		29.881126, 19.153347, 29.142658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565279, 19.068056, 29.965891>,  <30.085136, 19.453300, 29.741329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565279, 19.068056, 29.965891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655354, 18.906422, 29.611263>,  <29.709398, 18.809441, 29.398487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655354, 18.906422, 29.611263>,  <29.565279, 19.068056, 29.965891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655354, 18.906422, 29.611263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283125, -0.897814, 0.337299,
		-0.932272, 0.175054, -0.316584,
		0.225188, -0.404087, -0.886569,
		29.722910, 18.785196, 29.345293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023333, 18.637115, 29.890631>,  <29.565279, 19.068056, 29.965891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023333, 18.637115, 29.890631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309057, 18.510159, 29.641144>,  <29.480492, 18.433985, 29.491451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309057, 18.510159, 29.641144>,  <29.023333, 18.637115, 29.890631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309057, 18.510159, 29.641144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081767, -0.922989, 0.376039,
		-0.695035, -0.217609, -0.685254,
		0.714311, -0.317392, -0.623716,
		29.523350, 18.414942, 29.454029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789610, 17.987637, 29.537584>,  <29.023333, 18.637115, 29.890631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789610, 17.987637, 29.537584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187931, 18.022663, 29.548214>,  <29.426924, 18.043680, 29.554592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187931, 18.022663, 29.548214>,  <28.789610, 17.987637, 29.537584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187931, 18.022663, 29.548214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067710, -0.900402, 0.429757,
		0.061559, -0.426154, -0.902554,
		0.995804, 0.087568, 0.026573,
		29.486671, 18.048933, 29.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009068, 17.339113, 29.276495>,  <28.789610, 17.987637, 29.537584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009068, 17.339113, 29.276495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337343, 17.493107, 29.445377>,  <29.534309, 17.585503, 29.546707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337343, 17.493107, 29.445377>,  <29.009068, 17.339113, 29.276495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337343, 17.493107, 29.445377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140534, -0.852234, 0.503931,
		0.553822, -0.354237, -0.753523,
		0.820689, 0.384984, 0.422204,
		29.583549, 17.608603, 29.572039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550724, 16.792269, 29.232468>,  <29.009068, 17.339113, 29.276495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550724, 16.792269, 29.232468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649393, 17.045570, 29.525902>,  <29.708593, 17.197552, 29.701962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649393, 17.045570, 29.525902>,  <29.550724, 16.792269, 29.232468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649393, 17.045570, 29.525902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396112, -0.756736, 0.520045,
		0.884449, 0.162302, -0.437503,
		0.246670, 0.633253, 0.733583,
		29.723394, 17.235546, 29.745977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239283, 16.493847, 29.425968>,  <29.550724, 16.792269, 29.232468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239283, 16.493847, 29.425968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059065, 16.724590, 29.698509>,  <29.950933, 16.863037, 29.862034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059065, 16.724590, 29.698509>,  <30.239283, 16.493847, 29.425968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059065, 16.724590, 29.698509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087675, -0.788104, 0.609266,
		0.888439, 0.214763, 0.405652,
		-0.450544, 0.576861, 0.681353,
		29.923903, 16.897648, 29.902916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593952, 16.237484, 30.139339>,  <30.239283, 16.493847, 29.425968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593952, 16.237484, 30.139339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274647, 16.444954, 30.261814>,  <30.083063, 16.569435, 30.335299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274647, 16.444954, 30.261814>,  <30.593952, 16.237484, 30.139339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274647, 16.444954, 30.261814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051764, -0.565556, 0.823084,
		0.600080, 0.641188, 0.478312,
		-0.798263, 0.518676, 0.306188,
		30.035168, 16.600557, 30.353670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699259, 16.318680, 30.857706>,  <30.593952, 16.237484, 30.139339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699259, 16.318680, 30.857706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307339, 16.362450, 30.790752>,  <30.072187, 16.388712, 30.750580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307339, 16.362450, 30.790752>,  <30.699259, 16.318680, 30.857706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307339, 16.362450, 30.790752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199957, -0.523767, 0.828061,
		0.002938, 0.844805, 0.535067,
		-0.979800, 0.109423, -0.167385,
		30.013399, 16.395277, 30.740538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388054, 16.558714, 31.423450>,  <30.699259, 16.318680, 30.857706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388054, 16.558714, 31.423450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098316, 16.384144, 31.209961>,  <29.924473, 16.279402, 31.081867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098316, 16.384144, 31.209961>,  <30.388054, 16.558714, 31.423450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098316, 16.384144, 31.209961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220575, -0.586755, 0.779144,
		-0.653201, 0.682094, 0.328749,
		-0.724345, -0.436424, -0.533722,
		29.881012, 16.253216, 31.049845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737785, 16.498600, 31.803999>,  <30.388054, 16.558714, 31.423450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737785, 16.498600, 31.803999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800173, 16.227715, 31.516373>,  <29.837605, 16.065184, 31.343798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800173, 16.227715, 31.516373>,  <29.737785, 16.498600, 31.803999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800173, 16.227715, 31.516373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192543, -0.734854, 0.650320,
		-0.968815, 0.037023, -0.245005,
		0.155966, -0.677213, -0.719066,
		29.846962, 16.024551, 31.300653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294025, 16.862682, 32.136902>,  <29.737785, 16.498600, 31.803999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294025, 16.862682, 32.136902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595118, 16.930489, 32.391354>,  <30.775772, 16.971172, 32.544025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595118, 16.930489, 32.391354>,  <30.294025, 16.862682, 32.136902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595118, 16.930489, 32.391354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069649, 0.981364, -0.179094,
		-0.654635, 0.090504, 0.750508,
		0.752730, 0.169513, 0.636132,
		30.820936, 16.981342, 32.582191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132498, 17.460648, 32.529667>,  <30.294025, 16.862682, 32.136902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132498, 17.460648, 32.529667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530878, 17.432556, 32.507233>,  <30.769907, 17.415701, 32.493771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530878, 17.432556, 32.507233>,  <30.132498, 17.460648, 32.529667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530878, 17.432556, 32.507233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048076, 0.943550, -0.327723,
		0.075937, 0.323700, 0.943107,
		0.995953, -0.070227, -0.056088,
		30.829664, 17.411488, 32.490406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452908, 18.190826, 32.839054>,  <30.132498, 17.460648, 32.529667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452908, 18.190826, 32.839054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710922, 18.007793, 32.594254>,  <30.865730, 17.897974, 32.447372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710922, 18.007793, 32.594254>,  <30.452908, 18.190826, 32.839054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710922, 18.007793, 32.594254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329689, 0.889163, -0.317325,
		0.689372, 0.002916, 0.724401,
		0.645036, -0.457582, -0.612003,
		30.904432, 17.870520, 32.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127014, 18.472208, 32.970165>,  <30.452908, 18.190826, 32.839054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127014, 18.472208, 32.970165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148289, 18.313461, 32.603630>,  <31.161055, 18.218214, 32.383709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148289, 18.313461, 32.603630>,  <31.127014, 18.472208, 32.970165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148289, 18.313461, 32.603630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292764, 0.883508, -0.365654,
		0.954704, -0.248822, 0.163179,
		0.053187, -0.396865, -0.916335,
		31.164246, 18.194403, 32.328728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694668, 18.877573, 32.678371>,  <31.127014, 18.472208, 32.970165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694668, 18.877573, 32.678371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.538261, 18.678925, 32.368408>,  <31.444418, 18.559736, 32.182430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.538261, 18.678925, 32.368408>,  <31.694668, 18.877573, 32.678371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538261, 18.678925, 32.368408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125502, 0.805301, -0.579430,
		0.911788, -0.323818, -0.252557,
		-0.391014, -0.496621, -0.774904,
		31.420958, 18.529938, 32.135937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089294, 19.153542, 32.144020>,  <31.694668, 18.877573, 32.678371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089294, 19.153542, 32.144020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789579, 18.973343, 31.949860>,  <31.609749, 18.865223, 31.833363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789579, 18.973343, 31.949860>,  <32.089294, 19.153542, 32.144020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789579, 18.973343, 31.949860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131131, 0.617524, -0.775544,
		0.649126, -0.644760, -0.403632,
		-0.749293, -0.450497, -0.485399,
		31.564793, 18.838194, 31.804239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313183, 19.145412, 31.361877>,  <32.089294, 19.153542, 32.144020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313183, 19.145412, 31.361877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918299, 19.123322, 31.421688>,  <31.681368, 19.110067, 31.457575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918299, 19.123322, 31.421688>,  <32.313183, 19.145412, 31.361877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918299, 19.123322, 31.421688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150762, 0.628123, -0.763369,
		-0.051761, -0.776151, -0.628419,
		-0.987214, -0.055229, 0.149527,
		31.622135, 19.106752, 31.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045574, 19.091440, 30.716587>,  <32.313183, 19.145412, 31.361877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045574, 19.091440, 30.716587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763975, 19.233829, 30.962406>,  <31.595016, 19.319263, 31.109898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763975, 19.233829, 30.962406>,  <32.045574, 19.091440, 30.716587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763975, 19.233829, 30.962406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095857, 0.809771, -0.578863,
		-0.703704, -0.466427, -0.535954,
		-0.703997, 0.355973, 0.614549,
		31.552776, 19.340622, 31.146770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504038, 19.072395, 30.335266>,  <32.045574, 19.091440, 30.716587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504038, 19.072395, 30.335266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452320, 19.335175, 30.632374>,  <31.421289, 19.492842, 30.810638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452320, 19.335175, 30.632374>,  <31.504038, 19.072395, 30.335266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452320, 19.335175, 30.632374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229795, 0.708813, -0.666917,
		-0.964612, -0.256914, 0.059317,
		-0.129296, 0.656947, 0.742767,
		31.413532, 19.532259, 30.855204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883991, 19.361593, 30.122631>,  <31.504038, 19.072395, 30.335266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883991, 19.361593, 30.122631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087841, 19.600471, 30.370384>,  <31.210152, 19.743799, 30.519035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087841, 19.600471, 30.370384>,  <30.883991, 19.361593, 30.122631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087841, 19.600471, 30.370384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220101, 0.786418, -0.577150,
		-0.831767, 0.157805, 0.532223,
		0.509627, 0.597197, 0.619383,
		31.240728, 19.779631, 30.556200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466200, 19.998411, 30.135088>,  <30.883991, 19.361593, 30.122631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466200, 19.998411, 30.135088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814793, 20.136528, 30.274399>,  <31.023949, 20.219398, 30.357985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814793, 20.136528, 30.274399>,  <30.466200, 19.998411, 30.135088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814793, 20.136528, 30.274399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141950, 0.857338, -0.494795,
		-0.469439, 0.381766, 0.796167,
		0.871480, 0.345292, 0.348276,
		31.076237, 20.240116, 30.378881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338274, 20.722633, 30.281603>,  <30.466200, 19.998411, 30.135088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338274, 20.722633, 30.281603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737406, 20.703644, 30.263351>,  <30.976885, 20.692251, 30.252401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737406, 20.703644, 30.263351>,  <30.338274, 20.722633, 30.281603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737406, 20.703644, 30.263351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020157, 0.879928, -0.474679,
		0.062683, 0.472730, 0.878975,
		0.997830, -0.047472, -0.045628,
		31.036755, 20.689402, 30.249662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660824, 21.351858, 30.501661>,  <30.338274, 20.722633, 30.281603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660824, 21.351858, 30.501661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947821, 21.194553, 30.271687>,  <31.120018, 21.100170, 30.133701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947821, 21.194553, 30.271687>,  <30.660824, 21.351858, 30.501661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947821, 21.194553, 30.271687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047953, 0.851314, -0.522460,
		0.694916, 0.347290, 0.629668,
		0.717490, -0.393260, -0.574939,
		31.163067, 21.076576, 30.099205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093706, 21.955240, 30.328199>,  <30.660824, 21.351858, 30.501661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093706, 21.955240, 30.328199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225201, 21.677303, 30.072346>,  <31.304096, 21.510542, 29.918833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225201, 21.677303, 30.072346>,  <31.093706, 21.955240, 30.328199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225201, 21.677303, 30.072346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145804, 0.706494, -0.692537,
		0.933100, 0.134400, 0.333559,
		0.328734, -0.694840, -0.639633,
		31.323820, 21.468851, 29.880455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675154, 22.221386, 30.003735>,  <31.093706, 21.955240, 30.328199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675154, 22.221386, 30.003735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570444, 21.945023, 29.734180>,  <31.507618, 21.779205, 29.572449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570444, 21.945023, 29.734180>,  <31.675154, 22.221386, 30.003735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570444, 21.945023, 29.734180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364989, 0.575509, -0.731829,
		0.893453, -0.437534, 0.101520,
		-0.261774, -0.690908, -0.673885,
		31.491911, 21.737751, 29.532015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229572, 22.236204, 29.470463>,  <31.675154, 22.221386, 30.003735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229572, 22.236204, 29.470463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916689, 22.060841, 29.293396>,  <31.728960, 21.955624, 29.187155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916689, 22.060841, 29.293396>,  <32.229572, 22.236204, 29.470463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916689, 22.060841, 29.293396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224213, 0.464828, -0.856542,
		0.581281, -0.769241, -0.265292,
		-0.782203, -0.438410, -0.442670,
		31.682028, 21.929317, 29.160595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453205, 22.037100, 28.792526>,  <32.229572, 22.236204, 29.470463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453205, 22.037100, 28.792526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.055344, 22.051521, 28.753803>,  <31.816628, 22.060175, 28.730570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.055344, 22.051521, 28.753803>,  <32.453205, 22.037100, 28.792526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055344, 22.051521, 28.753803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101323, 0.523071, -0.846245,
		0.020127, -0.851526, -0.523926,
		-0.994650, 0.036053, -0.096807,
		31.756948, 22.062338, 28.724762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328835, 21.902439, 28.105659>,  <32.453205, 22.037100, 28.792526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328835, 21.902439, 28.105659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997763, 22.076851, 28.246983>,  <31.799120, 22.181498, 28.331776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997763, 22.076851, 28.246983>,  <32.328835, 21.902439, 28.105659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997763, 22.076851, 28.246983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024868, 0.600441, -0.799282,
		-0.560651, -0.670335, -0.486129,
		-0.827679, 0.436029, 0.353308,
		31.749458, 22.207659, 28.352976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889561, 21.999737, 27.565302>,  <32.328835, 21.902439, 28.105659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889561, 21.999737, 27.565302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738295, 22.274269, 27.813797>,  <31.647535, 22.438990, 27.962894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738295, 22.274269, 27.813797>,  <31.889561, 21.999737, 27.565302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738295, 22.274269, 27.813797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189981, 0.714328, -0.673530,
		-0.906035, -0.136681, -0.400524,
		-0.378164, 0.686333, 0.621240,
		31.624846, 22.480169, 28.000170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568163, 22.422905, 27.193323>,  <31.889561, 21.999737, 27.565302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568163, 22.422905, 27.193323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623545, 22.650173, 27.517796>,  <31.656773, 22.786535, 27.712479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623545, 22.650173, 27.517796>,  <31.568163, 22.422905, 27.193323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623545, 22.650173, 27.517796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187870, 0.789128, -0.584793,
		-0.972387, 0.233362, 0.002514,
		0.138452, 0.568172, 0.811179,
		31.665081, 22.820625, 27.761148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.654507, 34.010098, 14.178505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879457, 33.745361, 14.376775>,  <25.014429, 33.586517, 14.495736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879457, 33.745361, 14.376775>,  <24.654507, 34.010098, 14.178505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879457, 33.745361, 14.376775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779962, -0.225540, 0.583773,
		-0.274577, -0.714903, -0.643056,
		0.562376, -0.661850, 0.495669,
		25.048170, 33.546806, 14.525477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101486, 33.680210, 14.545967>,  <24.654507, 34.010098, 14.178505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101486, 33.680210, 14.545967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.414736, 33.529606, 14.743937>,  <24.602686, 33.439243, 14.862720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.414736, 33.529606, 14.743937>,  <24.101486, 33.680210, 14.545967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414736, 33.529606, 14.743937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595657, -0.225562, 0.770918,
		-0.178625, -0.898531, -0.400917,
		0.783126, -0.376514, 0.494926,
		24.649673, 33.416653, 14.892415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.921944, 33.024956, 14.775542>,  <24.101486, 33.680210, 14.545967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.921944, 33.024956, 14.775542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.200291, 33.169842, 15.023595>,  <24.367300, 33.256775, 15.172426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.200291, 33.169842, 15.023595>,  <23.921944, 33.024956, 14.775542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200291, 33.169842, 15.023595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510273, -0.358248, 0.781844,
		0.505358, -0.860498, -0.064464,
		0.695870, 0.362218, 0.620132,
		24.409052, 33.278507, 15.209635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.828489, 32.585941, 15.376261>,  <23.921944, 33.024956, 14.775542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.828489, 32.585941, 15.376261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.093750, 32.855007, 15.507564>,  <24.252907, 33.016445, 15.586346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.093750, 32.855007, 15.507564>,  <23.828489, 32.585941, 15.376261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.093750, 32.855007, 15.507564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183329, -0.279231, 0.942561,
		0.725686, -0.685240, -0.061854,
		0.663152, 0.672664, 0.328258,
		24.292696, 33.056805, 15.606041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287191, 32.301895, 15.970711>,  <23.828489, 32.585941, 15.376261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287191, 32.301895, 15.970711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.276548, 32.696686, 16.034172>,  <24.270163, 32.933559, 16.072248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.276548, 32.696686, 16.034172>,  <24.287191, 32.301895, 15.970711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276548, 32.696686, 16.034172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284884, -0.159615, 0.945180,
		0.958193, -0.020048, 0.285420,
		-0.026608, 0.986976, 0.158653,
		24.268566, 32.992779, 16.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552059, 32.457111, 16.598795>,  <24.287191, 32.301895, 15.970711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552059, 32.457111, 16.598795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.371157, 32.809395, 16.542492>,  <24.262615, 33.020767, 16.508709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.371157, 32.809395, 16.542492>,  <24.552059, 32.457111, 16.598795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371157, 32.809395, 16.542492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297784, -0.000342, 0.954633,
		0.840708, 0.473652, 0.262417,
		-0.452254, 0.880712, -0.140759,
		24.235481, 33.073608, 16.500265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638212, 32.822262, 17.185965>,  <24.552059, 32.457111, 16.598795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638212, 32.822262, 17.185965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.330376, 33.018703, 17.022724>,  <24.145674, 33.136570, 16.924780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.330376, 33.018703, 17.022724>,  <24.638212, 32.822262, 17.185965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330376, 33.018703, 17.022724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326401, 0.246750, 0.912457,
		0.548811, 0.835423, -0.029599,
		-0.769591, 0.491105, -0.408101,
		24.099499, 33.166035, 16.900293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.498169, 33.544155, 17.567774>,  <24.638212, 32.822262, 17.185965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.498169, 33.544155, 17.567774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154415, 33.432892, 17.396152>,  <23.948162, 33.366135, 17.293179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154415, 33.432892, 17.396152>,  <24.498169, 33.544155, 17.567774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154415, 33.432892, 17.396152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463352, 0.068766, 0.883502,
		-0.216247, 0.958072, -0.187980,
		-0.859385, -0.278155, -0.429054,
		23.896599, 33.349445, 17.267437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992353, 34.039806, 17.847269>,  <24.498169, 33.544155, 17.567774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992353, 34.039806, 17.847269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796829, 33.732197, 17.682510>,  <23.679514, 33.547630, 17.583654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796829, 33.732197, 17.682510>,  <23.992353, 34.039806, 17.847269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796829, 33.732197, 17.682510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520509, -0.121808, 0.845124,
		-0.700095, 0.627504, -0.340743,
		-0.488813, -0.769027, -0.411898,
		23.650185, 33.501488, 17.558941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307627, 34.076614, 18.075535>,  <23.992353, 34.039806, 17.847269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307627, 34.076614, 18.075535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.298922, 33.697102, 17.949459>,  <23.293699, 33.469395, 17.873814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.298922, 33.697102, 17.949459>,  <23.307627, 34.076614, 18.075535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.298922, 33.697102, 17.949459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594259, -0.241251, 0.767238,
		-0.803979, 0.204000, -0.558571,
		-0.021761, -0.948779, -0.315190,
		23.292393, 33.412468, 17.854902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641127, 33.910149, 18.123064>,  <23.307627, 34.076614, 18.075535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641127, 33.910149, 18.123064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842478, 33.567020, 18.164555>,  <22.963287, 33.361145, 18.189449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842478, 33.567020, 18.164555>,  <22.641127, 33.910149, 18.123064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842478, 33.567020, 18.164555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608486, -0.266690, 0.747410,
		-0.613480, -0.439344, -0.656216,
		0.503376, -0.857819, 0.103726,
		22.993490, 33.309673, 18.195673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152130, 33.431847, 18.413017>,  <22.641127, 33.910149, 18.123064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152130, 33.431847, 18.413017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.507513, 33.261581, 18.481663>,  <22.720743, 33.159420, 18.522850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.507513, 33.261581, 18.481663>,  <22.152130, 33.431847, 18.413017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507513, 33.261581, 18.481663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266245, -0.173441, 0.948173,
		-0.373841, -0.888102, -0.267427,
		0.888458, -0.425667, 0.171613,
		22.774050, 33.133881, 18.533146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.972040, 32.873650, 18.741581>,  <22.152130, 33.431847, 18.413017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.972040, 32.873650, 18.741581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.352678, 32.940727, 18.844612>,  <22.581060, 32.980972, 18.906431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.352678, 32.940727, 18.844612>,  <21.972040, 32.873650, 18.741581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352678, 32.940727, 18.844612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241940, -0.108172, 0.964243,
		0.189560, -0.979887, -0.062364,
		0.951594, 0.167693, 0.257579,
		22.638157, 32.991035, 18.921886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.104364, 32.441826, 19.395515>,  <21.972040, 32.873650, 18.741581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.104364, 32.441826, 19.395515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.404726, 32.705849, 19.386829>,  <22.584942, 32.864262, 19.381617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.404726, 32.705849, 19.386829>,  <22.104364, 32.441826, 19.395515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.404726, 32.705849, 19.386829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029007, 0.065817, 0.997410,
		0.659775, -0.748328, 0.068568,
		0.750903, 0.660055, -0.021718,
		22.629997, 32.903866, 19.380314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614149, 32.202438, 19.874094>,  <22.104364, 32.441826, 19.395515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614149, 32.202438, 19.874094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692835, 32.591595, 19.825443>,  <22.740046, 32.825089, 19.796253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692835, 32.591595, 19.825443>,  <22.614149, 32.202438, 19.874094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.692835, 32.591595, 19.825443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006284, 0.122798, 0.992412,
		0.980441, -0.195985, 0.018042,
		0.196713, 0.972888, -0.121627,
		22.751848, 32.883461, 19.788956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.047104, 32.335335, 20.463993>,  <22.614149, 32.202438, 19.874094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.047104, 32.335335, 20.463993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.948671, 32.698776, 20.329010>,  <22.889612, 32.916843, 20.248020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.948671, 32.698776, 20.329010>,  <23.047104, 32.335335, 20.463993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.948671, 32.698776, 20.329010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069467, 0.330738, 0.941163,
		0.966757, 0.255044, -0.018270,
		-0.246081, 0.908606, -0.337460,
		22.874847, 32.971359, 20.227772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.479786, 32.818089, 20.790966>,  <23.047104, 32.335335, 20.463993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.479786, 32.818089, 20.790966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159075, 33.023479, 20.668659>,  <22.966648, 33.146713, 20.595274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159075, 33.023479, 20.668659>,  <23.479786, 32.818089, 20.790966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159075, 33.023479, 20.668659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008705, 0.501554, 0.865083,
		0.597558, 0.696267, -0.397665,
		-0.801779, 0.513475, -0.305768,
		22.918541, 33.177521, 20.576929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595270, 33.510002, 21.030367>,  <23.479786, 32.818089, 20.790966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595270, 33.510002, 21.030367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.204456, 33.462830, 20.959377>,  <22.969969, 33.434528, 20.916782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.204456, 33.462830, 20.959377>,  <23.595270, 33.510002, 21.030367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.204456, 33.462830, 20.959377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212848, 0.500965, 0.838886,
		-0.010018, 0.857396, -0.514560,
		-0.977034, -0.117927, -0.177476,
		22.911346, 33.427452, 20.906134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.245546, 34.083359, 21.396992>,  <23.595270, 33.510002, 21.030367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.245546, 34.083359, 21.396992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920298, 33.879242, 21.284973>,  <22.725147, 33.756771, 21.217762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920298, 33.879242, 21.284973>,  <23.245546, 34.083359, 21.396992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920298, 33.879242, 21.284973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533671, 0.461430, 0.708715,
		-0.232432, 0.725727, -0.647530,
		-0.813124, -0.510296, -0.280049,
		22.676361, 33.726154, 21.200958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.733776, 34.555901, 21.287971>,  <23.245546, 34.083359, 21.396992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.733776, 34.555901, 21.287971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.555141, 34.215263, 21.397778>,  <22.447962, 34.010883, 21.463661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.555141, 34.215263, 21.397778>,  <22.733776, 34.555901, 21.287971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.555141, 34.215263, 21.397778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565208, 0.506345, 0.651271,
		-0.693615, 0.135688, -0.707451,
		-0.446584, -0.851589, 0.274516,
		22.421165, 33.959785, 21.480133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.002602, 34.716328, 21.320980>,  <22.733776, 34.555901, 21.287971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.002602, 34.716328, 21.320980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086063, 34.407406, 21.560986>,  <22.136141, 34.222054, 21.704988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086063, 34.407406, 21.560986>,  <22.002602, 34.716328, 21.320980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.086063, 34.407406, 21.560986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509782, 0.437686, 0.740644,
		-0.834616, -0.460416, -0.302379,
		0.208657, -0.772301, 0.600011,
		22.148661, 34.175716, 21.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291670, 34.832352, 21.274523>,  <22.002602, 34.716328, 21.320980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291670, 34.832352, 21.274523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.181232, 35.168240, 21.461559>,  <21.114969, 35.369774, 21.573782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.181232, 35.168240, 21.461559>,  <21.291670, 34.832352, 21.274523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181232, 35.168240, 21.461559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553101, 0.536686, -0.637219,
		-0.786035, 0.082693, -0.612626,
		-0.276094, 0.839720, 0.467591,
		21.098404, 35.420155, 21.601837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.877829, 35.267456, 20.837851>,  <21.291670, 34.832352, 21.274523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.877829, 35.267456, 20.837851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059834, 35.505962, 21.102406>,  <21.169037, 35.649067, 21.261139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059834, 35.505962, 21.102406>,  <20.877829, 35.267456, 20.837851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059834, 35.505962, 21.102406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436799, 0.497790, -0.749274,
		-0.775997, 0.629823, -0.033946,
		0.455012, 0.596261, 0.661390,
		21.196337, 35.684841, 21.300823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853268, 35.962669, 20.657480>,  <20.877829, 35.267456, 20.837851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853268, 35.962669, 20.657480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.180544, 35.938854, 20.886223>,  <21.376909, 35.924564, 21.023468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.180544, 35.938854, 20.886223>,  <20.853268, 35.962669, 20.657480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180544, 35.938854, 20.886223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520996, 0.497441, -0.693625,
		-0.243167, 0.865452, 0.438021,
		0.818189, -0.059540, 0.571858,
		21.426001, 35.920994, 21.057781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271463, 36.436409, 20.362310>,  <20.853268, 35.962669, 20.657480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271463, 36.436409, 20.362310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548523, 36.278328, 20.603657>,  <21.714758, 36.183479, 20.748465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548523, 36.278328, 20.603657>,  <21.271463, 36.436409, 20.362310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.548523, 36.278328, 20.603657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698084, 0.156889, -0.698616,
		0.181434, 0.905096, 0.384555,
		0.692648, -0.395204, 0.603368,
		21.756317, 36.159767, 20.784668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.844183, 36.953758, 20.403637>,  <21.271463, 36.436409, 20.362310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.844183, 36.953758, 20.403637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.981567, 36.590080, 20.497791>,  <22.063999, 36.371876, 20.554283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.981567, 36.590080, 20.497791>,  <21.844183, 36.953758, 20.403637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981567, 36.590080, 20.497791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693366, 0.076428, -0.716521,
		0.633464, 0.409306, 0.656652,
		0.343463, -0.909190, 0.235385,
		22.084606, 36.317322, 20.568407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.575830, 37.013611, 20.310303>,  <21.844183, 36.953758, 20.403637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.575830, 37.013611, 20.310303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.520649, 36.618259, 20.284740>,  <22.487541, 36.381050, 20.269403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.520649, 36.618259, 20.284740>,  <22.575830, 37.013611, 20.310303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.520649, 36.618259, 20.284740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670385, -0.045683, -0.740605,
		0.729077, -0.145009, 0.668894,
		-0.137951, -0.988375, -0.063906,
		22.479263, 36.321747, 20.265568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.234539, 36.694248, 20.429438>,  <22.575830, 37.013611, 20.310303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.234539, 36.694248, 20.429438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013266, 36.430122, 20.226276>,  <22.880501, 36.271645, 20.104380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013266, 36.430122, 20.226276>,  <23.234539, 36.694248, 20.429438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013266, 36.430122, 20.226276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680124, -0.005913, -0.733073,
		0.481059, -0.750962, 0.452370,
		-0.553185, -0.660319, -0.507903,
		22.847309, 36.232025, 20.073906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692841, 36.099335, 20.247622>,  <23.234539, 36.694248, 20.429438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692841, 36.099335, 20.247622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.380423, 36.074291, 19.999088>,  <23.192972, 36.059265, 19.849968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.380423, 36.074291, 19.999088>,  <23.692841, 36.099335, 20.247622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380423, 36.074291, 19.999088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624465, -0.071966, -0.777730,
		0.003980, -0.995440, 0.095308,
		-0.781043, -0.062612, -0.621331,
		23.146111, 36.055508, 19.812689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907822, 35.559994, 19.771757>,  <23.692841, 36.099335, 20.247622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907822, 35.559994, 19.771757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618095, 35.773315, 19.596966>,  <23.444260, 35.901310, 19.492092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618095, 35.773315, 19.596966>,  <23.907822, 35.559994, 19.771757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618095, 35.773315, 19.596966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579248, 0.126951, -0.805205,
		-0.373946, -0.836342, -0.400869,
		-0.724317, 0.533306, -0.436977,
		23.400801, 35.933308, 19.465872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.752186, 35.237114, 19.136662>,  <23.907822, 35.559994, 19.771757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.752186, 35.237114, 19.136662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604116, 35.605595, 19.088715>,  <23.515274, 35.826683, 19.059946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604116, 35.605595, 19.088715>,  <23.752186, 35.237114, 19.136662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604116, 35.605595, 19.088715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313959, 0.002622, -0.949433,
		-0.874301, -0.389087, -0.290189,
		-0.370173, 0.921197, -0.119865,
		23.493065, 35.881954, 19.052755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684418, 35.178436, 18.446421>,  <23.752186, 35.237114, 19.136662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684418, 35.178436, 18.446421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640903, 35.570953, 18.509953>,  <23.614794, 35.806465, 18.548071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640903, 35.570953, 18.509953>,  <23.684418, 35.178436, 18.446421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640903, 35.570953, 18.509953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310875, 0.185347, -0.932204,
		-0.944205, -0.052036, -0.325223,
		-0.108787, 0.981295, 0.158828,
		23.608267, 35.865341, 18.557602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.263992, 35.549526, 17.872616>,  <23.684418, 35.178436, 18.446421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.263992, 35.549526, 17.872616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.501629, 35.816822, 18.051727>,  <23.644211, 35.977200, 18.159193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.501629, 35.816822, 18.051727>,  <23.263992, 35.549526, 17.872616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.501629, 35.816822, 18.051727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326334, 0.308574, -0.893470,
		-0.735228, 0.676929, -0.034750,
		0.594093, 0.668244, 0.447777,
		23.679857, 36.017296, 18.186060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196188, 36.136772, 17.439671>,  <23.263992, 35.549526, 17.872616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196188, 36.136772, 17.439671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.508955, 36.245838, 17.663906>,  <23.696615, 36.311279, 17.798447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.508955, 36.245838, 17.663906>,  <23.196188, 36.136772, 17.439671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508955, 36.245838, 17.663906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372324, 0.516980, -0.770783,
		-0.499980, 0.811409, 0.302715,
		0.781918, 0.272668, 0.560587,
		23.743530, 36.327637, 17.832083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.263063, 36.853283, 17.372612>,  <23.196188, 36.136772, 17.439671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.263063, 36.853283, 17.372612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617163, 36.704090, 17.483765>,  <23.829622, 36.614574, 17.550457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617163, 36.704090, 17.483765>,  <23.263063, 36.853283, 17.372612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.617163, 36.704090, 17.483765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390331, 0.270841, -0.879936,
		0.252941, 0.887427, 0.385349,
		0.885247, -0.372985, 0.277884,
		23.882736, 36.592194, 17.567129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.922430, 37.347424, 17.188143>,  <23.263063, 36.853283, 17.372612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.922430, 37.347424, 17.188143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.079180, 36.981396, 17.226265>,  <24.173229, 36.761780, 17.249138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.079180, 36.981396, 17.226265>,  <23.922430, 37.347424, 17.188143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.079180, 36.981396, 17.226265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315241, 0.036234, -0.948320,
		0.864324, 0.401668, 0.302666,
		0.391876, -0.915068, 0.095304,
		24.196743, 36.706875, 17.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572655, 37.426170, 16.932505>,  <23.922430, 37.347424, 17.188143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572655, 37.426170, 16.932505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.481035, 37.037697, 16.906151>,  <24.426064, 36.804611, 16.890339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.481035, 37.037697, 16.906151>,  <24.572655, 37.426170, 16.932505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481035, 37.037697, 16.906151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452443, -0.046288, -0.890591,
		0.861877, -0.233798, 0.450007,
		-0.229049, -0.971183, -0.065886,
		24.412321, 36.746342, 16.886385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223948, 37.109127, 16.903608>,  <24.572655, 37.426170, 16.932505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223948, 37.109127, 16.903608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.962290, 36.850372, 16.746822>,  <24.805296, 36.695122, 16.652750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.962290, 36.850372, 16.746822>,  <25.223948, 37.109127, 16.903608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.962290, 36.850372, 16.746822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530717, -0.023314, -0.847228,
		0.538921, -0.762232, 0.358563,
		-0.654144, -0.646885, -0.391965,
		24.766047, 36.656307, 16.629232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602568, 36.727139, 16.492802>,  <25.223948, 37.109127, 16.903608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602568, 36.727139, 16.492802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.242043, 36.644367, 16.340584>,  <25.025726, 36.594704, 16.249252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.242043, 36.644367, 16.340584>,  <25.602568, 36.727139, 16.492802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242043, 36.644367, 16.340584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397014, -0.043262, -0.916793,
		0.173244, -0.977400, 0.121145,
		-0.901314, -0.206925, -0.380546,
		24.971649, 36.582291, 16.226419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754122, 36.193752, 16.084633>,  <25.602568, 36.727139, 16.492802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754122, 36.193752, 16.084633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415466, 36.360161, 15.951892>,  <25.212273, 36.460007, 15.872247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415466, 36.360161, 15.951892>,  <25.754122, 36.193752, 16.084633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415466, 36.360161, 15.951892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272635, -0.196460, -0.941846,
		-0.457027, -0.887878, 0.052907,
		-0.846638, 0.416024, -0.331854,
		25.161474, 36.484966, 15.852336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534056, 35.704609, 15.579711>,  <25.754122, 36.193752, 16.084633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534056, 35.704609, 15.579711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.363361, 36.058094, 15.502826>,  <25.260944, 36.270187, 15.456695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.363361, 36.058094, 15.502826>,  <25.534056, 35.704609, 15.579711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363361, 36.058094, 15.502826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190232, -0.120069, -0.974369,
		-0.884143, -0.452362, -0.116873,
		-0.426735, 0.883715, -0.192212,
		25.235340, 36.323208, 15.445162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058310, 35.533344, 15.001781>,  <25.534056, 35.704609, 15.579711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058310, 35.533344, 15.001781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.171085, 35.917103, 15.005015>,  <25.238750, 36.147358, 15.006956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.171085, 35.917103, 15.005015>,  <25.058310, 35.533344, 15.001781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171085, 35.917103, 15.005015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074294, -0.013426, -0.997146,
		-0.956551, 0.281737, -0.075063,
		0.281941, 0.959398, 0.008088,
		25.255667, 36.204922, 15.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.519775, 24.994181, 23.728926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580519, 25.095070, 24.111198>,  <27.616964, 25.155603, 24.340561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580519, 25.095070, 24.111198>,  <27.519775, 24.994181, 23.728926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580519, 25.095070, 24.111198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119033, 0.964523, -0.235641,
		-0.981209, -0.077973, 0.176493,
		0.151858, 0.252222, 0.955680,
		27.626076, 25.170736, 24.397902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025852, 25.555374, 23.870884>,  <27.519775, 24.994181, 23.728926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025852, 25.555374, 23.870884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304071, 25.613903, 24.152252>,  <27.471003, 25.649021, 24.321074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304071, 25.613903, 24.152252>,  <27.025852, 25.555374, 23.870884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304071, 25.613903, 24.152252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139902, 0.987885, -0.067160,
		-0.704727, -0.051697, 0.707592,
		0.695548, 0.146323, 0.703422,
		27.512735, 25.657801, 24.363279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822758, 26.174564, 24.113451>,  <27.025852, 25.555374, 23.870884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822758, 26.174564, 24.113451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198032, 26.138252, 24.247055>,  <27.423197, 26.116465, 24.327217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198032, 26.138252, 24.247055>,  <26.822758, 26.174564, 24.113451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198032, 26.138252, 24.247055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096539, 0.995329, -0.000639,
		-0.332392, 0.032844, 0.942569,
		0.938187, -0.090782, 0.334010,
		27.479488, 26.111017, 24.347258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906656, 26.589657, 24.807562>,  <26.822758, 26.174564, 24.113451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906656, 26.589657, 24.807562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264282, 26.573986, 24.629074>,  <27.478857, 26.564583, 24.521980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264282, 26.573986, 24.629074>,  <26.906656, 26.589657, 24.807562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264282, 26.573986, 24.629074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121237, 0.980152, 0.156856,
		0.431219, -0.194338, 0.881069,
		0.894065, -0.039178, -0.446221,
		27.532501, 26.562233, 24.495207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327818, 27.031101, 25.186882>,  <26.906656, 26.589657, 24.807562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327818, 27.031101, 25.186882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502750, 26.992828, 24.829205>,  <27.607710, 26.969864, 24.614597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502750, 26.992828, 24.829205>,  <27.327818, 27.031101, 25.186882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502750, 26.992828, 24.829205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149583, 0.988212, -0.032586,
		0.886773, -0.119506, 0.446488,
		0.437331, -0.095684, -0.894196,
		27.633949, 26.964123, 24.560946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917070, 27.443302, 25.267454>,  <27.327818, 27.031101, 25.186882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917070, 27.443302, 25.267454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852123, 27.386433, 24.876881>,  <27.813154, 27.352310, 24.642536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852123, 27.386433, 24.876881>,  <27.917070, 27.443302, 25.267454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852123, 27.386433, 24.876881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276108, 0.943488, -0.183290,
		0.947313, -0.299362, -0.113933,
		-0.162364, -0.142175, -0.976434,
		27.803413, 27.343781, 24.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493853, 27.650290, 24.897102>,  <27.917070, 27.443302, 25.267454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493853, 27.650290, 24.897102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195963, 27.676853, 24.631477>,  <28.017229, 27.692791, 24.472103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195963, 27.676853, 24.631477>,  <28.493853, 27.650290, 24.897102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195963, 27.676853, 24.631477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333861, 0.898649, -0.284547,
		0.577863, -0.433613, -0.691415,
		-0.744723, 0.066407, -0.664062,
		27.972546, 27.696775, 24.432259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823854, 28.011881, 24.236666>,  <28.493853, 27.650290, 24.897102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823854, 28.011881, 24.236666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426006, 28.051781, 24.225479>,  <28.187298, 28.075720, 24.218767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426006, 28.051781, 24.225479>,  <28.823854, 28.011881, 24.236666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426006, 28.051781, 24.225479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102596, 0.911076, -0.399268,
		-0.014347, -0.399988, -0.916408,
		-0.994620, 0.099748, -0.027965,
		28.127621, 28.081705, 24.217089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763855, 28.413626, 23.643579>,  <28.823854, 28.011881, 24.236666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763855, 28.413626, 23.643579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393486, 28.456032, 23.788593>,  <28.171265, 28.481476, 23.875603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393486, 28.456032, 23.788593>,  <28.763855, 28.413626, 23.643579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393486, 28.456032, 23.788593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026463, 0.939236, -0.342250,
		-0.376791, -0.326490, -0.866852,
		-0.925921, 0.106017, 0.362536,
		28.115709, 28.487837, 23.897354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436752, 28.736038, 23.117031>,  <28.763855, 28.413626, 23.643579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436752, 28.736038, 23.117031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260792, 28.788918, 23.472336>,  <28.155214, 28.820644, 23.685518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260792, 28.788918, 23.472336>,  <28.436752, 28.736038, 23.117031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260792, 28.788918, 23.472336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002295, 0.989268, -0.146093,
		-0.898043, -0.062228, -0.435485,
		-0.439903, 0.132197, 0.888262,
		28.128820, 28.828577, 23.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827387, 29.301128, 22.965181>,  <28.436752, 28.736038, 23.117031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827387, 29.301128, 22.965181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915071, 29.294029, 23.355389>,  <27.967682, 29.289770, 23.589512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915071, 29.294029, 23.355389>,  <27.827387, 29.301128, 22.965181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915071, 29.294029, 23.355389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014825, 0.999780, 0.014858,
		-0.975565, 0.011205, 0.219426,
		0.219211, -0.017747, 0.975516,
		27.980835, 29.288706, 23.648043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325623, 29.624096, 23.409613>,  <27.827387, 29.301128, 22.965181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325623, 29.624096, 23.409613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680040, 29.665470, 23.590378>,  <27.892691, 29.690294, 23.698837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680040, 29.665470, 23.590378>,  <27.325623, 29.624096, 23.409613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680040, 29.665470, 23.590378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075354, 0.993962, -0.079759,
		-0.457432, 0.036617, 0.888490,
		0.886046, 0.103436, 0.451911,
		27.945854, 29.696501, 23.725950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872248, 30.219172, 23.540966>,  <27.325623, 29.624096, 23.409613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872248, 30.219172, 23.540966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910187, 30.021461, 23.195320>,  <26.932951, 29.902836, 22.987932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910187, 30.021461, 23.195320>,  <26.872248, 30.219172, 23.540966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910187, 30.021461, 23.195320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042318, 0.869247, -0.492563,
		0.994592, 0.010151, 0.103362,
		0.094847, -0.494273, -0.864117,
		26.938641, 29.873180, 22.936085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466623, 30.801992, 23.569221>,  <26.872248, 30.219172, 23.540966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466623, 30.801992, 23.569221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791437, 30.791180, 23.336029>,  <26.986326, 30.784693, 23.196114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791437, 30.791180, 23.336029>,  <26.466623, 30.801992, 23.569221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791437, 30.791180, 23.336029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376020, 0.788185, 0.487210,
		0.446329, -0.614844, 0.650198,
		0.812035, -0.027031, -0.582983,
		27.035048, 30.783070, 23.161135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849716, 31.201746, 23.485695>,  <26.466623, 30.801992, 23.569221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849716, 31.201746, 23.485695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496393, 31.205647, 23.673172>,  <25.284399, 31.207987, 23.785658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496393, 31.205647, 23.673172>,  <25.849716, 31.201746, 23.485695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496393, 31.205647, 23.673172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372785, -0.591610, 0.714863,
		0.284254, 0.806165, 0.518938,
		-0.883307, 0.009750, 0.468694,
		25.231401, 31.208572, 23.813780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960855, 31.283461, 24.288765>,  <25.849716, 31.201746, 23.485695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960855, 31.283461, 24.288765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598064, 31.118549, 24.254307>,  <25.380390, 31.019602, 24.233633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598064, 31.118549, 24.254307>,  <25.960855, 31.283461, 24.288765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598064, 31.118549, 24.254307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252987, -0.696791, 0.671178,
		-0.336736, 0.586950, 0.736273,
		-0.906977, -0.412277, -0.086144,
		25.325972, 30.994865, 24.228464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722275, 31.328863, 24.974827>,  <25.960855, 31.283461, 24.288765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722275, 31.328863, 24.974827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530542, 31.034073, 24.784203>,  <25.415503, 30.857199, 24.669828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530542, 31.034073, 24.784203>,  <25.722275, 31.328863, 24.974827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530542, 31.034073, 24.784203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189713, -0.617174, 0.763613,
		-0.856885, 0.275613, 0.435644,
		-0.479330, -0.736976, -0.476560,
		25.386744, 30.812981, 24.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131266, 31.068338, 25.407694>,  <25.722275, 31.328863, 24.974827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131266, 31.068338, 25.407694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191225, 30.763699, 25.155506>,  <25.227201, 30.580914, 25.004192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191225, 30.763699, 25.155506>,  <25.131266, 31.068338, 25.407694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191225, 30.763699, 25.155506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029207, -0.633987, 0.772792,
		-0.988270, -0.134255, -0.072790,
		0.149899, -0.761601, -0.630471,
		25.236195, 30.535217, 24.966364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734821, 30.442062, 25.697947>,  <25.131266, 31.068338, 25.407694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734821, 30.442062, 25.697947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006552, 30.285713, 25.449516>,  <25.169590, 30.191904, 25.300457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006552, 30.285713, 25.449516>,  <24.734821, 30.442062, 25.697947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006552, 30.285713, 25.449516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156794, -0.749487, 0.643183,
		-0.716889, -0.534313, -0.447862,
		0.679328, -0.390868, -0.621076,
		25.210350, 30.168451, 25.263193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576057, 29.784485, 25.688957>,  <24.734821, 30.442062, 25.697947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576057, 29.784485, 25.688957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953379, 29.765171, 25.557598>,  <25.179771, 29.753582, 25.478783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953379, 29.765171, 25.557598>,  <24.576057, 29.784485, 25.688957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953379, 29.765171, 25.557598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201782, -0.702142, 0.682847,
		-0.263555, -0.710398, -0.652590,
		0.943304, -0.048286, -0.328398,
		25.236370, 29.750685, 25.459078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678034, 28.956299, 25.689388>,  <24.576057, 29.784485, 25.688957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678034, 28.956299, 25.689388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042526, 29.118282, 25.659271>,  <25.261221, 29.215473, 25.641201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042526, 29.118282, 25.659271>,  <24.678034, 28.956299, 25.689388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042526, 29.118282, 25.659271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300780, -0.529308, 0.793325,
		0.281412, -0.745547, -0.604124,
		0.911229, 0.404960, -0.075292,
		25.315895, 29.239771, 25.636684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206930, 28.414865, 25.601688>,  <24.678034, 28.956299, 25.689388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206930, 28.414865, 25.601688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399149, 28.729824, 25.756130>,  <25.514481, 28.918800, 25.848795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399149, 28.729824, 25.756130>,  <25.206930, 28.414865, 25.601688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399149, 28.729824, 25.756130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454341, -0.600115, 0.658359,
		0.750099, -0.140948, -0.646131,
		0.480547, 0.787398, 0.386107,
		25.543314, 28.966043, 25.871962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824818, 28.121897, 25.758474>,  <25.206930, 28.414865, 25.601688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824818, 28.121897, 25.758474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832815, 28.469097, 25.956940>,  <25.837614, 28.677418, 26.076019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832815, 28.469097, 25.956940>,  <25.824818, 28.121897, 25.758474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832815, 28.469097, 25.956940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446805, -0.451705, 0.772222,
		0.894408, 0.206247, -0.396858,
		0.019994, 0.868000, 0.496161,
		25.838814, 28.729498, 26.105787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561441, 28.275894, 25.917152>,  <25.824818, 28.121897, 25.758474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561441, 28.275894, 25.917152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332722, 28.476978, 26.176483>,  <26.195490, 28.597628, 26.332083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332722, 28.476978, 26.176483>,  <26.561441, 28.275894, 25.917152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332722, 28.476978, 26.176483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456898, -0.461229, 0.760599,
		0.681389, 0.731130, 0.034043,
		-0.571799, 0.502709, 0.648328,
		26.161182, 28.627790, 26.370981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026413, 28.546154, 26.389887>,  <26.561441, 28.275894, 25.917152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026413, 28.546154, 26.389887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686689, 28.581310, 26.598099>,  <26.482855, 28.602404, 26.723026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686689, 28.581310, 26.598099>,  <27.026413, 28.546154, 26.389887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686689, 28.581310, 26.598099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402502, -0.530188, 0.746252,
		0.341569, 0.843312, 0.414916,
		-0.849307, 0.087893, 0.520531,
		26.431898, 28.607677, 26.754257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286383, 28.656622, 27.031023>,  <27.026413, 28.546154, 26.389887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286383, 28.656622, 27.031023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919561, 28.516685, 27.107571>,  <26.699469, 28.432724, 27.153500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919561, 28.516685, 27.107571>,  <27.286383, 28.656622, 27.031023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919561, 28.516685, 27.107571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377316, -0.606018, 0.700267,
		-0.129011, 0.714390, 0.687753,
		-0.917054, -0.349842, 0.191368,
		26.644445, 28.411734, 27.164982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267029, 28.493616, 27.798792>,  <27.286383, 28.656622, 27.031023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267029, 28.493616, 27.798792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960072, 28.292633, 27.639473>,  <26.775896, 28.172043, 27.543882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960072, 28.292633, 27.639473>,  <27.267029, 28.493616, 27.798792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960072, 28.292633, 27.639473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094030, -0.702673, 0.705272,
		-0.634242, 0.503771, 0.586474,
		-0.767395, -0.502459, -0.398295,
		26.729853, 28.141895, 27.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046631, 28.270864, 28.388369>,  <27.267029, 28.493616, 27.798792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046631, 28.270864, 28.388369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888821, 28.042789, 28.100136>,  <26.794134, 27.905945, 27.927197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888821, 28.042789, 28.100136>,  <27.046631, 28.270864, 28.388369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888821, 28.042789, 28.100136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182188, -0.817161, 0.546859,
		-0.900642, 0.084469, 0.426273,
		-0.394526, -0.570186, -0.720580,
		26.770462, 27.871733, 27.883963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429539, 28.745270, 28.681561>,  <27.046631, 28.270864, 28.388369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429539, 28.745270, 28.681561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686062, 28.820862, 28.979019>,  <26.839975, 28.866217, 29.157494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686062, 28.820862, 28.979019>,  <26.429539, 28.745270, 28.681561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686062, 28.820862, 28.979019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398733, 0.745965, -0.533430,
		-0.655542, 0.638609, 0.403041,
		0.641309, 0.188980, 0.743646,
		26.878454, 28.877556, 29.202112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422050, 29.402830, 28.678904>,  <26.429539, 28.745270, 28.681561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422050, 29.402830, 28.678904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755354, 29.342228, 28.891590>,  <26.955336, 29.305866, 29.019203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755354, 29.342228, 28.891590>,  <26.422050, 29.402830, 28.678904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755354, 29.342228, 28.891590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447798, 0.749004, -0.488333,
		-0.324274, 0.645011, 0.691959,
		0.833260, -0.151504, 0.531718,
		27.005333, 29.296776, 29.051105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622131, 30.077736, 28.991474>,  <26.422050, 29.402830, 28.678904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622131, 30.077736, 28.991474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959982, 29.865826, 28.960625>,  <27.162691, 29.738680, 28.942116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959982, 29.865826, 28.960625>,  <26.622131, 30.077736, 28.991474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959982, 29.865826, 28.960625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347651, 0.652313, -0.673518,
		0.407120, 0.542058, 0.735137,
		0.844625, -0.529773, -0.077123,
		27.213369, 29.706894, 28.937489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065289, 30.579098, 28.819071>,  <26.622131, 30.077736, 28.991474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065289, 30.579098, 28.819071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301098, 30.264481, 28.745518>,  <27.442583, 30.075710, 28.701385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301098, 30.264481, 28.745518>,  <27.065289, 30.579098, 28.819071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301098, 30.264481, 28.745518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574159, 0.568159, -0.589523,
		0.568159, 0.241960, 0.786544,
		0.589523, -0.786544, -0.183882,
		27.477955, 30.028517, 28.690353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745577, 30.782196, 28.871714>,  <27.065289, 30.579098, 28.819071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745577, 30.782196, 28.871714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794788, 30.437260, 28.675251>,  <27.824316, 30.230297, 28.557373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794788, 30.437260, 28.675251>,  <27.745577, 30.782196, 28.871714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794788, 30.437260, 28.675251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611693, 0.455616, -0.646719,
		0.781470, -0.220870, 0.583542,
		0.123030, -0.862340, -0.491155,
		27.831697, 30.178558, 28.527905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497051, 30.753767, 28.708580>,  <27.745577, 30.782196, 28.871714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497051, 30.753767, 28.708580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368608, 30.473293, 28.453949>,  <28.291542, 30.305008, 28.301170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368608, 30.473293, 28.453949>,  <28.497051, 30.753767, 28.708580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368608, 30.473293, 28.453949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526873, 0.426281, -0.735316,
		0.786953, -0.571510, 0.232554,
		-0.321107, -0.701186, -0.636576,
		28.272276, 30.262938, 28.262976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137075, 30.401173, 28.279697>,  <28.497051, 30.753767, 28.708580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137075, 30.401173, 28.279697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792286, 30.397655, 28.076946>,  <28.585413, 30.395544, 27.955296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792286, 30.397655, 28.076946>,  <29.137075, 30.401173, 28.279697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792286, 30.397655, 28.076946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429056, 0.519900, -0.738657,
		0.270021, -0.854182, -0.444367,
		-0.861974, -0.008794, -0.506876,
		28.533693, 30.395018, 27.924883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341278, 30.242151, 27.688828>,  <29.137075, 30.401173, 28.279697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341278, 30.242151, 27.688828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989532, 30.419918, 27.620461>,  <28.778484, 30.526577, 27.579441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989532, 30.419918, 27.620461>,  <29.341278, 30.242151, 27.688828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989532, 30.419918, 27.620461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398223, 0.489655, -0.775665,
		-0.261027, -0.750155, -0.607562,
		-0.879365, 0.444415, -0.170916,
		28.725723, 30.553242, 27.569185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319004, 30.262604, 26.946077>,  <29.341278, 30.242151, 27.688828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319004, 30.262604, 26.946077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036425, 30.516937, 27.070427>,  <28.866877, 30.669538, 27.145037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036425, 30.516937, 27.070427>,  <29.319004, 30.262604, 26.946077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036425, 30.516937, 27.070427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218322, 0.613583, -0.758848,
		-0.673249, -0.468218, -0.572283,
		-0.706450, 0.635836, 0.310872,
		28.824490, 30.707687, 27.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957792, 30.470610, 26.354719>,  <29.319004, 30.262604, 26.946077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957792, 30.470610, 26.354719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887259, 30.752899, 26.629196>,  <28.844938, 30.922274, 26.793882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887259, 30.752899, 26.629196>,  <28.957792, 30.470610, 26.354719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887259, 30.752899, 26.629196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078506, 0.704977, -0.704872,
		-0.981195, -0.070424, -0.179716,
		-0.176336, 0.705725, 0.686191,
		28.834358, 30.964617, 26.835052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408777, 30.917168, 26.036736>,  <28.957792, 30.470610, 26.354719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408777, 30.917168, 26.036736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599754, 31.120674, 26.323288>,  <28.714340, 31.242779, 26.495220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599754, 31.120674, 26.323288>,  <28.408777, 30.917168, 26.036736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599754, 31.120674, 26.323288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002372, 0.816053, -0.577972,
		-0.878659, 0.274249, 0.390826,
		0.477443, 0.508767, 0.716383,
		28.742987, 31.273304, 26.538202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038597, 31.492561, 26.172110>,  <28.408777, 30.917168, 26.036736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038597, 31.492561, 26.172110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376648, 31.611588, 26.349747>,  <28.579477, 31.683002, 26.456329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376648, 31.611588, 26.349747>,  <28.038597, 31.492561, 26.172110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376648, 31.611588, 26.349747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102883, 0.905758, -0.411117,
		-0.524575, 0.301756, 0.796093,
		0.845125, 0.297566, 0.444092,
		28.630186, 31.700857, 26.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.747957, 25.748947, 31.220610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.128428, 25.825974, 31.317097>,  <26.356709, 25.872190, 31.374989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.128428, 25.825974, 31.317097>,  <25.747957, 25.748947, 31.220610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128428, 25.825974, 31.317097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137139, 0.963802, -0.228643,
		-0.276516, 0.184399, 0.943152,
		0.951174, 0.192567, 0.241218,
		26.413780, 25.883743, 31.389462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655079, 26.500658, 31.351589>,  <25.747957, 25.748947, 31.220610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655079, 26.500658, 31.351589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.052425, 26.455559, 31.342510>,  <26.290833, 26.428499, 31.337063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.052425, 26.455559, 31.342510>,  <25.655079, 26.500658, 31.351589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052425, 26.455559, 31.342510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106703, 0.977135, -0.183907,
		0.042911, 0.180265, 0.982682,
		0.993365, -0.112747, -0.022695,
		26.350435, 26.421734, 31.335701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909342, 27.114359, 31.723906>,  <25.655079, 26.500658, 31.351589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909342, 27.114359, 31.723906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.195673, 26.966431, 31.486984>,  <26.367472, 26.877674, 31.344831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.195673, 26.966431, 31.486984>,  <25.909342, 27.114359, 31.723906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195673, 26.966431, 31.486984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274348, 0.928975, -0.248472,
		0.642126, 0.015366, 0.766445,
		0.715826, -0.369823, -0.592304,
		26.410421, 26.855484, 31.309294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536257, 27.562761, 31.757772>,  <25.909342, 27.114359, 31.723906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536257, 27.562761, 31.757772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.563635, 27.360470, 31.413784>,  <26.580061, 27.239096, 31.207390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.563635, 27.360470, 31.413784>,  <26.536257, 27.562761, 31.757772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563635, 27.360470, 31.413784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341370, 0.821834, -0.456131,
		0.937434, -0.262349, 0.228891,
		0.068444, -0.505729, -0.859973,
		26.584167, 27.208752, 31.155792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204977, 27.681778, 31.582964>,  <26.536257, 27.562761, 31.757772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204977, 27.681778, 31.582964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011738, 27.578457, 31.248325>,  <26.895794, 27.516464, 31.047543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011738, 27.578457, 31.248325>,  <27.204977, 27.681778, 31.582964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011738, 27.578457, 31.248325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377236, 0.800856, -0.465105,
		0.790130, -0.540287, -0.289455,
		-0.483102, -0.258301, -0.836597,
		26.866808, 27.500965, 30.997345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668453, 27.808331, 31.018671>,  <27.204977, 27.681778, 31.582964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668453, 27.808331, 31.018671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.323553, 27.764568, 30.820862>,  <27.116613, 27.738312, 30.702177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.323553, 27.764568, 30.820862>,  <27.668453, 27.808331, 31.018671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323553, 27.764568, 30.820862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242303, 0.768302, -0.592454,
		0.444760, -0.630669, -0.635961,
		-0.862252, -0.109404, -0.494522,
		27.064878, 27.731747, 30.672504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803524, 27.696623, 30.260590>,  <27.668453, 27.808331, 31.018671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803524, 27.696623, 30.260590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.441082, 27.863388, 30.289310>,  <27.223616, 27.963448, 30.306543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.441082, 27.863388, 30.289310>,  <27.803524, 27.696623, 30.260590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441082, 27.863388, 30.289310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224773, 0.618227, -0.753175,
		-0.358396, -0.666319, -0.653890,
		-0.906107, 0.416911, 0.071800,
		27.169250, 27.988461, 30.310850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630863, 27.701666, 29.510254>,  <27.803524, 27.696623, 30.260590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630863, 27.701666, 29.510254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.360962, 27.930820, 29.696377>,  <27.199020, 28.068314, 29.808050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.360962, 27.930820, 29.696377>,  <27.630863, 27.701666, 29.510254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360962, 27.930820, 29.696377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103271, 0.697543, -0.709062,
		-0.730783, -0.430390, -0.529832,
		-0.674753, 0.572886, 0.465306,
		27.158535, 28.102686, 29.835968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240263, 27.895632, 29.014742>,  <27.630863, 27.701666, 29.510254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240263, 27.895632, 29.014742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.176786, 28.175079, 29.293812>,  <27.138700, 28.342747, 29.461254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.176786, 28.175079, 29.293812>,  <27.240263, 27.895632, 29.014742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176786, 28.175079, 29.293812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042024, 0.710769, -0.702169,
		-0.986434, -0.082108, -0.142151,
		-0.158690, 0.698617, 0.697676,
		27.129179, 28.384665, 29.503115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647635, 27.619011, 28.777489>,  <27.240263, 27.895632, 29.014742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647635, 27.619011, 28.777489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.709841, 27.518131, 28.395451>,  <26.747164, 27.457603, 28.166227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.709841, 27.518131, 28.395451>,  <26.647635, 27.619011, 28.777489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709841, 27.518131, 28.395451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052581, -0.967603, 0.246940,
		-0.986433, 0.011817, -0.163738,
		0.155515, -0.252200, -0.955097,
		26.756496, 27.442471, 28.108921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213284, 27.164600, 28.622293>,  <26.647635, 27.619011, 28.777489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213284, 27.164600, 28.622293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.515833, 27.086365, 28.372608>,  <26.697363, 27.039423, 28.222797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.515833, 27.086365, 28.372608>,  <26.213284, 27.164600, 28.622293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515833, 27.086365, 28.372608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017102, -0.948012, 0.317774,
		-0.653914, -0.251032, -0.713708,
		0.756375, -0.195591, -0.624212,
		26.742746, 27.027687, 28.185345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104773, 26.508953, 28.389187>,  <26.213284, 27.164600, 28.622293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104773, 26.508953, 28.389187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.492901, 26.580437, 28.324020>,  <26.725779, 26.623327, 28.284920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.492901, 26.580437, 28.324020>,  <26.104773, 26.508953, 28.389187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492901, 26.580437, 28.324020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218597, -0.936293, 0.274901,
		-0.103412, -0.302356, -0.947569,
		0.970320, 0.178707, -0.162918,
		26.783997, 26.634048, 28.275145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299929, 26.022839, 27.844315>,  <26.104773, 26.508953, 28.389187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299929, 26.022839, 27.844315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.629162, 26.107487, 28.055122>,  <26.826702, 26.158276, 28.181608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.629162, 26.107487, 28.055122>,  <26.299929, 26.022839, 27.844315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629162, 26.107487, 28.055122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109386, -0.969680, 0.218531,
		0.557287, -0.122221, -0.821276,
		0.823083, 0.211621, 0.527020,
		26.876087, 26.170973, 28.213228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735262, 25.530495, 27.724274>,  <26.299929, 26.022839, 27.844315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735262, 25.530495, 27.724274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.959570, 25.662113, 28.028187>,  <27.094154, 25.741085, 28.210535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.959570, 25.662113, 28.028187>,  <26.735262, 25.530495, 27.724274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959570, 25.662113, 28.028187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241033, -0.942772, 0.230398,
		0.792112, 0.053933, -0.607988,
		0.560768, 0.329047, 0.759781,
		27.127800, 25.760828, 28.256121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346666, 25.150253, 27.672541>,  <26.735262, 25.530495, 27.724274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346666, 25.150253, 27.672541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.356119, 25.295994, 28.044926>,  <27.361792, 25.383438, 28.268356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.356119, 25.295994, 28.044926>,  <27.346666, 25.150253, 27.672541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356119, 25.295994, 28.044926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344252, -0.877235, 0.334588,
		0.938580, 0.312577, -0.146161,
		0.023633, 0.364354, 0.930961,
		27.363209, 25.405300, 28.324213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074387, 25.087099, 27.985889>,  <27.346666, 25.150253, 27.672541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074387, 25.087099, 27.985889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.786680, 25.080391, 28.263702>,  <27.614056, 25.076366, 28.430389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.786680, 25.080391, 28.263702>,  <28.074387, 25.087099, 27.985889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786680, 25.080391, 28.263702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312418, -0.900732, 0.301791,
		0.620526, 0.434052, 0.653105,
		-0.719265, -0.016772, 0.694533,
		27.570900, 25.075359, 28.472063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342159, 24.797319, 28.594988>,  <28.074387, 25.087099, 27.985889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342159, 24.797319, 28.594988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.952646, 24.743793, 28.668575>,  <27.718939, 24.711678, 28.712727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.952646, 24.743793, 28.668575>,  <28.342159, 24.797319, 28.594988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952646, 24.743793, 28.668575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195287, -0.906507, 0.374310,
		0.116679, 0.400422, 0.908872,
		-0.973781, -0.133817, 0.183967,
		27.660511, 24.703648, 28.723766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348579, 24.286848, 29.174665>,  <28.342159, 24.797319, 28.594988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348579, 24.286848, 29.174665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957537, 24.309723, 29.093658>,  <27.722910, 24.323448, 29.045055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957537, 24.309723, 29.093658>,  <28.348579, 24.286848, 29.174665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957537, 24.309723, 29.093658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157915, -0.835450, 0.526390,
		-0.139089, 0.546583, 0.825773,
		-0.977608, 0.057187, -0.202515,
		27.664255, 24.326880, 29.032904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099665, 24.245310, 29.810614>,  <28.348579, 24.286848, 29.174665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099665, 24.245310, 29.810614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799801, 24.133949, 29.570446>,  <27.619883, 24.067133, 29.426346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799801, 24.133949, 29.570446>,  <28.099665, 24.245310, 29.810614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799801, 24.133949, 29.570446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082723, -0.860688, 0.502367,
		-0.656636, 0.426272, 0.622191,
		-0.749658, -0.278402, -0.600421,
		27.574903, 24.050428, 29.390320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592590, 23.967775, 30.336472>,  <28.099665, 24.245310, 29.810614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592590, 23.967775, 30.336472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500296, 23.833778, 29.971058>,  <27.444920, 23.753380, 29.751810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500296, 23.833778, 29.971058>,  <27.592590, 23.967775, 30.336472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500296, 23.833778, 29.971058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119991, -0.921904, 0.368368,
		-0.965590, 0.194612, 0.172520,
		-0.230736, -0.334991, -0.913533,
		27.431074, 23.733280, 29.696999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921019, 23.715786, 30.423098>,  <27.592590, 23.967775, 30.336472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921019, 23.715786, 30.423098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.076471, 23.550152, 30.093857>,  <27.169743, 23.450771, 29.896313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.076471, 23.550152, 30.093857>,  <26.921019, 23.715786, 30.423098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076471, 23.550152, 30.093857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368544, -0.888611, 0.273033,
		-0.844477, 0.197239, -0.497952,
		0.388633, -0.414087, -0.823102,
		27.193062, 23.425926, 29.846926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398212, 23.268091, 30.094492>,  <26.921019, 23.715786, 30.423098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398212, 23.268091, 30.094492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.749359, 23.126648, 29.965302>,  <26.960047, 23.041782, 29.887787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.749359, 23.126648, 29.965302>,  <26.398212, 23.268091, 30.094492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749359, 23.126648, 29.965302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312354, -0.933975, 0.173568,
		-0.363026, -0.051487, -0.930356,
		0.877865, -0.353610, -0.322975,
		27.012718, 23.020565, 29.868408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240934, 22.683365, 29.828939>,  <26.398212, 23.268091, 30.094492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240934, 22.683365, 29.828939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.637503, 22.642525, 29.861591>,  <26.875443, 22.618021, 29.881182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.637503, 22.642525, 29.861591>,  <26.240934, 22.683365, 29.828939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637503, 22.642525, 29.861591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112694, -0.984007, 0.137951,
		0.066238, -0.145966, -0.987070,
		0.991420, -0.102099, 0.081628,
		26.934929, 22.611895, 29.886080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.502167, 23.291140, 31.177551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122581, 23.413609, 31.147293>,  <32.894829, 23.487089, 31.129139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122581, 23.413609, 31.147293>,  <33.502167, 23.291140, 31.177551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122581, 23.413609, 31.147293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293825, 0.771168, -0.564771,
		-0.114582, -0.558175, -0.821773,
		-0.948967, 0.306170, -0.075643,
		32.837891, 23.505459, 31.124599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311054, 23.403044, 30.528561>,  <33.502167, 23.291140, 31.177551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311054, 23.403044, 30.528561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999702, 23.611385, 30.668751>,  <32.812893, 23.736391, 30.752865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999702, 23.611385, 30.668751>,  <33.311054, 23.403044, 30.528561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999702, 23.611385, 30.668751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220971, 0.749849, -0.623617,
		-0.587619, -0.407966, -0.698761,
		-0.778380, 0.520855, 0.350477,
		32.766190, 23.767641, 30.773893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958439, 23.615509, 29.955399>,  <33.311054, 23.403044, 30.528561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958439, 23.615509, 29.955399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842323, 23.868427, 30.242714>,  <32.772655, 24.020178, 30.415102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842323, 23.868427, 30.242714>,  <32.958439, 23.615509, 29.955399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842323, 23.868427, 30.242714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092500, 0.765633, -0.636592,
		-0.952459, -0.118352, -0.280740,
		-0.290286, 0.632297, 0.718286,
		32.755238, 24.058117, 30.458200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534813, 24.147741, 29.605530>,  <32.958439, 23.615509, 29.955399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534813, 24.147741, 29.605530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627293, 24.322292, 29.953350>,  <32.682781, 24.427023, 30.162043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627293, 24.322292, 29.953350>,  <32.534813, 24.147741, 29.605530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627293, 24.322292, 29.953350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127852, 0.872388, -0.471797,
		-0.964470, 0.220252, 0.145902,
		0.231198, 0.436380, 0.869552,
		32.696651, 24.453207, 30.214216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057945, 24.641449, 29.626478>,  <32.534813, 24.147741, 29.605530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057945, 24.641449, 29.626478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.379826, 24.742844, 29.841217>,  <32.572952, 24.803680, 29.970060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.379826, 24.742844, 29.841217>,  <32.057945, 24.641449, 29.626478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379826, 24.742844, 29.841217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003218, 0.906113, -0.423025,
		-0.593677, 0.338679, 0.729961,
		0.804697, 0.253489, 0.536849,
		32.621235, 24.818890, 30.002272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906515, 25.261423, 29.774385>,  <32.057945, 24.641449, 29.626478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906515, 25.261423, 29.774385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297535, 25.258656, 29.858624>,  <32.532146, 25.256994, 29.909166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297535, 25.258656, 29.858624>,  <31.906515, 25.261423, 29.774385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297535, 25.258656, 29.858624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088312, 0.920896, -0.379672,
		-0.191310, 0.389746, 0.900832,
		0.977549, -0.006919, 0.210596,
		32.590801, 25.256580, 29.921803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101379, 25.850138, 30.092754>,  <31.906515, 25.261423, 29.774385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101379, 25.850138, 30.092754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445148, 25.737976, 29.921745>,  <32.651409, 25.670679, 29.819139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445148, 25.737976, 29.921745>,  <32.101379, 25.850138, 30.092754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445148, 25.737976, 29.921745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094679, 0.909011, -0.405876,
		0.502430, 0.308340, 0.807769,
		0.859419, -0.280403, -0.427521,
		32.702972, 25.653854, 29.793489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553555, 26.461794, 30.183510>,  <32.101379, 25.850138, 30.092754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553555, 26.461794, 30.183510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742199, 26.253429, 29.898911>,  <32.855385, 26.128410, 29.728151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742199, 26.253429, 29.898911>,  <32.553555, 26.461794, 30.183510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742199, 26.253429, 29.898911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166142, 0.844909, -0.508454,
		0.866011, 0.121585, 0.485017,
		0.471615, -0.520909, -0.711500,
		32.883682, 26.097157, 29.685461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190174, 26.908421, 29.946814>,  <32.553555, 26.461794, 30.183510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190174, 26.908421, 29.946814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148724, 26.647930, 29.646103>,  <33.123856, 26.491636, 29.465677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148724, 26.647930, 29.646103>,  <33.190174, 26.908421, 29.946814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148724, 26.647930, 29.646103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099893, 0.745209, -0.659307,
		0.989587, -0.143417, -0.012168,
		-0.103623, -0.651226, -0.751776,
		33.117638, 26.452562, 29.420570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793140, 26.998983, 29.659307>,  <33.190174, 26.908421, 29.946814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793140, 26.998983, 29.659307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544598, 26.851395, 29.382820>,  <33.395473, 26.762842, 29.216928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544598, 26.851395, 29.382820>,  <33.793140, 26.998983, 29.659307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544598, 26.851395, 29.382820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417183, 0.590947, -0.690464,
		0.663234, -0.717386, -0.213258,
		-0.621353, -0.368971, -0.691217,
		33.358192, 26.740704, 29.175455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140327, 26.951500, 28.957834>,  <33.793140, 26.998983, 29.659307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140327, 26.951500, 28.957834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.753628, 26.935307, 28.856831>,  <33.521610, 26.925591, 28.796228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.753628, 26.935307, 28.856831>,  <34.140327, 26.951500, 28.957834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753628, 26.935307, 28.856831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188138, 0.556209, -0.809467,
		0.173218, -0.830056, -0.530097,
		-0.966747, -0.040483, -0.252510,
		33.463604, 26.923162, 28.781078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115025, 26.954252, 28.188894>,  <34.140327, 26.951500, 28.957834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115025, 26.954252, 28.188894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736511, 27.062843, 28.259155>,  <33.509403, 27.127998, 28.301311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736511, 27.062843, 28.259155>,  <34.115025, 26.954252, 28.188894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736511, 27.062843, 28.259155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073423, 0.709449, -0.700922,
		-0.314902, -0.650371, -0.691270,
		-0.946280, 0.271476, 0.175655,
		33.452625, 27.144287, 28.311852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789852, 27.124949, 27.604021>,  <34.115025, 26.954252, 28.188894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789852, 27.124949, 27.604021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532917, 27.305344, 27.851894>,  <33.378754, 27.413580, 28.000618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532917, 27.305344, 27.851894>,  <33.789852, 27.124949, 27.604021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532917, 27.305344, 27.851894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133632, 0.730256, -0.669976,
		-0.754678, -0.513163, -0.408808,
		-0.642342, 0.450987, 0.619684,
		33.340214, 27.440639, 28.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103127, 27.265501, 27.186790>,  <33.789852, 27.124949, 27.604021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103127, 27.265501, 27.186790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134541, 27.507702, 27.503574>,  <33.153389, 27.653023, 27.693645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134541, 27.507702, 27.503574>,  <33.103127, 27.265501, 27.186790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134541, 27.507702, 27.503574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274299, 0.776875, -0.566768,
		-0.958432, -0.172724, 0.227099,
		0.078533, 0.605502, 0.791960,
		33.158100, 27.689352, 27.741163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463108, 26.940344, 27.073664>,  <33.103127, 27.265501, 27.186790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463108, 26.940344, 27.073664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240795, 26.813072, 26.766453>,  <32.107407, 26.736710, 26.582127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240795, 26.813072, 26.766453>,  <32.463108, 26.940344, 27.073664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240795, 26.813072, 26.766453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186279, -0.852701, 0.488058,
		-0.810188, 0.414322, 0.414648,
		-0.555784, -0.318178, -0.768027,
		32.074059, 26.717619, 26.536045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796772, 26.602839, 27.375496>,  <32.463108, 26.940344, 27.073664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796772, 26.602839, 27.375496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828226, 26.452423, 27.006191>,  <31.847097, 26.362173, 26.784609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828226, 26.452423, 27.006191>,  <31.796772, 26.602839, 27.375496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828226, 26.452423, 27.006191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145897, -0.920498, 0.362488,
		-0.986170, 0.106198, -0.127245,
		0.078633, -0.376039, -0.923261,
		31.851816, 26.339611, 26.729214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117296, 26.326096, 27.103338>,  <31.796772, 26.602839, 27.375496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117296, 26.326096, 27.103338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410456, 26.148136, 26.897453>,  <31.586351, 26.041361, 26.773922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410456, 26.148136, 26.897453>,  <31.117296, 26.326096, 27.103338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410456, 26.148136, 26.897453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302976, -0.890822, 0.338588,
		-0.609153, -0.092205, -0.787675,
		0.732897, -0.444898, -0.514711,
		31.630325, 26.014668, 26.743040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849936, 25.686281, 26.844360>,  <31.117296, 26.326096, 27.103338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849936, 25.686281, 26.844360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248413, 25.651428, 26.843895>,  <31.487499, 25.630516, 26.843616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248413, 25.651428, 26.843895>,  <30.849936, 25.686281, 26.844360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248413, 25.651428, 26.843895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076130, -0.876720, 0.474939,
		-0.042402, -0.473044, -0.880018,
		0.996196, -0.087134, -0.001162,
		31.547272, 25.625288, 26.843546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904514, 24.990372, 26.605240>,  <30.849936, 25.686281, 26.844360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904514, 24.990372, 26.605240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277937, 25.064842, 26.727757>,  <31.501989, 25.109526, 26.801266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277937, 25.064842, 26.727757>,  <30.904514, 24.990372, 26.605240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277937, 25.064842, 26.727757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047054, -0.910783, 0.410195,
		0.355334, -0.368527, -0.859026,
		0.933555, 0.186177, 0.306291,
		31.558002, 25.120695, 26.819643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288313, 24.380127, 26.452929>,  <30.904514, 24.990372, 26.605240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288313, 24.380127, 26.452929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528864, 24.561729, 26.715904>,  <31.673195, 24.670691, 26.873690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528864, 24.561729, 26.715904>,  <31.288313, 24.380127, 26.452929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528864, 24.561729, 26.715904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207442, -0.883368, 0.420272,
		0.771567, -0.116361, -0.625416,
		0.601376, 0.454005, 0.657439,
		31.709276, 24.697931, 26.913136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051796, 24.090855, 26.466908>,  <31.288313, 24.380127, 26.452929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051796, 24.090855, 26.466908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982393, 24.246338, 26.828857>,  <31.940752, 24.339628, 27.046028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982393, 24.246338, 26.828857>,  <32.051796, 24.090855, 26.466908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982393, 24.246338, 26.828857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134221, -0.900906, 0.412739,
		0.975643, 0.193067, 0.104142,
		-0.173508, 0.388708, 0.904876,
		31.930342, 24.362951, 27.100321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584976, 23.782757, 26.955860>,  <32.051796, 24.090855, 26.466908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584976, 23.782757, 26.955860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264595, 23.914524, 27.155846>,  <32.072369, 23.993584, 27.275837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264595, 23.914524, 27.155846>,  <32.584976, 23.782757, 26.955860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264595, 23.914524, 27.155846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044422, -0.865430, 0.499056,
		0.597080, 0.377510, 0.707801,
		-0.800951, 0.329418, 0.499961,
		32.024311, 24.013350, 27.305834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651085, 23.522062, 27.677017>,  <32.584976, 23.782757, 26.955860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651085, 23.522062, 27.677017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266933, 23.627815, 27.641762>,  <32.036442, 23.691267, 27.620607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266933, 23.627815, 27.641762>,  <32.651085, 23.522062, 27.677017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266933, 23.627815, 27.641762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266826, -0.781028, 0.564623,
		0.080435, 0.565772, 0.820630,
		-0.960382, 0.264381, -0.088141,
		31.978819, 23.707130, 27.615320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413780, 23.471498, 28.340439>,  <32.651085, 23.522062, 27.677017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413780, 23.471498, 28.340439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090267, 23.459904, 28.105480>,  <31.896160, 23.452948, 27.964504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090267, 23.459904, 28.105480>,  <32.413780, 23.471498, 28.340439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090267, 23.459904, 28.105480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396276, -0.711148, 0.580719,
		-0.434559, 0.702445, 0.563675,
		-0.808779, -0.028985, -0.587398,
		31.847633, 23.451208, 27.929260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877787, 23.582315, 28.730423>,  <32.413780, 23.471498, 28.340439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877787, 23.582315, 28.730423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745760, 23.353424, 28.430126>,  <31.666544, 23.216089, 28.249949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745760, 23.353424, 28.430126>,  <31.877787, 23.582315, 28.730423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745760, 23.353424, 28.430126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341445, -0.669085, 0.660106,
		-0.880040, 0.474216, 0.025459,
		-0.330068, -0.572227, -0.750740,
		31.646740, 23.181755, 28.204905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262035, 23.314127, 28.885479>,  <31.877787, 23.582315, 28.730423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262035, 23.314127, 28.885479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392458, 23.058796, 28.606560>,  <31.470711, 22.905598, 28.439207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392458, 23.058796, 28.606560>,  <31.262035, 23.314127, 28.885479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392458, 23.058796, 28.606560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371530, -0.764783, 0.526377,
		-0.869284, 0.087440, -0.486518,
		0.326054, -0.638327, -0.697300,
		31.490274, 22.867298, 28.397369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658895, 22.836575, 28.757462>,  <31.262035, 23.314127, 28.885479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658895, 22.836575, 28.757462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995234, 22.649837, 28.647892>,  <31.197037, 22.537796, 28.582151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995234, 22.649837, 28.647892>,  <30.658895, 22.836575, 28.757462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995234, 22.649837, 28.647892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259546, -0.791848, 0.552822,
		-0.474987, -0.393744, -0.786991,
		0.840847, -0.466843, -0.273923,
		31.247488, 22.509785, 28.565716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473640, 22.094463, 28.662975>,  <30.658895, 22.836575, 28.757462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473640, 22.094463, 28.662975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.872171, 22.080734, 28.694351>,  <31.111290, 22.072496, 28.713177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.872171, 22.080734, 28.694351>,  <30.473640, 22.094463, 28.662975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872171, 22.080734, 28.694351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077253, -0.755347, 0.650756,
		0.036914, -0.654426, -0.755225,
		0.996328, -0.034322, 0.078439,
		31.171070, 22.070438, 28.717882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204685, 21.691168, 28.215439>,  <30.473640, 22.094463, 28.662975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204685, 21.691168, 28.215439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943127, 21.460453, 28.019588>,  <29.786192, 21.322023, 27.902079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943127, 21.460453, 28.019588>,  <30.204685, 21.691168, 28.215439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943127, 21.460453, 28.019588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145918, 0.731149, -0.666431,
		0.742393, -0.364320, -0.562249,
		-0.653882, -0.576795, -0.489639,
		29.746958, 21.287416, 27.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390583, 21.618292, 27.434505>,  <30.204685, 21.691168, 28.215439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390583, 21.618292, 27.434505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.001488, 21.599548, 27.525356>,  <29.768030, 21.588303, 27.579866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.001488, 21.599548, 27.525356>,  <30.390583, 21.618292, 27.434505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001488, 21.599548, 27.525356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177479, 0.780813, -0.599026,
		-0.149274, -0.623005, -0.767842,
		-0.972738, -0.046857, 0.227125,
		29.709667, 21.585491, 27.593494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241367, 21.547695, 26.684404>,  <30.390583, 21.618292, 27.434505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241367, 21.547695, 26.684404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905914, 21.628269, 26.886837>,  <29.704641, 21.676613, 27.008297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905914, 21.628269, 26.886837>,  <30.241367, 21.547695, 26.684404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905914, 21.628269, 26.886837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333487, 0.544736, -0.769448,
		-0.430673, -0.814056, -0.389658,
		-0.838634, 0.201434, 0.506079,
		29.654324, 21.688700, 27.038660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759014, 21.485786, 26.128521>,  <30.241367, 21.547695, 26.684404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759014, 21.485786, 26.128521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561928, 21.677479, 26.419056>,  <29.443676, 21.792494, 26.593378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561928, 21.677479, 26.419056>,  <29.759014, 21.485786, 26.128521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561928, 21.677479, 26.419056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458773, 0.566208, -0.684789,
		-0.739432, -0.670631, -0.059121,
		-0.492715, 0.479231, 0.726339,
		29.414114, 21.821249, 26.636957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907299, 21.456825, 26.030542>,  <29.759014, 21.485786, 26.128521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907299, 21.456825, 26.030542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.963915, 21.770473, 26.272243>,  <28.997885, 21.958662, 26.417263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.963915, 21.770473, 26.272243>,  <28.907299, 21.456825, 26.030542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963915, 21.770473, 26.272243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586780, 0.558060, -0.586735,
		-0.797281, -0.271517, 0.539094,
		0.141538, 0.784122, 0.604251,
		29.006376, 22.005711, 26.453520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363096, 21.759815, 25.920700>,  <28.907299, 21.456825, 26.030542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363096, 21.759815, 25.920700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.561846, 22.049889, 26.111370>,  <28.681095, 22.223932, 26.225773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.561846, 22.049889, 26.111370>,  <28.363096, 21.759815, 25.920700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561846, 22.049889, 26.111370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396247, 0.678263, -0.618828,
		-0.772077, 0.118599, 0.624365,
		0.496876, 0.725185, 0.476677,
		28.710909, 22.267445, 26.254374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902052, 22.163227, 26.065588>,  <28.363096, 21.759815, 25.920700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902052, 22.163227, 26.065588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.237705, 22.380314, 26.051090>,  <28.439096, 22.510567, 26.042393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.237705, 22.380314, 26.051090>,  <27.902052, 22.163227, 26.065588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237705, 22.380314, 26.051090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483216, 0.713229, -0.507747,
		-0.249713, 0.443580, 0.860744,
		0.839134, 0.542716, -0.036242,
		28.489445, 22.543129, 26.040218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654961, 22.808094, 26.325333>,  <27.902052, 22.163227, 26.065588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654961, 22.808094, 26.325333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.005617, 22.897812, 26.155067>,  <28.216011, 22.951643, 26.052908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.005617, 22.897812, 26.155067>,  <27.654961, 22.808094, 26.325333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005617, 22.897812, 26.155067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385026, 0.857572, -0.341064,
		0.288539, 0.462883, 0.838144,
		0.876642, 0.224297, -0.425665,
		28.268610, 22.965101, 26.027369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907606, 23.498365, 26.711166>,  <27.654961, 22.808094, 26.325333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907606, 23.498365, 26.711166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.051170, 23.426888, 26.344723>,  <28.137308, 23.384001, 26.124857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.051170, 23.426888, 26.344723>,  <27.907606, 23.498365, 26.711166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051170, 23.426888, 26.344723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309351, 0.903252, -0.297384,
		0.880617, 0.390132, 0.268906,
		0.358909, -0.178695, -0.916107,
		28.158844, 23.373280, 26.069891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060438, 24.218914, 26.471594>,  <27.907606, 23.498365, 26.711166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060438, 24.218914, 26.471594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016052, 24.003143, 26.137718>,  <27.989420, 23.873682, 25.937393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016052, 24.003143, 26.137718>,  <28.060438, 24.218914, 26.471594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016052, 24.003143, 26.137718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238650, 0.829765, -0.504516,
		0.964745, 0.143214, -0.220809,
		-0.110966, -0.539425, -0.834690,
		27.982763, 23.841316, 25.887312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560745, 24.555405, 25.990934>,  <28.060438, 24.218914, 26.471594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560745, 24.555405, 25.990934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.281084, 24.342316, 25.800190>,  <28.113287, 24.214462, 25.685743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.281084, 24.342316, 25.800190>,  <28.560745, 24.555405, 25.990934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281084, 24.342316, 25.800190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071883, 0.715955, -0.694436,
		0.711363, -0.451228, -0.538846,
		-0.699139, -0.532730, -0.476869,
		28.071339, 24.182499, 25.657133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768335, 24.556681, 25.374264>,  <28.560745, 24.555405, 25.990934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768335, 24.556681, 25.374264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.383944, 24.455338, 25.329845>,  <28.153309, 24.394531, 25.303194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.383944, 24.455338, 25.329845>,  <28.768335, 24.556681, 25.374264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383944, 24.455338, 25.329845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119664, 0.742669, -0.658880,
		0.249399, -0.619882, -0.744007,
		-0.960979, -0.253355, -0.111043,
		28.095650, 24.379332, 25.296532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601274, 24.602091, 24.593065>,  <28.768335, 24.556681, 25.374264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601274, 24.602091, 24.593065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.250017, 24.616203, 24.783901>,  <28.039263, 24.624670, 24.898403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.250017, 24.616203, 24.783901>,  <28.601274, 24.602091, 24.593065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250017, 24.616203, 24.783901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324648, 0.688540, -0.648472,
		-0.351376, -0.724340, -0.593184,
		-0.878145, 0.035281, 0.477092,
		27.986574, 24.626787, 24.927029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203508, 24.535311, 24.077368>,  <28.601274, 24.602091, 24.593065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203508, 24.535311, 24.077368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995653, 24.687363, 24.383434>,  <27.870939, 24.778595, 24.567074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995653, 24.687363, 24.383434>,  <28.203508, 24.535311, 24.077368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995653, 24.687363, 24.383434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147376, 0.842268, -0.518522,
		-0.841580, -0.382210, -0.381652,
		-0.519638, 0.380131, 0.765165,
		27.839762, 24.801401, 24.612984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.648590, 25.292200, 24.705286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008476, 25.119392, 24.730202>,  <38.224407, 25.015707, 24.745152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008476, 25.119392, 24.730202>,  <37.648590, 25.292200, 24.705286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008476, 25.119392, 24.730202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431561, 0.901832, 0.021332,
		-0.065391, 0.007689, 0.997830,
		0.899711, -0.432019, 0.062290,
		38.278389, 24.989786, 24.748888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078716, 25.526112, 25.381546>,  <37.648590, 25.292200, 24.705286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078716, 25.526112, 25.381546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370674, 25.382778, 25.148701>,  <38.545849, 25.296778, 25.008993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370674, 25.382778, 25.148701>,  <38.078716, 25.526112, 25.381546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370674, 25.382778, 25.148701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496711, 0.863077, 0.091522,
		0.469612, -0.355943, 0.807941,
		0.729892, -0.358334, -0.582113,
		38.589642, 25.275278, 24.974068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755661, 25.711586, 25.735674>,  <38.078716, 25.526112, 25.381546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755661, 25.711586, 25.735674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832661, 25.639038, 25.349918>,  <38.878860, 25.595509, 25.118465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832661, 25.639038, 25.349918>,  <38.755661, 25.711586, 25.735674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832661, 25.639038, 25.349918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499590, 0.863985, -0.062769,
		0.844603, -0.469717, 0.256926,
		0.192496, -0.181372, -0.964391,
		38.890411, 25.584627, 25.060600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526733, 25.652449, 25.624626>,  <38.755661, 25.711586, 25.735674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526733, 25.652449, 25.624626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.373020, 25.775196, 25.276337>,  <39.280792, 25.848845, 25.067364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.373020, 25.775196, 25.276337>,  <39.526733, 25.652449, 25.624626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373020, 25.775196, 25.276337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548126, 0.834760, 0.052285,
		0.742890, -0.457173, -0.488986,
		-0.384282, 0.306868, -0.870724,
		39.257736, 25.867256, 25.015120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004967, 26.047789, 25.435892>,  <39.526733, 25.652449, 25.624626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004967, 26.047789, 25.435892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717663, 26.137253, 25.172352>,  <39.545280, 26.190931, 25.014229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717663, 26.137253, 25.172352>,  <40.004967, 26.047789, 25.435892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717663, 26.137253, 25.172352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394455, 0.910943, -0.120783,
		0.573159, -0.346640, -0.742516,
		-0.718258, 0.223662, -0.658849,
		39.502186, 26.204351, 24.974697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387413, 26.503399, 24.984829>,  <40.004967, 26.047789, 25.435892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387413, 26.503399, 24.984829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007233, 26.566940, 24.877934>,  <39.779125, 26.605066, 24.813797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007233, 26.566940, 24.877934>,  <40.387413, 26.503399, 24.984829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007233, 26.566940, 24.877934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218725, 0.952550, -0.211678,
		0.220932, -0.259640, -0.940094,
		-0.950446, 0.158856, -0.267239,
		39.722099, 26.614597, 24.797762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419075, 26.947540, 24.385767>,  <40.387413, 26.503399, 24.984829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419075, 26.947540, 24.385767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047253, 26.981102, 24.529366>,  <39.824158, 27.001240, 24.615524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047253, 26.981102, 24.529366>,  <40.419075, 26.947540, 24.385767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047253, 26.981102, 24.529366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017552, 0.982726, -0.184232,
		-0.368251, -0.164954, -0.914976,
		-0.929561, 0.083904, 0.358995,
		39.768383, 27.006273, 24.637064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980103, 27.295984, 23.838610>,  <40.419075, 26.947540, 24.385767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980103, 27.295984, 23.838610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817062, 27.337158, 24.201546>,  <39.719238, 27.361862, 24.419308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817062, 27.337158, 24.201546>,  <39.980103, 27.295984, 23.838610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817062, 27.337158, 24.201546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031634, 0.994622, -0.098626,
		-0.912611, -0.011497, -0.408668,
		-0.407604, 0.102935, 0.907339,
		39.694782, 27.368038, 24.473747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504787, 27.817383, 23.765360>,  <39.980103, 27.295984, 23.838610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504787, 27.817383, 23.765360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568439, 27.812122, 24.160229>,  <39.606632, 27.808966, 24.397150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568439, 27.812122, 24.160229>,  <39.504787, 27.817383, 23.765360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568439, 27.812122, 24.160229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001526, 0.999907, 0.013565,
		-0.987256, -0.003665, 0.159096,
		0.159131, -0.013150, 0.987170,
		39.616180, 27.808178, 24.456379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025558, 28.319117, 24.086895>,  <39.504787, 27.817383, 23.765360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025558, 28.319117, 24.086895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.331589, 28.270813, 24.339901>,  <39.515209, 28.241831, 24.491705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.331589, 28.270813, 24.339901>,  <39.025558, 28.319117, 24.086895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331589, 28.270813, 24.339901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133995, 0.990613, 0.027045,
		-0.629841, 0.064062, 0.774078,
		0.765079, -0.120757, 0.632513,
		39.561111, 28.234587, 24.529655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839668, 28.825148, 24.567434>,  <39.025558, 28.319117, 24.086895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839668, 28.825148, 24.567434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224537, 28.748260, 24.644661>,  <39.455460, 28.702127, 24.690996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224537, 28.748260, 24.644661>,  <38.839668, 28.825148, 24.567434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224537, 28.748260, 24.644661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134787, 0.951716, 0.275807,
		-0.236759, -0.239351, 0.941624,
		0.962173, -0.192219, 0.193066,
		39.513187, 28.690596, 24.702581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132378, 29.121113, 25.276600>,  <38.839668, 28.825148, 24.567434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132378, 29.121113, 25.276600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448875, 29.047924, 25.043205>,  <39.638775, 29.004011, 24.903168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448875, 29.047924, 25.043205>,  <39.132378, 29.121113, 25.276600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448875, 29.047924, 25.043205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217030, 0.976094, -0.011782,
		0.571694, -0.117312, 0.812037,
		0.791242, -0.182972, -0.583487,
		39.686249, 28.993032, 24.868158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723003, 29.450790, 25.607822>,  <39.132378, 29.121113, 25.276600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723003, 29.450790, 25.607822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825287, 29.398483, 25.224674>,  <39.886658, 29.367100, 24.994785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825287, 29.398483, 25.224674>,  <39.723003, 29.450790, 25.607822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825287, 29.398483, 25.224674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337271, 0.940625, -0.038377,
		0.906014, -0.313248, 0.284630,
		0.255709, -0.130767, -0.957869,
		39.902000, 29.359253, 24.937313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463139, 29.702021, 25.495174>,  <39.723003, 29.450790, 25.607822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463139, 29.702021, 25.495174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249950, 29.709282, 25.156799>,  <40.122036, 29.713638, 24.953773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249950, 29.709282, 25.156799>,  <40.463139, 29.702021, 25.495174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249950, 29.709282, 25.156799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299977, 0.938884, -0.168851,
		0.791172, -0.343755, -0.505845,
		-0.532973, 0.018151, -0.845938,
		40.090057, 29.714727, 24.903019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889030, 30.131439, 25.090963>,  <40.463139, 29.702021, 25.495174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889030, 30.131439, 25.090963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532803, 30.121910, 24.909275>,  <40.319065, 30.116194, 24.800262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532803, 30.121910, 24.909275>,  <40.889030, 30.131439, 25.090963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532803, 30.121910, 24.909275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125971, 0.946647, -0.296631,
		0.437053, -0.321390, -0.840056,
		-0.890571, -0.023821, -0.454221,
		40.265633, 30.114763, 24.773008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992535, 30.439365, 24.401768>,  <40.889030, 30.131439, 25.090963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992535, 30.439365, 24.401768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604343, 30.448456, 24.497810>,  <40.371429, 30.453909, 24.555435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604343, 30.448456, 24.497810>,  <40.992535, 30.439365, 24.401768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604343, 30.448456, 24.497810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002665, 0.994480, -0.104894,
		-0.241163, -0.102437, -0.965063,
		-0.970481, 0.022725, 0.240105,
		40.313198, 30.455273, 24.569841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804417, 30.895487, 23.947645>,  <40.992535, 30.439365, 24.401768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804417, 30.895487, 23.947645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.503719, 30.893425, 24.211418>,  <40.323299, 30.892189, 24.369682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.503719, 30.893425, 24.211418>,  <40.804417, 30.895487, 23.947645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503719, 30.893425, 24.211418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031275, 0.999123, -0.027846,
		-0.658709, -0.041557, -0.751249,
		-0.751747, -0.005153, 0.659431,
		40.278194, 30.891878, 24.409248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307129, 31.309961, 23.639435>,  <40.804417, 30.895487, 23.947645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307129, 31.309961, 23.639435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.192654, 31.313614, 24.022686>,  <40.123970, 31.315805, 24.252638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.192654, 31.313614, 24.022686>,  <40.307129, 31.309961, 23.639435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192654, 31.313614, 24.022686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179140, 0.981813, -0.062863,
		-0.941279, -0.189630, -0.279348,
		-0.286188, 0.009129, 0.958130,
		40.106796, 31.316353, 24.310125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626629, 31.651945, 23.660656>,  <40.307129, 31.309961, 23.639435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626629, 31.651945, 23.660656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776108, 31.678684, 24.030712>,  <39.865795, 31.694727, 24.252745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776108, 31.678684, 24.030712>,  <39.626629, 31.651945, 23.660656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776108, 31.678684, 24.030712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338973, 0.938253, 0.069128,
		-0.863394, -0.339430, 0.373281,
		0.373696, 0.066848, 0.925140,
		39.888218, 31.698738, 24.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152451, 32.014484, 23.951515>,  <39.626629, 31.651945, 23.660656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152451, 32.014484, 23.951515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490463, 32.056313, 24.161274>,  <39.693272, 32.081409, 24.287128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490463, 32.056313, 24.161274>,  <39.152451, 32.014484, 23.951515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490463, 32.056313, 24.161274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169029, 0.982643, 0.076434,
		-0.507303, -0.153228, 0.848036,
		0.845028, 0.104568, 0.524397,
		39.743973, 32.087685, 24.318594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971992, 32.391243, 24.650772>,  <39.152451, 32.014484, 23.951515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971992, 32.391243, 24.650772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.357727, 32.410431, 24.546646>,  <39.589169, 32.421944, 24.484171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.357727, 32.410431, 24.546646>,  <38.971992, 32.391243, 24.650772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357727, 32.410431, 24.546646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069826, 0.902508, 0.424974,
		0.255320, -0.427993, 0.866968,
		0.964332, 0.047968, -0.260314,
		39.647026, 32.424820, 24.468552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595299, 32.672134, 25.181286>,  <38.971992, 32.391243, 24.650772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595299, 32.672134, 25.181286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.219170, 32.736195, 25.061195>,  <37.993492, 32.774632, 24.989141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.219170, 32.736195, 25.061195>,  <38.595299, 32.672134, 25.181286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219170, 32.736195, 25.061195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132269, -0.984963, -0.111147,
		-0.313512, -0.064803, 0.947370,
		-0.940327, 0.160154, -0.300226,
		37.937073, 32.784241, 24.971127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304703, 32.141575, 25.424875>,  <38.595299, 32.672134, 25.181286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304703, 32.141575, 25.424875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.045685, 32.275391, 25.151009>,  <37.890274, 32.355679, 24.986689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.045685, 32.275391, 25.151009>,  <38.304703, 32.141575, 25.424875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045685, 32.275391, 25.151009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226281, -0.942372, -0.246439,
		-0.727653, -0.004654, 0.685929,
		-0.647547, 0.334535, -0.684667,
		37.851421, 32.375751, 24.945608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645939, 31.889139, 25.594776>,  <38.304703, 32.141575, 25.424875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645939, 31.889139, 25.594776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.618828, 31.970116, 25.203999>,  <37.602562, 32.018703, 24.969532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.618828, 31.970116, 25.203999>,  <37.645939, 31.889139, 25.594776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618828, 31.970116, 25.203999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380193, -0.910554, -0.162309,
		-0.922420, 0.360427, 0.138684,
		-0.067778, 0.202444, -0.976945,
		37.598495, 32.030849, 24.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010929, 31.585592, 25.425417>,  <37.645939, 31.889139, 25.594776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010929, 31.585592, 25.425417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181301, 31.647957, 25.068928>,  <37.283524, 31.685375, 24.855034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181301, 31.647957, 25.068928>,  <37.010929, 31.585592, 25.425417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181301, 31.647957, 25.068928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373785, -0.866725, -0.330262,
		-0.823935, 0.473794, -0.310886,
		0.425929, 0.155910, -0.891222,
		37.309078, 31.694731, 24.801561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554100, 31.353622, 24.959845>,  <37.010929, 31.585592, 25.425417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554100, 31.353622, 24.959845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910587, 31.339558, 24.778961>,  <37.124481, 31.331118, 24.670431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910587, 31.339558, 24.778961>,  <36.554100, 31.353622, 24.959845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910587, 31.339558, 24.778961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193528, -0.931163, -0.309001,
		-0.410216, 0.362903, -0.836675,
		0.891218, -0.035163, -0.452210,
		37.177952, 31.329008, 24.643297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428688, 31.132624, 24.211994>,  <36.554100, 31.353622, 24.959845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428688, 31.132624, 24.211994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.809120, 31.060299, 24.312195>,  <37.037380, 31.016905, 24.372314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.809120, 31.060299, 24.312195>,  <36.428688, 31.132624, 24.211994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809120, 31.060299, 24.312195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064429, -0.909101, -0.411564,
		0.302145, 0.375291, -0.876279,
		0.951082, -0.180810, 0.250501,
		37.094444, 31.006056, 24.387344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748573, 30.842546, 23.581692>,  <36.428688, 31.132624, 24.211994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748573, 30.842546, 23.581692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.996635, 30.737579, 23.877407>,  <37.145473, 30.674599, 24.054836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.996635, 30.737579, 23.877407>,  <36.748573, 30.842546, 23.581692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996635, 30.737579, 23.877407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116281, -0.962730, -0.244190,
		0.775814, 0.065471, -0.627556,
		0.620155, -0.262419, 0.739286,
		37.182682, 30.658854, 24.099194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342495, 30.383524, 23.267601>,  <36.748573, 30.842546, 23.581692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342495, 30.383524, 23.267601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312897, 30.320602, 23.661510>,  <37.295139, 30.282850, 23.897856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312897, 30.320602, 23.661510>,  <37.342495, 30.383524, 23.267601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312897, 30.320602, 23.661510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164882, -0.971961, -0.167646,
		0.983534, -0.174777, 0.045984,
		-0.073996, -0.157303, 0.984774,
		37.290699, 30.273411, 23.956944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773479, 29.772034, 23.452620>,  <37.342495, 30.383524, 23.267601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773479, 29.772034, 23.452620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550816, 29.779694, 23.784828>,  <37.417217, 29.784290, 23.984154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550816, 29.779694, 23.784828>,  <37.773479, 29.772034, 23.452620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550816, 29.779694, 23.784828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012164, -0.999439, 0.031198,
		0.830652, 0.027470, 0.556114,
		-0.556660, 0.019150, 0.830520,
		37.383820, 29.785439, 24.033983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107208, 29.252739, 23.983408>,  <37.773479, 29.772034, 23.452620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107208, 29.252739, 23.983408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726494, 29.307590, 24.093170>,  <37.498066, 29.340502, 24.159027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726494, 29.307590, 24.093170>,  <38.107208, 29.252739, 23.983408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726494, 29.307590, 24.093170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138917, -0.990219, 0.013002,
		0.273505, -0.025744, 0.961526,
		-0.951786, 0.137129, 0.274406,
		37.440956, 29.348730, 24.175491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981899, 28.572119, 24.282948>,  <38.107208, 29.252739, 23.983408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981899, 28.572119, 24.282948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617573, 28.734100, 24.250866>,  <37.398979, 28.831289, 24.231617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617573, 28.734100, 24.250866>,  <37.981899, 28.572119, 24.282948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617573, 28.734100, 24.250866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397227, -0.912601, -0.096793,
		-0.112390, -0.056301, 0.992068,
		-0.910812, 0.404955, -0.080202,
		37.344330, 28.855587, 24.226805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504681, 28.213633, 24.845808>,  <37.981899, 28.572119, 24.282948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504681, 28.213633, 24.845808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311214, 28.366966, 24.531071>,  <37.195133, 28.458967, 24.342228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311214, 28.366966, 24.531071>,  <37.504681, 28.213633, 24.845808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311214, 28.366966, 24.531071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506121, -0.855938, -0.105886,
		-0.714077, 0.347023, 0.608004,
		-0.483669, 0.383334, -0.786841,
		37.166115, 28.481966, 24.295019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847298, 28.168804, 24.980114>,  <37.504681, 28.213633, 24.845808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847298, 28.168804, 24.980114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.920479, 28.190067, 24.587440>,  <36.964390, 28.202826, 24.351837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.920479, 28.190067, 24.587440>,  <36.847298, 28.168804, 24.980114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920479, 28.190067, 24.587440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548092, -0.823446, -0.146738,
		-0.816163, 0.564899, -0.121520,
		0.182957, 0.053158, -0.981683,
		36.975365, 28.206015, 24.292936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256901, 27.967724, 24.596575>,  <36.847298, 28.168804, 24.980114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256901, 27.967724, 24.596575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.525349, 27.942860, 24.301079>,  <36.686417, 27.927942, 24.123781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.525349, 27.942860, 24.301079>,  <36.256901, 27.967724, 24.596575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525349, 27.942860, 24.301079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224011, -0.966902, -0.122149,
		-0.706695, 0.247462, -0.662831,
		0.671119, -0.062160, -0.738739,
		36.726685, 27.924212, 24.079456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936672, 27.734695, 23.996237>,  <36.256901, 27.967724, 24.596575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936672, 27.734695, 23.996237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.323223, 27.657787, 23.927940>,  <36.555153, 27.611643, 23.886963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.323223, 27.657787, 23.927940>,  <35.936672, 27.734695, 23.996237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323223, 27.657787, 23.927940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198116, -0.980019, -0.017720,
		-0.163923, 0.050950, -0.985157,
		0.966375, -0.192270, -0.170741,
		36.613136, 27.600107, 23.876719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865803, 27.246183, 23.438547>,  <35.936672, 27.734695, 23.996237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865803, 27.246183, 23.438547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.232407, 27.203651, 23.592793>,  <36.452370, 27.178133, 23.685341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.232407, 27.203651, 23.592793>,  <35.865803, 27.246183, 23.438547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232407, 27.203651, 23.592793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084244, -0.993710, -0.073778,
		0.391035, 0.035133, -0.919705,
		0.916512, -0.106329, 0.385616,
		36.507359, 27.171753, 23.708477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114960, 26.768551, 22.954151>,  <35.865803, 27.246183, 23.438547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114960, 26.768551, 22.954151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373142, 26.745144, 23.258774>,  <36.528049, 26.731100, 23.441547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373142, 26.745144, 23.258774>,  <36.114960, 26.768551, 22.954151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373142, 26.745144, 23.258774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045542, -0.992339, -0.114848,
		0.762441, 0.108812, -0.637843,
		0.645452, -0.058516, 0.761556,
		36.566776, 26.727589, 23.487240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704273, 26.260521, 22.785845>,  <36.114960, 26.768551, 22.954151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704273, 26.260521, 22.785845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677761, 26.292843, 23.183655>,  <36.661854, 26.312237, 23.422340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677761, 26.292843, 23.183655>,  <36.704273, 26.260521, 22.785845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677761, 26.292843, 23.183655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038702, -0.995757, 0.083484,
		0.997050, 0.044023, 0.062869,
		-0.066278, 0.080804, 0.994524,
		36.657879, 26.317083, 23.482012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178295, 25.781958, 22.986845>,  <36.704273, 26.260521, 22.785845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178295, 25.781958, 22.986845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911819, 25.835899, 23.280239>,  <36.751934, 25.868265, 23.456276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911819, 25.835899, 23.280239>,  <37.178295, 25.781958, 22.986845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911819, 25.835899, 23.280239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083881, -0.990824, 0.105983,
		0.741049, 0.009079, 0.671390,
		-0.666191, 0.134855, 0.733487,
		36.711964, 25.876356, 23.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390930, 25.272285, 23.366653>,  <37.178295, 25.781958, 22.986845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390930, 25.272285, 23.366653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030716, 25.345383, 23.524460>,  <36.814587, 25.389242, 23.619144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030716, 25.345383, 23.524460>,  <37.390930, 25.272285, 23.366653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030716, 25.345383, 23.524460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154686, -0.982674, 0.102097,
		0.406339, 0.030915, 0.913199,
		-0.900533, 0.182745, 0.394517,
		36.760555, 25.400206, 23.642815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338905, 24.866291, 23.919729>,  <37.390930, 25.272285, 23.366653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338905, 24.866291, 23.919729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962482, 24.956993, 23.819336>,  <36.736629, 25.011414, 23.759100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962482, 24.956993, 23.819336>,  <37.338905, 24.866291, 23.919729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962482, 24.956993, 23.819336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205755, -0.972701, -0.107325,
		-0.268467, -0.049358, 0.962024,
		-0.941058, 0.226754, -0.250983,
		36.680164, 25.025019, 23.744041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.437908, 22.159281, 29.355698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.726543, 22.152378, 29.632542>,  <26.899725, 22.148237, 29.798647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.726543, 22.152378, 29.632542>,  <26.437908, 22.159281, 29.355698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726543, 22.152378, 29.632542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034916, -0.997510, -0.061272,
		0.691443, 0.068378, -0.719188,
		0.721587, -0.017255, 0.692109,
		26.943020, 22.147202, 29.840174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006233, 21.689674, 29.073780>,  <26.437908, 22.159281, 29.355698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006233, 21.689674, 29.073780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073378, 21.714706, 29.467308>,  <27.113665, 21.729725, 29.703424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073378, 21.714706, 29.467308>,  <27.006233, 21.689674, 29.073780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073378, 21.714706, 29.467308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104739, -0.993466, 0.045321,
		0.980231, 0.095437, -0.173320,
		0.167862, 0.062578, 0.983822,
		27.123735, 21.733480, 29.762455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615183, 21.290361, 29.190292>,  <27.006233, 21.689674, 29.073780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615183, 21.290361, 29.190292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.417589, 21.309097, 29.537575>,  <27.299032, 21.320339, 29.745945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.417589, 21.309097, 29.537575>,  <27.615183, 21.290361, 29.190292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417589, 21.309097, 29.537575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252617, -0.947741, 0.194864,
		0.831963, 0.315584, 0.456338,
		-0.493986, 0.046841, 0.868207,
		27.269394, 21.323149, 29.798037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988827, 20.841314, 29.604662>,  <27.615183, 21.290361, 29.190292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988827, 20.841314, 29.604662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.655701, 20.891155, 29.820400>,  <27.455824, 20.921059, 29.949842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.655701, 20.891155, 29.820400>,  <27.988827, 20.841314, 29.604662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655701, 20.891155, 29.820400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075811, -0.939482, 0.334105,
		0.548333, 0.319136, 0.772970,
		-0.832816, 0.124601, 0.539344,
		27.405855, 20.928535, 29.982203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165648, 20.495449, 30.216978>,  <27.988827, 20.841314, 29.604662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165648, 20.495449, 30.216978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.766703, 20.520866, 30.231010>,  <27.527336, 20.536116, 30.239429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.766703, 20.520866, 30.231010>,  <28.165648, 20.495449, 30.216978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766703, 20.520866, 30.231010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049922, -0.951377, 0.303957,
		0.052688, 0.301404, 0.952040,
		-0.997362, 0.063542, 0.035080,
		27.467493, 20.539928, 30.241535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933344, 20.304499, 30.867531>,  <28.165648, 20.495449, 30.216978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933344, 20.304499, 30.867531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.604607, 20.231968, 30.651497>,  <27.407364, 20.188450, 30.521877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.604607, 20.231968, 30.651497>,  <27.933344, 20.304499, 30.867531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604607, 20.231968, 30.651497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033735, -0.930846, 0.363852,
		-0.568711, 0.317249, 0.758895,
		-0.821845, -0.181325, -0.540085,
		27.358053, 20.177570, 30.489471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455492, 19.896221, 31.342970>,  <27.933344, 20.304499, 30.867531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455492, 19.896221, 31.342970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.298138, 19.856613, 30.977360>,  <27.203724, 19.832850, 30.757994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.298138, 19.856613, 30.977360>,  <27.455492, 19.896221, 31.342970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298138, 19.856613, 30.977360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302068, -0.925069, 0.230222,
		-0.868332, 0.366664, 0.334001,
		-0.393388, -0.099018, -0.914025,
		27.180120, 19.826908, 30.703152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808748, 19.558922, 31.423210>,  <27.455492, 19.896221, 31.342970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808748, 19.558922, 31.423210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.919546, 19.492851, 31.044582>,  <26.986025, 19.453209, 30.817406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.919546, 19.492851, 31.044582>,  <26.808748, 19.558922, 31.423210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919546, 19.492851, 31.044582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071252, -0.985933, 0.151194,
		-0.958226, 0.025564, -0.284869,
		0.276996, -0.165176, -0.946567,
		27.002645, 19.443298, 30.760612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502062, 18.983788, 31.213961>,  <26.808748, 19.558922, 31.423210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502062, 18.983788, 31.213961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802509, 19.022964, 30.952816>,  <26.982777, 19.046471, 30.796129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802509, 19.022964, 30.952816>,  <26.502062, 18.983788, 31.213961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802509, 19.022964, 30.952816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166200, -0.985136, 0.043420,
		-0.638906, -0.141120, -0.756231,
		0.751118, 0.097944, -0.652862,
		27.027845, 19.052347, 30.756958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418739, 18.434294, 30.863312>,  <26.502062, 18.983788, 31.213961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418739, 18.434294, 30.863312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.795275, 18.538036, 30.776951>,  <27.021196, 18.600281, 30.725134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.795275, 18.538036, 30.776951>,  <26.418739, 18.434294, 30.863312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795275, 18.538036, 30.776951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315045, -0.904698, 0.286824,
		-0.120939, -0.338018, -0.933337,
		0.941340, 0.259355, -0.215904,
		27.077677, 18.615843, 30.712179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638363, 17.935083, 30.483248>,  <26.418739, 18.434294, 30.863312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638363, 17.935083, 30.483248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.962450, 18.097538, 30.652294>,  <27.156902, 18.195011, 30.753721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.962450, 18.097538, 30.652294>,  <26.638363, 17.935083, 30.483248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962450, 18.097538, 30.652294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260526, -0.895420, 0.361038,
		0.525048, -0.182417, -0.831293,
		0.810216, 0.406136, 0.422615,
		27.205515, 18.219379, 30.779079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190029, 17.470030, 30.291161>,  <26.638363, 17.935083, 30.483248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190029, 17.470030, 30.291161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.288000, 17.669064, 30.624008>,  <27.346783, 17.788485, 30.823717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.288000, 17.669064, 30.624008>,  <27.190029, 17.470030, 30.291161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288000, 17.669064, 30.624008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012757, -0.856532, 0.515937,
		0.969458, -0.136981, -0.203438,
		0.244925, 0.497584, 0.832119,
		27.361477, 17.818338, 30.873644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645416, 17.108105, 30.670704>,  <27.190029, 17.470030, 30.291161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645416, 17.108105, 30.670704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490467, 17.332973, 30.962978>,  <27.397497, 17.467896, 31.138344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490467, 17.332973, 30.962978>,  <27.645416, 17.108105, 30.670704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490467, 17.332973, 30.962978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032120, -0.783858, 0.620109,
		0.921363, 0.263684, 0.285590,
		-0.387375, 0.562172, 0.730687,
		27.374254, 17.501625, 31.182184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007524, 16.473183, 30.446039>,  <27.645416, 17.108105, 30.670704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007524, 16.473183, 30.446039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.066526, 16.861431, 30.369999>,  <28.101927, 17.094379, 30.324375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.066526, 16.861431, 30.369999>,  <28.007524, 16.473183, 30.446039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066526, 16.861431, 30.369999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966247, -0.100369, 0.237264,
		0.211213, -0.218683, -0.952663,
		0.147503, 0.970621, -0.190102,
		28.110777, 17.152617, 30.312967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725361, 16.698374, 30.539490>,  <28.007524, 16.473183, 30.446039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725361, 16.698374, 30.539490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.111767, 16.617176, 30.603497>,  <29.343611, 16.568459, 30.641901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.111767, 16.617176, 30.603497>,  <28.725361, 16.698374, 30.539490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111767, 16.617176, 30.603497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258382, 0.741472, -0.619240,
		0.007053, 0.639542, 0.768724,
		0.966017, -0.202992, 0.160016,
		29.401571, 16.556278, 30.651501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051565, 17.292603, 30.792965>,  <28.725361, 16.698374, 30.539490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051565, 17.292603, 30.792965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.350925, 17.077934, 30.637077>,  <29.530542, 16.949133, 30.543545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.350925, 17.077934, 30.637077>,  <29.051565, 17.292603, 30.792965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350925, 17.077934, 30.637077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214891, 0.752103, -0.623028,
		0.627469, 0.382527, 0.678200,
		0.748401, -0.536670, -0.389720,
		29.575445, 16.916933, 30.520161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615046, 17.707275, 30.826937>,  <29.051565, 17.292603, 30.792965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615046, 17.707275, 30.826937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726648, 17.447006, 30.544437>,  <29.793610, 17.290846, 30.374939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726648, 17.447006, 30.544437>,  <29.615046, 17.707275, 30.826937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726648, 17.447006, 30.544437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233972, 0.759349, -0.607163,
		0.931350, 0.004160, 0.364101,
		0.279006, -0.650671, -0.706246,
		29.810350, 17.251804, 30.332563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147188, 18.055216, 30.621111>,  <29.615046, 17.707275, 30.826937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147188, 18.055216, 30.621111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.030567, 17.790878, 30.344479>,  <29.960594, 17.632277, 30.178499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.030567, 17.790878, 30.344479>,  <30.147188, 18.055216, 30.621111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030567, 17.790878, 30.344479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055386, 0.710114, -0.701905,
		0.954950, -0.242946, -0.170435,
		-0.291553, -0.660844, -0.691579,
		29.943102, 17.592625, 30.137005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626827, 18.100586, 30.095085>,  <30.147188, 18.055216, 30.621111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626827, 18.100586, 30.095085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289555, 17.952431, 29.939209>,  <30.087191, 17.863537, 29.845684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289555, 17.952431, 29.939209>,  <30.626827, 18.100586, 30.095085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289555, 17.952431, 29.939209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089204, 0.618400, -0.780784,
		0.530176, -0.693105, -0.488384,
		-0.843182, -0.370387, -0.389688,
		30.036600, 17.841314, 29.822302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830280, 18.026274, 29.443068>,  <30.626827, 18.100586, 30.095085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830280, 18.026274, 29.443068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431068, 18.030132, 29.467865>,  <30.191542, 18.032448, 29.482742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431068, 18.030132, 29.467865>,  <30.830280, 18.026274, 29.443068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431068, 18.030132, 29.467865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039712, 0.667835, -0.743249,
		-0.048569, -0.744247, -0.666136,
		-0.998030, 0.009645, 0.061992,
		30.131659, 18.033026, 29.486462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578156, 18.115496, 28.786240>,  <30.830280, 18.026274, 29.443068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578156, 18.115496, 28.786240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257423, 18.236031, 28.992641>,  <30.064983, 18.308352, 29.116484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257423, 18.236031, 28.992641>,  <30.578156, 18.115496, 28.786240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257423, 18.236031, 28.992641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177084, 0.704915, -0.686830,
		-0.570709, -0.642098, -0.511860,
		-0.801830, 0.301338, 0.516007,
		30.016874, 18.326431, 29.147444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147923, 18.255373, 28.253557>,  <30.578156, 18.115496, 28.786240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147923, 18.255373, 28.253557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981522, 18.416538, 28.579651>,  <29.881681, 18.513237, 28.775307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981522, 18.416538, 28.579651>,  <30.147923, 18.255373, 28.253557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981522, 18.416538, 28.579651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152905, 0.852730, -0.499471,
		-0.896416, -0.332434, -0.293131,
		-0.416002, 0.402912, 0.815232,
		29.856720, 18.537413, 28.824221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460453, 18.594879, 28.017387>,  <30.147923, 18.255373, 28.253557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460453, 18.594879, 28.017387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.584114, 18.757896, 28.361092>,  <29.658312, 18.855707, 28.567314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.584114, 18.757896, 28.361092>,  <29.460453, 18.594879, 28.017387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584114, 18.757896, 28.361092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074509, 0.890367, -0.449105,
		-0.948089, 0.202865, 0.244894,
		0.309154, 0.407544, 0.859262,
		29.676861, 18.880159, 28.618870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009474, 19.132065, 28.152180>,  <29.460453, 18.594879, 28.017387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009474, 19.132065, 28.152180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.337431, 19.222507, 28.362572>,  <29.534204, 19.276773, 28.488806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.337431, 19.222507, 28.362572>,  <29.009474, 19.132065, 28.152180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337431, 19.222507, 28.362572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084072, 0.956300, -0.280040,
		-0.566311, 0.185383, 0.803072,
		0.819892, 0.226106, 0.525978,
		29.583399, 19.290339, 28.520365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905218, 19.607647, 28.631266>,  <29.009474, 19.132065, 28.152180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905218, 19.607647, 28.631266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.299288, 19.664032, 28.592163>,  <29.535730, 19.697863, 28.568701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.299288, 19.664032, 28.592163>,  <28.905218, 19.607647, 28.631266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299288, 19.664032, 28.592163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162063, 0.951638, -0.260999,
		0.056239, 0.272973, 0.960376,
		0.985176, 0.140963, -0.097758,
		29.594841, 19.706322, 28.562836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099842, 20.197468, 29.032791>,  <28.905218, 19.607647, 28.631266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099842, 20.197468, 29.032791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364920, 20.143776, 28.738087>,  <29.523966, 20.111561, 28.561264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364920, 20.143776, 28.738087>,  <29.099842, 20.197468, 29.032791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364920, 20.143776, 28.738087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158143, 0.936538, -0.312871,
		0.732000, 0.323852, 0.599412,
		0.662696, -0.134228, -0.736761,
		29.563728, 20.103508, 28.517059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391102, 20.864195, 28.937172>,  <29.099842, 20.197468, 29.032791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391102, 20.864195, 28.937172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.523815, 20.683666, 28.605816>,  <29.603443, 20.575348, 28.407003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.523815, 20.683666, 28.605816>,  <29.391102, 20.864195, 28.937172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523815, 20.683666, 28.605816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015963, 0.875318, -0.483284,
		0.943221, 0.173569, 0.283212,
		0.331783, -0.451322, -0.828389,
		29.623350, 20.548269, 28.357300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819168, 21.354097, 28.704594>,  <29.391102, 20.864195, 28.937172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819168, 21.354097, 28.704594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754009, 21.120342, 28.386612>,  <29.714914, 20.980089, 28.195822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754009, 21.120342, 28.386612>,  <29.819168, 21.354097, 28.704594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754009, 21.120342, 28.386612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021123, 0.807598, -0.589355,
		0.986417, -0.079212, -0.143899,
		-0.162896, -0.584389, -0.794955,
		29.705141, 20.945026, 28.148125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660154, 21.297361, 28.612694>,  <29.819168, 21.354097, 28.704594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660154, 21.297361, 28.612694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972513, 21.488400, 28.773739>,  <31.159929, 21.603024, 28.870365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972513, 21.488400, 28.773739>,  <30.660154, 21.297361, 28.612694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972513, 21.488400, 28.773739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000944, -0.643631, 0.765335,
		0.624656, -0.598030, -0.502160,
		0.780899, 0.477597, 0.402613,
		31.206783, 21.631680, 28.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103922, 20.753679, 28.738770>,  <30.660154, 21.297361, 28.612694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103922, 20.753679, 28.738770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211058, 21.059746, 28.972961>,  <31.275339, 21.243385, 29.113476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211058, 21.059746, 28.972961>,  <31.103922, 20.753679, 28.738770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211058, 21.059746, 28.972961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161813, -0.634774, 0.755565,
		0.949779, -0.107631, -0.293830,
		0.267837, 0.765165, 0.585479,
		31.291409, 21.289295, 29.148605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711243, 20.590429, 29.009829>,  <31.103922, 20.753679, 28.738770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711243, 20.590429, 29.009829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581305, 20.864433, 29.270668>,  <31.503342, 21.028835, 29.427172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581305, 20.864433, 29.270668>,  <31.711243, 20.590429, 29.009829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581305, 20.864433, 29.270668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329873, -0.564131, 0.756928,
		0.886374, 0.460995, -0.042711,
		-0.324845, 0.685011, 0.652101,
		31.483850, 21.069937, 29.466299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248528, 20.692308, 29.513630>,  <31.711243, 20.590429, 29.009829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248528, 20.692308, 29.513630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901896, 20.792149, 29.686481>,  <31.693916, 20.852053, 29.790192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901896, 20.792149, 29.686481>,  <32.248528, 20.692308, 29.513630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901896, 20.792149, 29.686481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101302, -0.759913, 0.642083,
		0.488645, 0.600193, 0.633242,
		-0.866582, 0.249601, 0.432128,
		31.641920, 20.867029, 29.816120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358330, 20.571659, 30.235804>,  <32.248528, 20.692308, 29.513630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358330, 20.571659, 30.235804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959459, 20.599274, 30.223919>,  <31.720139, 20.615843, 30.216787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959459, 20.599274, 30.223919>,  <32.358330, 20.571659, 30.235804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959459, 20.599274, 30.223919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068390, -0.669537, 0.739624,
		0.031167, 0.739564, 0.672364,
		-0.997172, 0.069035, -0.029712,
		31.660307, 20.619984, 30.215006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208729, 20.691622, 30.853241>,  <32.358330, 20.571659, 30.235804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208729, 20.691622, 30.853241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863352, 20.547787, 30.711731>,  <31.656124, 20.461487, 30.626825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863352, 20.547787, 30.711731>,  <32.208729, 20.691622, 30.853241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863352, 20.547787, 30.711731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012303, -0.686103, 0.727400,
		-0.504290, 0.632424, 0.587990,
		-0.863447, -0.359586, -0.353776,
		31.604319, 20.439911, 30.605598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788071, 20.689661, 31.351494>,  <32.208729, 20.691622, 30.853241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788071, 20.689661, 31.351494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638590, 20.405163, 31.113342>,  <31.548901, 20.234463, 30.970451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638590, 20.405163, 31.113342>,  <31.788071, 20.689661, 31.351494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638590, 20.405163, 31.113342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229148, -0.551194, 0.802295,
		-0.898797, 0.436250, 0.043002,
		-0.373704, -0.711246, -0.595377,
		31.526480, 20.191790, 30.934729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462641, 21.250906, 31.774733>,  <31.788071, 20.689661, 31.351494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462641, 21.250906, 31.774733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585321, 21.369862, 32.136395>,  <31.658930, 21.441235, 32.353390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585321, 21.369862, 32.136395>,  <31.462641, 21.250906, 31.774733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585321, 21.369862, 32.136395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204897, 0.907034, -0.367841,
		-0.929490, 0.298075, 0.217253,
		0.306700, 0.297390, 0.904154,
		31.677332, 21.459078, 32.407642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102142, 21.873596, 31.979902>,  <31.462641, 21.250906, 31.774733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102142, 21.873596, 31.979902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440676, 21.858063, 32.192398>,  <31.643795, 21.848742, 32.319897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440676, 21.858063, 32.192398>,  <31.102142, 21.873596, 31.979902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440676, 21.858063, 32.192398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240978, 0.917354, -0.316846,
		-0.475029, 0.396173, 0.785744,
		0.846331, -0.038836, 0.531239,
		31.694574, 21.846413, 32.351768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203547, 22.514111, 32.457642>,  <31.102142, 21.873596, 31.979902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203547, 22.514111, 32.457642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560209, 22.354721, 32.371693>,  <31.774206, 22.259087, 32.320126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560209, 22.354721, 32.371693>,  <31.203547, 22.514111, 32.457642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560209, 22.354721, 32.371693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306061, 0.880314, -0.362457,
		0.333583, 0.257423, 0.906894,
		0.891655, -0.398474, -0.214870,
		31.827705, 22.235178, 32.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523840, 23.066439, 32.326145>,  <31.203547, 22.514111, 32.457642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523840, 23.066439, 32.326145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811769, 22.814213, 32.210049>,  <31.984528, 22.662878, 32.140392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811769, 22.814213, 32.210049>,  <31.523840, 23.066439, 32.326145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811769, 22.814213, 32.210049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484949, 0.755978, -0.439684,
		0.496664, 0.175744, 0.849964,
		0.719826, -0.630564, -0.290240,
		32.027718, 22.625044, 32.122978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129318, 23.302299, 32.567226>,  <31.523840, 23.066439, 32.326145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129318, 23.302299, 32.567226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224163, 23.056431, 32.266304>,  <32.281071, 22.908911, 32.085751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224163, 23.056431, 32.266304>,  <32.129318, 23.302299, 32.567226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224163, 23.056431, 32.266304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356761, 0.775373, -0.521074,
		0.903603, -0.144839, 0.403141,
		0.237113, -0.614669, -0.752302,
		32.295296, 22.872030, 32.040615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799149, 23.508881, 32.360096>,  <32.129318, 23.302299, 32.567226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799149, 23.508881, 32.360096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673859, 23.304790, 32.039707>,  <32.598686, 23.182337, 31.847473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673859, 23.304790, 32.039707>,  <32.799149, 23.508881, 32.360096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673859, 23.304790, 32.039707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287950, 0.752687, -0.592070,
		0.904973, -0.416091, -0.088840,
		-0.313224, -0.510226, -0.800975,
		32.579891, 23.151724, 31.799416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321827, 23.438967, 31.868492>,  <32.799149, 23.508881, 32.360096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321827, 23.438967, 31.868492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960037, 23.416580, 31.699356>,  <32.742962, 23.403149, 31.597874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960037, 23.416580, 31.699356>,  <33.321827, 23.438967, 31.868492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960037, 23.416580, 31.699356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267388, 0.697967, -0.664339,
		0.332309, -0.713940, -0.616328,
		-0.904475, -0.055967, -0.422839,
		32.688694, 23.399790, 31.572504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.321163, 19.050713, 33.642742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.136135, 19.109444, 33.293007>,  <28.025118, 19.144682, 33.083164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.136135, 19.109444, 33.293007>,  <28.321163, 19.050713, 33.642742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136135, 19.109444, 33.293007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340762, 0.939881, -0.022449,
		0.818479, -0.308326, -0.484796,
		-0.462573, 0.146826, -0.874339,
		27.997364, 19.153492, 33.030704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721434, 19.588678, 33.273743>,  <28.321163, 19.050713, 33.642742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721434, 19.588678, 33.273743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373930, 19.581337, 33.075783>,  <28.165428, 19.576933, 32.957008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373930, 19.581337, 33.075783>,  <28.721434, 19.588678, 33.273743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373930, 19.581337, 33.075783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025533, 0.996324, -0.081769,
		0.494577, -0.083673, -0.865097,
		-0.868759, -0.018352, -0.494896,
		28.113302, 19.575830, 32.927315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797941, 20.046911, 32.745453>,  <28.721434, 19.588678, 33.273743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797941, 20.046911, 32.745453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.399548, 20.013584, 32.758572>,  <28.160511, 19.993587, 32.766445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.399548, 20.013584, 32.758572>,  <28.797941, 20.046911, 32.745453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399548, 20.013584, 32.758572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087791, 0.980740, -0.174476,
		-0.017631, -0.176654, -0.984115,
		-0.995983, -0.083320, 0.032800,
		28.100752, 19.988588, 32.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553082, 20.453667, 32.149082>,  <28.797941, 20.046911, 32.745453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553082, 20.453667, 32.149082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.231102, 20.433617, 32.385571>,  <28.037914, 20.421587, 32.527462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.231102, 20.433617, 32.385571>,  <28.553082, 20.453667, 32.149082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231102, 20.433617, 32.385571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206696, 0.957699, -0.200224,
		-0.556175, -0.283374, -0.781261,
		-0.804951, -0.050124, 0.591221,
		27.989616, 20.418579, 32.562935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151915, 20.803043, 31.750620>,  <28.553082, 20.453667, 32.149082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151915, 20.803043, 31.750620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929911, 20.767761, 32.081482>,  <27.796709, 20.746592, 32.279999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929911, 20.767761, 32.081482>,  <28.151915, 20.803043, 31.750620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929911, 20.767761, 32.081482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477947, 0.847660, -0.230303,
		-0.680831, -0.523157, -0.512617,
		-0.555010, -0.088206, 0.827154,
		27.763409, 20.741299, 32.329628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443668, 20.891827, 31.602343>,  <28.151915, 20.803043, 31.750620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443668, 20.891827, 31.602343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497810, 21.002628, 31.982857>,  <27.530296, 21.069109, 32.211166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497810, 21.002628, 31.982857>,  <27.443668, 20.891827, 31.602343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497810, 21.002628, 31.982857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391054, 0.897112, -0.205588,
		-0.910360, -0.344177, 0.229755,
		0.135357, 0.277006, 0.951287,
		27.538418, 21.085730, 32.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868210, 21.102310, 31.874313>,  <27.443668, 20.891827, 31.602343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868210, 21.102310, 31.874313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.153694, 21.298538, 32.074295>,  <27.324986, 21.416275, 32.194283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.153694, 21.298538, 32.074295>,  <26.868210, 21.102310, 31.874313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153694, 21.298538, 32.074295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450928, 0.867992, -0.207978,
		-0.535984, -0.077007, 0.840709,
		0.713712, 0.490571, 0.499954,
		27.367807, 21.445709, 32.224281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525049, 21.816992, 31.919716>,  <26.868210, 21.102310, 31.874313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525049, 21.816992, 31.919716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.871298, 21.886616, 32.107506>,  <27.079046, 21.928391, 32.220181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.871298, 21.886616, 32.107506>,  <26.525049, 21.816992, 31.919716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871298, 21.886616, 32.107506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157266, 0.984696, -0.075113,
		-0.475363, -0.008813, 0.879746,
		0.865620, 0.174060, 0.469474,
		27.130983, 21.938833, 32.248348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370348, 22.248680, 32.474876>,  <26.525049, 21.816992, 31.919716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370348, 22.248680, 32.474876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.756578, 22.334740, 32.416401>,  <26.988317, 22.386375, 32.381317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.756578, 22.334740, 32.416401>,  <26.370348, 22.248680, 32.474876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756578, 22.334740, 32.416401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207280, 0.975966, 0.067274,
		0.157147, -0.034657, 0.986967,
		0.965577, 0.215151, -0.146187,
		27.046251, 22.399284, 32.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507744, 22.814453, 32.884388>,  <26.370348, 22.248680, 32.474876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507744, 22.814453, 32.884388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.813961, 22.815483, 32.627037>,  <26.997692, 22.816101, 32.472626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.813961, 22.815483, 32.627037>,  <26.507744, 22.814453, 32.884388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813961, 22.815483, 32.627037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092477, 0.990048, -0.106075,
		0.636703, 0.140703, 0.758164,
		0.765544, 0.002575, -0.643379,
		27.043625, 22.816256, 32.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975363, 23.370110, 33.157661>,  <26.507744, 22.814453, 32.884388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975363, 23.370110, 33.157661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.051004, 23.311192, 32.769321>,  <27.096390, 23.275841, 32.536320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.051004, 23.311192, 32.769321>,  <26.975363, 23.370110, 33.157661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051004, 23.311192, 32.769321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002326, 0.988750, -0.149556,
		0.981954, 0.026024, 0.187321,
		0.189106, -0.147293, -0.970847,
		27.107737, 23.267004, 32.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646620, 23.681576, 32.951832>,  <26.975363, 23.370110, 33.157661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646620, 23.681576, 32.951832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.402136, 23.647152, 32.637119>,  <27.255445, 23.626497, 32.448292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.402136, 23.647152, 32.637119>,  <27.646620, 23.681576, 32.951832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402136, 23.647152, 32.637119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023294, 0.991684, -0.126569,
		0.791127, -0.095688, -0.604121,
		-0.611208, -0.086060, -0.786777,
		27.218773, 23.621334, 32.401085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411980, 23.736433, 32.892998>,  <27.646620, 23.681576, 32.951832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411980, 23.736433, 32.892998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.756084, 23.870010, 33.047108>,  <28.962547, 23.950157, 33.139572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.756084, 23.870010, 33.047108>,  <28.411980, 23.736433, 32.892998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756084, 23.870010, 33.047108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047703, -0.805055, 0.591280,
		0.507619, -0.490276, -0.708486,
		0.860260, 0.333941, 0.385274,
		29.014162, 23.970192, 33.162689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844870, 23.180931, 32.883270>,  <28.411980, 23.736433, 32.892998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844870, 23.180931, 32.883270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.021130, 23.415516, 33.155121>,  <29.126886, 23.556267, 33.318230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.021130, 23.415516, 33.155121>,  <28.844870, 23.180931, 32.883270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021130, 23.415516, 33.155121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185600, -0.800253, 0.570218,
		0.878282, -0.125129, -0.461480,
		0.440652, 0.586463, 0.679623,
		29.153326, 23.591455, 33.359009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470123, 22.784882, 33.110283>,  <28.844870, 23.180931, 32.883270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470123, 22.784882, 33.110283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.384554, 23.059303, 33.388439>,  <29.333212, 23.223957, 33.555332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.384554, 23.059303, 33.388439>,  <29.470123, 22.784882, 33.110283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384554, 23.059303, 33.388439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247808, -0.650467, 0.717972,
		0.944895, 0.325916, -0.030859,
		-0.213926, 0.686055, 0.695388,
		29.320375, 23.265120, 33.597057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950047, 22.620560, 33.542137>,  <29.470123, 22.784882, 33.110283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950047, 22.620560, 33.542137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.668011, 22.844204, 33.716606>,  <29.498789, 22.978390, 33.821285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.668011, 22.844204, 33.716606>,  <29.950047, 22.620560, 33.542137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668011, 22.844204, 33.716606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136465, -0.496605, 0.857182,
		0.695864, 0.663912, 0.273852,
		-0.705089, 0.559110, 0.436170,
		29.456484, 23.011936, 33.847458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298500, 22.893484, 34.155376>,  <29.950047, 22.620560, 33.542137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298500, 22.893484, 34.155376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.899378, 22.884052, 34.180134>,  <29.659904, 22.878393, 34.194988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.899378, 22.884052, 34.180134>,  <30.298500, 22.893484, 34.155376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899378, 22.884052, 34.180134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064657, -0.549378, 0.833068,
		0.014361, 0.835241, 0.549697,
		-0.997804, -0.023578, 0.061894,
		29.600037, 22.876978, 34.198704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219889, 23.085997, 34.864674>,  <30.298500, 22.893484, 34.155376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219889, 23.085997, 34.864674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902298, 22.888149, 34.723278>,  <29.711744, 22.769442, 34.638443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902298, 22.888149, 34.723278>,  <30.219889, 23.085997, 34.864674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902298, 22.888149, 34.723278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080169, -0.491180, 0.867361,
		-0.602638, 0.717003, 0.350333,
		-0.793977, -0.494619, -0.353486,
		29.664104, 22.739763, 34.617233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716795, 23.019596, 35.461681>,  <30.219889, 23.085997, 34.864674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716795, 23.019596, 35.461681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.593388, 22.730042, 35.214844>,  <29.519342, 22.556309, 35.066742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.593388, 22.730042, 35.214844>,  <29.716795, 23.019596, 35.461681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593388, 22.730042, 35.214844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211453, -0.580317, 0.786460,
		-0.927418, 0.373124, 0.025971,
		-0.308519, -0.723886, -0.617095,
		29.500832, 22.512877, 35.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371376, 22.641527, 35.892815>,  <29.716795, 23.019596, 35.461681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371376, 22.641527, 35.892815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401539, 22.392025, 35.581627>,  <29.419636, 22.242323, 35.394913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401539, 22.392025, 35.581627>,  <29.371376, 22.641527, 35.892815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401539, 22.392025, 35.581627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078530, -0.781486, 0.618961,
		-0.994056, 0.014421, -0.107912,
		0.075406, -0.623756, -0.777973,
		29.424160, 22.204899, 35.348236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846346, 22.165529, 35.990162>,  <29.371376, 22.641527, 35.892815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846346, 22.165529, 35.990162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.125616, 22.014511, 35.746849>,  <29.293179, 21.923901, 35.600861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.125616, 22.014511, 35.746849>,  <28.846346, 22.165529, 35.990162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125616, 22.014511, 35.746849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028560, -0.863659, 0.503267,
		-0.715355, -0.333997, -0.613770,
		0.698177, -0.377544, -0.608284,
		29.335070, 21.901247, 35.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661757, 21.442642, 35.840649>,  <28.846346, 22.165529, 35.990162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661757, 21.442642, 35.840649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.053217, 21.459049, 35.760090>,  <29.288094, 21.468893, 35.711754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.053217, 21.459049, 35.760090>,  <28.661757, 21.442642, 35.840649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053217, 21.459049, 35.760090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124081, -0.899077, 0.419839,
		-0.163847, -0.435865, -0.884972,
		0.978651, 0.041019, -0.201394,
		29.346813, 21.471355, 35.699673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834440, 20.815580, 35.541847>,  <28.661757, 21.442642, 35.840649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834440, 20.815580, 35.541847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174088, 20.971809, 35.684086>,  <29.377876, 21.065546, 35.769428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174088, 20.971809, 35.684086>,  <28.834440, 20.815580, 35.541847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174088, 20.971809, 35.684086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247879, -0.889141, 0.384686,
		0.466424, -0.238500, -0.851802,
		0.849120, 0.390571, 0.355598,
		29.428823, 21.088980, 35.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441051, 20.425200, 35.258656>,  <28.834440, 20.815580, 35.541847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441051, 20.425200, 35.258656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597857, 20.596504, 35.584335>,  <29.691938, 20.699287, 35.779743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597857, 20.596504, 35.584335>,  <29.441051, 20.425200, 35.258656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597857, 20.596504, 35.584335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196398, -0.903592, 0.380721,
		0.898752, 0.010660, -0.438327,
		0.392011, 0.428260, 0.814199,
		29.715460, 20.724983, 35.828594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076679, 20.093552, 35.364559>,  <29.441051, 20.425200, 35.258656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076679, 20.093552, 35.364559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013630, 20.253292, 35.725819>,  <29.975800, 20.349136, 35.942574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013630, 20.253292, 35.725819>,  <30.076679, 20.093552, 35.364559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013630, 20.253292, 35.725819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016101, -0.913419, 0.406703,
		0.987368, 0.078648, 0.137548,
		-0.157626, 0.399350, 0.903146,
		29.966343, 20.373096, 35.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595097, 19.825354, 35.762760>,  <30.076679, 20.093552, 35.364559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595097, 19.825354, 35.762760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.313339, 19.940819, 36.022148>,  <30.144285, 20.010098, 36.177780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.313339, 19.940819, 36.022148>,  <30.595097, 19.825354, 35.762760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313339, 19.940819, 36.022148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217111, -0.957408, 0.190351,
		0.675793, -0.006707, 0.737061,
		-0.704391, 0.288662, 0.648466,
		30.102022, 20.027418, 36.216686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674822, 20.490297, 35.332455>,  <30.595097, 19.825354, 35.762760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674822, 20.490297, 35.332455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820360, 20.184612, 35.119438>,  <30.907682, 20.001202, 34.991631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820360, 20.184612, 35.119438>,  <30.674822, 20.490297, 35.332455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820360, 20.184612, 35.119438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374421, 0.643495, -0.667625,
		0.852893, 0.043517, 0.520269,
		0.363844, -0.764212, -0.532539,
		30.929514, 19.955349, 34.959675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284445, 20.700844, 34.958710>,  <30.674822, 20.490297, 35.332455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284445, 20.700844, 34.958710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188717, 20.380249, 34.739494>,  <31.131281, 20.187893, 34.607964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188717, 20.380249, 34.739494>,  <31.284445, 20.700844, 34.958710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188717, 20.380249, 34.739494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189041, 0.515178, -0.835975,
		0.952361, -0.303665, 0.028223,
		-0.239317, -0.801485, -0.548041,
		31.116922, 20.139803, 34.575081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880499, 20.504614, 34.708866>,  <31.284445, 20.700844, 34.958710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880499, 20.504614, 34.708866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625870, 20.319782, 34.461884>,  <31.473091, 20.208883, 34.313694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625870, 20.319782, 34.461884>,  <31.880499, 20.504614, 34.708866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625870, 20.319782, 34.461884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477136, 0.393039, -0.786042,
		0.605900, -0.794985, -0.029723,
		-0.636574, -0.462080, -0.617458,
		31.434896, 20.181158, 34.276646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252094, 20.241606, 34.129406>,  <31.880499, 20.504614, 34.708866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252094, 20.241606, 34.129406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.885012, 20.247540, 33.970612>,  <31.664762, 20.251101, 33.875336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.885012, 20.247540, 33.970612>,  <32.252094, 20.241606, 34.129406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885012, 20.247540, 33.970612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367191, 0.413043, -0.833406,
		0.151607, -0.910591, -0.384499,
		-0.917707, 0.014834, -0.396981,
		31.609699, 20.251989, 33.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297989, 20.034231, 33.411076>,  <32.252094, 20.241606, 34.129406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297989, 20.034231, 33.411076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.963633, 20.250446, 33.449234>,  <31.763018, 20.380177, 33.472130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.963633, 20.250446, 33.449234>,  <32.297989, 20.034231, 33.411076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963633, 20.250446, 33.449234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170708, 0.421183, -0.890766,
		-0.521672, -0.728301, -0.444338,
		-0.835893, 0.540540, 0.095392,
		31.712864, 20.412609, 33.477852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212547, 20.204248, 32.717213>,  <32.297989, 20.034231, 33.411076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212547, 20.204248, 32.717213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948736, 20.461311, 32.873169>,  <31.790449, 20.615549, 32.966743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948736, 20.461311, 32.873169>,  <32.212547, 20.204248, 32.717213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948736, 20.461311, 32.873169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272747, 0.687940, -0.672568,
		-0.700451, -0.337238, -0.628999,
		-0.659529, 0.642658, 0.389887,
		31.750877, 20.654108, 32.990135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838310, 20.527973, 32.147243>,  <32.212547, 20.204248, 32.717213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838310, 20.527973, 32.147243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.795824, 20.782578, 32.452812>,  <31.770332, 20.935341, 32.636154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.795824, 20.782578, 32.452812>,  <31.838310, 20.527973, 32.147243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795824, 20.782578, 32.452812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108580, 0.771095, -0.627394,
		-0.988397, 0.016308, -0.151014,
		-0.106215, 0.636511, 0.763919,
		31.763960, 20.973532, 32.681988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179693, 20.393017, 31.765114>,  <31.838310, 20.527973, 32.147243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179693, 20.393017, 31.765114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200884, 20.122147, 31.471550>,  <31.213598, 19.959625, 31.295412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200884, 20.122147, 31.471550>,  <31.179693, 20.393017, 31.765114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200884, 20.122147, 31.471550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063359, -0.731184, 0.679232,
		-0.996584, -0.082482, 0.004171,
		0.052975, -0.677176, -0.733912,
		31.216776, 19.918993, 31.251377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694065, 19.868660, 31.977535>,  <31.179693, 20.393017, 31.765114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694065, 19.868660, 31.977535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920368, 19.689945, 31.700321>,  <31.056150, 19.582716, 31.533993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920368, 19.689945, 31.700321>,  <30.694065, 19.868660, 31.977535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920368, 19.689945, 31.700321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049339, -0.820630, 0.569326,
		-0.823090, -0.356296, -0.442238,
		0.565763, -0.446787, -0.693032,
		31.090096, 19.555908, 31.492411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357962, 19.208090, 31.700708>,  <30.694065, 19.868660, 31.977535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357962, 19.208090, 31.700708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755039, 19.184601, 31.658550>,  <30.993286, 19.170507, 31.633255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755039, 19.184601, 31.658550>,  <30.357962, 19.208090, 31.700708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755039, 19.184601, 31.658550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000992, -0.869556, 0.493833,
		-0.120646, -0.490330, -0.863146,
		0.992695, -0.058723, -0.105395,
		31.052847, 19.166985, 31.626932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397758, 18.624735, 31.280479>,  <30.357962, 19.208090, 31.700708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397758, 18.624735, 31.280479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768026, 18.659008, 31.427883>,  <30.990187, 18.679571, 31.516325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768026, 18.659008, 31.427883>,  <30.397758, 18.624735, 31.280479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768026, 18.659008, 31.427883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018952, -0.983297, 0.181020,
		0.377863, -0.160581, -0.911830,
		0.925667, 0.085682, 0.368509,
		31.045727, 18.684713, 31.538435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864151, 18.115217, 31.003942>,  <30.397758, 18.624735, 31.280479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864151, 18.115217, 31.003942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024477, 18.225067, 31.353554>,  <31.120672, 18.290977, 31.563320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024477, 18.225067, 31.353554>,  <30.864151, 18.115217, 31.003942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024477, 18.225067, 31.353554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157423, -0.960471, 0.229595,
		0.902533, 0.045567, -0.428204,
		0.400815, 0.274627, 0.874029,
		31.144722, 18.307455, 31.615763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292578, 17.514688, 31.229107>,  <30.864151, 18.115217, 31.003942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292578, 17.514688, 31.229107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275127, 17.734955, 31.562542>,  <31.264658, 17.867115, 31.762602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275127, 17.734955, 31.562542>,  <31.292578, 17.514688, 31.229107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275127, 17.734955, 31.562542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051148, -0.834518, 0.548602,
		0.997738, -0.018704, 0.064571,
		-0.043624, 0.550664, 0.833586,
		31.262039, 17.900154, 31.812618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844400, 17.408337, 31.719688>,  <31.292578, 17.514688, 31.229107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844400, 17.408337, 31.719688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.539238, 17.533413, 31.946033>,  <31.356140, 17.608459, 32.081841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.539238, 17.533413, 31.946033>,  <31.844400, 17.408337, 31.719688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539238, 17.533413, 31.946033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132643, -0.780932, 0.610369,
		0.632758, 0.540711, 0.554300,
		-0.762904, 0.312692, 0.565863,
		31.310368, 17.627220, 32.115791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105991, 17.290846, 32.365627>,  <31.844400, 17.408337, 31.719688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105991, 17.290846, 32.365627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.707796, 17.322151, 32.387115>,  <31.468880, 17.340935, 32.400009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.707796, 17.322151, 32.387115>,  <32.105991, 17.290846, 32.365627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707796, 17.322151, 32.387115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039725, -0.857437, 0.513054,
		0.086214, 0.508603, 0.856674,
		-0.995484, 0.078264, 0.053719,
		31.409151, 17.345631, 32.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799179, 17.321545, 33.075443>,  <32.105991, 17.290846, 32.365627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799179, 17.321545, 33.075443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.588715, 17.130577, 32.793953>,  <31.462437, 17.015997, 32.625057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.588715, 17.130577, 32.793953>,  <31.799179, 17.321545, 33.075443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588715, 17.130577, 32.793953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137785, -0.864463, 0.483444,
		-0.839149, 0.157406, 0.520627,
		-0.526160, -0.477417, -0.703725,
		31.430866, 16.987352, 32.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.310310, 30.728361, 23.896461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042147, 30.483223, 24.063782>,  <29.881248, 30.336140, 24.164173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042147, 30.483223, 24.063782>,  <30.310310, 30.728361, 23.896461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042147, 30.483223, 24.063782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715814, -0.385756, 0.582068,
		-0.195354, 0.689649, 0.697296,
		-0.670408, -0.612843, 0.418301,
		29.841024, 30.299370, 24.189272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432377, 30.612064, 24.569553>,  <30.310310, 30.728361, 23.896461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432377, 30.612064, 24.569553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184019, 30.298813, 24.555706>,  <30.035004, 30.110863, 24.547398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184019, 30.298813, 24.555706>,  <30.432377, 30.612064, 24.569553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184019, 30.298813, 24.555706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619095, -0.516974, 0.591151,
		-0.480843, 0.345613, 0.805817,
		-0.620896, -0.783129, -0.034616,
		29.997751, 30.063875, 24.545321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300907, 30.326054, 25.199614>,  <30.432377, 30.612064, 24.569553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300907, 30.326054, 25.199614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226118, 30.015541, 24.958805>,  <30.181244, 29.829233, 24.814320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226118, 30.015541, 24.958805>,  <30.300907, 30.326054, 25.199614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226118, 30.015541, 24.958805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547524, -0.591165, 0.592234,
		-0.815634, -0.218889, 0.535565,
		-0.186974, -0.776280, -0.602021,
		30.170027, 29.782658, 24.778198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217793, 29.742004, 25.629625>,  <30.300907, 30.326054, 25.199614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217793, 29.742004, 25.629625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265951, 29.577446, 25.268238>,  <30.294846, 29.478710, 25.051405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265951, 29.577446, 25.268238>,  <30.217793, 29.742004, 25.629625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265951, 29.577446, 25.268238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393661, -0.815691, 0.423884,
		-0.911337, -0.406695, 0.063745,
		0.120395, -0.411396, -0.903470,
		30.302069, 29.454027, 24.997196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923565, 29.052849, 25.625362>,  <30.217793, 29.742004, 25.629625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923565, 29.052849, 25.625362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210476, 29.087368, 25.348793>,  <30.382622, 29.108080, 25.182852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210476, 29.087368, 25.348793>,  <29.923565, 29.052849, 25.625362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210476, 29.087368, 25.348793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447867, -0.817269, 0.362611,
		-0.533786, -0.569758, -0.624859,
		0.717278, 0.086297, -0.691422,
		30.425659, 29.113256, 25.141367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124836, 28.382673, 25.580452>,  <29.923565, 29.052849, 25.625362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124836, 28.382673, 25.580452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417370, 28.557884, 25.371346>,  <30.592890, 28.663010, 25.245882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417370, 28.557884, 25.371346>,  <30.124836, 28.382673, 25.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417370, 28.557884, 25.371346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635684, -0.715489, 0.289794,
		-0.247096, -0.544251, -0.801707,
		0.731333, 0.438026, -0.522767,
		30.636770, 28.689291, 25.214516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401546, 27.893757, 25.195187>,  <30.124836, 28.382673, 25.580452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401546, 27.893757, 25.195187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697100, 28.161167, 25.228947>,  <30.874432, 28.321613, 25.249203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697100, 28.161167, 25.228947>,  <30.401546, 27.893757, 25.195187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697100, 28.161167, 25.228947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636929, -0.733800, 0.236346,
		0.219935, -0.120877, -0.967997,
		0.738885, 0.668526, 0.084398,
		30.918766, 28.361725, 25.254267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930189, 27.648546, 24.861092>,  <30.401546, 27.893757, 25.195187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930189, 27.648546, 24.861092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099371, 27.914139, 25.107746>,  <31.200880, 28.073494, 25.255739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099371, 27.914139, 25.107746>,  <30.930189, 27.648546, 24.861092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099371, 27.914139, 25.107746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591681, -0.717770, 0.367042,
		0.686311, 0.209609, -0.696449,
		0.422955, 0.663981, 0.616635,
		31.226257, 28.113333, 25.292736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582392, 27.497734, 24.856756>,  <30.930189, 27.648546, 24.861092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582392, 27.497734, 24.856756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549078, 27.693512, 25.203976>,  <31.529091, 27.810980, 25.412308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549078, 27.693512, 25.203976>,  <31.582392, 27.497734, 24.856756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549078, 27.693512, 25.203976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526893, -0.717731, 0.455242,
		0.845841, 0.495282, -0.198112,
		-0.083282, 0.489447, 0.868047,
		31.524094, 27.840345, 25.464390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244736, 27.488094, 25.123236>,  <31.582392, 27.497734, 24.856756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244736, 27.488094, 25.123236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985788, 27.533974, 25.424633>,  <31.830420, 27.561502, 25.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985788, 27.533974, 25.424633>,  <32.244736, 27.488094, 25.123236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985788, 27.533974, 25.424633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505680, -0.675045, 0.537217,
		0.570262, 0.728806, 0.379003,
		-0.647371, 0.114700, 0.753495,
		31.791576, 27.568384, 25.650682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652187, 27.266407, 25.668106>,  <32.244736, 27.488094, 25.123236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652187, 27.266407, 25.668106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298790, 27.289864, 25.854008>,  <32.086750, 27.303938, 25.965549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298790, 27.289864, 25.854008>,  <32.652187, 27.266407, 25.668106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298790, 27.289864, 25.854008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218836, -0.825553, 0.520166,
		0.414183, 0.561270, 0.716539,
		-0.883495, 0.058639, 0.464756,
		32.033741, 27.307455, 25.993435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703716, 27.308809, 26.486647>,  <32.652187, 27.266407, 25.668106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703716, 27.308809, 26.486647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351582, 27.157810, 26.371750>,  <32.140301, 27.067211, 26.302813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351582, 27.157810, 26.371750>,  <32.703716, 27.308809, 26.486647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351582, 27.157810, 26.371750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215582, -0.857788, 0.466609,
		-0.422537, 0.348847, 0.836522,
		-0.880333, -0.377499, -0.287242,
		32.087482, 27.044561, 26.285578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527004, 27.685549, 27.151554>,  <32.703716, 27.308809, 26.486647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527004, 27.685549, 27.151554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759541, 27.896915, 27.399044>,  <32.899063, 28.023735, 27.547537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759541, 27.896915, 27.399044>,  <32.527004, 27.685549, 27.151554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759541, 27.896915, 27.399044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185130, 0.826376, -0.531817,
		-0.792320, 0.194623, 0.578231,
		0.581340, 0.528417, 0.618724,
		32.933941, 28.055441, 27.584661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142395, 28.291912, 27.479012>,  <32.527004, 27.685549, 27.151554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142395, 28.291912, 27.479012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531128, 28.383007, 27.503269>,  <32.764366, 28.437664, 27.517824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531128, 28.383007, 27.503269>,  <32.142395, 28.291912, 27.479012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531128, 28.383007, 27.503269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204308, 0.942386, -0.264889,
		-0.117477, 0.245037, 0.962370,
		0.971832, 0.227738, 0.060645,
		32.822678, 28.451328, 27.521463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099667, 28.936554, 27.438967>,  <32.142395, 28.291912, 27.479012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099667, 28.936554, 27.438967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498489, 28.906479, 27.432888>,  <32.737782, 28.888433, 27.429241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498489, 28.906479, 27.432888>,  <32.099667, 28.936554, 27.438967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498489, 28.906479, 27.432888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068283, 0.960204, -0.270823,
		0.034954, 0.268988, 0.962509,
		0.997054, -0.075189, -0.015196,
		32.797604, 28.883923, 27.428329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382099, 29.488222, 27.890213>,  <32.099667, 28.936554, 27.438967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382099, 29.488222, 27.890213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673595, 29.393234, 27.633293>,  <32.848492, 29.336241, 27.479141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673595, 29.393234, 27.633293>,  <32.382099, 29.488222, 27.890213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673595, 29.393234, 27.633293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036390, 0.950052, -0.309963,
		0.683824, 0.202508, 0.700982,
		0.728739, -0.237469, -0.642299,
		32.892216, 29.321993, 27.440603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013363, 30.005692, 27.986647>,  <32.382099, 29.488222, 27.890213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013363, 30.005692, 27.986647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064434, 29.836922, 27.627609>,  <33.095078, 29.735659, 27.412186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064434, 29.836922, 27.627609>,  <33.013363, 30.005692, 27.986647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064434, 29.836922, 27.627609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336370, 0.869787, -0.361008,
		0.933035, -0.255831, 0.252976,
		0.127678, -0.421926, -0.897595,
		33.102737, 29.710344, 27.358332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629993, 30.359245, 27.829193>,  <33.013363, 30.005692, 27.986647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629993, 30.359245, 27.829193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474514, 30.221706, 27.487274>,  <33.381226, 30.139183, 27.282124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474514, 30.221706, 27.487274>,  <33.629993, 30.359245, 27.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474514, 30.221706, 27.487274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431535, 0.751759, -0.498634,
		0.814057, -0.562695, -0.143827,
		-0.388702, -0.343850, -0.854797,
		33.357903, 30.118551, 27.230835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121521, 30.259354, 27.342983>,  <33.629993, 30.359245, 27.829193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121521, 30.259354, 27.342983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787357, 30.343739, 27.139973>,  <33.586861, 30.394369, 27.018166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787357, 30.343739, 27.139973>,  <34.121521, 30.259354, 27.342983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787357, 30.343739, 27.139973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391974, 0.875983, -0.281089,
		0.385288, -0.433763, -0.814496,
		-0.835410, 0.210961, -0.507529,
		33.536736, 30.407026, 26.987715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359318, 30.645241, 26.775602>,  <34.121521, 30.259354, 27.342983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359318, 30.645241, 26.775602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968929, 30.729866, 26.796505>,  <33.734695, 30.780642, 26.809048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968929, 30.729866, 26.796505>,  <34.359318, 30.645241, 26.775602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968929, 30.729866, 26.796505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196299, 0.957621, -0.210780,
		-0.094637, -0.195456, -0.976136,
		-0.975967, 0.211562, 0.052258,
		33.676140, 30.793335, 26.812181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241970, 31.115740, 26.213017>,  <34.359318, 30.645241, 26.775602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241970, 31.115740, 26.213017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924179, 31.138596, 26.454857>,  <33.733505, 31.152309, 26.599960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924179, 31.138596, 26.454857>,  <34.241970, 31.115740, 26.213017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924179, 31.138596, 26.454857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021906, 0.997612, -0.065493,
		-0.606900, -0.038788, -0.793831,
		-0.794476, 0.057138, 0.604601,
		33.685837, 31.155737, 26.636238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709415, 31.480890, 25.917854>,  <34.241970, 31.115740, 26.213017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709415, 31.480890, 25.917854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616386, 31.543327, 26.301842>,  <33.560570, 31.580790, 26.532234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616386, 31.543327, 26.301842>,  <33.709415, 31.480890, 25.917854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616386, 31.543327, 26.301842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148914, 0.969683, -0.193750,
		-0.961110, -0.188015, -0.202280,
		-0.232575, 0.156093, 0.959971,
		33.546616, 31.590155, 26.589832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216228, 31.969761, 25.913612>,  <33.709415, 31.480890, 25.917854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216228, 31.969761, 25.913612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300720, 31.986485, 26.304230>,  <33.351418, 31.996519, 26.538599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300720, 31.986485, 26.304230>,  <33.216228, 31.969761, 25.913612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300720, 31.986485, 26.304230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194815, 0.980840, 0.000148,
		-0.957825, -0.190276, 0.215328,
		0.211231, 0.041807, 0.976542,
		33.364090, 31.999027, 26.597193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607021, 32.315105, 26.185305>,  <33.216228, 31.969761, 25.913612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607021, 32.315105, 26.185305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883137, 32.340424, 26.473610>,  <33.048805, 32.355614, 26.646593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883137, 32.340424, 26.473610>,  <32.607021, 32.315105, 26.185305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883137, 32.340424, 26.473610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231641, 0.963068, 0.137270,
		-0.685456, -0.261714, 0.679453,
		0.690284, 0.063297, 0.720764,
		33.090221, 32.359413, 26.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299080, 32.761257, 26.595011>,  <32.607021, 32.315105, 26.185305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299080, 32.761257, 26.595011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676071, 32.753521, 26.728497>,  <32.902267, 32.748878, 26.808588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676071, 32.753521, 26.728497>,  <32.299080, 32.761257, 26.595011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676071, 32.753521, 26.728497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078552, 0.957555, 0.277340,
		-0.324911, -0.287600, 0.900954,
		0.942477, -0.019339, 0.333712,
		32.958813, 32.747719, 26.828609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339138, 32.908176, 27.312710>,  <32.299080, 32.761257, 26.595011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339138, 32.908176, 27.312710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670685, 33.019981, 27.118866>,  <32.869614, 33.087063, 27.002560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670685, 33.019981, 27.118866>,  <32.339138, 32.908176, 27.312710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670685, 33.019981, 27.118866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153604, 0.946656, 0.283280,
		0.537940, -0.160364, 0.827589,
		0.828871, 0.279508, -0.484611,
		32.919346, 33.103832, 26.973482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954388, 33.501572, 27.315050>,  <32.339138, 32.908176, 27.312710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954388, 33.501572, 27.315050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568632, 33.545155, 27.411449>,  <31.337179, 33.571304, 27.469290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568632, 33.545155, 27.411449>,  <31.954388, 33.501572, 27.315050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568632, 33.545155, 27.411449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063956, -0.788087, 0.612232,
		0.256637, 0.605844, 0.753054,
		-0.964389, 0.108959, 0.241000,
		31.279316, 33.577843, 27.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913046, 33.162601, 27.935575>,  <31.954388, 33.501572, 27.315050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913046, 33.162601, 27.935575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524981, 33.237606, 27.874100>,  <31.292141, 33.282608, 27.837214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524981, 33.237606, 27.874100>,  <31.913046, 33.162601, 27.935575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524981, 33.237606, 27.874100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242445, -0.751711, 0.613311,
		-0.000528, 0.632274, 0.774745,
		-0.970165, 0.187509, -0.153689,
		31.233931, 33.293858, 27.827993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527840, 33.125465, 28.562635>,  <31.913046, 33.162601, 27.935575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527840, 33.125465, 28.562635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248518, 33.034523, 28.291142>,  <31.080925, 32.979958, 28.128244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248518, 33.034523, 28.291142>,  <31.527840, 33.125465, 28.562635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248518, 33.034523, 28.291142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375100, -0.691371, 0.617500,
		-0.609647, 0.685797, 0.397508,
		-0.698305, -0.227352, -0.678735,
		31.039026, 32.966316, 28.087521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856043, 33.072243, 28.883444>,  <31.527840, 33.125465, 28.562635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856043, 33.072243, 28.883444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849895, 32.845116, 28.554237>,  <30.846207, 32.708839, 28.356714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849895, 32.845116, 28.554237>,  <30.856043, 33.072243, 28.883444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849895, 32.845116, 28.554237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255653, -0.793520, 0.552238,
		-0.966647, 0.218892, -0.132968,
		-0.015367, -0.567813, -0.823014,
		30.845285, 32.674770, 28.307333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380125, 32.645741, 29.019339>,  <30.856043, 33.072243, 28.883444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380125, 32.645741, 29.019339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560713, 32.455170, 28.717560>,  <30.669065, 32.340828, 28.536493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560713, 32.455170, 28.717560>,  <30.380125, 32.645741, 29.019339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560713, 32.455170, 28.717560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330035, -0.874720, 0.354883,
		-0.829005, 0.088774, -0.552150,
		0.451473, -0.476429, -0.754446,
		30.696154, 32.312241, 28.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908758, 32.176483, 28.845751>,  <30.380125, 32.645741, 29.019339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908758, 32.176483, 28.845751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234507, 32.029591, 28.666000>,  <30.429956, 31.941454, 28.558149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234507, 32.029591, 28.666000>,  <29.908758, 32.176483, 28.845751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234507, 32.029591, 28.666000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262668, -0.923714, 0.278851,
		-0.517500, -0.109051, -0.848706,
		0.814371, -0.367233, -0.449378,
		30.478817, 31.919420, 28.531187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686472, 31.563438, 28.620295>,  <29.908758, 32.176483, 28.845751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686472, 31.563438, 28.620295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085249, 31.533321, 28.611961>,  <30.324516, 31.515251, 28.606962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085249, 31.533321, 28.611961>,  <29.686472, 31.563438, 28.620295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085249, 31.533321, 28.611961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067752, -0.966071, 0.249231,
		-0.038892, -0.247058, -0.968220,
		0.996944, -0.075291, -0.020834,
		30.384333, 31.510735, 28.605711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793266, 30.964800, 28.271864>,  <29.686472, 31.563438, 28.620295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793266, 30.964800, 28.271864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123726, 31.039547, 28.484489>,  <30.322002, 31.084396, 28.612064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123726, 31.039547, 28.484489>,  <29.793266, 30.964800, 28.271864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123726, 31.039547, 28.484489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, -0.875610, 0.471411,
		0.553534, -0.445408, -0.703714,
		0.826148, 0.186869, 0.531563,
		30.371571, 31.095608, 28.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046455, 30.378622, 28.355536>,  <29.793266, 30.964800, 28.271864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046455, 30.378622, 28.355536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259134, 30.574039, 28.632267>,  <30.386742, 30.691290, 28.798306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259134, 30.574039, 28.632267>,  <30.046455, 30.378622, 28.355536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259134, 30.574039, 28.632267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078978, -0.841900, 0.533822,
		0.843245, -0.229191, -0.486219,
		0.531695, 0.488544, 0.691827,
		30.418642, 30.720602, 28.839815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652067, 29.959042, 28.508650>,  <30.046455, 30.378622, 28.355536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652067, 29.959042, 28.508650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596588, 30.185009, 28.834011>,  <30.563301, 30.320589, 29.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596588, 30.185009, 28.834011>,  <30.652067, 29.959042, 28.508650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596588, 30.185009, 28.834011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003045, -0.821583, 0.570081,
		0.990330, 0.076592, 0.115671,
		-0.138697, 0.564921, 0.813405,
		30.554979, 30.354485, 29.078033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194996, 29.778240, 28.975666>,  <30.652067, 29.959042, 28.508650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194996, 29.778240, 28.975666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899067, 29.940617, 29.190281>,  <30.721510, 30.038042, 29.319050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899067, 29.940617, 29.190281>,  <31.194996, 29.778240, 28.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899067, 29.940617, 29.190281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048161, -0.763468, 0.644048,
		0.671075, 0.502322, 0.545281,
		-0.739824, 0.405943, 0.536537,
		30.677120, 30.062399, 29.351242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445982, 29.696659, 29.722223>,  <31.194996, 29.778240, 28.975666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445982, 29.696659, 29.722223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048714, 29.735348, 29.696133>,  <30.810352, 29.758560, 29.680479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048714, 29.735348, 29.696133>,  <31.445982, 29.696659, 29.722223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048714, 29.735348, 29.696133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116054, -0.762369, 0.636651,
		0.011851, 0.639874, 0.768389,
		-0.993172, 0.096719, -0.065225,
		30.750763, 29.764364, 29.676565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196230, 29.513889, 30.402168>,  <31.445982, 29.696659, 29.722223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196230, 29.513889, 30.402168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857937, 29.478062, 30.191753>,  <30.654961, 29.456566, 30.065504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857937, 29.478062, 30.191753>,  <31.196230, 29.513889, 30.402168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857937, 29.478062, 30.191753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240773, -0.815699, 0.525988,
		-0.476201, 0.571500, 0.668296,
		-0.845731, -0.089568, -0.526039,
		30.604218, 29.451191, 30.033941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802488, 29.253502, 30.844278>,  <31.196230, 29.513889, 30.402168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802488, 29.253502, 30.844278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580467, 29.186356, 30.518398>,  <30.447254, 29.146069, 30.322870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580467, 29.186356, 30.518398>,  <30.802488, 29.253502, 30.844278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580467, 29.186356, 30.518398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421090, -0.787950, 0.449242,
		-0.717354, 0.592416, 0.366669,
		-0.555055, -0.167865, -0.814700,
		30.413950, 29.135996, 30.273989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088217, 29.107298, 31.092937>,  <30.802488, 29.253502, 30.844278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088217, 29.107298, 31.092937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089359, 28.961670, 30.720390>,  <30.090046, 28.874294, 30.496862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089359, 28.961670, 30.720390>,  <30.088217, 29.107298, 31.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089359, 28.961670, 30.720390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562201, -0.770829, 0.299590,
		-0.826996, 0.522759, -0.206882,
		0.002857, -0.364069, -0.931368,
		30.090216, 28.852449, 30.440981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385706, 28.859823, 30.852688>,  <30.088217, 29.107298, 31.092937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385706, 28.859823, 30.852688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662983, 28.667366, 30.638031>,  <29.829350, 28.551891, 30.509237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662983, 28.667366, 30.638031>,  <29.385706, 28.859823, 30.852688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662983, 28.667366, 30.638031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440659, -0.872111, 0.212705,
		-0.570353, 0.089031, -0.816561,
		0.693194, -0.481141, -0.536643,
		29.870941, 28.523024, 30.477037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038521, 28.285292, 30.644936>,  <29.385706, 28.859823, 30.852688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038521, 28.285292, 30.644936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419012, 28.172577, 30.594711>,  <29.647306, 28.104948, 30.564577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419012, 28.172577, 30.594711>,  <29.038521, 28.285292, 30.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419012, 28.172577, 30.594711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249230, -0.941819, 0.225524,
		-0.181806, -0.183231, -0.966112,
		0.951226, -0.281786, -0.125561,
		29.704380, 28.088041, 30.557043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009066, 27.633238, 30.415043>,  <29.038521, 28.285292, 30.644936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009066, 27.633238, 30.415043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394203, 27.646984, 30.522190>,  <29.625286, 27.655231, 30.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394203, 27.646984, 30.522190>,  <29.009066, 27.633238, 30.415043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394203, 27.646984, 30.522190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062917, -0.936036, 0.346235,
		0.262633, -0.350223, -0.899093,
		0.962842, 0.034364, 0.267868,
		29.683056, 27.657293, 30.602551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314327, 27.040506, 30.074617>,  <29.009066, 27.633238, 30.415043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314327, 27.040506, 30.074617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561451, 27.127651, 30.376835>,  <29.709726, 27.179937, 30.558165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561451, 27.127651, 30.376835>,  <29.314327, 27.040506, 30.074617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561451, 27.127651, 30.376835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047214, -0.948840, 0.312207,
		0.784907, -0.228558, -0.575918,
		0.617812, 0.217862, 0.755543,
		29.746794, 27.193010, 30.603498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799124, 26.467936, 30.109539>,  <29.314327, 27.040506, 30.074617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799124, 26.467936, 30.109539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817720, 26.653839, 30.463226>,  <29.828878, 26.765381, 30.675438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817720, 26.653839, 30.463226>,  <29.799124, 26.467936, 30.109539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817720, 26.653839, 30.463226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153678, -0.871308, 0.466053,
		0.987027, -0.157552, 0.030915,
		0.046491, 0.464758, 0.884216,
		29.831667, 26.793266, 30.728491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199343, 25.984110, 30.451349>,  <29.799124, 26.467936, 30.109539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199343, 25.984110, 30.451349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001135, 26.203854, 30.720470>,  <29.882210, 26.335699, 30.881943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001135, 26.203854, 30.720470>,  <30.199343, 25.984110, 30.451349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001135, 26.203854, 30.720470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188798, -0.824189, 0.533917,
		0.847829, 0.137543, 0.512121,
		-0.495521, 0.549357, 0.672804,
		29.852478, 26.368660, 30.922312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525675, 25.998219, 31.081524>,  <30.199343, 25.984110, 30.451349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525675, 25.998219, 31.081524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144197, 26.063637, 31.182499>,  <29.915312, 26.102888, 31.243084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144197, 26.063637, 31.182499>,  <30.525675, 25.998219, 31.081524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144197, 26.063637, 31.182499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043479, -0.755485, 0.653722,
		0.297625, 0.634425, 0.713389,
		-0.953692, 0.163547, 0.252436,
		29.858089, 26.112701, 31.258230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587717, 25.905228, 31.780016>,  <30.525675, 25.998219, 31.081524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587717, 25.905228, 31.780016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200253, 25.884155, 31.682922>,  <29.967773, 25.871511, 31.624666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200253, 25.884155, 31.682922>,  <30.587717, 25.905228, 31.780016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200253, 25.884155, 31.682922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137784, -0.699145, 0.701578,
		-0.206665, 0.713036, 0.669976,
		-0.968661, -0.052680, -0.242734,
		29.909655, 25.868351, 31.610102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236374, 25.918104, 32.445026>,  <30.587717, 25.905228, 31.780016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236374, 25.918104, 32.445026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964653, 25.768024, 32.192749>,  <29.801620, 25.677977, 32.041382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964653, 25.768024, 32.192749>,  <30.236374, 25.918104, 32.445026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964653, 25.768024, 32.192749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077979, -0.817651, 0.570408,
		-0.729704, 0.436660, 0.526175,
		-0.679302, -0.375198, -0.630694,
		29.760862, 25.655464, 32.003540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669296, 25.897518, 32.780071>,  <30.236374, 25.918104, 32.445026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669296, 25.897518, 32.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582558, 25.617657, 32.507759>,  <29.530514, 25.449739, 32.344372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582558, 25.617657, 32.507759>,  <29.669296, 25.897518, 32.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582558, 25.617657, 32.507759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262601, -0.629863, 0.730967,
		-0.940223, 0.337281, -0.047147,
		-0.216846, -0.699653, -0.680782,
		29.517504, 25.407761, 32.303524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161354, 25.660645, 32.991901>,  <29.669296, 25.897518, 32.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161354, 25.660645, 32.991901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292141, 25.364384, 32.757118>,  <29.370613, 25.186626, 32.616249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292141, 25.364384, 32.757118>,  <29.161354, 25.660645, 32.991901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292141, 25.364384, 32.757118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298768, -0.670258, 0.679332,
		-0.896566, -0.046754, -0.440437,
		0.326968, -0.740654, -0.586961,
		29.390232, 25.142187, 32.581032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660236, 25.246916, 33.117271>,  <29.161354, 25.660645, 32.991901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660236, 25.246916, 33.117271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935787, 25.022881, 32.933205>,  <29.101116, 24.888458, 32.822765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935787, 25.022881, 32.933205>,  <28.660236, 25.246916, 33.117271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935787, 25.022881, 32.933205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175628, -0.744861, 0.643691,
		-0.703283, -0.362604, -0.611483,
		0.688874, -0.560090, -0.460165,
		29.142450, 24.854853, 32.795155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382677, 24.539364, 32.856682>,  <28.660236, 25.246916, 33.117271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382677, 24.539364, 32.856682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775610, 24.488235, 32.911366>,  <29.011370, 24.457558, 32.944176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775610, 24.488235, 32.911366>,  <28.382677, 24.539364, 32.856682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775610, 24.488235, 32.911366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186640, -0.723180, 0.664963,
		0.013866, -0.678728, -0.734258,
		0.982330, -0.127822, 0.136706,
		29.070309, 24.449888, 32.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923962, 24.123028, 32.441982>,  <28.382677, 24.539364, 32.856682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923962, 24.123028, 32.441982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558886, 24.049248, 32.296120>,  <27.339840, 24.004980, 32.208603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558886, 24.049248, 32.296120>,  <27.923962, 24.123028, 32.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558886, 24.049248, 32.296120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017283, 0.908965, -0.416513,
		0.408289, -0.373845, -0.832791,
		-0.912689, -0.184450, -0.364659,
		27.285078, 23.993912, 32.186722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933344, 24.256975, 31.760811>,  <27.923962, 24.123028, 32.441982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933344, 24.256975, 31.760811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550638, 24.303028, 31.867653>,  <27.321014, 24.330660, 31.931759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550638, 24.303028, 31.867653>,  <27.933344, 24.256975, 31.760811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550638, 24.303028, 31.867653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026460, 0.948969, -0.314256,
		-0.289656, -0.293602, -0.910987,
		-0.956765, 0.115130, 0.267106,
		27.263609, 24.337566, 31.947784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585140, 24.703505, 31.212982>,  <27.933344, 24.256975, 31.760811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585140, 24.703505, 31.212982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335747, 24.734142, 31.524212>,  <27.186111, 24.752525, 31.710951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335747, 24.734142, 31.524212>,  <27.585140, 24.703505, 31.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335747, 24.734142, 31.524212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220480, 0.937573, -0.268972,
		-0.750106, -0.339250, -0.567672,
		-0.623482, 0.076597, 0.778076,
		27.148703, 24.757122, 31.757635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814293, 24.863710, 30.916033>,  <27.585140, 24.703505, 31.212982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814293, 24.863710, 30.916033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831266, 24.977974, 31.298988>,  <26.841452, 25.046532, 31.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831266, 24.977974, 31.298988>,  <26.814293, 24.863710, 30.916033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831266, 24.977974, 31.298988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195117, 0.942172, -0.272471,
		-0.979861, -0.175241, 0.095718,
		0.042435, 0.285660, 0.957391,
		26.843996, 25.063673, 31.586206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193003, 25.218121, 30.966887>,  <26.814293, 24.863710, 30.916033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193003, 25.218121, 30.966887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443905, 25.361301, 31.243557>,  <26.594446, 25.447210, 31.409559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443905, 25.361301, 31.243557>,  <26.193003, 25.218121, 30.966887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443905, 25.361301, 31.243557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334580, 0.925840, -0.175716,
		-0.703282, -0.121203, 0.700503,
		0.627256, 0.357953, 0.691678,
		26.632082, 25.468687, 31.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
