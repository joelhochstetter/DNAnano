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
	<-0.247381, 2.927991, 2.909137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.050785, 2.585068, 2.847871>,  <0.067173, 2.379314, 2.811111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.050785, 2.585068, 2.847871>,  <-0.247381, 2.927991, 2.909137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.050785, 2.585068, 2.847871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726981, 0.500720, -0.469870,
		0.479517, 0.119589, 0.869346,
		0.491490, -0.857308, -0.153165,
		0.096662, 2.327875, 2.801921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484221, 2.986042, 3.024913>,  <-0.247381, 2.927991, 2.909137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484221, 2.986042, 3.024913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450821, 2.672537, 2.778744>,  <0.430781, 2.484434, 2.631043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450821, 2.672537, 2.778744>,  <0.484221, 2.986042, 3.024913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.450821, 2.672537, 2.778744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714856, 0.383156, -0.584955,
		0.694268, -0.488782, 0.528284,
		-0.083500, -0.783763, -0.615421,
		0.425771, 2.437408, 2.594118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.099783, 2.629364, 2.977216>,  <0.484221, 2.986042, 3.024913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.099783, 2.629364, 2.977216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885052, 2.579205, 2.643487>,  <0.756213, 2.549109, 2.443251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885052, 2.579205, 2.643487>,  <1.099783, 2.629364, 2.977216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885052, 2.579205, 2.643487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770589, 0.329765, -0.545387,
		0.343521, -0.935698, -0.080397,
		-0.536829, -0.125398, -0.834320,
		0.724003, 2.541585, 2.393191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516644, 2.222485, 2.394765>,  <1.099783, 2.629364, 2.977216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516644, 2.222485, 2.394765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.241405, 2.473600, 2.249217>,  <1.076262, 2.624270, 2.161887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.241405, 2.473600, 2.249217>,  <1.516644, 2.222485, 2.394765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.241405, 2.473600, 2.249217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660600, 0.334507, -0.672096,
		-0.300217, -0.702841, -0.644891,
		-0.688097, 0.627790, -0.363872,
		1.034976, 2.661937, 2.140055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.637063, 2.206673, 1.740077>,  <1.516644, 2.222485, 2.394765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.637063, 2.206673, 1.740077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.433613, 2.546734, 1.794542>,  <1.311543, 2.750771, 1.827221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.433613, 2.546734, 1.794542>,  <1.637063, 2.206673, 1.740077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.433613, 2.546734, 1.794542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577751, 0.454263, -0.678122,
		-0.638361, -0.266242, -0.722226,
		-0.508625, 0.850153, 0.136162,
		1.281025, 2.801780, 1.835391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.527917, 2.463562, 1.065913>,  <1.637063, 2.206673, 1.740077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.527917, 2.463562, 1.065913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486591, 2.758541, 1.332895>,  <1.461796, 2.935529, 1.493084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486591, 2.758541, 1.332895>,  <1.527917, 2.463562, 1.065913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486591, 2.758541, 1.332895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542482, 0.604232, -0.583624,
		-0.833690, 0.301786, -0.462478,
		-0.103315, 0.737447, 0.667456,
		1.455597, 2.979775, 1.533132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.445295, 3.051289, 0.735878>,  <1.527917, 2.463562, 1.065913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.445295, 3.051289, 0.735878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567806, 3.173899, 1.096375>,  <1.641313, 3.247464, 1.312673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567806, 3.173899, 1.096375>,  <1.445295, 3.051289, 0.735878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.567806, 3.173899, 1.096375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676031, 0.596507, -0.432622,
		-0.670206, 0.741770, -0.024522,
		0.306278, 0.306524, 0.901242,
		1.659690, 3.265856, 1.366747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.414022, 3.810050, 0.711601>,  <1.445295, 3.051289, 0.735878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.414022, 3.810050, 0.711601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.677643, 3.694334, 0.989296>,  <1.835815, 3.624905, 1.155913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.677643, 3.694334, 0.989296>,  <1.414022, 3.810050, 0.711601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.677643, 3.694334, 0.989296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662324, 0.660585, -0.353489,
		-0.356342, 0.692776, 0.626962,
		0.659051, -0.289289, 0.694236,
		1.875358, 3.607547, 1.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.779123, 3.739629, 0.324876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.957916, 3.768718, 0.681508>,  <3.065192, 3.786171, 0.895488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.957916, 3.768718, 0.681508>,  <2.779123, 3.739629, 0.324876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.957916, 3.768718, 0.681508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847350, -0.285030, 0.448058,
		0.286712, -0.955756, -0.065782,
		0.446983, 0.072723, 0.891581,
		3.092011, 3.790535, 0.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756774, 3.096181, 0.748921>,  <2.779123, 3.739629, 0.324876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756774, 3.096181, 0.748921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.776901, 3.412270, 0.993221>,  <2.788977, 3.601924, 1.139801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.776901, 3.412270, 0.993221>,  <2.756774, 3.096181, 0.748921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.776901, 3.412270, 0.993221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849985, -0.287206, 0.441631,
		0.524398, -0.541350, 0.657227,
		0.050317, 0.790223, 0.610750,
		2.791996, 3.649337, 1.176446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.636875, 2.873703, 1.502051>,  <2.756774, 3.096181, 0.748921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.636875, 2.873703, 1.502051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.535072, 3.259442, 1.473045>,  <2.473990, 3.490886, 1.455642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.535072, 3.259442, 1.473045>,  <2.636875, 2.873703, 1.502051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.535072, 3.259442, 1.473045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825468, -0.177565, 0.535792,
		0.503814, 0.196222, 0.841230,
		-0.254508, 0.964348, -0.072515,
		2.458720, 3.548747, 1.451291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.484989, 3.127852, 2.188475>,  <2.636875, 2.873703, 1.502051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.484989, 3.127852, 2.188475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307571, 3.332019, 1.893791>,  <2.201121, 3.454520, 1.716981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307571, 3.332019, 1.893791>,  <2.484989, 3.127852, 2.188475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.307571, 3.332019, 1.893791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853305, 0.010905, 0.521299,
		0.274114, 0.859857, 0.430706,
		-0.443545, 0.510419, -0.736709,
		2.174508, 3.485145, 1.672778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.038504, 3.692946, 2.523776>,  <2.484989, 3.127852, 2.188475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.038504, 3.692946, 2.523776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.923416, 3.564736, 2.162782>,  <1.854364, 3.487810, 1.946185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.923416, 3.564736, 2.162782>,  <2.038504, 3.692946, 2.523776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.923416, 3.564736, 2.162782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866226, -0.314843, 0.387978,
		-0.408498, 0.893385, -0.187062,
		-0.287719, -0.320526, -0.902486,
		1.837101, 3.468578, 1.892036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.355824, 3.887847, 2.411930>,  <2.038504, 3.692946, 2.523776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.355824, 3.887847, 2.411930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.385864, 3.602372, 2.133360>,  <1.403888, 3.431087, 1.966218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.385864, 3.602372, 2.133360>,  <1.355824, 3.887847, 2.411930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.385864, 3.602372, 2.133360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902120, -0.346217, 0.257516,
		-0.424900, 0.608920, -0.669833,
		0.075101, -0.713688, -0.696426,
		1.408395, 3.388265, 1.924432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.752804, 3.927120, 2.094514>,  <1.355824, 3.887847, 2.411930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.752804, 3.927120, 2.094514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914558, 3.568717, 2.021143>,  <1.011611, 3.353676, 1.977120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914558, 3.568717, 2.021143>,  <0.752804, 3.927120, 2.094514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.914558, 3.568717, 2.021143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871579, -0.438318, 0.219606,
		-0.277168, 0.071066, -0.958190,
		0.404385, -0.896006, -0.183427,
		1.035874, 3.299916, 1.966115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.305602, 3.562103, 1.592006>,  <0.752804, 3.927120, 2.094514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.305602, 3.562103, 1.592006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530464, 3.298842, 1.792333>,  <0.665381, 3.140886, 1.912529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530464, 3.298842, 1.792333>,  <0.305602, 3.562103, 1.592006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.530464, 3.298842, 1.792333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792886, -0.601099, 0.100055,
		0.235189, -0.453337, -0.859751,
		0.562154, -0.658153, 0.500817,
		0.699111, 3.101396, 1.942578>
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
