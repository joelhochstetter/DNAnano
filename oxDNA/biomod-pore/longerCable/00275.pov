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
	<24.059261, 35.271149, 34.849831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116037, 35.127735, 35.218895>,  <24.150103, 35.041687, 35.440334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116037, 35.127735, 35.218895>,  <24.059261, 35.271149, 34.849831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116037, 35.127735, 35.218895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758141, 0.638684, 0.131550,
		-0.636456, 0.680837, 0.362471,
		0.141941, -0.358530, 0.922664,
		24.158619, 35.020176, 35.495693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886221, 35.747631, 35.364662>,  <24.059261, 35.271149, 34.849831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.886221, 35.747631, 35.364662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188143, 35.510277, 35.476490>,  <24.369295, 35.367863, 35.543587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188143, 35.510277, 35.476490>,  <23.886221, 35.747631, 35.364662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188143, 35.510277, 35.476490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589644, 0.800525, 0.107144,
		-0.287384, 0.083977, 0.954127,
		0.754805, -0.593387, 0.279574,
		24.414585, 35.332260, 35.560364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306885, 35.660900, 36.084473>,  <23.886221, 35.747631, 35.364662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306885, 35.660900, 36.084473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526007, 35.657593, 35.749847>,  <24.657480, 35.655609, 35.549072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526007, 35.657593, 35.749847>,  <24.306885, 35.660900, 36.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526007, 35.657593, 35.749847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504909, 0.800575, 0.322718,
		0.667067, -0.599176, 0.442731,
		0.547804, -0.008264, -0.836566,
		24.690348, 35.655113, 35.498878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986023, 35.671513, 36.327099>,  <24.306885, 35.660900, 36.084473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986023, 35.671513, 36.327099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935783, 35.817966, 35.958279>,  <24.905640, 35.905838, 35.736988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935783, 35.817966, 35.958279>,  <24.986023, 35.671513, 36.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935783, 35.817966, 35.958279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472622, 0.839247, 0.268872,
		0.872269, -0.402010, -0.278451,
		-0.125600, 0.366130, -0.922048,
		24.898104, 35.927807, 35.681664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575329, 35.975128, 36.232510>,  <24.986023, 35.671513, 36.327099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575329, 35.975128, 36.232510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333979, 36.130569, 35.953964>,  <25.189169, 36.223835, 35.786835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333979, 36.130569, 35.953964>,  <25.575329, 35.975128, 36.232510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333979, 36.130569, 35.953964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386490, 0.906325, 0.170882,
		0.697539, -0.166033, -0.697045,
		-0.603377, 0.388599, -0.696367,
		25.152966, 36.247150, 35.745052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105198, 36.425800, 35.891331>,  <25.575329, 35.975128, 36.232510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105198, 36.425800, 35.891331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749664, 36.607471, 35.867001>,  <25.536345, 36.716473, 35.852402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749664, 36.607471, 35.867001>,  <26.105198, 36.425800, 35.891331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749664, 36.607471, 35.867001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450118, 0.890237, 0.069799,
		0.085847, 0.034663, -0.995705,
		-0.888833, 0.454177, -0.060822,
		25.483015, 36.743725, 35.848755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155342, 37.010338, 35.355839>,  <26.105198, 36.425800, 35.891331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155342, 37.010338, 35.355839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858862, 37.108547, 35.605751>,  <25.680975, 37.167473, 35.755699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858862, 37.108547, 35.605751>,  <26.155342, 37.010338, 35.355839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858862, 37.108547, 35.605751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478714, 0.845783, 0.235549,
		-0.470594, 0.473678, -0.744426,
		-0.741198, 0.245519, 0.624776,
		25.636503, 37.182201, 35.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837683, 37.764393, 35.185856>,  <26.155342, 37.010338, 35.355839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837683, 37.764393, 35.185856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815586, 37.646622, 35.567486>,  <25.802328, 37.575958, 35.796463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815586, 37.646622, 35.567486>,  <25.837683, 37.764393, 35.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815586, 37.646622, 35.567486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491287, 0.823847, 0.282688,
		-0.869244, 0.484340, 0.099141,
		-0.055240, -0.294432, 0.954075,
		25.799013, 37.558292, 35.853706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524302, 38.281754, 35.517513>,  <25.837683, 37.764393, 35.185856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524302, 38.281754, 35.517513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734568, 38.072952, 35.786198>,  <25.860727, 37.947674, 35.947407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734568, 38.072952, 35.786198>,  <25.524302, 38.281754, 35.517513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734568, 38.072952, 35.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398383, 0.848723, 0.347793,
		-0.751642, 0.084774, 0.654101,
		0.525667, -0.521998, 0.671708,
		25.892267, 37.916351, 35.987709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450302, 38.587597, 36.142483>,  <25.524302, 38.281754, 35.517513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450302, 38.587597, 36.142483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785587, 38.376705, 36.198238>,  <25.986759, 38.250172, 36.231689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785587, 38.376705, 36.198238>,  <25.450302, 38.587597, 36.142483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785587, 38.376705, 36.198238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412956, 0.780585, 0.469205,
		-0.356182, -0.335733, 0.872019,
		0.838213, -0.527228, 0.139387,
		26.037052, 38.218536, 36.240055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615324, 38.620159, 36.916107>,  <25.450302, 38.587597, 36.142483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615324, 38.620159, 36.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948040, 38.553658, 36.704266>,  <26.147669, 38.513756, 36.577160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948040, 38.553658, 36.704266>,  <25.615324, 38.620159, 36.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948040, 38.553658, 36.704266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406896, 0.831596, 0.378000,
		0.377574, -0.529912, 0.759363,
		0.831789, -0.166258, -0.529608,
		26.197577, 38.503780, 36.545383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778948, 39.337563, 36.942039>,  <25.615324, 38.620159, 36.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778948, 39.337563, 36.942039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912693, 39.699818, 36.837719>,  <25.992939, 39.917171, 36.775127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912693, 39.699818, 36.837719>,  <25.778948, 39.337563, 36.942039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912693, 39.699818, 36.837719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838049, 0.159117, -0.521877,
		-0.431133, 0.393064, 0.812173,
		0.334362, 0.905639, -0.260806,
		26.013002, 39.971508, 36.759476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345966, 39.473236, 36.592518>,  <25.778948, 39.337563, 36.942039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345966, 39.473236, 36.592518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291761, 39.464905, 36.196297>,  <26.259237, 39.459908, 35.958565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291761, 39.464905, 36.196297>,  <26.345966, 39.473236, 36.592518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291761, 39.464905, 36.196297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706386, 0.703078, 0.081853,
		0.694734, 0.710808, -0.109990,
		-0.135514, -0.020829, -0.990557,
		26.251108, 39.458656, 35.899128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014608, 39.523933, 37.046402>,  <26.345966, 39.473236, 36.592518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014608, 39.523933, 37.046402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309446, 39.253635, 37.043526>,  <27.486349, 39.091457, 37.041801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309446, 39.253635, 37.043526>,  <27.014608, 39.523933, 37.046402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309446, 39.253635, 37.043526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513516, -0.553159, -0.655985,
		0.439305, 0.487216, -0.754740,
		0.737097, -0.675749, -0.007188,
		27.530575, 39.050911, 37.041370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287128, 39.213989, 36.353210>,  <27.014608, 39.523933, 37.046402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287128, 39.213989, 36.353210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311352, 38.935966, 36.639771>,  <27.325886, 38.769154, 36.811707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311352, 38.935966, 36.639771>,  <27.287128, 39.213989, 36.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311352, 38.935966, 36.639771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505809, -0.640112, -0.578285,
		0.860517, -0.327339, -0.390332,
		0.060560, -0.695058, 0.716398,
		27.329519, 38.727448, 36.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262131, 38.689003, 35.900936>,  <27.287128, 39.213989, 36.353210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262131, 38.689003, 35.900936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108957, 38.611450, 36.262215>,  <27.017054, 38.564919, 36.478981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108957, 38.611450, 36.262215>,  <27.262131, 38.689003, 35.900936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108957, 38.611450, 36.262215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719496, -0.550624, -0.423247,
		0.579384, -0.811925, 0.071357,
		-0.382935, -0.193881, 0.903200,
		26.994076, 38.553288, 36.533176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301882, 38.000610, 36.155170>,  <27.262131, 38.689003, 35.900936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301882, 38.000610, 36.155170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968639, 38.168121, 36.299702>,  <26.768694, 38.268627, 36.386421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968639, 38.168121, 36.299702>,  <27.301882, 38.000610, 36.155170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968639, 38.168121, 36.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528579, -0.795190, -0.297114,
		0.162896, -0.438516, 0.883837,
		-0.833108, 0.418779, 0.361324,
		26.718706, 38.293755, 36.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976089, 37.534908, 36.715435>,  <27.301882, 38.000610, 36.155170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976089, 37.534908, 36.715435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690363, 37.770805, 36.564728>,  <26.518927, 37.912346, 36.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690363, 37.770805, 36.564728>,  <26.976089, 37.534908, 36.715435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690363, 37.770805, 36.564728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608011, -0.789562, -0.083155,
		-0.346521, 0.169680, 0.922568,
		-0.714315, 0.589746, -0.376767,
		26.476068, 37.947731, 36.451698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385176, 37.418148, 37.088127>,  <26.976089, 37.534908, 36.715435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385176, 37.418148, 37.088127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235231, 37.580185, 36.754570>,  <26.145266, 37.677406, 36.554436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235231, 37.580185, 36.754570>,  <26.385176, 37.418148, 37.088127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235231, 37.580185, 36.754570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623688, -0.775699, -0.096455,
		-0.685925, 0.483934, 0.543429,
		-0.374860, 0.405091, -0.833896,
		26.122774, 37.701714, 36.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714706, 37.362087, 37.120598>,  <26.385176, 37.418148, 37.088127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714706, 37.362087, 37.120598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749006, 37.415138, 36.725616>,  <25.769587, 37.446968, 36.488628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749006, 37.415138, 36.725616>,  <25.714706, 37.362087, 37.120598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749006, 37.415138, 36.725616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621948, -0.767148, -0.157049,
		-0.778350, 0.627609, 0.016707,
		0.085749, 0.132630, -0.987449,
		25.774731, 37.454926, 36.429382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067841, 37.452507, 36.697884>,  <25.714706, 37.362087, 37.120598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067841, 37.452507, 36.697884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341570, 37.254734, 36.483505>,  <25.505808, 37.136070, 36.354877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341570, 37.254734, 36.483505>,  <25.067841, 37.452507, 36.697884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341570, 37.254734, 36.483505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646469, -0.751389, -0.132260,
		-0.337308, 0.436979, -0.833830,
		0.684325, -0.494433, -0.535943,
		25.546867, 37.106403, 36.322723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356054, 37.578865, 36.366882>,  <25.067841, 37.452507, 36.697884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356054, 37.578865, 36.366882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715588, 37.427021, 36.279251>,  <24.931307, 37.335915, 36.226673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715588, 37.427021, 36.279251>,  <24.356054, 37.578865, 36.366882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715588, 37.427021, 36.279251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386012, -0.448891, -0.805910,
		0.207590, 0.808946, -0.550012,
		0.898833, -0.379610, -0.219078,
		24.985237, 37.313137, 36.213528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328346, 37.380295, 35.693790>,  <24.356054, 37.578865, 36.366882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328346, 37.380295, 35.693790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670509, 37.183853, 35.759632>,  <24.875807, 37.065987, 35.799137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670509, 37.183853, 35.759632>,  <24.328346, 37.380295, 35.693790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670509, 37.183853, 35.759632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329574, -0.761241, -0.558473,
		0.399575, 0.423472, -0.813026,
		0.855407, -0.491104, 0.164607,
		24.927132, 37.036522, 35.809013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190376, 36.906929, 35.300682>,  <24.328346, 37.380295, 35.693790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190376, 36.906929, 35.300682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562050, 36.816940, 35.417992>,  <24.785053, 36.762947, 35.488377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562050, 36.816940, 35.417992>,  <24.190376, 36.906929, 35.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562050, 36.816940, 35.417992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059624, -0.874269, -0.481767,
		0.364783, 0.430163, -0.825768,
		0.929182, -0.224976, 0.293270,
		24.840805, 36.749447, 35.505974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471178, 36.641830, 34.766312>,  <24.190376, 36.906929, 35.300682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471178, 36.641830, 34.766312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693989, 36.521816, 35.076073>,  <24.827675, 36.449810, 35.261929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693989, 36.521816, 35.076073>,  <24.471178, 36.641830, 34.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693989, 36.521816, 35.076073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056677, -0.916553, -0.395876,
		0.828557, 0.264406, -0.493542,
		0.557029, -0.300033, 0.774402,
		24.861097, 36.431805, 35.308392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932756, 36.287994, 34.439663>,  <24.471178, 36.641830, 34.766312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932756, 36.287994, 34.439663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897448, 36.162266, 34.817745>,  <24.876263, 36.086830, 35.044594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897448, 36.162266, 34.817745>,  <24.932756, 36.287994, 34.439663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897448, 36.162266, 34.817745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126399, -0.937703, -0.323629,
		0.988044, -0.148041, 0.043045,
		-0.088274, -0.314319, 0.945204,
		24.870966, 36.067970, 35.101307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458982, 35.798542, 34.495750>,  <24.932756, 36.287994, 34.439663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458982, 35.798542, 34.495750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182041, 35.744934, 34.779350>,  <25.015877, 35.712769, 34.949512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182041, 35.744934, 34.779350>,  <25.458982, 35.798542, 34.495750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182041, 35.744934, 34.779350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, -0.952052, -0.286010,
		0.713337, -0.275019, 0.644604,
		-0.692355, -0.134018, 0.709002,
		24.974335, 35.704727, 34.992050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561186, 35.151226, 34.760231>,  <25.458982, 35.798542, 34.495750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561186, 35.151226, 34.760231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181459, 35.255386, 34.830643>,  <24.953623, 35.317883, 34.872890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181459, 35.255386, 34.830643>,  <25.561186, 35.151226, 34.760231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181459, 35.255386, 34.830643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308032, -0.882192, -0.356165,
		0.062550, -0.392337, 0.917692,
		-0.949318, 0.260400, 0.176034,
		24.896664, 35.333508, 34.883453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589685, 35.093052, 35.505005>,  <25.561186, 35.151226, 34.760231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589685, 35.093052, 35.505005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921301, 35.313824, 35.540943>,  <26.120270, 35.446285, 35.562504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921301, 35.313824, 35.540943>,  <25.589685, 35.093052, 35.505005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921301, 35.313824, 35.540943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076490, -0.271082, 0.959512,
		0.553935, -0.788601, -0.266954,
		0.829038, 0.551927, 0.089842,
		26.170012, 35.479401, 35.567894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004328, 34.622646, 35.930557>,  <25.589685, 35.093052, 35.505005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004328, 34.622646, 35.930557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097368, 35.007236, 35.989147>,  <26.153193, 35.237991, 36.024300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097368, 35.007236, 35.989147>,  <26.004328, 34.622646, 35.930557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097368, 35.007236, 35.989147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248201, -0.204301, 0.946920,
		0.940368, -0.183902, -0.286161,
		0.232603, 0.961479, 0.146474,
		26.167149, 35.295681, 36.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716093, 34.634636, 36.227478>,  <26.004328, 34.622646, 35.930557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716093, 34.634636, 36.227478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427362, 34.893677, 36.325119>,  <26.254124, 35.049099, 36.383701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427362, 34.893677, 36.325119>,  <26.716093, 34.634636, 36.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427362, 34.893677, 36.325119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084483, -0.267618, 0.959814,
		0.686900, 0.713440, 0.138462,
		-0.721825, 0.647598, 0.244100,
		26.210815, 35.087955, 36.398350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299801, 34.209663, 36.546974>,  <26.716093, 34.634636, 36.227478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299801, 34.209663, 36.546974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595783, 34.394154, 36.742828>,  <27.773373, 34.504848, 36.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595783, 34.394154, 36.742828>,  <27.299801, 34.209663, 36.546974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595783, 34.394154, 36.742828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621579, 0.747071, 0.235636,
		-0.257112, -0.478706, 0.839484,
		0.739955, 0.461221, 0.489634,
		27.817770, 34.532520, 36.889717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997849, 34.456051, 37.093643>,  <27.299801, 34.209663, 36.546974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997849, 34.456051, 37.093643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329044, 34.680271, 37.087734>,  <27.527761, 34.814804, 37.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329044, 34.680271, 37.087734>,  <26.997849, 34.456051, 37.093643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329044, 34.680271, 37.087734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517464, 0.773973, 0.364962,
		0.216015, -0.294538, 0.930905,
		0.827991, 0.560547, -0.014777,
		27.577442, 34.848434, 37.083302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902674, 34.876976, 37.581924>,  <26.997849, 34.456051, 37.093643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902674, 34.876976, 37.581924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197128, 35.077919, 37.400490>,  <27.373802, 35.198483, 37.291630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197128, 35.077919, 37.400490>,  <26.902674, 34.876976, 37.581924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197128, 35.077919, 37.400490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475917, 0.860694, 0.180857,
		0.481252, 0.082733, 0.872669,
		0.736138, 0.502356, -0.453585,
		27.417971, 35.228626, 37.264416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487082, 35.060898, 37.702492>,  <26.902674, 34.876976, 37.581924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487082, 35.060898, 37.702492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867077, 35.185036, 37.716393>,  <28.095074, 35.259518, 37.724731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867077, 35.185036, 37.716393>,  <27.487082, 35.060898, 37.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867077, 35.185036, 37.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305253, 0.946319, -0.106307,
		-0.065874, 0.090384, 0.993726,
		0.949990, 0.310341, 0.034748,
		28.152075, 35.278137, 37.726818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581434, 35.543690, 38.262238>,  <27.487082, 35.060898, 37.702492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581434, 35.543690, 38.262238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809324, 35.585323, 37.936150>,  <27.946058, 35.610302, 37.740498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809324, 35.585323, 37.936150>,  <27.581434, 35.543690, 38.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809324, 35.585323, 37.936150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446566, 0.871936, -0.200767,
		0.689921, 0.478430, 0.543244,
		0.569727, 0.104081, -0.815217,
		27.980242, 35.616547, 37.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873911, 36.172626, 38.310791>,  <27.581434, 35.543690, 38.262238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873911, 36.172626, 38.310791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826002, 36.062675, 37.929195>,  <27.797256, 35.996704, 37.700237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826002, 36.062675, 37.929195>,  <27.873911, 36.172626, 38.310791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826002, 36.062675, 37.929195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500736, 0.846459, -0.181029,
		0.857274, 0.456015, -0.239023,
		-0.119771, -0.274879, -0.953990,
		27.790071, 35.980213, 37.642998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141966, 36.738087, 37.872723>,  <27.873911, 36.172626, 38.310791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141966, 36.738087, 37.872723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870552, 36.515884, 37.680473>,  <27.707703, 36.382561, 37.565125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870552, 36.515884, 37.680473>,  <28.141966, 36.738087, 37.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870552, 36.515884, 37.680473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498652, 0.828777, -0.253918,
		0.539383, 0.067370, -0.839361,
		-0.678537, -0.555509, -0.480623,
		27.666990, 36.349232, 37.536285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895075, 37.144836, 37.343159>,  <28.141966, 36.738087, 37.872723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895075, 37.144836, 37.343159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611706, 36.863277, 37.363796>,  <27.441685, 36.694340, 37.376179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611706, 36.863277, 37.363796>,  <27.895075, 37.144836, 37.343159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611706, 36.863277, 37.363796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691146, 0.677051, -0.252821,
		0.143028, -0.214764, -0.966136,
		-0.708421, -0.703902, 0.051596,
		27.399179, 36.652107, 37.379276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498821, 37.541214, 37.808434>,  <27.895075, 37.144836, 37.343159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498821, 37.541214, 37.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369417, 37.833794, 37.568325>,  <27.291775, 38.009342, 37.424259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369417, 37.833794, 37.568325>,  <27.498821, 37.541214, 37.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369417, 37.833794, 37.568325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547299, 0.662148, 0.511883,
		0.771883, -0.162927, -0.614533,
		-0.323512, 0.731447, -0.600271,
		27.272364, 38.053226, 37.388245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669844, 37.565842, 37.867455>,  <27.498821, 37.541214, 37.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669844, 37.565842, 37.867455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366047, 37.328644, 37.760475>,  <26.183769, 37.186325, 37.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366047, 37.328644, 37.760475>,  <26.669844, 37.565842, 37.867455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366047, 37.328644, 37.760475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505053, -0.796640, 0.332095,
		-0.409992, 0.117146, 0.904535,
		-0.759492, -0.592994, -0.267451,
		26.138199, 37.150745, 37.680241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718712, 36.996025, 38.311184>,  <26.669844, 37.565842, 37.867455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718712, 36.996025, 38.311184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551662, 36.906475, 37.958939>,  <26.451433, 36.852745, 37.747593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551662, 36.906475, 37.958939>,  <26.718712, 36.996025, 38.311184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551662, 36.906475, 37.958939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607437, -0.789551, -0.087349,
		-0.675731, -0.571394, 0.465722,
		-0.417622, -0.223873, -0.880609,
		26.426376, 36.839314, 37.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534555, 36.287922, 38.088165>,  <26.718712, 36.996025, 38.311184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534555, 36.287922, 38.088165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660038, 36.448727, 37.744080>,  <26.735327, 36.545212, 37.537628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660038, 36.448727, 37.744080>,  <26.534555, 36.287922, 38.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660038, 36.448727, 37.744080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637827, -0.760338, -0.122733,
		-0.703395, -0.510167, -0.494940,
		0.313707, 0.402016, -0.860216,
		26.754150, 36.569332, 37.486015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458941, 35.781673, 37.523357>,  <26.534555, 36.287922, 38.088165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458941, 35.781673, 37.523357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748133, 36.049595, 37.455643>,  <26.921648, 36.210350, 37.415016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748133, 36.049595, 37.455643>,  <26.458941, 35.781673, 37.523357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748133, 36.049595, 37.455643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640582, -0.741693, -0.198861,
		-0.258754, 0.035333, -0.965297,
		0.722981, 0.669807, -0.169282,
		26.965027, 36.250538, 37.404858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773726, 35.739849, 36.871372>,  <26.458941, 35.781673, 37.523357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773726, 35.739849, 36.871372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051804, 35.925400, 37.091015>,  <27.218651, 36.036732, 37.222801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051804, 35.925400, 37.091015>,  <26.773726, 35.739849, 36.871372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051804, 35.925400, 37.091015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611848, -0.782817, -0.113315,
		0.377286, 0.414746, -0.828034,
		0.695196, 0.463879, 0.549108,
		27.260363, 36.064564, 37.255749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483332, 35.694103, 36.465130>,  <26.773726, 35.739849, 36.871372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483332, 35.694103, 36.465130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506790, 35.750435, 36.860447>,  <27.520866, 35.784233, 37.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506790, 35.750435, 36.860447>,  <27.483332, 35.694103, 36.465130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506790, 35.750435, 36.860447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459908, -0.882490, 0.098464,
		0.886028, 0.448750, -0.116526,
		0.058648, 0.140833, 0.988295,
		27.524385, 35.792686, 37.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247585, 35.829868, 36.533653>,  <27.483332, 35.694103, 36.465130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247585, 35.829868, 36.533653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020414, 35.661003, 36.816280>,  <27.884111, 35.559685, 36.985859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020414, 35.661003, 36.816280>,  <28.247585, 35.829868, 36.533653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020414, 35.661003, 36.816280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528266, -0.845262, -0.080415,
		0.631185, 0.327587, 0.703059,
		-0.567926, -0.422159, 0.706571,
		27.850037, 35.534355, 37.028252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706062, 35.584686, 37.020817>,  <28.247585, 35.829868, 36.533653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706062, 35.584686, 37.020817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374866, 35.363525, 37.058197>,  <28.176149, 35.230827, 37.080624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374866, 35.363525, 37.058197>,  <28.706062, 35.584686, 37.020817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374866, 35.363525, 37.058197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557495, -0.829595, 0.031182,
		0.060287, 0.077918, 0.995135,
		-0.827989, -0.552903, 0.093452,
		28.126471, 35.197655, 37.086231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752195, 35.184277, 37.523434>,  <28.706062, 35.584686, 37.020817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752195, 35.184277, 37.523434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476597, 34.974953, 37.322861>,  <28.311237, 34.849358, 37.202518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476597, 34.974953, 37.322861>,  <28.752195, 35.184277, 37.523434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476597, 34.974953, 37.322861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540174, -0.832049, 0.126122,
		-0.483216, -0.183963, 0.855956,
		-0.688995, -0.523309, -0.501431,
		28.269897, 34.817959, 37.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623806, 34.505787, 37.873512>,  <28.752195, 35.184277, 37.523434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623806, 34.505787, 37.873512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642031, 34.485939, 37.474422>,  <28.652966, 34.474030, 37.234966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642031, 34.485939, 37.474422>,  <28.623806, 34.505787, 37.873512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642031, 34.485939, 37.474422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827834, -0.557135, 0.065513,
		-0.559120, -0.828938, 0.015697,
		0.045560, -0.049624, -0.997728,
		28.655699, 34.471050, 37.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716345, 33.834457, 37.729820>,  <28.623806, 34.505787, 37.873512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716345, 33.834457, 37.729820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838438, 34.032803, 37.404625>,  <28.911694, 34.151810, 37.209507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838438, 34.032803, 37.404625>,  <28.716345, 33.834457, 37.729820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838438, 34.032803, 37.404625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710167, -0.687302, -0.152572,
		-0.634425, -0.530790, -0.561931,
		0.305233, 0.495861, -0.812992,
		28.930008, 34.181561, 37.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658453, 33.461311, 37.014610>,  <28.716345, 33.834457, 37.729820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658453, 33.461311, 37.014610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953924, 33.729019, 37.046711>,  <29.131207, 33.889641, 37.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953924, 33.729019, 37.046711>,  <28.658453, 33.461311, 37.014610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953924, 33.729019, 37.046711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665008, -0.704134, -0.248916,
		-0.110085, 0.237234, -0.965195,
		0.738678, 0.669265, 0.080248,
		29.175528, 33.929798, 37.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136642, 33.582085, 36.371117>,  <28.658453, 33.461311, 37.014610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136642, 33.582085, 36.371117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312075, 33.642849, 36.725422>,  <29.417334, 33.679306, 36.938004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312075, 33.642849, 36.725422>,  <29.136642, 33.582085, 36.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312075, 33.642849, 36.725422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763197, -0.583379, -0.277847,
		0.474527, 0.797868, -0.371795,
		0.438582, 0.151907, 0.885759,
		29.443649, 33.688419, 36.991150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740721, 33.635994, 36.172272>,  <29.136642, 33.582085, 36.371117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740721, 33.635994, 36.172272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784048, 33.560059, 36.562599>,  <29.810043, 33.514496, 36.796795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784048, 33.560059, 36.562599>,  <29.740721, 33.635994, 36.172272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784048, 33.560059, 36.562599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860487, -0.473651, -0.187661,
		0.497824, 0.860009, 0.112051,
		0.108317, -0.189841, 0.975822,
		29.816544, 33.503105, 36.855347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094070, 33.354935, 35.649593>,  <29.740721, 33.635994, 36.172272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094070, 33.354935, 35.649593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439411, 33.159908, 35.701591>,  <30.646616, 33.042892, 35.732788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439411, 33.159908, 35.701591>,  <30.094070, 33.354935, 35.649593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439411, 33.159908, 35.701591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157072, -0.014861, 0.987475,
		-0.479530, -0.872958, -0.089414,
		0.863353, -0.487569, 0.129991,
		30.698418, 33.013638, 35.740589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029409, 32.847496, 36.199135>,  <30.094070, 33.354935, 35.649593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029409, 32.847496, 36.199135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420511, 32.922089, 36.160732>,  <30.655172, 32.966843, 36.137691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420511, 32.922089, 36.160732>,  <30.029409, 32.847496, 36.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420511, 32.922089, 36.160732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110782, -0.070496, 0.991341,
		0.178099, -0.979926, -0.089586,
		0.977757, 0.186482, -0.096003,
		30.713839, 32.978031, 36.131931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453386, 32.394604, 36.611057>,  <30.029409, 32.847496, 36.199135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453386, 32.394604, 36.611057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672106, 32.726917, 36.569481>,  <30.803337, 32.926308, 36.544533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672106, 32.726917, 36.569481>,  <30.453386, 32.394604, 36.611057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672106, 32.726917, 36.569481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246739, -0.041261, 0.968203,
		0.800080, -0.555061, -0.227549,
		0.546801, 0.830786, -0.103943,
		30.836145, 32.976154, 36.538300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094057, 32.349884, 36.717022>,  <30.453386, 32.394604, 36.611057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094057, 32.349884, 36.717022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953241, 32.691029, 36.871265>,  <30.868752, 32.895714, 36.963810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953241, 32.691029, 36.871265>,  <31.094057, 32.349884, 36.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953241, 32.691029, 36.871265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110417, -0.371265, 0.921938,
		0.929450, 0.367136, 0.036528,
		-0.352038, 0.852862, 0.385610,
		30.847630, 32.946888, 36.986950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454002, 32.531937, 37.322285>,  <31.094057, 32.349884, 36.717022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454002, 32.531937, 37.322285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094179, 32.699940, 37.370262>,  <30.878286, 32.800743, 37.399048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094179, 32.699940, 37.370262>,  <31.454002, 32.531937, 37.322285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094179, 32.699940, 37.370262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019464, -0.235787, 0.971610,
		0.436369, 0.876353, 0.203928,
		-0.899557, 0.420011, 0.119948,
		30.824312, 32.825943, 37.406246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450178, 33.037727, 37.848450>,  <31.454002, 32.531937, 37.322285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450178, 33.037727, 37.848450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055853, 32.970619, 37.846653>,  <30.819258, 32.930355, 37.845573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055853, 32.970619, 37.846653>,  <31.450178, 33.037727, 37.848450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055853, 32.970619, 37.846653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020592, 0.094324, 0.995329,
		-0.166566, 0.981303, -0.096441,
		-0.985815, -0.167774, -0.004496,
		30.760109, 32.920288, 37.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858358, 33.506268, 37.865944>,  <31.450178, 33.037727, 37.848450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858358, 33.506268, 37.865944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191254, 33.680645, 37.728931>,  <31.390991, 33.785271, 37.646725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191254, 33.680645, 37.728931>,  <30.858358, 33.506268, 37.865944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191254, 33.680645, 37.728931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210731, -0.322719, -0.922738,
		-0.512804, 0.840121, -0.176712,
		0.832240, 0.435945, -0.342531,
		31.440926, 33.811428, 37.626171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717113, 33.785561, 37.233845>,  <30.858358, 33.506268, 37.865944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717113, 33.785561, 37.233845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105227, 33.692276, 37.208019>,  <31.338095, 33.636307, 37.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105227, 33.692276, 37.208019>,  <30.717113, 33.785561, 37.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105227, 33.692276, 37.208019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155796, -0.397879, -0.904113,
		0.185158, 0.887302, -0.422387,
		0.970280, -0.233210, -0.064567,
		31.396311, 33.622314, 37.188648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133036, 34.187050, 36.692104>,  <30.717113, 33.785561, 37.233845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133036, 34.187050, 36.692104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188738, 33.799763, 36.775215>,  <31.222160, 33.567390, 36.825081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188738, 33.799763, 36.775215>,  <31.133036, 34.187050, 36.692104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188738, 33.799763, 36.775215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263621, -0.238493, -0.934679,
		0.954522, 0.075387, -0.288453,
		0.139256, -0.968214, 0.207773,
		31.230515, 33.509300, 36.837547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679123, 33.913952, 36.330902>,  <31.133036, 34.187050, 36.692104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679123, 33.913952, 36.330902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441973, 33.597816, 36.392696>,  <31.299683, 33.408134, 36.429771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441973, 33.597816, 36.392696>,  <31.679123, 33.913952, 36.330902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441973, 33.597816, 36.392696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032844, -0.167944, -0.985249,
		0.804624, -0.589205, 0.073612,
		-0.592876, -0.790337, 0.154483,
		31.264111, 33.360714, 36.439041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985872, 33.196083, 35.997128>,  <31.679123, 33.913952, 36.330902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985872, 33.196083, 35.997128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592894, 33.134785, 36.039669>,  <31.357105, 33.098003, 36.065193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592894, 33.134785, 36.039669>,  <31.985872, 33.196083, 35.997128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592894, 33.134785, 36.039669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075925, -0.192244, -0.978406,
		0.170384, -0.969307, 0.177234,
		-0.982448, -0.153248, 0.106350,
		31.298159, 33.088810, 36.071575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864531, 32.433304, 35.839149>,  <31.985872, 33.196083, 35.997128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864531, 32.433304, 35.839149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528221, 32.646397, 35.800575>,  <31.326435, 32.774250, 35.777431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528221, 32.646397, 35.800575>,  <31.864531, 32.433304, 35.839149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528221, 32.646397, 35.800575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052061, -0.256852, -0.965047,
		-0.538876, -0.806367, 0.243689,
		-0.840774, 0.532727, -0.096431,
		31.275990, 32.806213, 35.771645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267159, 32.095272, 35.408482>,  <31.864531, 32.433304, 35.839149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267159, 32.095272, 35.408482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243532, 32.492882, 35.371769>,  <31.229357, 32.731449, 35.349743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243532, 32.492882, 35.371769>,  <31.267159, 32.095272, 35.408482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243532, 32.492882, 35.371769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107619, -0.097748, -0.989375,
		-0.992436, -0.048560, 0.112749,
		-0.059065, 0.994026, -0.091783,
		31.225813, 32.791088, 35.344234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683432, 32.240486, 34.931019>,  <31.267159, 32.095272, 35.408482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683432, 32.240486, 34.931019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960833, 32.528645, 34.934555>,  <31.127274, 32.701542, 34.936676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960833, 32.528645, 34.934555>,  <30.683432, 32.240486, 34.931019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960833, 32.528645, 34.934555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008197, 0.004374, -0.999957,
		-0.720408, 0.693545, -0.002872,
		0.693503, 0.720400, 0.008837,
		31.168884, 32.744766, 34.937206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487936, 32.727978, 34.337437>,  <30.683432, 32.240486, 34.931019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487936, 32.727978, 34.337437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874748, 32.805176, 34.403900>,  <31.106836, 32.851494, 34.443779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874748, 32.805176, 34.403900>,  <30.487936, 32.727978, 34.337437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874748, 32.805176, 34.403900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135430, 0.162807, -0.977319,
		-0.215667, 0.967599, 0.131302,
		0.967030, 0.192993, 0.166154,
		31.164858, 32.863075, 34.453747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669569, 33.439396, 34.057487>,  <30.487936, 32.727978, 34.337437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669569, 33.439396, 34.057487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018351, 33.244953, 34.080803>,  <31.227619, 33.128288, 34.094791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018351, 33.244953, 34.080803>,  <30.669569, 33.439396, 34.057487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018351, 33.244953, 34.080803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173364, 0.195222, -0.965315,
		0.457863, 0.851817, 0.254498,
		0.871956, -0.486103, 0.058289,
		31.279938, 33.099121, 34.098289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178795, 33.931324, 33.808670>,  <30.669569, 33.439396, 34.057487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178795, 33.931324, 33.808670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348400, 33.571396, 33.767593>,  <31.450163, 33.355438, 33.742947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348400, 33.571396, 33.767593>,  <31.178795, 33.931324, 33.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348400, 33.571396, 33.767593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140978, 0.177582, -0.973956,
		0.894617, 0.398492, 0.202151,
		0.424012, -0.899816, -0.102690,
		31.475603, 33.301453, 33.736786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643492, 34.087284, 33.300312>,  <31.178795, 33.931324, 33.808670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643492, 34.087284, 33.300312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652727, 33.687424, 33.305588>,  <31.658268, 33.447510, 33.308754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652727, 33.687424, 33.305588>,  <31.643492, 34.087284, 33.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652727, 33.687424, 33.305588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077022, -0.011371, -0.996965,
		0.996762, 0.024035, 0.076732,
		0.023090, -0.999647, 0.013186,
		31.659655, 33.387531, 33.309544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207466, 33.930302, 33.015820>,  <31.643492, 34.087284, 33.300312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207466, 33.930302, 33.015820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017406, 33.582401, 32.962517>,  <31.903370, 33.373661, 32.930534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017406, 33.582401, 32.962517>,  <32.207466, 33.930302, 33.015820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017406, 33.582401, 32.962517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411405, -0.085729, -0.907412,
		0.777803, -0.485980, 0.398556,
		-0.475151, -0.869756, -0.133254,
		31.874861, 33.321476, 32.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637043, 33.492062, 32.540371>,  <32.207466, 33.930302, 33.015820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637043, 33.492062, 32.540371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272820, 33.327591, 32.523304>,  <32.054287, 33.228909, 32.513065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272820, 33.327591, 32.523304>,  <32.637043, 33.492062, 32.540371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272820, 33.327591, 32.523304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097429, -0.113152, -0.988789,
		0.401741, -0.904505, 0.143092,
		-0.910556, -0.411179, -0.042667,
		31.999653, 33.204239, 32.510506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788143, 32.815525, 32.154209>,  <32.637043, 33.492062, 32.540371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788143, 32.815525, 32.154209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403614, 32.923126, 32.130543>,  <32.172897, 32.987686, 32.116344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403614, 32.923126, 32.130543>,  <32.788143, 32.815525, 32.154209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403614, 32.923126, 32.130543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048301, -0.046836, -0.997734,
		-0.271162, -0.962001, 0.032032,
		-0.961321, 0.269000, -0.059166,
		32.115219, 33.003826, 32.112793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524628, 32.546261, 31.531782>,  <32.788143, 32.815525, 32.154209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524628, 32.546261, 31.531782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235577, 32.814335, 31.599501>,  <32.062145, 32.975182, 31.640131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235577, 32.814335, 31.599501>,  <32.524628, 32.546261, 31.531782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235577, 32.814335, 31.599501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141250, 0.096582, -0.985251,
		-0.676656, -0.735879, 0.024872,
		-0.722624, 0.670190, 0.169296,
		32.018791, 33.015392, 31.650290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936117, 32.334892, 31.132771>,  <32.524628, 32.546261, 31.531782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936117, 32.334892, 31.132771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913958, 32.729389, 31.195076>,  <31.900661, 32.966087, 31.232460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913958, 32.729389, 31.195076>,  <31.936117, 32.334892, 31.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913958, 32.729389, 31.195076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265323, 0.135855, -0.954540,
		-0.962567, -0.094210, 0.254146,
		-0.055400, 0.986239, 0.155765,
		31.897337, 33.025261, 31.241806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440336, 32.529503, 30.635065>,  <31.936117, 32.334892, 31.132771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440336, 32.529503, 30.635065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581987, 32.896782, 30.706072>,  <31.666979, 33.117149, 30.748676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581987, 32.896782, 30.706072>,  <31.440336, 32.529503, 30.635065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581987, 32.896782, 30.706072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417687, 0.325123, -0.848430,
		-0.836738, 0.226307, 0.498653,
		0.354129, 0.918194, 0.177517,
		31.688227, 33.172241, 30.759327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962694, 33.078255, 30.510214>,  <31.440336, 32.529503, 30.635065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962694, 33.078255, 30.510214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277447, 33.324356, 30.529335>,  <31.466299, 33.472015, 30.540808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277447, 33.324356, 30.529335>,  <30.962694, 33.078255, 30.510214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277447, 33.324356, 30.529335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263933, 0.405557, -0.875136,
		-0.557814, 0.676011, 0.481510,
		0.786881, 0.615250, 0.047804,
		31.513512, 33.508930, 30.543676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707155, 33.789906, 30.295761>,  <30.962694, 33.078255, 30.510214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707155, 33.789906, 30.295761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102720, 33.770462, 30.239635>,  <31.340059, 33.758797, 30.205959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102720, 33.770462, 30.239635>,  <30.707155, 33.789906, 30.295761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102720, 33.770462, 30.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119008, 0.305715, -0.944656,
		0.088819, 0.950881, 0.296540,
		0.988913, -0.048613, -0.140316,
		31.399395, 33.755878, 30.197540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852871, 34.311996, 30.052536>,  <30.707155, 33.789906, 30.295761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852871, 34.311996, 30.052536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187469, 34.121010, 29.944977>,  <31.388227, 34.006420, 29.880442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187469, 34.121010, 29.944977>,  <30.852871, 34.311996, 30.052536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187469, 34.121010, 29.944977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042920, 0.546293, -0.836494,
		0.546293, 0.688181, 0.477463,
		0.836494, -0.477463, -0.268899,
		31.438417, 33.977772, 29.864307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232151, 34.787357, 29.792990>,  <30.852871, 34.311996, 30.052536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232151, 34.787357, 29.792990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405611, 34.466274, 29.629232>,  <31.509687, 34.273624, 29.530977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405611, 34.466274, 29.629232>,  <31.232151, 34.787357, 29.792990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405611, 34.466274, 29.629232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094179, 0.492223, -0.865359,
		0.896147, 0.336706, 0.289051,
		0.433649, -0.802711, -0.409393,
		31.535706, 34.225460, 29.506414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801729, 35.027409, 29.382429>,  <31.232151, 34.787357, 29.792990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801729, 35.027409, 29.382429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688122, 34.663853, 29.260284>,  <31.619957, 34.445717, 29.186998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688122, 34.663853, 29.260284>,  <31.801729, 35.027409, 29.382429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688122, 34.663853, 29.260284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073019, 0.297049, -0.952066,
		0.956035, -0.292700, -0.018000,
		-0.284016, -0.908894, -0.305362,
		31.602917, 34.391186, 29.168676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274921, 34.824894, 28.775959>,  <31.801729, 35.027409, 29.382429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274921, 34.824894, 28.775959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941875, 34.608070, 28.730494>,  <31.742048, 34.477974, 28.703215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941875, 34.608070, 28.730494>,  <32.274921, 34.824894, 28.775959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941875, 34.608070, 28.730494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001065, 0.206793, -0.978384,
		0.553849, -0.814498, -0.172757,
		-0.832616, -0.542061, -0.113665,
		31.692091, 34.445454, 28.696394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297802, 34.715179, 28.045362>,  <32.274921, 34.824894, 28.775959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297802, 34.715179, 28.045362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940344, 34.578392, 28.161606>,  <31.725868, 34.496319, 28.231352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940344, 34.578392, 28.161606>,  <32.297802, 34.715179, 28.045362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940344, 34.578392, 28.161606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345802, 0.111972, -0.931603,
		0.286041, -0.933016, -0.218317,
		-0.893645, -0.341971, 0.290610,
		31.672251, 34.475800, 28.248789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094517, 34.135345, 27.609030>,  <32.297802, 34.715179, 28.045362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094517, 34.135345, 27.609030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748964, 34.286240, 27.742540>,  <31.541634, 34.376778, 27.822647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748964, 34.286240, 27.742540>,  <32.094517, 34.135345, 27.609030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748964, 34.286240, 27.742540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381495, -0.057326, -0.922592,
		-0.328905, -0.924339, 0.193438,
		-0.863876, 0.377241, 0.333776,
		31.489801, 34.399410, 27.842672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664158, 33.810249, 27.193769>,  <32.094517, 34.135345, 27.609030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664158, 33.810249, 27.193769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474546, 34.137817, 27.323177>,  <31.360779, 34.334358, 27.400822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474546, 34.137817, 27.323177>,  <31.664158, 33.810249, 27.193769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474546, 34.137817, 27.323177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379394, 0.141603, -0.914335,
		-0.794580, -0.556162, 0.243570,
		-0.474028, 0.818921, 0.323520,
		31.332338, 34.383495, 27.420233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021215, 33.803028, 26.841629>,  <31.664158, 33.810249, 27.193769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021215, 33.803028, 26.841629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050671, 34.179295, 26.974123>,  <31.068344, 34.405056, 27.053619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050671, 34.179295, 26.974123>,  <31.021215, 33.803028, 26.841629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050671, 34.179295, 26.974123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279995, 0.338277, -0.898427,
		-0.957173, -0.026587, 0.288293,
		0.073636, 0.940671, 0.331234,
		31.072762, 34.461494, 27.073494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443974, 34.064487, 26.584833>,  <31.021215, 33.803028, 26.841629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443974, 34.064487, 26.584833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664673, 34.383617, 26.682028>,  <30.797092, 34.575096, 26.740345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664673, 34.383617, 26.682028>,  <30.443974, 34.064487, 26.584833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664673, 34.383617, 26.682028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245644, 0.433883, -0.866836,
		-0.797015, 0.418588, 0.435376,
		0.551749, 0.797828, 0.242988,
		30.830198, 34.622967, 26.754925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064371, 34.784813, 26.435307>,  <30.443974, 34.064487, 26.584833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064371, 34.784813, 26.435307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452980, 34.877686, 26.454227>,  <30.686146, 34.933411, 26.465580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452980, 34.877686, 26.454227>,  <30.064371, 34.784813, 26.435307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452980, 34.877686, 26.454227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092604, 0.555795, -0.826146,
		-0.218105, 0.798239, 0.561468,
		0.971522, 0.232180, 0.047302,
		30.744436, 34.947338, 26.468418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180088, 35.535549, 26.233032>,  <30.064371, 34.784813, 26.435307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180088, 35.535549, 26.233032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533337, 35.358803, 26.169971>,  <30.745285, 35.252754, 26.132135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533337, 35.358803, 26.169971>,  <30.180088, 35.535549, 26.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533337, 35.358803, 26.169971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091311, 0.491498, -0.866078,
		0.460176, 0.750456, 0.474399,
		0.883120, -0.441866, -0.157651,
		30.798273, 35.226242, 26.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639900, 36.083248, 25.989702>,  <30.180088, 35.535549, 26.233032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639900, 36.083248, 25.989702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797102, 35.734676, 25.872295>,  <30.891422, 35.525532, 25.801851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797102, 35.734676, 25.872295>,  <30.639900, 36.083248, 25.989702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797102, 35.734676, 25.872295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100208, 0.357886, -0.928373,
		0.914060, 0.335442, 0.227975,
		0.393004, -0.871434, -0.293515,
		30.915003, 35.473248, 25.784241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210497, 36.326141, 25.728693>,  <30.639900, 36.083248, 25.989702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210497, 36.326141, 25.728693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181997, 35.964260, 25.560678>,  <31.164898, 35.747131, 25.459869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181997, 35.964260, 25.560678>,  <31.210497, 36.326141, 25.728693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181997, 35.964260, 25.560678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216556, 0.397030, -0.891891,
		0.973667, -0.154508, 0.167631,
		-0.071250, -0.904706, -0.420035,
		31.160622, 35.692848, 25.434668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864567, 36.203789, 25.302351>,  <31.210497, 36.326141, 25.728693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864567, 36.203789, 25.302351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612488, 35.932594, 25.150991>,  <31.461241, 35.769878, 25.060177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612488, 35.932594, 25.150991>,  <31.864567, 36.203789, 25.302351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612488, 35.932594, 25.150991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198126, 0.330798, -0.922669,
		0.750731, -0.656434, -0.074141,
		-0.630198, -0.677987, -0.378397,
		31.423428, 35.729198, 25.037472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319206, 35.951195, 24.768435>,  <31.864567, 36.203789, 25.302351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319206, 35.951195, 24.768435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938360, 35.851917, 24.697012>,  <31.709854, 35.792351, 24.654158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938360, 35.851917, 24.697012>,  <32.319206, 35.951195, 24.768435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938360, 35.851917, 24.697012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153300, 0.117771, -0.981137,
		0.264542, -0.961524, -0.074083,
		-0.952112, -0.248195, -0.178558,
		31.652727, 35.777458, 24.643444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335262, 35.326809, 24.273575>,  <32.319206, 35.951195, 24.768435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335262, 35.326809, 24.273575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991039, 35.530388, 24.281685>,  <31.784504, 35.652534, 24.286551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991039, 35.530388, 24.281685>,  <32.335262, 35.326809, 24.273575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991039, 35.530388, 24.281685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259994, 0.473152, -0.841742,
		-0.437992, -0.719099, -0.539499,
		-0.860561, 0.508943, 0.020275,
		31.732870, 35.683071, 24.287767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123817, 35.415558, 23.618271>,  <32.335262, 35.326809, 24.273575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123817, 35.415558, 23.618271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874012, 35.695026, 23.757895>,  <31.724129, 35.862709, 23.841669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874012, 35.695026, 23.757895>,  <32.123817, 35.415558, 23.618271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874012, 35.695026, 23.757895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180492, 0.563938, -0.805852,
		-0.759874, -0.440261, -0.478290,
		-0.624511, 0.698674, 0.349058,
		31.686659, 35.904629, 23.862612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976334, 35.720783, 23.071291>,  <32.123817, 35.415558, 23.618271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976334, 35.720783, 23.071291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828255, 35.998474, 23.318192>,  <31.739407, 36.165089, 23.466331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828255, 35.998474, 23.318192>,  <31.976334, 35.720783, 23.071291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828255, 35.998474, 23.318192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204849, 0.709108, -0.674687,
		-0.906085, -0.123324, -0.404723,
		-0.370197, 0.694232, 0.617249,
		31.717196, 36.206745, 23.503366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591282, 36.110157, 22.692621>,  <31.976334, 35.720783, 23.071291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591282, 36.110157, 22.692621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689108, 36.327999, 23.013517>,  <31.747803, 36.458706, 23.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689108, 36.327999, 23.013517>,  <31.591282, 36.110157, 22.692621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689108, 36.327999, 23.013517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181143, 0.787138, -0.589578,
		-0.952562, 0.289510, 0.093855,
		0.244566, 0.544608, 0.802240,
		31.762478, 36.491383, 23.254189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387089, 36.797142, 22.520256>,  <31.591282, 36.110157, 22.692621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387089, 36.797142, 22.520256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638065, 36.876549, 22.821428>,  <31.788652, 36.924194, 23.002132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638065, 36.876549, 22.821428>,  <31.387089, 36.797142, 22.520256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638065, 36.876549, 22.821428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195235, 0.895960, -0.398923,
		-0.753790, 0.397300, 0.523406,
		0.627443, 0.198517, 0.752932,
		31.826298, 36.936104, 23.047308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156881, 37.379173, 22.805374>,  <31.387089, 36.797142, 22.520256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156881, 37.379173, 22.805374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549601, 37.343628, 22.872517>,  <31.785233, 37.322300, 22.912802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549601, 37.343628, 22.872517>,  <31.156881, 37.379173, 22.805374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549601, 37.343628, 22.872517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146833, 0.915718, -0.374034,
		-0.120472, 0.391872, 0.912098,
		0.981798, -0.088866, 0.167858,
		31.844139, 37.316967, 22.922874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335653, 37.996796, 23.054403>,  <31.156881, 37.379173, 22.805374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335653, 37.996796, 23.054403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683735, 37.838577, 22.936905>,  <31.892584, 37.743645, 22.866405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683735, 37.838577, 22.936905>,  <31.335653, 37.996796, 23.054403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683735, 37.838577, 22.936905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331636, 0.911172, -0.244506,
		0.364368, 0.115352, 0.924083,
		0.870203, -0.395549, -0.293747,
		31.944796, 37.719913, 22.848782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922567, 38.370609, 23.464701>,  <31.335653, 37.996796, 23.054403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922567, 38.370609, 23.464701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056030, 38.193710, 23.131691>,  <32.136108, 38.087570, 22.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056030, 38.193710, 23.131691>,  <31.922567, 38.370609, 23.464701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056030, 38.193710, 23.131691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554627, 0.806201, -0.205981,
		0.762274, -0.393012, 0.514275,
		0.333656, -0.442245, -0.832522,
		32.156128, 38.061035, 22.881935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505608, 38.687611, 23.486101>,  <31.922567, 38.370609, 23.464701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505608, 38.687611, 23.486101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471291, 38.525028, 23.122248>,  <32.450703, 38.427479, 22.903934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471291, 38.525028, 23.122248>,  <32.505608, 38.687611, 23.486101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471291, 38.525028, 23.122248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402410, 0.821081, -0.404836,
		0.911431, -0.400777, 0.093121,
		-0.085790, -0.406453, -0.909635,
		32.445553, 38.403091, 22.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137806, 38.676506, 23.021273>,  <32.505608, 38.687611, 23.486101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137806, 38.676506, 23.021273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839859, 38.641369, 22.756712>,  <32.661091, 38.620285, 22.597977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839859, 38.641369, 22.756712>,  <33.137806, 38.676506, 23.021273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839859, 38.641369, 22.756712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289102, 0.850912, -0.438598,
		0.601321, -0.517911, -0.608424,
		-0.744871, -0.087841, -0.661401,
		32.616398, 38.615017, 22.558292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571289, 38.819496, 22.447895>,  <33.137806, 38.676506, 23.021273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571289, 38.819496, 22.447895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187786, 38.860374, 22.341801>,  <32.957684, 38.884903, 22.278145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187786, 38.860374, 22.341801>,  <33.571289, 38.819496, 22.447895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187786, 38.860374, 22.341801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200109, 0.905381, -0.374489,
		0.201865, -0.412118, -0.888487,
		-0.958753, 0.102198, -0.265233,
		32.900162, 38.891033, 22.262230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531208, 39.036713, 21.737349>,  <33.571289, 38.819496, 22.447895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531208, 39.036713, 21.737349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198063, 39.176533, 21.909002>,  <32.998177, 39.260426, 22.011995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198063, 39.176533, 21.909002>,  <33.531208, 39.036713, 21.737349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198063, 39.176533, 21.909002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192466, 0.909854, -0.367589,
		-0.518943, -0.223556, -0.825058,
		-0.832859, 0.349553, 0.429136,
		32.948204, 39.281399, 22.037743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425690, 39.679466, 21.445259>,  <33.531208, 39.036713, 21.737349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425690, 39.679466, 21.445259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181778, 39.717937, 21.759945>,  <33.035431, 39.741020, 21.948757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181778, 39.717937, 21.759945>,  <33.425690, 39.679466, 21.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181778, 39.717937, 21.759945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100010, 0.975338, -0.196756,
		-0.786237, -0.198657, -0.585120,
		-0.609777, 0.096179, 0.786715,
		32.998844, 39.746792, 21.995960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927143, 40.162880, 21.282402>,  <33.425690, 39.679466, 21.445259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927143, 40.162880, 21.282402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881298, 40.172886, 21.679640>,  <32.853790, 40.178890, 21.917982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881298, 40.172886, 21.679640>,  <32.927143, 40.162880, 21.282402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881298, 40.172886, 21.679640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224517, 0.973165, -0.050423,
		-0.967706, -0.228746, -0.105924,
		-0.114615, 0.025013, 0.993095,
		32.846912, 40.180389, 21.977568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358852, 40.654381, 21.492395>,  <32.927143, 40.162880, 21.282402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358852, 40.654381, 21.492395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581184, 40.619244, 21.823051>,  <32.714584, 40.598160, 22.021446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581184, 40.619244, 21.823051>,  <32.358852, 40.654381, 21.492395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581184, 40.619244, 21.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037522, 0.990737, 0.130509,
		-0.830449, -0.103558, 0.547385,
		0.555830, -0.087841, 0.826642,
		32.747932, 40.592892, 22.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569286, 41.258415, 22.037548>,  <32.358852, 40.654381, 21.492395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569286, 41.258415, 22.037548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623867, 41.649506, 22.101347>,  <32.656616, 41.884159, 22.139627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623867, 41.649506, 22.101347>,  <32.569286, 41.258415, 22.037548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623867, 41.649506, 22.101347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627340, 0.209890, -0.749927,
		-0.766698, 0.002268, 0.642004,
		0.136451, 0.977723, 0.159499,
		32.664803, 41.942822, 22.149197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902967, 41.493954, 21.834219>,  <32.569286, 41.258415, 22.037548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902967, 41.493954, 21.834219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166855, 41.793793, 21.855659>,  <32.325188, 41.973698, 21.868525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166855, 41.793793, 21.855659>,  <31.902967, 41.493954, 21.834219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166855, 41.793793, 21.855659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352593, 0.371728, -0.858776,
		-0.663662, 0.547652, 0.509539,
		0.659720, 0.749597, 0.053604,
		32.364769, 42.018673, 21.871740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499298, 42.057091, 21.852270>,  <31.902967, 41.493954, 21.834219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499298, 42.057091, 21.852270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862484, 42.140957, 21.707140>,  <32.080395, 42.191277, 21.620062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862484, 42.140957, 21.707140>,  <31.499298, 42.057091, 21.852270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862484, 42.140957, 21.707140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414179, 0.317364, -0.853074,
		-0.063713, 0.924835, 0.374995,
		0.907963, 0.209667, -0.362827,
		32.134872, 42.203857, 21.598291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443512, 42.611893, 21.366550>,  <31.499298, 42.057091, 21.852270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443512, 42.611893, 21.366550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759352, 42.420193, 21.213268>,  <31.948856, 42.305172, 21.121298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759352, 42.420193, 21.213268>,  <31.443512, 42.611893, 21.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759352, 42.420193, 21.213268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374261, 0.118757, -0.919688,
		0.486271, 0.869605, -0.085595,
		0.789600, -0.479252, -0.383208,
		31.996231, 42.276417, 21.098307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574127, 42.787834, 20.686762>,  <31.443512, 42.611893, 21.366550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574127, 42.787834, 20.686762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737062, 42.422569, 20.680960>,  <31.834824, 42.203411, 20.677479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737062, 42.422569, 20.680960>,  <31.574127, 42.787834, 20.686762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737062, 42.422569, 20.680960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363313, -0.147451, -0.919925,
		0.837902, 0.379991, -0.391826,
		0.407338, -0.913162, -0.014506,
		31.859264, 42.148621, 20.676607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039257, 42.577595, 20.062344>,  <31.574127, 42.787834, 20.686762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039257, 42.577595, 20.062344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910015, 42.219868, 20.186152>,  <31.832472, 42.005230, 20.260437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910015, 42.219868, 20.186152>,  <32.039257, 42.577595, 20.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910015, 42.219868, 20.186152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212484, -0.250157, -0.944602,
		0.922202, -0.370969, -0.109202,
		-0.323100, -0.894317, 0.309520,
		31.813086, 41.951572, 20.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364964, 41.844189, 20.304447>,  <32.039257, 42.577595, 20.062344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364964, 41.844189, 20.304447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268326, 42.186382, 20.487654>,  <32.210342, 42.391697, 20.597578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268326, 42.186382, 20.487654>,  <32.364964, 41.844189, 20.304447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268326, 42.186382, 20.487654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535001, -0.276354, 0.798375,
		0.809572, 0.437923, -0.390918,
		-0.241595, 0.855483, 0.458018,
		32.195847, 42.443027, 20.625059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990273, 42.077065, 20.690958>,  <32.364964, 41.844189, 20.304447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990273, 42.077065, 20.690958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706570, 42.297638, 20.866629>,  <32.536346, 42.429981, 20.972031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706570, 42.297638, 20.866629>,  <32.990273, 42.077065, 20.690958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706570, 42.297638, 20.866629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439716, -0.140880, 0.887019,
		0.551001, 0.822239, -0.142552,
		-0.709258, 0.551431, 0.439177,
		32.493793, 42.463066, 20.998381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320591, 42.494526, 21.197865>,  <32.990273, 42.077065, 20.690958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320591, 42.494526, 21.197865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943119, 42.452705, 21.323427>,  <32.716637, 42.427612, 21.398766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943119, 42.452705, 21.323427>,  <33.320591, 42.494526, 21.197865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943119, 42.452705, 21.323427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328185, -0.175354, 0.928195,
		-0.042003, 0.978938, 0.199791,
		-0.943679, -0.104555, 0.313907,
		32.660015, 42.421337, 21.417599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236790, 42.944302, 21.805923>,  <33.320591, 42.494526, 21.197865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236790, 42.944302, 21.805923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944511, 42.671619, 21.820726>,  <32.769146, 42.508011, 21.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944511, 42.671619, 21.820726>,  <33.236790, 42.944302, 21.805923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944511, 42.671619, 21.820726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099223, -0.052407, 0.993684,
		-0.675459, 0.729749, 0.105934,
		-0.730692, -0.681704, 0.037010,
		32.725304, 42.467110, 21.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762020, 43.198536, 22.330116>,  <33.236790, 42.944302, 21.805923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762020, 43.198536, 22.330116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750046, 42.801842, 22.280203>,  <32.742859, 42.563828, 22.250254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750046, 42.801842, 22.280203>,  <32.762020, 43.198536, 22.330116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750046, 42.801842, 22.280203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011544, -0.124490, 0.992154,
		-0.999485, 0.031144, -0.007721,
		-0.029938, -0.991732, -0.124785,
		32.741066, 42.504322, 22.242767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385288, 42.880264, 23.025906>,  <32.762020, 43.198536, 22.330116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385288, 42.880264, 23.025906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564125, 42.581158, 22.829559>,  <32.671429, 42.401691, 22.711752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564125, 42.581158, 22.829559>,  <32.385288, 42.880264, 23.025906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564125, 42.581158, 22.829559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425133, -0.305185, 0.852129,
		-0.787001, -0.589663, 0.181457,
		0.447091, -0.747770, -0.490866,
		32.698254, 42.356827, 22.682299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417526, 42.353092, 23.503157>,  <32.385288, 42.880264, 23.025906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417526, 42.353092, 23.503157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669754, 42.234093, 23.216415>,  <32.821091, 42.162693, 23.044371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669754, 42.234093, 23.216415>,  <32.417526, 42.353092, 23.503157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669754, 42.234093, 23.216415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569988, -0.449374, 0.687878,
		-0.526779, -0.842352, -0.113789,
		0.630569, -0.297501, -0.716852,
		32.858925, 42.144844, 23.001360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484772, 41.639591, 23.558130>,  <32.417526, 42.353092, 23.503157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484772, 41.639591, 23.558130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810371, 41.789570, 23.380676>,  <33.005733, 41.879559, 23.274204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810371, 41.789570, 23.380676>,  <32.484772, 41.639591, 23.558130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810371, 41.789570, 23.380676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566734, -0.345259, 0.748069,
		0.127320, -0.860353, -0.493540,
		0.814003, 0.374950, -0.443633,
		33.054573, 41.902054, 23.247585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873329, 41.064598, 23.590324>,  <32.484772, 41.639591, 23.558130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873329, 41.064598, 23.590324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099411, 41.391495, 23.545309>,  <33.235062, 41.587631, 23.518299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099411, 41.391495, 23.545309>,  <32.873329, 41.064598, 23.590324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099411, 41.391495, 23.545309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612668, -0.324485, 0.720658,
		0.552432, -0.476269, -0.684096,
		0.565206, 0.817237, -0.112539,
		33.268974, 41.636665, 23.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549328, 40.897091, 23.817776>,  <32.873329, 41.064598, 23.590324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549328, 40.897091, 23.817776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564293, 41.296665, 23.828520>,  <33.573273, 41.536411, 23.834967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564293, 41.296665, 23.828520>,  <33.549328, 40.897091, 23.817776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564293, 41.296665, 23.828520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513492, -0.042273, 0.857052,
		0.857278, -0.018268, -0.514529,
		0.037408, 0.998939, 0.026859,
		33.575516, 41.596348, 23.836578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163349, 41.066143, 23.733145>,  <33.549328, 40.897091, 23.817776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163349, 41.066143, 23.733145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998611, 41.361622, 23.946577>,  <33.899769, 41.538910, 24.074636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998611, 41.361622, 23.946577>,  <34.163349, 41.066143, 23.733145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998611, 41.361622, 23.946577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611372, -0.210213, 0.762912,
		0.675728, 0.640416, -0.365046,
		-0.411844, 0.738700, 0.533579,
		33.875057, 41.583233, 24.106651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752869, 41.327538, 24.207338>,  <34.163349, 41.066143, 23.733145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752869, 41.327538, 24.207338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427994, 41.496597, 24.368200>,  <34.233070, 41.598034, 24.464718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427994, 41.496597, 24.368200>,  <34.752869, 41.327538, 24.207338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427994, 41.496597, 24.368200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335271, -0.225989, 0.914616,
		0.477441, 0.877667, 0.041843,
		-0.812184, 0.422646, 0.402153,
		34.184338, 41.623390, 24.488846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956112, 41.861252, 24.772892>,  <34.752869, 41.327538, 24.207338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956112, 41.861252, 24.772892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577511, 41.756824, 24.848768>,  <34.350349, 41.694168, 24.894293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577511, 41.756824, 24.848768>,  <34.956112, 41.861252, 24.772892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577511, 41.756824, 24.848768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225172, -0.113224, 0.967718,
		-0.231162, 0.958657, 0.165952,
		-0.946500, -0.261068, 0.189690,
		34.293560, 41.678505, 24.905676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840473, 42.096615, 25.447430>,  <34.956112, 41.861252, 24.772892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840473, 42.096615, 25.447430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541569, 41.836174, 25.394251>,  <34.362228, 41.679909, 25.362345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541569, 41.836174, 25.394251>,  <34.840473, 42.096615, 25.447430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541569, 41.836174, 25.394251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063686, -0.269303, 0.960947,
		-0.661477, 0.709607, 0.242705,
		-0.747257, -0.651101, -0.132945,
		34.317390, 41.640842, 25.354366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426464, 42.205303, 26.023056>,  <34.840473, 42.096615, 25.447430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426464, 42.205303, 26.023056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359291, 41.833073, 25.892935>,  <34.318989, 41.609734, 25.814861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359291, 41.833073, 25.892935>,  <34.426464, 42.205303, 26.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359291, 41.833073, 25.892935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109302, -0.310378, 0.944308,
		-0.979720, 0.194136, -0.049591,
		-0.167932, -0.930578, -0.325303,
		34.308910, 41.553898, 25.795343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903698, 41.976593, 26.321760>,  <34.426464, 42.205303, 26.023056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903698, 41.976593, 26.321760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066330, 41.632465, 26.198763>,  <34.163910, 41.425991, 26.124964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066330, 41.632465, 26.198763>,  <33.903698, 41.976593, 26.321760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066330, 41.632465, 26.198763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189974, -0.408821, 0.892623,
		-0.893648, -0.304502, -0.329654,
		0.406575, -0.860316, -0.307494,
		34.188301, 41.374371, 26.106514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545727, 41.523960, 26.581110>,  <33.903698, 41.976593, 26.321760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545727, 41.523960, 26.581110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864712, 41.299171, 26.493252>,  <34.056103, 41.164299, 26.440536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864712, 41.299171, 26.493252>,  <33.545727, 41.523960, 26.581110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864712, 41.299171, 26.493252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096084, -0.477663, 0.873273,
		-0.595674, -0.675295, -0.434914,
		0.797459, -0.561974, -0.219646,
		34.103951, 41.130581, 26.427359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331390, 40.939228, 26.476433>,  <33.545727, 41.523960, 26.581110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331390, 40.939228, 26.476433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716644, 40.876381, 26.563776>,  <33.947796, 40.838673, 26.616182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716644, 40.876381, 26.563776>,  <33.331390, 40.939228, 26.476433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716644, 40.876381, 26.563776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266173, -0.439059, 0.858125,
		-0.038955, -0.884613, -0.464695,
		0.963138, -0.157118, 0.218357,
		34.005585, 40.829247, 26.629282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392345, 40.225163, 26.628313>,  <33.331390, 40.939228, 26.476433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392345, 40.225163, 26.628313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730782, 40.369102, 26.785606>,  <33.933846, 40.455467, 26.879982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730782, 40.369102, 26.785606>,  <33.392345, 40.225163, 26.628313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730782, 40.369102, 26.785606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202259, -0.465816, 0.861456,
		0.493173, -0.808407, -0.321339,
		0.846092, 0.359854, 0.393235,
		33.984608, 40.477058, 26.903578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633518, 39.731007, 27.016731>,  <33.392345, 40.225163, 26.628313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633518, 39.731007, 27.016731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845978, 40.037651, 27.161060>,  <33.973454, 40.221638, 27.247658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845978, 40.037651, 27.161060>,  <33.633518, 39.731007, 27.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845978, 40.037651, 27.161060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090630, -0.474825, 0.875402,
		0.842418, -0.432267, -0.321680,
		0.531149, 0.766608, 0.360824,
		34.005322, 40.267632, 27.269308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224930, 39.364819, 27.378098>,  <33.633518, 39.731007, 27.016731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224930, 39.364819, 27.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143707, 39.738132, 27.496584>,  <34.094975, 39.962120, 27.567675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143707, 39.738132, 27.496584>,  <34.224930, 39.364819, 27.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143707, 39.738132, 27.496584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081106, -0.317509, 0.944780,
		0.975801, 0.167823, 0.140168,
		-0.203060, 0.933287, 0.296214,
		34.082790, 40.018120, 27.585447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592590, 39.258827, 27.974987>,  <34.224930, 39.364819, 27.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592590, 39.258827, 27.974987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364033, 39.586224, 27.998947>,  <34.226898, 39.782661, 28.013323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364033, 39.586224, 27.998947>,  <34.592590, 39.258827, 27.974987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364033, 39.586224, 27.998947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200608, -0.210076, 0.956883,
		0.795781, 0.534739, 0.284231,
		-0.571392, 0.818488, 0.059902,
		34.192616, 39.831772, 28.016918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833900, 39.715088, 28.520145>,  <34.592590, 39.258827, 27.974987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833900, 39.715088, 28.520145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438557, 39.749310, 28.469833>,  <34.201351, 39.769840, 28.439646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438557, 39.749310, 28.469833>,  <34.833900, 39.715088, 28.520145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438557, 39.749310, 28.469833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145649, -0.293655, 0.944750,
		0.043889, 0.952075, 0.302698,
		-0.988362, 0.085552, -0.125780,
		34.142048, 39.774975, 28.432098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642834, 40.056854, 29.146280>,  <34.833900, 39.715088, 28.520145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642834, 40.056854, 29.146280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298370, 39.916840, 28.998831>,  <34.091694, 39.832832, 28.910360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298370, 39.916840, 28.998831>,  <34.642834, 40.056854, 29.146280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298370, 39.916840, 28.998831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220032, -0.397035, 0.891038,
		-0.458254, 0.848432, 0.264889,
		-0.861156, -0.350038, -0.368625,
		34.040024, 39.811829, 28.888243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108330, 40.162102, 29.606472>,  <34.642834, 40.056854, 29.146280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108330, 40.162102, 29.606472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949993, 39.862328, 29.394186>,  <33.854992, 39.682465, 29.266815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949993, 39.862328, 29.394186>,  <34.108330, 40.162102, 29.606472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949993, 39.862328, 29.394186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353602, -0.408970, 0.841254,
		-0.847510, 0.520667, -0.103113,
		-0.395844, -0.749432, -0.530715,
		33.831242, 39.637497, 29.234972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501812, 40.117054, 29.809484>,  <34.108330, 40.162102, 29.606472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501812, 40.117054, 29.809484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526505, 39.749660, 29.653240>,  <33.541321, 39.529224, 29.559494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526505, 39.749660, 29.653240>,  <33.501812, 40.117054, 29.809484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526505, 39.749660, 29.653240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177191, -0.395224, 0.901333,
		-0.982239, 0.013575, -0.187143,
		0.061727, -0.918485, -0.390609,
		33.545021, 39.474113, 29.536057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897984, 39.736137, 30.084118>,  <33.501812, 40.117054, 29.809484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897984, 39.736137, 30.084118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189713, 39.480461, 29.986525>,  <33.364750, 39.327057, 29.927969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189713, 39.480461, 29.986525>,  <32.897984, 39.736137, 30.084118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189713, 39.480461, 29.986525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040058, -0.395894, 0.917422,
		-0.682996, -0.659323, -0.314339,
		0.729322, -0.639187, -0.243983,
		33.408508, 39.288704, 29.913330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658382, 38.978886, 30.358467>,  <32.897984, 39.736137, 30.084118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658382, 38.978886, 30.358467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050751, 38.941013, 30.290554>,  <33.286171, 38.918289, 30.249807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050751, 38.941013, 30.290554>,  <32.658382, 38.978886, 30.358467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050751, 38.941013, 30.290554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110465, -0.447189, 0.887592,
		-0.159959, -0.889415, -0.428200,
		0.980924, -0.094677, -0.169781,
		33.345028, 38.912609, 30.239620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835041, 38.230465, 30.402775>,  <32.658382, 38.978886, 30.358467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835041, 38.230465, 30.402775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163651, 38.448280, 30.470394>,  <33.360817, 38.578968, 30.510965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163651, 38.448280, 30.470394>,  <32.835041, 38.230465, 30.402775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163651, 38.448280, 30.470394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067213, -0.386911, 0.919664,
		0.566198, -0.744164, -0.354457,
		0.821524, 0.544536, 0.169051,
		33.410107, 38.611641, 30.521109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149467, 37.819000, 30.789116>,  <32.835041, 38.230465, 30.402775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149467, 37.819000, 30.789116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356987, 38.156490, 30.844223>,  <33.481499, 38.358986, 30.877287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356987, 38.156490, 30.844223>,  <33.149467, 37.819000, 30.789116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356987, 38.156490, 30.844223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342210, -0.352634, 0.870943,
		0.783418, -0.404696, -0.471676,
		0.518796, 0.843724, 0.137768,
		33.512627, 38.409607, 30.885553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834721, 37.616386, 30.850817>,  <33.149467, 37.819000, 30.789116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834721, 37.616386, 30.850817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761345, 37.948689, 31.061031>,  <33.717319, 38.148071, 31.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761345, 37.948689, 31.061031>,  <33.834721, 37.616386, 30.850817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761345, 37.948689, 31.061031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319684, -0.455132, 0.831058,
		0.929597, 0.320457, -0.182090,
		-0.183444, 0.830760, 0.525534,
		33.706310, 38.197918, 31.218691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424015, 37.653339, 31.268763>,  <33.834721, 37.616386, 30.850817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424015, 37.653339, 31.268763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145256, 37.876064, 31.449554>,  <33.978001, 38.009701, 31.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145256, 37.876064, 31.449554>,  <34.424015, 37.653339, 31.268763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145256, 37.876064, 31.449554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013810, -0.640529, 0.767810,
		0.717034, 0.528846, 0.454075,
		-0.696902, 0.556816, 0.451978,
		33.936184, 38.043110, 31.585148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614498, 37.915680, 32.034996>,  <34.424015, 37.653339, 31.268763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614498, 37.915680, 32.034996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217907, 37.964745, 32.017414>,  <33.979954, 37.994183, 32.006863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217907, 37.964745, 32.017414>,  <34.614498, 37.915680, 32.034996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217907, 37.964745, 32.017414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096139, -0.460934, 0.882212,
		0.087951, 0.878917, 0.468797,
		-0.991475, 0.122662, -0.043959,
		33.920464, 38.001541, 32.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354240, 38.060318, 32.777279>,  <34.614498, 37.915680, 32.034996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354240, 38.060318, 32.777279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052700, 37.919411, 32.555428>,  <33.871777, 37.834866, 32.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052700, 37.919411, 32.555428>,  <34.354240, 38.060318, 32.777279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052700, 37.919411, 32.555428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299513, -0.567087, 0.767271,
		-0.584807, 0.744528, 0.321992,
		-0.753852, -0.352265, -0.554632,
		33.826546, 37.813732, 32.389038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777145, 38.035206, 33.267525>,  <34.354240, 38.060318, 32.777279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777145, 38.035206, 33.267525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640408, 37.786160, 32.985958>,  <33.558365, 37.636730, 32.817020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640408, 37.786160, 32.985958>,  <33.777145, 38.035206, 33.267525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640408, 37.786160, 32.985958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344641, -0.613791, 0.710270,
		-0.874281, 0.485397, -0.004759,
		-0.341841, -0.622616, -0.703914,
		33.537857, 37.599377, 32.774784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011761, 37.894970, 33.324596>,  <33.777145, 38.035206, 33.267525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011761, 37.894970, 33.324596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186543, 37.586960, 33.138638>,  <33.291412, 37.402153, 33.027061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186543, 37.586960, 33.138638>,  <33.011761, 37.894970, 33.324596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186543, 37.586960, 33.138638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318480, -0.615814, 0.720655,
		-0.841214, -0.166833, -0.514320,
		0.436955, -0.770026, -0.464899,
		33.317627, 37.355953, 32.999168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603241, 37.482452, 33.592716>,  <33.011761, 37.894970, 33.324596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603241, 37.482452, 33.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857273, 37.256058, 33.382446>,  <33.009693, 37.120220, 33.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857273, 37.256058, 33.382446>,  <32.603241, 37.482452, 33.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857273, 37.256058, 33.382446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133051, -0.750515, 0.647321,
		-0.760899, -0.341161, -0.551944,
		0.635083, -0.565982, -0.525674,
		33.047798, 37.086262, 33.224743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309883, 36.884308, 33.633358>,  <32.603241, 37.482452, 33.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309883, 36.884308, 33.633358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678555, 36.774975, 33.523228>,  <32.899757, 36.709373, 33.457150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678555, 36.774975, 33.523228>,  <32.309883, 36.884308, 33.633358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678555, 36.774975, 33.523228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137220, -0.893469, 0.427650,
		-0.362882, -0.356376, -0.860996,
		0.921676, -0.273332, -0.275321,
		32.955059, 36.692974, 33.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230499, 36.250656, 33.429001>,  <32.309883, 36.884308, 33.633358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230499, 36.250656, 33.429001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613400, 36.279148, 33.541145>,  <32.843140, 36.296242, 33.608433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613400, 36.279148, 33.541145>,  <32.230499, 36.250656, 33.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613400, 36.279148, 33.541145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065667, -0.890394, 0.450430,
		0.281718, -0.449584, -0.847649,
		0.957248, 0.071231, 0.280363,
		32.900574, 36.300518, 33.625256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554771, 35.616543, 33.154469>,  <32.230499, 36.250656, 33.429001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554771, 35.616543, 33.154469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825104, 35.752201, 33.416225>,  <32.987305, 35.833595, 33.573280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825104, 35.752201, 33.416225>,  <32.554771, 35.616543, 33.154469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825104, 35.752201, 33.416225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044938, -0.867237, 0.495863,
		0.735682, -0.364529, -0.570869,
		0.675835, 0.339143, 0.654392,
		33.027855, 35.853943, 33.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100609, 35.013859, 33.212624>,  <32.554771, 35.616543, 33.154469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100609, 35.013859, 33.212624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149635, 35.243584, 33.536385>,  <33.179050, 35.381420, 33.730640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149635, 35.243584, 33.536385>,  <33.100609, 35.013859, 33.212624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149635, 35.243584, 33.536385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043869, -0.817894, 0.573695,
		0.991490, -0.034810, -0.125444,
		0.122570, 0.574315, 0.809406,
		33.186405, 35.415878, 33.779205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677071, 34.701935, 33.674122>,  <33.100609, 35.013859, 33.212624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677071, 34.701935, 33.674122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489292, 34.958374, 33.916981>,  <33.376625, 35.112236, 34.062695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489292, 34.958374, 33.916981>,  <33.677071, 34.701935, 33.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489292, 34.958374, 33.916981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157846, -0.615609, 0.772081,
		0.868740, 0.458282, 0.187798,
		-0.469442, 0.641095, 0.607143,
		33.348461, 35.150703, 34.099125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042320, 34.844810, 34.239643>,  <33.677071, 34.701935, 33.674122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042320, 34.844810, 34.239643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668098, 34.933372, 34.349709>,  <33.443565, 34.986511, 34.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668098, 34.933372, 34.349709>,  <34.042320, 34.844810, 34.239643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668098, 34.933372, 34.349709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141989, -0.477586, 0.867036,
		0.323380, 0.850230, 0.415372,
		-0.935556, 0.221404, 0.275165,
		33.387432, 34.999794, 34.432259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194653, 34.037441, 34.060173>,  <34.042320, 34.844810, 34.239643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194653, 34.037441, 34.060173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526611, 33.837955, 33.960125>,  <34.725784, 33.718266, 33.900097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526611, 33.837955, 33.960125>,  <34.194653, 34.037441, 34.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526611, 33.837955, 33.960125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232247, 0.716420, -0.657878,
		0.507283, 0.487881, 0.710378,
		0.829895, -0.498713, -0.250119,
		34.775581, 33.688343, 33.885090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737629, 34.530655, 33.939148>,  <34.194653, 34.037441, 34.060173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737629, 34.530655, 33.939148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842609, 34.212250, 33.720982>,  <34.905598, 34.021206, 33.590080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842609, 34.212250, 33.720982>,  <34.737629, 34.530655, 33.939148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842609, 34.212250, 33.720982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472220, 0.598873, -0.646807,
		0.841503, -0.087800, 0.533070,
		0.262451, -0.796016, -0.545415,
		34.921345, 33.973446, 33.557358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427551, 34.606678, 33.791237>,  <34.737629, 34.530655, 33.939148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427551, 34.606678, 33.791237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308994, 34.336227, 33.521420>,  <35.237862, 34.173958, 33.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308994, 34.336227, 33.521420>,  <35.427551, 34.606678, 33.791237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308994, 34.336227, 33.521420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423822, 0.539819, -0.727304,
		0.855879, -0.501452, 0.126560,
		-0.296388, -0.676123, -0.674546,
		35.220078, 34.133392, 33.319057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005253, 34.481804, 33.204395>,  <35.427551, 34.606678, 33.791237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005253, 34.481804, 33.204395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701839, 34.310669, 33.007790>,  <35.519791, 34.207989, 32.889828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701839, 34.310669, 33.007790>,  <36.005253, 34.481804, 33.204395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701839, 34.310669, 33.007790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351404, 0.366640, -0.861447,
		0.548769, -0.826154, -0.127764,
		-0.758531, -0.427838, -0.491514,
		35.474281, 34.182320, 32.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296120, 34.341751, 32.591316>,  <36.005253, 34.481804, 33.204395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296120, 34.341751, 32.591316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900192, 34.332169, 32.535183>,  <35.662636, 34.326420, 32.501503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900192, 34.332169, 32.535183>,  <36.296120, 34.341751, 32.591316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900192, 34.332169, 32.535183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090267, 0.656649, -0.748775,
		0.110091, -0.753816, -0.647798,
		-0.989814, -0.023959, -0.140336,
		35.603249, 34.324982, 32.493084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232372, 34.288387, 31.851337>,  <36.296120, 34.341751, 32.591316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232372, 34.288387, 31.851337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888649, 34.439915, 31.988794>,  <35.682415, 34.530830, 32.071266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888649, 34.439915, 31.988794>,  <36.232372, 34.288387, 31.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888649, 34.439915, 31.988794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060755, 0.591518, -0.803999,
		-0.507841, -0.711759, -0.485280,
		-0.859306, 0.378821, 0.343640,
		35.630856, 34.553562, 32.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747150, 34.221722, 31.323544>,  <36.232372, 34.288387, 31.851337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747150, 34.221722, 31.323544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628918, 34.524899, 31.556150>,  <35.557976, 34.706802, 31.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628918, 34.524899, 31.556150>,  <35.747150, 34.221722, 31.323544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628918, 34.524899, 31.556150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091107, 0.628304, -0.772614,
		-0.950963, -0.175392, -0.254769,
		-0.295583, 0.757939, 0.581515,
		35.540241, 34.752281, 31.730604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441849, 34.654736, 30.810841>,  <35.747150, 34.221722, 31.323544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441849, 34.654736, 30.810841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481995, 34.896294, 31.127127>,  <35.506081, 35.041229, 31.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481995, 34.896294, 31.127127>,  <35.441849, 34.654736, 30.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481995, 34.896294, 31.127127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035169, 0.796386, -0.603765,
		-0.994329, 0.032786, 0.101165,
		0.100361, 0.603900, 0.790717,
		35.512104, 35.077465, 31.364342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090252, 35.209282, 30.566977>,  <35.441849, 34.654736, 30.810841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090252, 35.209282, 30.566977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282688, 35.363953, 30.881693>,  <35.398148, 35.456757, 31.070522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282688, 35.363953, 30.881693>,  <35.090252, 35.209282, 30.566977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282688, 35.363953, 30.881693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075204, 0.875960, -0.476486,
		-0.873441, 0.288401, 0.392333,
		0.481087, 0.386677, 0.786789,
		35.427013, 35.479958, 31.117729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888687, 36.009052, 30.528393>,  <35.090252, 35.209282, 30.566977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888687, 36.009052, 30.528393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209816, 35.974648, 30.764383>,  <35.402493, 35.954006, 30.905977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209816, 35.974648, 30.764383>,  <34.888687, 36.009052, 30.528393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209816, 35.974648, 30.764383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304241, 0.910108, -0.281321,
		-0.512744, 0.405346, 0.756827,
		0.802827, -0.086012, 0.589976,
		35.450665, 35.948845, 30.941376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911823, 36.601120, 30.821377>,  <34.888687, 36.009052, 30.528393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911823, 36.601120, 30.821377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279263, 36.459400, 30.891399>,  <35.499725, 36.374367, 30.933413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279263, 36.459400, 30.891399>,  <34.911823, 36.601120, 30.821377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279263, 36.459400, 30.891399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384308, 0.904108, -0.186803,
		-0.092084, 0.238873, 0.966675,
		0.918601, -0.354300, 0.175055,
		35.554844, 36.353111, 30.943916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243877, 37.138779, 31.151171>,  <34.911823, 36.601120, 30.821377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243877, 37.138779, 31.151171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502621, 36.912163, 30.946972>,  <35.657867, 36.776192, 30.824451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502621, 36.912163, 30.946972>,  <35.243877, 37.138779, 31.151171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502621, 36.912163, 30.946972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343445, 0.814098, -0.468284,
		0.680897, 0.127585, 0.721181,
		0.646858, -0.566539, -0.510498,
		35.696678, 36.742203, 30.793823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911530, 37.444977, 31.217703>,  <35.243877, 37.138779, 31.151171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911530, 37.444977, 31.217703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957970, 37.210182, 30.897211>,  <35.985836, 37.069305, 30.704916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957970, 37.210182, 30.897211>,  <35.911530, 37.444977, 31.217703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957970, 37.210182, 30.897211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314952, 0.786810, -0.530787,
		0.941980, -0.190722, 0.276224,
		0.116102, -0.586988, -0.801228,
		35.992802, 37.034084, 30.656843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510902, 37.630379, 30.889627>,  <35.911530, 37.444977, 31.217703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510902, 37.630379, 30.889627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342041, 37.419613, 30.594561>,  <36.240726, 37.293156, 30.417521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342041, 37.419613, 30.594561>,  <36.510902, 37.630379, 30.889627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342041, 37.419613, 30.594561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286123, 0.694691, -0.659953,
		0.860188, -0.489663, -0.142503,
		-0.422150, -0.526911, -0.737669,
		36.215397, 37.261539, 30.373260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055809, 37.453400, 30.375273>,  <36.510902, 37.630379, 30.889627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055809, 37.453400, 30.375273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699028, 37.438354, 30.195045>,  <36.484959, 37.429329, 30.086908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699028, 37.438354, 30.195045>,  <37.055809, 37.453400, 30.375273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699028, 37.438354, 30.195045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336513, 0.610339, -0.717109,
		0.301968, -0.791247, -0.531736,
		-0.891950, -0.037608, -0.450568,
		36.431442, 37.427071, 30.059875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215656, 37.373329, 29.621773>,  <37.055809, 37.453400, 30.375273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215656, 37.373329, 29.621773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837749, 37.504421, 29.621786>,  <36.611004, 37.583076, 29.621794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837749, 37.504421, 29.621786>,  <37.215656, 37.373329, 29.621773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837749, 37.504421, 29.621786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182056, 0.524910, -0.831460,
		-0.272516, -0.785532, -0.555585,
		-0.944770, 0.327734, 0.000035,
		36.554317, 37.602741, 29.621798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110409, 37.315380, 28.903755>,  <37.215656, 37.373329, 29.621773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110409, 37.315380, 28.903755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807114, 37.533123, 29.047285>,  <36.625137, 37.663769, 29.133402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807114, 37.533123, 29.047285>,  <37.110409, 37.315380, 28.903755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807114, 37.533123, 29.047285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048594, 0.501645, -0.863708,
		-0.650164, -0.672333, -0.353914,
		-0.758239, 0.544353, 0.358823,
		36.579643, 37.696430, 29.154932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596363, 37.319981, 28.413748>,  <37.110409, 37.315380, 28.903755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596363, 37.319981, 28.413748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523918, 37.647739, 28.631290>,  <36.480450, 37.844395, 28.761816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523918, 37.647739, 28.631290>,  <36.596363, 37.319981, 28.413748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523918, 37.647739, 28.631290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078820, 0.539130, -0.838527,
		-0.980298, -0.194738, -0.033060,
		-0.181116, 0.819400, 0.543857,
		36.469582, 37.893559, 28.794447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120720, 37.660805, 27.998497>,  <36.596363, 37.319981, 28.413748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120720, 37.660805, 27.998497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243832, 37.943913, 28.252848>,  <36.317699, 38.113777, 28.405458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243832, 37.943913, 28.252848>,  <36.120720, 37.660805, 27.998497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243832, 37.943913, 28.252848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160050, 0.697309, -0.698673,
		-0.937900, 0.113263, 0.327894,
		0.307777, 0.707765, 0.635879,
		36.336166, 38.156242, 28.443611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608131, 38.295166, 27.939583>,  <36.120720, 37.660805, 27.998497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608131, 38.295166, 27.939583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972202, 38.404503, 28.064070>,  <36.190647, 38.470104, 28.138762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972202, 38.404503, 28.064070>,  <35.608131, 38.295166, 27.939583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972202, 38.404503, 28.064070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031041, 0.704220, -0.709303,
		-0.413051, 0.655253, 0.632482,
		0.910179, 0.273345, 0.311218,
		36.245255, 38.486507, 28.157434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607925, 39.097431, 27.999592>,  <35.608131, 38.295166, 27.939583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607925, 39.097431, 27.999592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991898, 38.986671, 27.982309>,  <36.222279, 38.920216, 27.971939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991898, 38.986671, 27.982309>,  <35.607925, 39.097431, 27.999592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991898, 38.986671, 27.982309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175903, 0.715339, -0.676275,
		0.218165, 0.641576, 0.735381,
		0.959928, -0.276895, -0.043206,
		36.279877, 38.903603, 27.969347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901154, 39.703495, 27.933155>,  <35.607925, 39.097431, 27.999592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901154, 39.703495, 27.933155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166008, 39.426792, 27.817883>,  <36.324921, 39.260769, 27.748718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166008, 39.426792, 27.817883>,  <35.901154, 39.703495, 27.933155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166008, 39.426792, 27.817883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309943, 0.602923, -0.735132,
		0.682285, 0.397436, 0.613621,
		0.662135, -0.691758, -0.288183,
		36.364647, 39.219265, 27.731428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589386, 40.102222, 27.810316>,  <35.901154, 39.703495, 27.933155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589386, 40.102222, 27.810316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573475, 39.745800, 27.629457>,  <36.563931, 39.531948, 27.520943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573475, 39.745800, 27.629457>,  <36.589386, 40.102222, 27.810316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573475, 39.745800, 27.629457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198249, 0.436471, -0.877605,
		0.979344, -0.124545, 0.159290,
		-0.039776, -0.891056, -0.452147,
		36.561543, 39.478481, 27.493813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226089, 39.975231, 27.477522>,  <36.589386, 40.102222, 27.810316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226089, 39.975231, 27.477522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943508, 39.749226, 27.307024>,  <36.773960, 39.613621, 27.204725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943508, 39.749226, 27.307024>,  <37.226089, 39.975231, 27.477522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943508, 39.749226, 27.307024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149673, 0.469359, -0.870230,
		0.691755, -0.678572, -0.247011,
		-0.706451, -0.565015, -0.426245,
		36.731571, 39.579720, 27.179150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512516, 39.939537, 26.690701>,  <37.226089, 39.975231, 27.477522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512516, 39.939537, 26.690701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124073, 39.844566, 26.700344>,  <36.891006, 39.787586, 26.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124073, 39.844566, 26.700344>,  <37.512516, 39.939537, 26.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124073, 39.844566, 26.700344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123909, 0.415300, -0.901206,
		0.203955, -0.878155, -0.432719,
		-0.971107, -0.237424, 0.024108,
		36.832741, 39.773338, 26.707577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542374, 39.722736, 26.051311>,  <37.512516, 39.939537, 26.690701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542374, 39.722736, 26.051311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167576, 39.791889, 26.172743>,  <36.942699, 39.833382, 26.245602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167576, 39.791889, 26.172743>,  <37.542374, 39.722736, 26.051311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167576, 39.791889, 26.172743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261532, 0.229013, -0.937632,
		-0.231626, -0.957948, -0.169368,
		-0.936990, 0.172884, 0.303579,
		36.886478, 39.843754, 26.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160667, 39.416512, 25.593988>,  <37.542374, 39.722736, 26.051311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160667, 39.416512, 25.593988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920483, 39.689560, 25.760586>,  <36.776371, 39.853390, 25.860544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920483, 39.689560, 25.760586>,  <37.160667, 39.416512, 25.593988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920483, 39.689560, 25.760586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206541, 0.370776, -0.905465,
		-0.772518, -0.629723, -0.081648,
		-0.600464, 0.682624, 0.416495,
		36.740345, 39.894348, 25.885534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599762, 39.446743, 25.192751>,  <37.160667, 39.416512, 25.593988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599762, 39.446743, 25.192751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530334, 39.790661, 25.384842>,  <36.488678, 39.997013, 25.500097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530334, 39.790661, 25.384842>,  <36.599762, 39.446743, 25.192751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530334, 39.790661, 25.384842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112011, 0.467231, -0.877011,
		-0.978431, -0.206013, 0.015210,
		-0.173569, 0.859798, 0.480229,
		36.478264, 40.048599, 25.528912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881634, 39.654091, 25.024889>,  <36.599762, 39.446743, 25.192751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881634, 39.654091, 25.024889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111649, 39.967896, 25.117735>,  <36.249657, 40.156178, 25.173443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111649, 39.967896, 25.117735>,  <35.881634, 39.654091, 25.024889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111649, 39.967896, 25.117735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265275, 0.447176, -0.854203,
		-0.773927, 0.429623, 0.465253,
		0.575035, 0.784511, 0.232114,
		36.284161, 40.203247, 25.187368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550812, 40.138172, 24.647682>,  <35.881634, 39.654091, 25.024889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550812, 40.138172, 24.647682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913746, 40.282005, 24.734802>,  <36.131508, 40.368305, 24.787075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913746, 40.282005, 24.734802>,  <35.550812, 40.138172, 24.647682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913746, 40.282005, 24.734802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021729, 0.477272, -0.878487,
		-0.419843, 0.801816, 0.425232,
		0.907337, 0.359587, 0.217802,
		36.185947, 40.389881, 24.800142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503452, 40.803112, 24.263742>,  <35.550812, 40.138172, 24.647682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503452, 40.803112, 24.263742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888126, 40.728256, 24.343878>,  <36.118931, 40.683342, 24.391958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888126, 40.728256, 24.343878>,  <35.503452, 40.803112, 24.263742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888126, 40.728256, 24.343878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252265, 0.317976, -0.913922,
		0.107331, 0.929445, 0.353003,
		0.961687, -0.187143, 0.200338,
		36.176632, 40.672112, 24.403978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916222, 41.373211, 24.169861>,  <35.503452, 40.803112, 24.263742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916222, 41.373211, 24.169861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145260, 41.048370, 24.124931>,  <36.282684, 40.853466, 24.097975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145260, 41.048370, 24.124931>,  <35.916222, 41.373211, 24.169861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145260, 41.048370, 24.124931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277935, 0.321180, -0.905315,
		0.771287, 0.487163, 0.409620,
		0.572598, -0.812105, -0.112322,
		36.317039, 40.804737, 24.091234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497028, 41.653873, 23.767431>,  <35.916222, 41.373211, 24.169861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497028, 41.653873, 23.767431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600811, 41.268417, 23.741879>,  <36.663082, 41.037144, 23.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600811, 41.268417, 23.741879>,  <36.497028, 41.653873, 23.767431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600811, 41.268417, 23.741879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489172, 0.188166, -0.851648,
		0.832702, 0.189715, 0.520207,
		0.259456, -0.963640, -0.063883,
		36.678646, 40.979324, 23.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212502, 41.502831, 23.450874>,  <36.497028, 41.653873, 23.767431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212502, 41.502831, 23.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013039, 41.164364, 23.375677>,  <36.893360, 40.961285, 23.330559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013039, 41.164364, 23.375677>,  <37.212502, 41.502831, 23.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013039, 41.164364, 23.375677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343191, 0.006426, -0.939244,
		0.795965, -0.532880, 0.287192,
		-0.498658, -0.846167, -0.187994,
		36.863441, 40.910515, 23.319279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694481, 41.073082, 23.062643>,  <37.212502, 41.502831, 23.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694481, 41.073082, 23.062643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355049, 40.877468, 22.981888>,  <37.151390, 40.760098, 22.933435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355049, 40.877468, 22.981888>,  <37.694481, 41.073082, 23.062643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355049, 40.877468, 22.981888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232928, -0.002705, -0.972490,
		0.475040, -0.872257, 0.116206,
		-0.848576, -0.489040, -0.201888,
		37.100475, 40.730755, 22.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866093, 40.566486, 22.688646>,  <37.694481, 41.073082, 23.062643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866093, 40.566486, 22.688646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477161, 40.623882, 22.614906>,  <37.243801, 40.658321, 22.570662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477161, 40.623882, 22.614906>,  <37.866093, 40.566486, 22.688646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477161, 40.623882, 22.614906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209646, 0.187784, -0.959576,
		-0.103071, -0.971673, -0.212670,
		-0.972330, 0.143490, -0.184352,
		37.185463, 40.666927, 22.559601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695217, 40.009579, 22.154861>,  <37.866093, 40.566486, 22.688646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695217, 40.009579, 22.154861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435745, 40.311119, 22.113041>,  <37.280064, 40.492043, 22.087948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435745, 40.311119, 22.113041>,  <37.695217, 40.009579, 22.154861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435745, 40.311119, 22.113041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250476, 0.081741, -0.964666,
		-0.718665, -0.651944, -0.241845,
		-0.648677, 0.753848, -0.104552,
		37.241142, 40.537273, 22.081675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477882, 39.924179, 21.431906>,  <37.695217, 40.009579, 22.154861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477882, 39.924179, 21.431906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384995, 40.295120, 21.549267>,  <37.329262, 40.517685, 21.619682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384995, 40.295120, 21.549267>,  <37.477882, 39.924179, 21.431906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384995, 40.295120, 21.549267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225711, 0.344790, -0.911139,
		-0.946113, -0.145357, -0.289381,
		-0.232216, 0.927357, 0.293401,
		37.315331, 40.573326, 21.637287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772263, 40.080910, 20.614840>,  <37.477882, 39.924179, 21.431906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772263, 40.080910, 20.614840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875961, 39.725117, 20.464315>,  <37.938183, 39.511642, 20.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875961, 39.725117, 20.464315>,  <37.772263, 40.080910, 20.614840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875961, 39.725117, 20.464315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374550, -0.451734, 0.809722,
		-0.890226, -0.068972, -0.450267,
		0.259249, -0.889483, -0.376311,
		37.953735, 39.458271, 20.351421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182640, 39.640919, 20.609327>,  <37.772263, 40.080910, 20.614840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182640, 39.640919, 20.609327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520119, 39.426380, 20.618374>,  <37.722607, 39.297657, 20.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520119, 39.426380, 20.618374>,  <37.182640, 39.640919, 20.609327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520119, 39.426380, 20.618374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318883, -0.466836, 0.824850,
		-0.431839, -0.703140, -0.564898,
		0.843699, -0.536339, 0.022621,
		37.773228, 39.265476, 20.625158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014675, 38.916065, 20.692677>,  <37.182640, 39.640919, 20.609327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014675, 38.916065, 20.692677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398102, 38.879997, 20.800772>,  <37.628159, 38.858356, 20.865629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398102, 38.879997, 20.800772>,  <37.014675, 38.916065, 20.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398102, 38.879997, 20.800772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266822, -0.616528, 0.740743,
		0.099820, -0.782153, -0.615038,
		0.958562, -0.090165, 0.270237,
		37.685669, 38.852947, 20.881844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002724, 38.185486, 20.939577>,  <37.014675, 38.916065, 20.692677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002724, 38.185486, 20.939577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333149, 38.371208, 21.067356>,  <37.531403, 38.482639, 21.144024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333149, 38.371208, 21.067356>,  <37.002724, 38.185486, 20.939577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333149, 38.371208, 21.067356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071580, -0.648663, 0.757702,
		0.559017, -0.603042, -0.569070,
		0.826061, 0.464302, 0.319448,
		37.580967, 38.510498, 21.163191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579350, 37.609451, 21.066519>,  <37.002724, 38.185486, 20.939577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579350, 37.609451, 21.066519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744659, 37.917488, 21.260906>,  <37.843845, 38.102310, 21.377539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744659, 37.917488, 21.260906>,  <37.579350, 37.609451, 21.066519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744659, 37.917488, 21.260906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121858, -0.575646, 0.808568,
		0.902418, -0.274938, -0.331740,
		0.413271, 0.770091, 0.485970,
		37.868641, 38.148514, 21.406698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203514, 37.303852, 21.422461>,  <37.579350, 37.609451, 21.066519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203514, 37.303852, 21.422461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076965, 37.643608, 21.591431>,  <38.001038, 37.847462, 21.692812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076965, 37.643608, 21.591431>,  <38.203514, 37.303852, 21.422461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076965, 37.643608, 21.591431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029794, -0.453973, 0.890517,
		0.948167, 0.269149, 0.168931,
		-0.316372, 0.849392, 0.422424,
		37.982052, 37.898426, 21.718157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691441, 37.446476, 22.039524>,  <38.203514, 37.303852, 21.422461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691441, 37.446476, 22.039524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364769, 37.661572, 22.123302>,  <38.168766, 37.790630, 22.173569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364769, 37.661572, 22.123302>,  <38.691441, 37.446476, 22.039524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364769, 37.661572, 22.123302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048171, -0.425189, 0.903822,
		0.575076, 0.728045, 0.373147,
		-0.816681, 0.537741, 0.209446,
		38.119766, 37.822895, 22.186136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978367, 37.880779, 22.491789>,  <38.691441, 37.446476, 22.039524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978367, 37.880779, 22.491789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580875, 37.849880, 22.524115>,  <38.342381, 37.831341, 22.543510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580875, 37.849880, 22.524115>,  <38.978367, 37.880779, 22.491789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580875, 37.849880, 22.524115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106117, -0.424364, 0.899252,
		-0.035169, 0.902191, 0.429901,
		-0.993731, -0.077246, 0.080813,
		38.282757, 37.826706, 22.548359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889236, 37.854439, 23.201132>,  <38.978367, 37.880779, 22.491789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889236, 37.854439, 23.201132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532879, 37.729061, 23.069647>,  <38.319065, 37.653835, 22.990755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532879, 37.729061, 23.069647>,  <38.889236, 37.854439, 23.201132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532879, 37.729061, 23.069647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168795, -0.443401, 0.880286,
		-0.421674, 0.839730, 0.342117,
		-0.890898, -0.313446, -0.328713,
		38.265610, 37.635029, 22.971033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456318, 38.169106, 23.671745>,  <38.889236, 37.854439, 23.201132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456318, 38.169106, 23.671745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332352, 37.829834, 23.499912>,  <38.257973, 37.626270, 23.396812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332352, 37.829834, 23.499912>,  <38.456318, 38.169106, 23.671745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332352, 37.829834, 23.499912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053593, -0.435527, 0.898579,
		-0.949253, 0.301504, 0.089519,
		-0.309913, -0.848181, -0.429584,
		38.239376, 37.575378, 23.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946445, 37.956909, 24.110535>,  <38.456318, 38.169106, 23.671745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946445, 37.956909, 24.110535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048954, 37.626194, 23.910236>,  <38.110458, 37.427765, 23.790056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048954, 37.626194, 23.910236>,  <37.946445, 37.956909, 24.110535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048954, 37.626194, 23.910236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171228, -0.548685, 0.818307,
		-0.951318, -0.123966, -0.282181,
		0.256271, -0.826787, -0.500748,
		38.125835, 37.378159, 23.760012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290287, 37.458878, 24.340487>,  <37.946445, 37.956909, 24.110535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290287, 37.458878, 24.340487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609859, 37.266586, 24.195925>,  <37.801601, 37.151211, 24.109188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609859, 37.266586, 24.195925>,  <37.290287, 37.458878, 24.340487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609859, 37.266586, 24.195925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077377, -0.513759, 0.854438,
		-0.596430, -0.710598, -0.373258,
		0.798927, -0.480731, -0.361405,
		37.849537, 37.122368, 24.087503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130474, 36.831036, 24.292358>,  <37.290287, 37.458878, 24.340487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130474, 36.831036, 24.292358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527618, 36.845921, 24.337704>,  <37.765903, 36.854851, 24.364910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527618, 36.845921, 24.337704>,  <37.130474, 36.831036, 24.292358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527618, 36.845921, 24.337704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080324, -0.494118, 0.865676,
		0.088226, -0.868598, -0.487600,
		0.992857, 0.037209, 0.113363,
		37.825474, 36.857082, 24.371712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391502, 36.149445, 24.441206>,  <37.130474, 36.831036, 24.292358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391502, 36.149445, 24.441206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664688, 36.399097, 24.593006>,  <37.828602, 36.548889, 24.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664688, 36.399097, 24.593006>,  <37.391502, 36.149445, 24.441206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664688, 36.399097, 24.593006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033233, -0.492454, 0.869704,
		0.729692, -0.606592, -0.315589,
		0.682968, 0.624128, 0.379498,
		37.869579, 36.586334, 24.706856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891327, 35.722557, 24.878647>,  <37.391502, 36.149445, 24.441206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891327, 35.722557, 24.878647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901760, 36.108200, 24.984335>,  <37.908020, 36.339588, 25.047747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901760, 36.108200, 24.984335>,  <37.891327, 35.722557, 24.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901760, 36.108200, 24.984335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090359, -0.260952, 0.961114,
		0.995568, -0.048943, 0.080310,
		0.026083, 0.964110, 0.264218,
		37.909584, 36.397434, 25.063601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200439, 35.857555, 25.492712>,  <37.891327, 35.722557, 24.878647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200439, 35.857555, 25.492712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985802, 36.194946, 25.482815>,  <37.857021, 36.397381, 25.476877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985802, 36.194946, 25.482815>,  <38.200439, 35.857555, 25.492712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985802, 36.194946, 25.482815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330654, -0.183192, 0.925802,
		0.776362, 0.504958, 0.377199,
		-0.536591, 0.843480, -0.024743,
		37.824825, 36.447990, 25.475391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329655, 36.147091, 26.125622>,  <38.200439, 35.857555, 25.492712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329655, 36.147091, 26.125622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997185, 36.333912, 26.004950>,  <37.797703, 36.446003, 25.932547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997185, 36.333912, 26.004950>,  <38.329655, 36.147091, 26.125622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997185, 36.333912, 26.004950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355658, -0.029545, 0.934149,
		0.427381, 0.883737, 0.190667,
		-0.831176, 0.467050, -0.301681,
		37.747833, 36.474026, 25.914446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247040, 36.634201, 26.673679>,  <38.329655, 36.147091, 26.125622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247040, 36.634201, 26.673679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890980, 36.590214, 26.496803>,  <37.677341, 36.563820, 26.390676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890980, 36.590214, 26.496803>,  <38.247040, 36.634201, 26.673679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890980, 36.590214, 26.496803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450798, 0.071135, 0.889787,
		-0.066392, 0.991386, -0.112894,
		-0.890154, -0.109967, -0.442192,
		37.623932, 36.557224, 26.364145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818565, 37.125359, 26.994759>,  <38.247040, 36.634201, 26.673679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818565, 37.125359, 26.994759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577412, 36.854725, 26.825638>,  <37.432720, 36.692345, 26.724165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577412, 36.854725, 26.825638>,  <37.818565, 37.125359, 26.994759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577412, 36.854725, 26.825638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467287, -0.130084, 0.874483,
		-0.646662, 0.724784, -0.237732,
		-0.602886, -0.676584, -0.422803,
		37.396545, 36.651749, 26.698797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208118, 37.197880, 27.329971>,  <37.818565, 37.125359, 26.994759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208118, 37.197880, 27.329971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192764, 36.834919, 27.162569>,  <37.183552, 36.617142, 27.062128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192764, 36.834919, 27.162569>,  <37.208118, 37.197880, 27.329971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192764, 36.834919, 27.162569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197129, -0.403706, 0.893399,
		-0.979626, 0.116791, -0.163380,
		-0.038384, -0.907403, -0.418504,
		37.181248, 36.562698, 27.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726223, 36.846989, 27.821016>,  <37.208118, 37.197880, 27.329971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726223, 36.846989, 27.821016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890102, 36.558792, 27.597219>,  <36.988430, 36.385872, 27.462940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890102, 36.558792, 27.597219>,  <36.726223, 36.846989, 27.821016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890102, 36.558792, 27.597219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140177, -0.655773, 0.741830,
		-0.901385, -0.225501, -0.369668,
		0.409701, -0.720494, -0.559494,
		37.013012, 36.342644, 27.429371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223408, 36.280861, 27.674585>,  <36.726223, 36.846989, 27.821016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223408, 36.280861, 27.674585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593472, 36.131287, 27.648493>,  <36.815510, 36.041542, 27.632837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593472, 36.131287, 27.648493>,  <36.223408, 36.280861, 27.674585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593472, 36.131287, 27.648493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227248, -0.683289, 0.693884,
		-0.304038, -0.627129, -0.717127,
		0.925159, -0.373932, -0.065232,
		36.871017, 36.019108, 27.628923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140614, 35.580383, 27.835676>,  <36.223408, 36.280861, 27.674585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140614, 35.580383, 27.835676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536758, 35.620296, 27.874081>,  <36.774445, 35.644245, 27.897123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536758, 35.620296, 27.874081>,  <36.140614, 35.580383, 27.835676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536758, 35.620296, 27.874081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000362, -0.691501, 0.722376,
		0.138469, -0.715452, -0.684803,
		0.990367, 0.099778, 0.096010,
		36.833870, 35.650230, 27.902884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314358, 34.942604, 28.048874>,  <36.140614, 35.580383, 27.835676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314358, 34.942604, 28.048874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626141, 35.172211, 28.149231>,  <36.813210, 35.309975, 28.209446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626141, 35.172211, 28.149231>,  <36.314358, 34.942604, 28.048874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626141, 35.172211, 28.149231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203863, -0.611123, 0.764833,
		0.592352, -0.545009, -0.593367,
		0.779461, 0.574016, 0.250893,
		36.859978, 35.344414, 28.224499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847034, 34.480293, 28.291294>,  <36.314358, 34.942604, 28.048874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847034, 34.480293, 28.291294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959675, 34.833004, 28.442642>,  <37.027260, 35.044632, 28.533451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959675, 34.833004, 28.442642>,  <36.847034, 34.480293, 28.291294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959675, 34.833004, 28.442642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354826, -0.462070, 0.812767,
		0.891516, -0.094620, -0.442998,
		0.281600, 0.881781, 0.378369,
		37.044155, 35.097538, 28.556152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537605, 34.439209, 28.487133>,  <36.847034, 34.480293, 28.291294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537605, 34.439209, 28.487133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412266, 34.762833, 28.686026>,  <37.337063, 34.957005, 28.805361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412266, 34.762833, 28.686026>,  <37.537605, 34.439209, 28.487133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412266, 34.762833, 28.686026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395983, -0.364593, 0.842775,
		0.863141, 0.460976, -0.206129,
		-0.313346, 0.809057, 0.497234,
		37.318260, 35.005550, 28.835196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038273, 34.631847, 28.952497>,  <37.537605, 34.439209, 28.487133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038273, 34.631847, 28.952497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691509, 34.764061, 29.101748>,  <37.483452, 34.843388, 29.191298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691509, 34.764061, 29.101748>,  <38.038273, 34.631847, 28.952497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691509, 34.764061, 29.101748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285578, -0.284192, 0.915249,
		0.408557, 0.899991, 0.151975,
		-0.866906, 0.330531, 0.373127,
		37.431438, 34.863220, 29.213686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304794, 34.987625, 29.573696>,  <38.038273, 34.631847, 28.952497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304794, 34.987625, 29.573696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906887, 34.952911, 29.595245>,  <37.668144, 34.932083, 29.608175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906887, 34.952911, 29.595245>,  <38.304794, 34.987625, 29.573696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906887, 34.952911, 29.595245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075582, -0.270604, 0.959719,
		-0.068708, 0.958771, 0.275747,
		-0.994770, -0.086781, 0.053873,
		37.608456, 34.926876, 29.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017651, 35.445293, 30.151283>,  <38.304794, 34.987625, 29.573696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017651, 35.445293, 30.151283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754696, 35.156101, 30.066296>,  <37.596924, 34.982586, 30.015303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754696, 35.156101, 30.066296>,  <38.017651, 35.445293, 30.151283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754696, 35.156101, 30.066296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095521, -0.359627, 0.928194,
		-0.747478, 0.589884, 0.305473,
		-0.657383, -0.722984, -0.212467,
		37.557480, 34.939205, 30.002556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830978, 35.277874, 30.769894>,  <38.017651, 35.445293, 30.151283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830978, 35.277874, 30.769894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677731, 34.979153, 30.552452>,  <37.585781, 34.799919, 30.421988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677731, 34.979153, 30.552452>,  <37.830978, 35.277874, 30.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677731, 34.979153, 30.552452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002754, -0.587581, 0.809161,
		-0.923693, 0.311505, 0.223059,
		-0.383123, -0.746802, -0.543603,
		37.562794, 34.755112, 30.389372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244762, 34.951992, 31.150570>,  <37.830978, 35.277874, 30.769894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244762, 34.951992, 31.150570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374474, 34.668671, 30.899761>,  <37.452301, 34.498680, 30.749277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374474, 34.668671, 30.899761>,  <37.244762, 34.951992, 31.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374474, 34.668671, 30.899761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164975, -0.610335, 0.774774,
		-0.931464, -0.354686, -0.081068,
		0.324280, -0.708300, -0.627020,
		37.471756, 34.456181, 30.711655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994396, 34.340614, 31.481232>,  <37.244762, 34.951992, 31.150570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994396, 34.340614, 31.481232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266701, 34.206131, 31.220919>,  <37.430084, 34.125439, 31.064730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266701, 34.206131, 31.220919>,  <36.994396, 34.340614, 31.481232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266701, 34.206131, 31.220919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345105, -0.636449, 0.689809,
		-0.646117, -0.694185, -0.317240,
		0.680761, -0.336216, -0.650787,
		37.470932, 34.105267, 31.025682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837284, 33.681778, 31.501078>,  <36.994396, 34.340614, 31.481232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837284, 33.681778, 31.501078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222385, 33.734386, 31.406588>,  <37.453445, 33.765949, 31.349894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222385, 33.734386, 31.406588>,  <36.837284, 33.681778, 31.501078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222385, 33.734386, 31.406588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258319, -0.705395, 0.660067,
		-0.079822, -0.696506, -0.713098,
		0.962756, 0.131519, -0.236227,
		37.511211, 33.773842, 31.335720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110832, 33.012600, 31.486450>,  <36.837284, 33.681778, 31.501078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110832, 33.012600, 31.486450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 33.233078, 31.485794>,  <37.644833, 33.365364, 31.485399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 33.233078, 31.485794>,  <37.110832, 33.012600, 31.486450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444584, 33.233078, 31.485794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366438, -0.552466, 0.748669,
		0.411756, -0.625272, -0.662942,
		0.834375, 0.551196, -0.001642,
		37.694897, 33.398438, 31.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656811, 32.554623, 31.678551>,  <37.110832, 33.012600, 31.486450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656811, 32.554623, 31.678551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810612, 32.912464, 31.769632>,  <37.902893, 33.127167, 31.824282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810612, 32.912464, 31.769632>,  <37.656811, 32.554623, 31.678551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810612, 32.912464, 31.769632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572903, -0.424667, 0.701028,
		0.723838, -0.139094, -0.675804,
		0.384501, 0.894601, 0.227702,
		37.925961, 33.180843, 31.837942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389671, 32.496216, 31.707657>,  <37.656811, 32.554623, 31.678551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389671, 32.496216, 31.707657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318027, 32.815926, 31.937117>,  <38.275040, 33.007751, 32.074791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318027, 32.815926, 31.937117>,  <38.389671, 32.496216, 31.707657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318027, 32.815926, 31.937117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620293, -0.360839, 0.696442,
		0.763646, 0.480573, -0.431155,
		-0.179114, 0.799277, 0.573650,
		38.264294, 33.055710, 32.109211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006863, 32.593918, 31.942184>,  <38.389671, 32.496216, 31.707657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006863, 32.593918, 31.942184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773746, 32.809902, 32.185097>,  <38.633877, 32.939495, 32.330845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773746, 32.809902, 32.185097>,  <39.006863, 32.593918, 31.942184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773746, 32.809902, 32.185097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562278, -0.271581, 0.781081,
		0.586681, 0.796670, -0.145334,
		-0.582794, 0.539964, 0.607281,
		38.598907, 32.971889, 32.367283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403484, 32.768517, 32.548660>,  <39.006863, 32.593918, 31.942184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403484, 32.768517, 32.548660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032253, 32.815666, 32.689953>,  <38.809513, 32.843956, 32.774731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032253, 32.815666, 32.689953>,  <39.403484, 32.768517, 32.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032253, 32.815666, 32.689953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284187, -0.388796, 0.876399,
		0.240638, 0.913753, 0.327336,
		-0.928079, 0.117870, 0.353236,
		38.753830, 32.851028, 32.795925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451363, 33.265579, 33.110256>,  <39.403484, 32.768517, 32.548660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451363, 33.265579, 33.110256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107746, 33.067684, 33.162853>,  <38.901577, 32.948948, 33.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107746, 33.067684, 33.162853>,  <39.451363, 33.265579, 33.110256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107746, 33.067684, 33.162853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354707, -0.390049, 0.849732,
		-0.369102, 0.776595, 0.510553,
		-0.859038, -0.494735, 0.131496,
		38.850037, 32.919262, 33.202301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357536, 33.220436, 33.845840>,  <39.451363, 33.265579, 33.110256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357536, 33.220436, 33.845840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113419, 32.934753, 33.708759>,  <38.966946, 32.763344, 33.626511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113419, 32.934753, 33.708759>,  <39.357536, 33.220436, 33.845840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113419, 32.934753, 33.708759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262542, -0.590518, 0.763125,
		-0.747402, 0.375759, 0.547901,
		-0.610297, -0.714208, -0.342702,
		38.930328, 32.720490, 33.605949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898426, 32.949802, 34.452412>,  <39.357536, 33.220436, 33.845840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898426, 32.949802, 34.452412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884956, 32.666546, 34.170303>,  <38.876877, 32.496593, 34.001038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884956, 32.666546, 34.170303>,  <38.898426, 32.949802, 34.452412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884956, 32.666546, 34.170303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006723, -0.705492, 0.708686,
		-0.999410, 0.028604, 0.018994,
		-0.033671, -0.708140, -0.705268,
		38.874855, 32.454105, 33.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433380, 32.481903, 34.665249>,  <38.898426, 32.949802, 34.452412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433380, 32.481903, 34.665249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673920, 32.280426, 34.417164>,  <38.818245, 32.159538, 34.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673920, 32.280426, 34.417164>,  <38.433380, 32.481903, 34.665249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673920, 32.280426, 34.417164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120452, -0.824535, 0.552840,
		-0.789853, -0.257745, -0.556507,
		0.601351, -0.503695, -0.620216,
		38.854324, 32.129318, 34.231098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140598, 31.903122, 34.662624>,  <38.433380, 32.481903, 34.665249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140598, 31.903122, 34.662624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497192, 31.790846, 34.520374>,  <38.711147, 31.723480, 34.435024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497192, 31.790846, 34.520374>,  <38.140598, 31.903122, 34.662624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497192, 31.790846, 34.520374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090740, -0.879671, 0.466846,
		-0.443875, -0.383916, -0.809682,
		0.891483, -0.280692, -0.355627,
		38.764637, 31.706638, 34.413685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036930, 31.252703, 34.370834>,  <38.140598, 31.903122, 34.662624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036930, 31.252703, 34.370834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428032, 31.269495, 34.453030>,  <38.662693, 31.279572, 34.502346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428032, 31.269495, 34.453030>,  <38.036930, 31.252703, 34.370834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428032, 31.269495, 34.453030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077005, -0.839477, 0.537911,
		0.195088, -0.541771, -0.817573,
		0.977758, 0.041983, 0.205491,
		38.721359, 31.282089, 34.514675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383415, 30.641548, 34.209145>,  <38.036930, 31.252703, 34.370834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383415, 30.641548, 34.209145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640602, 30.781029, 34.481907>,  <38.794914, 30.864717, 34.645565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640602, 30.781029, 34.481907>,  <38.383415, 30.641548, 34.209145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640602, 30.781029, 34.481907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039020, -0.904103, 0.425530,
		0.764896, -0.246995, -0.594918,
		0.642971, 0.348700, 0.681907,
		38.833492, 30.885639, 34.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850468, 30.024048, 34.267258>,  <38.383415, 30.641548, 34.209145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850468, 30.024048, 34.267258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932545, 30.254398, 34.583805>,  <38.981789, 30.392609, 34.773735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932545, 30.254398, 34.583805>,  <38.850468, 30.024048, 34.267258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932545, 30.254398, 34.583805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271422, -0.810340, 0.519307,
		0.940334, 0.108239, -0.322579,
		0.205189, 0.575877, 0.791368,
		38.994102, 30.427162, 34.821217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432220, 29.782263, 34.417744>,  <38.850468, 30.024048, 34.267258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432220, 29.782263, 34.417744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315025, 29.946880, 34.762951>,  <39.244709, 30.045650, 34.970074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315025, 29.946880, 34.762951>,  <39.432220, 29.782263, 34.417744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315025, 29.946880, 34.762951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114051, -0.881136, 0.458903,
		0.949291, 0.232878, 0.211222,
		-0.292984, 0.411542, 0.863014,
		39.227131, 30.070343, 35.021854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012329, 29.726349, 34.997272>,  <39.432220, 29.782263, 34.417744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012329, 29.726349, 34.997272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642811, 29.746664, 35.149075>,  <39.421101, 29.758854, 35.240154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642811, 29.746664, 35.149075>,  <40.012329, 29.726349, 34.997272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642811, 29.746664, 35.149075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165154, -0.841363, 0.514619,
		0.345437, 0.538079, 0.768859,
		-0.923795, 0.050788, 0.379504,
		39.365673, 29.761900, 35.262924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019104, 29.690472, 35.790672>,  <40.012329, 29.726349, 34.997272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019104, 29.690472, 35.790672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676590, 29.540630, 35.648430>,  <39.471081, 29.450726, 35.563084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676590, 29.540630, 35.648430>,  <40.019104, 29.690472, 35.790672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676590, 29.540630, 35.648430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076845, -0.773208, 0.629479,
		-0.510759, 0.511686, 0.690871,
		-0.856283, -0.374602, -0.355602,
		39.419704, 29.428249, 35.541748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681080, 29.643341, 36.326099>,  <40.019104, 29.690472, 35.790672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681080, 29.643341, 36.326099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524025, 29.382744, 36.066441>,  <39.429790, 29.226385, 35.910645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524025, 29.382744, 36.066441>,  <39.681080, 29.643341, 36.326099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524025, 29.382744, 36.066441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262648, -0.755865, 0.599736,
		-0.881391, 0.064983, 0.467896,
		-0.392639, -0.651494, -0.649145,
		39.406235, 29.187296, 35.871696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249229, 29.287811, 36.630714>,  <39.681080, 29.643341, 36.326099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249229, 29.287811, 36.630714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346241, 29.035543, 36.335842>,  <39.404449, 28.884184, 36.158920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346241, 29.035543, 36.335842>,  <39.249229, 29.287811, 36.630714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346241, 29.035543, 36.335842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103244, -0.772333, 0.626772,
		-0.964634, -0.075902, -0.252427,
		0.242531, -0.630667, -0.737182,
		39.418999, 28.846344, 36.114689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746422, 28.795172, 36.632725>,  <39.249229, 29.287811, 36.630714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746422, 28.795172, 36.632725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108772, 28.670250, 36.518280>,  <39.326183, 28.595297, 36.449615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108772, 28.670250, 36.518280>,  <38.746422, 28.795172, 36.632725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108772, 28.670250, 36.518280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043489, -0.740520, 0.670625,
		-0.421310, -0.595059, -0.684400,
		0.905873, -0.312305, -0.286110,
		39.380535, 28.576559, 36.432446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736668, 28.356537, 37.114384>,  <38.746422, 28.795172, 36.632725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736668, 28.356537, 37.114384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108974, 28.360504, 36.968193>,  <39.332359, 28.362885, 36.880478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108974, 28.360504, 36.968193>,  <38.736668, 28.356537, 37.114384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108974, 28.360504, 36.968193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246458, -0.755381, 0.607172,
		-0.270050, -0.655211, -0.705529,
		0.930769, 0.009916, -0.365472,
		39.388206, 28.363480, 36.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952526, 27.785650, 36.827782>,  <38.736668, 28.356537, 37.114384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952526, 27.785650, 36.827782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321911, 27.921022, 36.900089>,  <39.543541, 28.002245, 36.943474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321911, 27.921022, 36.900089>,  <38.952526, 27.785650, 36.827782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321911, 27.921022, 36.900089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206366, -0.835305, 0.509587,
		0.323458, -0.433281, -0.841215,
		0.923465, 0.338428, 0.180771,
		39.598949, 28.022551, 36.954319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317524, 27.298180, 36.773422>,  <38.952526, 27.785650, 36.827782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317524, 27.298180, 36.773422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601761, 27.519459, 36.947330>,  <39.772305, 27.652225, 37.051674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601761, 27.519459, 36.947330>,  <39.317524, 27.298180, 36.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601761, 27.519459, 36.947330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294918, -0.795202, 0.529789,
		0.638808, -0.248244, -0.728216,
		0.710596, 0.553198, 0.434770,
		39.814941, 27.685417, 37.077763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007523, 27.107780, 36.533661>,  <39.317524, 27.298180, 36.773422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007523, 27.107780, 36.533661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088333, 27.240454, 36.902264>,  <40.136822, 27.320057, 37.123425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088333, 27.240454, 36.902264>,  <40.007523, 27.107780, 36.533661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088333, 27.240454, 36.902264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556056, -0.813393, 0.170860,
		0.806217, 0.477890, -0.348762,
		0.202028, 0.331682, 0.921505,
		40.148941, 27.339958, 37.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591331, 26.710951, 36.762352>,  <40.007523, 27.107780, 36.533661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591331, 26.710951, 36.762352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548790, 26.913584, 37.104595>,  <40.523266, 27.035164, 37.309940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548790, 26.913584, 37.104595>,  <40.591331, 26.710951, 36.762352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548790, 26.913584, 37.104595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545719, -0.689571, 0.476111,
		0.831191, 0.517558, -0.203113,
		-0.106354, 0.506582, 0.855607,
		40.516884, 27.065557, 37.361279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290752, 26.666391, 37.091164>,  <40.591331, 26.710951, 36.762352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290752, 26.666391, 37.091164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021389, 26.748600, 37.375214>,  <40.859772, 26.797926, 37.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021389, 26.748600, 37.375214>,  <41.290752, 26.666391, 37.091164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021389, 26.748600, 37.375214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317387, -0.787173, 0.528795,
		0.667673, 0.581480, 0.464858,
		-0.673408, 0.205523, 0.710129,
		40.819366, 26.810257, 37.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689678, 26.801289, 37.708805>,  <41.290752, 26.666391, 37.091164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689678, 26.801289, 37.708805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322540, 26.724770, 37.847927>,  <41.102257, 26.678858, 37.931400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322540, 26.724770, 37.847927>,  <41.689678, 26.801289, 37.708805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322540, 26.724770, 37.847927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387670, -0.620282, 0.681881,
		0.085296, 0.760694, 0.643482,
		-0.917843, -0.191297, 0.347806,
		41.047188, 26.667381, 37.952271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738136, 26.965651, 38.448341>,  <41.689678, 26.801289, 37.708805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738136, 26.965651, 38.448341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457947, 26.703796, 38.334648>,  <41.289833, 26.546684, 38.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457947, 26.703796, 38.334648>,  <41.738136, 26.965651, 38.448341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457947, 26.703796, 38.334648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331697, -0.651265, 0.682518,
		-0.631911, 0.383808, 0.673335,
		-0.700475, -0.654634, -0.284234,
		41.247803, 26.507406, 38.249378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718506, 26.540068, 39.027355>,  <41.738136, 26.965651, 38.448341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718506, 26.540068, 39.027355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545559, 26.333244, 38.731865>,  <41.441792, 26.209150, 38.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545559, 26.333244, 38.731865>,  <41.718506, 26.540068, 39.027355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545559, 26.333244, 38.731865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154196, -0.849586, 0.504407,
		-0.888417, 0.104179, 0.447058,
		-0.432363, -0.517059, -0.738723,
		41.415852, 26.178127, 38.510246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851311, 25.823593, 39.298752>,  <41.718506, 26.540068, 39.027355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851311, 25.823593, 39.298752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680428, 25.789211, 38.938728>,  <41.577896, 25.768581, 38.722713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680428, 25.789211, 38.938728>,  <41.851311, 25.823593, 39.298752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680428, 25.789211, 38.938728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089724, -0.986527, 0.136800,
		-0.899690, 0.139199, 0.413742,
		-0.427210, -0.085955, -0.900057,
		41.552265, 25.763424, 38.668713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069473, 25.545233, 39.366112>,  <41.851311, 25.823593, 39.298752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069473, 25.545233, 39.366112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284313, 25.468594, 39.037521>,  <41.413216, 25.422611, 38.840366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284313, 25.468594, 39.037521>,  <41.069473, 25.545233, 39.366112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284313, 25.468594, 39.037521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143192, -0.980437, 0.135051,
		-0.831278, 0.045093, -0.554025,
		0.537097, -0.191597, -0.821472,
		41.445442, 25.411114, 38.791080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644215, 25.100506, 38.862770>,  <41.069473, 25.545233, 39.366112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644215, 25.100506, 38.862770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027901, 25.017340, 38.786171>,  <41.258114, 24.967440, 38.740211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027901, 25.017340, 38.786171>,  <40.644215, 25.100506, 38.862770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027901, 25.017340, 38.786171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229847, -0.968049, -0.100263,
		-0.164528, 0.140188, -0.976359,
		0.959219, -0.207917, -0.191493,
		41.315666, 24.954964, 38.728722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886589, 25.447264, 38.216446>,  <40.644215, 25.100506, 38.862770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886589, 25.447264, 38.216446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899982, 25.744335, 38.483971>,  <40.908020, 25.922577, 38.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899982, 25.744335, 38.483971>,  <40.886589, 25.447264, 38.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899982, 25.744335, 38.483971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437152, 0.612662, -0.658440,
		-0.898764, -0.270327, 0.345176,
		0.033482, 0.742677, 0.668812,
		40.910027, 25.967138, 38.684616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339684, 25.755592, 38.001499>,  <40.886589, 25.447264, 38.216446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339684, 25.755592, 38.001499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583817, 26.012707, 38.186680>,  <40.730297, 26.166975, 38.297787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583817, 26.012707, 38.186680>,  <40.339684, 25.755592, 38.001499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583817, 26.012707, 38.186680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352629, 0.743791, -0.567827,
		-0.709329, 0.183313, 0.680624,
		0.610332, 0.642784, 0.462951,
		40.766914, 26.205542, 38.325565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925083, 26.310072, 38.332954>,  <40.339684, 25.755592, 38.001499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925083, 26.310072, 38.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284271, 26.458767, 38.238754>,  <40.499783, 26.547983, 38.182232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284271, 26.458767, 38.238754>,  <39.925083, 26.310072, 38.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284271, 26.458767, 38.238754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440047, 0.754627, -0.486720,
		-0.003215, 0.540692, 0.841214,
		0.897969, 0.371738, -0.235504,
		40.553661, 26.570288, 38.168102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972855, 27.006861, 38.533306>,  <39.925083, 26.310072, 38.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972855, 27.006861, 38.533306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247025, 26.975355, 38.243759>,  <40.411526, 26.956451, 38.070030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247025, 26.975355, 38.243759>,  <39.972855, 27.006861, 38.533306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247025, 26.975355, 38.243759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343962, 0.841199, -0.417223,
		0.641782, 0.534959, 0.549486,
		0.685424, -0.078764, -0.723872,
		40.452652, 26.951725, 38.026596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437683, 27.609814, 38.536026>,  <39.972855, 27.006861, 38.533306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437683, 27.609814, 38.536026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461826, 27.466763, 38.163261>,  <40.476311, 27.380932, 37.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461826, 27.466763, 38.163261>,  <40.437683, 27.609814, 38.536026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461826, 27.466763, 38.163261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265800, 0.894146, -0.360352,
		0.962137, 0.269451, -0.041091,
		0.060356, -0.357630, -0.931911,
		40.479935, 27.359474, 37.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326340, 28.262386, 38.204655>,  <40.437683, 27.609814, 38.536026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326340, 28.262386, 38.204655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 27.996778, 37.908329>,  <40.261497, 27.837414, 37.730534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 27.996778, 37.908329>,  <40.326340, 28.262386, 38.204655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285812, 27.996778, 37.908329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214033, 0.741760, -0.635595,
		0.971558, 0.094163, -0.217274,
		-0.101316, -0.664021, -0.740817,
		40.255417, 27.797571, 37.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753399, 28.499155, 37.659271>,  <40.326340, 28.262386, 38.204655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753399, 28.499155, 37.659271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474194, 28.253832, 37.511417>,  <40.306671, 28.106638, 37.422703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474194, 28.253832, 37.511417>,  <40.753399, 28.499155, 37.659271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474194, 28.253832, 37.511417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143956, 0.625839, -0.766552,
		0.701466, -0.481851, -0.525133,
		-0.698013, -0.613307, -0.369639,
		40.264790, 28.069839, 37.400524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817417, 28.346783, 36.941715>,  <40.753399, 28.499155, 37.659271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817417, 28.346783, 36.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425533, 28.268747, 36.960125>,  <40.190403, 28.221926, 36.971172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425533, 28.268747, 36.960125>,  <40.817417, 28.346783, 36.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425533, 28.268747, 36.960125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137397, 0.486433, -0.862847,
		0.145944, -0.851659, -0.503366,
		-0.979705, -0.195088, 0.046023,
		40.131622, 28.210220, 36.973930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507256, 28.059006, 36.335091>,  <40.817417, 28.346783, 36.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507256, 28.059006, 36.335091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212147, 28.248411, 36.527542>,  <40.035084, 28.362055, 36.643013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212147, 28.248411, 36.527542>,  <40.507256, 28.059006, 36.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212147, 28.248411, 36.527542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188400, 0.539973, -0.820326,
		-0.648232, -0.695854, -0.309164,
		-0.737767, 0.473515, 0.481127,
		39.990818, 28.390465, 36.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210247, 28.328850, 35.740601>,  <40.507256, 28.059006, 36.335091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210247, 28.328850, 35.740601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079269, 28.561386, 36.038548>,  <40.000683, 28.700909, 36.217316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079269, 28.561386, 36.038548>,  <40.210247, 28.328850, 35.740601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079269, 28.561386, 36.038548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216314, 0.721265, -0.658016,
		-0.919777, -0.376586, -0.110420,
		-0.327442, 0.581343, 0.744864,
		39.981037, 28.735788, 36.262005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709602, 28.341864, 35.258381>,  <40.210247, 28.328850, 35.740601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709602, 28.341864, 35.258381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439781, 28.448250, 35.533844>,  <39.277889, 28.512081, 35.699120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439781, 28.448250, 35.533844>,  <39.709602, 28.341864, 35.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439781, 28.448250, 35.533844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398721, 0.653827, -0.643065,
		-0.621294, -0.708360, -0.334993,
		-0.674549, 0.265963, 0.688656,
		39.237415, 28.528038, 35.740440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927654, 28.374149, 34.960140>,  <39.709602, 28.341864, 35.258381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927654, 28.374149, 34.960140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065567, 28.613997, 35.249023>,  <39.148315, 28.757904, 35.422352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065567, 28.613997, 35.249023>,  <38.927654, 28.374149, 34.960140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065567, 28.613997, 35.249023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255820, 0.800284, -0.542312,
		-0.903151, 0.002224, 0.429317,
		0.344782, 0.599618, 0.722208,
		39.169003, 28.793882, 35.465687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368111, 28.833706, 35.186348>,  <38.927654, 28.374149, 34.960140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368111, 28.833706, 35.186348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727165, 28.998024, 35.250217>,  <38.942596, 29.096615, 35.288540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727165, 28.998024, 35.250217>,  <38.368111, 28.833706, 35.186348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727165, 28.998024, 35.250217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327337, 0.863984, -0.382598,
		-0.295124, 0.291168, 0.910013,
		0.897637, 0.410794, 0.159672,
		38.996456, 29.121262, 35.298119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312801, 29.333063, 35.716331>,  <38.368111, 28.833706, 35.186348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312801, 29.333063, 35.716331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668694, 29.497160, 35.796421>,  <38.882229, 29.595617, 35.844475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668694, 29.497160, 35.796421>,  <38.312801, 29.333063, 35.716331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668694, 29.497160, 35.796421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289033, 0.845752, -0.448512,
		-0.353333, 0.341183, 0.871062,
		0.889728, 0.410240, 0.200219,
		38.935612, 29.620232, 35.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256149, 30.093351, 35.975658>,  <38.312801, 29.333063, 35.716331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256149, 30.093351, 35.975658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613834, 30.037157, 35.805649>,  <38.828445, 30.003441, 35.703644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613834, 30.037157, 35.805649>,  <38.256149, 30.093351, 35.975658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613834, 30.037157, 35.805649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171599, 0.769367, -0.615328,
		0.413443, 0.623169, 0.663871,
		0.894214, -0.140483, -0.425025,
		38.882099, 29.995012, 35.678143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664730, 30.661850, 36.056644>,  <38.256149, 30.093351, 35.975658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664730, 30.661850, 36.056644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832859, 30.488487, 35.737774>,  <38.933735, 30.384470, 35.546452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832859, 30.488487, 35.737774>,  <38.664730, 30.661850, 36.056644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832859, 30.488487, 35.737774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059823, 0.889875, -0.452264,
		0.905400, 0.142408, 0.399964,
		0.420324, -0.433407, -0.797174,
		38.958958, 30.358465, 35.498623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089874, 31.220308, 35.858665>,  <38.664730, 30.661850, 36.056644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089874, 31.220308, 35.858665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055275, 30.984875, 35.537148>,  <39.034515, 30.843615, 35.344238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055275, 30.984875, 35.537148>,  <39.089874, 31.220308, 35.858665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055275, 30.984875, 35.537148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223062, 0.774895, -0.591423,
		0.970959, -0.230451, 0.064267,
		-0.086494, -0.588583, -0.803796,
		39.029327, 30.808300, 35.296009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778748, 31.331017, 35.432526>,  <39.089874, 31.220308, 35.858665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778748, 31.331017, 35.432526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472286, 31.195398, 35.214149>,  <39.288410, 31.114027, 35.083122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472286, 31.195398, 35.214149>,  <39.778748, 31.331017, 35.432526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472286, 31.195398, 35.214149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185821, 0.696352, -0.693228,
		0.615205, -0.632568, -0.470511,
		-0.766155, -0.339046, -0.545944,
		39.242439, 31.093685, 35.050365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045834, 31.372690, 34.745327>,  <39.778748, 31.331017, 35.432526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045834, 31.372690, 34.745327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650780, 31.409370, 34.694473>,  <39.413746, 31.431377, 34.663960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650780, 31.409370, 34.694473>,  <40.045834, 31.372690, 34.745327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650780, 31.409370, 34.694473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156671, 0.603942, -0.781478,
		0.005122, -0.791736, -0.610842,
		-0.987638, 0.091699, -0.127135,
		39.354488, 31.436880, 34.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929256, 31.413855, 33.986496>,  <40.045834, 31.372690, 34.745327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929256, 31.413855, 33.986496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559124, 31.502022, 34.109898>,  <39.337044, 31.554922, 34.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559124, 31.502022, 34.109898>,  <39.929256, 31.413855, 33.986496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559124, 31.502022, 34.109898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104732, 0.633409, -0.766697,
		-0.364400, -0.741761, -0.563030,
		-0.925335, 0.220417, 0.308500,
		39.281525, 31.568148, 34.202446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647110, 31.557554, 33.388924>,  <39.929256, 31.413855, 33.986496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647110, 31.557554, 33.388924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392467, 31.717268, 33.652832>,  <39.239681, 31.813097, 33.811176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392467, 31.717268, 33.652832>,  <39.647110, 31.557554, 33.388924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392467, 31.717268, 33.652832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105668, 0.802298, -0.587496,
		-0.763912, -0.443722, -0.468559,
		-0.636610, 0.399284, 0.659773,
		39.201485, 31.837053, 33.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001060, 31.605484, 33.024857>,  <39.647110, 31.557554, 33.388924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001060, 31.605484, 33.024857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965343, 31.866934, 33.325470>,  <38.943913, 32.023804, 33.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965343, 31.866934, 33.325470>,  <39.001060, 31.605484, 33.024857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965343, 31.866934, 33.325470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242181, 0.717653, -0.652933,
		-0.966114, -0.240306, 0.094218,
		-0.089288, 0.653626, 0.751532,
		38.938557, 32.063023, 33.550930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745186, 31.819630, 32.726059>,  <39.001060, 31.605484, 33.024857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745186, 31.819630, 32.726059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960857, 32.031929, 32.987625>,  <40.090260, 32.159309, 33.144566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960857, 32.031929, 32.987625>,  <39.745186, 31.819630, 32.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960857, 32.031929, 32.987625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838625, -0.266936, -0.474820,
		-0.077457, 0.804396, -0.589022,
		0.539174, 0.530746, 0.653911,
		40.122608, 32.191154, 33.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307949, 32.207317, 32.478470>,  <39.745186, 31.819630, 32.726059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307949, 32.207317, 32.478470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468357, 32.135941, 32.837879>,  <40.564602, 32.093113, 33.053524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468357, 32.135941, 32.837879>,  <40.307949, 32.207317, 32.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468357, 32.135941, 32.837879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878917, -0.201558, -0.432296,
		0.258244, 0.963085, 0.076007,
		0.401018, -0.178441, 0.898523,
		40.588661, 32.082409, 33.107437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094505, 32.476341, 32.656918>,  <40.307949, 32.207317, 32.478470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094505, 32.476341, 32.656918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098820, 32.129055, 32.855343>,  <41.101410, 31.920683, 32.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098820, 32.129055, 32.855343>,  <41.094505, 32.476341, 32.656918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098820, 32.129055, 32.855343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999615, 0.022038, 0.016837,
		-0.025550, 0.495690, 0.868124,
		0.010786, -0.868220, 0.496062,
		41.102055, 31.868589, 33.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327755, 32.447495, 33.318253>,  <41.094505, 32.476341, 32.656918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327755, 32.447495, 33.318253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449329, 32.104824, 33.151527>,  <41.522274, 31.899221, 33.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449329, 32.104824, 33.151527>,  <41.327755, 32.447495, 33.318253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449329, 32.104824, 33.151527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950778, 0.245033, 0.189685,
		-0.060367, -0.453944, 0.888983,
		0.303937, -0.856676, -0.416808,
		41.540512, 31.847822, 33.026485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260342, 32.673565, 33.926582>,  <41.327755, 32.447495, 33.318253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260342, 32.673565, 33.926582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 32.994381, 33.786152>,  <41.569588, 33.186871, 33.701893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 32.994381, 33.786152>,  <41.260342, 32.673565, 33.926582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453621, 32.994381, 33.786152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670955, -0.081627, 0.736992,
		0.562439, -0.591667, -0.577574,
		0.483199, 0.802039, -0.351072,
		41.598579, 33.234993, 33.680832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015549, 32.561111, 33.986977>,  <41.260342, 32.673565, 33.926582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015549, 32.561111, 33.986977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954052, 32.956017, 33.970573>,  <41.917156, 33.192959, 33.960732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954052, 32.956017, 33.970573>,  <42.015549, 32.561111, 33.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954052, 32.956017, 33.970573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741216, 0.142672, 0.655930,
		0.653424, 0.070445, -0.753707,
		-0.153739, 0.987260, -0.041011,
		41.907928, 33.252193, 33.958271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560047, 33.023800, 33.828037>,  <42.015549, 32.561111, 33.986977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560047, 33.023800, 33.828037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341373, 33.210522, 34.106098>,  <42.210171, 33.322556, 34.272934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341373, 33.210522, 34.106098>,  <42.560047, 33.023800, 33.828037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341373, 33.210522, 34.106098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832512, 0.213981, 0.511014,
		0.089797, 0.858081, -0.505602,
		-0.546681, 0.466808, 0.695148,
		42.177368, 33.350563, 34.314644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779163, 33.690861, 33.989922>,  <42.560047, 33.023800, 33.828037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779163, 33.690861, 33.989922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704548, 33.723171, 34.381569>,  <42.659779, 33.742558, 34.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704548, 33.723171, 34.381569>,  <42.779163, 33.690861, 33.989922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704548, 33.723171, 34.381569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956352, 0.243109, 0.162140,
		-0.224936, 0.966630, -0.122600,
		-0.186535, 0.080778, 0.979122,
		42.648586, 33.747406, 34.675304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896614, 34.404041, 34.394867>,  <42.779163, 33.690861, 33.989922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896614, 34.404041, 34.394867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964264, 34.077374, 34.615570>,  <43.004852, 33.881371, 34.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964264, 34.077374, 34.615570>,  <42.896614, 34.404041, 34.394867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964264, 34.077374, 34.615570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973660, 0.225299, 0.035032,
		-0.152921, 0.531304, 0.833265,
		0.169121, -0.816674, 0.551763,
		43.014999, 33.832371, 34.781097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278549, 34.586727, 34.990597>,  <42.896614, 34.404041, 34.394867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278549, 34.586727, 34.990597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337196, 34.199306, 34.910183>,  <43.372387, 33.966854, 34.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337196, 34.199306, 34.910183>,  <43.278549, 34.586727, 34.990597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337196, 34.199306, 34.910183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989189, 0.143042, 0.032301,
		-0.002529, -0.203597, 0.979051,
		0.146622, -0.968549, -0.201035,
		43.381184, 33.908741, 34.849873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714355, 34.266724, 35.496063>,  <43.278549, 34.586727, 34.990597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714355, 34.266724, 35.496063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745575, 34.071362, 35.148415>,  <43.764309, 33.954144, 34.939827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745575, 34.071362, 35.148415>,  <43.714355, 34.266724, 35.496063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745575, 34.071362, 35.148415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971523, 0.232895, -0.043629,
		0.223722, -0.840963, 0.492676,
		0.078052, -0.488407, -0.869118,
		43.768990, 33.924839, 34.887680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400845, 33.884945, 35.367168>,  <43.714355, 34.266724, 35.496063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400845, 33.884945, 35.367168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243092, 33.995739, 35.016685>,  <44.148438, 34.062218, 34.806396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243092, 33.995739, 35.016685>,  <44.400845, 33.884945, 35.367168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243092, 33.995739, 35.016685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917752, 0.167280, -0.360206,
		0.046799, -0.946200, -0.320179,
		-0.394387, 0.276987, -0.876206,
		44.124775, 34.078835, 34.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782978, 33.588795, 34.903259>,  <44.400845, 33.884945, 35.367168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782978, 33.588795, 34.903259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625069, 33.923225, 34.750870>,  <44.530323, 34.123882, 34.659435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625069, 33.923225, 34.750870>,  <44.782978, 33.588795, 34.903259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625069, 33.923225, 34.750870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891815, 0.248969, -0.377730,
		-0.220959, -0.488874, -0.843907,
		-0.394769, 0.836072, -0.380973,
		44.506638, 34.174046, 34.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108047, 33.725365, 34.183739>,  <44.782978, 33.588795, 34.903259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108047, 33.725365, 34.183739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964321, 34.054951, 34.358997>,  <44.878086, 34.252701, 34.464153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964321, 34.054951, 34.358997>,  <45.108047, 33.725365, 34.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964321, 34.054951, 34.358997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789586, 0.518686, -0.327899,
		-0.497439, 0.228136, -0.836964,
		-0.359316, 0.823965, 0.438148,
		44.856525, 34.302139, 34.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084690, 34.270191, 33.730606>,  <45.108047, 33.725365, 34.183739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084690, 34.270191, 33.730606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138065, 34.400307, 34.105068>,  <45.170090, 34.478374, 34.329746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138065, 34.400307, 34.105068>,  <45.084690, 34.270191, 33.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138065, 34.400307, 34.105068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888054, 0.380079, -0.258652,
		-0.439948, 0.865868, -0.238155,
		0.133441, 0.325287, 0.936153,
		45.178097, 34.497894, 34.385914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576565, 34.796841, 33.715961>,  <45.084690, 34.270191, 33.730606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576565, 34.796841, 33.715961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614113, 34.756657, 34.112164>,  <45.636642, 34.732548, 34.349884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614113, 34.756657, 34.112164>,  <45.576565, 34.796841, 33.715961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614113, 34.756657, 34.112164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985544, 0.150316, -0.078152,
		-0.141038, 0.983520, 0.113119,
		0.093868, -0.100461, 0.990503,
		45.642273, 34.726517, 34.409313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032257, 35.360100, 34.037937>,  <45.576565, 34.796841, 33.715961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032257, 35.360100, 34.037937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031929, 35.021896, 34.251518>,  <46.031734, 34.818974, 34.379669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031929, 35.021896, 34.251518>,  <46.032257, 35.360100, 34.037937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031929, 35.021896, 34.251518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993871, 0.058339, 0.093901,
		-0.110545, 0.530759, 0.840282,
		-0.000817, -0.845512, 0.533955,
		46.031685, 34.768242, 34.411705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235779, 35.437046, 34.712029>,  <46.032257, 35.360100, 34.037937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235779, 35.437046, 34.712029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339352, 35.070587, 34.589634>,  <46.401493, 34.850712, 34.516197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339352, 35.070587, 34.589634>,  <46.235779, 35.437046, 34.712029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339352, 35.070587, 34.589634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963428, 0.267600, 0.014044,
		0.069015, -0.298431, 0.951933,
		0.258929, -0.916149, -0.305986,
		46.417030, 34.795742, 34.497837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865482, 35.497078, 34.992615>,  <46.235779, 35.437046, 34.712029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865482, 35.497078, 34.992615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879173, 35.233391, 34.692146>,  <46.887386, 35.075180, 34.511864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879173, 35.233391, 34.692146>,  <46.865482, 35.497078, 34.992615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879173, 35.233391, 34.692146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976079, 0.183519, -0.116577,
		0.214705, -0.729217, 0.649727,
		0.034227, -0.659214, -0.751176,
		46.889442, 35.035625, 34.466793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223740, 34.863068, 35.061966>,  <46.865482, 35.497078, 34.992615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223740, 34.863068, 35.061966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231544, 35.036461, 34.701584>,  <47.236229, 35.140495, 34.485355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231544, 35.036461, 34.701584>,  <47.223740, 34.863068, 35.061966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231544, 35.036461, 34.701584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867392, 0.440824, 0.230881,
		0.497243, -0.785982, -0.367398,
		0.019511, 0.433482, -0.900951,
		47.237396, 35.166504, 34.431297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922909, 34.711929, 34.981499>,  <47.223740, 34.863068, 35.061966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922909, 34.711929, 34.981499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827526, 35.003487, 34.724796>,  <47.770298, 35.178421, 34.570774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827526, 35.003487, 34.724796>,  <47.922909, 34.711929, 34.981499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827526, 35.003487, 34.724796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872064, 0.451512, 0.188787,
		0.427368, -0.514639, -0.743306,
		-0.238455, 0.728892, -0.641760,
		47.755989, 35.222153, 34.532269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.161732, 33.255558, 25.246248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828732, 33.476776, 25.259388>,  <33.628933, 33.609509, 25.267271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828732, 33.476776, 25.259388>,  <34.161732, 33.255558, 25.246248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828732, 33.476776, 25.259388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168667, -0.309476, 0.935829,
		0.527725, 0.773539, 0.350920,
		-0.832501, 0.553048, 0.032848,
		33.578979, 33.642693, 25.269243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268406, 33.779366, 25.778133>,  <34.161732, 33.255558, 25.246248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268406, 33.779366, 25.778133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.877125, 33.715923, 25.724518>,  <33.642357, 33.677856, 25.692348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.877125, 33.715923, 25.724518>,  <34.268406, 33.779366, 25.778133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877125, 33.715923, 25.724518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069650, -0.357487, 0.931317,
		-0.195628, 0.920352, 0.338647,
		-0.978202, -0.158604, -0.134037,
		33.583664, 33.668343, 25.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908127, 34.320541, 26.311853>,  <34.268406, 33.779366, 25.778133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908127, 34.320541, 26.311853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627106, 34.051270, 26.219559>,  <33.458492, 33.889706, 26.164183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627106, 34.051270, 26.219559>,  <33.908127, 34.320541, 26.311853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627106, 34.051270, 26.219559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141691, -0.185418, 0.972391,
		-0.697379, 0.715853, 0.034883,
		-0.702556, -0.673183, -0.230737,
		33.416340, 33.849316, 26.150337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222492, 34.415565, 26.769875>,  <33.908127, 34.320541, 26.311853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222492, 34.415565, 26.769875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204781, 34.040329, 26.632452>,  <33.194153, 33.815189, 26.549999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204781, 34.040329, 26.632452>,  <33.222492, 34.415565, 26.769875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204781, 34.040329, 26.632452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254034, -0.322017, 0.912015,
		-0.966181, 0.127658, -0.224048,
		-0.044279, -0.938088, -0.343556,
		33.191498, 33.758904, 26.529385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717064, 33.992241, 27.230879>,  <33.222492, 34.415565, 26.769875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717064, 33.992241, 27.230879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947945, 33.730274, 27.035769>,  <33.086472, 33.573093, 26.918703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947945, 33.730274, 27.035769>,  <32.717064, 33.992241, 27.230879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947945, 33.730274, 27.035769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145820, -0.505059, 0.850678,
		-0.803478, -0.562139, -0.196020,
		0.577200, -0.654917, -0.487774,
		33.121105, 33.533798, 26.889437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355099, 33.348591, 27.242262>,  <32.717064, 33.992241, 27.230879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355099, 33.348591, 27.242262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.745163, 33.279205, 27.187172>,  <32.979202, 33.237576, 27.154118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.745163, 33.279205, 27.187172>,  <32.355099, 33.348591, 27.242262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745163, 33.279205, 27.187172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038739, -0.478647, 0.877152,
		-0.218072, -0.860702, -0.460040,
		0.975164, -0.173461, -0.137722,
		33.037712, 33.227165, 27.145855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477539, 32.631042, 27.381119>,  <32.355099, 33.348591, 27.242262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477539, 32.631042, 27.381119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835815, 32.804070, 27.422352>,  <33.050781, 32.907887, 27.447092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835815, 32.804070, 27.422352>,  <32.477539, 32.631042, 27.381119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835815, 32.804070, 27.422352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148823, -0.510044, 0.847176,
		0.419040, -0.743464, -0.521217,
		0.895688, 0.432570, 0.103084,
		33.104523, 32.933842, 27.453278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046001, 32.001320, 27.488878>,  <32.477539, 32.631042, 27.381119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046001, 32.001320, 27.488878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180687, 32.352875, 27.624043>,  <33.261497, 32.563808, 27.705141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180687, 32.352875, 27.624043>,  <33.046001, 32.001320, 27.488878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180687, 32.352875, 27.624043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426380, -0.462280, 0.777494,
		0.839537, -0.117716, -0.530396,
		0.336715, 0.878886, 0.337910,
		33.281700, 32.616539, 27.725416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551815, 31.839342, 27.831062>,  <33.046001, 32.001320, 27.488878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551815, 31.839342, 27.831062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512295, 32.205849, 27.986340>,  <33.488583, 32.425751, 28.079506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512295, 32.205849, 27.986340>,  <33.551815, 31.839342, 27.831062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512295, 32.205849, 27.986340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377340, -0.326474, 0.866620,
		0.920790, 0.232104, -0.313488,
		-0.098800, 0.916266, 0.388195,
		33.482655, 32.480728, 28.102798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190418, 31.924431, 28.208202>,  <33.551815, 31.839342, 27.831062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190418, 31.924431, 28.208202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955975, 32.209999, 28.361456>,  <33.815308, 32.381340, 28.453407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955975, 32.209999, 28.361456>,  <34.190418, 31.924431, 28.208202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955975, 32.209999, 28.361456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316969, -0.233144, 0.919334,
		0.745655, 0.660275, -0.089641,
		-0.586113, 0.713920, 0.383132,
		33.780140, 32.424175, 28.476395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595993, 32.272587, 28.575483>,  <34.190418, 31.924431, 28.208202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595993, 32.272587, 28.575483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238750, 32.404812, 28.697527>,  <34.024406, 32.484146, 28.770754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238750, 32.404812, 28.697527>,  <34.595993, 32.272587, 28.575483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238750, 32.404812, 28.697527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303484, -0.057894, 0.951076,
		0.332053, 0.942007, -0.048614,
		-0.893106, 0.330561, 0.305108,
		33.970818, 32.503979, 28.789059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703571, 32.735703, 29.098021>,  <34.595993, 32.272587, 28.575483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703571, 32.735703, 29.098021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331600, 32.607475, 29.170105>,  <34.108418, 32.530540, 29.213356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331600, 32.607475, 29.170105>,  <34.703571, 32.735703, 29.098021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331600, 32.607475, 29.170105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202373, -0.036925, 0.978612,
		-0.307055, 0.946506, 0.099212,
		-0.929926, -0.320566, 0.180209,
		34.052624, 32.511307, 29.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526985, 33.000877, 29.841692>,  <34.703571, 32.735703, 29.098021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526985, 33.000877, 29.841692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249107, 32.722393, 29.769367>,  <34.082382, 32.555302, 29.725973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249107, 32.722393, 29.769367>,  <34.526985, 33.000877, 29.841692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249107, 32.722393, 29.769367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037258, -0.285860, 0.957547,
		-0.718339, 0.658466, 0.224525,
		-0.694695, -0.696208, -0.180812,
		34.040699, 32.513531, 29.715124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090923, 33.100586, 30.373838>,  <34.526985, 33.000877, 29.841692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090923, 33.100586, 30.373838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030357, 32.733555, 30.226803>,  <33.994019, 32.513336, 30.138582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030357, 32.733555, 30.226803>,  <34.090923, 33.100586, 30.373838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030357, 32.733555, 30.226803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042170, -0.377533, 0.925035,
		-0.987571, 0.124559, 0.095857,
		-0.151411, -0.917580, -0.367588,
		33.984936, 32.458282, 30.116526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771420, 32.784611, 30.974686>,  <34.090923, 33.100586, 30.373838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771420, 32.784611, 30.974686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873508, 32.468357, 30.752064>,  <33.934761, 32.278603, 30.618490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873508, 32.468357, 30.752064>,  <33.771420, 32.784611, 30.974686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873508, 32.468357, 30.752064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012807, -0.572805, 0.819592,
		-0.966797, -0.216308, -0.136069,
		0.255225, -0.790636, -0.556556,
		33.950077, 32.231167, 30.585096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344639, 32.213604, 31.220785>,  <33.771420, 32.784611, 30.974686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344639, 32.213604, 31.220785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653870, 32.060833, 31.018211>,  <33.839409, 31.969170, 30.896667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653870, 32.060833, 31.018211>,  <33.344639, 32.213604, 31.220785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653870, 32.060833, 31.018211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151009, -0.664630, 0.731753,
		-0.616072, -0.642179, -0.456137,
		0.773079, -0.381932, -0.506435,
		33.885792, 31.946253, 30.866282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286648, 31.598440, 31.285255>,  <33.344639, 32.213604, 31.220785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286648, 31.598440, 31.285255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673923, 31.630035, 31.190283>,  <33.906288, 31.648993, 31.133299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673923, 31.630035, 31.190283>,  <33.286648, 31.598440, 31.285255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673923, 31.630035, 31.190283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226681, -0.678670, 0.698586,
		-0.105958, -0.730183, -0.674985,
		0.968188, 0.078986, -0.237429,
		33.964378, 31.653730, 31.119055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631592, 30.888428, 31.336487>,  <33.286648, 31.598440, 31.285255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631592, 30.888428, 31.336487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946163, 31.134937, 31.353180>,  <34.134907, 31.282843, 31.363195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946163, 31.134937, 31.353180>,  <33.631592, 30.888428, 31.336487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946163, 31.134937, 31.353180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361777, -0.514315, 0.777559,
		0.500651, -0.596395, -0.627424,
		0.786426, 0.616273, 0.041731,
		34.182091, 31.319818, 31.365700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159973, 30.416170, 31.186361>,  <33.631592, 30.888428, 31.336487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159973, 30.416170, 31.186361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276405, 30.733385, 31.400414>,  <34.346264, 30.923714, 31.528845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276405, 30.733385, 31.400414>,  <34.159973, 30.416170, 31.186361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276405, 30.733385, 31.400414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465484, -0.606074, 0.644979,
		0.835821, 0.061353, -0.545563,
		0.291081, 0.793038, 0.535128,
		34.363731, 30.971296, 31.560951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698490, 30.172697, 31.545376>,  <34.159973, 30.416170, 31.186361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698490, 30.172697, 31.545376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661499, 30.515854, 31.747553>,  <34.639305, 30.721748, 31.868858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661499, 30.515854, 31.747553>,  <34.698490, 30.172697, 31.545376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661499, 30.515854, 31.747553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332426, -0.451891, 0.827821,
		0.938585, 0.244575, -0.243396,
		-0.092476, 0.857891, 0.505441,
		34.633755, 30.773222, 31.899185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284515, 30.171621, 32.087646>,  <34.698490, 30.172697, 31.545376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284515, 30.171621, 32.087646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015038, 30.444921, 32.200287>,  <34.853352, 30.608902, 32.267872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015038, 30.444921, 32.200287>,  <35.284515, 30.171621, 32.087646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015038, 30.444921, 32.200287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200945, -0.197327, 0.959522,
		0.711161, 0.703015, -0.004357,
		-0.673699, 0.683251, 0.281598,
		34.812927, 30.649897, 32.284767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582569, 30.438286, 32.719101>,  <35.284515, 30.171621, 32.087646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582569, 30.438286, 32.719101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208229, 30.579170, 32.723553>,  <34.983624, 30.663702, 32.726223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208229, 30.579170, 32.723553>,  <35.582569, 30.438286, 32.719101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208229, 30.579170, 32.723553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061361, -0.193991, 0.979082,
		0.347005, 0.915595, 0.203159,
		-0.935854, 0.352213, 0.011134,
		34.927471, 30.684834, 32.726894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272312, 30.457668, 33.050964>,  <35.582569, 30.438286, 32.719101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272312, 30.457668, 33.050964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661758, 30.480581, 32.962605>,  <36.895424, 30.494329, 32.909588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661758, 30.480581, 32.962605>,  <36.272312, 30.457668, 33.050964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661758, 30.480581, 32.962605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226654, 0.130122, -0.965244,
		-0.026548, 0.989842, 0.139672,
		0.973614, 0.057283, -0.220897,
		36.953842, 30.497766, 32.896336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367069, 31.106026, 32.751717>,  <36.272312, 30.457668, 33.050964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367069, 31.106026, 32.751717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665897, 30.866047, 32.637211>,  <36.845196, 30.722059, 32.568508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665897, 30.866047, 32.637211>,  <36.367069, 31.106026, 32.751717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665897, 30.866047, 32.637211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019102, 0.411093, -0.911393,
		0.664469, 0.686344, 0.295656,
		0.747071, -0.599945, -0.286269,
		36.890018, 30.686064, 32.551331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770000, 31.572815, 32.482800>,  <36.367069, 31.106026, 32.751717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770000, 31.572815, 32.482800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854507, 31.216156, 32.322632>,  <36.905212, 31.002161, 32.226532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854507, 31.216156, 32.322632>,  <36.770000, 31.572815, 32.482800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854507, 31.216156, 32.322632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015706, 0.412710, -0.910727,
		0.977302, 0.186118, 0.101196,
		0.211267, -0.891645, -0.400419,
		36.917889, 30.948662, 32.202507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302204, 31.703741, 32.078907>,  <36.770000, 31.572815, 32.482800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302204, 31.703741, 32.078907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192688, 31.357157, 31.911917>,  <37.126980, 31.149206, 31.811722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192688, 31.357157, 31.911917>,  <37.302204, 31.703741, 32.078907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192688, 31.357157, 31.911917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249043, 0.355393, -0.900929,
		0.928987, -0.350635, 0.118482,
		-0.273790, -0.866459, -0.417479,
		37.110550, 31.097219, 31.786673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789051, 31.525833, 31.463903>,  <37.302204, 31.703741, 32.078907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789051, 31.525833, 31.463903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494850, 31.266157, 31.386351>,  <37.318329, 31.110352, 31.339819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494850, 31.266157, 31.386351>,  <37.789051, 31.525833, 31.463903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494850, 31.266157, 31.386351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071229, 0.210489, -0.974998,
		0.673767, -0.730924, -0.108574,
		-0.735503, -0.649188, -0.193884,
		37.274200, 31.071402, 31.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899925, 31.159647, 30.821018>,  <37.789051, 31.525833, 31.463903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899925, 31.159647, 30.821018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503132, 31.142591, 30.868605>,  <37.265057, 31.132359, 30.897156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503132, 31.142591, 30.868605>,  <37.899925, 31.159647, 30.821018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503132, 31.142591, 30.868605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125706, 0.236087, -0.963567,
		0.012997, -0.970796, -0.239554,
		-0.991982, -0.042637, 0.118966,
		37.205536, 31.129801, 30.904295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606236, 30.804216, 30.152328>,  <37.899925, 31.159647, 30.821018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606236, 30.804216, 30.152328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303078, 31.001072, 30.323624>,  <37.121181, 31.119186, 30.426401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303078, 31.001072, 30.323624>,  <37.606236, 30.804216, 30.152328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303078, 31.001072, 30.323624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378735, 0.202556, -0.903068,
		-0.531178, -0.846622, 0.032874,
		-0.757898, 0.492141, 0.428238,
		37.075706, 31.148714, 30.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128059, 30.646360, 29.731056>,  <37.606236, 30.804216, 30.152328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128059, 30.646360, 29.731056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982841, 30.966511, 29.921883>,  <36.895710, 31.158602, 30.036379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982841, 30.966511, 29.921883>,  <37.128059, 30.646360, 29.731056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982841, 30.966511, 29.921883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399398, 0.328906, -0.855746,
		-0.841831, -0.501214, 0.200262,
		-0.363045, 0.800378, 0.477068,
		36.873928, 31.206625, 30.065002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434155, 30.699280, 29.552269>,  <37.128059, 30.646360, 29.731056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434155, 30.699280, 29.552269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531025, 31.068209, 29.672712>,  <36.589149, 31.289566, 29.744978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531025, 31.068209, 29.672712>,  <36.434155, 30.699280, 29.552269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531025, 31.068209, 29.672712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188591, 0.349179, -0.917882,
		-0.951726, 0.165507, 0.258507,
		0.242181, 0.922324, 0.301110,
		36.603680, 31.344906, 29.763046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984051, 31.228987, 29.277048>,  <36.434155, 30.699280, 29.552269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984051, 31.228987, 29.277048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303501, 31.451042, 29.370010>,  <36.495171, 31.584276, 29.425787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303501, 31.451042, 29.370010>,  <35.984051, 31.228987, 29.277048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303501, 31.451042, 29.370010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036412, 0.430029, -0.902080,
		-0.600721, 0.711965, 0.363648,
		0.798629, 0.555140, 0.232404,
		36.543091, 31.617584, 29.439732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868980, 31.812302, 28.904734>,  <35.984051, 31.228987, 29.277048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868980, 31.812302, 28.904734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249043, 31.874908, 29.012585>,  <36.477081, 31.912472, 29.077295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249043, 31.874908, 29.012585>,  <35.868980, 31.812302, 28.904734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249043, 31.874908, 29.012585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106601, 0.649610, -0.752757,
		-0.292971, 0.743982, 0.600549,
		0.950160, 0.156517, 0.269627,
		36.534092, 31.921864, 29.093473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985107, 32.646328, 28.955019>,  <35.868980, 31.812302, 28.904734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985107, 32.646328, 28.955019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343307, 32.471943, 28.919210>,  <36.558228, 32.367313, 28.897726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343307, 32.471943, 28.919210>,  <35.985107, 32.646328, 28.955019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343307, 32.471943, 28.919210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272752, 0.696536, -0.663659,
		0.351683, 0.569892, 0.742659,
		0.895503, -0.435960, -0.089521,
		36.611958, 32.341156, 28.892355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344700, 33.191589, 28.916103>,  <35.985107, 32.646328, 28.955019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344700, 33.191589, 28.916103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586208, 32.904491, 28.777365>,  <36.731113, 32.732231, 28.694122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586208, 32.904491, 28.777365>,  <36.344700, 33.191589, 28.916103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586208, 32.904491, 28.777365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338369, 0.624711, -0.703735,
		0.721780, 0.307534, 0.620046,
		0.603772, -0.717745, -0.346844,
		36.767342, 32.689167, 28.673311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920258, 33.453178, 28.753302>,  <36.344700, 33.191589, 28.916103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920258, 33.453178, 28.753302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954041, 33.129318, 28.520981>,  <36.974308, 32.935001, 28.381588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954041, 33.129318, 28.520981>,  <36.920258, 33.453178, 28.753302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954041, 33.129318, 28.520981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229690, 0.583007, -0.779324,
		0.969593, -0.067588, 0.235206,
		0.084453, -0.809651, -0.580804,
		36.979378, 32.886421, 28.346741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482162, 33.549709, 28.323578>,  <36.920258, 33.453178, 28.753302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482162, 33.549709, 28.323578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240227, 33.288998, 28.140554>,  <37.095066, 33.132572, 28.030741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240227, 33.288998, 28.140554>,  <37.482162, 33.549709, 28.323578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240227, 33.288998, 28.140554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195855, 0.435174, -0.878786,
		0.771888, -0.621138, -0.135557,
		-0.604838, -0.651775, -0.457558,
		37.058777, 33.093464, 28.003286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763653, 33.311459, 27.649612>,  <37.482162, 33.549709, 28.323578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763653, 33.311459, 27.649612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381123, 33.204281, 27.602894>,  <37.151604, 33.139973, 27.574862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381123, 33.204281, 27.602894>,  <37.763653, 33.311459, 27.649612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381123, 33.204281, 27.602894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046991, 0.253452, -0.966206,
		0.288503, -0.929496, -0.229791,
		-0.956325, -0.267955, -0.116799,
		37.094223, 33.123898, 27.567854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827866, 33.011314, 27.062719>,  <37.763653, 33.311459, 27.649612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827866, 33.011314, 27.062719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441891, 33.108803, 27.101711>,  <37.210308, 33.167297, 27.125107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441891, 33.108803, 27.101711>,  <37.827866, 33.011314, 27.062719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441891, 33.108803, 27.101711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025358, 0.283074, -0.958763,
		-0.261270, -0.927613, -0.266967,
		-0.964933, 0.243726, 0.097481,
		37.152412, 33.181919, 27.130955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549927, 32.815693, 26.484335>,  <37.827866, 33.011314, 27.062719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549927, 32.815693, 26.484335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248093, 33.055008, 26.592154>,  <37.066994, 33.198597, 26.656845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248093, 33.055008, 26.592154>,  <37.549927, 32.815693, 26.484335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248093, 33.055008, 26.592154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147376, 0.245757, -0.958063,
		-0.639440, -0.762663, -0.097271,
		-0.754584, 0.598288, 0.269545,
		37.021717, 33.234493, 26.673018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.750977, 32.618584, 25.980774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719437, 32.983208, 26.142189>,  <36.700512, 33.201981, 26.239038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719437, 32.983208, 26.142189>,  <36.750977, 32.618584, 25.980774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719437, 32.983208, 26.142189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452294, 0.328027, -0.829354,
		-0.888377, -0.247910, 0.386429,
		-0.078846, 0.911559, 0.403540,
		36.695782, 33.256676, 26.263250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047520, 32.845558, 25.891388>,  <36.750977, 32.618584, 25.980774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047520, 32.845558, 25.891388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241177, 33.185818, 25.973368>,  <36.357372, 33.389973, 26.022554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241177, 33.185818, 25.973368>,  <36.047520, 32.845558, 25.891388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241177, 33.185818, 25.973368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363560, 0.408619, -0.837170,
		-0.795884, 0.330799, 0.507092,
		0.484142, 0.850648, 0.204948,
		36.386417, 33.441013, 26.034853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553574, 33.354786, 25.938412>,  <36.047520, 32.845558, 25.891388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553574, 33.354786, 25.938412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890278, 33.543240, 25.832977>,  <36.092300, 33.656311, 25.769716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890278, 33.543240, 25.832977>,  <35.553574, 33.354786, 25.938412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890278, 33.543240, 25.832977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450034, 0.342700, -0.824637,
		-0.298181, 0.812768, 0.500495,
		0.841759, 0.471131, -0.263586,
		36.142807, 33.684578, 25.753901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331619, 34.004490, 25.719488>,  <35.553574, 33.354786, 25.938412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331619, 34.004490, 25.719488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707943, 33.984215, 25.585432>,  <35.933735, 33.972050, 25.504999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707943, 33.984215, 25.585432>,  <35.331619, 34.004490, 25.719488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707943, 33.984215, 25.585432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257657, 0.535474, -0.804289,
		0.220227, 0.843029, 0.490716,
		0.940804, -0.050690, -0.335138,
		35.990185, 33.969009, 25.484890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477921, 34.708466, 25.489864>,  <35.331619, 34.004490, 25.719488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477921, 34.708466, 25.489864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683506, 34.425198, 25.296230>,  <35.806858, 34.255238, 25.180050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683506, 34.425198, 25.296230>,  <35.477921, 34.708466, 25.489864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683506, 34.425198, 25.296230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200895, 0.449262, -0.870520,
		0.833957, 0.544665, 0.088636,
		0.513962, -0.708169, -0.484086,
		35.837696, 34.212746, 25.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879684, 35.095894, 24.962381>,  <35.477921, 34.708466, 25.489864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879684, 35.095894, 24.962381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921906, 34.721508, 24.828026>,  <35.947239, 34.496876, 24.747412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921906, 34.721508, 24.828026>,  <35.879684, 35.095894, 24.962381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921906, 34.721508, 24.828026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037631, 0.341294, -0.939203,
		0.993701, 0.086498, 0.071247,
		0.105556, -0.935968, -0.335889,
		35.953571, 34.440716, 24.727259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454220, 35.086739, 24.661062>,  <35.879684, 35.095894, 24.962381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454220, 35.086739, 24.661062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285015, 34.767357, 24.489700>,  <36.183491, 34.575726, 24.386883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285015, 34.767357, 24.489700>,  <36.454220, 35.086739, 24.661062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285015, 34.767357, 24.489700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365811, 0.282065, -0.886917,
		0.829003, -0.531889, 0.172767,
		-0.423010, -0.798457, -0.428404,
		36.158112, 34.527821, 24.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923210, 34.813995, 24.188063>,  <36.454220, 35.086739, 24.661062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923210, 34.813995, 24.188063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557091, 34.696712, 24.077608>,  <36.337418, 34.626343, 24.011335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557091, 34.696712, 24.077608>,  <36.923210, 34.813995, 24.188063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557091, 34.696712, 24.077608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254794, 0.109459, -0.960780,
		0.311930, -0.949763, -0.025482,
		-0.915303, -0.293204, -0.276138,
		36.282501, 34.608753, 23.994766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019588, 34.380768, 23.551016>,  <36.923210, 34.813995, 24.188063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019588, 34.380768, 23.551016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628387, 34.459751, 23.524130>,  <36.393665, 34.507141, 23.507998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628387, 34.459751, 23.524130>,  <37.019588, 34.380768, 23.551016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628387, 34.459751, 23.524130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106996, 0.198296, -0.974285,
		-0.179050, -0.960047, -0.215062,
		-0.978005, 0.197457, -0.067217,
		36.334988, 34.518990, 23.503965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833363, 34.128048, 22.906807>,  <37.019588, 34.380768, 23.551016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833363, 34.128048, 22.906807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528561, 34.371655, 22.994852>,  <36.345680, 34.517818, 23.047678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528561, 34.371655, 22.994852>,  <36.833363, 34.128048, 22.906807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528561, 34.371655, 22.994852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088224, 0.239102, -0.966978,
		-0.641535, -0.756260, -0.128467,
		-0.762004, 0.609016, 0.220112,
		36.299961, 34.554359, 23.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356560, 33.992878, 22.429600>,  <36.833363, 34.128048, 22.906807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356560, 33.992878, 22.429600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276134, 34.350136, 22.590532>,  <36.227879, 34.564491, 22.687092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276134, 34.350136, 22.590532>,  <36.356560, 33.992878, 22.429600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276134, 34.350136, 22.590532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136523, 0.381159, -0.914374,
		-0.970018, -0.238773, 0.045298,
		-0.201062, 0.893143, 0.402329,
		36.215816, 34.618080, 22.711231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843197, 34.238995, 21.970284>,  <36.356560, 33.992878, 22.429600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843197, 34.238995, 21.970284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963711, 34.558941, 22.177916>,  <36.036018, 34.750908, 22.302496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963711, 34.558941, 22.177916>,  <35.843197, 34.238995, 21.970284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963711, 34.558941, 22.177916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193375, 0.584317, -0.788150,
		-0.933721, 0.137078, 0.330718,
		0.301282, 0.799865, 0.519081,
		36.054096, 34.798901, 22.333639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337223, 34.898079, 21.791918>,  <35.843197, 34.238995, 21.970284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337223, 34.898079, 21.791918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707840, 34.997086, 21.905235>,  <35.930210, 35.056492, 21.973225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707840, 34.997086, 21.905235>,  <35.337223, 34.898079, 21.791918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707840, 34.997086, 21.905235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088348, 0.588819, -0.803422,
		-0.365672, 0.769432, 0.523698,
		0.926541, 0.247521, 0.283292,
		35.985802, 35.071342, 21.990223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371002, 35.511044, 21.479595>,  <35.337223, 34.898079, 21.791918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371002, 35.511044, 21.479595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760685, 35.435383, 21.528826>,  <35.994495, 35.389984, 21.558365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760685, 35.435383, 21.528826>,  <35.371002, 35.511044, 21.479595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760685, 35.435383, 21.528826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217722, 0.644333, -0.733097,
		0.059366, 0.740983, 0.668895,
		0.974204, -0.189154, 0.123076,
		36.052948, 35.378635, 21.565748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696930, 36.132790, 21.310537>,  <35.371002, 35.511044, 21.479595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696930, 36.132790, 21.310537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001621, 35.873863, 21.299580>,  <36.184437, 35.718506, 21.293005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001621, 35.873863, 21.299580>,  <35.696930, 36.132790, 21.310537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001621, 35.873863, 21.299580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406218, 0.510104, -0.758143,
		0.504731, 0.566373, 0.651513,
		0.761730, -0.647314, -0.027394,
		36.230141, 35.679668, 21.291361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289154, 36.558903, 21.406614>,  <35.696930, 36.132790, 21.310537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289154, 36.558903, 21.406614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363613, 36.210144, 21.225441>,  <36.408291, 36.000889, 21.116737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363613, 36.210144, 21.225441>,  <36.289154, 36.558903, 21.406614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363613, 36.210144, 21.225441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306868, 0.489521, -0.816211,
		0.933370, 0.012948, 0.358681,
		0.186150, -0.871895, -0.452931,
		36.419456, 35.948574, 21.089561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900795, 36.776878, 21.021755>,  <36.289154, 36.558903, 21.406614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900795, 36.776878, 21.021755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817085, 36.422592, 20.856007>,  <36.766857, 36.210018, 20.756557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817085, 36.422592, 20.856007>,  <36.900795, 36.776878, 21.021755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817085, 36.422592, 20.856007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135292, 0.393455, -0.909335,
		0.968452, -0.246365, 0.037489,
		-0.209278, -0.885719, -0.414373,
		36.754303, 36.156876, 20.731695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380993, 36.635323, 20.555271>,  <36.900795, 36.776878, 21.021755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380993, 36.635323, 20.555271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074051, 36.409401, 20.433840>,  <36.889885, 36.273849, 20.360981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074051, 36.409401, 20.433840>,  <37.380993, 36.635323, 20.555271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074051, 36.409401, 20.433840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084677, 0.380035, -0.921088,
		0.635606, -0.732508, -0.243796,
		-0.767356, -0.564806, -0.303579,
		36.843845, 36.239960, 20.342766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605412, 36.472233, 19.939016>,  <37.380993, 36.635323, 20.555271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605412, 36.472233, 19.939016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208378, 36.424564, 19.948570>,  <36.970158, 36.395962, 19.954304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208378, 36.424564, 19.948570>,  <37.605412, 36.472233, 19.939016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208378, 36.424564, 19.948570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086712, 0.556615, -0.826233,
		0.085168, -0.822179, -0.562822,
		-0.992586, -0.119172, 0.023887,
		36.910603, 36.388813, 19.955736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465084, 36.209431, 19.271904>,  <37.605412, 36.472233, 19.939016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465084, 36.209431, 19.271904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134148, 36.374935, 19.423855>,  <36.935585, 36.474236, 19.515026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134148, 36.374935, 19.423855>,  <37.465084, 36.209431, 19.271904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134148, 36.374935, 19.423855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124328, 0.524633, -0.842201,
		-0.547763, -0.744020, -0.382610,
		-0.827344, 0.413757, 0.379877,
		36.885944, 36.499062, 19.537817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015404, 36.312714, 18.676830>,  <37.465084, 36.209431, 19.271904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015404, 36.312714, 18.676830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872284, 36.542431, 18.971357>,  <36.786411, 36.680264, 19.148073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872284, 36.542431, 18.971357>,  <37.015404, 36.312714, 18.676830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872284, 36.542431, 18.971357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148425, 0.743518, -0.652036,
		-0.921929, -0.342584, -0.180787,
		-0.357795, 0.574298, 0.736318,
		36.764946, 36.714722, 19.192253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317898, 36.601555, 18.415253>,  <37.015404, 36.312714, 18.676830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317898, 36.601555, 18.415253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430344, 36.827240, 18.725771>,  <36.497810, 36.962650, 18.912081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430344, 36.827240, 18.725771>,  <36.317898, 36.601555, 18.415253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430344, 36.827240, 18.725771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261782, 0.823322, -0.503599,
		-0.923279, -0.061650, 0.379151,
		0.281117, 0.564217, 0.776294,
		36.514679, 36.996506, 18.958660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739105, 37.067703, 18.618971>,  <36.317898, 36.601555, 18.415253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739105, 37.067703, 18.618971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113377, 37.189323, 18.690580>,  <36.337940, 37.262295, 18.733547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113377, 37.189323, 18.690580>,  <35.739105, 37.067703, 18.618971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113377, 37.189323, 18.690580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152064, 0.805334, -0.572986,
		-0.318392, 0.508910, 0.799773,
		0.935683, 0.304051, 0.179025,
		36.394081, 37.280540, 18.744287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794628, 37.780117, 18.976784>,  <35.739105, 37.067703, 18.618971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794628, 37.780117, 18.976784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113232, 37.735878, 18.739014>,  <36.304394, 37.709335, 18.596352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113232, 37.735878, 18.739014>,  <35.794628, 37.780117, 18.976784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113232, 37.735878, 18.739014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230644, 0.853213, -0.467794,
		0.558908, 0.509702, 0.654083,
		0.796508, -0.110594, -0.594427,
		36.352184, 37.702702, 18.560686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328735, 38.230572, 18.709484>,  <35.794628, 37.780117, 18.976784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328735, 38.230572, 18.709484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942532, 38.288982, 18.623264>,  <34.710808, 38.324028, 18.571533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942532, 38.288982, 18.623264>,  <35.328735, 38.230572, 18.709484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942532, 38.288982, 18.623264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257364, -0.410138, 0.874958,
		0.039363, 0.900257, 0.433575,
		-0.965513, 0.146028, -0.215549,
		34.652878, 38.332790, 18.558599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009403, 38.388981, 19.405231>,  <35.328735, 38.230572, 18.709484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009403, 38.388981, 19.405231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708805, 38.250095, 19.180841>,  <34.528446, 38.166763, 19.046207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708805, 38.250095, 19.180841>,  <35.009403, 38.388981, 19.405231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708805, 38.250095, 19.180841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334445, -0.532451, 0.777588,
		-0.568679, 0.771972, 0.284013,
		-0.751499, -0.347211, -0.560976,
		34.483356, 38.145931, 19.012548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374493, 38.492527, 19.830076>,  <35.009403, 38.388981, 19.405231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374493, 38.492527, 19.830076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277115, 38.216812, 19.557131>,  <34.218689, 38.051384, 19.393364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277115, 38.216812, 19.557131>,  <34.374493, 38.492527, 19.830076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277115, 38.216812, 19.557131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341890, -0.597388, 0.725423,
		-0.907660, 0.409893, -0.090229,
		-0.243444, -0.689286, -0.682363,
		34.204082, 38.010025, 19.352423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690376, 38.242180, 20.030531>,  <34.374493, 38.492527, 19.830076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690376, 38.242180, 20.030531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843845, 37.966431, 19.784750>,  <33.935928, 37.800980, 19.637281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843845, 37.966431, 19.784750>,  <33.690376, 38.242180, 20.030531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843845, 37.966431, 19.784750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506925, -0.713388, 0.483843,
		-0.771894, 0.125844, -0.623171,
		0.383675, -0.689377, -0.614454,
		33.958946, 37.759617, 19.600414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183037, 37.942944, 19.941055>,  <33.690376, 38.242180, 20.030531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183037, 37.942944, 19.941055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476131, 37.684883, 19.854441>,  <33.651989, 37.530048, 19.802471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476131, 37.684883, 19.854441>,  <33.183037, 37.942944, 19.941055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476131, 37.684883, 19.854441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388344, -0.657705, 0.645455,
		-0.558829, -0.388856, -0.732462,
		0.732733, -0.645147, -0.216535,
		33.695950, 37.491341, 19.789480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819233, 37.330292, 20.234051>,  <33.183037, 37.942944, 19.941055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819233, 37.330292, 20.234051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206268, 37.250023, 20.172733>,  <33.438492, 37.201862, 20.135942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206268, 37.250023, 20.172733>,  <32.819233, 37.330292, 20.234051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206268, 37.250023, 20.172733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009715, -0.577023, 0.816670,
		-0.252333, -0.791693, -0.556373,
		0.967592, -0.200667, -0.153293,
		33.496544, 37.189823, 20.126745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922714, 36.579868, 20.187309>,  <32.819233, 37.330292, 20.234051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922714, 36.579868, 20.187309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255901, 36.752514, 20.325796>,  <33.455814, 36.856102, 20.408888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255901, 36.752514, 20.325796>,  <32.922714, 36.579868, 20.187309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255901, 36.752514, 20.325796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016027, -0.644271, 0.764629,
		0.553084, -0.631366, -0.543577,
		0.832971, 0.431616, 0.346217,
		33.505795, 36.882000, 20.429661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421490, 36.004036, 20.297409>,  <32.922714, 36.579868, 20.187309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421490, 36.004036, 20.297409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538193, 36.286293, 20.555695>,  <33.608215, 36.455647, 20.710667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538193, 36.286293, 20.555695>,  <33.421490, 36.004036, 20.297409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538193, 36.286293, 20.555695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042768, -0.684036, 0.728194,
		0.955535, -0.184841, -0.229753,
		0.291760, 0.705641, 0.645715,
		33.625721, 36.497986, 20.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031906, 35.627754, 20.642984>,  <33.421490, 36.004036, 20.297409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031906, 35.627754, 20.642984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936665, 35.953411, 20.854828>,  <33.879520, 36.148804, 20.981934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936665, 35.953411, 20.854828>,  <34.031906, 35.627754, 20.642984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936665, 35.953411, 20.854828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075788, -0.528053, 0.845823,
		0.968278, 0.241534, 0.064031,
		-0.238106, 0.814138, 0.529608,
		33.865234, 36.197651, 21.013710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522511, 35.608463, 21.258142>,  <34.031906, 35.627754, 20.642984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522511, 35.608463, 21.258142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202480, 35.830311, 21.349592>,  <34.010460, 35.963421, 21.404463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202480, 35.830311, 21.349592>,  <34.522511, 35.608463, 21.258142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202480, 35.830311, 21.349592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034644, -0.423187, 0.905380,
		0.598895, 0.716454, 0.357797,
		-0.800078, 0.554622, 0.228624,
		33.962456, 35.996696, 21.418179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754169, 35.959385, 21.868702>,  <34.522511, 35.608463, 21.258142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754169, 35.959385, 21.868702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354324, 35.963135, 21.879221>,  <34.114418, 35.965385, 21.885532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354324, 35.963135, 21.879221>,  <34.754169, 35.959385, 21.868702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354324, 35.963135, 21.879221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019053, -0.459465, 0.887991,
		0.020403, 0.888146, 0.459108,
		-0.999610, 0.009370, 0.026296,
		34.054440, 35.965946, 21.887110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550797, 36.361652, 22.448351>,  <34.754169, 35.959385, 21.868702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550797, 36.361652, 22.448351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248287, 36.118908, 22.350561>,  <34.066780, 35.973259, 22.291887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248287, 36.118908, 22.350561>,  <34.550797, 36.361652, 22.448351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248287, 36.118908, 22.350561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049604, -0.319405, 0.946319,
		-0.652373, 0.727803, 0.211455,
		-0.756273, -0.606864, -0.244473,
		34.021404, 35.936848, 22.277220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156158, 36.234329, 23.096628>,  <34.550797, 36.361652, 22.448351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156158, 36.234329, 23.096628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010292, 35.953114, 22.852413>,  <33.922771, 35.784386, 22.705885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010292, 35.953114, 22.852413>,  <34.156158, 36.234329, 23.096628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010292, 35.953114, 22.852413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212420, -0.575586, 0.789670,
		-0.906585, 0.417655, 0.060557,
		-0.364665, -0.703040, -0.610536,
		33.900894, 35.742203, 22.669252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519611, 36.093857, 23.317636>,  <34.156158, 36.234329, 23.096628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519611, 36.093857, 23.317636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649174, 35.782024, 23.103222>,  <33.726910, 35.594925, 22.974573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649174, 35.782024, 23.103222>,  <33.519611, 36.093857, 23.317636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649174, 35.782024, 23.103222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169375, -0.605211, 0.777838,
		-0.930806, -0.161152, -0.328071,
		0.323903, -0.779583, -0.536039,
		33.746346, 35.548149, 22.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174236, 35.662754, 23.550989>,  <33.519611, 36.093857, 23.317636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174236, 35.662754, 23.550989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400036, 35.390469, 23.364239>,  <33.535515, 35.227097, 23.252188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400036, 35.390469, 23.364239>,  <33.174236, 35.662754, 23.550989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400036, 35.390469, 23.364239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206790, -0.664200, 0.718384,
		-0.799113, -0.308980, -0.515704,
		0.564497, -0.680712, -0.466877,
		33.569386, 35.186256, 23.224176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771606, 35.123516, 23.618708>,  <33.174236, 35.662754, 23.550989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771606, 35.123516, 23.618708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136730, 34.974003, 23.552895>,  <33.355804, 34.884296, 23.513407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136730, 34.974003, 23.552895>,  <32.771606, 35.123516, 23.618708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136730, 34.974003, 23.552895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164879, -0.705881, 0.688873,
		-0.373627, -0.601681, -0.705962,
		0.912808, -0.373780, -0.164532,
		33.410572, 34.861870, 23.503534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703350, 34.450474, 23.551451>,  <32.771606, 35.123516, 23.618708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703350, 34.450474, 23.551451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081448, 34.495918, 23.673836>,  <33.308304, 34.523186, 23.747267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081448, 34.495918, 23.673836>,  <32.703350, 34.450474, 23.551451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081448, 34.495918, 23.673836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161160, -0.652726, 0.740254,
		0.283808, -0.749027, -0.598675,
		0.945241, 0.113607, 0.305962,
		33.365021, 34.529999, 23.765625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854210, 33.754551, 23.747576>,  <32.703350, 34.450474, 23.551451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854210, 33.754551, 23.747576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141861, 33.977623, 23.913391>,  <33.314453, 34.111465, 24.012880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141861, 33.977623, 23.913391>,  <32.854210, 33.754551, 23.747576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141861, 33.977623, 23.913391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056516, -0.547653, 0.834795,
		0.692571, -0.623756, -0.362317,
		0.719132, 0.557678, 0.414540,
		33.357601, 34.144928, 24.037754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282120, 33.267654, 24.086189>,  <32.854210, 33.754551, 23.747576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282120, 33.267654, 24.086189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368031, 33.617607, 24.259838>,  <33.419575, 33.827579, 24.364027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368031, 33.617607, 24.259838>,  <33.282120, 33.267654, 24.086189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368031, 33.617607, 24.259838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024125, -0.439607, 0.897866,
		0.976366, -0.203312, -0.073310,
		0.214775, 0.874877, 0.434122,
		33.432465, 33.880070, 24.390074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820835, 33.101868, 24.546354>,  <33.282120, 33.267654, 24.086189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820835, 33.101868, 24.546354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659836, 33.446960, 24.668783>,  <33.563236, 33.654018, 24.742241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659836, 33.446960, 24.668783>,  <33.820835, 33.101868, 24.546354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659836, 33.446960, 24.668783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018938, -0.326435, 0.945030,
		0.915225, 0.386169, 0.115051,
		-0.402498, 0.862736, 0.306074,
		33.539085, 33.705780, 24.760605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.715790, 31.721996, 28.709040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378117, 31.928038, 28.768406>,  <37.175514, 32.051662, 28.804026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378117, 31.928038, 28.768406>,  <37.715790, 31.721996, 28.709040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378117, 31.928038, 28.768406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088517, -0.407011, 0.909124,
		0.528699, 0.754328, 0.389187,
		-0.844181, 0.515103, 0.148416,
		37.124863, 32.082569, 28.812931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790470, 32.070580, 29.390528>,  <37.715790, 31.721996, 28.709040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790470, 32.070580, 29.390528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403538, 32.027027, 29.298948>,  <37.171379, 32.000896, 29.244001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403538, 32.027027, 29.298948>,  <37.790470, 32.070580, 29.390528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403538, 32.027027, 29.298948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161216, -0.432784, 0.886966,
		-0.195655, 0.894899, 0.401092,
		-0.967331, -0.108877, -0.228948,
		37.113338, 31.994364, 29.230265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416084, 32.431232, 29.849627>,  <37.790470, 32.070580, 29.390528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416084, 32.431232, 29.849627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139339, 32.166225, 29.734804>,  <36.973293, 32.007221, 29.665911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139339, 32.166225, 29.734804>,  <37.416084, 32.431232, 29.849627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139339, 32.166225, 29.734804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110549, -0.295681, 0.948869,
		-0.713520, 0.688217, 0.131329,
		-0.691859, -0.662518, -0.287056,
		36.931782, 31.967470, 29.648687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920380, 32.527321, 30.349199>,  <37.416084, 32.431232, 29.849627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920380, 32.527321, 30.349199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781906, 32.199093, 30.167292>,  <36.698822, 32.002155, 30.058147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781906, 32.199093, 30.167292>,  <36.920380, 32.527321, 30.349199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781906, 32.199093, 30.167292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245941, -0.388413, 0.888059,
		-0.905354, 0.419282, -0.067348,
		-0.346188, -0.820572, -0.454770,
		36.678051, 31.952921, 30.030861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504532, 32.295563, 30.801617>,  <36.920380, 32.527321, 30.349199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504532, 32.295563, 30.801617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.590427, 31.977158, 30.575254>,  <36.641964, 31.786114, 30.439438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.590427, 31.977158, 30.575254>,  <36.504532, 32.295563, 30.801617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590427, 31.977158, 30.575254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037652, -0.585738, 0.809625,
		-0.975944, -0.152554, -0.155755,
		0.214743, -0.796014, -0.565904,
		36.654850, 31.738354, 30.405483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171162, 31.770910, 31.099203>,  <36.504532, 32.295563, 30.801617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171162, 31.770910, 31.099203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456078, 31.581812, 30.891682>,  <36.627026, 31.468353, 30.767168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456078, 31.581812, 30.891682>,  <36.171162, 31.770910, 31.099203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456078, 31.581812, 30.891682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204389, -0.567420, 0.797659,
		-0.671470, -0.674200, -0.307542,
		0.712287, -0.472746, -0.518805,
		36.669765, 31.439989, 30.736040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970818, 31.087759, 31.092018>,  <36.171162, 31.770910, 31.099203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970818, 31.087759, 31.092018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.362354, 31.057608, 31.015921>,  <36.597275, 31.039516, 30.970263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.362354, 31.057608, 31.015921>,  <35.970818, 31.087759, 31.092018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362354, 31.057608, 31.015921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157828, -0.313637, 0.936334,
		-0.130247, -0.946546, -0.295104,
		0.978839, -0.075379, -0.190242,
		36.656006, 31.034994, 30.958849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175678, 30.428818, 31.105707>,  <35.970818, 31.087759, 31.092018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175678, 30.428818, 31.105707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.522041, 30.611326, 31.187696>,  <36.729858, 30.720831, 31.236891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.522041, 30.611326, 31.187696>,  <36.175678, 30.428818, 31.105707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522041, 30.611326, 31.187696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088565, -0.543162, 0.834944,
		0.492297, -0.704833, -0.510739,
		0.865910, 0.456273, 0.204974,
		36.781815, 30.748209, 31.249189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713261, 29.934393, 31.408066>,  <36.175678, 30.428818, 31.105707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713261, 29.934393, 31.408066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832954, 30.296604, 31.528383>,  <36.904770, 30.513931, 31.600574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832954, 30.296604, 31.528383>,  <36.713261, 29.934393, 31.408066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832954, 30.296604, 31.528383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105290, -0.344650, 0.932808,
		0.948352, -0.247459, -0.198475,
		0.299236, 0.905528, 0.300794,
		36.922726, 30.568262, 31.618622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414757, 29.901430, 31.648226>,  <36.713261, 29.934393, 31.408066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414757, 29.901430, 31.648226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254150, 30.220676, 31.827913>,  <37.157787, 30.412224, 31.935726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254150, 30.220676, 31.827913>,  <37.414757, 29.901430, 31.648226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254150, 30.220676, 31.827913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361158, -0.312765, 0.878489,
		0.841635, 0.514966, -0.162665,
		-0.401516, 0.798115, 0.449218,
		37.133694, 30.460112, 31.962679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880547, 29.905710, 32.121754>,  <37.414757, 29.901430, 31.648226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880547, 29.905710, 32.121754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583351, 30.140362, 32.250648>,  <37.405033, 30.281153, 32.327988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583351, 30.140362, 32.250648>,  <37.880547, 29.905710, 32.121754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583351, 30.140362, 32.250648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290036, -0.151708, 0.944915,
		0.603202, 0.795519, -0.057427,
		-0.742985, 0.586630, 0.322240,
		37.360455, 30.316351, 32.347321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215034, 30.392305, 32.517673>,  <37.880547, 29.905710, 32.121754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215034, 30.392305, 32.517673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830181, 30.407143, 32.625698>,  <37.599270, 30.416044, 32.690514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830181, 30.407143, 32.625698>,  <38.215034, 30.392305, 32.517673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830181, 30.407143, 32.625698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267789, -0.056551, 0.961817,
		0.050948, 0.997711, 0.044476,
		-0.962130, 0.037093, 0.270057,
		37.541542, 30.418270, 32.706715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287891, 30.765715, 33.145702>,  <38.215034, 30.392305, 32.517673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287891, 30.765715, 33.145702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934906, 30.577663, 33.139626>,  <37.723114, 30.464832, 33.135979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934906, 30.577663, 33.139626>,  <38.287891, 30.765715, 33.145702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934906, 30.577663, 33.139626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075913, -0.174217, 0.981777,
		-0.464207, 0.865233, 0.189430,
		-0.882468, -0.470128, -0.015191,
		37.670166, 30.436625, 33.135067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872864, 30.989235, 33.729130>,  <38.287891, 30.765715, 33.145702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872864, 30.989235, 33.729130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718483, 30.638836, 33.613430>,  <37.625854, 30.428596, 33.544010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718483, 30.638836, 33.613430>,  <37.872864, 30.989235, 33.729130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718483, 30.638836, 33.613430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106915, -0.268957, 0.957200,
		-0.916303, 0.400358, 0.010146,
		-0.385951, -0.876000, -0.289251,
		37.602699, 30.376036, 33.526653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165272, 31.682602, 33.373878>,  <37.872864, 30.989235, 33.729130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165272, 31.682602, 33.373878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408947, 31.995939, 33.423298>,  <38.555153, 32.183941, 33.452950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408947, 31.995939, 33.423298>,  <38.165272, 31.682602, 33.373878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408947, 31.995939, 33.423298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505339, 0.503519, -0.700786,
		-0.611168, 0.364472, 0.702591,
		0.609184, 0.783345, 0.123553,
		38.591702, 32.230942, 33.460365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684528, 32.316895, 33.463280>,  <38.165272, 31.682602, 33.373878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684528, 32.316895, 33.463280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027065, 32.508739, 33.386707>,  <38.232586, 32.623848, 33.340763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027065, 32.508739, 33.386707>,  <37.684528, 32.316895, 33.463280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027065, 32.508739, 33.386707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415004, 0.418542, -0.807833,
		-0.307323, 0.771229, 0.557457,
		0.856343, 0.479613, -0.191435,
		38.283970, 32.652622, 33.329277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541725, 33.031914, 33.367588>,  <37.684528, 32.316895, 33.463280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541725, 33.031914, 33.367588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900536, 32.993080, 33.195114>,  <38.115822, 32.969780, 33.091629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900536, 32.993080, 33.195114>,  <37.541725, 33.031914, 33.367588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900536, 32.993080, 33.195114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332642, 0.494072, -0.803270,
		0.291021, 0.863983, 0.410900,
		0.897026, -0.097086, -0.431183,
		38.169643, 32.963955, 33.065758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701233, 33.700260, 33.060940>,  <37.541725, 33.031914, 33.367588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701233, 33.700260, 33.060940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999996, 33.508129, 32.877026>,  <38.179256, 33.392849, 32.766678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999996, 33.508129, 32.877026>,  <37.701233, 33.700260, 33.060940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999996, 33.508129, 32.877026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160393, 0.540916, -0.825641,
		0.645288, 0.690428, 0.326975,
		0.746912, -0.480332, -0.459786,
		38.224072, 33.364029, 32.739090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114704, 34.175957, 32.698769>,  <37.701233, 33.700260, 33.060940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114704, 34.175957, 32.698769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174557, 33.823936, 32.518494>,  <38.210468, 33.612724, 32.410328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174557, 33.823936, 32.518494>,  <38.114704, 34.175957, 32.698769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174557, 33.823936, 32.518494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218731, 0.415063, -0.883108,
		0.964244, 0.230721, -0.130388,
		0.149632, -0.880052, -0.450688,
		38.219448, 33.559921, 32.383286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469189, 34.351791, 32.130081>,  <38.114704, 34.175957, 32.698769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469189, 34.351791, 32.130081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290588, 34.008064, 32.030315>,  <38.183426, 33.801826, 31.970457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290588, 34.008064, 32.030315>,  <38.469189, 34.351791, 32.130081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290588, 34.008064, 32.030315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188440, 0.362797, -0.912616,
		0.874714, -0.360487, -0.323920,
		-0.446504, -0.859318, -0.249413,
		38.156639, 33.750267, 31.955492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746529, 34.142750, 31.495878>,  <38.469189, 34.351791, 32.130081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746529, 34.142750, 31.495878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410622, 33.926903, 31.519905>,  <38.209080, 33.797394, 31.534321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410622, 33.926903, 31.519905>,  <38.746529, 34.142750, 31.495878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410622, 33.926903, 31.519905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140691, 0.109413, -0.983989,
		0.524407, -0.834770, -0.167801,
		-0.839764, -0.539619, 0.060068,
		38.158691, 33.765018, 31.537926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722176, 33.756199, 30.896975>,  <38.746529, 34.142750, 31.495878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722176, 33.756199, 30.896975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340973, 33.764767, 31.017845>,  <38.112251, 33.769909, 31.090366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340973, 33.764767, 31.017845>,  <38.722176, 33.756199, 30.896975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340973, 33.764767, 31.017845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301670, 0.023926, -0.953112,
		-0.027644, -0.999484, -0.016341,
		-0.953012, 0.021418, 0.302175,
		38.055069, 33.771194, 31.108498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384018, 33.528179, 30.411581>,  <38.722176, 33.756199, 30.896975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384018, 33.528179, 30.411581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090153, 33.730034, 30.592958>,  <37.913834, 33.851147, 30.701784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090153, 33.730034, 30.592958>,  <38.384018, 33.528179, 30.411581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090153, 33.730034, 30.592958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269430, 0.396382, -0.877661,
		-0.622636, -0.766958, -0.155244,
		-0.734665, 0.504636, 0.453443,
		37.869755, 33.881424, 30.728991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882191, 33.552910, 29.872829>,  <38.384018, 33.528179, 30.411581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882191, 33.552910, 29.872829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781708, 33.833748, 30.139349>,  <37.721416, 34.002251, 30.299261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781708, 33.833748, 30.139349>,  <37.882191, 33.552910, 29.872829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781708, 33.833748, 30.139349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370693, 0.566109, -0.736279,
		-0.894137, -0.431954, 0.118050,
		-0.251210, 0.702095, 0.666301,
		37.706345, 34.044376, 30.339239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187443, 33.710693, 29.713530>,  <37.882191, 33.552910, 29.872829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187443, 33.710693, 29.713530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304131, 34.031708, 29.921698>,  <37.374142, 34.224316, 30.046598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304131, 34.031708, 29.921698>,  <37.187443, 33.710693, 29.713530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304131, 34.031708, 29.921698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350458, 0.595930, -0.722528,
		-0.889988, 0.028391, 0.455100,
		0.291721, 0.802535, 0.520420,
		37.391647, 34.272469, 30.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617908, 34.058483, 29.755934>,  <37.187443, 33.710693, 29.713530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617908, 34.058483, 29.755934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884090, 34.337967, 29.860985>,  <37.043800, 34.505657, 29.924015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884090, 34.337967, 29.860985>,  <36.617908, 34.058483, 29.755934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884090, 34.337967, 29.860985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455893, 0.659039, -0.598188,
		-0.591041, 0.278339, 0.757099,
		0.665456, 0.698710, 0.262626,
		37.083729, 34.547581, 29.939772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235157, 34.691227, 29.672440>,  <36.617908, 34.058483, 29.755934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235157, 34.691227, 29.672440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628571, 34.763405, 29.676584>,  <36.864616, 34.806713, 29.679071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628571, 34.763405, 29.676584>,  <36.235157, 34.691227, 29.672440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628571, 34.763405, 29.676584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103030, 0.606837, -0.788120,
		-0.148500, 0.774073, 0.615434,
		0.983531, 0.180444, 0.010363,
		36.923630, 34.817539, 29.679693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337067, 35.401585, 29.703609>,  <36.235157, 34.691227, 29.672440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337067, 35.401585, 29.703609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655830, 35.216785, 29.547920>,  <36.847088, 35.105904, 29.454508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655830, 35.216785, 29.547920>,  <36.337067, 35.401585, 29.703609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655830, 35.216785, 29.547920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050377, 0.591232, -0.804927,
		0.601997, 0.661060, 0.447883,
		0.796908, -0.462000, -0.389222,
		36.894901, 35.078186, 29.431154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462360, 35.953461, 30.141439>,  <36.337067, 35.401585, 29.703609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462360, 35.953461, 30.141439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256096, 36.206596, 30.372475>,  <36.132336, 36.358479, 30.511095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256096, 36.206596, 30.372475>,  <36.462360, 35.953461, 30.141439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256096, 36.206596, 30.372475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358274, -0.771627, 0.525577,
		0.778288, 0.064085, 0.624628,
		-0.515662, 0.632838, 0.577589,
		36.101398, 36.396446, 30.545752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676670, 35.780746, 30.794476>,  <36.462360, 35.953461, 30.141439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676670, 35.780746, 30.794476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.321575, 35.959976, 30.836718>,  <36.108517, 36.067513, 30.862062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.321575, 35.959976, 30.836718>,  <36.676670, 35.780746, 30.794476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321575, 35.959976, 30.836718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344844, -0.799231, 0.492252,
		0.304967, 0.400574, 0.864023,
		-0.887737, 0.448074, 0.105604,
		36.055252, 36.094398, 30.868399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660789, 35.812241, 31.440145>,  <36.676670, 35.780746, 30.794476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660789, 35.812241, 31.440145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282917, 35.848690, 31.314116>,  <36.056194, 35.870560, 31.238497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282917, 35.848690, 31.314116>,  <36.660789, 35.812241, 31.440145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282917, 35.848690, 31.314116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309652, -0.564485, 0.765161,
		-0.108128, 0.820397, 0.561477,
		-0.944682, 0.091128, -0.315075,
		35.999512, 35.876030, 31.219593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234844, 35.887096, 32.099003>,  <36.660789, 35.812241, 31.440145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234844, 35.887096, 32.099003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985638, 35.768986, 31.809267>,  <35.836113, 35.698120, 31.635426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985638, 35.768986, 31.809267>,  <36.234844, 35.887096, 32.099003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985638, 35.768986, 31.809267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380622, -0.694551, 0.610513,
		-0.683358, 0.656058, 0.320329,
		-0.623016, -0.295275, -0.724337,
		35.798733, 35.680405, 31.591967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528320, 35.909775, 32.389099>,  <36.234844, 35.887096, 32.099003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528320, 35.909775, 32.389099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531204, 35.654034, 32.081547>,  <35.532936, 35.500591, 31.897015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531204, 35.654034, 32.081547>,  <35.528320, 35.909775, 32.389099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531204, 35.654034, 32.081547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358273, -0.719509, 0.594935,
		-0.933589, 0.271178, -0.234252,
		0.007213, -0.639351, -0.768882,
		35.533367, 35.462227, 31.850882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889919, 35.591637, 32.408920>,  <35.528320, 35.909775, 32.389099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889919, 35.591637, 32.408920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.095173, 35.326370, 32.190964>,  <35.218327, 35.167210, 32.060192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.095173, 35.326370, 32.190964>,  <34.889919, 35.591637, 32.408920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095173, 35.326370, 32.190964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343148, -0.740405, 0.577970,
		-0.786729, -0.109599, -0.607491,
		0.513135, -0.663165, -0.544889,
		35.249115, 35.127422, 32.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512615, 34.966373, 32.470367>,  <34.889919, 35.591637, 32.408920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512615, 34.966373, 32.470367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845837, 34.800934, 32.323421>,  <35.045769, 34.701672, 32.235256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845837, 34.800934, 32.323421>,  <34.512615, 34.966373, 32.470367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845837, 34.800934, 32.323421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167163, -0.821247, 0.545536,
		-0.527326, -0.393053, -0.753283,
		0.833057, -0.413597, -0.367362,
		35.095753, 34.676853, 32.213211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348000, 34.311703, 32.240139>,  <34.512615, 34.966373, 32.470367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348000, 34.311703, 32.240139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739674, 34.313408, 32.321304>,  <34.974678, 34.314430, 32.370003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739674, 34.313408, 32.321304>,  <34.348000, 34.311703, 32.240139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739674, 34.313408, 32.321304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103980, -0.848056, 0.519604,
		0.174299, -0.529889, -0.829962,
		0.979187, 0.004267, 0.202914,
		35.033428, 34.314690, 32.382179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403606, 33.701569, 32.343994>,  <34.348000, 34.311703, 32.240139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403606, 33.701569, 32.343994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753651, 33.830074, 32.488754>,  <34.963676, 33.907177, 32.575611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753651, 33.830074, 32.488754>,  <34.403606, 33.701569, 32.343994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753651, 33.830074, 32.488754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011900, -0.733330, 0.679769,
		0.483774, -0.599181, -0.637923,
		0.875112, 0.321264, 0.361896,
		35.016186, 33.926453, 32.597324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810921, 33.193508, 32.438271>,  <34.403606, 33.701569, 32.343994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810921, 33.193508, 32.438271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949120, 33.472778, 32.689087>,  <35.032040, 33.640339, 32.839577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949120, 33.472778, 32.689087>,  <34.810921, 33.193508, 32.438271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949120, 33.472778, 32.689087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037738, -0.677989, 0.734103,
		0.937659, -0.229970, -0.260593,
		0.345501, 0.698173, 0.627044,
		35.052769, 33.682232, 32.877201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384663, 32.946987, 32.892677>,  <34.810921, 33.193508, 32.438271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384663, 32.946987, 32.892677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.199005, 33.242859, 33.087589>,  <35.087608, 33.420383, 33.204536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.199005, 33.242859, 33.087589>,  <35.384663, 32.946987, 32.892677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199005, 33.242859, 33.087589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049864, -0.527436, 0.848130,
		0.884354, 0.417953, 0.207924,
		-0.464145, 0.739680, 0.487281,
		35.059761, 33.464764, 33.233772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749535, 32.938431, 33.488758>,  <35.384663, 32.946987, 32.892677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749535, 32.938431, 33.488758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421486, 33.140934, 33.595417>,  <35.224655, 33.262436, 33.659412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421486, 33.140934, 33.595417>,  <35.749535, 32.938431, 33.488758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421486, 33.140934, 33.595417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051693, -0.398552, 0.915688,
		0.569850, 0.764759, 0.300691,
		-0.820121, 0.506261, 0.266648,
		35.175449, 33.292812, 33.675411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.526783, 38.556671, 27.817326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150978, 38.675308, 27.885851>,  <36.925495, 38.746490, 27.926966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150978, 38.675308, 27.885851>,  <37.526783, 38.556671, 27.817326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150978, 38.675308, 27.885851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076984, -0.670218, 0.738161,
		0.333751, 0.680323, 0.652511,
		-0.939513, 0.296595, 0.171312,
		36.869125, 38.764286, 27.937244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436558, 38.787201, 28.615721>,  <37.526783, 38.556671, 27.817326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436558, 38.787201, 28.615721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066723, 38.705490, 28.487093>,  <36.844822, 38.656464, 28.409916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066723, 38.705490, 28.487093>,  <37.436558, 38.787201, 28.615721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066723, 38.705490, 28.487093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159351, -0.559327, 0.813486,
		-0.346041, 0.803382, 0.484596,
		-0.924588, -0.204279, -0.321569,
		36.789345, 38.644207, 28.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014900, 38.993538, 29.197739>,  <37.436558, 38.787201, 28.615721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014900, 38.993538, 29.197739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786900, 38.764294, 28.962231>,  <36.650101, 38.626747, 28.820927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786900, 38.764294, 28.962231>,  <37.014900, 38.993538, 29.197739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786900, 38.764294, 28.962231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333269, -0.493717, 0.803228,
		-0.751023, 0.654056, 0.090418,
		-0.569998, -0.573109, -0.588769,
		36.615902, 38.592361, 28.785601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301540, 38.940327, 29.527950>,  <37.014900, 38.993538, 29.197739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301540, 38.940327, 29.527950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360725, 38.614643, 29.303389>,  <36.396236, 38.419231, 29.168652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360725, 38.614643, 29.303389>,  <36.301540, 38.940327, 29.527950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360725, 38.614643, 29.303389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323925, -0.576236, 0.750349,
		-0.934441, 0.070832, -0.349001,
		0.147959, -0.814208, -0.561403,
		36.405113, 38.370380, 29.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680557, 38.603561, 29.567419>,  <36.301540, 38.940327, 29.527950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680557, 38.603561, 29.567419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962570, 38.335472, 29.474707>,  <36.131779, 38.174618, 29.419079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962570, 38.335472, 29.474707>,  <35.680557, 38.603561, 29.567419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962570, 38.335472, 29.474707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320795, -0.592892, 0.738627,
		-0.632470, -0.446402, -0.633014,
		0.705034, -0.670227, -0.231783,
		36.174080, 38.134403, 29.405172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319977, 38.076298, 29.555458>,  <35.680557, 38.603561, 29.567419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319977, 38.076298, 29.555458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694599, 37.939774, 29.587360>,  <35.919373, 37.857857, 29.606503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694599, 37.939774, 29.587360>,  <35.319977, 38.076298, 29.555458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694599, 37.939774, 29.587360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292345, -0.635119, 0.714953,
		-0.193368, -0.692913, -0.694608,
		0.936559, -0.341314, 0.079758,
		35.975567, 37.837379, 29.611288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265388, 37.389015, 29.419687>,  <35.319977, 38.076298, 29.555458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265388, 37.389015, 29.419687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619816, 37.396984, 29.604935>,  <35.832474, 37.401768, 29.716084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619816, 37.396984, 29.604935>,  <35.265388, 37.389015, 29.419687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619816, 37.396984, 29.604935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263200, -0.800782, 0.538028,
		0.381578, -0.598625, -0.704306,
		0.886072, 0.019926, 0.463119,
		35.885639, 37.402962, 29.743870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580036, 36.719669, 29.390471>,  <35.265388, 37.389015, 29.419687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580036, 36.719669, 29.390471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760323, 36.889317, 29.704662>,  <35.868496, 36.991104, 29.893177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760323, 36.889317, 29.704662>,  <35.580036, 36.719669, 29.390471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760323, 36.889317, 29.704662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193023, -0.812802, 0.549633,
		0.871547, -0.399345, -0.284481,
		0.450720, 0.424119, 0.785477,
		35.895538, 37.016552, 29.940306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126476, 36.274002, 29.608139>,  <35.580036, 36.719669, 29.390471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126476, 36.274002, 29.608139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061768, 36.504547, 29.928549>,  <36.022942, 36.642876, 30.120794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061768, 36.504547, 29.928549>,  <36.126476, 36.274002, 29.608139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061768, 36.504547, 29.928549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086026, -0.816861, 0.570384,
		0.983071, 0.023363, 0.181728,
		-0.161772, 0.576361, 0.801023,
		36.013237, 36.677456, 30.168856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844864, 35.988842, 29.511711>,  <36.126476, 36.274002, 29.608139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844864, 35.988842, 29.511711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001888, 35.688507, 29.299244>,  <37.096104, 35.508305, 29.171764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001888, 35.688507, 29.299244>,  <36.844864, 35.988842, 29.511711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001888, 35.688507, 29.299244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171883, 0.507459, -0.844358,
		0.903523, 0.422758, 0.070151,
		0.392558, -0.750840, -0.531166,
		37.119656, 35.463257, 29.139894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266327, 36.274963, 29.071611>,  <36.844864, 35.988842, 29.511711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266327, 36.274963, 29.071611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232437, 35.911407, 28.908276>,  <37.212101, 35.693275, 28.810274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232437, 35.911407, 28.908276>,  <37.266327, 36.274963, 29.071611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232437, 35.911407, 28.908276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051165, 0.405303, -0.912749,
		0.995090, -0.098228, 0.012163,
		-0.084728, -0.908890, -0.408339,
		37.207020, 35.638741, 28.785774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697697, 36.250099, 28.528595>,  <37.266327, 36.274963, 29.071611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697697, 36.250099, 28.528595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466743, 35.937904, 28.432709>,  <37.328171, 35.750587, 28.375177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466743, 35.937904, 28.432709>,  <37.697697, 36.250099, 28.528595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466743, 35.937904, 28.432709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129839, 0.202090, -0.970722,
		0.806081, -0.591606, -0.015347,
		-0.577387, -0.780488, -0.239714,
		37.293526, 35.703758, 28.360794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101307, 35.813644, 28.007725>,  <37.697697, 36.250099, 28.528595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101307, 35.813644, 28.007725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702271, 35.790817, 27.991972>,  <37.462849, 35.777122, 27.982519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702271, 35.790817, 27.991972>,  <38.101307, 35.813644, 28.007725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702271, 35.790817, 27.991972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018545, 0.327710, -0.944596,
		0.066809, -0.943053, -0.325863,
		-0.997593, -0.057064, -0.039383,
		37.402992, 35.773697, 27.980158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046925, 35.609730, 27.343880>,  <38.101307, 35.813644, 28.007725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046925, 35.609730, 27.343880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679344, 35.727455, 27.448885>,  <37.458797, 35.798092, 27.511889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679344, 35.727455, 27.448885>,  <38.046925, 35.609730, 27.343880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679344, 35.727455, 27.448885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006132, 0.676219, -0.736675,
		-0.394333, -0.675356, -0.623214,
		-0.918947, 0.294317, 0.262514,
		37.403660, 35.815750, 27.527639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594471, 35.367710, 26.773386>,  <38.046925, 35.609730, 27.343880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594471, 35.367710, 26.773386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425823, 35.671017, 26.972294>,  <37.324635, 35.853001, 27.091639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425823, 35.671017, 26.972294>,  <37.594471, 35.367710, 26.773386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425823, 35.671017, 26.972294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114816, 0.499338, -0.858766,
		-0.899475, -0.419166, -0.123470,
		-0.421619, 0.758262, 0.497268,
		37.299339, 35.898495, 27.121475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105518, 35.486378, 26.375866>,  <37.594471, 35.367710, 26.773386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105518, 35.486378, 26.375866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089279, 35.817631, 26.599493>,  <37.079536, 36.016380, 26.733669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089279, 35.817631, 26.599493>,  <37.105518, 35.486378, 26.375866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089279, 35.817631, 26.599493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002343, 0.559447, -0.828863,
		-0.999173, -0.034961, -0.020773,
		-0.040600, 0.828128, 0.559066,
		37.077099, 36.066071, 26.767214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580227, 35.850204, 26.142975>,  <37.105518, 35.486378, 26.375866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580227, 35.850204, 26.142975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830471, 36.109764, 26.316202>,  <36.980618, 36.265499, 26.420139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830471, 36.109764, 26.316202>,  <36.580227, 35.850204, 26.142975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830471, 36.109764, 26.316202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072169, 0.504598, -0.860333,
		-0.776794, 0.569484, 0.268849,
		0.625606, 0.648899, 0.433068,
		37.018154, 36.304432, 26.446123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382275, 36.437645, 25.879522>,  <36.580227, 35.850204, 26.142975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382275, 36.437645, 25.879522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758701, 36.488758, 26.004780>,  <36.984558, 36.519424, 26.079935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758701, 36.488758, 26.004780>,  <36.382275, 36.437645, 25.879522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758701, 36.488758, 26.004780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241023, 0.396151, -0.885986,
		-0.237266, 0.909250, 0.342008,
		0.941070, 0.127782, 0.313143,
		37.041023, 36.527092, 26.098722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641338, 37.076912, 25.631186>,  <36.382275, 36.437645, 25.879522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641338, 37.076912, 25.631186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974224, 36.868835, 25.707932>,  <37.173958, 36.743988, 25.753979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974224, 36.868835, 25.707932>,  <36.641338, 37.076912, 25.631186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974224, 36.868835, 25.707932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443874, 0.417721, -0.792770,
		0.332248, 0.744921, 0.578536,
		0.832218, -0.520194, 0.191864,
		37.223888, 36.712776, 25.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193237, 37.544655, 25.600698>,  <36.641338, 37.076912, 25.631186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193237, 37.544655, 25.600698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375793, 37.196224, 25.528116>,  <37.485329, 36.987164, 25.484566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375793, 37.196224, 25.528116>,  <37.193237, 37.544655, 25.600698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375793, 37.196224, 25.528116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621732, 0.458087, -0.635300,
		0.636521, 0.177126, 0.750645,
		0.456389, -0.871081, -0.181457,
		37.512711, 36.934898, 25.473679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959480, 37.633221, 25.350142>,  <37.193237, 37.544655, 25.600698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959480, 37.633221, 25.350142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964962, 37.241688, 25.268454>,  <37.968250, 37.006767, 25.219440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964962, 37.241688, 25.268454>,  <37.959480, 37.633221, 25.350142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964962, 37.241688, 25.268454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637255, 0.165938, -0.752576,
		0.770532, -0.119824, 0.626038,
		0.013707, -0.978829, -0.204219,
		37.969074, 36.948040, 25.207188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659672, 37.494606, 25.123837>,  <37.959480, 37.633221, 25.350142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659672, 37.494606, 25.123837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436874, 37.187531, 24.997087>,  <38.303196, 37.003284, 24.921038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436874, 37.187531, 24.997087>,  <38.659672, 37.494606, 25.123837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436874, 37.187531, 24.997087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453270, 0.038708, -0.890532,
		0.695920, -0.639649, 0.326411,
		-0.556994, -0.767692, -0.316871,
		38.269775, 36.957222, 24.902025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056877, 36.967976, 24.745701>,  <38.659672, 37.494606, 25.123837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056877, 36.967976, 24.745701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674927, 36.957706, 24.627340>,  <38.445759, 36.951546, 24.556324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674927, 36.957706, 24.627340>,  <39.056877, 36.967976, 24.745701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674927, 36.957706, 24.627340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285724, 0.192690, -0.938740,
		0.081113, -0.980924, -0.176660,
		-0.954873, -0.025668, -0.295903,
		38.388466, 36.950005, 24.538568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.388483, 35.479828, 24.265409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770828, 35.532948, 24.370245>,  <31.000235, 35.564819, 24.433146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770828, 35.532948, 24.370245>,  <30.388483, 35.479828, 24.265409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770828, 35.532948, 24.370245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108073, -0.670562, 0.733939,
		0.273214, -0.729870, -0.626613,
		0.955863, 0.132802, 0.262086,
		31.057587, 35.572788, 24.448872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727030, 34.796883, 24.463427>,  <30.388483, 35.479828, 24.265409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727030, 34.796883, 24.463427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949314, 35.075668, 24.644726>,  <31.082685, 35.242939, 24.753506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949314, 35.075668, 24.644726>,  <30.727030, 34.796883, 24.463427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949314, 35.075668, 24.644726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119817, -0.472345, 0.873232,
		0.822697, -0.539570, -0.178979,
		0.555710, 0.696961, 0.453247,
		31.116028, 35.284756, 24.780701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030394, 34.466522, 24.943327>,  <30.727030, 34.796883, 24.463427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030394, 34.466522, 24.943327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.067598, 34.841629, 25.077160>,  <31.089922, 35.066692, 25.157459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.067598, 34.841629, 25.077160>,  <31.030394, 34.466522, 24.943327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067598, 34.841629, 25.077160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075644, -0.328413, 0.941500,
		0.992787, -0.112882, 0.040390,
		0.093014, 0.937765, 0.334583,
		31.095503, 35.122959, 25.177534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631681, 34.517281, 25.342810>,  <31.030394, 34.466522, 24.943327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631681, 34.517281, 25.342810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.376255, 34.794502, 25.476616>,  <31.223000, 34.960835, 25.556900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.376255, 34.794502, 25.476616>,  <31.631681, 34.517281, 25.342810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376255, 34.794502, 25.476616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006017, -0.430174, 0.902726,
		0.769542, 0.578465, 0.270525,
		-0.638568, 0.693058, 0.334518,
		31.184685, 35.002419, 25.576971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959324, 34.784943, 25.910225>,  <31.631681, 34.517281, 25.342810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959324, 34.784943, 25.910225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.573883, 34.880112, 25.958994>,  <31.342619, 34.937214, 25.988255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.573883, 34.880112, 25.958994>,  <31.959324, 34.784943, 25.910225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573883, 34.880112, 25.958994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036370, -0.335152, 0.941462,
		0.264856, 0.911628, 0.314300,
		-0.963602, 0.237921, 0.121923,
		31.284803, 34.951488, 25.995571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052357, 35.122528, 26.484598>,  <31.959324, 34.784943, 25.910225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052357, 35.122528, 26.484598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.656631, 35.068104, 26.463606>,  <31.419197, 35.035450, 26.451010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.656631, 35.068104, 26.463606>,  <32.052357, 35.122528, 26.484598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656631, 35.068104, 26.463606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040828, -0.087059, 0.995366,
		-0.140000, 0.986868, 0.080573,
		-0.989309, -0.136061, -0.052480,
		31.359838, 35.027287, 26.447863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731241, 35.542355, 26.892189>,  <32.052357, 35.122528, 26.484598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731241, 35.542355, 26.892189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.445625, 35.264393, 26.858122>,  <31.274256, 35.097614, 26.837681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.445625, 35.264393, 26.858122>,  <31.731241, 35.542355, 26.892189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445625, 35.264393, 26.858122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017617, -0.103777, 0.994445,
		-0.699883, 0.711574, 0.061858,
		-0.714040, -0.694905, -0.085168,
		31.231413, 35.055920, 26.832571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163538, 35.726208, 27.390709>,  <31.731241, 35.542355, 26.892189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163538, 35.726208, 27.390709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.161985, 35.336914, 27.298803>,  <31.161055, 35.103336, 27.243660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.161985, 35.336914, 27.298803>,  <31.163538, 35.726208, 27.390709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161985, 35.336914, 27.298803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016542, -0.229672, 0.973128,
		-0.999856, 0.007577, -0.015208,
		-0.003880, -0.973239, -0.229764,
		31.160822, 35.044941, 27.229874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637577, 35.423519, 27.868105>,  <31.163538, 35.726208, 27.390709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637577, 35.423519, 27.868105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871801, 35.122810, 27.746807>,  <31.012337, 34.942387, 27.674028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871801, 35.122810, 27.746807>,  <30.637577, 35.423519, 27.868105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871801, 35.122810, 27.746807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086304, -0.314146, 0.945444,
		-0.806021, -0.579786, -0.119071,
		0.585561, -0.751771, -0.303246,
		31.047470, 34.897278, 27.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431828, 34.928192, 28.306479>,  <30.637577, 35.423519, 27.868105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431828, 34.928192, 28.306479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.754148, 34.741867, 28.160217>,  <30.947540, 34.630074, 28.072460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.754148, 34.741867, 28.160217>,  <30.431828, 34.928192, 28.306479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754148, 34.741867, 28.160217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121269, -0.474584, 0.871817,
		-0.579635, -0.746855, -0.325932,
		0.805802, -0.465810, -0.365656,
		30.995890, 34.602123, 28.050520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438471, 34.191269, 28.415691>,  <30.431828, 34.928192, 28.306479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438471, 34.191269, 28.415691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.829638, 34.240540, 28.348160>,  <31.064339, 34.270103, 28.307640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.829638, 34.240540, 28.348160>,  <30.438471, 34.191269, 28.415691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829638, 34.240540, 28.348160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208863, -0.548092, 0.809921,
		0.007229, -0.827298, -0.561716,
		0.977918, 0.123177, -0.168830,
		31.123013, 34.277493, 28.297510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704411, 33.596432, 28.556532>,  <30.438471, 34.191269, 28.415691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704411, 33.596432, 28.556532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.023733, 33.834854, 28.591005>,  <31.215326, 33.977905, 28.611689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.023733, 33.834854, 28.591005>,  <30.704411, 33.596432, 28.556532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023733, 33.834854, 28.591005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253091, -0.461881, 0.850065,
		0.546489, -0.656801, -0.519579,
		0.798307, 0.596052, 0.086182,
		31.263226, 34.013668, 28.616859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278973, 33.184193, 28.778965>,  <30.704411, 33.596432, 28.556532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278973, 33.184193, 28.778965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.359173, 33.561684, 28.884176>,  <31.407293, 33.788177, 28.947304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.359173, 33.561684, 28.884176>,  <31.278973, 33.184193, 28.778965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359173, 33.561684, 28.884176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306998, -0.315479, 0.897901,
		0.930351, -0.099278, -0.352975,
		0.200498, 0.943725, 0.263027,
		31.419323, 33.844803, 28.963085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999241, 33.196560, 28.939077>,  <31.278973, 33.184193, 28.778965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999241, 33.196560, 28.939077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.830442, 33.508202, 29.124514>,  <31.729162, 33.695187, 29.235775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.830442, 33.508202, 29.124514>,  <31.999241, 33.196560, 28.939077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830442, 33.508202, 29.124514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448489, -0.264994, 0.853601,
		0.787893, 0.568133, -0.237592,
		-0.421998, 0.779104, 0.463589,
		31.703842, 33.741932, 29.263590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764347, 33.294289, 28.807146>,  <31.999241, 33.196560, 28.939077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764347, 33.294289, 28.807146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067257, 33.054413, 28.703686>,  <33.249004, 32.910488, 28.641609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067257, 33.054413, 28.703686>,  <32.764347, 33.294289, 28.807146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067257, 33.054413, 28.703686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058301, 0.332382, -0.941341,
		0.650487, 0.727935, 0.216742,
		0.757276, -0.599694, -0.258650,
		33.294441, 32.874504, 28.626091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208096, 33.717735, 28.508324>,  <32.764347, 33.294289, 28.807146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208096, 33.717735, 28.508324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315365, 33.354633, 28.379282>,  <33.379726, 33.136772, 28.301857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315365, 33.354633, 28.379282>,  <33.208096, 33.717735, 28.508324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315365, 33.354633, 28.379282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098055, 0.307411, -0.946511,
		0.958369, 0.285458, -0.006571,
		0.268169, -0.907751, -0.322604,
		33.395817, 33.082310, 28.282501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823647, 33.766743, 28.134235>,  <33.208096, 33.717735, 28.508324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823647, 33.766743, 28.134235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.628456, 33.441795, 28.006529>,  <33.511341, 33.246826, 27.929905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.628456, 33.441795, 28.006529>,  <33.823647, 33.766743, 28.134235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628456, 33.441795, 28.006529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072269, 0.326912, -0.942288,
		0.869860, -0.482887, -0.100815,
		-0.487976, -0.812373, -0.319265,
		33.482063, 33.198082, 27.910749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205303, 33.526970, 27.517506>,  <33.823647, 33.766743, 28.134235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205303, 33.526970, 27.517506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853962, 33.336056, 27.507004>,  <33.643158, 33.221508, 27.500702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853962, 33.336056, 27.507004>,  <34.205303, 33.526970, 27.517506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853962, 33.336056, 27.507004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048481, 0.143596, -0.988448,
		0.475546, -0.866934, -0.149267,
		-0.878354, -0.477290, -0.026256,
		33.590454, 33.192867, 27.499126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306763, 32.995369, 26.927900>,  <34.205303, 33.526970, 27.517506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306763, 32.995369, 26.927900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916466, 33.058701, 26.988388>,  <33.682289, 33.096699, 27.024681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916466, 33.058701, 26.988388>,  <34.306763, 32.995369, 26.927900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916466, 33.058701, 26.988388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100583, 0.289322, -0.951933,
		-0.194466, -0.944047, -0.266378,
		-0.975739, 0.158325, 0.151218,
		33.623745, 33.106197, 27.033754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945484, 32.707527, 26.296850>,  <34.306763, 32.995369, 26.927900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945484, 32.707527, 26.296850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687603, 32.963650, 26.463875>,  <33.532875, 33.117325, 26.564089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687603, 32.963650, 26.463875>,  <33.945484, 32.707527, 26.296850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687603, 32.963650, 26.463875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253626, 0.336125, -0.907025,
		-0.721130, -0.690669, -0.054302,
		-0.644706, 0.640310, 0.417561,
		33.494190, 33.155743, 26.589144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238579, 32.634243, 25.995564>,  <33.945484, 32.707527, 26.296850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238579, 32.634243, 25.995564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200020, 32.996414, 26.160931>,  <33.176884, 33.213715, 26.260151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200020, 32.996414, 26.160931>,  <33.238579, 32.634243, 25.995564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200020, 32.996414, 26.160931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211772, 0.387184, -0.897352,
		-0.972553, -0.174054, 0.154419,
		-0.096399, 0.905425, 0.413417,
		33.171101, 33.268040, 26.284956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625687, 32.959957, 25.769672>,  <33.238579, 32.634243, 25.995564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625687, 32.959957, 25.769672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868237, 33.248432, 25.903658>,  <33.013767, 33.421516, 25.984049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868237, 33.248432, 25.903658>,  <32.625687, 32.959957, 25.769672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868237, 33.248432, 25.903658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048842, 0.454228, -0.889545,
		-0.793679, 0.523036, 0.310656,
		0.606373, 0.721186, 0.334965,
		33.050148, 33.464787, 26.004147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331512, 33.695850, 25.523750>,  <32.625687, 32.959957, 25.769672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331512, 33.695850, 25.523750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727570, 33.673988, 25.575319>,  <32.965206, 33.660873, 25.606260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727570, 33.673988, 25.575319>,  <32.331512, 33.695850, 25.523750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727570, 33.673988, 25.575319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139780, 0.440510, -0.886799,
		-0.008327, 0.896083, 0.443809,
		0.990148, -0.054651, 0.128923,
		33.024612, 33.657593, 25.613997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511845, 34.336926, 25.292202>,  <32.331512, 33.695850, 25.523750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511845, 34.336926, 25.292202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838345, 34.106323, 25.277388>,  <33.034245, 33.967960, 25.268499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838345, 34.106323, 25.277388>,  <32.511845, 34.336926, 25.292202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838345, 34.106323, 25.277388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286876, 0.460151, -0.840216,
		0.501434, 0.675202, 0.540985,
		0.816251, -0.576509, -0.037036,
		33.083221, 33.933369, 25.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961315, 34.818245, 25.195311>,  <32.511845, 34.336926, 25.292202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961315, 34.818245, 25.195311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140079, 34.477528, 25.085966>,  <33.247337, 34.273098, 25.020359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140079, 34.477528, 25.085966>,  <32.961315, 34.818245, 25.195311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140079, 34.477528, 25.085966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367592, 0.453442, -0.811952,
		0.815566, 0.262383, 0.515758,
		0.446909, -0.851790, -0.273362,
		33.274151, 34.221992, 25.003958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698536, 34.946129, 25.093565>,  <32.961315, 34.818245, 25.195311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698536, 34.946129, 25.093565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608421, 34.630089, 24.865536>,  <33.554352, 34.440464, 24.728718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608421, 34.630089, 24.865536>,  <33.698536, 34.946129, 25.093565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608421, 34.630089, 24.865536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308448, 0.497178, -0.810971,
		0.924178, -0.358540, 0.131696,
		-0.225289, -0.790103, -0.570072,
		33.540833, 34.393059, 24.694513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191151, 34.953968, 24.659500>,  <33.698536, 34.946129, 25.093565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191151, 34.953968, 24.659500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945694, 34.697468, 24.475218>,  <33.798420, 34.543568, 24.364649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945694, 34.697468, 24.475218>,  <34.191151, 34.953968, 24.659500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945694, 34.697468, 24.475218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243580, 0.401282, -0.882973,
		0.751078, -0.654045, -0.090046,
		-0.613638, -0.641248, -0.460706,
		33.761604, 34.505093, 24.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598743, 34.613106, 24.105013>,  <34.191151, 34.953968, 24.659500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598743, 34.613106, 24.105013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217739, 34.568909, 23.991507>,  <33.989136, 34.542393, 23.923403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217739, 34.568909, 23.991507>,  <34.598743, 34.613106, 24.105013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217739, 34.568909, 23.991507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259146, 0.195245, -0.945898,
		0.159913, -0.974511, -0.157340,
		-0.952508, -0.110487, -0.283763,
		33.931988, 34.535763, 23.906378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111816, 34.115299, 23.733019>,  <34.598743, 34.613106, 24.105013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111816, 34.115299, 23.733019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470802, 34.280342, 23.795385>,  <35.686195, 34.379368, 23.832806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470802, 34.280342, 23.795385>,  <35.111816, 34.115299, 23.733019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470802, 34.280342, 23.795385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080714, -0.501138, 0.861595,
		0.433636, -0.760668, -0.483057,
		0.897466, 0.412608, 0.155914,
		35.740044, 34.404125, 23.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452717, 33.491077, 23.914555>,  <35.111816, 34.115299, 23.733019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452717, 33.491077, 23.914555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.669502, 33.800804, 24.045223>,  <35.799572, 33.986641, 24.123625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.669502, 33.800804, 24.045223>,  <35.452717, 33.491077, 23.914555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669502, 33.800804, 24.045223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172317, -0.482837, 0.858589,
		0.822547, -0.409032, -0.395107,
		0.541963, 0.774313, 0.326673,
		35.832092, 34.033096, 24.143225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933723, 33.180954, 24.402668>,  <35.452717, 33.491077, 23.914555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933723, 33.180954, 24.402668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951000, 33.566963, 24.506107>,  <35.961369, 33.798569, 24.568171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951000, 33.566963, 24.506107>,  <35.933723, 33.180954, 24.402668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951000, 33.566963, 24.506107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356519, -0.256685, 0.898336,
		0.933289, 0.053390, -0.355135,
		0.043196, 0.965019, 0.258596,
		35.963959, 33.856468, 24.583687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703304, 33.385445, 24.586508>,  <35.933723, 33.180954, 24.402668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703304, 33.385445, 24.586508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431248, 33.629642, 24.748844>,  <36.268013, 33.776161, 24.846247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431248, 33.629642, 24.748844>,  <36.703304, 33.385445, 24.586508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431248, 33.629642, 24.748844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471230, -0.059996, 0.879967,
		0.561565, 0.789744, -0.246878,
		-0.680138, 0.610495, 0.405843,
		36.227207, 33.812790, 24.870598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156902, 33.921886, 24.920673>,  <36.703304, 33.385445, 24.586508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156902, 33.921886, 24.920673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795971, 33.924919, 25.093071>,  <36.579414, 33.926739, 25.196508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795971, 33.924919, 25.093071>,  <37.156902, 33.921886, 24.920673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795971, 33.924919, 25.093071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427813, -0.106718, 0.897545,
		0.052798, 0.994261, 0.093051,
		-0.902324, 0.007580, 0.430992,
		36.525272, 33.927193, 25.222368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233524, 34.387829, 25.486065>,  <37.156902, 33.921886, 24.920673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233524, 34.387829, 25.486065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918102, 34.153645, 25.561338>,  <36.728848, 34.013134, 25.606503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918102, 34.153645, 25.561338>,  <37.233524, 34.387829, 25.486065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918102, 34.153645, 25.561338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353701, -0.181465, 0.917587,
		-0.503060, 0.790133, 0.350173,
		-0.788560, -0.585458, 0.188183,
		36.681534, 33.978008, 25.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140965, 34.499241, 26.248056>,  <37.233524, 34.387829, 25.486065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140965, 34.499241, 26.248056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896877, 34.188877, 26.184065>,  <36.750423, 34.002659, 26.145670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896877, 34.188877, 26.184065>,  <37.140965, 34.499241, 26.248056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896877, 34.188877, 26.184065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132161, -0.298807, 0.945118,
		-0.781129, 0.555589, 0.284883,
		-0.610223, -0.775909, -0.159979,
		36.713810, 33.956104, 26.136070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748272, 34.421013, 26.823875>,  <37.140965, 34.499241, 26.248056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748272, 34.421013, 26.823875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694111, 34.060951, 26.658279>,  <36.661613, 33.844913, 26.558922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694111, 34.060951, 26.658279>,  <36.748272, 34.421013, 26.823875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694111, 34.060951, 26.658279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063419, -0.424857, 0.903036,
		-0.988759, 0.096016, 0.114613,
		-0.135400, -0.900154, -0.413992,
		36.653492, 33.790905, 26.534082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261189, 34.081112, 27.275640>,  <36.748272, 34.421013, 26.823875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261189, 34.081112, 27.275640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480965, 33.814960, 27.073498>,  <36.612831, 33.655270, 26.952211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480965, 33.814960, 27.073498>,  <36.261189, 34.081112, 27.275640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480965, 33.814960, 27.073498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124426, -0.532931, 0.836961,
		-0.826218, -0.522738, -0.210022,
		0.549438, -0.665380, -0.505359,
		36.645798, 33.615345, 26.921890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895969, 33.484749, 27.164654>,  <36.261189, 34.081112, 27.275640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895969, 33.484749, 27.164654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287872, 33.404720, 27.167559>,  <36.523014, 33.356701, 27.169302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287872, 33.404720, 27.167559>,  <35.895969, 33.484749, 27.164654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287872, 33.404720, 27.167559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110675, -0.511038, 0.852403,
		-0.166832, -0.835949, -0.522835,
		0.979754, -0.200073, 0.007261,
		36.581799, 33.344700, 27.169737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860359, 32.839752, 27.512360>,  <35.895969, 33.484749, 27.164654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860359, 32.839752, 27.512360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249142, 32.933491, 27.504509>,  <36.482410, 32.989735, 27.499798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249142, 32.933491, 27.504509>,  <35.860359, 32.839752, 27.512360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249142, 32.933491, 27.504509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168759, -0.636945, 0.752211,
		0.163774, -0.734428, -0.658630,
		0.971956, 0.234342, -0.019627,
		36.540730, 33.003792, 27.498621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309357, 32.195370, 27.402233>,  <35.860359, 32.839752, 27.512360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309357, 32.195370, 27.402233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525925, 32.473759, 27.590906>,  <36.655865, 32.640793, 27.704109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525925, 32.473759, 27.590906>,  <36.309357, 32.195370, 27.402233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525925, 32.473759, 27.590906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151311, -0.632524, 0.759617,
		0.827024, -0.339901, -0.447770,
		0.541420, 0.695974, 0.471682,
		36.688351, 32.682552, 27.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924473, 31.902464, 27.601181>,  <36.309357, 32.195370, 27.402233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924473, 31.902464, 27.601181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949444, 32.211136, 27.854357>,  <36.964424, 32.396339, 28.006262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949444, 32.211136, 27.854357>,  <36.924473, 31.902464, 27.601181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949444, 32.211136, 27.854357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033289, -0.635434, 0.771438,
		0.997495, -0.027087, -0.065355,
		0.062424, 0.771680, 0.632940,
		36.968170, 32.442638, 28.044239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333393, 31.673410, 28.108185>,  <36.924473, 31.902464, 27.601181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333393, 31.673410, 28.108185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126961, 31.962862, 28.291496>,  <37.003101, 32.136532, 28.401484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126961, 31.962862, 28.291496>,  <37.333393, 31.673410, 28.108185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126961, 31.962862, 28.291496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097055, -0.482187, 0.870675,
		0.851023, 0.493817, 0.178616,
		-0.516081, 0.723629, 0.458280,
		36.972137, 32.179951, 28.428980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.761169, 36.282768, 23.607235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493500, 36.540768, 23.754847>,  <38.332897, 36.695568, 23.843412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493500, 36.540768, 23.754847>,  <38.761169, 36.282768, 23.607235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493500, 36.540768, 23.754847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136759, 0.381225, -0.914311,
		-0.730412, -0.662302, -0.166897,
		-0.669175, 0.644999, 0.369027,
		38.292747, 36.734268, 23.865555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219578, 36.228188, 23.215595>,  <38.761169, 36.282768, 23.607235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219578, 36.228188, 23.215595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.183582, 36.588234, 23.386097>,  <38.161983, 36.804260, 23.488398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.183582, 36.588234, 23.386097>,  <38.219578, 36.228188, 23.215595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183582, 36.588234, 23.386097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400953, 0.359032, -0.842813,
		-0.911668, -0.246755, 0.328593,
		-0.089993, 0.900116, 0.426255,
		38.156586, 36.858269, 23.513973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744438, 36.493462, 22.858215>,  <38.219578, 36.228188, 23.215595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744438, 36.493462, 22.858215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892410, 36.831814, 23.011911>,  <37.981194, 37.034824, 23.104128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892410, 36.831814, 23.011911>,  <37.744438, 36.493462, 22.858215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892410, 36.831814, 23.011911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200494, 0.476519, -0.855998,
		-0.907166, 0.239626, 0.345874,
		0.369935, 0.845878, 0.384238,
		38.003391, 37.085579, 23.127182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241199, 36.914249, 22.679142>,  <37.744438, 36.493462, 22.858215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241199, 36.914249, 22.679142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557793, 37.147694, 22.751749>,  <37.747749, 37.287762, 22.795313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557793, 37.147694, 22.751749>,  <37.241199, 36.914249, 22.679142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557793, 37.147694, 22.751749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314901, 0.643929, -0.697275,
		-0.523826, 0.494721, 0.693439,
		0.791482, 0.583615, 0.181519,
		37.795238, 37.322777, 22.806204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017426, 37.646732, 22.644201>,  <37.241199, 36.914249, 22.679142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017426, 37.646732, 22.644201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.415188, 37.680103, 22.618277>,  <37.653843, 37.700127, 22.602722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.415188, 37.680103, 22.618277>,  <37.017426, 37.646732, 22.644201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415188, 37.680103, 22.618277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104865, 0.705046, -0.701366,
		-0.012819, 0.704237, 0.709849,
		0.994404, 0.083429, -0.064812,
		37.713509, 37.705132, 22.598833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008900, 38.433090, 22.491867>,  <37.017426, 37.646732, 22.644201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008900, 38.433090, 22.491867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362373, 38.272030, 22.396385>,  <37.574455, 38.175392, 22.339096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362373, 38.272030, 22.396385>,  <37.008900, 38.433090, 22.491867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362373, 38.272030, 22.396385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120821, 0.688877, -0.714738,
		0.452228, 0.602760, 0.657396,
		0.883681, -0.402652, -0.238703,
		37.627480, 38.151234, 22.324774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481277, 38.971527, 22.294901>,  <37.008900, 38.433090, 22.491867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481277, 38.971527, 22.294901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620186, 38.637203, 22.124804>,  <37.703529, 38.436611, 22.022745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620186, 38.637203, 22.124804>,  <37.481277, 38.971527, 22.294901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620186, 38.637203, 22.124804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140448, 0.494705, -0.857637,
		0.927189, 0.238104, 0.289182,
		0.347267, -0.835807, -0.425245,
		37.724365, 38.386459, 21.997231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170174, 39.135025, 22.151140>,  <37.481277, 38.971527, 22.294901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170174, 39.135025, 22.151140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066673, 38.836174, 21.906240>,  <38.004574, 38.656864, 21.759300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066673, 38.836174, 21.906240>,  <38.170174, 39.135025, 22.151140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066673, 38.836174, 21.906240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179677, 0.585544, -0.790477,
		0.949087, -0.314542, -0.017266,
		-0.258748, -0.747129, -0.612248,
		37.989048, 38.612034, 21.722567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701691, 39.069332, 21.642658>,  <38.170174, 39.135025, 22.151140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701691, 39.069332, 21.642658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369972, 38.901295, 21.495264>,  <38.170940, 38.800472, 21.406828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369972, 38.901295, 21.495264>,  <38.701691, 39.069332, 21.642658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369972, 38.901295, 21.495264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237356, 0.332159, -0.912870,
		0.505891, -0.844504, -0.175746,
		-0.829299, -0.420098, -0.368485,
		38.121181, 38.775265, 21.384718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994598, 38.796768, 21.046400>,  <38.701691, 39.069332, 21.642658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994598, 38.796768, 21.046400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596333, 38.806099, 21.010370>,  <38.357372, 38.811699, 20.988752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596333, 38.806099, 21.010370>,  <38.994598, 38.796768, 21.046400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596333, 38.806099, 21.010370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092891, 0.304797, -0.947877,
		0.005341, -0.952132, -0.305642,
		-0.995662, 0.023329, -0.090072,
		38.297634, 38.813099, 20.983349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676853, 38.314484, 20.572008>,  <38.994598, 38.796768, 21.046400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676853, 38.314484, 20.572008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.433899, 38.632080, 20.582300>,  <38.288124, 38.822636, 20.588474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.433899, 38.632080, 20.582300>,  <38.676853, 38.314484, 20.572008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433899, 38.632080, 20.582300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159464, 0.153589, -0.975183,
		-0.778235, -0.588212, -0.219901,
		-0.607389, 0.793988, 0.025729,
		38.251682, 38.870277, 20.590019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426041, 38.291424, 19.917686>,  <38.676853, 38.314484, 20.572008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426041, 38.291424, 19.917686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283173, 38.641659, 20.047773>,  <38.197453, 38.851799, 20.125826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283173, 38.641659, 20.047773>,  <38.426041, 38.291424, 19.917686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283173, 38.641659, 20.047773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033851, 0.360091, -0.932303,
		-0.933424, -0.321986, -0.158255,
		-0.357175, 0.875591, 0.325218,
		38.176022, 38.904335, 20.145338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816544, 38.494125, 19.458937>,  <38.426041, 38.291424, 19.917686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816544, 38.494125, 19.458937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.959442, 38.824177, 19.633993>,  <38.045181, 39.022209, 19.739027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.959442, 38.824177, 19.633993>,  <37.816544, 38.494125, 19.458937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959442, 38.824177, 19.633993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051658, 0.450391, -0.891336,
		-0.932579, 0.341037, 0.118278,
		0.357249, 0.825131, 0.437643,
		38.066616, 39.071716, 19.765285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264038, 37.922466, 19.316870>,  <37.816544, 38.494125, 19.458937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264038, 37.922466, 19.316870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932320, 37.767330, 19.155949>,  <36.733288, 37.674248, 19.059397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932320, 37.767330, 19.155949>,  <37.264038, 37.922466, 19.316870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932320, 37.767330, 19.155949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063078, -0.650355, 0.757007,
		-0.555239, 0.653159, 0.514872,
		-0.829295, -0.387843, -0.402302,
		36.683533, 37.650978, 19.035257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809200, 37.897846, 19.832184>,  <37.264038, 37.922466, 19.316870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809200, 37.897846, 19.832184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744144, 37.623035, 19.548906>,  <36.705112, 37.458149, 19.378941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744144, 37.623035, 19.548906>,  <36.809200, 37.897846, 19.832184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744144, 37.623035, 19.548906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109953, -0.700661, 0.704972,
		-0.980540, 0.192525, 0.038414,
		-0.162640, -0.687029, -0.708195,
		36.695351, 37.416927, 19.336449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364285, 37.510616, 20.170942>,  <36.809200, 37.897846, 19.832184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364285, 37.510616, 20.170942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.506287, 37.275520, 19.880142>,  <36.591488, 37.134464, 19.705662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.506287, 37.275520, 19.880142>,  <36.364285, 37.510616, 20.170942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506287, 37.275520, 19.880142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070030, -0.792190, 0.606244,
		-0.932236, -0.164310, -0.322395,
		0.355010, -0.587740, -0.727001,
		36.612789, 37.099197, 19.662043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836639, 37.090252, 20.104229>,  <36.364285, 37.510616, 20.170942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836639, 37.090252, 20.104229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166283, 36.927235, 19.946875>,  <36.364067, 36.829422, 19.852461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166283, 36.927235, 19.946875>,  <35.836639, 37.090252, 20.104229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166283, 36.927235, 19.946875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029184, -0.724126, 0.689050,
		-0.565681, -0.556371, -0.608651,
		0.824107, -0.407545, -0.393387,
		36.413513, 36.804970, 19.828857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608040, 36.372902, 20.019682>,  <35.836639, 37.090252, 20.104229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608040, 36.372902, 20.019682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006954, 36.376293, 19.990435>,  <36.246304, 36.378330, 19.972887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006954, 36.376293, 19.990435>,  <35.608040, 36.372902, 20.019682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006954, 36.376293, 19.990435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050194, -0.804933, 0.591239,
		-0.053839, -0.593305, -0.803175,
		0.997288, 0.008483, -0.073117,
		36.306141, 36.378838, 19.968500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731842, 35.655182, 20.062593>,  <35.608040, 36.372902, 20.019682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731842, 35.655182, 20.062593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087730, 35.814228, 20.152298>,  <36.301266, 35.909657, 20.206121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087730, 35.814228, 20.152298>,  <35.731842, 35.655182, 20.062593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087730, 35.814228, 20.152298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070161, -0.604532, 0.793485,
		0.451075, -0.690248, -0.565764,
		0.889724, 0.397616, 0.224261,
		36.354649, 35.933514, 20.219576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130970, 35.139778, 20.151697>,  <35.731842, 35.655182, 20.062593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130970, 35.139778, 20.151697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320705, 35.435619, 20.342690>,  <36.434547, 35.613125, 20.457285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320705, 35.435619, 20.342690>,  <36.130970, 35.139778, 20.151697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320705, 35.435619, 20.342690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009189, -0.546508, 0.837403,
		0.880296, -0.392822, -0.266024,
		0.474335, 0.739608, 0.477480,
		36.463005, 35.657501, 20.485933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712849, 34.883801, 20.508329>,  <36.130970, 35.139778, 20.151697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712849, 34.883801, 20.508329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607342, 35.212349, 20.710627>,  <36.544037, 35.409477, 20.832005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607342, 35.212349, 20.710627>,  <36.712849, 34.883801, 20.508329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607342, 35.212349, 20.710627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026868, -0.530364, 0.847344,
		0.964211, 0.209916, 0.161963,
		-0.263770, 0.821371, 0.505742,
		36.528210, 35.458759, 20.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216679, 34.877026, 21.145046>,  <36.712849, 34.883801, 20.508329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216679, 34.877026, 21.145046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916901, 35.132954, 21.213116>,  <36.737034, 35.286510, 21.253958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916901, 35.132954, 21.213116>,  <37.216679, 34.877026, 21.145046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916901, 35.132954, 21.213116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094596, -0.357878, 0.928964,
		0.655273, 0.680111, 0.328735,
		-0.749445, 0.639823, 0.170172,
		36.692066, 35.324902, 21.264168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303928, 35.197433, 21.794827>,  <37.216679, 34.877026, 21.145046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303928, 35.197433, 21.794827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913048, 35.238014, 21.720217>,  <36.678520, 35.262363, 21.675451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913048, 35.238014, 21.720217>,  <37.303928, 35.197433, 21.794827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913048, 35.238014, 21.720217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207268, -0.265043, 0.941697,
		0.046103, 0.958884, 0.280028,
		-0.977197, 0.101456, -0.186527,
		36.619888, 35.268452, 21.664259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081753, 35.647427, 22.326426>,  <37.303928, 35.197433, 21.794827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081753, 35.647427, 22.326426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751537, 35.454041, 22.209982>,  <36.553410, 35.338009, 22.140116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751537, 35.454041, 22.209982>,  <37.081753, 35.647427, 22.326426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751537, 35.454041, 22.209982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176956, -0.268063, 0.947010,
		-0.535885, 0.833307, 0.135744,
		-0.825538, -0.483468, -0.291110,
		36.503876, 35.308998, 22.122648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652756, 35.858589, 22.738380>,  <37.081753, 35.647427, 22.326426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652756, 35.858589, 22.738380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457741, 35.526730, 22.629581>,  <36.340733, 35.327614, 22.564302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457741, 35.526730, 22.629581>,  <36.652756, 35.858589, 22.738380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457741, 35.526730, 22.629581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026642, -0.325524, 0.945158,
		-0.872695, 0.453555, 0.180809,
		-0.487539, -0.829652, -0.272000,
		36.311478, 35.277836, 22.547981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090626, 35.848316, 23.174702>,  <36.652756, 35.858589, 22.738380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090626, 35.848316, 23.174702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088684, 35.472214, 23.038525>,  <36.087521, 35.246552, 22.956820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088684, 35.472214, 23.038525>,  <36.090626, 35.848316, 23.174702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088684, 35.472214, 23.038525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101017, -0.338243, 0.935622,
		-0.994873, 0.038933, -0.093339,
		-0.004855, -0.940253, -0.340441,
		36.087227, 35.190136, 22.936392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453194, 35.469105, 23.424984>,  <36.090626, 35.848316, 23.174702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453194, 35.469105, 23.424984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677757, 35.166702, 23.290361>,  <35.812496, 34.985260, 23.209587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677757, 35.166702, 23.290361>,  <35.453194, 35.469105, 23.424984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677757, 35.166702, 23.290361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231137, -0.533765, 0.813431,
		-0.794603, -0.378878, -0.474403,
		0.561410, -0.756007, -0.336559,
		35.846180, 34.939899, 23.189394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095329, 34.890484, 23.496155>,  <35.453194, 35.469105, 23.424984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095329, 34.890484, 23.496155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479881, 34.780434, 23.499084>,  <35.710613, 34.714405, 23.500843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479881, 34.780434, 23.499084>,  <35.095329, 34.890484, 23.496155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479881, 34.780434, 23.499084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146490, -0.488998, 0.859896,
		-0.232994, -0.827761, -0.510417,
		0.961381, -0.275122, 0.007325,
		35.768295, 34.697895, 23.501282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593967, 34.392330, 23.345968>,  <35.095329, 34.890484, 23.496155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593967, 34.392330, 23.345968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231579, 34.553177, 23.398918>,  <34.014145, 34.649685, 23.430689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231579, 34.553177, 23.398918>,  <34.593967, 34.392330, 23.345968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231579, 34.553177, 23.398918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037915, 0.234359, -0.971410,
		-0.421648, -0.885084, -0.197075,
		-0.905967, 0.402121, 0.132375,
		33.959789, 34.673813, 23.438631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241032, 34.175854, 22.832014>,  <34.593967, 34.392330, 23.345968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241032, 34.175854, 22.832014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063946, 34.510883, 22.960058>,  <33.957695, 34.711903, 23.036884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063946, 34.510883, 22.960058>,  <34.241032, 34.175854, 22.832014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063946, 34.510883, 22.960058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036371, 0.373481, -0.926924,
		-0.895926, -0.398719, -0.195808,
		-0.442713, 0.837577, 0.320110,
		33.931133, 34.762157, 23.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822906, 34.420673, 22.288240>,  <34.241032, 34.175854, 22.832014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822906, 34.420673, 22.288240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802448, 34.767128, 22.487112>,  <33.790173, 34.975002, 22.606436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802448, 34.767128, 22.487112>,  <33.822906, 34.420673, 22.288240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802448, 34.767128, 22.487112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189492, 0.480371, -0.856350,
		-0.980549, -0.138010, 0.139558,
		-0.051145, 0.866139, 0.497180,
		33.787106, 35.026970, 22.636267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296963, 34.835258, 22.043903>,  <33.822906, 34.420673, 22.288240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296963, 34.835258, 22.043903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484039, 35.142464, 22.218912>,  <33.596287, 35.326786, 22.323917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484039, 35.142464, 22.218912>,  <33.296963, 34.835258, 22.043903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484039, 35.142464, 22.218912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157155, 0.559362, -0.813890,
		-0.869808, 0.311892, 0.382306,
		0.467692, 0.768009, 0.437522,
		33.624348, 35.372868, 22.350168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868919, 35.377701, 21.843235>,  <33.296963, 34.835258, 22.043903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868919, 35.377701, 21.843235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210506, 35.529766, 21.985342>,  <33.415459, 35.621006, 22.070606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210506, 35.529766, 21.985342>,  <32.868919, 35.377701, 21.843235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210506, 35.529766, 21.985342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025519, 0.651360, -0.758340,
		-0.519700, 0.656664, 0.546539,
		0.853968, 0.380162, 0.355269,
		33.466698, 35.643814, 22.091923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752472, 36.046394, 21.930504>,  <32.868919, 35.377701, 21.843235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752472, 36.046394, 21.930504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150902, 36.022213, 21.904640>,  <33.389961, 36.007706, 21.889122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150902, 36.022213, 21.904640>,  <32.752472, 36.046394, 21.930504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150902, 36.022213, 21.904640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019781, 0.559969, -0.828277,
		0.086280, 0.826305, 0.556575,
		0.996074, -0.060454, -0.064659,
		33.449722, 36.004078, 21.885242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950768, 36.703476, 21.849798>,  <32.752472, 36.046394, 21.930504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950768, 36.703476, 21.849798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257683, 36.485027, 21.715321>,  <33.441830, 36.353958, 21.634634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257683, 36.485027, 21.715321>,  <32.950768, 36.703476, 21.849798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257683, 36.485027, 21.715321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018711, 0.543070, -0.839479,
		0.641034, 0.637828, 0.426908,
		0.767284, -0.546122, -0.336192,
		33.487869, 36.321190, 21.614464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055038, 37.146553, 22.473412>,  <32.950768, 36.703476, 21.849798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055038, 37.146553, 22.473412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737103, 37.343410, 22.615410>,  <32.546341, 37.461525, 22.700609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737103, 37.343410, 22.615410>,  <33.055038, 37.146553, 22.473412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737103, 37.343410, 22.615410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185610, -0.754155, 0.629920,
		0.577732, 0.434796, 0.690780,
		-0.794842, 0.492141, 0.354997,
		32.498650, 37.491055, 22.721909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091434, 37.118973, 23.309689>,  <33.055038, 37.146553, 22.473412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091434, 37.118973, 23.309689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722275, 37.185665, 23.170862>,  <32.500778, 37.225681, 23.087566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722275, 37.185665, 23.170862>,  <33.091434, 37.118973, 23.309689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722275, 37.185665, 23.170862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362132, -0.682111, 0.635284,
		-0.130816, 0.711987, 0.689899,
		-0.922902, 0.166729, -0.347064,
		32.445404, 37.235683, 23.066742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635735, 37.287121, 23.984392>,  <33.091434, 37.118973, 23.309689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635735, 37.287121, 23.984392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397041, 37.151234, 23.693600>,  <32.253826, 37.069702, 23.519125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397041, 37.151234, 23.693600>,  <32.635735, 37.287121, 23.984392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397041, 37.151234, 23.693600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403939, -0.655636, 0.637946,
		-0.693353, 0.674341, 0.254018,
		-0.596736, -0.339714, -0.726980,
		32.218021, 37.049320, 23.475506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058640, 37.184296, 24.359619>,  <32.635735, 37.287121, 23.984392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058640, 37.184296, 24.359619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998819, 36.973213, 24.025156>,  <31.962929, 36.846561, 23.824478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998819, 36.973213, 24.025156>,  <32.058640, 37.184296, 24.359619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998819, 36.973213, 24.025156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499980, -0.689222, 0.524398,
		-0.853027, 0.496484, -0.160773,
		-0.149547, -0.527709, -0.836157,
		31.953955, 36.814899, 23.774309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278946, 37.151428, 24.498558>,  <32.058640, 37.184296, 24.359619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278946, 37.151428, 24.498558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.387550, 36.889477, 24.216446>,  <31.452713, 36.732307, 24.047178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.387550, 36.889477, 24.216446>,  <31.278946, 37.151428, 24.498558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387550, 36.889477, 24.216446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468857, -0.729970, 0.497309,
		-0.840509, 0.195651, -0.505238,
		0.271510, -0.654877, -0.705279,
		31.469004, 36.693012, 24.004862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773146, 36.792381, 24.260462>,  <31.278946, 37.151428, 24.498558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773146, 36.792381, 24.260462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067842, 36.538712, 24.166628>,  <31.244659, 36.386509, 24.110327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067842, 36.538712, 24.166628>,  <30.773146, 36.792381, 24.260462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067842, 36.538712, 24.166628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491907, -0.740716, 0.457567,
		-0.463940, -0.221715, -0.857672,
		0.736741, -0.634179, -0.234585,
		31.288864, 36.348457, 24.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533577, 36.160423, 23.948555>,  <30.773146, 36.792381, 24.260462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533577, 36.160423, 23.948555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877615, 36.058502, 24.125332>,  <31.084038, 35.997349, 24.231398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877615, 36.058502, 24.125332>,  <30.533577, 36.160423, 23.948555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877615, 36.058502, 24.125332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462364, -0.755405, 0.464308,
		0.215539, -0.603687, -0.767531,
		0.860094, -0.254802, 0.441943,
		31.135643, 35.982063, 24.257915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.852749, 41.750805, 22.083099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962463, 41.390614, 21.948099>,  <37.028290, 41.174500, 21.867098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962463, 41.390614, 21.948099>,  <36.852749, 41.750805, 22.083099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962463, 41.390614, 21.948099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295033, -0.412833, 0.861699,
		-0.915273, -0.136774, -0.378903,
		0.274282, -0.900479, -0.337502,
		37.044746, 41.120468, 21.846849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276218, 41.330727, 21.999336>,  <36.852749, 41.750805, 22.083099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276218, 41.330727, 21.999336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.584007, 41.079010, 22.042992>,  <36.768681, 40.927982, 22.069185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.584007, 41.079010, 22.042992>,  <36.276218, 41.330727, 21.999336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584007, 41.079010, 22.042992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400833, -0.342775, 0.849611,
		-0.497241, -0.697496, -0.515995,
		0.769470, -0.629289, 0.109138,
		36.814850, 40.890224, 22.075733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922272, 40.850601, 22.418175>,  <36.276218, 41.330727, 21.999336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922272, 40.850601, 22.418175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314571, 40.785210, 22.460884>,  <36.549953, 40.745975, 22.486509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314571, 40.785210, 22.460884>,  <35.922272, 40.850601, 22.418175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314571, 40.785210, 22.460884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159018, -0.351408, 0.922619,
		-0.113311, -0.921839, -0.370640,
		0.980752, -0.163481, 0.106771,
		36.608795, 40.736164, 22.492916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087791, 40.124008, 22.567318>,  <35.922272, 40.850601, 22.418175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087791, 40.124008, 22.567318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384148, 40.347702, 22.716093>,  <36.561962, 40.481918, 22.805359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384148, 40.347702, 22.716093>,  <36.087791, 40.124008, 22.567318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384148, 40.347702, 22.716093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175521, -0.373321, 0.910947,
		0.648286, -0.740194, -0.178433,
		0.740890, 0.559235, 0.371938,
		36.606415, 40.515472, 22.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285851, 39.777077, 23.080940>,  <36.087791, 40.124008, 22.567318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285851, 39.777077, 23.080940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.448761, 40.134571, 23.156153>,  <36.546509, 40.349068, 23.201281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.448761, 40.134571, 23.156153>,  <36.285851, 39.777077, 23.080940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448761, 40.134571, 23.156153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015001, -0.212400, 0.977068,
		0.913180, -0.395119, -0.099913,
		0.407279, 0.893738, 0.188033,
		36.570946, 40.402691, 23.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747276, 39.665474, 23.574627>,  <36.285851, 39.777077, 23.080940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747276, 39.665474, 23.574627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.730988, 40.063557, 23.610178>,  <36.721214, 40.302406, 23.631510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.730988, 40.063557, 23.610178>,  <36.747276, 39.665474, 23.574627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730988, 40.063557, 23.610178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048752, -0.086869, 0.995026,
		0.997980, 0.044851, -0.044981,
		-0.040721, 0.995210, 0.088880,
		36.718773, 40.362118, 23.636843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115044, 39.773079, 24.153337>,  <36.747276, 39.665474, 23.574627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115044, 39.773079, 24.153337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893673, 40.103222, 24.108593>,  <36.760853, 40.301308, 24.081745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893673, 40.103222, 24.108593>,  <37.115044, 39.773079, 24.153337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893673, 40.103222, 24.108593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064085, 0.091710, 0.993722,
		0.830431, 0.557117, 0.002138,
		-0.553423, 0.825354, -0.111862,
		36.727646, 40.350830, 24.075035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420601, 40.404713, 24.400663>,  <37.115044, 39.773079, 24.153337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420601, 40.404713, 24.400663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.026413, 40.465611, 24.430784>,  <36.789902, 40.502148, 24.448856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.026413, 40.465611, 24.430784>,  <37.420601, 40.404713, 24.400663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026413, 40.465611, 24.430784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077620, 0.009327, 0.996939,
		0.151078, 0.988299, -0.021009,
		-0.985470, 0.152246, 0.075302,
		36.730774, 40.511284, 24.453375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399708, 40.808762, 24.961136>,  <37.420601, 40.404713, 24.400663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399708, 40.808762, 24.961136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027927, 40.663956, 24.932669>,  <36.804859, 40.577072, 24.915588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027927, 40.663956, 24.932669>,  <37.399708, 40.808762, 24.961136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027927, 40.663956, 24.932669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029996, -0.118106, 0.992548,
		-0.367724, 0.924659, 0.098915,
		-0.929451, -0.362016, -0.071166,
		36.749092, 40.555351, 24.911318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964554, 41.228134, 25.482302>,  <37.399708, 40.808762, 24.961136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964554, 41.228134, 25.482302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774403, 40.892570, 25.376289>,  <36.660313, 40.691231, 25.312681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774403, 40.892570, 25.376289>,  <36.964554, 41.228134, 25.482302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774403, 40.892570, 25.376289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102664, -0.246294, 0.963742,
		-0.873770, 0.485352, 0.030957,
		-0.475379, -0.838911, -0.265033,
		36.631790, 40.640896, 25.296780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520687, 41.177532, 26.124239>,  <36.964554, 41.228134, 25.482302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520687, 41.177532, 26.124239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500294, 40.827309, 25.932074>,  <36.488060, 40.617176, 25.816774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500294, 40.827309, 25.932074>,  <36.520687, 41.177532, 26.124239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500294, 40.827309, 25.932074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072189, -0.476551, 0.876178,
		-0.996087, 0.079350, -0.038910,
		-0.050982, -0.875559, -0.480414,
		36.485001, 40.564640, 25.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878761, 40.841629, 26.323229>,  <36.520687, 41.177532, 26.124239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878761, 40.841629, 26.323229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161602, 40.584808, 26.204721>,  <36.331306, 40.430717, 26.133617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161602, 40.584808, 26.204721>,  <35.878761, 40.841629, 26.323229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161602, 40.584808, 26.204721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069090, -0.479711, 0.874702,
		-0.703727, -0.598036, -0.383565,
		0.707104, -0.642052, -0.296267,
		36.373734, 40.392193, 26.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202682, 40.497444, 26.180420>,  <35.878761, 40.841629, 26.323229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202682, 40.497444, 26.180420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.856709, 40.682716, 26.257736>,  <34.649124, 40.793880, 26.304127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.856709, 40.682716, 26.257736>,  <35.202682, 40.497444, 26.180420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856709, 40.682716, 26.257736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031332, 0.434204, -0.900270,
		-0.500913, -0.772614, -0.390068,
		-0.864930, 0.463178, 0.193290,
		34.597229, 40.821671, 26.315723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799690, 40.362484, 25.622217>,  <35.202682, 40.497444, 26.180420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799690, 40.362484, 25.622217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639572, 40.689873, 25.787077>,  <34.543503, 40.886307, 25.885992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639572, 40.689873, 25.787077>,  <34.799690, 40.362484, 25.622217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639572, 40.689873, 25.787077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238002, 0.341466, -0.909261,
		-0.884942, -0.462062, 0.058112,
		-0.400292, 0.818474, 0.412149,
		34.519485, 40.935413, 25.910721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160484, 40.366909, 25.341810>,  <34.799690, 40.362484, 25.622217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160484, 40.366909, 25.341810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240261, 40.735596, 25.474876>,  <34.288128, 40.956806, 25.554716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240261, 40.735596, 25.474876>,  <34.160484, 40.366909, 25.341810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240261, 40.735596, 25.474876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346661, 0.383898, -0.855832,
		-0.916542, 0.055368, 0.396088,
		0.199443, 0.921714, 0.332665,
		34.300095, 41.012112, 25.574677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524162, 40.675091, 25.163200>,  <34.160484, 40.366909, 25.341810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524162, 40.675091, 25.163200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792873, 40.967297, 25.212309>,  <33.954098, 41.142620, 25.241774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792873, 40.967297, 25.212309>,  <33.524162, 40.675091, 25.163200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792873, 40.967297, 25.212309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382271, 0.483842, -0.787252,
		-0.634498, 0.481923, 0.604286,
		0.671774, 0.730511, 0.122772,
		33.994404, 41.186451, 25.249140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133320, 41.357449, 25.272858>,  <33.524162, 40.675091, 25.163200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133320, 41.357449, 25.272858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499756, 41.455967, 25.146288>,  <33.719616, 41.515079, 25.070347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499756, 41.455967, 25.146288>,  <33.133320, 41.357449, 25.272858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499756, 41.455967, 25.146288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400936, 0.550860, -0.731986,
		-0.005980, 0.797428, 0.603384,
		0.916086, 0.246296, -0.316424,
		33.774582, 41.529854, 25.051361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212212, 42.137993, 25.112362>,  <33.133320, 41.357449, 25.272858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212212, 42.137993, 25.112362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.494091, 41.956455, 24.894213>,  <33.663219, 41.847534, 24.763323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.494091, 41.956455, 24.894213>,  <33.212212, 42.137993, 25.112362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494091, 41.956455, 24.894213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291871, 0.515178, -0.805856,
		0.646697, 0.727061, 0.230578,
		0.704695, -0.453845, -0.545372,
		33.705498, 41.820301, 24.730600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244045, 42.589840, 24.551266>,  <33.212212, 42.137993, 25.112362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244045, 42.589840, 24.551266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.487106, 42.298065, 24.425613>,  <33.632942, 42.123001, 24.350222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.487106, 42.298065, 24.425613>,  <33.244045, 42.589840, 24.551266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487106, 42.298065, 24.425613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255121, 0.195291, -0.946982,
		0.752110, 0.655579, -0.067424,
		0.607654, -0.729436, -0.314133,
		33.669403, 42.079235, 24.331373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624802, 42.879498, 23.958681>,  <33.244045, 42.589840, 24.551266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624802, 42.879498, 23.958681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.619934, 42.482151, 23.912937>,  <33.617012, 42.243744, 23.885490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.619934, 42.482151, 23.912937>,  <33.624802, 42.879498, 23.958681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619934, 42.482151, 23.912937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385367, 0.110191, -0.916160,
		0.922683, 0.032919, -0.384152,
		-0.012171, -0.993365, -0.114358,
		33.616283, 42.184143, 23.878630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113251, 42.729450, 23.320049>,  <33.624802, 42.879498, 23.958681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113251, 42.729450, 23.320049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.845306, 42.437283, 23.373386>,  <33.684540, 42.261982, 23.405390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.845306, 42.437283, 23.373386>,  <34.113251, 42.729450, 23.320049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845306, 42.437283, 23.373386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219220, 0.022976, -0.975405,
		0.709388, -0.682616, -0.175513,
		-0.669859, -0.730416, 0.133344,
		33.644348, 42.218159, 23.413389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140827, 42.289452, 22.691273>,  <34.113251, 42.729450, 23.320049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140827, 42.289452, 22.691273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.800682, 42.169735, 22.864388>,  <33.596596, 42.097904, 22.968256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.800682, 42.169735, 22.864388>,  <34.140827, 42.289452, 22.691273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800682, 42.169735, 22.864388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468809, 0.057422, -0.881431,
		0.238956, -0.952431, -0.189142,
		-0.850364, -0.299295, 0.432787,
		33.545574, 42.079945, 22.994223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812256, 41.651863, 22.307423>,  <34.140827, 42.289452, 22.691273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812256, 41.651863, 22.307423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.507820, 41.813698, 22.510225>,  <33.325157, 41.910797, 22.631907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.507820, 41.813698, 22.510225>,  <33.812256, 41.651863, 22.307423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507820, 41.813698, 22.510225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535916, 0.048141, -0.842898,
		-0.365431, -0.913233, 0.180184,
		-0.761087, 0.404584, 0.507008,
		33.279495, 41.935074, 22.662329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281506, 41.324924, 22.091114>,  <33.812256, 41.651863, 22.307423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281506, 41.324924, 22.091114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138737, 41.655571, 22.265156>,  <33.053074, 41.853958, 22.369581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138737, 41.655571, 22.265156>,  <33.281506, 41.324924, 22.091114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138737, 41.655571, 22.265156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500125, 0.224303, -0.836399,
		-0.788973, -0.516139, 0.333350,
		-0.356927, 0.826613, 0.435103,
		33.031658, 41.903557, 22.395687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677448, 41.077232, 22.688084>,  <33.281506, 41.324924, 22.091114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677448, 41.077232, 22.688084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966900, 40.824200, 22.798498>,  <34.140572, 40.672379, 22.864748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966900, 40.824200, 22.798498>,  <33.677448, 41.077232, 22.688084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966900, 40.824200, 22.798498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566105, 0.772789, 0.286919,
		-0.394819, -0.051357, 0.917322,
		0.723632, -0.632581, 0.276038,
		34.183990, 40.634426, 22.881310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330063, 40.483894, 23.169348>,  <33.677448, 41.077232, 22.688084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330063, 40.483894, 23.169348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127426, 40.522175, 22.826603>,  <33.005844, 40.545143, 22.620956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127426, 40.522175, 22.826603>,  <33.330063, 40.483894, 23.169348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127426, 40.522175, 22.826603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125787, -0.991391, -0.036361,
		-0.852963, 0.089362, 0.514266,
		-0.506589, 0.095702, -0.856860,
		32.975449, 40.550884, 22.569546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696171, 40.242012, 23.267305>,  <33.330063, 40.483894, 23.169348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696171, 40.242012, 23.267305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742477, 40.215107, 22.870907>,  <32.770260, 40.198963, 22.633068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742477, 40.215107, 22.870907>,  <32.696171, 40.242012, 23.267305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742477, 40.215107, 22.870907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034575, -0.997373, 0.063657,
		-0.992675, 0.026895, -0.117786,
		0.115765, -0.067263, -0.990997,
		32.777206, 40.194927, 22.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282520, 39.660526, 23.046434>,  <32.696171, 40.242012, 23.267305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282520, 39.660526, 23.046434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.466179, 39.706612, 22.694092>,  <32.576374, 39.734264, 22.482687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.466179, 39.706612, 22.694092>,  <32.282520, 39.660526, 23.046434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466179, 39.706612, 22.694092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074712, -0.983033, -0.167522,
		-0.885211, 0.142728, -0.442753,
		0.459151, 0.115213, -0.880855,
		32.603924, 39.741177, 22.429834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792566, 39.540970, 22.474257>,  <32.282520, 39.660526, 23.046434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792566, 39.540970, 22.474257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.157398, 39.461510, 22.330784>,  <32.376297, 39.413834, 22.244699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.157398, 39.461510, 22.330784>,  <31.792566, 39.540970, 22.474257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157398, 39.461510, 22.330784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143351, -0.974083, 0.174963,
		-0.384142, -0.108163, -0.916916,
		0.912078, -0.198652, -0.358681,
		32.431023, 39.401913, 22.223179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656597, 39.112793, 21.963011>,  <31.792566, 39.540970, 22.474257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656597, 39.112793, 21.963011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027912, 39.043571, 22.094669>,  <32.250702, 39.002037, 22.173664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027912, 39.043571, 22.094669>,  <31.656597, 39.112793, 21.963011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027912, 39.043571, 22.094669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219671, -0.969367, 0.109871,
		0.300049, -0.174296, -0.937866,
		0.928286, -0.173055, 0.329145,
		32.306396, 38.991653, 22.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857006, 38.447479, 21.576298>,  <31.656597, 39.112793, 21.963011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857006, 38.447479, 21.576298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.086887, 38.489628, 21.900917>,  <32.224815, 38.514919, 22.095688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.086887, 38.489628, 21.900917>,  <31.857006, 38.447479, 21.576298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086887, 38.489628, 21.900917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258030, -0.917759, 0.301891,
		0.776617, -0.382902, -0.500251,
		0.574705, 0.105374, 0.811548,
		32.259300, 38.521240, 22.144381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209305, 37.857601, 21.668100>,  <31.857006, 38.447479, 21.576298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209305, 37.857601, 21.668100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287037, 38.035889, 22.017630>,  <32.333675, 38.142860, 22.227348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287037, 38.035889, 22.017630>,  <32.209305, 37.857601, 21.668100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287037, 38.035889, 22.017630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008699, -0.889989, 0.455899,
		0.980897, -0.096198, -0.169079,
		0.194335, 0.445719, 0.873824,
		32.345337, 38.169605, 22.279778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845097, 37.535038, 21.911003>,  <32.209305, 37.857601, 21.668100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845097, 37.535038, 21.911003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.625137, 37.693092, 22.205343>,  <32.493160, 37.787926, 22.381948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.625137, 37.693092, 22.205343>,  <32.845097, 37.535038, 21.911003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625137, 37.693092, 22.205343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074602, -0.854256, 0.514472,
		0.831894, 0.337802, 0.440275,
		-0.549897, 0.395141, 0.735851,
		32.460167, 37.811634, 22.426098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483250, 37.190926, 21.720964>,  <32.845097, 37.535038, 21.911003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483250, 37.190926, 21.720964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.622551, 36.877907, 21.514534>,  <33.706131, 36.690094, 21.390676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.622551, 36.877907, 21.514534>,  <33.483250, 37.190926, 21.720964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622551, 36.877907, 21.514534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000094, 0.550511, -0.834828,
		0.937401, 0.290780, 0.191643,
		0.348253, -0.782550, -0.516076,
		33.727028, 36.643143, 21.359711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176258, 37.436676, 21.466127>,  <33.483250, 37.190926, 21.720964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176258, 37.436676, 21.466127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983162, 37.156155, 21.256311>,  <33.867306, 36.987843, 21.130423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983162, 37.156155, 21.256311>,  <34.176258, 37.436676, 21.466127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983162, 37.156155, 21.256311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061605, 0.570273, -0.819142,
		0.873595, -0.427745, -0.232089,
		-0.482738, -0.701301, -0.524539,
		33.838341, 36.945763, 21.098949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628540, 37.285843, 20.853397>,  <34.176258, 37.436676, 21.466127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628540, 37.285843, 20.853397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274006, 37.159100, 20.718334>,  <34.061287, 37.083054, 20.637297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274006, 37.159100, 20.718334>,  <34.628540, 37.285843, 20.853397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274006, 37.159100, 20.718334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112929, 0.559278, -0.821253,
		0.449063, -0.766037, -0.459925,
		-0.886335, -0.316855, -0.337658,
		34.008106, 37.064041, 20.617037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815742, 36.967716, 20.203079>,  <34.628540, 37.285843, 20.853397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815742, 36.967716, 20.203079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422745, 37.031044, 20.163797>,  <34.186947, 37.069042, 20.140228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422745, 37.031044, 20.163797>,  <34.815742, 36.967716, 20.203079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422745, 37.031044, 20.163797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143895, 0.310025, -0.939776,
		-0.118339, -0.937453, -0.327378,
		-0.982492, 0.158320, -0.098207,
		34.127998, 37.078541, 20.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567936, 36.564529, 19.520803>,  <34.815742, 36.967716, 20.203079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567936, 36.564529, 19.520803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300240, 36.852016, 19.596241>,  <34.139622, 37.024509, 19.641504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300240, 36.852016, 19.596241>,  <34.567936, 36.564529, 19.520803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300240, 36.852016, 19.596241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237519, 0.447416, -0.862209,
		-0.704062, -0.532229, -0.470137,
		-0.669239, 0.718715, 0.188594,
		34.099468, 37.067631, 19.652819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228607, 36.623325, 18.913761>,  <34.567936, 36.564529, 19.520803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228607, 36.623325, 18.913761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156448, 36.962513, 19.113119>,  <34.113155, 37.166027, 19.232735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156448, 36.962513, 19.113119>,  <34.228607, 36.623325, 18.913761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156448, 36.962513, 19.113119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244012, 0.529451, -0.812489,
		-0.952846, -0.024954, -0.302427,
		-0.180395, 0.847973, 0.498396,
		34.102329, 37.216904, 19.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836636, 37.084690, 18.484303>,  <34.228607, 36.623325, 18.913761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836636, 37.084690, 18.484303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 37.353458, 18.746019>,  <34.058731, 37.514721, 18.903049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 37.353458, 18.746019>,  <33.836636, 37.084690, 18.484303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975445, 37.353458, 18.746019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057693, 0.681031, -0.729978,
		-0.936082, 0.291064, 0.197566,
		0.347019, 0.671922, 0.654293,
		34.079552, 37.555035, 18.942307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462044, 37.700443, 18.296951>,  <33.836636, 37.084690, 18.484303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462044, 37.700443, 18.296951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782963, 37.835205, 18.494053>,  <33.975513, 37.916061, 18.612314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782963, 37.835205, 18.494053>,  <33.462044, 37.700443, 18.296951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782963, 37.835205, 18.494053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214996, 0.606999, -0.765068,
		-0.556856, 0.719755, 0.414564,
		0.802302, 0.336903, 0.492756,
		34.023655, 37.936275, 18.641880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398777, 38.397213, 18.235239>,  <33.462044, 37.700443, 18.296951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398777, 38.397213, 18.235239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.785374, 38.345650, 18.324039>,  <34.017330, 38.314713, 18.377319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.785374, 38.345650, 18.324039>,  <33.398777, 38.397213, 18.235239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785374, 38.345650, 18.324039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248329, 0.688690, -0.681204,
		-0.065076, 0.713504, 0.697623,
		0.966488, -0.128910, 0.222000,
		34.075321, 38.306976, 18.390640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.559658, 30.887993, 32.917583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938641, 30.792103, 32.832859>,  <34.166031, 30.734570, 32.782024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938641, 30.792103, 32.832859>,  <33.559658, 30.887993, 32.917583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938641, 30.792103, 32.832859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026373, 0.718414, -0.695116,
		0.318807, 0.653003, 0.686985,
		0.947453, -0.239726, -0.211813,
		34.222878, 30.720184, 32.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960270, 31.518969, 32.801823>,  <33.559658, 30.887993, 32.917583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960270, 31.518969, 32.801823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190228, 31.237986, 32.633987>,  <34.328201, 31.069397, 32.533287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190228, 31.237986, 32.633987>,  <33.960270, 31.518969, 32.801823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190228, 31.237986, 32.633987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110641, 0.574832, -0.810757,
		0.810716, 0.419672, 0.408185,
		0.574890, -0.702456, -0.419592,
		34.362694, 31.027248, 32.508110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511456, 31.922501, 32.492092>,  <33.960270, 31.518969, 32.801823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511456, 31.922501, 32.492092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531059, 31.559645, 32.324905>,  <34.542824, 31.341930, 32.224594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531059, 31.559645, 32.324905>,  <34.511456, 31.922501, 32.492092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531059, 31.559645, 32.324905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008448, 0.418831, -0.908025,
		0.998762, 0.040974, 0.028191,
		0.049012, -0.907140, -0.417966,
		34.545761, 31.287502, 32.199516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032417, 32.026848, 32.055882>,  <34.511456, 31.922501, 32.492092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032417, 32.026848, 32.055882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835724, 31.716330, 31.898109>,  <34.717709, 31.530020, 31.803448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835724, 31.716330, 31.898109>,  <35.032417, 32.026848, 32.055882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835724, 31.716330, 31.898109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024860, 0.440273, -0.897520,
		0.870392, -0.451144, -0.197197,
		-0.491731, -0.776291, -0.394426,
		34.688206, 31.483442, 31.779781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286865, 31.988251, 31.338287>,  <35.032417, 32.026848, 32.055882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286865, 31.988251, 31.338287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946537, 31.778635, 31.353720>,  <34.742340, 31.652864, 31.362980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946537, 31.778635, 31.353720>,  <35.286865, 31.988251, 31.338287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946537, 31.778635, 31.353720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213070, 0.276951, -0.936963,
		0.480321, -0.805406, -0.347293,
		-0.850819, -0.524041, 0.038582,
		34.691292, 31.621424, 31.365295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223820, 31.652479, 30.680431>,  <35.286865, 31.988251, 31.338287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223820, 31.652479, 30.680431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851334, 31.673975, 30.824625>,  <34.627842, 31.686872, 30.911140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851334, 31.673975, 30.824625>,  <35.223820, 31.652479, 30.680431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851334, 31.673975, 30.824625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342864, 0.206282, -0.916456,
		-0.123610, -0.977016, -0.173668,
		-0.931217, 0.053739, 0.360483,
		34.571968, 31.690096, 30.932770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779602, 31.392948, 30.161678>,  <35.223820, 31.652479, 30.680431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779602, 31.392948, 30.161678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504723, 31.567694, 30.393852>,  <34.339794, 31.672541, 30.533157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504723, 31.567694, 30.393852>,  <34.779602, 31.392948, 30.161678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504723, 31.567694, 30.393852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511796, 0.275909, -0.813597,
		-0.515580, -0.856167, 0.033982,
		-0.687199, 0.436866, 0.580436,
		34.298561, 31.698753, 30.567984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143764, 31.060461, 30.065620>,  <34.779602, 31.392948, 30.161678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143764, 31.060461, 30.065620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084190, 31.437328, 30.185709>,  <34.048447, 31.663448, 30.257763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084190, 31.437328, 30.185709>,  <34.143764, 31.060461, 30.065620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084190, 31.437328, 30.185709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415224, 0.215955, -0.883715,
		-0.897444, -0.256279, 0.359048,
		-0.148940, 0.942170, 0.300221,
		34.039509, 31.719980, 30.275776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693462, 31.236244, 29.655973>,  <34.143764, 31.060461, 30.065620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693462, 31.236244, 29.655973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781925, 31.603327, 29.787975>,  <33.835003, 31.823576, 29.867176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781925, 31.603327, 29.787975>,  <33.693462, 31.236244, 29.655973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781925, 31.603327, 29.787975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129780, 0.363069, -0.922680,
		-0.966564, 0.161229, 0.199395,
		0.221157, 0.917707, 0.330006,
		33.848274, 31.878639, 29.886976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160484, 31.573112, 29.465733>,  <33.693462, 31.236244, 29.655973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160484, 31.573112, 29.465733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429413, 31.859371, 29.541451>,  <33.590771, 32.031128, 29.586882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429413, 31.859371, 29.541451>,  <33.160484, 31.573112, 29.465733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429413, 31.859371, 29.541451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273852, 0.478023, -0.834565,
		-0.687742, 0.509256, 0.517367,
		0.672321, 0.715648, 0.189296,
		33.631107, 32.074066, 29.598240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836842, 32.204586, 29.476229>,  <33.160484, 31.573112, 29.465733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836842, 32.204586, 29.476229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218117, 32.285114, 29.385988>,  <33.446884, 32.333431, 29.331844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218117, 32.285114, 29.385988>,  <32.836842, 32.204586, 29.476229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218117, 32.285114, 29.385988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290527, 0.403060, -0.867835,
		-0.083778, 0.892757, 0.442681,
		0.953192, 0.201316, -0.225602,
		33.504074, 32.345509, 29.318308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788643, 32.778458, 29.290655>,  <32.836842, 32.204586, 29.476229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788643, 32.778458, 29.290655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145905, 32.699097, 29.129204>,  <33.360260, 32.651478, 29.032333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145905, 32.699097, 29.129204>,  <32.788643, 32.778458, 29.290655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145905, 32.699097, 29.129204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279460, 0.458346, -0.843695,
		0.352395, 0.866345, 0.353926,
		0.893152, -0.198406, -0.403627,
		33.413849, 32.639576, 29.008116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440331, 33.250202, 29.499434>,  <32.788643, 32.778458, 29.290655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440331, 33.250202, 29.499434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134918, 33.488319, 29.599550>,  <31.951670, 33.631187, 29.659620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134918, 33.488319, 29.599550>,  <32.440331, 33.250202, 29.499434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134918, 33.488319, 29.599550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204357, -0.144934, 0.968108,
		0.612581, 0.790331, -0.010990,
		-0.763533, 0.595290, 0.250294,
		31.905859, 33.666908, 29.674639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732189, 33.684193, 30.067389>,  <32.440331, 33.250202, 29.499434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732189, 33.684193, 30.067389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333996, 33.684269, 30.105354>,  <32.095078, 33.684315, 30.128134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333996, 33.684269, 30.105354>,  <32.732189, 33.684193, 30.067389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333996, 33.684269, 30.105354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094314, -0.110380, 0.989404,
		0.010662, 0.993889, 0.109864,
		-0.995485, 0.000187, 0.094915,
		32.035351, 33.684326, 30.133829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621704, 34.228001, 30.513124>,  <32.732189, 33.684193, 30.067389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621704, 34.228001, 30.513124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299442, 33.991310, 30.524260>,  <32.106083, 33.849297, 30.530941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299442, 33.991310, 30.524260>,  <32.621704, 34.228001, 30.513124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299442, 33.991310, 30.524260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161305, -0.173923, 0.971458,
		-0.569998, 0.787152, 0.235571,
		-0.805657, -0.591728, 0.027835,
		32.057747, 33.813793, 30.532610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270622, 34.272659, 31.126013>,  <32.621704, 34.228001, 30.513124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270622, 34.272659, 31.126013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056900, 33.949879, 31.025339>,  <31.928667, 33.756210, 30.964935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056900, 33.949879, 31.025339>,  <32.270622, 34.272659, 31.126013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056900, 33.949879, 31.025339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030864, -0.316171, 0.948200,
		-0.844729, 0.498859, 0.193837,
		-0.534304, -0.806955, -0.251682,
		31.896608, 33.707794, 30.949835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609491, 34.272259, 31.464951>,  <32.270622, 34.272659, 31.126013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609491, 34.272259, 31.464951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742529, 33.905884, 31.375122>,  <31.822351, 33.686058, 31.321226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742529, 33.905884, 31.375122>,  <31.609491, 34.272259, 31.464951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742529, 33.905884, 31.375122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096368, -0.203871, 0.974244,
		-0.938133, -0.345669, 0.020461,
		0.332595, -0.915942, -0.224570,
		31.842308, 33.631100, 31.307751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111803, 33.943279, 31.833633>,  <31.609491, 34.272259, 31.464951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111803, 33.943279, 31.833633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397694, 33.667549, 31.786306>,  <31.569227, 33.502110, 31.757910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397694, 33.667549, 31.786306>,  <31.111803, 33.943279, 31.833633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397694, 33.667549, 31.786306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216502, -0.378915, 0.899750,
		-0.665053, -0.617457, -0.420060,
		0.714724, -0.689326, -0.118317,
		31.612110, 33.460751, 31.750811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829857, 33.296154, 32.050476>,  <31.111803, 33.943279, 31.833633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829857, 33.296154, 32.050476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.218964, 33.208012, 32.079235>,  <31.452427, 33.155128, 32.096493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.218964, 33.208012, 32.079235>,  <30.829857, 33.296154, 32.050476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218964, 33.208012, 32.079235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144637, -0.334682, 0.931165,
		-0.181120, -0.916206, -0.357439,
		0.972767, -0.220351, 0.071899,
		31.510794, 33.141907, 32.100803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789911, 32.708790, 32.426411>,  <30.829857, 33.296154, 32.050476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789911, 32.708790, 32.426411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172117, 32.826149, 32.438465>,  <31.401442, 32.896564, 32.445698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172117, 32.826149, 32.438465>,  <30.789911, 32.708790, 32.426411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172117, 32.826149, 32.438465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005809, -0.083435, 0.996496,
		0.294884, -0.952343, -0.078020,
		0.955516, 0.293398, 0.030136,
		31.458773, 32.914169, 32.447506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092249, 32.242138, 32.788860>,  <30.789911, 32.708790, 32.426411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092249, 32.242138, 32.788860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345358, 32.551598, 32.801926>,  <31.497223, 32.737274, 32.809765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345358, 32.551598, 32.801926>,  <31.092249, 32.242138, 32.788860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345358, 32.551598, 32.801926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132608, -0.149827, 0.979779,
		0.762899, -0.615645, -0.197398,
		0.632772, 0.773649, 0.032663,
		31.535189, 32.783691, 32.811726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716047, 31.997738, 33.187115>,  <31.092249, 32.242138, 32.788860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716047, 31.997738, 33.187115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690182, 32.391193, 33.254372>,  <31.674662, 32.627266, 33.294727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690182, 32.391193, 33.254372>,  <31.716047, 31.997738, 33.187115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690182, 32.391193, 33.254372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081346, -0.162740, 0.983310,
		0.994586, 0.077263, -0.069491,
		-0.064664, 0.983639, 0.168144,
		31.670782, 32.686287, 33.304813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149788, 32.228012, 33.653683>,  <31.716047, 31.997738, 33.187115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149788, 32.228012, 33.653683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931150, 32.562008, 33.679077>,  <31.799969, 32.762405, 33.694313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931150, 32.562008, 33.679077>,  <32.149788, 32.228012, 33.653683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931150, 32.562008, 33.679077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192732, 0.051662, 0.979891,
		0.814920, 0.547833, -0.189167,
		-0.546589, 0.834991, 0.063485,
		31.767174, 32.812504, 33.698124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444393, 32.549461, 34.247986>,  <32.149788, 32.228012, 33.653683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444393, 32.549461, 34.247986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089809, 32.725018, 34.189236>,  <31.877060, 32.830353, 34.153984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089809, 32.725018, 34.189236>,  <32.444393, 32.549461, 34.247986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089809, 32.725018, 34.189236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078853, 0.169485, 0.982373,
		0.456047, 0.882411, -0.115633,
		-0.886455, 0.438890, -0.146874,
		31.823874, 32.856686, 34.145172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413662, 33.101246, 34.758556>,  <32.444393, 32.549461, 34.247986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413662, 33.101246, 34.758556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041145, 33.017765, 34.639130>,  <31.817636, 32.967678, 34.567474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041145, 33.017765, 34.639130>,  <32.413662, 33.101246, 34.758556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041145, 33.017765, 34.639130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329889, 0.135563, 0.934235,
		-0.154504, 0.968538, -0.195098,
		-0.931290, -0.208704, -0.298565,
		31.761759, 32.955154, 34.549561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107567, 33.658566, 35.034492>,  <32.413662, 33.101246, 34.758556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107567, 33.658566, 35.034492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837471, 33.367481, 34.986359>,  <31.675413, 33.192829, 34.957478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837471, 33.367481, 34.986359>,  <32.107567, 33.658566, 35.034492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837471, 33.367481, 34.986359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147425, -0.026696, 0.988713,
		-0.722711, 0.685363, -0.089257,
		-0.675244, -0.727713, -0.120333,
		31.634897, 33.149166, 34.950260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776409, 33.953865, 34.766041>,  <32.107567, 33.658566, 35.034492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776409, 33.953865, 34.766041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777782, 34.274860, 35.004704>,  <32.778606, 34.467457, 35.147900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777782, 34.274860, 35.004704>,  <32.776409, 33.953865, 34.766041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777782, 34.274860, 35.004704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237691, 0.580213, -0.779010,
		-0.971335, -0.139144, 0.192738,
		0.003435, 0.802491, 0.596654,
		32.778812, 34.515606, 35.183701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156593, 34.454983, 34.656219>,  <32.776409, 33.953865, 34.766041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156593, 34.454983, 34.656219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492546, 34.639301, 34.770947>,  <32.694118, 34.749893, 34.839783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492546, 34.639301, 34.770947>,  <32.156593, 34.454983, 34.656219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492546, 34.639301, 34.770947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124559, 0.677971, -0.724459,
		-0.528281, 0.572735, 0.626812,
		0.839884, 0.460793, 0.286820,
		32.744511, 34.777538, 34.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158249, 35.251266, 34.743809>,  <32.156593, 34.454983, 34.656219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158249, 35.251266, 34.743809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548370, 35.189892, 34.680267>,  <32.782444, 35.153069, 34.642143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548370, 35.189892, 34.680267>,  <32.158249, 35.251266, 34.743809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548370, 35.189892, 34.680267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016663, 0.768330, -0.639838,
		0.220225, 0.621391, 0.751914,
		0.975307, -0.153437, -0.158852,
		32.840961, 35.143860, 34.632610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525700, 35.851307, 34.761917>,  <32.158249, 35.251266, 34.743809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525700, 35.851307, 34.761917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793507, 35.636036, 34.557125>,  <32.954189, 35.506874, 34.434250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793507, 35.636036, 34.557125>,  <32.525700, 35.851307, 34.761917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793507, 35.636036, 34.557125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, 0.774978, -0.612865,
		0.726600, 0.331329, 0.601892,
		0.669513, -0.538173, -0.511979,
		32.994362, 35.474583, 34.403530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231689, 36.174580, 34.803169>,  <32.525700, 35.851307, 34.761917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231689, 36.174580, 34.803169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235203, 35.939106, 34.479843>,  <33.237312, 35.797821, 34.285847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235203, 35.939106, 34.479843>,  <33.231689, 36.174580, 34.803169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235203, 35.939106, 34.479843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144205, 0.800641, -0.581530,
		0.989509, -0.111454, 0.091927,
		0.008787, -0.588686, -0.808314,
		33.237839, 35.762501, 34.237350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925137, 36.212029, 34.481636>,  <33.231689, 36.174580, 34.803169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925137, 36.212029, 34.481636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662365, 36.106556, 34.199100>,  <33.504704, 36.043274, 34.029579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662365, 36.106556, 34.199100>,  <33.925137, 36.212029, 34.481636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662365, 36.106556, 34.199100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219836, 0.829154, -0.513980,
		0.721193, -0.492926, -0.486728,
		-0.656927, -0.263679, -0.706343,
		33.465286, 36.027451, 33.987198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193459, 36.428696, 33.826820>,  <33.925137, 36.212029, 34.481636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193459, 36.428696, 33.826820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802116, 36.380615, 33.759441>,  <33.567310, 36.351768, 33.719013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802116, 36.380615, 33.759441>,  <34.193459, 36.428696, 33.826820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802116, 36.380615, 33.759441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019059, 0.758209, -0.651733,
		0.206058, -0.640836, -0.739506,
		-0.978354, -0.120201, -0.168449,
		33.508610, 36.344555, 33.708908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162811, 36.244617, 33.103523>,  <34.193459, 36.428696, 33.826820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162811, 36.244617, 33.103523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802635, 36.379749, 33.213120>,  <33.586529, 36.460831, 33.278877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802635, 36.379749, 33.213120>,  <34.162811, 36.244617, 33.103523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802635, 36.379749, 33.213120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135287, 0.816172, -0.561748,
		-0.413400, -0.468755, -0.780621,
		-0.900443, 0.337834, 0.273988,
		33.532501, 36.481098, 33.295315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956821, 36.480785, 32.478607>,  <34.162811, 36.244617, 33.103523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956821, 36.480785, 32.478607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688480, 36.637955, 32.730183>,  <33.527473, 36.732258, 32.881126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688480, 36.637955, 32.730183>,  <33.956821, 36.480785, 32.478607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688480, 36.637955, 32.730183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012774, 0.841846, -0.539566,
		-0.741479, -0.370005, -0.559737,
		-0.670855, 0.392927, 0.628937,
		33.487225, 36.755833, 32.918865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385151, 36.348442, 32.169731>,  <33.956821, 36.480785, 32.478607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385151, 36.348442, 32.169731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377480, 36.679955, 32.393433>,  <33.372875, 36.878860, 32.527653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377480, 36.679955, 32.393433>,  <33.385151, 36.348442, 32.169731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377480, 36.679955, 32.393433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063086, 0.557234, -0.827955,
		-0.997824, -0.051159, 0.041599,
		-0.019177, 0.828778, 0.559249,
		33.371727, 36.928589, 32.561207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299423, 36.902912, 31.722006>,  <33.385151, 36.348442, 32.169731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299423, 36.902912, 31.722006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332897, 37.131584, 32.048485>,  <33.352982, 37.268787, 32.244373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332897, 37.131584, 32.048485>,  <33.299423, 36.902912, 31.722006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332897, 37.131584, 32.048485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112284, 0.808443, -0.577764,
		-0.990146, 0.139993, 0.003461,
		0.083681, 0.571683, 0.816196,
		33.358002, 37.303089, 32.293343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745640, 37.357109, 31.834425>,  <33.299423, 36.902912, 31.722006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745640, 37.357109, 31.834425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060059, 37.534004, 32.007191>,  <33.248711, 37.640141, 32.110851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060059, 37.534004, 32.007191>,  <32.745640, 37.357109, 31.834425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060059, 37.534004, 32.007191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035515, 0.729859, -0.682675,
		-0.617143, 0.521276, 0.589411,
		0.786049, 0.442241, 0.431914,
		33.295872, 37.666676, 32.136765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643501, 38.120365, 31.959515>,  <32.745640, 37.357109, 31.834425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643501, 38.120365, 31.959515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036610, 38.046635, 31.964924>,  <33.272476, 38.002396, 31.968170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036610, 38.046635, 31.964924>,  <32.643501, 38.120365, 31.959515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036610, 38.046635, 31.964924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156413, 0.790498, -0.592155,
		0.098459, 0.584069, 0.805710,
		0.982772, -0.184326, 0.013525,
		33.331440, 37.991337, 31.968981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884338, 38.802536, 31.874807>,  <32.643501, 38.120365, 31.959515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884338, 38.802536, 31.874807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197239, 38.563751, 31.803564>,  <33.384979, 38.420479, 31.760818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197239, 38.563751, 31.803564>,  <32.884338, 38.802536, 31.874807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197239, 38.563751, 31.803564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282263, 0.594515, -0.752914,
		0.555349, 0.538693, 0.633559,
		0.782250, -0.596960, -0.178110,
		33.431915, 38.384663, 31.750132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514801, 39.261265, 31.916220>,  <32.884338, 38.802536, 31.874807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514801, 39.261265, 31.916220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546978, 38.930107, 31.694183>,  <33.566284, 38.731415, 31.560961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546978, 38.930107, 31.694183>,  <33.514801, 39.261265, 31.916220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546978, 38.930107, 31.694183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059708, 0.559898, -0.826408,
		0.994970, 0.033332, 0.094469,
		0.080439, -0.827891, -0.555091,
		33.571110, 38.681740, 31.527657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873539, 39.540916, 31.283005>,  <33.514801, 39.261265, 31.916220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873539, 39.540916, 31.283005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783085, 39.174664, 31.150057>,  <33.728813, 38.954910, 31.070288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783085, 39.174664, 31.150057>,  <33.873539, 39.540916, 31.283005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783085, 39.174664, 31.150057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237108, 0.279206, -0.930497,
		0.944797, -0.289229, 0.153966,
		-0.226138, -0.915637, -0.332371,
		33.715244, 38.899971, 31.050346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412716, 39.348003, 30.780128>,  <33.873539, 39.540916, 31.283005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412716, 39.348003, 30.780128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094025, 39.117447, 30.707464>,  <33.902809, 38.979115, 30.663866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094025, 39.117447, 30.707464>,  <34.412716, 39.348003, 30.780128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094025, 39.117447, 30.707464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069040, 0.211813, -0.974869,
		0.600385, -0.789245, -0.128962,
		-0.796726, -0.576393, -0.181659,
		33.855007, 38.944530, 30.652967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580925, 38.927536, 30.098682>,  <34.412716, 39.348003, 30.780128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580925, 38.927536, 30.098682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184952, 38.954781, 30.148323>,  <33.947369, 38.971127, 30.178106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184952, 38.954781, 30.148323>,  <34.580925, 38.927536, 30.098682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184952, 38.954781, 30.148323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111491, 0.165094, -0.979956,
		-0.087240, -0.983923, -0.155837,
		-0.989929, 0.068117, 0.124101,
		33.887974, 38.975216, 30.185553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360981, 38.478718, 29.529243>,  <34.580925, 38.927536, 30.098682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360981, 38.478718, 29.529243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060104, 38.709515, 29.656544>,  <33.879578, 38.847992, 29.732924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060104, 38.709515, 29.656544>,  <34.360981, 38.478718, 29.529243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060104, 38.709515, 29.656544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225246, 0.228736, -0.947071,
		-0.619252, -0.784063, -0.042086,
		-0.752191, 0.576996, 0.318252,
		33.834446, 38.882614, 29.752020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841980, 38.378326, 28.954374>,  <34.360981, 38.478718, 29.529243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841980, 38.378326, 28.954374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739777, 38.710350, 29.152655>,  <33.678455, 38.909565, 29.271624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739777, 38.710350, 29.152655>,  <33.841980, 38.378326, 28.954374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739777, 38.710350, 29.152655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198661, 0.456702, -0.867155,
		-0.946177, -0.320040, 0.048210,
		-0.255507, 0.830059, 0.495700,
		33.663124, 38.959366, 29.301365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293789, 38.682713, 28.528969>,  <33.841980, 38.378326, 28.954374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293789, 38.682713, 28.528969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480240, 38.962410, 28.745775>,  <33.592110, 39.130230, 28.875858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480240, 38.962410, 28.745775>,  <33.293789, 38.682713, 28.528969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480240, 38.962410, 28.745775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048586, 0.591486, -0.804850,
		-0.883381, 0.401499, 0.241736,
		0.466130, 0.699244, 0.542015,
		33.620079, 39.172184, 28.908381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961319, 39.305851, 28.303808>,  <33.293789, 38.682713, 28.528969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961319, 39.305851, 28.303808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292545, 39.448059, 28.477207>,  <33.491280, 39.533382, 28.581245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292545, 39.448059, 28.477207>,  <32.961319, 39.305851, 28.303808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292545, 39.448059, 28.477207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051181, 0.722059, -0.689936,
		-0.558293, 0.593498, 0.579715,
		0.828063, 0.355517, 0.433496,
		33.540966, 39.554714, 28.607256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859112, 40.029549, 28.287914>,  <32.961319, 39.305851, 28.303808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859112, 40.029549, 28.287914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249813, 39.958183, 28.335457>,  <33.484234, 39.915363, 28.363981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249813, 39.958183, 28.335457>,  <32.859112, 40.029549, 28.287914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249813, 39.958183, 28.335457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200847, 0.567761, -0.798315,
		0.074945, 0.803627, 0.590395,
		0.976752, -0.178409, 0.118855,
		33.542839, 39.904659, 28.371113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242119, 40.745594, 28.180122>,  <32.859112, 40.029549, 28.287914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242119, 40.745594, 28.180122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510593, 40.456226, 28.115410>,  <33.671677, 40.282604, 28.076582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510593, 40.456226, 28.115410>,  <33.242119, 40.745594, 28.180122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510593, 40.456226, 28.115410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338587, 0.493323, -0.801244,
		0.659447, 0.483005, 0.576052,
		0.671184, -0.723422, -0.161781,
		33.711948, 40.239201, 28.066875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840042, 41.136063, 28.152140>,  <33.242119, 40.745594, 28.180122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840042, 41.136063, 28.152140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949718, 40.803474, 27.958862>,  <34.015522, 40.603920, 27.842896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949718, 40.803474, 27.958862>,  <33.840042, 41.136063, 28.152140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949718, 40.803474, 27.958862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490428, 0.553100, -0.673469,
		0.827225, -0.052315, 0.559430,
		0.274188, -0.831471, -0.483195,
		34.031975, 40.554031, 27.813904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540161, 41.230125, 27.859106>,  <33.840042, 41.136063, 28.152140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540161, 41.230125, 27.859106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385742, 40.921761, 27.656460>,  <34.293091, 40.736740, 27.534872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385742, 40.921761, 27.656460>,  <34.540161, 41.230125, 27.859106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385742, 40.921761, 27.656460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276612, 0.427177, -0.860817,
		0.880029, -0.472454, 0.048333,
		-0.386049, -0.770914, -0.506614,
		34.269928, 40.690487, 27.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086437, 41.082256, 27.439463>,  <34.540161, 41.230125, 27.859106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086437, 41.082256, 27.439463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757317, 40.907795, 27.293711>,  <34.559845, 40.803120, 27.206259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757317, 40.907795, 27.293711>,  <35.086437, 41.082256, 27.439463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757317, 40.907795, 27.293711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250994, 0.296366, -0.921504,
		0.509907, -0.849669, -0.134378,
		-0.822798, -0.436153, -0.364381,
		34.510475, 40.776951, 27.184397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285069, 40.714375, 26.924294>,  <35.086437, 41.082256, 27.439463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285069, 40.714375, 26.924294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895870, 40.754623, 26.841192>,  <34.662354, 40.778774, 26.791332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895870, 40.754623, 26.841192>,  <35.285069, 40.714375, 26.924294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895870, 40.754623, 26.841192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227948, 0.276848, -0.933485,
		-0.036416, -0.955631, -0.292308,
		-0.972992, 0.100625, -0.207752,
		34.603973, 40.784809, 26.778866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643742, 40.120098, 26.594496>,  <35.285069, 40.714375, 26.924294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643742, 40.120098, 26.594496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023907, 40.032074, 26.506592>,  <36.252007, 39.979259, 26.453850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023907, 40.032074, 26.506592>,  <35.643742, 40.120098, 26.594496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023907, 40.032074, 26.506592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026426, -0.646931, 0.762091,
		-0.309873, -0.730107, -0.609035,
		0.950411, -0.220057, -0.219760,
		36.309029, 39.966057, 26.440664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581223, 39.424156, 26.573767>,  <35.643742, 40.120098, 26.594496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581223, 39.424156, 26.573767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965893, 39.519241, 26.628416>,  <36.196697, 39.576294, 26.661205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965893, 39.519241, 26.628416>,  <35.581223, 39.424156, 26.573767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965893, 39.519241, 26.628416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055350, -0.656360, 0.752415,
		0.268534, -0.716019, -0.644365,
		0.961679, 0.237715, 0.136624,
		36.254395, 39.590557, 26.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905567, 38.814240, 26.504190>,  <35.581223, 39.424156, 26.573767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905567, 38.814240, 26.504190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150845, 39.067074, 26.693701>,  <36.298012, 39.218773, 26.807407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150845, 39.067074, 26.693701>,  <35.905567, 38.814240, 26.504190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150845, 39.067074, 26.693701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179832, -0.695719, 0.695439,
		0.769192, -0.341237, -0.540279,
		0.613192, 0.632085, 0.473776,
		36.334801, 39.256699, 26.835835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405884, 38.380817, 26.784445>,  <35.905567, 38.814240, 26.504190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405884, 38.380817, 26.784445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467205, 38.718327, 26.990183>,  <36.503998, 38.920830, 27.113626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467205, 38.718327, 26.990183>,  <36.405884, 38.380817, 26.784445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467205, 38.718327, 26.990183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198935, -0.536192, 0.820319,
		0.967949, -0.023433, -0.250053,
		0.153299, 0.843771, 0.514345,
		36.513195, 38.971458, 27.144485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045765, 38.286217, 27.171509>,  <36.405884, 38.380817, 26.784445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045765, 38.286217, 27.171509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857716, 38.590256, 27.350948>,  <36.744884, 38.772678, 27.458612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857716, 38.590256, 27.350948>,  <37.045765, 38.286217, 27.171509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857716, 38.590256, 27.350948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006801, -0.511372, 0.859332,
		0.882575, 0.400941, 0.245578,
		-0.470123, 0.760095, 0.448597,
		36.716679, 38.818283, 27.485527>
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
