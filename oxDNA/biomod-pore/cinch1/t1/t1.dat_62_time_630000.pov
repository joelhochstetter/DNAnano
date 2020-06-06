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
	<43.021633, 32.474350, 23.094620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682133, 32.368748, 22.911350>,  <42.478432, 32.305386, 22.801388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682133, 32.368748, 22.911350>,  <43.021633, 32.474350, 23.094620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682133, 32.368748, 22.911350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057641, -0.907483, 0.416115,
		-0.525642, 0.326768, 0.785445,
		-0.848751, -0.264001, -0.458176,
		42.427509, 32.289547, 22.773897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469910, 32.287678, 23.594503>,  <43.021633, 32.474350, 23.094620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469910, 32.287678, 23.594503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465595, 32.092430, 23.245419>,  <42.463005, 31.975283, 23.035967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465595, 32.092430, 23.245419>,  <42.469910, 32.287678, 23.594503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465595, 32.092430, 23.245419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049805, -0.871942, 0.487070,
		-0.998701, -0.038210, 0.033719,
		-0.010790, -0.488117, -0.872712,
		42.462357, 31.945995, 22.983604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236626, 31.616032, 23.871395>,  <42.469910, 32.287678, 23.594503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236626, 31.616032, 23.871395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845749, 31.692211, 23.833828>,  <41.611221, 31.737919, 23.811287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845749, 31.692211, 23.833828>,  <42.236626, 31.616032, 23.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845749, 31.692211, 23.833828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193635, -0.980729, 0.025985,
		-0.087161, 0.043579, 0.995240,
		-0.977194, 0.190449, -0.093920,
		41.552589, 31.749346, 23.805653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048328, 31.256163, 24.480789>,  <42.236626, 31.616032, 23.871395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048328, 31.256163, 24.480789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854362, 30.914162, 24.554356>,  <41.737984, 30.708961, 24.598495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854362, 30.914162, 24.554356>,  <42.048328, 31.256163, 24.480789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854362, 30.914162, 24.554356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813638, 0.363931, -0.453372,
		0.320698, -0.369495, -0.872139,
		-0.484917, -0.855001, 0.183923,
		41.708889, 30.657661, 24.609531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458683, 31.227392, 24.029490>,  <42.048328, 31.256163, 24.480789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458683, 31.227392, 24.029490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062542, 31.282269, 24.021671>,  <40.824856, 31.315193, 24.016979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062542, 31.282269, 24.021671>,  <41.458683, 31.227392, 24.029490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062542, 31.282269, 24.021671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124537, -0.819257, 0.559739,
		0.060776, 0.556773, 0.828438,
		-0.990352, 0.137190, -0.019548,
		40.765438, 31.323425, 24.015806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123657, 30.790627, 24.589025>,  <41.458683, 31.227392, 24.029490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123657, 30.790627, 24.589025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793945, 30.857666, 24.372700>,  <40.596119, 30.897890, 24.242905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793945, 30.857666, 24.372700>,  <41.123657, 30.790627, 24.589025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793945, 30.857666, 24.372700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467365, -0.740575, 0.482824,
		-0.319594, 0.650738, 0.688767,
		-0.824275, 0.167598, -0.540815,
		40.546661, 30.907946, 24.210455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655285, 30.926205, 25.052963>,  <41.123657, 30.790627, 24.589025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655285, 30.926205, 25.052963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445381, 30.812248, 24.732098>,  <40.319439, 30.743876, 24.539579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445381, 30.812248, 24.732098>,  <40.655285, 30.926205, 25.052963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445381, 30.812248, 24.732098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460107, -0.697898, 0.548853,
		-0.716190, 0.657097, 0.235149,
		-0.524760, -0.284890, -0.802163,
		40.287952, 30.726782, 24.491449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943062, 30.968124, 25.247486>,  <40.655285, 30.926205, 25.052963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943062, 30.968124, 25.247486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002762, 30.689869, 24.966400>,  <40.038582, 30.522915, 24.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002762, 30.689869, 24.966400>,  <39.943062, 30.968124, 25.247486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002762, 30.689869, 24.966400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487803, -0.669977, 0.559624,
		-0.860100, 0.259261, -0.439330,
		0.149252, -0.695639, -0.702716,
		40.047539, 30.481176, 24.755585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322617, 30.502642, 25.165846>,  <39.943062, 30.968124, 25.247486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322617, 30.502642, 25.165846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617325, 30.287342, 25.002159>,  <39.794151, 30.158163, 24.903946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617325, 30.287342, 25.002159>,  <39.322617, 30.502642, 25.165846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617325, 30.287342, 25.002159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360858, -0.824842, 0.435221,
		-0.571797, -0.172988, -0.801950,
		0.736770, -0.538248, -0.409218,
		39.838356, 30.125868, 24.879395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048191, 29.967157, 24.876905>,  <39.322617, 30.502642, 25.165846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048191, 29.967157, 24.876905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429451, 29.847710, 24.896244>,  <39.658207, 29.776041, 24.907846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429451, 29.847710, 24.896244>,  <39.048191, 29.967157, 24.876905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429451, 29.847710, 24.896244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296211, -0.888880, 0.349502,
		-0.061394, -0.347447, -0.935687,
		0.953147, -0.298618, 0.048346,
		39.715397, 29.758123, 24.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124855, 29.385534, 24.382450>,  <39.048191, 29.967157, 24.876905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124855, 29.385534, 24.382450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393318, 29.381672, 24.678951>,  <39.554394, 29.379354, 24.856852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393318, 29.381672, 24.678951>,  <39.124855, 29.385534, 24.382450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393318, 29.381672, 24.678951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236929, -0.950264, 0.202146,
		0.702435, -0.311296, -0.640062,
		0.671155, -0.009654, 0.741254,
		39.594666, 29.378775, 24.901327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392998, 28.671513, 24.360308>,  <39.124855, 29.385534, 24.382450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392998, 28.671513, 24.360308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513184, 28.821804, 24.710976>,  <39.585293, 28.911980, 24.921377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513184, 28.821804, 24.710976>,  <39.392998, 28.671513, 24.360308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513184, 28.821804, 24.710976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138423, -0.892231, 0.429840,
		0.943696, -0.250502, -0.216072,
		0.300462, 0.375729, 0.876670,
		39.603321, 28.934523, 24.973976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803677, 28.140860, 24.662256>,  <39.392998, 28.671513, 24.360308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803677, 28.140860, 24.662256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721832, 28.373051, 24.977516>,  <39.672726, 28.512365, 25.166672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721832, 28.373051, 24.977516>,  <39.803677, 28.140860, 24.662256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721832, 28.373051, 24.977516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161144, -0.814175, 0.557810,
		0.965489, -0.012874, 0.260126,
		-0.204606, 0.580477, 0.788151,
		39.660450, 28.547194, 25.213961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142139, 27.795658, 25.319044>,  <39.803677, 28.140860, 24.662256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142139, 27.795658, 25.319044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881809, 28.060528, 25.467609>,  <39.725613, 28.219450, 25.556749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881809, 28.060528, 25.467609>,  <40.142139, 27.795658, 25.319044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881809, 28.060528, 25.467609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330352, -0.687450, 0.646746,
		0.683589, 0.298221, 0.666161,
		-0.650825, 0.662176, 0.371415,
		39.686562, 28.259180, 25.579035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261475, 27.792696, 26.061810>,  <40.142139, 27.795658, 25.319044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261475, 27.792696, 26.061810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888573, 27.934002, 26.030537>,  <39.664833, 28.018785, 26.011774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888573, 27.934002, 26.030537>,  <40.261475, 27.792696, 26.061810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888573, 27.934002, 26.030537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261515, -0.508583, 0.820337,
		0.250033, 0.785206, 0.566511,
		-0.932252, 0.353263, -0.078181,
		39.608898, 28.039980, 26.007082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963230, 27.904896, 26.827803>,  <40.261475, 27.792696, 26.061810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963230, 27.904896, 26.827803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646206, 27.858833, 26.588276>,  <39.455990, 27.831196, 26.444559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646206, 27.858833, 26.588276>,  <39.963230, 27.904896, 26.827803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646206, 27.858833, 26.588276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418318, -0.611831, 0.671322,
		-0.443683, 0.782561, 0.436742,
		-0.792562, -0.115157, -0.598818,
		39.408436, 27.824286, 26.408630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421280, 27.818657, 27.278492>,  <39.963230, 27.904896, 26.827803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421280, 27.818657, 27.278492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256905, 27.686371, 26.938667>,  <39.158279, 27.607000, 26.734772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256905, 27.686371, 26.938667>,  <39.421280, 27.818657, 27.278492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256905, 27.686371, 26.938667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487996, -0.707343, 0.511396,
		-0.770058, 0.624736, 0.129286,
		-0.410938, -0.330714, -0.849564,
		39.133625, 27.587156, 26.683798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604332, 27.759157, 27.377644>,  <39.421280, 27.818657, 27.278492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604332, 27.759157, 27.377644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701694, 27.522991, 27.069836>,  <38.760113, 27.381292, 26.885151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701694, 27.522991, 27.069836>,  <38.604332, 27.759157, 27.377644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701694, 27.522991, 27.069836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380312, -0.787946, 0.484255,
		-0.892252, 0.174786, -0.416336,
		0.243410, -0.590415, -0.769520,
		38.774719, 27.345867, 26.838980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090302, 27.322176, 27.365461>,  <38.604332, 27.759157, 27.377644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090302, 27.322176, 27.365461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368393, 27.124851, 27.156345>,  <38.535248, 27.006456, 27.030876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368393, 27.124851, 27.156345>,  <38.090302, 27.322176, 27.365461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368393, 27.124851, 27.156345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260194, -0.850708, 0.456723,
		-0.670045, -0.181499, -0.719790,
		0.695226, -0.493310, -0.522788,
		38.576962, 26.976858, 26.999510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809784, 26.694740, 27.174107>,  <38.090302, 27.322176, 27.365461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809784, 26.694740, 27.174107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198933, 26.623360, 27.115219>,  <38.432423, 26.580532, 27.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198933, 26.623360, 27.115219>,  <37.809784, 26.694740, 27.174107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198933, 26.623360, 27.115219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113465, -0.922647, 0.368575,
		-0.201604, -0.341873, -0.917866,
		0.972873, -0.178452, -0.147219,
		38.490795, 26.569824, 27.071053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854973, 26.004311, 26.893845>,  <37.809784, 26.694740, 27.174107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854973, 26.004311, 26.893845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215454, 26.079994, 27.049812>,  <38.431744, 26.125404, 27.143393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215454, 26.079994, 27.049812>,  <37.854973, 26.004311, 26.893845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215454, 26.079994, 27.049812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062847, -0.947215, 0.314379,
		0.428822, -0.258813, -0.865521,
		0.901200, 0.189208, 0.389921,
		38.485813, 26.136757, 27.166788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324043, 25.414633, 26.700098>,  <37.854973, 26.004311, 26.893845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324043, 25.414633, 26.700098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528408, 25.568314, 27.007698>,  <38.651028, 25.660522, 27.192257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528408, 25.568314, 27.007698>,  <38.324043, 25.414633, 26.700098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528408, 25.568314, 27.007698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244679, -0.922559, 0.298358,
		0.824075, 0.035723, -0.565353,
		0.510913, 0.384200, 0.768998,
		38.681683, 25.683573, 27.238398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060535, 25.164558, 26.801886>,  <38.324043, 25.414633, 26.700098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060535, 25.164558, 26.801886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910252, 25.286572, 27.151924>,  <38.820080, 25.359779, 27.361948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910252, 25.286572, 27.151924>,  <39.060535, 25.164558, 26.801886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910252, 25.286572, 27.151924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384982, -0.807573, 0.446783,
		0.842990, 0.504758, 0.185979,
		-0.375709, 0.305035, 0.875098,
		38.797539, 25.378082, 27.414454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645073, 25.013771, 27.302578>,  <39.060535, 25.164558, 26.801886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645073, 25.013771, 27.302578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321178, 25.040703, 27.535744>,  <39.126842, 25.056862, 27.675644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321178, 25.040703, 27.535744>,  <39.645073, 25.013771, 27.302578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321178, 25.040703, 27.535744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307824, -0.796993, 0.519660,
		0.499569, 0.600224, 0.624629,
		-0.809738, 0.067331, 0.582916,
		39.078259, 25.060902, 27.710619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967110, 24.706404, 27.967281>,  <39.645073, 25.013771, 27.302578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967110, 24.706404, 27.967281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570122, 24.736298, 28.006088>,  <39.331928, 24.754234, 28.029371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570122, 24.736298, 28.006088>,  <39.967110, 24.706404, 27.967281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570122, 24.736298, 28.006088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002635, -0.805056, 0.593193,
		0.122435, 0.588473, 0.799193,
		-0.992473, 0.074734, 0.097016,
		39.272381, 24.758718, 28.035192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860443, 24.709627, 28.694384>,  <39.967110, 24.706404, 27.967281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860443, 24.709627, 28.694384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567039, 24.563225, 28.465294>,  <39.390999, 24.475384, 28.327841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567039, 24.563225, 28.465294>,  <39.860443, 24.709627, 28.694384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567039, 24.563225, 28.465294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003127, -0.844438, 0.535644,
		-0.679677, 0.391106, 0.620544,
		-0.733505, -0.366006, -0.572722,
		39.346989, 24.453423, 28.293478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398705, 24.412928, 29.130632>,  <39.860443, 24.709627, 28.694384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398705, 24.412928, 29.130632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314331, 24.251369, 28.774570>,  <39.263706, 24.154434, 28.560932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314331, 24.251369, 28.774570>,  <39.398705, 24.412928, 29.130632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314331, 24.251369, 28.774570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018038, -0.912098, 0.409576,
		-0.977335, 0.070335, 0.199674,
		-0.210929, -0.403895, -0.890156,
		39.251053, 24.130201, 28.507524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780869, 24.050110, 29.078077>,  <39.398705, 24.412928, 29.130632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780869, 24.050110, 29.078077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022518, 23.888451, 28.803356>,  <39.167507, 23.791454, 28.638523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022518, 23.888451, 28.803356>,  <38.780869, 24.050110, 29.078077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022518, 23.888451, 28.803356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039289, -0.875911, 0.480871,
		-0.795921, -0.263522, -0.545038,
		0.604124, -0.404149, -0.686802,
		39.203754, 23.767206, 28.597315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397995, 23.544390, 28.570499>,  <38.780869, 24.050110, 29.078077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397995, 23.544390, 28.570499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773079, 23.489021, 28.697956>,  <38.998131, 23.455801, 28.774429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773079, 23.489021, 28.697956>,  <38.397995, 23.544390, 28.570499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773079, 23.489021, 28.697956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263258, -0.881605, 0.391750,
		0.226688, -0.451235, -0.863134,
		0.937714, -0.138422, 0.318641,
		39.054394, 23.447495, 28.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487709, 22.893314, 28.392385>,  <38.397995, 23.544390, 28.570499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487709, 22.893314, 28.392385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741333, 22.995628, 28.684288>,  <38.893509, 23.057016, 28.859430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741333, 22.995628, 28.684288>,  <38.487709, 22.893314, 28.392385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741333, 22.995628, 28.684288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217843, -0.846404, 0.485947,
		0.741966, -0.467091, -0.480949,
		0.634058, 0.255784, 0.729756,
		38.931549, 23.072363, 28.903215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810078, 22.774570, 28.507011>,  <38.487709, 22.893314, 28.392385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810078, 22.774570, 28.507011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943798, 22.611286, 28.846802>,  <38.024029, 22.513315, 29.050676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943798, 22.611286, 28.846802>,  <37.810078, 22.774570, 28.507011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943798, 22.611286, 28.846802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256781, 0.827784, 0.498836,
		-0.906812, -0.384889, 0.171906,
		0.334297, -0.408209, 0.849477,
		38.044086, 22.488823, 29.101645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195538, 23.155865, 28.532541>,  <37.810078, 22.774570, 28.507011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195538, 23.155865, 28.532541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 23.227573, 28.672966>,  <36.607361, 23.270599, 28.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 23.227573, 28.672966>,  <37.195538, 23.155865, 28.532541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827927, 23.227573, 28.672966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266149, 0.374743, -0.888106,
		-0.290769, -0.909632, -0.296688,
		-0.919031, 0.179271, 0.351061,
		36.552216, 23.281355, 28.778284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533535, 22.746136, 28.214741>,  <37.195538, 23.155865, 28.532541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533535, 22.746136, 28.214741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444683, 23.115131, 28.341026>,  <36.391373, 23.336529, 28.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444683, 23.115131, 28.341026>,  <36.533535, 22.746136, 28.214741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444683, 23.115131, 28.341026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343914, 0.228862, -0.910684,
		-0.912350, -0.310868, 0.266420,
		-0.222129, 0.922488, 0.315714,
		36.378044, 23.391878, 28.435740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823582, 22.924610, 27.944851>,  <36.533535, 22.746136, 28.214741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823582, 22.924610, 27.944851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096855, 23.210182, 28.006256>,  <36.260818, 23.381525, 28.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096855, 23.210182, 28.006256>,  <35.823582, 22.924610, 27.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096855, 23.210182, 28.006256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133559, 0.328832, -0.934896,
		-0.717930, 0.618201, 0.320004,
		0.683182, 0.713930, 0.153512,
		36.301811, 23.424362, 28.052309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507694, 23.517904, 27.766834>,  <35.823582, 22.924610, 27.944851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507694, 23.517904, 27.766834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903202, 23.554787, 27.719791>,  <36.140507, 23.576916, 27.691565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903202, 23.554787, 27.719791>,  <35.507694, 23.517904, 27.766834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903202, 23.554787, 27.719791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147190, 0.464701, -0.873148,
		-0.025856, 0.880653, 0.473054,
		0.988770, 0.092205, -0.117608,
		36.199833, 23.582449, 27.684509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532024, 23.796768, 27.065266>,  <35.507694, 23.517904, 27.766834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532024, 23.796768, 27.065266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893276, 23.817677, 27.235733>,  <36.110027, 23.830221, 27.338013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893276, 23.817677, 27.235733>,  <35.532024, 23.796768, 27.065266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893276, 23.817677, 27.235733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237537, 0.766003, -0.597341,
		-0.357668, 0.640709, 0.679387,
		0.903133, 0.052270, 0.426166,
		36.164215, 23.833357, 27.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766365, 24.452379, 27.476095>,  <35.532024, 23.796768, 27.065266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766365, 24.452379, 27.476095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076267, 24.285263, 27.286274>,  <36.262211, 24.184994, 27.172380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076267, 24.285263, 27.286274>,  <35.766365, 24.452379, 27.476095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076267, 24.285263, 27.286274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132783, 0.841347, -0.523931,
		0.618158, 0.342907, 0.707315,
		0.774757, -0.417791, -0.474554,
		36.308693, 24.159925, 27.143908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347645, 24.901037, 27.522898>,  <35.766365, 24.452379, 27.476095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347645, 24.901037, 27.522898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394646, 24.687607, 27.187878>,  <36.422848, 24.559549, 26.986866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394646, 24.687607, 27.187878>,  <36.347645, 24.901037, 27.522898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394646, 24.687607, 27.187878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082801, 0.845720, -0.527164,
		0.989614, -0.007405, 0.143558,
		0.117506, -0.533575, -0.837550,
		36.429897, 24.527534, 26.936613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354233, 25.417011, 27.126245>,  <36.347645, 24.901037, 27.522898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354233, 25.417011, 27.126245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451332, 25.140320, 26.854191>,  <36.509590, 24.974304, 26.690958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451332, 25.140320, 26.854191>,  <36.354233, 25.417011, 27.126245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451332, 25.140320, 26.854191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138832, 0.718660, -0.681362,
		0.960105, 0.070972, 0.270485,
		0.242744, -0.691730, -0.680136,
		36.524155, 24.932800, 26.650150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032116, 25.514517, 26.755680>,  <36.354233, 25.417011, 27.126245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032116, 25.514517, 26.755680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796566, 25.307915, 26.507019>,  <36.655235, 25.183952, 26.357822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796566, 25.307915, 26.507019>,  <37.032116, 25.514517, 26.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796566, 25.307915, 26.507019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125729, 0.701250, -0.701741,
		0.798388, -0.491394, -0.348006,
		-0.588871, -0.516507, -0.621653,
		36.619904, 25.152964, 26.320524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298199, 25.403780, 26.162893>,  <37.032116, 25.514517, 26.755680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298199, 25.403780, 26.162893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917198, 25.367294, 26.046677>,  <36.688599, 25.345404, 25.976946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917198, 25.367294, 26.046677>,  <37.298199, 25.403780, 26.162893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917198, 25.367294, 26.046677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157187, 0.669894, -0.725627,
		0.260819, -0.736832, -0.623740,
		-0.952505, -0.091214, -0.290541,
		36.631447, 25.339930, 25.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325989, 25.458380, 25.491154>,  <37.298199, 25.403780, 26.162893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325989, 25.458380, 25.491154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939175, 25.531055, 25.562515>,  <36.707085, 25.574661, 25.605331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939175, 25.531055, 25.562515>,  <37.325989, 25.458380, 25.491154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939175, 25.531055, 25.562515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007800, 0.679159, -0.733950,
		-0.254513, -0.711149, -0.655356,
		-0.967038, 0.181688, 0.178402,
		36.649063, 25.585562, 25.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009987, 25.462299, 24.802788>,  <37.325989, 25.458380, 25.491154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009987, 25.462299, 24.802788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809502, 25.696667, 25.057499>,  <36.689213, 25.837288, 25.210325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809502, 25.696667, 25.057499>,  <37.009987, 25.462299, 24.802788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809502, 25.696667, 25.057499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034954, 0.721574, -0.691455,
		-0.864619, -0.368822, -0.341180,
		-0.501210, 0.585919, 0.636778,
		36.659138, 25.872442, 25.248533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545712, 25.768759, 24.438059>,  <37.009987, 25.462299, 24.802788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545712, 25.768759, 24.438059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552353, 26.024258, 24.745754>,  <36.556339, 26.177557, 24.930372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552353, 26.024258, 24.745754>,  <36.545712, 25.768759, 24.438059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552353, 26.024258, 24.745754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081287, 0.767661, -0.635680,
		-0.996552, -0.051975, 0.064667,
		0.016603, 0.638745, 0.769239,
		36.557335, 26.215881, 24.976526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353790, 26.392591, 24.155743>,  <36.545712, 25.768759, 24.438059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353790, 26.392591, 24.155743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448746, 26.544758, 24.513275>,  <36.505718, 26.636057, 24.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448746, 26.544758, 24.513275>,  <36.353790, 26.392591, 24.155743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448746, 26.544758, 24.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010348, 0.921070, -0.389259,
		-0.971361, 0.083154, 0.222584,
		0.237385, 0.380414, 0.893831,
		36.519962, 26.658882, 24.781424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035442, 27.076443, 24.111269>,  <36.353790, 26.392591, 24.155743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035442, 27.076443, 24.111269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277309, 27.103844, 24.428680>,  <36.422428, 27.120285, 24.619127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277309, 27.103844, 24.428680>,  <36.035442, 27.076443, 24.111269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277309, 27.103844, 24.428680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257266, 0.926093, -0.275982,
		-0.753789, 0.371024, 0.542350,
		0.604663, 0.068504, 0.793530,
		36.458710, 27.124395, 24.666739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791935, 27.652618, 24.579338>,  <36.035442, 27.076443, 24.111269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791935, 27.652618, 24.579338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184029, 27.590263, 24.628078>,  <36.419285, 27.552851, 24.657322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184029, 27.590263, 24.628078>,  <35.791935, 27.652618, 24.579338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184029, 27.590263, 24.628078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187516, 0.928439, -0.320684,
		-0.063138, 0.337193, 0.939316,
		0.980230, -0.155889, 0.121849,
		36.478096, 27.543497, 24.664633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109787, 28.336964, 24.742874>,  <35.791935, 27.652618, 24.579338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109787, 28.336964, 24.742874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435810, 28.118965, 24.664223>,  <36.631424, 27.988165, 24.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435810, 28.118965, 24.664223>,  <36.109787, 28.336964, 24.742874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435810, 28.118965, 24.664223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456916, 0.813298, -0.360241,
		0.356248, 0.203774, 0.911901,
		0.815055, -0.544998, -0.196628,
		36.680328, 27.955465, 24.605234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732094, 28.671141, 25.112421>,  <36.109787, 28.336964, 24.742874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732094, 28.671141, 25.112421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864388, 28.455948, 24.802277>,  <36.943764, 28.326832, 24.616190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864388, 28.455948, 24.802277>,  <36.732094, 28.671141, 25.112421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864388, 28.455948, 24.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566366, 0.770345, -0.292913,
		0.754879, -0.342261, 0.559477,
		0.330738, -0.537983, -0.775362,
		36.963608, 28.294554, 24.569668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447971, 28.748920, 25.075161>,  <36.732094, 28.671141, 25.112421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447971, 28.748920, 25.075161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355072, 28.619423, 24.708282>,  <37.299332, 28.541723, 24.488155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355072, 28.619423, 24.708282>,  <37.447971, 28.748920, 25.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355072, 28.619423, 24.708282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458940, 0.794935, -0.396803,
		0.857574, -0.513095, -0.036045,
		-0.232251, -0.323746, -0.917196,
		37.285397, 28.522299, 24.433125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143566, 28.776121, 24.766939>,  <37.447971, 28.748920, 25.075161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143566, 28.776121, 24.766939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844193, 28.772800, 24.501675>,  <37.664570, 28.770807, 24.342516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844193, 28.772800, 24.501675>,  <38.143566, 28.776121, 24.766939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844193, 28.772800, 24.501675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437386, 0.745472, -0.502956,
		0.498545, -0.666485, -0.554302,
		-0.748429, -0.008302, -0.663163,
		37.619663, 28.770309, 24.302727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489525, 28.802452, 24.179049>,  <38.143566, 28.776121, 24.766939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489525, 28.802452, 24.179049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120762, 28.895500, 24.055126>,  <37.899506, 28.951328, 23.980772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120762, 28.895500, 24.055126>,  <38.489525, 28.802452, 24.179049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120762, 28.895500, 24.055126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374049, 0.742697, -0.555417,
		0.100890, -0.627924, -0.771708,
		-0.921905, 0.232621, -0.309805,
		37.844189, 28.965286, 23.962185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538418, 28.860182, 23.474289>,  <38.489525, 28.802452, 24.179049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538418, 28.860182, 23.474289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200977, 29.056450, 23.561546>,  <37.998512, 29.174212, 23.613901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200977, 29.056450, 23.561546>,  <38.538418, 28.860182, 23.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200977, 29.056450, 23.561546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274470, 0.743177, -0.610209,
		-0.461528, -0.454898, -0.761617,
		-0.843598, 0.490670, 0.218141,
		37.947899, 29.203651, 23.626989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251736, 29.054083, 22.862003>,  <38.538418, 28.860182, 23.474289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251736, 29.054083, 22.862003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067802, 29.291397, 23.126297>,  <37.957443, 29.433784, 23.284872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067802, 29.291397, 23.126297>,  <38.251736, 29.054083, 22.862003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067802, 29.291397, 23.126297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197223, 0.793713, -0.575433,
		-0.865827, -0.134292, -0.481984,
		-0.459833, 0.593284, 0.660733,
		37.929852, 29.469381, 23.324516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693592, 29.366919, 22.491682>,  <38.251736, 29.054083, 22.862003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693592, 29.366919, 22.491682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783516, 29.594814, 22.807873>,  <37.837471, 29.731552, 22.997587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783516, 29.594814, 22.807873>,  <37.693592, 29.366919, 22.491682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783516, 29.594814, 22.807873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032005, 0.806489, -0.590382,
		-0.973876, 0.158025, 0.163075,
		0.224813, 0.569740, 0.790478,
		37.850960, 29.765736, 23.045015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268658, 30.057459, 22.328680>,  <37.693592, 29.366919, 22.491682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268658, 30.057459, 22.328680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559273, 30.114815, 22.597481>,  <37.733643, 30.149229, 22.758762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559273, 30.114815, 22.597481>,  <37.268658, 30.057459, 22.328680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559273, 30.114815, 22.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236932, 0.865728, -0.440884,
		-0.644989, 0.479536, 0.595008,
		0.726534, 0.143389, 0.672003,
		37.777233, 30.157831, 22.799082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083454, 30.569653, 22.660002>,  <37.268658, 30.057459, 22.328680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083454, 30.569653, 22.660002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480999, 30.539089, 22.692017>,  <37.719524, 30.520752, 22.711226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480999, 30.539089, 22.692017>,  <37.083454, 30.569653, 22.660002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480999, 30.539089, 22.692017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103223, 0.900767, -0.421857,
		-0.039862, 0.427528, 0.903123,
		0.993859, -0.076408, 0.080037,
		37.779156, 30.516167, 22.716028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358097, 31.229025, 23.058842>,  <37.083454, 30.569653, 22.660002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358097, 31.229025, 23.058842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628212, 31.071476, 22.809410>,  <37.790279, 30.976946, 22.659750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628212, 31.071476, 22.809410>,  <37.358097, 31.229025, 23.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628212, 31.071476, 22.809410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264754, 0.918569, -0.293489,
		0.688400, 0.033093, 0.724576,
		0.675285, -0.393873, -0.623581,
		37.830799, 30.953314, 22.622335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660622, 31.326872, 23.074530>,  <37.358097, 31.229025, 23.058842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660622, 31.326872, 23.074530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891861, 31.302959, 23.400040>,  <37.030605, 31.288612, 23.595346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891861, 31.302959, 23.400040>,  <36.660622, 31.326872, 23.074530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891861, 31.302959, 23.400040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125111, 0.992014, -0.016005,
		-0.806321, 0.111065, 0.580957,
		0.578095, -0.059779, 0.813777,
		37.065289, 31.285027, 23.644173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379219, 31.603580, 23.797781>,  <36.660622, 31.326872, 23.074530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379219, 31.603580, 23.797781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767025, 31.626823, 23.702568>,  <36.999710, 31.640768, 23.645441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767025, 31.626823, 23.702568>,  <36.379219, 31.603580, 23.797781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767025, 31.626823, 23.702568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052815, 0.998196, 0.028548,
		0.239260, -0.015106, 0.970838,
		0.969518, 0.058106, -0.238031,
		37.057880, 31.644255, 23.631159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581028, 32.157650, 24.268681>,  <36.379219, 31.603580, 23.797781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581028, 32.157650, 24.268681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842651, 32.091854, 23.973343>,  <36.999626, 32.052376, 23.796141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842651, 32.091854, 23.973343>,  <36.581028, 32.157650, 24.268681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842651, 32.091854, 23.973343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354926, 0.928691, 0.107517,
		0.668009, -0.332380, 0.665798,
		0.654057, -0.164487, -0.738345,
		37.038868, 32.042507, 23.751839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149151, 31.786715, 24.786627>,  <36.581028, 32.157650, 24.268681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149151, 31.786715, 24.786627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232403, 31.546581, 25.095505>,  <36.282352, 31.402502, 25.280832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232403, 31.546581, 25.095505>,  <36.149151, 31.786715, 24.786627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232403, 31.546581, 25.095505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970518, -0.224875, 0.086754,
		0.121566, -0.767485, -0.629435,
		0.208127, -0.600331, 0.772195,
		36.294842, 31.366482, 25.327164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997116, 30.993324, 24.732246>,  <36.149151, 31.786715, 24.786627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997116, 30.993324, 24.732246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957199, 31.145683, 25.099934>,  <35.933250, 31.237099, 25.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957199, 31.145683, 25.099934>,  <35.997116, 30.993324, 24.732246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957199, 31.145683, 25.099934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929608, -0.365093, 0.050367,
		0.354784, -0.849485, 0.390516,
		-0.099789, 0.380896, 0.919217,
		35.927261, 31.259953, 25.375698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887836, 30.438692, 25.248648>,  <35.997116, 30.993324, 24.732246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887836, 30.438692, 25.248648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746887, 30.790474, 25.376644>,  <35.662315, 31.001543, 25.453442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746887, 30.790474, 25.376644>,  <35.887836, 30.438692, 25.248648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746887, 30.790474, 25.376644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861790, -0.438246, 0.255456,
		0.364896, -0.185748, 0.912332,
		-0.352376, 0.879453, 0.319990,
		35.641174, 31.054310, 25.472641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951096, 30.406061, 25.918856>,  <35.887836, 30.438692, 25.248648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951096, 30.406061, 25.918856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643215, 30.656502, 25.868973>,  <35.458485, 30.806767, 25.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643215, 30.656502, 25.868973>,  <35.951096, 30.406061, 25.918856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643215, 30.656502, 25.868973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625425, -0.700350, 0.344026,
		0.128057, 0.342792, 0.930642,
		-0.769705, 0.626101, -0.124706,
		35.412304, 30.844332, 25.831560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423038, 30.239489, 26.501097>,  <35.951096, 30.406061, 25.918856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423038, 30.239489, 26.501097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213062, 30.470325, 26.250847>,  <35.087078, 30.608828, 26.100697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213062, 30.470325, 26.250847>,  <35.423038, 30.239489, 26.501097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213062, 30.470325, 26.250847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831093, -0.506125, 0.230482,
		-0.183635, 0.640940, 0.745301,
		-0.524940, 0.577090, -0.625623,
		35.055580, 30.643452, 26.063160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013672, 30.586435, 26.923782>,  <35.423038, 30.239489, 26.501097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013672, 30.586435, 26.923782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846848, 30.553505, 26.561726>,  <34.746754, 30.533747, 26.344492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846848, 30.553505, 26.561726>,  <35.013672, 30.586435, 26.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846848, 30.553505, 26.561726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828947, -0.373931, 0.415959,
		-0.372705, 0.923795, 0.087709,
		-0.417058, -0.082324, -0.905144,
		34.721729, 30.528809, 26.290182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384388, 30.931671, 27.003599>,  <35.013672, 30.586435, 26.923782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384388, 30.931671, 27.003599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335712, 30.705719, 26.677139>,  <34.306507, 30.570148, 26.481262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335712, 30.705719, 26.677139>,  <34.384388, 30.931671, 27.003599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335712, 30.705719, 26.677139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829748, -0.393354, 0.395967,
		-0.544710, 0.725384, -0.420842,
		-0.121689, -0.564881, -0.816151,
		34.299206, 30.536255, 26.432295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664219, 30.919844, 26.847137>,  <34.384388, 30.931671, 27.003599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664219, 30.919844, 26.847137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780415, 30.623009, 26.605503>,  <33.850132, 30.444908, 26.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780415, 30.623009, 26.605503>,  <33.664219, 30.919844, 26.847137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780415, 30.623009, 26.605503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892660, -0.437540, 0.108244,
		-0.344639, 0.507802, -0.789532,
		0.290485, -0.742089, -0.604088,
		33.867561, 30.400381, 26.424276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149578, 30.734509, 26.363317>,  <33.664219, 30.919844, 26.847137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149578, 30.734509, 26.363317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349693, 30.388206, 26.368683>,  <33.469765, 30.180426, 26.371902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349693, 30.388206, 26.368683>,  <33.149578, 30.734509, 26.363317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349693, 30.388206, 26.368683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820578, -0.469128, 0.326452,
		-0.276334, -0.174328, -0.945119,
		0.500291, -0.865754, 0.013414,
		33.499779, 30.128481, 26.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698750, 30.151537, 25.986542>,  <33.149578, 30.734509, 26.363317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698750, 30.151537, 25.986542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967888, 29.981403, 26.228653>,  <33.129372, 29.879322, 26.373920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967888, 29.981403, 26.228653>,  <32.698750, 30.151537, 25.986542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967888, 29.981403, 26.228653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709154, -0.603815, 0.364016,
		0.210647, -0.674164, -0.707906,
		0.672851, -0.425335, 0.605279,
		33.169743, 29.853802, 26.410236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458057, 29.469238, 25.885159>,  <32.698750, 30.151537, 25.986542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458057, 29.469238, 25.885159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692047, 29.485661, 26.209164>,  <32.832439, 29.495514, 26.403566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692047, 29.485661, 26.209164>,  <32.458057, 29.469238, 25.885159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692047, 29.485661, 26.209164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724632, -0.422137, 0.544710,
		0.364299, -0.905602, -0.217190,
		0.584975, 0.041054, 0.810012,
		32.867538, 29.497976, 26.452168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320660, 28.826523, 26.202337>,  <32.458057, 29.469238, 25.885159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320660, 28.826523, 26.202337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475994, 29.071400, 26.477848>,  <32.569195, 29.218327, 26.643154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475994, 29.071400, 26.477848>,  <32.320660, 28.826523, 26.202337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475994, 29.071400, 26.477848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553560, -0.442580, 0.705475,
		0.736725, -0.655243, 0.167013,
		0.388341, 0.612193, 0.688776,
		32.592495, 29.255058, 26.684481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602280, 28.341648, 26.587807>,  <32.320660, 28.826523, 26.202337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602280, 28.341648, 26.587807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532440, 28.681000, 26.787712>,  <32.490536, 28.884611, 26.907656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532440, 28.681000, 26.787712>,  <32.602280, 28.341648, 26.587807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532440, 28.681000, 26.787712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594187, -0.495513, 0.633569,
		0.785147, -0.186330, 0.590614,
		-0.174603, 0.848380, 0.499765,
		32.480061, 28.935514, 26.937641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450268, 28.169161, 27.220789>,  <32.602280, 28.341648, 26.587807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450268, 28.169161, 27.220789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319046, 28.544632, 27.263245>,  <32.240314, 28.769915, 27.288717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319046, 28.544632, 27.263245>,  <32.450268, 28.169161, 27.220789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319046, 28.544632, 27.263245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519560, -0.273122, 0.809606,
		0.788947, 0.210451, 0.577298,
		-0.328056, 0.938677, 0.106137,
		32.220631, 28.826235, 27.295086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558228, 28.329069, 27.925867>,  <32.450268, 28.169161, 27.220789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558228, 28.329069, 27.925867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271835, 28.571220, 27.786793>,  <32.099998, 28.716511, 27.703348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271835, 28.571220, 27.786793>,  <32.558228, 28.329069, 27.925867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271835, 28.571220, 27.786793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574664, -0.228292, 0.785903,
		0.396394, 0.762497, 0.511342,
		-0.715984, 0.605377, -0.347686,
		32.057041, 28.752834, 27.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441708, 28.778559, 28.410368>,  <32.558228, 28.329069, 27.925867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441708, 28.778559, 28.410368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105011, 28.785538, 28.194527>,  <31.902994, 28.789726, 28.065022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105011, 28.785538, 28.194527>,  <32.441708, 28.778559, 28.410368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105011, 28.785538, 28.194527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539186, -0.078065, 0.838561,
		-0.027492, 0.996796, 0.075119,
		-0.841738, 0.017450, -0.539605,
		31.852489, 28.790773, 28.032646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909786, 29.065622, 28.803305>,  <32.441708, 28.778559, 28.410368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909786, 29.065622, 28.803305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705162, 28.882885, 28.512211>,  <31.582388, 28.773243, 28.337555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705162, 28.882885, 28.512211>,  <31.909786, 29.065622, 28.803305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705162, 28.882885, 28.512211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632073, -0.373647, 0.678875,
		-0.582055, 0.807269, -0.097614,
		-0.511562, -0.456842, -0.727736,
		31.551693, 28.745832, 28.293890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271040, 29.285418, 28.872269>,  <31.909786, 29.065622, 28.803305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271040, 29.285418, 28.872269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235769, 28.936203, 28.680420>,  <31.214607, 28.726675, 28.565311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235769, 28.936203, 28.680420>,  <31.271040, 29.285418, 28.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235769, 28.936203, 28.680420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554853, -0.356833, 0.751538,
		-0.827262, 0.332389, -0.452940,
		-0.088179, -0.873034, -0.479621,
		31.209316, 28.674294, 28.536533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535261, 29.152311, 28.928680>,  <31.271040, 29.285418, 28.872269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535261, 29.152311, 28.928680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712904, 28.802624, 28.850182>,  <30.819489, 28.592812, 28.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712904, 28.802624, 28.850182>,  <30.535261, 29.152311, 28.928680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712904, 28.802624, 28.850182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599396, -0.452689, 0.660150,
		-0.665954, -0.175546, -0.725044,
		0.444106, -0.874218, -0.196249,
		30.846136, 28.540358, 28.791307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973013, 28.755373, 28.952454>,  <30.535261, 29.152311, 28.928680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973013, 28.755373, 28.952454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278973, 28.498703, 28.975029>,  <30.462547, 28.344702, 28.988575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278973, 28.498703, 28.975029>,  <29.973013, 28.755373, 28.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278973, 28.498703, 28.975029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486721, -0.518341, 0.703154,
		-0.421939, -0.565313, -0.708794,
		0.764899, -0.641673, 0.056442,
		30.508442, 28.306200, 28.991961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665419, 28.029984, 28.846045>,  <29.973013, 28.755373, 28.952454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665419, 28.029984, 28.846045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028027, 27.989666, 29.010025>,  <30.245592, 27.965475, 29.108414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028027, 27.989666, 29.010025>,  <29.665419, 28.029984, 28.846045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028027, 27.989666, 29.010025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393833, -0.551627, 0.735257,
		0.152031, -0.827979, -0.539757,
		0.906522, -0.100792, 0.409950,
		30.299984, 27.959429, 29.133011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706842, 27.412420, 29.059887>,  <29.665419, 28.029984, 28.846045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706842, 27.412420, 29.059887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024923, 27.541126, 29.265457>,  <30.215773, 27.618349, 29.388800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024923, 27.541126, 29.265457>,  <29.706842, 27.412420, 29.059887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024923, 27.541126, 29.265457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227447, -0.627400, 0.744740,
		0.562068, -0.709110, -0.425726,
		0.795203, 0.321764, 0.513926,
		30.263485, 27.637655, 29.419636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225826, 26.872883, 29.116272>,  <29.706842, 27.412420, 29.059887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225826, 26.872883, 29.116272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286034, 27.112774, 29.430641>,  <30.322159, 27.256708, 29.619263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286034, 27.112774, 29.430641>,  <30.225826, 26.872883, 29.116272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286034, 27.112774, 29.430641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146832, -0.772600, 0.617681,
		0.977642, -0.208371, -0.028231,
		0.150518, 0.599726, 0.785922,
		30.331190, 27.292692, 29.666418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713751, 26.617863, 29.495787>,  <30.225826, 26.872883, 29.116272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713751, 26.617863, 29.495787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515362, 26.855782, 29.748840>,  <30.396328, 26.998533, 29.900673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515362, 26.855782, 29.748840>,  <30.713751, 26.617863, 29.495787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515362, 26.855782, 29.748840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132979, -0.771993, 0.621566,
		0.858096, 0.224151, 0.461982,
		-0.495971, 0.594797, 0.632636,
		30.366570, 27.034222, 29.938631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108675, 26.488495, 30.104740>,  <30.713751, 26.617863, 29.495787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108675, 26.488495, 30.104740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775705, 26.651493, 30.254948>,  <30.575924, 26.749292, 30.345072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775705, 26.651493, 30.254948>,  <31.108675, 26.488495, 30.104740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775705, 26.651493, 30.254948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059049, -0.739040, 0.671068,
		0.550981, 0.536441, 0.639259,
		-0.832426, 0.407493, 0.375521,
		30.525978, 26.773741, 30.367603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200369, 26.435165, 30.729885>,  <31.108675, 26.488495, 30.104740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200369, 26.435165, 30.729885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805452, 26.498585, 30.725498>,  <30.568502, 26.536636, 30.722866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805452, 26.498585, 30.725498>,  <31.200369, 26.435165, 30.729885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805452, 26.498585, 30.725498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106608, -0.609521, 0.785569,
		0.117868, 0.776754, 0.618677,
		-0.987290, 0.158550, -0.010965,
		30.509266, 26.546150, 30.722208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004824, 26.718813, 31.380074>,  <31.200369, 26.435165, 30.729885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004824, 26.718813, 31.380074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695431, 26.545612, 31.194931>,  <30.509794, 26.441692, 31.083845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695431, 26.545612, 31.194931>,  <31.004824, 26.718813, 31.380074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695431, 26.545612, 31.194931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102876, -0.634812, 0.765788,
		-0.625414, 0.639939, 0.446470,
		-0.773482, -0.433003, -0.462855,
		30.463387, 26.415710, 31.056074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654877, 26.404919, 31.923370>,  <31.004824, 26.718813, 31.380074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654877, 26.404919, 31.923370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437988, 26.269077, 31.615952>,  <30.307856, 26.187572, 31.431499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437988, 26.269077, 31.615952>,  <30.654877, 26.404919, 31.923370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437988, 26.269077, 31.615952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380460, -0.716308, 0.584939,
		-0.749163, 0.609568, 0.259193,
		-0.542222, -0.339602, -0.768548,
		30.275322, 26.167196, 31.385387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024969, 26.240641, 32.176868>,  <30.654877, 26.404919, 31.923370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024969, 26.240641, 32.176868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030746, 26.009460, 31.850491>,  <30.034214, 25.870752, 31.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030746, 26.009460, 31.850491>,  <30.024969, 26.240641, 32.176868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030746, 26.009460, 31.850491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338387, -0.770705, 0.539916,
		-0.940896, 0.268306, -0.206704,
		0.014446, -0.577951, -0.815944,
		30.035080, 25.836075, 31.605707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364246, 25.832508, 32.177040>,  <30.024969, 26.240641, 32.176868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364246, 25.832508, 32.177040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649508, 25.652390, 31.962135>,  <29.820663, 25.544319, 31.833193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649508, 25.652390, 31.962135>,  <29.364246, 25.832508, 32.177040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649508, 25.652390, 31.962135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233374, -0.875196, 0.423755,
		-0.661022, -0.176820, -0.729236,
		0.713153, -0.450296, -0.537259,
		29.863453, 25.517302, 31.800957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024332, 25.120548, 31.868093>,  <29.364246, 25.832508, 32.177040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024332, 25.120548, 31.868093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422287, 25.094482, 31.837227>,  <29.661060, 25.078844, 31.818707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422287, 25.094482, 31.837227>,  <29.024332, 25.120548, 31.868093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422287, 25.094482, 31.837227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019531, -0.873736, 0.486008,
		-0.099093, -0.482016, -0.870541,
		0.994887, -0.065163, -0.077167,
		29.720753, 25.074934, 31.814077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176392, 24.566158, 31.548241>,  <29.024332, 25.120548, 31.868093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176392, 24.566158, 31.548241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518776, 24.616112, 31.748932>,  <29.724207, 24.646084, 31.869347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518776, 24.616112, 31.748932>,  <29.176392, 24.566158, 31.548241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518776, 24.616112, 31.748932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083361, -0.924364, 0.372293,
		0.510273, -0.360494, -0.780811,
		0.855963, 0.124882, 0.501729,
		29.775564, 24.653576, 31.899450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377289, 23.861929, 31.620348>,  <29.176392, 24.566158, 31.548241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377289, 23.861929, 31.620348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635954, 24.032681, 31.873203>,  <29.791153, 24.135132, 32.024918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635954, 24.032681, 31.873203>,  <29.377289, 23.861929, 31.620348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635954, 24.032681, 31.873203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084358, -0.863677, 0.496937,
		0.758095, -0.268026, -0.594519,
		0.646665, 0.426878, 0.632139,
		29.829954, 24.160744, 32.062843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980120, 23.524828, 31.536926>,  <29.377289, 23.861929, 31.620348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980120, 23.524828, 31.536926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002058, 23.669998, 31.909008>,  <30.015221, 23.757101, 32.132256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002058, 23.669998, 31.909008>,  <29.980120, 23.524828, 31.536926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002058, 23.669998, 31.909008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130350, -0.926234, 0.353693,
		0.989950, 0.101853, -0.098108,
		0.054846, 0.362926, 0.930202,
		30.018513, 23.778875, 32.188068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390896, 23.058823, 31.838465>,  <29.980120, 23.524828, 31.536926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390896, 23.058823, 31.838465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249218, 23.244602, 32.163139>,  <30.164211, 23.356070, 32.357944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249218, 23.244602, 32.163139>,  <30.390896, 23.058823, 31.838465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249218, 23.244602, 32.163139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141933, -0.884597, 0.444233,
		0.924338, 0.042140, 0.379241,
		-0.354196, 0.464448, 0.811686,
		30.142960, 23.383936, 32.406647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898825, 22.947134, 32.433361>,  <30.390896, 23.058823, 31.838465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898825, 22.947134, 32.433361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542734, 23.017185, 32.601566>,  <30.329081, 23.059216, 32.702488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542734, 23.017185, 32.601566>,  <30.898825, 22.947134, 32.433361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542734, 23.017185, 32.601566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084136, -0.844041, 0.529637,
		0.447682, 0.506876, 0.736653,
		-0.890226, 0.175130, 0.420509,
		30.275667, 23.069725, 32.727718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951649, 22.771120, 33.181602>,  <30.898825, 22.947134, 32.433361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951649, 22.771120, 33.181602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560692, 22.762154, 33.097507>,  <30.326118, 22.756775, 33.047050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560692, 22.762154, 33.097507>,  <30.951649, 22.771120, 33.181602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560692, 22.762154, 33.097507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124534, -0.742546, 0.658116,
		-0.170864, 0.669420, 0.722968,
		-0.977393, -0.022415, -0.210240,
		30.267473, 22.755428, 33.034435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745422, 22.917364, 33.867596>,  <30.951649, 22.771120, 33.181602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745422, 22.917364, 33.867596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428638, 22.762844, 33.678463>,  <30.238567, 22.670132, 33.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428638, 22.762844, 33.678463>,  <30.745422, 22.917364, 33.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428638, 22.762844, 33.678463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171150, -0.602911, 0.779234,
		-0.586093, 0.698048, 0.411367,
		-0.791961, -0.386298, -0.472833,
		30.191050, 22.646955, 33.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303679, 22.753988, 34.385563>,  <30.745422, 22.917364, 33.867596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303679, 22.753988, 34.385563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180969, 22.519211, 34.085861>,  <30.107344, 22.378344, 33.906040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180969, 22.519211, 34.085861>,  <30.303679, 22.753988, 34.385563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180969, 22.519211, 34.085861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105903, -0.761276, 0.639721,
		-0.945872, 0.275598, 0.171380,
		-0.306773, -0.586945, -0.749257,
		30.088938, 22.343126, 33.861084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694784, 22.396585, 34.730965>,  <30.303679, 22.753988, 34.385563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694784, 22.396585, 34.730965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833673, 22.194065, 34.415218>,  <29.917007, 22.072554, 34.225773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833673, 22.194065, 34.415218>,  <29.694784, 22.396585, 34.730965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833673, 22.194065, 34.415218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082527, -0.854966, 0.512077,
		-0.934145, -0.112661, -0.338646,
		0.347222, -0.506302, -0.789364,
		29.937840, 22.042175, 34.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322042, 21.785906, 34.776691>,  <29.694784, 22.396585, 34.730965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322042, 21.785906, 34.776691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641624, 21.703045, 34.550858>,  <29.833374, 21.653328, 34.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641624, 21.703045, 34.550858>,  <29.322042, 21.785906, 34.776691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641624, 21.703045, 34.550858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029060, -0.924407, 0.380300,
		-0.600689, -0.320249, -0.732538,
		0.798954, -0.207155, -0.564588,
		29.881311, 21.640898, 34.381481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184835, 21.058588, 34.482372>,  <29.322042, 21.785906, 34.776691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184835, 21.058588, 34.482372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577034, 21.136814, 34.474575>,  <29.812353, 21.183750, 34.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577034, 21.136814, 34.474575>,  <29.184835, 21.058588, 34.482372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577034, 21.136814, 34.474575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181726, -0.864380, 0.468852,
		0.074838, -0.463252, -0.883061,
		0.980497, 0.195564, -0.019496,
		29.871183, 21.195482, 34.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426094, 20.471983, 34.232876>,  <29.184835, 21.058588, 34.482372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426094, 20.471983, 34.232876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733624, 20.654758, 34.411816>,  <29.918140, 20.764423, 34.519180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733624, 20.654758, 34.411816>,  <29.426094, 20.471983, 34.232876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733624, 20.654758, 34.411816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306926, -0.877404, 0.368726,
		0.560991, -0.146182, -0.814813,
		0.768821, 0.456939, 0.447349,
		29.964270, 20.791840, 34.546021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988424, 19.927034, 34.197830>,  <29.426094, 20.471983, 34.232876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988424, 19.927034, 34.197830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068844, 20.207741, 34.471210>,  <30.117096, 20.376165, 34.635239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068844, 20.207741, 34.471210>,  <29.988424, 19.927034, 34.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068844, 20.207741, 34.471210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436450, -0.688789, 0.578861,
		0.876979, 0.181913, -0.444765,
		0.201047, 0.701767, 0.683450,
		30.129158, 20.418270, 34.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556839, 19.730082, 34.363102>,  <29.988424, 19.927034, 34.197830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556839, 19.730082, 34.363102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452240, 19.958275, 34.674530>,  <30.389481, 20.095190, 34.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452240, 19.958275, 34.674530>,  <30.556839, 19.730082, 34.363102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452240, 19.958275, 34.674530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227516, -0.747475, 0.624113,
		0.938006, 0.340341, 0.065669,
		-0.261496, 0.570481, 0.778570,
		30.373791, 20.129419, 34.908100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993956, 19.656094, 34.950310>,  <30.556839, 19.730082, 34.363102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993956, 19.656094, 34.950310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666811, 19.801720, 35.128551>,  <30.470524, 19.889095, 35.235497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666811, 19.801720, 35.128551>,  <30.993956, 19.656094, 34.950310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666811, 19.801720, 35.128551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103444, -0.668759, 0.736248,
		0.566043, 0.648242, 0.509291,
		-0.817860, 0.364065, 0.445603,
		30.421453, 19.910938, 35.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057749, 19.310961, 35.531433>,  <30.993956, 19.656094, 34.950310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057749, 19.310961, 35.531433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693172, 19.452160, 35.615971>,  <30.474426, 19.536879, 35.666695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693172, 19.452160, 35.615971>,  <31.057749, 19.310961, 35.531433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693172, 19.452160, 35.615971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061455, -0.624728, 0.778421,
		0.406814, 0.696497, 0.591096,
		-0.911441, 0.352998, 0.211345,
		30.419741, 19.558060, 35.679375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098186, 19.270601, 36.324326>,  <31.057749, 19.310961, 35.531433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098186, 19.270601, 36.324326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742018, 19.311871, 36.147011>,  <30.528316, 19.336632, 36.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742018, 19.311871, 36.147011>,  <31.098186, 19.270601, 36.324326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742018, 19.311871, 36.147011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434997, -0.479447, 0.762173,
		-0.133900, 0.871485, 0.471789,
		-0.890421, 0.103172, -0.443291,
		30.474892, 19.342821, 36.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504536, 19.531689, 36.711845>,  <31.098186, 19.270601, 36.324326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504536, 19.531689, 36.711845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346514, 19.282715, 36.441586>,  <30.251701, 19.133329, 36.279430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346514, 19.282715, 36.441586>,  <30.504536, 19.531689, 36.711845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346514, 19.282715, 36.441586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585103, -0.396526, 0.707404,
		-0.708228, 0.674789, -0.207540,
		-0.395054, -0.622436, -0.675653,
		30.227997, 19.095984, 36.238892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720770, 19.523714, 36.916626>,  <30.504536, 19.531689, 36.711845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720770, 19.523714, 36.916626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788908, 19.224003, 36.660637>,  <29.829790, 19.044176, 36.507042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788908, 19.224003, 36.660637>,  <29.720770, 19.523714, 36.916626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788908, 19.224003, 36.660637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712675, -0.542195, 0.445106,
		-0.680498, 0.380271, -0.626352,
		0.170344, -0.749279, -0.639972,
		29.840012, 18.999220, 36.468647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959822, 19.747881, 37.174179>,  <29.720770, 19.523714, 36.916626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959822, 19.747881, 37.174179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634701, 19.891315, 36.990540>,  <28.439629, 19.977375, 36.880356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634701, 19.891315, 36.990540>,  <28.959822, 19.747881, 37.174179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634701, 19.891315, 36.990540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464784, 0.874286, -0.139997,
		0.351182, -0.327172, -0.877285,
		-0.812801, 0.358584, -0.459098,
		28.390860, 19.998890, 36.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200121, 20.287584, 36.702000>,  <28.959822, 19.747881, 37.174179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200121, 20.287584, 36.702000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824427, 20.401840, 36.778152>,  <28.599010, 20.470394, 36.823845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824427, 20.401840, 36.778152>,  <29.200121, 20.287584, 36.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824427, 20.401840, 36.778152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261566, 0.954692, -0.141940,
		-0.222303, -0.083516, -0.971394,
		-0.939236, 0.285638, 0.190386,
		28.542656, 20.487532, 36.835270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936783, 20.761244, 36.158890>,  <29.200121, 20.287584, 36.702000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936783, 20.761244, 36.158890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753685, 20.851124, 36.502979>,  <28.643827, 20.905052, 36.709431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753685, 20.851124, 36.502979>,  <28.936783, 20.761244, 36.158890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753685, 20.851124, 36.502979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137840, 0.973774, -0.181012,
		-0.878335, 0.035716, -0.476710,
		-0.457743, 0.224699, 0.860222,
		28.616362, 20.918533, 36.761047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335457, 21.160774, 36.142937>,  <28.936783, 20.761244, 36.158890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335457, 21.160774, 36.142937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463787, 21.255451, 36.509769>,  <28.540785, 21.312258, 36.729870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463787, 21.255451, 36.509769>,  <28.335457, 21.160774, 36.142937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463787, 21.255451, 36.509769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174572, 0.936905, -0.302877,
		-0.930910, 0.257269, 0.259265,
		0.320828, 0.236690, 0.917086,
		28.560036, 21.326458, 36.784897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979193, 21.762718, 36.341702>,  <28.335457, 21.160774, 36.142937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979193, 21.762718, 36.341702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323000, 21.706238, 36.538185>,  <28.529284, 21.672350, 36.656075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323000, 21.706238, 36.538185>,  <27.979193, 21.762718, 36.341702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323000, 21.706238, 36.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302968, 0.914783, -0.267176,
		-0.411629, 0.378464, 0.829052,
		0.859519, -0.141199, 0.491213,
		28.580856, 21.663877, 36.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133230, 22.290367, 36.943077>,  <27.979193, 21.762718, 36.341702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133230, 22.290367, 36.943077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473852, 22.137550, 36.799469>,  <28.678225, 22.045860, 36.713303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473852, 22.137550, 36.799469>,  <28.133230, 22.290367, 36.943077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473852, 22.137550, 36.799469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310040, 0.919204, -0.242773,
		0.422764, 0.095423, 0.901202,
		0.851555, -0.382044, -0.359022,
		28.729319, 22.022938, 36.691761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684801, 22.746159, 37.227627>,  <28.133230, 22.290367, 36.943077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684801, 22.746159, 37.227627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826435, 22.562893, 36.901508>,  <28.911415, 22.452932, 36.705837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826435, 22.562893, 36.901508>,  <28.684801, 22.746159, 37.227627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826435, 22.562893, 36.901508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315626, 0.879171, -0.356985,
		0.880344, -0.130926, 0.455909,
		0.354084, -0.458166, -0.815297,
		28.932661, 22.425444, 36.656918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270710, 23.101561, 37.173767>,  <28.684801, 22.746159, 37.227627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270710, 23.101561, 37.173767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214106, 22.924442, 36.819614>,  <29.180143, 22.818172, 36.607121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214106, 22.924442, 36.819614>,  <29.270710, 23.101561, 37.173767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214106, 22.924442, 36.819614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317554, 0.826817, -0.464256,
		0.937622, -0.346855, 0.023608,
		-0.141510, -0.442793, -0.885386,
		29.171652, 22.791605, 36.553997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861240, 23.217575, 36.737793>,  <29.270710, 23.101561, 37.173767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861240, 23.217575, 36.737793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579643, 23.145130, 36.463104>,  <29.410685, 23.101664, 36.298290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579643, 23.145130, 36.463104>,  <29.861240, 23.217575, 36.737793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579643, 23.145130, 36.463104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399640, 0.698302, -0.593854,
		0.587095, -0.692512, -0.419221,
		-0.703994, -0.181111, -0.686725,
		29.368444, 23.090797, 36.257088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231510, 23.182102, 36.094967>,  <29.861240, 23.217575, 36.737793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231510, 23.182102, 36.094967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849682, 23.261631, 36.006184>,  <29.620584, 23.309349, 35.952915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849682, 23.261631, 36.006184>,  <30.231510, 23.182102, 36.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849682, 23.261631, 36.006184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289036, 0.798958, -0.527375,
		0.072482, -0.567571, -0.820128,
		-0.954571, 0.198821, -0.221958,
		29.563311, 23.321278, 35.939594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228590, 23.338091, 35.390007>,  <30.231510, 23.182102, 36.094967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228590, 23.338091, 35.390007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894964, 23.492474, 35.547676>,  <29.694788, 23.585104, 35.642277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894964, 23.492474, 35.547676>,  <30.228590, 23.338091, 35.390007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894964, 23.492474, 35.547676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057073, 0.771046, -0.634217,
		-0.548705, -0.506482, -0.665131,
		-0.834066, 0.385959, 0.394170,
		29.644745, 23.608261, 35.665928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834764, 23.772310, 34.860718>,  <30.228590, 23.338091, 35.390007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834764, 23.772310, 34.860718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686094, 23.915726, 35.203251>,  <29.596893, 24.001774, 35.408772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686094, 23.915726, 35.203251>,  <29.834764, 23.772310, 34.860718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686094, 23.915726, 35.203251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101236, 0.932566, -0.346515,
		-0.922827, -0.042098, -0.382908,
		-0.371674, 0.358538, 0.856335,
		29.574593, 24.023287, 35.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543993, 24.364460, 34.627666>,  <29.834764, 23.772310, 34.860718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543993, 24.364460, 34.627666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549477, 24.395367, 35.026432>,  <29.552767, 24.413910, 35.265694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549477, 24.395367, 35.026432>,  <29.543993, 24.364460, 34.627666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549477, 24.395367, 35.026432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000894, 0.997009, -0.077284,
		-0.999906, 0.001951, 0.013600,
		0.013710, 0.077265, 0.996916,
		29.553589, 24.418547, 35.325508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046087, 24.649475, 34.891930>,  <29.543993, 24.364460, 34.627666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046087, 24.649475, 34.891930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279951, 24.749313, 35.200703>,  <29.420269, 24.809217, 35.385967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279951, 24.749313, 35.200703>,  <29.046087, 24.649475, 34.891930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279951, 24.749313, 35.200703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067571, 0.963172, -0.260257,
		-0.808459, 0.100002, 0.579995,
		0.584661, 0.249598, 0.771928,
		29.455349, 24.824192, 35.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661543, 25.315891, 35.152195>,  <29.046087, 24.649475, 34.891930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661543, 25.315891, 35.152195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042383, 25.287476, 35.271160>,  <29.270887, 25.270426, 35.342537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042383, 25.287476, 35.271160>,  <28.661543, 25.315891, 35.152195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042383, 25.287476, 35.271160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154533, 0.951077, -0.267530,
		-0.263855, 0.300676, 0.916501,
		0.952103, -0.071040, 0.297411,
		29.328014, 25.266163, 35.360382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772568, 25.952621, 35.665939>,  <28.661543, 25.315891, 35.152195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772568, 25.952621, 35.665939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117344, 25.822945, 35.510010>,  <29.324209, 25.745138, 35.416451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117344, 25.822945, 35.510010>,  <28.772568, 25.952621, 35.665939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117344, 25.822945, 35.510010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210683, 0.928357, -0.306212,
		0.461166, 0.181807, 0.868488,
		0.861939, -0.324190, -0.389823,
		29.375925, 25.725687, 35.393063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187592, 26.518480, 35.818924>,  <28.772568, 25.952621, 35.665939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187592, 26.518480, 35.818924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404205, 26.295513, 35.567200>,  <29.534174, 26.161734, 35.416164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404205, 26.295513, 35.567200>,  <29.187592, 26.518480, 35.818924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404205, 26.295513, 35.567200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485108, 0.818565, -0.307606,
		0.686592, -0.138702, 0.713689,
		0.541536, -0.557416, -0.629306,
		29.566666, 26.128288, 35.378407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834070, 26.875868, 35.886082>,  <29.187592, 26.518480, 35.818924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834070, 26.875868, 35.886082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802546, 26.691830, 35.532337>,  <29.783630, 26.581408, 35.320091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802546, 26.691830, 35.532337>,  <29.834070, 26.875868, 35.886082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802546, 26.691830, 35.532337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531666, 0.731027, -0.427703,
		0.843279, -0.503895, 0.187002,
		-0.078814, -0.460096, -0.884364,
		29.778902, 26.553801, 35.267029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407412, 27.208387, 35.395924>,  <29.834070, 26.875868, 35.886082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407412, 27.208387, 35.395924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191872, 27.007717, 35.125233>,  <30.062548, 26.887316, 34.962818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191872, 27.007717, 35.125233>,  <30.407412, 27.208387, 35.395924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191872, 27.007717, 35.125233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455410, 0.502342, -0.735020,
		0.708690, -0.704255, -0.042219,
		-0.538850, -0.501674, -0.676730,
		30.030216, 26.857216, 34.922215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865139, 27.032953, 34.960773>,  <30.407412, 27.208387, 35.395924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865139, 27.032953, 34.960773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518127, 27.043755, 34.762112>,  <30.309921, 27.050236, 34.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518127, 27.043755, 34.762112>,  <30.865139, 27.032953, 34.960773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518127, 27.043755, 34.762112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403481, 0.622114, -0.670953,
		0.290859, -0.782461, -0.550596,
		-0.867528, 0.027002, -0.496655,
		30.257870, 27.051855, 34.613113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025732, 26.981367, 34.141880>,  <30.865139, 27.032953, 34.960773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025732, 26.981367, 34.141880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669538, 27.161991, 34.164268>,  <30.455822, 27.270367, 34.177704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669538, 27.161991, 34.164268>,  <31.025732, 26.981367, 34.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669538, 27.161991, 34.164268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324538, 0.716531, -0.617462,
		-0.318930, -0.531673, -0.784607,
		-0.890482, 0.451562, 0.055975,
		30.402393, 27.297461, 34.181061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880602, 27.030886, 33.343941>,  <31.025732, 26.981367, 34.141880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880602, 27.030886, 33.343941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650019, 27.291927, 33.540634>,  <30.511669, 27.448553, 33.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650019, 27.291927, 33.540634>,  <30.880602, 27.030886, 33.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650019, 27.291927, 33.540634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304019, 0.729874, -0.612256,
		-0.758464, -0.203445, -0.619147,
		-0.576460, 0.652606, 0.491732,
		30.477081, 27.487709, 33.688152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429703, 27.353828, 32.825119>,  <30.880602, 27.030886, 33.343941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429703, 27.353828, 32.825119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489878, 27.603172, 33.132050>,  <30.525982, 27.752779, 33.316208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489878, 27.603172, 33.132050>,  <30.429703, 27.353828, 32.825119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489878, 27.603172, 33.132050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323758, 0.702296, -0.634004,
		-0.934104, 0.343806, -0.096168,
		0.150436, 0.623360, 0.767327,
		30.535009, 27.790180, 33.362247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299433, 27.919491, 32.459900>,  <30.429703, 27.353828, 32.825119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299433, 27.919491, 32.459900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466055, 28.026932, 32.807308>,  <30.566029, 28.091396, 33.015755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466055, 28.026932, 32.807308>,  <30.299433, 27.919491, 32.459900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466055, 28.026932, 32.807308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503740, 0.727088, -0.466464,
		-0.756786, 0.631819, 0.167568,
		0.416557, 0.268603, 0.868523,
		30.591022, 28.107513, 33.067863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229523, 28.643229, 32.412453>,  <30.299433, 27.919491, 32.459900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229523, 28.643229, 32.412453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511614, 28.580521, 32.689026>,  <30.680868, 28.542896, 32.854969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511614, 28.580521, 32.689026>,  <30.229523, 28.643229, 32.412453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511614, 28.580521, 32.689026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552161, 0.733181, -0.396943,
		-0.444714, 0.661716, 0.603624,
		0.705229, -0.156772, 0.691429,
		30.723183, 28.533489, 32.896454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371534, 29.270582, 32.646484>,  <30.229523, 28.643229, 32.412453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371534, 29.270582, 32.646484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694153, 29.056896, 32.747749>,  <30.887724, 28.928684, 32.808510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694153, 29.056896, 32.747749>,  <30.371534, 29.270582, 32.646484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694153, 29.056896, 32.747749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587858, 0.770028, -0.247953,
		-0.062485, 0.348812, 0.935108,
		0.806548, -0.534217, 0.253167,
		30.936117, 28.896631, 32.823700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794853, 29.794931, 32.923256>,  <30.371534, 29.270582, 32.646484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794853, 29.794931, 32.923256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067608, 29.504543, 32.887474>,  <31.231260, 29.330311, 32.866005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067608, 29.504543, 32.887474>,  <30.794853, 29.794931, 32.923256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067608, 29.504543, 32.887474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685557, 0.676937, -0.267897,
		0.255038, 0.121351, 0.959286,
		0.681885, -0.725969, -0.089452,
		31.272173, 29.286753, 32.860638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456583, 29.988956, 33.190655>,  <30.794853, 29.794931, 32.923256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456583, 29.988956, 33.190655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542971, 29.707829, 32.919540>,  <31.594803, 29.539152, 32.756870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542971, 29.707829, 32.919540>,  <31.456583, 29.988956, 33.190655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542971, 29.707829, 32.919540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691477, 0.600194, -0.402028,
		0.689359, -0.381849, 0.615609,
		0.215971, -0.702821, -0.677790,
		31.607761, 29.496983, 32.716202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126991, 29.872246, 33.275776>,  <31.456583, 29.988956, 33.190655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126991, 29.872246, 33.275776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018841, 29.772137, 32.903915>,  <31.953951, 29.712070, 32.680798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018841, 29.772137, 32.903915>,  <32.126991, 29.872246, 33.275776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018841, 29.772137, 32.903915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737179, 0.567271, -0.367112,
		0.619245, -0.784581, 0.031120,
		-0.270376, -0.250273, -0.929656,
		31.937727, 29.697054, 32.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726376, 29.611172, 32.975174>,  <32.126991, 29.872246, 33.275776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726376, 29.611172, 32.975174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489265, 29.711720, 32.669121>,  <32.347000, 29.772049, 32.485489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489265, 29.711720, 32.669121>,  <32.726376, 29.611172, 32.975174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489265, 29.711720, 32.669121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781682, 0.408281, -0.471466,
		0.193876, -0.877565, -0.438511,
		-0.592778, 0.251370, -0.765133,
		32.311432, 29.787130, 32.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120686, 29.391359, 32.402760>,  <32.726376, 29.611172, 32.975174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120686, 29.391359, 32.402760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873161, 29.676826, 32.271458>,  <32.724648, 29.848106, 32.192677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873161, 29.676826, 32.271458>,  <33.120686, 29.391359, 32.402760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873161, 29.676826, 32.271458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738451, 0.385995, -0.552900,
		-0.267882, -0.584541, -0.765867,
		-0.618813, 0.713667, -0.328253,
		32.687519, 29.890926, 32.172981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339367, 29.529425, 31.657938>,  <33.120686, 29.391359, 32.402760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339367, 29.529425, 31.657938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082001, 29.819607, 31.755692>,  <32.927582, 29.993717, 31.814344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082001, 29.819607, 31.755692>,  <33.339367, 29.529425, 31.657938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082001, 29.819607, 31.755692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393859, 0.587465, -0.706938,
		-0.656420, -0.358604, -0.663714,
		-0.643419, 0.725458, 0.244384,
		32.888973, 30.037245, 31.829006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067116, 29.650082, 31.075647>,  <33.339367, 29.529425, 31.657938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067116, 29.650082, 31.075647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022797, 29.979504, 31.298172>,  <32.996204, 30.177156, 31.431686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022797, 29.979504, 31.298172>,  <33.067116, 29.650082, 31.075647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022797, 29.979504, 31.298172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421731, 0.545823, -0.724030,
		-0.899925, 0.154390, -0.407796,
		-0.110801, 0.823554, 0.556311,
		32.989555, 30.226570, 31.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627682, 30.130754, 30.722553>,  <33.067116, 29.650082, 31.075647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627682, 30.130754, 30.722553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845036, 30.341301, 30.984138>,  <32.975449, 30.467628, 31.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845036, 30.341301, 30.984138>,  <32.627682, 30.130754, 30.722553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845036, 30.341301, 30.984138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329282, 0.582938, -0.742803,
		-0.772207, 0.618968, 0.143437,
		0.543387, 0.526367, 0.653964,
		33.008053, 30.499210, 31.180328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392418, 30.733391, 30.508564>,  <32.627682, 30.130754, 30.722553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392418, 30.733391, 30.508564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729752, 30.810772, 30.709106>,  <32.932152, 30.857201, 30.829433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729752, 30.810772, 30.709106>,  <32.392418, 30.733391, 30.508564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729752, 30.810772, 30.709106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242385, 0.695732, -0.676171,
		-0.479619, 0.691761, 0.539845,
		0.843336, 0.193455, 0.501359,
		32.982754, 30.868809, 30.859514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418259, 31.433350, 30.519381>,  <32.392418, 30.733391, 30.508564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418259, 31.433350, 30.519381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783985, 31.284782, 30.583977>,  <33.003422, 31.195642, 30.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783985, 31.284782, 30.583977>,  <32.418259, 31.433350, 30.519381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783985, 31.284782, 30.583977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355376, 0.544478, -0.759771,
		0.194265, 0.752058, 0.629817,
		0.914314, -0.371418, 0.161490,
		33.058281, 31.173357, 30.632423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741913, 32.023075, 30.415054>,  <32.418259, 31.433350, 30.519381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741913, 32.023075, 30.415054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998558, 31.721123, 30.360683>,  <33.152546, 31.539951, 30.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998558, 31.721123, 30.360683>,  <32.741913, 32.023075, 30.415054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998558, 31.721123, 30.360683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359023, 0.452171, -0.816482,
		0.677812, 0.475069, 0.561142,
		0.641618, -0.754885, -0.135927,
		33.191044, 31.494658, 30.319906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314777, 32.322273, 30.192385>,  <32.741913, 32.023075, 30.415054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314777, 32.322273, 30.192385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399120, 31.940098, 30.109760>,  <33.449726, 31.710791, 30.060186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399120, 31.940098, 30.109760>,  <33.314777, 32.322273, 30.192385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399120, 31.940098, 30.109760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284202, 0.262104, -0.922242,
		0.935290, 0.135758, 0.326806,
		0.210859, -0.955443, -0.206561,
		33.462379, 31.653465, 30.047792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920696, 32.368412, 29.811487>,  <33.314777, 32.322273, 30.192385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920696, 32.368412, 29.811487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776344, 32.009068, 29.711319>,  <33.689732, 31.793461, 29.651218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776344, 32.009068, 29.711319>,  <33.920696, 32.368412, 29.811487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776344, 32.009068, 29.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252691, 0.164280, -0.953498,
		0.897727, -0.407377, 0.167723,
		-0.360880, -0.898363, -0.250420,
		33.668079, 31.739559, 29.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452900, 32.078339, 29.430075>,  <33.920696, 32.368412, 29.811487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452900, 32.078339, 29.430075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105465, 31.903362, 29.336948>,  <33.897003, 31.798376, 29.281073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105465, 31.903362, 29.336948>,  <34.452900, 32.078339, 29.430075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105465, 31.903362, 29.336948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133916, 0.245131, -0.960197,
		0.477099, -0.865191, -0.154337,
		-0.868586, -0.437441, -0.232815,
		33.844891, 31.772131, 29.267103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592430, 31.663748, 28.863300>,  <34.452900, 32.078339, 29.430075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592430, 31.663748, 28.863300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198013, 31.730335, 28.863796>,  <33.961361, 31.770288, 28.864094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198013, 31.730335, 28.863796>,  <34.592430, 31.663748, 28.863300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198013, 31.730335, 28.863796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011407, 0.074995, -0.997119,
		-0.166084, -0.983190, -0.075847,
		-0.986046, 0.166471, 0.001240,
		33.902199, 31.780277, 28.864168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379333, 31.297318, 28.233330>,  <34.592430, 31.663748, 28.863300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379333, 31.297318, 28.233330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049904, 31.505947, 28.322487>,  <33.852245, 31.631124, 28.375982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049904, 31.505947, 28.322487>,  <34.379333, 31.297318, 28.233330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049904, 31.505947, 28.322487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148846, 0.180462, -0.972254,
		-0.547326, -0.833904, -0.070990,
		-0.823577, 0.521573, 0.222894,
		33.802830, 31.662418, 28.389355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828861, 31.112198, 27.719673>,  <34.379333, 31.297318, 28.233330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828861, 31.112198, 27.719673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718407, 31.474625, 27.847916>,  <33.652134, 31.692081, 27.924862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718407, 31.474625, 27.847916>,  <33.828861, 31.112198, 27.719673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718407, 31.474625, 27.847916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174366, 0.280814, -0.943790,
		-0.945170, -0.316517, 0.080445,
		-0.276135, 0.906069, 0.320607,
		33.635567, 31.746445, 27.944098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231304, 31.303352, 27.344088>,  <33.828861, 31.112198, 27.719673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231304, 31.303352, 27.344088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377254, 31.656937, 27.461037>,  <33.464825, 31.869087, 27.531206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377254, 31.656937, 27.461037>,  <33.231304, 31.303352, 27.344088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377254, 31.656937, 27.461037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204768, 0.382523, -0.900970,
		-0.908259, 0.268875, 0.320580,
		0.364877, 0.883958, 0.292373,
		33.486717, 31.922125, 27.548748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669205, 31.755590, 27.144848>,  <33.231304, 31.303352, 27.344088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669205, 31.755590, 27.144848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007889, 31.959007, 27.207413>,  <33.211102, 32.081059, 27.244951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007889, 31.959007, 27.207413>,  <32.669205, 31.755590, 27.144848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007889, 31.959007, 27.207413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023370, 0.329244, -0.943956,
		-0.531538, 0.795604, 0.290659,
		0.846712, 0.508541, 0.156413,
		33.261902, 32.111568, 27.254337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404896, 31.934179, 26.478109>,  <32.669205, 31.755590, 27.144848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404896, 31.934179, 26.478109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075809, 31.923351, 26.250988>,  <31.878357, 31.916855, 26.114716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075809, 31.923351, 26.250988>,  <32.404896, 31.934179, 26.478109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075809, 31.923351, 26.250988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568409, 0.051009, 0.821163,
		0.006736, 0.998331, -0.057352,
		-0.822718, -0.027068, -0.567804,
		31.828995, 31.915232, 26.080647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908596, 32.379009, 26.752676>,  <32.404896, 31.934179, 26.478109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908596, 32.379009, 26.752676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683737, 32.135509, 26.528740>,  <31.548822, 31.989410, 26.394379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683737, 32.135509, 26.528740>,  <31.908596, 32.379009, 26.752676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683737, 32.135509, 26.528740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693324, -0.022167, 0.720285,
		-0.450881, 0.793055, -0.409598,
		-0.562146, -0.608746, -0.559839,
		31.515093, 31.952885, 26.360788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238407, 32.620121, 26.796062>,  <31.908596, 32.379009, 26.752676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238407, 32.620121, 26.796062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158031, 32.240776, 26.697895>,  <31.109806, 32.013168, 26.638994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158031, 32.240776, 26.697895>,  <31.238407, 32.620121, 26.796062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158031, 32.240776, 26.697895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702649, -0.035030, 0.710674,
		-0.682574, 0.315245, -0.659328,
		-0.200940, -0.948364, -0.245417,
		31.097750, 31.956266, 26.624269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574381, 32.381523, 26.888403>,  <31.238407, 32.620121, 26.796062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574381, 32.381523, 26.888403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734718, 32.015720, 26.866478>,  <30.830921, 31.796240, 26.853323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734718, 32.015720, 26.866478>,  <30.574381, 32.381523, 26.888403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734718, 32.015720, 26.866478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780363, -0.372165, 0.502521,
		-0.479957, -0.158659, -0.862826,
		0.400843, -0.914506, -0.054812,
		30.854971, 31.741369, 26.850035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967203, 31.914503, 26.801598>,  <30.574381, 32.381523, 26.888403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967203, 31.914503, 26.801598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275869, 31.701427, 26.940605>,  <30.461069, 31.573582, 27.024010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275869, 31.701427, 26.940605>,  <29.967203, 31.914503, 26.801598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275869, 31.701427, 26.940605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565620, -0.324873, 0.757979,
		-0.290865, -0.781474, -0.551993,
		0.771668, -0.532688, 0.347523,
		30.507370, 31.541620, 27.044861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785810, 31.176678, 26.927628>,  <29.967203, 31.914503, 26.801598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785810, 31.176678, 26.927628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109529, 31.218620, 27.158813>,  <30.303761, 31.243786, 27.297525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109529, 31.218620, 27.158813>,  <29.785810, 31.176678, 26.927628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109529, 31.218620, 27.158813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516972, -0.340017, 0.785575,
		0.278890, -0.934555, -0.220968,
		0.809296, 0.104855, 0.577966,
		30.352318, 31.250076, 27.332203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662996, 30.630156, 27.232191>,  <29.785810, 31.176678, 26.927628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662996, 30.630156, 27.232191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925716, 30.804939, 27.478012>,  <30.083349, 30.909809, 27.625505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925716, 30.804939, 27.478012>,  <29.662996, 30.630156, 27.232191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925716, 30.804939, 27.478012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450339, -0.426385, 0.784468,
		0.604819, -0.791998, -0.083270,
		0.656802, 0.436961, 0.614553,
		30.122757, 30.936028, 27.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913702, 30.081520, 27.560930>,  <29.662996, 30.630156, 27.232191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913702, 30.081520, 27.560930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987728, 30.407536, 27.780552>,  <30.032145, 30.603146, 27.912325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987728, 30.407536, 27.780552>,  <29.913702, 30.081520, 27.560930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987728, 30.407536, 27.780552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341924, -0.470392, 0.813523,
		0.921324, -0.338291, 0.191627,
		0.185067, 0.815040, 0.549053,
		30.043249, 30.652048, 27.945269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796473, 29.746943, 28.193541>,  <29.913702, 30.081520, 27.560930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796473, 29.746943, 28.193541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876781, 30.128170, 28.284180>,  <29.924967, 30.356907, 28.338564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876781, 30.128170, 28.284180>,  <29.796473, 29.746943, 28.193541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876781, 30.128170, 28.284180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209049, -0.184300, 0.960381,
		0.957073, -0.240190, 0.162236,
		0.200774, 0.953070, 0.226600,
		29.937014, 30.414091, 28.352160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303144, 29.890335, 28.689125>,  <29.796473, 29.746943, 28.193541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303144, 29.890335, 28.689125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044067, 30.192997, 28.724831>,  <29.888620, 30.374594, 28.746254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044067, 30.192997, 28.724831>,  <30.303144, 29.890335, 28.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044067, 30.192997, 28.724831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243771, -0.316806, 0.916629,
		0.721851, 0.571935, 0.389644,
		-0.647694, 0.756654, 0.089265,
		29.849760, 30.419992, 28.751610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395567, 30.145355, 29.310204>,  <30.303144, 29.890335, 28.689125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395567, 30.145355, 29.310204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025677, 30.267410, 29.219193>,  <29.803741, 30.340643, 29.164585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025677, 30.267410, 29.219193>,  <30.395567, 30.145355, 29.310204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025677, 30.267410, 29.219193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315839, -0.281527, 0.906084,
		0.212427, 0.909743, 0.356711,
		-0.924727, 0.305140, -0.227529,
		29.748259, 30.358952, 29.150934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218573, 30.523014, 29.885035>,  <30.395567, 30.145355, 29.310204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218573, 30.523014, 29.885035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877365, 30.417511, 29.704906>,  <29.672640, 30.354210, 29.596830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877365, 30.417511, 29.704906>,  <30.218573, 30.523014, 29.885035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877365, 30.417511, 29.704906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370934, -0.300551, 0.878679,
		-0.367103, 0.916570, 0.158539,
		-0.853020, -0.263758, -0.450320,
		29.621460, 30.338383, 29.569811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773014, 30.922306, 30.110277>,  <30.218573, 30.523014, 29.885035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773014, 30.922306, 30.110277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549217, 30.605488, 30.012600>,  <29.414938, 30.415398, 29.953993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549217, 30.605488, 30.012600>,  <29.773014, 30.922306, 30.110277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549217, 30.605488, 30.012600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223362, -0.139640, 0.964681,
		-0.798171, 0.594277, -0.098784,
		-0.559494, -0.792045, -0.244195,
		29.381369, 30.367874, 29.939341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185816, 30.974102, 30.532305>,  <29.773014, 30.922306, 30.110277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185816, 30.974102, 30.532305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181971, 30.596413, 30.400639>,  <29.179665, 30.369799, 30.321640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181971, 30.596413, 30.400639>,  <29.185816, 30.974102, 30.532305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181971, 30.596413, 30.400639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448143, -0.290202, 0.845547,
		-0.893910, 0.155640, -0.420358,
		-0.009612, -0.944224, -0.329163,
		29.179087, 30.313145, 30.301889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641520, 30.740227, 30.936216>,  <29.185816, 30.974102, 30.532305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641520, 30.740227, 30.936216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789080, 30.395855, 30.796097>,  <28.877617, 30.189232, 30.712025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789080, 30.395855, 30.796097>,  <28.641520, 30.740227, 30.936216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789080, 30.395855, 30.796097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297406, -0.466401, 0.833078,
		-0.880603, -0.203144, -0.428102,
		0.368902, -0.860931, -0.350298,
		28.899750, 30.137575, 30.691008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034208, 30.168901, 30.854847>,  <28.641520, 30.740227, 30.936216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034208, 30.168901, 30.854847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396639, 30.002533, 30.885929>,  <28.614098, 29.902712, 30.904579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396639, 30.002533, 30.885929>,  <28.034208, 30.168901, 30.854847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396639, 30.002533, 30.885929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305192, -0.515227, 0.800874,
		-0.293063, -0.749367, -0.593770,
		0.906075, -0.415921, 0.077707,
		28.668461, 29.877756, 30.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867067, 29.517410, 31.098406>,  <28.034208, 30.168901, 30.854847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867067, 29.517410, 31.098406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261812, 29.493210, 31.158333>,  <28.498659, 29.478689, 31.194288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261812, 29.493210, 31.158333>,  <27.867067, 29.517410, 31.098406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261812, 29.493210, 31.158333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157239, -0.572890, 0.804408,
		0.037162, -0.817396, -0.574876,
		0.986861, -0.060500, 0.149816,
		28.557871, 29.475060, 31.203278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009502, 28.761383, 31.171770>,  <27.867067, 29.517410, 31.098406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009502, 28.761383, 31.171770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303417, 28.969250, 31.346142>,  <28.479767, 29.093969, 31.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303417, 28.969250, 31.346142>,  <28.009502, 28.761383, 31.171770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303417, 28.969250, 31.346142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111257, -0.541638, 0.833217,
		0.669110, -0.660737, -0.340173,
		0.734788, 0.519667, 0.435927,
		28.523853, 29.125151, 31.476919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457409, 28.281313, 31.438972>,  <28.009502, 28.761383, 31.171770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457409, 28.281313, 31.438972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541935, 28.611168, 31.648857>,  <28.592649, 28.809080, 31.774788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541935, 28.611168, 31.648857>,  <28.457409, 28.281313, 31.438972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541935, 28.611168, 31.648857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082691, -0.519826, 0.850260,
		0.973914, -0.223060, -0.041656,
		0.211313, 0.824636, 0.524711,
		28.605330, 28.858559, 31.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971266, 28.070400, 31.773102>,  <28.457409, 28.281313, 31.438972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971266, 28.070400, 31.773102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809435, 28.375912, 31.974281>,  <28.712336, 28.559219, 32.094990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809435, 28.375912, 31.974281>,  <28.971266, 28.070400, 31.773102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809435, 28.375912, 31.974281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094714, -0.582008, 0.807649,
		0.909586, 0.279121, 0.307808,
		-0.404578, 0.763779, 0.502949,
		28.688061, 28.605045, 32.125168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347403, 28.171499, 32.384953>,  <28.971266, 28.070400, 31.773102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347403, 28.171499, 32.384953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993139, 28.336620, 32.469997>,  <28.780581, 28.435694, 32.521023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993139, 28.336620, 32.469997>,  <29.347403, 28.171499, 32.384953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993139, 28.336620, 32.469997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110056, -0.631448, 0.767568,
		0.451108, 0.656403, 0.604678,
		-0.885658, 0.412804, 0.212610,
		28.727442, 28.460463, 32.533779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257725, 28.129713, 33.107586>,  <29.347403, 28.171499, 32.384953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257725, 28.129713, 33.107586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884823, 28.142506, 32.963432>,  <28.661081, 28.150181, 32.876938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884823, 28.142506, 32.963432>,  <29.257725, 28.129713, 33.107586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884823, 28.142506, 32.963432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276454, -0.705540, 0.652523,
		-0.233398, 0.707947, 0.666585,
		-0.932255, 0.031983, -0.360386,
		28.605146, 28.152100, 32.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762814, 28.197918, 33.621895>,  <29.257725, 28.129713, 33.107586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762814, 28.197918, 33.621895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511784, 28.061924, 33.341736>,  <28.361166, 27.980328, 33.173641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511784, 28.061924, 33.341736>,  <28.762814, 28.197918, 33.621895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511784, 28.061924, 33.341736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296321, -0.727604, 0.618697,
		-0.719961, 0.595822, 0.355882,
		-0.627575, -0.339983, -0.700401,
		28.323511, 27.959929, 33.131615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115683, 28.252209, 33.899841>,  <28.762814, 28.197918, 33.621895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115683, 28.252209, 33.899841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110804, 27.961647, 33.624977>,  <28.107876, 27.787310, 33.460060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110804, 27.961647, 33.624977>,  <28.115683, 28.252209, 33.899841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110804, 27.961647, 33.624977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403179, -0.625298, 0.668169,
		-0.915040, 0.285196, -0.285246,
		-0.012195, -0.726406, -0.687157,
		28.107145, 27.743725, 33.418831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503983, 27.785820, 34.080502>,  <28.115683, 28.252209, 33.899841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503983, 27.785820, 34.080502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712761, 27.555779, 33.828526>,  <27.838028, 27.417753, 33.677338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712761, 27.555779, 33.828526>,  <27.503983, 27.785820, 34.080502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712761, 27.555779, 33.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207582, -0.801961, 0.560150,
		-0.827333, -0.161604, -0.537962,
		0.521948, -0.575102, -0.629943,
		27.869345, 27.383247, 33.639542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124224, 27.226154, 34.016590>,  <27.503983, 27.785820, 34.080502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124224, 27.226154, 34.016590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470123, 27.079506, 33.879303>,  <27.677662, 26.991518, 33.796928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470123, 27.079506, 33.879303>,  <27.124224, 27.226154, 34.016590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470123, 27.079506, 33.879303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246262, -0.905176, 0.346425,
		-0.437683, -0.215048, -0.873034,
		0.864748, -0.366619, -0.343222,
		27.729548, 26.969521, 33.776337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967999, 26.555338, 33.631672>,  <27.124224, 27.226154, 34.016590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967999, 26.555338, 33.631672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341806, 26.531654, 33.772049>,  <27.566092, 26.517445, 33.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341806, 26.531654, 33.772049>,  <26.967999, 26.555338, 33.631672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341806, 26.531654, 33.772049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196928, -0.907388, 0.371304,
		0.296460, -0.416103, -0.859633,
		0.934521, -0.059209, 0.350947,
		27.622164, 26.513891, 33.877335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305351, 25.941219, 33.385357>,  <26.967999, 26.555338, 33.631672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305351, 25.941219, 33.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473988, 26.036434, 33.735352>,  <27.575169, 26.093563, 33.945347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473988, 26.036434, 33.735352>,  <27.305351, 25.941219, 33.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473988, 26.036434, 33.735352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121151, -0.941493, 0.314505,
		0.898656, -0.238598, -0.368087,
		0.421592, 0.238038, 0.874985,
		27.600466, 26.107845, 33.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770847, 25.365030, 33.499687>,  <27.305351, 25.941219, 33.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770847, 25.365030, 33.499687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727024, 25.554630, 33.849159>,  <27.700729, 25.668390, 34.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727024, 25.554630, 33.849159>,  <27.770847, 25.365030, 33.499687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727024, 25.554630, 33.849159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221847, -0.868461, 0.443350,
		0.968907, -0.145252, 0.200302,
		-0.109558, 0.474001, 0.873682,
		27.694157, 25.696831, 34.111263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124128, 24.865618, 34.066093>,  <27.770847, 25.365030, 33.499687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124128, 24.865618, 34.066093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909271, 25.116829, 34.291325>,  <27.780357, 25.267555, 34.426464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909271, 25.116829, 34.291325>,  <28.124128, 24.865618, 34.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909271, 25.116829, 34.291325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200513, -0.743493, 0.637975,
		0.819311, 0.229779, 0.525290,
		-0.537143, 0.628028, 0.563079,
		27.748129, 25.305237, 34.460247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212627, 24.745731, 34.759659>,  <28.124128, 24.865618, 34.066093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212627, 24.745731, 34.759659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848988, 24.909721, 34.789219>,  <27.630804, 25.008116, 34.806953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848988, 24.909721, 34.789219>,  <28.212627, 24.745731, 34.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848988, 24.909721, 34.789219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278779, -0.730546, 0.623365,
		0.309549, 0.546099, 0.778431,
		-0.909099, 0.409973, 0.073899,
		27.576258, 25.032713, 34.811390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094625, 24.615473, 35.441708>,  <28.212627, 24.745731, 34.759659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094625, 24.615473, 35.441708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748655, 24.706985, 35.263020>,  <27.541073, 24.761892, 35.155807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748655, 24.706985, 35.263020>,  <28.094625, 24.615473, 35.441708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748655, 24.706985, 35.263020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451986, -0.742005, 0.495113,
		-0.218201, 0.630149, 0.745185,
		-0.864926, 0.228779, -0.446725,
		27.489178, 24.775620, 35.129002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570173, 24.594893, 35.904312>,  <28.094625, 24.615473, 35.441708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570173, 24.594893, 35.904312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346889, 24.550163, 35.575459>,  <27.212919, 24.523327, 35.378147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346889, 24.550163, 35.575459>,  <27.570173, 24.594893, 35.904312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346889, 24.550163, 35.575459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496594, -0.748768, 0.439022,
		-0.664676, 0.653332, 0.362440,
		-0.558211, -0.111822, -0.822129,
		27.179426, 24.516617, 35.328819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992670, 24.446028, 36.193501>,  <27.570173, 24.594893, 35.904312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992670, 24.446028, 36.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944416, 24.330532, 35.813591>,  <26.915464, 24.261234, 35.585644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944416, 24.330532, 35.813591>,  <26.992670, 24.446028, 36.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944416, 24.330532, 35.813591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476141, -0.822696, 0.310583,
		-0.871055, 0.489695, -0.038234,
		-0.120635, -0.288740, -0.949777,
		26.908226, 24.243910, 35.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266832, 24.324663, 36.117592>,  <26.992670, 24.446028, 36.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266832, 24.324663, 36.117592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447004, 24.129822, 35.818302>,  <26.555107, 24.012917, 35.638729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447004, 24.129822, 35.818302>,  <26.266832, 24.324663, 36.117592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447004, 24.129822, 35.818302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537911, -0.816935, 0.208013,
		-0.712576, 0.308784, -0.629991,
		0.450431, -0.487104, -0.748226,
		26.582132, 23.983690, 35.593834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735750, 24.019207, 35.760437>,  <26.266832, 24.324663, 36.117592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735750, 24.019207, 35.760437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082598, 23.825485, 35.713860>,  <26.290707, 23.709253, 35.685913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082598, 23.825485, 35.713860>,  <25.735750, 24.019207, 35.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082598, 23.825485, 35.713860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452790, -0.863814, 0.220923,
		-0.207582, -0.138840, -0.968315,
		0.867116, -0.484302, -0.116447,
		26.342733, 23.680195, 35.678925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545078, 23.522156, 35.369003>,  <25.735750, 24.019207, 35.760437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545078, 23.522156, 35.369003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882366, 23.388988, 35.537834>,  <26.084740, 23.309088, 35.639133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882366, 23.388988, 35.537834>,  <25.545078, 23.522156, 35.369003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882366, 23.388988, 35.537834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496908, -0.782260, 0.375703,
		0.205095, -0.526532, -0.825045,
		0.843219, -0.332917, 0.422076,
		26.135332, 23.289114, 35.664455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536867, 22.803707, 35.262985>,  <25.545078, 23.522156, 35.369003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536867, 22.803707, 35.262985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789833, 22.866821, 35.566341>,  <25.941612, 22.904690, 35.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789833, 22.866821, 35.566341>,  <25.536867, 22.803707, 35.262985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789833, 22.866821, 35.566341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413446, -0.759168, 0.502719,
		0.655067, -0.631480, -0.414873,
		0.632415, 0.157787, 0.758389,
		25.979557, 22.914158, 35.793858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158579, 22.255136, 34.890350>,  <25.536867, 22.803707, 35.262985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158579, 22.255136, 34.890350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775808, 22.335896, 34.806896>,  <24.546146, 22.384350, 34.756824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775808, 22.335896, 34.806896>,  <25.158579, 22.255136, 34.890350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775808, 22.335896, 34.806896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284088, 0.502935, -0.816303,
		-0.059878, -0.840413, -0.538628,
		-0.956927, 0.201896, -0.208637,
		24.488729, 22.396465, 34.744305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078535, 22.131449, 34.175720>,  <25.158579, 22.255136, 34.890350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078535, 22.131449, 34.175720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785503, 22.381496, 34.283463>,  <24.609684, 22.531525, 34.348110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785503, 22.381496, 34.283463>,  <25.078535, 22.131449, 34.175720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785503, 22.381496, 34.283463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125158, 0.512675, -0.849411,
		-0.669078, -0.588548, -0.453814,
		-0.732578, 0.625121, 0.269358,
		24.565729, 22.569033, 34.364269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865034, 22.373346, 33.555817>,  <25.078535, 22.131449, 34.175720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865034, 22.373346, 33.555817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662384, 22.616566, 33.800308>,  <24.540794, 22.762497, 33.947002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662384, 22.616566, 33.800308>,  <24.865034, 22.373346, 33.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662384, 22.616566, 33.800308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174723, 0.766649, -0.617835,
		-0.844276, -0.206215, -0.494644,
		-0.506626, 0.608049, 0.611234,
		24.510397, 22.798981, 33.983677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414068, 22.744326, 33.107128>,  <24.865034, 22.373346, 33.555817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414068, 22.744326, 33.107128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434464, 22.963268, 33.441265>,  <24.446701, 23.094635, 33.641747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434464, 22.963268, 33.441265>,  <24.414068, 22.744326, 33.107128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434464, 22.963268, 33.441265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291491, 0.791855, -0.536655,
		-0.955214, 0.270859, -0.119174,
		0.050990, 0.547359, 0.835343,
		24.449760, 23.127476, 33.691868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052248, 23.295874, 32.973145>,  <24.414068, 22.744326, 33.107128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052248, 23.295874, 32.973145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309706, 23.396236, 33.262356>,  <24.464180, 23.456455, 33.435883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309706, 23.396236, 33.262356>,  <24.052248, 23.295874, 32.973145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309706, 23.396236, 33.262356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366299, 0.728499, -0.578890,
		-0.671973, 0.637443, 0.376986,
		0.643644, 0.250909, 0.723027,
		24.502798, 23.471510, 33.479263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915798, 23.990952, 33.030693>,  <24.052248, 23.295874, 32.973145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915798, 23.990952, 33.030693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270929, 23.922424, 33.201530>,  <24.484009, 23.881308, 33.304035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270929, 23.922424, 33.201530>,  <23.915798, 23.990952, 33.030693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270929, 23.922424, 33.201530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430787, 0.635784, -0.640469,
		-0.161818, 0.752614, 0.638268,
		0.887828, -0.171318, 0.427097,
		24.537277, 23.871029, 33.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250530, 24.631399, 33.092838>,  <23.915798, 23.990952, 33.030693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250530, 24.631399, 33.092838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546995, 24.367260, 33.141205>,  <24.724874, 24.208776, 33.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546995, 24.367260, 33.141205>,  <24.250530, 24.631399, 33.092838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546995, 24.367260, 33.141205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620312, 0.604776, -0.499458,
		0.256690, 0.445184, 0.857859,
		0.741163, -0.660346, 0.120912,
		24.769344, 24.169157, 33.177479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829369, 25.011938, 33.373444>,  <24.250530, 24.631399, 33.092838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829369, 25.011938, 33.373444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013128, 24.697308, 33.208397>,  <25.123384, 24.508530, 33.109371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013128, 24.697308, 33.208397>,  <24.829369, 25.011938, 33.373444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013128, 24.697308, 33.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720453, 0.601681, -0.344858,
		0.519519, -0.138842, 0.843103,
		0.459398, -0.786577, -0.412614,
		25.150948, 24.461334, 33.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594593, 25.019154, 33.524643>,  <24.829369, 25.011938, 33.373444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594593, 25.019154, 33.524643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581181, 24.766800, 33.214584>,  <25.573133, 24.615387, 33.028549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581181, 24.766800, 33.214584>,  <25.594593, 25.019154, 33.524643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581181, 24.766800, 33.214584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810217, 0.436947, -0.390674,
		0.585170, -0.641141, 0.496503,
		-0.033532, -0.630885, -0.775151,
		25.571121, 24.577534, 32.982040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275629, 24.904280, 33.410259>,  <25.594593, 25.019154, 33.524643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275629, 24.904280, 33.410259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078688, 24.790611, 33.081181>,  <25.960524, 24.722410, 32.883732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078688, 24.790611, 33.081181>,  <26.275629, 24.904280, 33.410259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078688, 24.790611, 33.081181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718464, 0.400862, -0.568436,
		0.491323, -0.870951, 0.006802,
		-0.492353, -0.284173, -0.822700,
		25.930983, 24.705360, 32.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692368, 24.493767, 32.993748>,  <26.275629, 24.904280, 33.410259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692368, 24.493767, 32.993748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418587, 24.677189, 32.767033>,  <26.254318, 24.787243, 32.631004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418587, 24.677189, 32.767033>,  <26.692368, 24.493767, 32.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418587, 24.677189, 32.767033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728795, 0.409425, -0.548843,
		-0.019618, -0.788731, -0.614425,
		-0.684451, 0.458557, -0.566791,
		26.213251, 24.814756, 32.596996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017025, 24.568798, 32.323635>,  <26.692368, 24.493767, 32.993748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017025, 24.568798, 32.323635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697241, 24.800713, 32.260754>,  <26.505371, 24.939861, 32.223026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697241, 24.800713, 32.260754>,  <27.017025, 24.568798, 32.323635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697241, 24.800713, 32.260754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461768, 0.425740, -0.778148,
		-0.384233, -0.694689, -0.608089,
		-0.799459, 0.579787, -0.157202,
		26.457403, 24.974649, 32.213593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023846, 24.668146, 31.602877>,  <27.017025, 24.568798, 32.323635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023846, 24.668146, 31.602877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780060, 24.959908, 31.727150>,  <26.633789, 25.134964, 31.801714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780060, 24.959908, 31.727150>,  <27.023846, 24.668146, 31.602877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780060, 24.959908, 31.727150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271524, 0.560212, -0.782584,
		-0.744870, -0.392597, -0.539479,
		-0.609462, 0.729404, 0.310685,
		26.597221, 25.178728, 31.820356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691923, 24.853338, 31.033598>,  <27.023846, 24.668146, 31.602877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691923, 24.853338, 31.033598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653229, 25.178745, 31.262974>,  <26.630013, 25.373989, 31.400600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653229, 25.178745, 31.262974>,  <26.691923, 24.853338, 31.033598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653229, 25.178745, 31.262974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292563, 0.573932, -0.764859,
		-0.951341, 0.093780, -0.293523,
		-0.096734, 0.813515, 0.573442,
		26.624208, 25.422800, 31.435007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412539, 25.356529, 30.629190>,  <26.691923, 24.853338, 31.033598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412539, 25.356529, 30.629190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568672, 25.581882, 30.920460>,  <26.662354, 25.717094, 31.095221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568672, 25.581882, 30.920460>,  <26.412539, 25.356529, 30.629190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568672, 25.581882, 30.920460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320306, 0.658407, -0.681105,
		-0.863158, 0.499098, 0.076544,
		0.390335, 0.563384, 0.728174,
		26.685772, 25.750898, 31.138912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298445, 25.972715, 30.376904>,  <26.412539, 25.356529, 30.629190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298445, 25.972715, 30.376904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548040, 26.085907, 30.668262>,  <26.697798, 26.153822, 30.843079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548040, 26.085907, 30.668262>,  <26.298445, 25.972715, 30.376904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548040, 26.085907, 30.668262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245908, 0.813665, -0.526762,
		-0.741734, 0.507811, 0.438130,
		0.623987, 0.282978, 0.728398,
		26.735237, 26.170801, 30.886782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190037, 26.639486, 30.584646>,  <26.298445, 25.972715, 30.376904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190037, 26.639486, 30.584646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568802, 26.567978, 30.691525>,  <26.796061, 26.525074, 30.755651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568802, 26.567978, 30.691525>,  <26.190037, 26.639486, 30.584646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568802, 26.567978, 30.691525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256589, 0.921002, -0.293116,
		-0.193689, 0.346116, 0.917981,
		0.946914, -0.178770, 0.267197,
		26.852877, 26.514347, 30.771683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393303, 27.258436, 30.816591>,  <26.190037, 26.639486, 30.584646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393303, 27.258436, 30.816591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736702, 27.068054, 30.740223>,  <26.942741, 26.953825, 30.694403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736702, 27.068054, 30.740223>,  <26.393303, 27.258436, 30.816591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736702, 27.068054, 30.740223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403246, 0.856539, -0.322078,
		0.316825, 0.199516, 0.927262,
		0.858496, -0.475957, -0.190919,
		26.994251, 26.925266, 30.682947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901367, 27.663536, 31.046921>,  <26.393303, 27.258436, 30.816591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901367, 27.663536, 31.046921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069235, 27.435390, 30.764484>,  <27.169956, 27.298504, 30.595022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069235, 27.435390, 30.764484>,  <26.901367, 27.663536, 31.046921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069235, 27.435390, 30.764484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303082, 0.821317, -0.483301,
		0.855581, -0.011177, 0.517548,
		0.419669, -0.570363, -0.706091,
		27.195135, 27.264282, 30.552656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610847, 27.918531, 30.924685>,  <26.901367, 27.663536, 31.046921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610847, 27.918531, 30.924685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533453, 27.695629, 30.601692>,  <27.487017, 27.561888, 30.407896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533453, 27.695629, 30.601692>,  <27.610847, 27.918531, 30.924685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533453, 27.695629, 30.601692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263861, 0.763156, -0.589890,
		0.944955, -0.327199, -0.000623,
		-0.193487, -0.557256, -0.807483,
		27.475407, 27.528452, 30.359447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147501, 27.950514, 30.407394>,  <27.610847, 27.918531, 30.924685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147501, 27.950514, 30.407394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841537, 27.845325, 30.172188>,  <27.657959, 27.782213, 30.031063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841537, 27.845325, 30.172188>,  <28.147501, 27.950514, 30.407394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841537, 27.845325, 30.172188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303894, 0.657566, -0.689388,
		0.567946, -0.706013, -0.423064,
		-0.764909, -0.262969, -0.588015,
		27.612064, 27.766434, 29.995783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326611, 28.175821, 29.804899>,  <28.147501, 27.950514, 30.407394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326611, 28.175821, 29.804899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932934, 28.132969, 29.748489>,  <27.696728, 28.107258, 29.714643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932934, 28.132969, 29.748489>,  <28.326611, 28.175821, 29.804899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932934, 28.132969, 29.748489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020559, 0.721794, -0.691803,
		0.175902, -0.683767, -0.708182,
		-0.984193, -0.107130, -0.141023,
		27.637676, 28.100830, 29.706182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197130, 28.190395, 28.993959>,  <28.326611, 28.175821, 29.804899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197130, 28.190395, 28.993959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862078, 28.298782, 29.183674>,  <27.661045, 28.363813, 29.297503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862078, 28.298782, 29.183674>,  <28.197130, 28.190395, 28.993959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862078, 28.298782, 29.183674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033479, 0.841188, -0.539705,
		-0.545207, -0.467953, -0.695535,
		-0.837633, 0.270965, 0.474288,
		27.610788, 28.380072, 29.325960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820543, 28.469078, 28.498999>,  <28.197130, 28.190395, 28.993959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820543, 28.469078, 28.498999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619915, 28.603596, 28.817829>,  <27.499538, 28.684307, 29.009129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619915, 28.603596, 28.817829>,  <27.820543, 28.469078, 28.498999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619915, 28.603596, 28.817829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227139, 0.837838, -0.496423,
		-0.834767, -0.430038, -0.343848,
		-0.501570, 0.336296, 0.797078,
		27.469444, 28.704485, 29.056952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334742, 28.807482, 28.135841>,  <27.820543, 28.469078, 28.498999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334742, 28.807482, 28.135841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338001, 28.935814, 28.514683>,  <27.339956, 29.012814, 28.741987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338001, 28.935814, 28.514683>,  <27.334742, 28.807482, 28.135841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338001, 28.935814, 28.514683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295294, 0.905667, -0.304252,
		-0.955372, -0.277195, 0.102119,
		0.008149, 0.320829, 0.947102,
		27.340446, 29.032063, 28.798813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681684, 29.159124, 28.210646>,  <27.334742, 28.807482, 28.135841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681684, 29.159124, 28.210646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944538, 29.296021, 28.479286>,  <27.102249, 29.378159, 28.640471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944538, 29.296021, 28.479286>,  <26.681684, 29.159124, 28.210646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944538, 29.296021, 28.479286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155093, 0.933310, -0.323851,
		-0.737647, 0.108652, 0.666387,
		0.657133, 0.342240, 0.671601,
		27.141678, 29.398693, 28.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321938, 29.601946, 28.623198>,  <26.681684, 29.159124, 28.210646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321938, 29.601946, 28.623198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711714, 29.683895, 28.586327>,  <26.945580, 29.733065, 28.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711714, 29.683895, 28.586327>,  <26.321938, 29.601946, 28.623198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711714, 29.683895, 28.586327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223879, 0.851485, -0.474185,
		-0.018662, 0.482700, 0.875587,
		0.974438, 0.204875, -0.092176,
		27.004045, 29.745358, 28.558674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348957, 30.297312, 28.849720>,  <26.321938, 29.601946, 28.623198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348957, 30.297312, 28.849720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673994, 30.214138, 28.631927>,  <26.869017, 30.164234, 28.501251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673994, 30.214138, 28.631927>,  <26.348957, 30.297312, 28.849720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673994, 30.214138, 28.631927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168161, 0.810824, -0.560613,
		0.558047, 0.547110, 0.623902,
		0.812591, -0.207932, -0.544481,
		26.917772, 30.151758, 28.468584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696108, 30.853376, 28.882975>,  <26.348957, 30.297312, 28.849720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696108, 30.853376, 28.882975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885263, 30.676563, 28.578087>,  <26.998756, 30.570475, 28.395153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885263, 30.676563, 28.578087>,  <26.696108, 30.853376, 28.882975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885263, 30.676563, 28.578087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103352, 0.831260, -0.546191,
		0.875039, 0.337066, 0.347411,
		0.472891, -0.442033, -0.762221,
		27.027130, 30.543953, 28.349421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302013, 31.271360, 28.666691>,  <26.696108, 30.853376, 28.882975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302013, 31.271360, 28.666691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216778, 31.052685, 28.342785>,  <27.165636, 30.921478, 28.148441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216778, 31.052685, 28.342785>,  <27.302013, 31.271360, 28.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216778, 31.052685, 28.342785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125351, 0.806656, -0.577576,
		0.968958, -0.224581, -0.103362,
		-0.213090, -0.546690, -0.809767,
		27.152851, 30.888678, 28.099855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657122, 31.595392, 28.039705>,  <27.302013, 31.271360, 28.666691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657122, 31.595392, 28.039705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364197, 31.363010, 27.897602>,  <27.188442, 31.223581, 27.812340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364197, 31.363010, 27.897602>,  <27.657122, 31.595392, 28.039705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364197, 31.363010, 27.897602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195533, 0.679120, -0.707505,
		0.652289, -0.448652, -0.610926,
		-0.732315, -0.580954, -0.355256,
		27.144503, 31.188725, 27.791025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796227, 31.725105, 27.398726>,  <27.657122, 31.595392, 28.039705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796227, 31.725105, 27.398726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427231, 31.575172, 27.435623>,  <27.205833, 31.485212, 27.457762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427231, 31.575172, 27.435623>,  <27.796227, 31.725105, 27.398726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427231, 31.575172, 27.435623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352039, 0.718882, -0.599397,
		0.158360, -0.585413, -0.795119,
		-0.922491, -0.374833, 0.092246,
		27.150484, 31.462723, 27.463297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463390, 31.805592, 26.683575>,  <27.796227, 31.725105, 27.398726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463390, 31.805592, 26.683575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179588, 31.738941, 26.957462>,  <27.009308, 31.698950, 27.121794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179588, 31.738941, 26.957462>,  <27.463390, 31.805592, 26.683575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179588, 31.738941, 26.957462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557958, 0.726334, -0.401400,
		-0.430450, -0.666838, -0.608309,
		-0.709504, -0.166628, 0.684718,
		26.966738, 31.688953, 27.162878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924358, 31.714474, 26.287880>,  <27.463390, 31.805592, 26.683575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924358, 31.714474, 26.287880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778446, 31.831856, 26.641335>,  <26.690899, 31.902285, 26.853407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778446, 31.831856, 26.641335>,  <26.924358, 31.714474, 26.287880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778446, 31.831856, 26.641335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566236, 0.683452, -0.460727,
		-0.739128, -0.668413, -0.083146,
		-0.364783, 0.293456, 0.883639,
		26.669012, 31.919893, 26.906425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189852, 31.701065, 26.283457>,  <26.924358, 31.714474, 26.287880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189852, 31.701065, 26.283457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265057, 31.925217, 26.606102>,  <26.310179, 32.059708, 26.799688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265057, 31.925217, 26.606102>,  <26.189852, 31.701065, 26.283457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265057, 31.925217, 26.606102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568457, 0.731811, -0.375913,
		-0.800942, -0.387848, 0.456142,
		0.188012, 0.560381, 0.806613,
		26.321461, 32.093330, 26.848085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614859, 32.028091, 26.390377>,  <26.189852, 31.701065, 26.283457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614859, 32.028091, 26.390377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884407, 32.258221, 26.575806>,  <26.046137, 32.396297, 26.687063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884407, 32.258221, 26.575806>,  <25.614859, 32.028091, 26.390377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884407, 32.258221, 26.575806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543739, 0.810968, -0.216054,
		-0.500244, -0.106471, 0.859314,
		0.673872, 0.575322, 0.463574,
		26.086569, 32.430817, 26.714878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216082, 32.554798, 26.648914>,  <25.614859, 32.028091, 26.390377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216082, 32.554798, 26.648914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591982, 32.691471, 26.644436>,  <25.817522, 32.773476, 26.641748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591982, 32.691471, 26.644436>,  <25.216082, 32.554798, 26.648914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591982, 32.691471, 26.644436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329251, 0.895784, -0.298604,
		-0.092000, 0.284299, 0.954311,
		0.939750, 0.341679, -0.011194,
		25.873907, 32.793976, 26.641077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149687, 33.134037, 27.029638>,  <25.216082, 32.554798, 26.648914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149687, 33.134037, 27.029638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482832, 33.151409, 26.808929>,  <25.682718, 33.161831, 26.676504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482832, 33.151409, 26.808929>,  <25.149687, 33.134037, 27.029638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482832, 33.151409, 26.808929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351007, 0.812243, -0.465892,
		0.427940, 0.581700, 0.691731,
		0.832863, 0.043428, -0.551772,
		25.732691, 33.164436, 26.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394640, 33.825863, 26.974075>,  <25.149687, 33.134037, 27.029638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394640, 33.825863, 26.974075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536297, 33.638020, 26.650581>,  <25.621290, 33.525314, 26.456486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536297, 33.638020, 26.650581>,  <25.394640, 33.825863, 26.974075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536297, 33.638020, 26.650581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287276, 0.768341, -0.571948,
		0.889975, 0.434881, 0.137195,
		0.354142, -0.469607, -0.808735,
		25.642540, 33.497139, 26.407961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942997, 34.246925, 26.564781>,  <25.394640, 33.825863, 26.974075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942997, 34.246925, 26.564781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750389, 34.001888, 26.314064>,  <25.634825, 33.854866, 26.163633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750389, 34.001888, 26.314064>,  <25.942997, 34.246925, 26.564781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750389, 34.001888, 26.314064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267521, 0.783763, -0.560488,
		0.834608, -0.102206, -0.541279,
		-0.481520, -0.612592, -0.626793,
		25.605932, 33.818111, 26.126026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646002, 34.692238, 26.075262>,  <25.942997, 34.246925, 26.564781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646002, 34.692238, 26.075262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525436, 34.344864, 25.917793>,  <25.453098, 34.136440, 25.823313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525436, 34.344864, 25.917793>,  <25.646002, 34.692238, 26.075262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525436, 34.344864, 25.917793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412132, 0.490971, -0.767525,
		0.859824, -0.069096, -0.505893,
		-0.301412, -0.868432, -0.393673,
		25.435013, 34.084335, 25.799692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714195, 34.565880, 25.334854>,  <25.646002, 34.692238, 26.075262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714195, 34.565880, 25.334854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378668, 34.383018, 25.453106>,  <25.177351, 34.273304, 25.524057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378668, 34.383018, 25.453106>,  <25.714195, 34.565880, 25.334854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378668, 34.383018, 25.453106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526589, 0.543497, -0.653694,
		0.138161, -0.704007, -0.696625,
		-0.838818, -0.457150, 0.295632,
		25.127022, 34.245872, 25.541796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262217, 34.393181, 24.767643>,  <25.714195, 34.565880, 25.334854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262217, 34.393181, 24.767643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017590, 34.381218, 25.083893>,  <24.870813, 34.374039, 25.273643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017590, 34.381218, 25.083893>,  <25.262217, 34.393181, 24.767643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017590, 34.381218, 25.083893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662546, 0.565558, -0.491098,
		-0.432456, -0.824166, -0.365695,
		-0.611568, -0.029911, 0.790626,
		24.834120, 34.372246, 25.321081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826712, 34.638241, 24.202353>,  <25.262217, 34.393181, 24.767643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826712, 34.638241, 24.202353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480215, 34.752472, 24.366337>,  <24.272316, 34.821011, 24.464727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480215, 34.752472, 24.366337>,  <24.826712, 34.638241, 24.202353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480215, 34.752472, 24.366337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357131, 0.219902, -0.907800,
		-0.349400, -0.932785, -0.088500,
		-0.866243, 0.285579, 0.409960,
		24.220343, 34.838146, 24.489325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338039, 34.237045, 23.895439>,  <24.826712, 34.638241, 24.202353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338039, 34.237045, 23.895439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156490, 34.566456, 24.031563>,  <24.047562, 34.764103, 24.113237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156490, 34.566456, 24.031563>,  <24.338039, 34.237045, 23.895439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156490, 34.566456, 24.031563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439650, 0.125226, -0.889397,
		-0.775054, -0.553290, 0.305225,
		-0.453872, 0.823523, 0.340311,
		24.020329, 34.813511, 24.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.636766, 34.089386, 24.055237>,  <24.338039, 34.237045, 23.895439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.636766, 34.089386, 24.055237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.729395, 34.457363, 23.928696>,  <23.784973, 34.678150, 23.852770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.729395, 34.457363, 23.928696>,  <23.636766, 34.089386, 24.055237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.729395, 34.457363, 23.928696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399575, -0.206551, -0.893127,
		-0.886969, 0.333232, 0.319754,
		0.231573, 0.919942, -0.316355,
		23.798866, 34.733345, 23.833790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.915726, 33.816944, 23.782265>,  <23.636766, 34.089386, 24.055237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.915726, 33.816944, 23.782265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688719, 33.834084, 23.453365>,  <22.552515, 33.844368, 23.256025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688719, 33.834084, 23.453365>,  <22.915726, 33.816944, 23.782265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688719, 33.834084, 23.453365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676188, 0.594048, -0.435748,
		0.469782, -0.803287, -0.366107,
		-0.567516, 0.042851, -0.822247,
		22.518463, 33.846939, 23.206692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225245, 33.397285, 23.223261>,  <22.915726, 33.816944, 23.782265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225245, 33.397285, 23.223261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.003395, 33.711399, 23.113194>,  <22.870285, 33.899868, 23.047153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.003395, 33.711399, 23.113194>,  <23.225245, 33.397285, 23.223261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.003395, 33.711399, 23.113194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776159, 0.369023, -0.511272,
		-0.299952, -0.497138, -0.814176,
		-0.554622, 0.785287, -0.275169,
		22.837008, 33.946987, 23.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158680, 33.346035, 22.520987>,  <23.225245, 33.397285, 23.223261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158680, 33.346035, 22.520987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085909, 33.720226, 22.642174>,  <23.042246, 33.944740, 22.714886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085909, 33.720226, 22.642174>,  <23.158680, 33.346035, 22.520987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085909, 33.720226, 22.642174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627818, 0.347639, -0.696414,
		-0.756801, 0.063512, -0.650552,
		-0.181926, 0.935475, 0.302967,
		23.031330, 34.000870, 22.733065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.888447, 33.864811, 21.970572>,  <23.158680, 33.346035, 22.520987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.888447, 33.864811, 21.970572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.026266, 34.135143, 22.231197>,  <23.108957, 34.297344, 22.387573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.026266, 34.135143, 22.231197>,  <22.888447, 33.864811, 21.970572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026266, 34.135143, 22.231197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563306, 0.406384, -0.719401,
		-0.750980, 0.614900, -0.240681,
		0.344551, 0.675833, 0.651563,
		23.129631, 34.337894, 22.426666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.903301, 34.498348, 21.665680>,  <22.888447, 33.864811, 21.970572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.903301, 34.498348, 21.665680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.160593, 34.559410, 21.965801>,  <23.314968, 34.596046, 22.145874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.160593, 34.559410, 21.965801>,  <22.903301, 34.498348, 21.665680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.160593, 34.559410, 21.965801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585061, 0.534142, -0.610243,
		-0.493924, 0.831498, 0.254263,
		0.643229, 0.152654, 0.750302,
		23.353561, 34.605206, 22.190891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.250904, 35.105087, 21.539429>,  <22.903301, 34.498348, 21.665680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.250904, 35.105087, 21.539429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510538, 34.958500, 21.806080>,  <23.666317, 34.870548, 21.966070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510538, 34.958500, 21.806080>,  <23.250904, 35.105087, 21.539429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.510538, 34.958500, 21.806080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752296, 0.439261, -0.491019,
		-0.112882, 0.820214, 0.560809,
		0.649083, -0.366467, 0.666628,
		23.705263, 34.848560, 22.006069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.673012, 35.694427, 21.816038>,  <23.250904, 35.105087, 21.539429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.673012, 35.694427, 21.816038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888840, 35.363838, 21.880291>,  <24.018337, 35.165485, 21.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888840, 35.363838, 21.880291>,  <23.673012, 35.694427, 21.816038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888840, 35.363838, 21.880291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767988, 0.404945, -0.496200,
		0.345049, 0.391099, 0.853219,
		0.539570, -0.826475, 0.160634,
		24.050711, 35.115894, 21.928482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422377, 35.848099, 21.967476>,  <23.673012, 35.694427, 21.816038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422377, 35.848099, 21.967476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435869, 35.463665, 21.857796>,  <24.443964, 35.233006, 21.791988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435869, 35.463665, 21.857796>,  <24.422377, 35.848099, 21.967476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435869, 35.463665, 21.857796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766822, 0.200843, -0.609628,
		0.640973, -0.189698, 0.743753,
		0.033732, -0.961081, -0.274199,
		24.445990, 35.175339, 21.775536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121277, 35.716488, 21.767500>,  <24.422377, 35.848099, 21.967476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121277, 35.716488, 21.767500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951056, 35.386471, 21.618793>,  <24.848923, 35.188461, 21.529570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951056, 35.386471, 21.618793>,  <25.121277, 35.716488, 21.767500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951056, 35.386471, 21.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641386, 0.014822, -0.767075,
		0.638379, -0.564878, 0.522863,
		-0.425553, -0.825042, -0.371767,
		24.823389, 35.138958, 21.507263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677378, 35.255104, 21.676628>,  <25.121277, 35.716488, 21.767500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677378, 35.255104, 21.676628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379902, 35.178421, 21.420448>,  <25.201416, 35.132412, 21.266741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379902, 35.178421, 21.420448>,  <25.677378, 35.255104, 21.676628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379902, 35.178421, 21.420448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654377, -0.012704, -0.756062,
		0.136804, -0.981371, 0.134895,
		-0.743690, -0.191704, -0.640448,
		25.156796, 35.120911, 21.228313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974407, 34.761909, 21.198519>,  <25.677378, 35.255104, 21.676628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974407, 34.761909, 21.198519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638573, 34.866508, 21.008060>,  <25.437073, 34.929268, 20.893785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638573, 34.866508, 21.008060>,  <25.974407, 34.761909, 21.198519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638573, 34.866508, 21.008060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457216, -0.133153, -0.879331,
		-0.293348, -0.955974, -0.007771,
		-0.839583, 0.261503, -0.476147,
		25.386698, 34.944958, 20.865217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774918, 34.191395, 20.781281>,  <25.974407, 34.761909, 21.198519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774918, 34.191395, 20.781281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585018, 34.505005, 20.621319>,  <25.471079, 34.693169, 20.525341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585018, 34.505005, 20.621319>,  <25.774918, 34.191395, 20.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585018, 34.505005, 20.621319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274964, -0.299507, -0.913613,
		-0.836068, -0.543695, -0.073387,
		-0.474747, 0.784022, -0.399905,
		25.442595, 34.740211, 20.501347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406254, 33.882393, 20.204134>,  <25.774918, 34.191395, 20.781281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406254, 33.882393, 20.204134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451939, 34.277203, 20.158978>,  <25.479349, 34.514088, 20.131884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451939, 34.277203, 20.158978>,  <25.406254, 33.882393, 20.204134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451939, 34.277203, 20.158978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396887, -0.149503, -0.905610,
		-0.910734, 0.058626, -0.408811,
		0.114211, 0.987022, -0.112890,
		25.486202, 34.573311, 20.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207994, 33.980289, 19.569071>,  <25.406254, 33.882393, 20.204134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207994, 33.980289, 19.569071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379341, 34.341011, 19.591896>,  <25.482149, 34.557442, 19.605591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379341, 34.341011, 19.591896>,  <25.207994, 33.980289, 19.569071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379341, 34.341011, 19.591896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366447, -0.115648, -0.923224,
		-0.825966, 0.416389, -0.380002,
		0.428366, 0.901802, 0.057063,
		25.507851, 34.611553, 19.609015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119217, 34.331333, 18.912218>,  <25.207994, 33.980289, 19.569071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119217, 34.331333, 18.912218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443781, 34.511276, 19.061478>,  <25.638519, 34.619244, 19.151033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443781, 34.511276, 19.061478>,  <25.119217, 34.331333, 18.912218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443781, 34.511276, 19.061478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419964, -0.004716, -0.907529,
		-0.406499, 0.893088, -0.192750,
		0.811412, 0.449857, 0.373148,
		25.687204, 34.646233, 19.173422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304747, 34.774876, 18.398905>,  <25.119217, 34.331333, 18.912218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304747, 34.774876, 18.398905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621456, 34.746548, 18.641582>,  <25.811481, 34.729549, 18.787189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621456, 34.746548, 18.641582>,  <25.304747, 34.774876, 18.398905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621456, 34.746548, 18.641582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610257, 0.049377, -0.790663,
		0.026039, 0.996266, 0.082315,
		0.791775, -0.070822, 0.606693,
		25.858988, 34.725300, 18.823591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836096, 35.279221, 18.200842>,  <25.304747, 34.774876, 18.398905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836096, 35.279221, 18.200842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011597, 34.976311, 18.394348>,  <26.116898, 34.794563, 18.510452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011597, 34.976311, 18.394348>,  <25.836096, 35.279221, 18.200842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011597, 34.976311, 18.394348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547744, -0.201396, -0.812044,
		0.712370, 0.621267, 0.326430,
		0.438754, -0.757276, 0.483764,
		26.143223, 34.749126, 18.539478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456488, 35.361370, 17.947802>,  <25.836096, 35.279221, 18.200842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456488, 35.361370, 17.947802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446262, 34.992149, 18.101334>,  <26.440126, 34.770618, 18.193453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446262, 34.992149, 18.101334>,  <26.456488, 35.361370, 17.947802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446262, 34.992149, 18.101334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540829, -0.335685, -0.771246,
		0.840744, 0.187870, 0.507793,
		-0.025564, -0.923049, 0.383831,
		26.438593, 34.715233, 18.216482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164282, 35.041405, 17.999506>,  <26.456488, 35.361370, 17.947802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164282, 35.041405, 17.999506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897537, 34.745090, 17.967178>,  <26.737492, 34.567303, 17.947783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897537, 34.745090, 17.967178>,  <27.164282, 35.041405, 17.999506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897537, 34.745090, 17.967178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513134, -0.377847, -0.770666,
		0.540362, -0.555397, 0.632094,
		-0.666860, -0.740787, -0.080819,
		26.697479, 34.522854, 17.942932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643160, 34.558311, 17.790087>,  <27.164282, 35.041405, 17.999506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643160, 34.558311, 17.790087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268068, 34.430897, 17.734661>,  <27.043015, 34.354446, 17.701405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268068, 34.430897, 17.734661>,  <27.643160, 34.558311, 17.790087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268068, 34.430897, 17.734661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299729, -0.540324, -0.786265,
		0.175587, -0.778833, 0.602153,
		-0.937727, -0.318541, -0.138565,
		26.986750, 34.335335, 17.693092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729179, 33.865871, 17.824728>,  <27.643160, 34.558311, 17.790087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729179, 33.865871, 17.824728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403397, 33.969822, 17.617222>,  <27.207926, 34.032192, 17.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403397, 33.969822, 17.617222>,  <27.729179, 33.865871, 17.824728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403397, 33.969822, 17.617222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291387, -0.589965, -0.753017,
		-0.501746, -0.764464, 0.404778,
		-0.814460, 0.259876, -0.518767,
		27.159060, 34.047787, 17.461592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697641, 33.326351, 17.349752>,  <27.729179, 33.865871, 17.824728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697641, 33.326351, 17.349752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436049, 33.594555, 17.209625>,  <27.279093, 33.755478, 17.125549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436049, 33.594555, 17.209625>,  <27.697641, 33.326351, 17.349752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436049, 33.594555, 17.209625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068615, -0.408592, -0.910134,
		-0.753391, -0.619250, 0.221205,
		-0.653983, 0.670509, -0.350320,
		27.239853, 33.795708, 17.104528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339167, 32.996899, 16.830519>,  <27.697641, 33.326351, 17.349752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339167, 32.996899, 16.830519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300671, 33.390564, 16.770966>,  <27.277573, 33.626762, 16.735233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300671, 33.390564, 16.770966>,  <27.339167, 32.996899, 16.830519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300671, 33.390564, 16.770966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058229, -0.143755, -0.987899,
		-0.993654, -0.103744, -0.043472,
		-0.096240, 0.984160, -0.148884,
		27.271799, 33.685814, 16.726301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799643, 33.179245, 16.211826>,  <27.339167, 32.996899, 16.830519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799643, 33.179245, 16.211826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047024, 33.489456, 16.262539>,  <27.195454, 33.675583, 16.292967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047024, 33.489456, 16.262539>,  <26.799643, 33.179245, 16.211826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047024, 33.489456, 16.262539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033742, 0.187395, -0.981705,
		-0.785096, 0.602861, 0.142063,
		0.618454, 0.775527, 0.126781,
		27.232559, 33.722115, 16.300573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498442, 33.763096, 15.925424>,  <26.799643, 33.179245, 16.211826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498442, 33.763096, 15.925424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897518, 33.771889, 15.899716>,  <27.136965, 33.777164, 15.884293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897518, 33.771889, 15.899716>,  <26.498442, 33.763096, 15.925424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897518, 33.771889, 15.899716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064978, 0.033315, -0.997330,
		-0.019787, 0.999203, 0.034667,
		0.997690, 0.021987, -0.064267,
		27.196825, 33.778484, 15.880436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642097, 34.329208, 15.604217>,  <26.498442, 33.763096, 15.925424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642097, 34.329208, 15.604217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953655, 34.083515, 15.553554>,  <27.140589, 33.936100, 15.523155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953655, 34.083515, 15.553554>,  <26.642097, 34.329208, 15.604217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953655, 34.083515, 15.553554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108187, 0.067336, -0.991848,
		0.617755, 0.786246, -0.014004,
		0.778893, -0.614234, -0.126659,
		27.187323, 33.899246, 15.515556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975309, 34.981503, 16.047203>,  <26.642097, 34.329208, 15.604217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975309, 34.981503, 16.047203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990791, 35.339794, 16.224369>,  <27.000080, 35.554768, 16.330667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990791, 35.339794, 16.224369>,  <26.975309, 34.981503, 16.047203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990791, 35.339794, 16.224369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022537, 0.443915, -0.895785,
		-0.998996, 0.024690, 0.037369,
		0.038705, 0.895728, 0.442914,
		27.002403, 35.608513, 16.357243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492855, 35.382404, 15.723378>,  <26.975309, 34.981503, 16.047203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492855, 35.382404, 15.723378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778059, 35.617447, 15.876390>,  <26.949183, 35.758472, 15.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778059, 35.617447, 15.876390>,  <26.492855, 35.382404, 15.723378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778059, 35.617447, 15.876390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107406, 0.447598, -0.887761,
		-0.692876, 0.674070, 0.256030,
		0.713012, 0.587610, 0.382529,
		26.991962, 35.793732, 15.991148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369539, 36.118614, 15.961467>,  <26.492855, 35.382404, 15.723378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369539, 36.118614, 15.961467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240812, 36.368923, 15.677257>,  <26.163576, 36.519108, 15.506730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240812, 36.368923, 15.677257>,  <26.369539, 36.118614, 15.961467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240812, 36.368923, 15.677257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509361, 0.518168, 0.687061,
		0.798113, 0.583023, 0.151986,
		-0.321819, 0.625768, -0.710526,
		26.144266, 36.556652, 15.464099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535484, 36.920063, 16.151779>,  <26.369539, 36.118614, 15.961467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535484, 36.920063, 16.151779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209307, 36.876183, 15.924441>,  <26.013601, 36.849854, 15.788038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209307, 36.876183, 15.924441>,  <26.535484, 36.920063, 16.151779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209307, 36.876183, 15.924441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570713, 0.316311, 0.757783,
		0.096644, 0.942291, -0.320542,
		-0.815443, -0.109702, -0.568347,
		25.964674, 36.843273, 15.753938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059559, 37.231903, 16.552658>,  <26.535484, 36.920063, 16.151779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059559, 37.231903, 16.552658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847126, 37.074848, 16.252316>,  <25.719666, 36.980614, 16.072109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847126, 37.074848, 16.252316>,  <26.059559, 37.231903, 16.552658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847126, 37.074848, 16.252316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813070, -0.013254, 0.582015,
		-0.238473, 0.919598, -0.312202,
		-0.531082, -0.392637, -0.750858,
		25.687801, 36.957058, 16.027058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494835, 37.667358, 16.227005>,  <26.059559, 37.231903, 16.552658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494835, 37.667358, 16.227005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448797, 37.274101, 16.283829>,  <25.421175, 37.038147, 16.317923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448797, 37.274101, 16.283829>,  <25.494835, 37.667358, 16.227005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448797, 37.274101, 16.283829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747388, 0.179910, 0.639565,
		-0.654343, -0.032562, -0.755497,
		-0.115096, -0.983144, 0.142059,
		25.414268, 36.979156, 16.326447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767120, 37.524330, 16.114548>,  <25.494835, 37.667358, 16.227005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767120, 37.524330, 16.114548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920914, 37.247063, 16.358414>,  <25.013189, 37.080704, 16.504732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920914, 37.247063, 16.358414>,  <24.767120, 37.524330, 16.114548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920914, 37.247063, 16.358414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714967, 0.194168, 0.671656,
		-0.583948, -0.694129, -0.420939,
		0.384483, -0.693169, 0.609663,
		25.036259, 37.039112, 16.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176939, 37.143879, 16.436617>,  <24.767120, 37.524330, 16.114548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176939, 37.143879, 16.436617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481298, 37.076675, 16.687313>,  <24.663914, 37.036354, 16.837730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481298, 37.076675, 16.687313>,  <24.176939, 37.143879, 16.436617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481298, 37.076675, 16.687313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605557, 0.163109, 0.778907,
		-0.233093, -0.972197, 0.022369,
		0.760900, -0.168012, 0.626741,
		24.709568, 37.026272, 16.875336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915091, 36.692333, 16.868021>,  <24.176939, 37.143879, 16.436617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915091, 36.692333, 16.868021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221197, 36.848537, 17.072712>,  <24.404861, 36.942261, 17.195526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221197, 36.848537, 17.072712>,  <23.915091, 36.692333, 16.868021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221197, 36.848537, 17.072712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512362, -0.111723, 0.851471,
		0.389680, -0.913794, 0.114584,
		0.765268, 0.390510, 0.511730,
		24.450777, 36.965691, 17.226231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.008907, 36.333313, 17.527834>,  <23.915091, 36.692333, 16.868021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.008907, 36.333313, 17.527834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155581, 36.702587, 17.573906>,  <24.243584, 36.924152, 17.601549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155581, 36.702587, 17.573906>,  <24.008907, 36.333313, 17.527834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.155581, 36.702587, 17.573906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324881, 0.011054, 0.945690,
		0.871777, -0.384189, 0.303980,
		0.366684, 0.923189, 0.115179,
		24.265585, 36.979546, 17.608459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299072, 36.365131, 18.110994>,  <24.008907, 36.333313, 17.527834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299072, 36.365131, 18.110994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280489, 36.763744, 18.083389>,  <24.269339, 37.002911, 18.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280489, 36.763744, 18.083389>,  <24.299072, 36.365131, 18.110994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280489, 36.763744, 18.083389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364812, 0.047390, 0.929874,
		0.929921, 0.068380, 0.361346,
		-0.046461, 0.996533, -0.069015,
		24.266550, 37.062706, 18.062685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653330, 36.625584, 18.681513>,  <24.299072, 36.365131, 18.110994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653330, 36.625584, 18.681513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394169, 36.900986, 18.551170>,  <24.238672, 37.066227, 18.472965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394169, 36.900986, 18.551170>,  <24.653330, 36.625584, 18.681513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394169, 36.900986, 18.551170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268846, 0.193565, 0.943533,
		0.712703, 0.698922, 0.059691,
		-0.647901, 0.688506, -0.325857,
		24.199799, 37.107536, 18.453413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584623, 36.909416, 19.196678>,  <24.653330, 36.625584, 18.681513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584623, 36.909416, 19.196678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291256, 37.092899, 18.996006>,  <24.115236, 37.202991, 18.875603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291256, 37.092899, 18.996006>,  <24.584623, 36.909416, 19.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291256, 37.092899, 18.996006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497658, 0.140425, 0.855931,
		0.463073, 0.877420, 0.125291,
		-0.733417, 0.458711, -0.501682,
		24.071232, 37.230511, 18.845501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.390347, 37.391769, 19.667179>,  <24.584623, 36.909416, 19.196678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.390347, 37.391769, 19.667179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066294, 37.357555, 19.435188>,  <23.871862, 37.337029, 19.295994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066294, 37.357555, 19.435188>,  <24.390347, 37.391769, 19.667179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.066294, 37.357555, 19.435188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585751, 0.077353, 0.806791,
		-0.024143, 0.993328, -0.112765,
		-0.810132, -0.085531, -0.579975,
		23.823254, 37.331898, 19.261196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956364, 37.809891, 19.947853>,  <24.390347, 37.391769, 19.667179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956364, 37.809891, 19.947853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740110, 37.549393, 19.734837>,  <23.610359, 37.393093, 19.607027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740110, 37.549393, 19.734837>,  <23.956364, 37.809891, 19.947853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740110, 37.549393, 19.734837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688302, -0.021543, 0.725104,
		-0.483691, 0.758564, -0.436604,
		-0.540632, -0.651242, -0.532541,
		23.577921, 37.354019, 19.575073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262720, 37.994125, 20.071678>,  <23.956364, 37.809891, 19.947853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262720, 37.994125, 20.071678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231104, 37.627647, 19.914536>,  <23.212135, 37.407761, 19.820250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231104, 37.627647, 19.914536>,  <23.262720, 37.994125, 20.071678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231104, 37.627647, 19.914536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745126, -0.207496, 0.633824,
		-0.662224, 0.342823, -0.666282,
		-0.079038, -0.916197, -0.392856,
		23.207392, 37.352787, 19.796679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565519, 37.879704, 20.071781>,  <23.262720, 37.994125, 20.071678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565519, 37.879704, 20.071781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720798, 37.512783, 20.036316>,  <22.813967, 37.292629, 20.015036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720798, 37.512783, 20.036316>,  <22.565519, 37.879704, 20.071781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720798, 37.512783, 20.036316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604086, -0.325940, 0.727217,
		-0.695976, -0.228743, -0.680658,
		0.388199, -0.917301, -0.088666,
		22.837257, 37.237595, 20.009716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026175, 37.322929, 19.985310>,  <22.565519, 37.879704, 20.071781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026175, 37.322929, 19.985310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352953, 37.154888, 20.143353>,  <22.549021, 37.054062, 20.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352953, 37.154888, 20.143353>,  <22.026175, 37.322929, 19.985310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352953, 37.154888, 20.143353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509753, -0.205596, 0.835393,
		-0.269727, -0.883875, -0.382114,
		0.816945, -0.420112, 0.395103,
		22.598038, 37.028854, 20.261885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739576, 36.825962, 20.319477>,  <22.026175, 37.322929, 19.985310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739576, 36.825962, 20.319477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096548, 36.818275, 20.499790>,  <22.310730, 36.813663, 20.607977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096548, 36.818275, 20.499790>,  <21.739576, 36.825962, 20.319477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096548, 36.818275, 20.499790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447245, -0.169513, 0.878201,
		0.059538, -0.985341, -0.159872,
		0.892427, -0.019215, 0.450781,
		22.364277, 36.812511, 20.635025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665226, 36.321930, 20.841503>,  <21.739576, 36.825962, 20.319477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665226, 36.321930, 20.841503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984013, 36.533459, 20.958252>,  <22.175285, 36.660378, 21.028301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984013, 36.533459, 20.958252>,  <21.665226, 36.321930, 20.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984013, 36.533459, 20.958252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308718, -0.058708, 0.949340,
		0.519171, -0.846697, 0.116470,
		0.796966, 0.528826, 0.291871,
		22.223103, 36.692108, 21.045813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938589, 36.010212, 21.457932>,  <21.665226, 36.321930, 20.841503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938589, 36.010212, 21.457932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084253, 36.382099, 21.479881>,  <22.171652, 36.605232, 21.493052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084253, 36.382099, 21.479881>,  <21.938589, 36.010212, 21.457932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.084253, 36.382099, 21.479881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264590, 0.046787, 0.963225,
		0.892960, -0.365289, 0.263032,
		0.364162, 0.929718, 0.054873,
		22.193502, 36.661015, 21.496344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.534382, 35.946365, 21.886572>,  <21.938589, 36.010212, 21.457932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.534382, 35.946365, 21.886572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425329, 36.331203, 21.884102>,  <22.359898, 36.562107, 21.882620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425329, 36.331203, 21.884102>,  <22.534382, 35.946365, 21.886572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.425329, 36.331203, 21.884102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390502, -0.104785, 0.914619,
		0.879307, 0.251764, 0.404269,
		-0.272630, 0.962099, -0.006176,
		22.343540, 36.619835, 21.882250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.862043, 36.269909, 22.508219>,  <22.534382, 35.946365, 21.886572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.862043, 36.269909, 22.508219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561897, 36.514500, 22.407780>,  <22.381809, 36.661255, 22.347517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561897, 36.514500, 22.407780>,  <22.862043, 36.269909, 22.508219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561897, 36.514500, 22.407780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361689, -0.061845, 0.930245,
		0.553292, 0.788844, 0.267570,
		-0.750366, 0.611474, -0.251098,
		22.336788, 36.697941, 22.332451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935091, 36.783684, 22.950569>,  <22.862043, 36.269909, 22.508219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935091, 36.783684, 22.950569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557962, 36.765205, 22.818535>,  <22.331686, 36.754120, 22.739315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557962, 36.765205, 22.818535>,  <22.935091, 36.783684, 22.950569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557962, 36.765205, 22.818535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323577, -0.110607, 0.939715,
		-0.079920, 0.992790, 0.089335,
		-0.942821, -0.046196, -0.330083,
		22.275116, 36.751347, 22.719509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510931, 37.118900, 23.490917>,  <22.935091, 36.783684, 22.950569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510931, 37.118900, 23.490917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221388, 36.946140, 23.275700>,  <22.047661, 36.842484, 23.146568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221388, 36.946140, 23.275700>,  <22.510931, 37.118900, 23.490917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221388, 36.946140, 23.275700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578534, -0.044960, 0.814418,
		-0.375934, 0.900802, -0.217322,
		-0.723859, -0.431896, -0.538046,
		22.004230, 36.816570, 23.114286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.847738, 37.388065, 23.745756>,  <22.510931, 37.118900, 23.490917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.847738, 37.388065, 23.745756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793571, 37.035645, 23.564468>,  <21.761072, 36.824192, 23.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793571, 37.035645, 23.564468>,  <21.847738, 37.388065, 23.745756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793571, 37.035645, 23.564468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429040, -0.360174, 0.828371,
		-0.893077, 0.306624, -0.329234,
		-0.135416, -0.881054, -0.453218,
		21.752947, 36.771328, 23.428503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131378, 37.134655, 23.748869>,  <21.847738, 37.388065, 23.745756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131378, 37.134655, 23.748869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346746, 36.797585, 23.747978>,  <21.475967, 36.595345, 23.747444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346746, 36.797585, 23.747978>,  <21.131378, 37.134655, 23.748869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.346746, 36.797585, 23.747978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555062, -0.356639, 0.751475,
		-0.634044, -0.403371, -0.659758,
		0.538419, -0.842675, -0.002229,
		21.508272, 36.544781, 23.747309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716835, 36.522682, 23.531090>,  <21.131378, 37.134655, 23.748869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716835, 36.522682, 23.531090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014282, 36.390793, 23.763748>,  <21.192751, 36.311657, 23.903343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014282, 36.390793, 23.763748>,  <20.716835, 36.522682, 23.531090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014282, 36.390793, 23.763748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648583, -0.567038, 0.507748,
		0.162399, -0.754817, -0.635513,
		0.743617, -0.329726, 0.581648,
		21.237368, 36.291874, 23.938242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083008, 36.794117, 23.731228>,  <20.716835, 36.522682, 23.531090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.083008, 36.794117, 23.731228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836281, 37.108910, 23.725681>,  <19.688246, 37.297787, 23.722353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836281, 37.108910, 23.725681>,  <20.083008, 36.794117, 23.731228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.836281, 37.108910, 23.725681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592610, -0.475922, -0.649855,
		-0.518027, -0.392621, 0.759932,
		-0.616815, 0.786986, -0.013869,
		19.651236, 37.345005, 23.721521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437473, 36.720314, 24.060371>,  <20.083008, 36.794117, 23.731228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437473, 36.720314, 24.060371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420177, 36.977848, 23.754795>,  <19.409800, 37.132370, 23.571449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420177, 36.977848, 23.754795>,  <19.437473, 36.720314, 24.060371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420177, 36.977848, 23.754795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621830, -0.615831, -0.483818,
		-0.781958, 0.454119, 0.426987,
		-0.043240, 0.643839, -0.763939,
		19.407206, 37.171001, 23.525614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710041, 36.843330, 23.878551>,  <19.437473, 36.720314, 24.060371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710041, 36.843330, 23.878551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946072, 36.918633, 23.564514>,  <19.087690, 36.963814, 23.376091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946072, 36.918633, 23.564514>,  <18.710041, 36.843330, 23.878551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946072, 36.918633, 23.564514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589126, -0.564513, -0.578148,
		-0.552035, 0.803669, -0.222199,
		0.590075, 0.188255, -0.785094,
		19.123095, 36.975109, 23.328985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307964, 37.215427, 23.579285>,  <18.710041, 36.843330, 23.878551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307964, 37.215427, 23.579285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097561, 37.273834, 23.244144>,  <17.971319, 37.308880, 23.043060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097561, 37.273834, 23.244144>,  <18.307964, 37.215427, 23.579285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097561, 37.273834, 23.244144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630137, 0.594709, 0.499248,
		0.571178, 0.790569, -0.220809,
		-0.526007, 0.146019, -0.837851,
		17.939758, 37.317638, 22.992788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.045816, 24.382797, 28.841705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.439619, 24.372753, 28.911121>,  <28.675901, 24.366728, 28.952770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.439619, 24.372753, 28.911121>,  <28.045816, 24.382797, 28.841705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439619, 24.372753, 28.911121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110708, 0.856497, -0.504140,
		-0.135978, 0.515541, 0.846007,
		0.984507, -0.025108, 0.173539,
		28.734972, 24.365221, 28.963182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343191, 25.145393, 29.048994>,  <28.045816, 24.382797, 28.841705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343191, 25.145393, 29.048994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.653788, 24.927532, 28.922241>,  <28.840145, 24.796816, 28.846189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.653788, 24.927532, 28.922241>,  <28.343191, 25.145393, 29.048994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653788, 24.927532, 28.922241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349070, 0.790473, -0.503292,
		0.524606, 0.280188, 0.803917,
		0.776491, -0.544654, -0.316881,
		28.886736, 24.764135, 28.827177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809639, 25.600317, 29.116388>,  <28.343191, 25.145393, 29.048994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809639, 25.600317, 29.116388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.991234, 25.324997, 28.890064>,  <29.100191, 25.159805, 28.754271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.991234, 25.324997, 28.890064>,  <28.809639, 25.600317, 29.116388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991234, 25.324997, 28.890064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500507, 0.722366, -0.477159,
		0.737150, -0.066568, 0.672442,
		0.453985, -0.688300, -0.565810,
		29.127430, 25.118507, 28.720322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578091, 25.701458, 29.088873>,  <28.809639, 25.600317, 29.116388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578091, 25.701458, 29.088873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.504690, 25.500107, 28.751129>,  <29.460649, 25.379295, 28.548483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.504690, 25.500107, 28.751129>,  <29.578091, 25.701458, 29.088873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504690, 25.500107, 28.751129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600311, 0.622794, -0.501751,
		0.778431, -0.598948, 0.187900,
		-0.183500, -0.503377, -0.844357,
		29.449640, 25.349094, 28.497822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205587, 25.835541, 28.657438>,  <29.578091, 25.701458, 29.088873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205587, 25.835541, 28.657438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940300, 25.693615, 28.393848>,  <29.781128, 25.608459, 28.235695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940300, 25.693615, 28.393848>,  <30.205587, 25.835541, 28.657438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940300, 25.693615, 28.393848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305303, 0.675629, -0.671055,
		0.683334, -0.646237, -0.339752,
		-0.663208, -0.354828, -0.658979,
		29.741335, 25.587170, 28.196157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494650, 25.776226, 27.971027>,  <30.205587, 25.835541, 28.657438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494650, 25.776226, 27.971027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.106430, 25.774689, 27.874680>,  <29.873499, 25.773766, 27.816872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.106430, 25.774689, 27.874680>,  <30.494650, 25.776226, 27.971027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106430, 25.774689, 27.874680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171055, 0.693043, -0.700308,
		0.169625, -0.720886, -0.671975,
		-0.970550, -0.003845, -0.240868,
		29.815266, 25.773535, 27.802420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432869, 25.851139, 27.146206>,  <30.494650, 25.776226, 27.971027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432869, 25.851139, 27.146206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.072071, 25.943573, 27.292084>,  <29.855593, 25.999033, 27.379610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.072071, 25.943573, 27.292084>,  <30.432869, 25.851139, 27.146206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072071, 25.943573, 27.292084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002420, 0.841981, -0.539502,
		-0.431736, -0.487512, -0.758905,
		-0.901997, 0.231086, 0.364693,
		29.801472, 26.012899, 27.401491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016266, 26.081705, 26.554007>,  <30.432869, 25.851139, 27.146206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016266, 26.081705, 26.554007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841469, 26.233582, 26.880165>,  <29.736591, 26.324707, 27.075861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841469, 26.233582, 26.880165>,  <30.016266, 26.081705, 26.554007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841469, 26.233582, 26.880165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191484, 0.846483, -0.496790,
		-0.878846, -0.373229, -0.297202,
		-0.436993, 0.379692, 0.815396,
		29.710371, 26.347488, 27.124784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420113, 26.426191, 26.264786>,  <30.016266, 26.081705, 26.554007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420113, 26.426191, 26.264786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497360, 26.569420, 26.630188>,  <29.543709, 26.655357, 26.849428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497360, 26.569420, 26.630188>,  <29.420113, 26.426191, 26.264786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497360, 26.569420, 26.630188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247135, 0.918765, -0.307888,
		-0.949542, -0.166300, 0.265923,
		0.193119, 0.358071, 0.913504,
		29.555296, 26.676842, 26.904240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862734, 26.844484, 26.489243>,  <29.420113, 26.426191, 26.264786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862734, 26.844484, 26.489243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185280, 26.964043, 26.693375>,  <29.378807, 27.035778, 26.815855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185280, 26.964043, 26.693375>,  <28.862734, 26.844484, 26.489243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185280, 26.964043, 26.693375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252826, 0.954286, -0.159426,
		-0.534655, -0.000470, 0.845070,
		0.806364, 0.298894, 0.510333,
		29.427189, 27.053711, 26.846474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608385, 27.506201, 26.840942>,  <28.862734, 26.844484, 26.489243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608385, 27.506201, 26.840942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.008286, 27.515129, 26.841270>,  <29.248226, 27.520487, 26.841467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.008286, 27.515129, 26.841270>,  <28.608385, 27.506201, 26.840942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008286, 27.515129, 26.841270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022010, 0.990734, -0.134024,
		-0.003804, 0.133972, 0.990978,
		0.999750, 0.022321, 0.000820,
		29.308210, 27.521826, 26.841516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734413, 28.082819, 27.273884>,  <28.608385, 27.506201, 26.840942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734413, 28.082819, 27.273884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.068727, 28.040817, 27.058315>,  <29.269316, 28.015617, 26.928974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.068727, 28.040817, 27.058315>,  <28.734413, 28.082819, 27.273884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068727, 28.040817, 27.058315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001527, 0.981094, -0.193523,
		0.549055, 0.162567, 0.819823,
		0.835785, -0.105003, -0.538923,
		29.319464, 28.009315, 26.896639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116831, 28.668018, 27.425543>,  <28.734413, 28.082819, 27.273884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116831, 28.668018, 27.425543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268581, 28.511925, 27.089973>,  <29.359631, 28.418268, 26.888632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268581, 28.511925, 27.089973>,  <29.116831, 28.668018, 27.425543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268581, 28.511925, 27.089973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073375, 0.891160, -0.447717,
		0.922329, 0.231409, 0.309451,
		0.379376, -0.390236, -0.838922,
		29.382395, 28.394854, 26.838297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554270, 29.214121, 27.150093>,  <29.116831, 28.668018, 27.425543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554270, 29.214121, 27.150093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.493715, 28.963600, 26.844196>,  <29.457382, 28.813288, 26.660658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.493715, 28.963600, 26.844196>,  <29.554270, 29.214121, 27.150093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493715, 28.963600, 26.844196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093260, 0.779258, -0.619726,
		0.984065, -0.022500, -0.176379,
		-0.151389, -0.626300, -0.764742,
		29.448299, 28.775711, 26.614773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045906, 29.319592, 26.707201>,  <29.554270, 29.214121, 27.150093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045906, 29.319592, 26.707201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743788, 29.158329, 26.500515>,  <29.562517, 29.061571, 26.376503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743788, 29.158329, 26.500515>,  <30.045906, 29.319592, 26.707201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743788, 29.158329, 26.500515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015067, 0.798887, -0.601292,
		0.655214, -0.446367, -0.609468,
		-0.755293, -0.403158, -0.516716,
		29.517200, 29.037382, 26.345501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192169, 29.428474, 25.985037>,  <30.045906, 29.319592, 26.707201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192169, 29.428474, 25.985037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.808571, 29.323639, 25.941891>,  <29.578411, 29.260736, 25.916002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.808571, 29.323639, 25.941891>,  <30.192169, 29.428474, 25.985037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808571, 29.323639, 25.941891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116636, 0.711822, -0.692608,
		0.258307, -0.651627, -0.713204,
		-0.958996, -0.262090, -0.107866,
		29.520872, 29.245012, 25.909531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078104, 29.479044, 25.258022>,  <30.192169, 29.428474, 25.985037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078104, 29.479044, 25.258022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733953, 29.515537, 25.458595>,  <29.527464, 29.537434, 25.578939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733953, 29.515537, 25.458595>,  <30.078104, 29.479044, 25.258022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733953, 29.515537, 25.458595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225383, 0.814312, -0.534882,
		-0.457120, -0.573212, -0.680051,
		-0.860374, 0.091233, 0.501430,
		29.475842, 29.542908, 25.609024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582264, 29.435900, 24.727098>,  <30.078104, 29.479044, 25.258022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582264, 29.435900, 24.727098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.420593, 29.592621, 25.057705>,  <29.323591, 29.686653, 25.256069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.420593, 29.592621, 25.057705>,  <29.582264, 29.435900, 24.727098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420593, 29.592621, 25.057705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349947, 0.768628, -0.535489,
		-0.845091, -0.505669, -0.173550,
		-0.404176, 0.391804, 0.826518,
		29.299341, 29.710161, 25.305660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922781, 29.571053, 24.570995>,  <29.582264, 29.435900, 24.727098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922781, 29.571053, 24.570995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.980116, 29.797714, 24.895554>,  <29.014517, 29.933710, 25.090288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.980116, 29.797714, 24.895554>,  <28.922781, 29.571053, 24.570995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980116, 29.797714, 24.895554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546328, 0.728925, -0.412546,
		-0.825215, -0.384154, 0.414060,
		0.143338, 0.566652, 0.811394,
		29.023117, 29.967710, 25.138971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262671, 29.855814, 24.736216>,  <28.922781, 29.571053, 24.570995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262671, 29.855814, 24.736216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.554989, 30.091759, 24.873619>,  <28.730379, 30.233326, 24.956062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.554989, 30.091759, 24.873619>,  <28.262671, 29.855814, 24.736216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554989, 30.091759, 24.873619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424827, 0.786933, -0.447502,
		-0.534285, 0.181100, 0.825677,
		0.730795, 0.589863, 0.343510,
		28.774227, 30.268719, 24.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848616, 30.317648, 25.114836>,  <28.262671, 29.855814, 24.736216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848616, 30.317648, 25.114836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.196400, 30.491989, 25.021824>,  <28.405071, 30.596594, 24.966017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.196400, 30.491989, 25.021824>,  <27.848616, 30.317648, 25.114836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196400, 30.491989, 25.021824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485518, 0.840804, -0.239420,
		0.091161, 0.321064, 0.942660,
		0.869461, 0.435852, -0.232531,
		28.457237, 30.622746, 24.952065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799347, 30.953409, 25.468409>,  <27.848616, 30.317648, 25.114836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799347, 30.953409, 25.468409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.086767, 31.008293, 25.195686>,  <28.259218, 31.041224, 25.032053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.086767, 31.008293, 25.195686>,  <27.799347, 30.953409, 25.468409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086767, 31.008293, 25.195686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490322, 0.795198, -0.356713,
		0.493227, 0.590621, 0.638666,
		0.718548, 0.137211, -0.681807,
		28.302332, 31.049456, 24.991144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135174, 31.225082, 25.312893>,  <27.799347, 30.953409, 25.468409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135174, 31.225082, 25.312893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.787146, 31.365681, 25.174660>,  <26.578329, 31.450039, 25.091721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.787146, 31.365681, 25.174660>,  <27.135174, 31.225082, 25.312893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787146, 31.365681, 25.174660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379024, -0.925294, 0.013143,
		-0.315145, 0.142419, 0.938296,
		-0.870072, 0.351495, -0.345582,
		26.526125, 31.471128, 25.070986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721645, 30.841606, 25.676626>,  <27.135174, 31.225082, 25.312893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721645, 30.841606, 25.676626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.500164, 31.006397, 25.387161>,  <26.367275, 31.105272, 25.213482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.500164, 31.006397, 25.387161>,  <26.721645, 30.841606, 25.676626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500164, 31.006397, 25.387161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513928, -0.852854, -0.092297,
		-0.655203, 0.320806, 0.683953,
		-0.553703, 0.411976, -0.723664,
		26.334053, 31.129990, 25.170063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182043, 30.751968, 25.942251>,  <26.721645, 30.841606, 25.676626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182043, 30.751968, 25.942251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.136505, 30.755619, 25.544868>,  <26.109182, 30.757811, 25.306438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.136505, 30.755619, 25.544868>,  <26.182043, 30.751968, 25.942251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136505, 30.755619, 25.544868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478371, -0.876912, 0.046761,
		-0.870747, 0.480564, 0.104198,
		-0.113844, 0.009128, -0.993457,
		26.102352, 30.758358, 25.246832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422491, 30.546751, 25.788424>,  <26.182043, 30.751968, 25.942251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422491, 30.546751, 25.788424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.666647, 30.475590, 25.479679>,  <25.813141, 30.432892, 25.294432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.666647, 30.475590, 25.479679>,  <25.422491, 30.546751, 25.788424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666647, 30.475590, 25.479679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322114, -0.945990, -0.036689,
		-0.723647, 0.271022, -0.634730,
		0.610392, -0.177905, -0.771863,
		25.849764, 30.422218, 25.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065680, 30.050293, 25.362568>,  <25.422491, 30.546751, 25.788424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065680, 30.050293, 25.362568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.443304, 30.008518, 25.237450>,  <25.669878, 29.983454, 25.162378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.443304, 30.008518, 25.237450>,  <25.065680, 30.050293, 25.362568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443304, 30.008518, 25.237450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174130, -0.963383, -0.203893,
		-0.280050, 0.246955, -0.927677,
		0.944061, -0.104437, -0.312798,
		25.726522, 29.977188, 25.143610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038498, 29.559399, 24.800331>,  <25.065680, 30.050293, 25.362568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038498, 29.559399, 24.800331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429152, 29.561253, 24.886272>,  <25.663544, 29.562365, 24.937838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429152, 29.561253, 24.886272>,  <25.038498, 29.559399, 24.800331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429152, 29.561253, 24.886272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009307, -0.997918, 0.063824,
		0.214701, -0.064332, -0.974559,
		0.976635, 0.004633, 0.214852,
		25.722141, 29.562643, 24.950727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292591, 29.049509, 24.424425>,  <25.038498, 29.559399, 24.800331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292591, 29.049509, 24.424425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.551344, 29.080013, 24.727932>,  <25.706594, 29.098316, 24.910036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.551344, 29.080013, 24.727932>,  <25.292591, 29.049509, 24.424425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551344, 29.080013, 24.727932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077876, -0.983179, 0.165210,
		0.758605, -0.165961, -0.630060,
		0.646880, 0.076263, 0.758768,
		25.745407, 29.102892, 24.955563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767107, 28.524239, 24.300768>,  <25.292591, 29.049509, 24.424425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767107, 28.524239, 24.300768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.763239, 28.624069, 24.688091>,  <25.760918, 28.683968, 24.920485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.763239, 28.624069, 24.688091>,  <25.767107, 28.524239, 24.300768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763239, 28.624069, 24.688091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065982, -0.966401, 0.248425,
		0.997774, -0.061488, 0.025815,
		-0.009672, 0.249575, 0.968307,
		25.760338, 28.698942, 24.978584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226263, 28.092140, 24.654352>,  <25.767107, 28.524239, 24.300768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226263, 28.092140, 24.654352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032885, 28.222431, 24.979359>,  <25.916857, 28.300606, 25.174362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032885, 28.222431, 24.979359>,  <26.226263, 28.092140, 24.654352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032885, 28.222431, 24.979359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069133, -0.939501, 0.335498,
		0.872640, 0.106024, 0.476717,
		-0.483447, 0.325725, 0.812516,
		25.887850, 28.320148, 25.223114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499992, 27.760992, 25.262152>,  <26.226263, 28.092140, 24.654352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499992, 27.760992, 25.262152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.140877, 27.889034, 25.383152>,  <25.925407, 27.965860, 25.455751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.140877, 27.889034, 25.383152>,  <26.499992, 27.760992, 25.262152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140877, 27.889034, 25.383152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178917, -0.892688, 0.413639,
		0.402447, 0.317238, 0.858718,
		-0.897789, 0.320107, 0.302500,
		25.871540, 27.985067, 25.473902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461823, 27.723778, 25.954044>,  <26.499992, 27.760992, 25.262152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461823, 27.723778, 25.954044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.088499, 27.706905, 25.811409>,  <25.864506, 27.696781, 25.725828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.088499, 27.706905, 25.811409>,  <26.461823, 27.723778, 25.954044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088499, 27.706905, 25.811409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132946, -0.881909, 0.452285,
		-0.333559, 0.469529, 0.817485,
		-0.933308, -0.042183, -0.356591,
		25.808506, 27.694250, 25.704432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110035, 27.665461, 26.582872>,  <26.461823, 27.723778, 25.954044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110035, 27.665461, 26.582872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.849287, 27.541401, 26.306068>,  <25.692839, 27.466965, 26.139986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.849287, 27.541401, 26.306068>,  <26.110035, 27.665461, 26.582872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849287, 27.541401, 26.306068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160549, -0.835410, 0.525656,
		-0.741142, 0.453760, 0.494784,
		-0.651869, -0.310149, -0.692008,
		25.653727, 27.448357, 26.098467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482328, 27.507696, 26.872112>,  <26.110035, 27.665461, 26.582872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482328, 27.507696, 26.872112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.542906, 27.284256, 26.545914>,  <25.579252, 27.150192, 26.350195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.542906, 27.284256, 26.545914>,  <25.482328, 27.507696, 26.872112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542906, 27.284256, 26.545914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135980, -0.805393, 0.576932,
		-0.979068, -0.198263, -0.046012,
		0.151442, -0.558599, -0.815495,
		25.588339, 27.116676, 26.301266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062334, 26.934931, 26.953133>,  <25.482328, 27.507696, 26.872112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062334, 26.934931, 26.953133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.338331, 26.814198, 26.689980>,  <25.503929, 26.741758, 26.532087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.338331, 26.814198, 26.689980>,  <25.062334, 26.934931, 26.953133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338331, 26.814198, 26.689980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105040, -0.857530, 0.503595,
		-0.716155, -0.416581, -0.559984,
		0.689992, -0.301832, -0.657882,
		25.545328, 26.723648, 26.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918993, 26.299374, 26.888462>,  <25.062334, 26.934931, 26.953133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918993, 26.299374, 26.888462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268026, 26.292427, 26.693199>,  <25.477446, 26.288260, 26.576040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268026, 26.292427, 26.693199>,  <24.918993, 26.299374, 26.888462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268026, 26.292427, 26.693199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207381, -0.891662, 0.402409,
		-0.442260, -0.452369, -0.774447,
		0.872582, -0.017364, -0.488159,
		25.529800, 26.287218, 26.546751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979118, 25.653572, 26.581375>,  <24.918993, 26.299374, 26.888462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979118, 25.653572, 26.581375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.354933, 25.790359, 26.588665>,  <25.580421, 25.872433, 26.593039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.354933, 25.790359, 26.588665>,  <24.979118, 25.653572, 26.581375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354933, 25.790359, 26.588665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306894, -0.864399, 0.398285,
		0.151955, -0.368609, -0.917081,
		0.939535, 0.341968, 0.018226,
		25.636793, 25.892950, 26.594133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344368, 25.055403, 26.295340>,  <24.979118, 25.653572, 26.581375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344368, 25.055403, 26.295340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.597990, 25.281452, 26.506474>,  <25.750164, 25.417082, 26.633154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.597990, 25.281452, 26.506474>,  <25.344368, 25.055403, 26.295340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597990, 25.281452, 26.506474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200442, -0.779364, 0.593646,
		0.746858, -0.270604, -0.607435,
		0.634055, 0.565124, 0.527833,
		25.788206, 25.450989, 26.664824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994078, 24.671366, 26.135210>,  <25.344368, 25.055403, 26.295340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994078, 24.671366, 26.135210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.978533, 24.857769, 26.488781>,  <25.969206, 24.969610, 26.700924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.978533, 24.857769, 26.488781>,  <25.994078, 24.671366, 26.135210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978533, 24.857769, 26.488781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179380, -0.866971, 0.464956,
		0.983012, 0.176627, -0.049902,
		-0.038860, 0.466009, 0.883926,
		25.966875, 24.997572, 26.753960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.572687, 24.396027, 26.604361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.345188, 24.587639, 26.871811>,  <26.208689, 24.702606, 27.032280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.345188, 24.587639, 26.871811>,  <26.572687, 24.396027, 26.604361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345188, 24.587639, 26.871811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281695, -0.650302, 0.705517,
		0.772771, 0.589609, 0.234917,
		-0.568747, 0.479028, 0.668625,
		26.174564, 24.731348, 27.072399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061312, 24.597353, 27.203550>,  <26.572687, 24.396027, 26.604361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061312, 24.597353, 27.203550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.699217, 24.605751, 27.373306>,  <26.481960, 24.610790, 27.475161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.699217, 24.605751, 27.373306>,  <27.061312, 24.597353, 27.203550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699217, 24.605751, 27.373306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289143, -0.701438, 0.651445,
		0.311360, 0.712421, 0.628896,
		-0.905235, 0.020993, 0.424391,
		26.427647, 24.612049, 27.500624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174953, 24.519587, 27.918575>,  <27.061312, 24.597353, 27.203550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174953, 24.519587, 27.918575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784910, 24.440628, 27.878178>,  <26.550884, 24.393253, 27.853939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784910, 24.440628, 27.878178>,  <27.174953, 24.519587, 27.918575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784910, 24.440628, 27.878178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027384, -0.559205, 0.828577,
		-0.220035, 0.805186, 0.550691,
		-0.975108, -0.197396, -0.100995,
		26.492378, 24.381409, 27.847879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927858, 24.744028, 28.488735>,  <27.174953, 24.519587, 27.918575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927858, 24.744028, 28.488735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.662703, 24.472435, 28.362522>,  <26.503609, 24.309479, 28.286795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.662703, 24.472435, 28.362522>,  <26.927858, 24.744028, 28.488735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662703, 24.472435, 28.362522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072986, -0.478028, 0.875307,
		-0.745150, 0.557203, 0.366436,
		-0.662890, -0.678980, -0.315534,
		26.463835, 24.268742, 28.267862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438583, 24.713791, 29.036564>,  <26.927858, 24.744028, 28.488735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438583, 24.713791, 29.036564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.380590, 24.378284, 28.826630>,  <26.345795, 24.176981, 28.700670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.380590, 24.378284, 28.826630>,  <26.438583, 24.713791, 29.036564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380590, 24.378284, 28.826630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057415, -0.536677, 0.841832,
		-0.987767, 0.091918, 0.125966,
		-0.144982, -0.838766, -0.524834,
		26.337095, 24.126654, 28.669180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911613, 24.465660, 29.258081>,  <26.438583, 24.713791, 29.036564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911613, 24.465660, 29.258081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.066502, 24.135254, 29.094250>,  <26.159435, 23.937010, 28.995951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.066502, 24.135254, 29.094250>,  <25.911613, 24.465660, 29.258081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066502, 24.135254, 29.094250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090167, -0.476033, 0.874793,
		-0.917567, -0.301808, -0.258810,
		0.387221, -0.826017, -0.409579,
		26.182669, 23.887449, 28.971376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526670, 23.911219, 29.522429>,  <25.911613, 24.465660, 29.258081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526670, 23.911219, 29.522429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.866385, 23.734360, 29.407036>,  <26.070213, 23.628244, 29.337801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.866385, 23.734360, 29.407036>,  <25.526670, 23.911219, 29.522429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866385, 23.734360, 29.407036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013725, -0.527757, 0.849285,
		-0.527757, -0.725244, -0.442147,
		-0.849285, 0.442147, 0.288481,
		26.121170, 23.601715, 29.320492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303577, 23.198446, 29.357140>,  <25.526670, 23.911219, 29.522429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303577, 23.198446, 29.357140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695009, 23.215412, 29.437721>,  <25.929869, 23.225592, 29.486071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695009, 23.215412, 29.437721>,  <25.303577, 23.198446, 29.357140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695009, 23.215412, 29.437721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132987, -0.616754, 0.775840,
		0.157156, -0.786012, -0.597902,
		0.978579, 0.042414, 0.201456,
		25.988583, 23.228136, 29.498158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494213, 22.505579, 29.564754>,  <25.303577, 23.198446, 29.357140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494213, 22.505579, 29.564754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.817911, 22.702774, 29.692554>,  <26.012131, 22.821091, 29.769234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.817911, 22.702774, 29.692554>,  <25.494213, 22.505579, 29.564754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817911, 22.702774, 29.692554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015121, -0.526200, 0.850226,
		0.587274, -0.692874, -0.418371,
		0.809247, 0.492990, 0.319501,
		26.060686, 22.850672, 29.788404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924667, 21.911556, 29.775688>,  <25.494213, 22.505579, 29.564754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924667, 21.911556, 29.775688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.063229, 22.239990, 29.957161>,  <26.146366, 22.437050, 30.066044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.063229, 22.239990, 29.957161>,  <25.924667, 21.911556, 29.775688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063229, 22.239990, 29.957161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016513, -0.478213, 0.878088,
		0.937941, -0.311664, -0.152096,
		0.346403, 0.821083, 0.453682,
		26.167149, 22.486315, 30.093266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571432, 21.717234, 29.973551>,  <25.924667, 21.911556, 29.775688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571432, 21.717234, 29.973551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.430378, 22.019100, 30.194866>,  <26.345745, 22.200220, 30.327656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.430378, 22.019100, 30.194866>,  <26.571432, 21.717234, 29.973551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430378, 22.019100, 30.194866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120691, -0.549651, 0.826630,
		0.927945, 0.358275, 0.102745,
		-0.352635, 0.754667, 0.553287,
		26.324587, 22.245501, 30.360851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923592, 21.589087, 30.558630>,  <26.571432, 21.717234, 29.973551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923592, 21.589087, 30.558630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.649673, 21.855118, 30.677780>,  <26.485323, 22.014736, 30.749269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.649673, 21.855118, 30.677780>,  <26.923592, 21.589087, 30.558630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649673, 21.855118, 30.677780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121981, -0.507600, 0.852915,
		0.718454, 0.547737, 0.428728,
		-0.684795, 0.665076, 0.297874,
		26.444235, 22.054640, 30.767143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038404, 21.911959, 31.325018>,  <26.923592, 21.589087, 30.558630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038404, 21.911959, 31.325018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.651468, 21.955654, 31.233521>,  <26.419308, 21.981871, 31.178623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.651468, 21.955654, 31.233521>,  <27.038404, 21.911959, 31.325018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651468, 21.955654, 31.233521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252592, -0.339637, 0.906004,
		0.021280, 0.934192, 0.356137,
		-0.967339, 0.109237, -0.228742,
		26.361267, 21.988426, 31.164898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838940, 22.068434, 31.978960>,  <27.038404, 21.911959, 31.325018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838940, 22.068434, 31.978960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.514273, 21.960545, 31.771713>,  <26.319473, 21.895811, 31.647366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.514273, 21.960545, 31.771713>,  <26.838940, 22.068434, 31.978960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514273, 21.960545, 31.771713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408209, -0.372528, 0.833419,
		-0.417804, 0.887960, 0.192266,
		-0.811668, -0.269721, -0.518117,
		26.270773, 21.879629, 31.616278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318569, 22.170664, 32.378929>,  <26.838940, 22.068434, 31.978960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318569, 22.170664, 32.378929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.141533, 21.937389, 32.106457>,  <26.035311, 21.797424, 31.942972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.141533, 21.937389, 32.106457>,  <26.318569, 22.170664, 32.378929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141533, 21.937389, 32.106457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652435, -0.311705, 0.690773,
		-0.615176, 0.750157, -0.242532,
		-0.442590, -0.583184, -0.681183,
		26.008757, 21.762434, 31.902102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602198, 22.273127, 32.512222>,  <26.318569, 22.170664, 32.378929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602198, 22.273127, 32.512222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666010, 21.920036, 32.335434>,  <25.704298, 21.708181, 32.229359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666010, 21.920036, 32.335434>,  <25.602198, 22.273127, 32.512222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666010, 21.920036, 32.335434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588009, -0.444591, 0.675710,
		-0.792966, 0.152090, -0.589978,
		0.159530, -0.882728, -0.441975,
		25.713869, 21.655218, 32.202843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988432, 21.979069, 32.639999>,  <25.602198, 22.273127, 32.512222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988432, 21.979069, 32.639999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.235693, 21.679199, 32.545448>,  <25.384050, 21.499277, 32.488716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.235693, 21.679199, 32.545448>,  <24.988432, 21.979069, 32.639999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235693, 21.679199, 32.545448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385752, -0.551326, 0.739753,
		-0.684897, -0.366096, -0.629992,
		0.618151, -0.749675, -0.236380,
		25.421139, 21.454296, 32.474533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562670, 21.406046, 32.636124>,  <24.988432, 21.979069, 32.639999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562670, 21.406046, 32.636124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.936701, 21.274593, 32.689236>,  <25.161119, 21.195723, 32.721104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.936701, 21.274593, 32.689236>,  <24.562670, 21.406046, 32.636124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936701, 21.274593, 32.689236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322828, -0.635020, 0.701805,
		-0.146319, -0.699107, -0.699885,
		0.935079, -0.328630, 0.132776,
		25.217224, 21.176004, 32.729069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614338, 20.659874, 32.584862>,  <24.562670, 21.406046, 32.636124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614338, 20.659874, 32.584862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.944475, 20.753098, 32.790577>,  <25.142557, 20.809032, 32.914005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.944475, 20.753098, 32.790577>,  <24.614338, 20.659874, 32.584862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944475, 20.753098, 32.790577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153973, -0.783420, 0.602118,
		0.543236, -0.576139, -0.610703,
		0.825341, 0.233060, 0.514291,
		25.192078, 20.823015, 32.944866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869957, 20.035501, 32.865372>,  <24.614338, 20.659874, 32.584862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869957, 20.035501, 32.865372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.066753, 20.302715, 33.088684>,  <25.184832, 20.463043, 33.222672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.066753, 20.302715, 33.088684>,  <24.869957, 20.035501, 32.865372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066753, 20.302715, 33.088684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004565, -0.643231, 0.765658,
		0.870589, -0.374147, -0.319512,
		0.491989, 0.668032, 0.558283,
		25.214350, 20.503124, 33.256168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109863, 19.596678, 33.384518>,  <24.869957, 20.035501, 32.865372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109863, 19.596678, 33.384518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.173914, 19.968021, 33.518688>,  <25.212345, 20.190826, 33.599190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.173914, 19.968021, 33.518688>,  <25.109863, 19.596678, 33.384518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173914, 19.968021, 33.518688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028203, -0.335370, 0.941664,
		0.986694, -0.160246, -0.027520,
		0.160127, 0.928358, 0.335427,
		25.221952, 20.246529, 33.619316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857119, 19.585802, 33.768394>,  <25.109863, 19.596678, 33.384518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857119, 19.585802, 33.768394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.605881, 19.867435, 33.900917>,  <25.455137, 20.036415, 33.980431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.605881, 19.867435, 33.900917>,  <25.857119, 19.585802, 33.768394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605881, 19.867435, 33.900917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078772, -0.481111, 0.873113,
		0.774140, 0.522300, 0.357646,
		-0.628095, 0.704084, 0.331305,
		25.417452, 20.078661, 34.000309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378767, 19.765072, 34.184372>,  <25.857119, 19.585802, 33.768394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378767, 19.765072, 34.184372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.322470, 19.528671, 33.866653>,  <26.288692, 19.386831, 33.676022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.322470, 19.528671, 33.866653>,  <26.378767, 19.765072, 34.184372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322470, 19.528671, 33.866653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694388, 0.512940, -0.504696,
		0.705703, -0.622582, 0.338192,
		-0.140742, -0.591002, -0.794297,
		26.280247, 19.351370, 33.628365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934282, 19.379656, 34.043674>,  <26.378767, 19.765072, 34.184372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934282, 19.379656, 34.043674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726229, 19.446457, 33.708633>,  <26.601397, 19.486538, 33.507610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726229, 19.446457, 33.708633>,  <26.934282, 19.379656, 34.043674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726229, 19.446457, 33.708633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631509, 0.735471, -0.245517,
		0.575028, -0.656653, -0.488006,
		-0.520134, 0.167001, -0.837599,
		26.570189, 19.496557, 33.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072813, 18.748556, 34.283825>,  <26.934282, 19.379656, 34.043674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072813, 18.748556, 34.283825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.447536, 18.614704, 34.243000>,  <27.672371, 18.534393, 34.218506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.447536, 18.614704, 34.243000>,  <27.072813, 18.748556, 34.283825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447536, 18.614704, 34.243000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197470, 0.746583, -0.635310,
		0.288790, 0.575009, 0.765483,
		0.936806, -0.334631, -0.102058,
		27.728579, 18.514315, 34.212383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580650, 19.245392, 34.555325>,  <27.072813, 18.748556, 34.283825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580650, 19.245392, 34.555325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.751244, 19.021484, 34.271137>,  <27.853600, 18.887140, 34.100624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.751244, 19.021484, 34.271137>,  <27.580650, 19.245392, 34.555325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751244, 19.021484, 34.271137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235736, 0.827133, -0.510175,
		0.873235, 0.050098, 0.484717,
		0.426484, -0.559768, -0.710472,
		27.879189, 18.853554, 34.057995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132727, 19.647133, 34.363140>,  <27.580650, 19.245392, 34.555325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132727, 19.647133, 34.363140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076668, 19.384670, 34.066544>,  <28.043032, 19.227192, 33.888584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076668, 19.384670, 34.066544>,  <28.132727, 19.647133, 34.363140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076668, 19.384670, 34.066544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278616, 0.692491, -0.665455,
		0.950122, -0.299854, 0.085765,
		-0.140148, -0.656159, -0.741495,
		28.034624, 19.187822, 33.844093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752457, 19.805523, 34.009571>,  <28.132727, 19.647133, 34.363140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752457, 19.805523, 34.009571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500916, 19.613861, 33.764637>,  <28.349991, 19.498863, 33.617676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500916, 19.613861, 33.764637>,  <28.752457, 19.805523, 34.009571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500916, 19.613861, 33.764637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169143, 0.684382, -0.709233,
		0.758906, -0.549574, -0.349328,
		-0.628850, -0.479155, -0.612338,
		28.312260, 19.470116, 33.580936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094149, 19.671329, 33.408096>,  <28.752457, 19.805523, 34.009571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094149, 19.671329, 33.408096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709122, 19.651806, 33.301453>,  <28.478106, 19.640091, 33.237469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709122, 19.651806, 33.301453>,  <29.094149, 19.671329, 33.408096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709122, 19.651806, 33.301453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178641, 0.625504, -0.759495,
		0.203832, -0.778693, -0.593372,
		-0.962570, -0.048808, -0.266604,
		28.420351, 19.637163, 33.221470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132832, 19.584038, 32.693172>,  <29.094149, 19.671329, 33.408096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132832, 19.584038, 32.693172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762932, 19.717922, 32.765625>,  <28.540993, 19.798252, 32.809097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762932, 19.717922, 32.765625>,  <29.132832, 19.584038, 32.693172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762932, 19.717922, 32.765625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016098, 0.509906, -0.860080,
		-0.380235, -0.792443, -0.476924,
		-0.924750, 0.334710, 0.181127,
		28.485506, 19.818335, 32.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914886, 19.552822, 32.034546>,  <29.132832, 19.584038, 32.693172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914886, 19.552822, 32.034546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.690649, 19.807667, 32.246140>,  <28.556107, 19.960573, 32.373096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.690649, 19.807667, 32.246140>,  <28.914886, 19.552822, 32.034546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690649, 19.807667, 32.246140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000398, 0.638595, -0.769543,
		-0.828091, -0.431611, -0.357739,
		-0.560593, 0.637109, 0.528987,
		28.522470, 19.998800, 32.404835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421431, 19.873562, 31.600048>,  <28.914886, 19.552822, 32.034546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421431, 19.873562, 31.600048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442802, 20.138378, 31.899071>,  <28.455626, 20.297268, 32.078484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442802, 20.138378, 31.899071>,  <28.421431, 19.873562, 31.600048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442802, 20.138378, 31.899071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045391, 0.749465, -0.660486,
		-0.997539, 0.001356, 0.070094,
		0.053429, 0.662043, 0.747559,
		28.458832, 20.336990, 32.123337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931049, 20.391466, 31.434790>,  <28.421431, 19.873562, 31.600048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931049, 20.391466, 31.434790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168522, 20.578152, 31.697002>,  <28.311005, 20.690163, 31.854330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168522, 20.578152, 31.697002>,  <27.931049, 20.391466, 31.434790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168522, 20.578152, 31.697002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178323, 0.870678, -0.458389,
		-0.784694, 0.155240, 0.600130,
		0.593680, 0.466712, 0.655533,
		28.346626, 20.718166, 31.893661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595951, 20.946194, 31.511589>,  <27.931049, 20.391466, 31.434790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595951, 20.946194, 31.511589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.941347, 21.057278, 31.680000>,  <28.148584, 21.123928, 31.781046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.941347, 21.057278, 31.680000>,  <27.595951, 20.946194, 31.511589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941347, 21.057278, 31.680000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043449, 0.872616, -0.486471,
		-0.502493, 0.401770, 0.765560,
		0.863489, 0.277711, 0.421027,
		28.200394, 21.140591, 31.806309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465977, 21.621359, 31.860050>,  <27.595951, 20.946194, 31.511589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465977, 21.621359, 31.860050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.859219, 21.608051, 31.788052>,  <28.095163, 21.600067, 31.744852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.859219, 21.608051, 31.788052>,  <27.465977, 21.621359, 31.860050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859219, 21.608051, 31.788052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063105, 0.861457, -0.503894,
		0.171823, 0.506739, 0.844803,
		0.983105, -0.033269, -0.179996,
		28.154150, 21.598070, 31.734053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777065, 22.234064, 32.062550>,  <27.465977, 21.621359, 31.860050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777065, 22.234064, 32.062550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.039499, 22.075230, 31.805840>,  <28.196960, 21.979929, 31.651814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.039499, 22.075230, 31.805840>,  <27.777065, 22.234064, 32.062550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039499, 22.075230, 31.805840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023928, 0.839011, -0.543588,
		0.754306, 0.371998, 0.540962,
		0.656087, -0.397087, -0.641772,
		28.236326, 21.956104, 31.613308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252419, 22.814117, 31.924114>,  <27.777065, 22.234064, 32.062550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252419, 22.814117, 31.924114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.310049, 22.544342, 31.634460>,  <28.344627, 22.382477, 31.460669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.310049, 22.544342, 31.634460>,  <28.252419, 22.814117, 31.924114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310049, 22.544342, 31.634460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255928, 0.732270, -0.631096,
		0.955899, -0.094402, 0.278110,
		0.144075, -0.674440, -0.724136,
		28.353271, 22.342010, 31.417219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788830, 23.049559, 31.612530>,  <28.252419, 22.814117, 31.924114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788830, 23.049559, 31.612530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648355, 22.793926, 31.338818>,  <28.564070, 22.640547, 31.174591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648355, 22.793926, 31.338818>,  <28.788830, 23.049559, 31.612530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648355, 22.793926, 31.338818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265917, 0.632659, -0.727345,
		0.897750, -0.437397, -0.052239,
		-0.351188, -0.639083, -0.684281,
		28.542999, 22.602201, 31.133533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346952, 23.074034, 30.993670>,  <28.788830, 23.049559, 31.612530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346952, 23.074034, 30.993670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028412, 22.885544, 30.842003>,  <28.837288, 22.772449, 30.751003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028412, 22.885544, 30.842003>,  <29.346952, 23.074034, 30.993670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028412, 22.885544, 30.842003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043296, 0.580877, -0.812839,
		0.603287, -0.663719, -0.442178,
		-0.796348, -0.471231, -0.379172,
		28.789507, 22.744177, 30.728252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536938, 22.702286, 30.334473>,  <29.346952, 23.074034, 30.993670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536938, 22.702286, 30.334473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150547, 22.805740, 30.334713>,  <28.918713, 22.867813, 30.334856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150547, 22.805740, 30.334713>,  <29.536938, 22.702286, 30.334473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150547, 22.805740, 30.334713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144603, 0.541996, -0.827847,
		-0.214435, -0.799592, -0.560954,
		-0.965975, 0.258635, 0.000600,
		28.860754, 22.883331, 30.334892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379984, 22.566301, 29.668589>,  <29.536938, 22.702286, 30.334473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379984, 22.566301, 29.668589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122381, 22.841885, 29.801613>,  <28.967819, 23.007235, 29.881428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122381, 22.841885, 29.801613>,  <29.379984, 22.566301, 29.668589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122381, 22.841885, 29.801613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159164, 0.545859, -0.822621,
		-0.748281, -0.476840, -0.461192,
		-0.644005, 0.688957, 0.332560,
		28.929180, 23.048573, 29.901381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552977, 23.057484, 29.140652>,  <29.379984, 22.566301, 29.668589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552977, 23.057484, 29.140652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.293438, 23.245235, 29.380211>,  <29.137714, 23.357887, 29.523947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.293438, 23.245235, 29.380211>,  <29.552977, 23.057484, 29.140652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293438, 23.245235, 29.380211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020544, 0.775979, -0.630424,
		-0.760641, -0.421353, -0.493850,
		-0.648848, 0.469381, 0.598897,
		29.098783, 23.386049, 29.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988104, 23.344519, 28.709511>,  <29.552977, 23.057484, 29.140652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988104, 23.344519, 28.709511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962135, 23.545326, 29.054478>,  <28.946554, 23.665812, 29.261457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962135, 23.545326, 29.054478>,  <28.988104, 23.344519, 28.709511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962135, 23.545326, 29.054478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178704, 0.844420, -0.504995,
		-0.981759, -0.186903, 0.034891,
		-0.064923, 0.502018, 0.862417,
		28.942659, 23.695932, 29.313202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400820, 23.616949, 28.695402>,  <28.988104, 23.344519, 28.709511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400820, 23.616949, 28.695402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.664473, 23.821800, 28.915684>,  <28.822664, 23.944710, 29.047853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.664473, 23.821800, 28.915684>,  <28.400820, 23.616949, 28.695402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664473, 23.821800, 28.915684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052778, 0.761986, -0.645439,
		-0.750175, 0.396363, 0.529277,
		0.659130, 0.512126, 0.550704,
		28.862211, 23.975437, 29.080894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.365263, 34.632187, 16.623430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.604284, 34.339684, 16.755001>,  <26.747696, 34.164181, 16.833944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.604284, 34.339684, 16.755001>,  <26.365263, 34.632187, 16.623430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604284, 34.339684, 16.755001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389328, 0.094014, 0.916289,
		-0.700968, -0.675590, -0.228521,
		0.597552, -0.731258, 0.328927,
		26.783550, 34.120308, 16.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966591, 34.191673, 16.915369>,  <26.365263, 34.632187, 16.623430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966591, 34.191673, 16.915369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.332596, 34.149254, 17.071064>,  <26.552198, 34.123802, 17.164480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.332596, 34.149254, 17.071064>,  <25.966591, 34.191673, 16.915369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332596, 34.149254, 17.071064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366297, 0.185906, 0.911738,
		-0.169050, -0.976828, 0.131261,
		0.915013, -0.106049, 0.389236,
		26.607100, 34.117439, 17.187836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010538, 33.571392, 17.346003>,  <25.966591, 34.191673, 16.915369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010538, 33.571392, 17.346003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.290304, 33.834274, 17.458355>,  <26.458164, 33.992004, 17.525766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.290304, 33.834274, 17.458355>,  <26.010538, 33.571392, 17.346003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290304, 33.834274, 17.458355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311446, -0.073463, 0.947420,
		0.643288, -0.750119, 0.153305,
		0.699415, 0.657210, 0.280879,
		26.500130, 34.031437, 17.542620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113342, 33.404743, 18.045010>,  <26.010538, 33.571392, 17.346003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113342, 33.404743, 18.045010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.294046, 33.760098, 18.012321>,  <26.402470, 33.973312, 17.992708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.294046, 33.760098, 18.012321>,  <26.113342, 33.404743, 18.045010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294046, 33.760098, 18.012321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304521, 0.239656, 0.921863,
		0.838558, -0.391575, 0.378800,
		0.451760, 0.888388, -0.081722,
		26.429575, 34.026615, 17.987804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553961, 33.473969, 18.635000>,  <26.113342, 33.404743, 18.045010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553961, 33.473969, 18.635000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.492035, 33.848629, 18.509319>,  <26.454880, 34.073425, 18.433910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.492035, 33.848629, 18.509319>,  <26.553961, 33.473969, 18.635000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492035, 33.848629, 18.509319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124169, 0.297069, 0.946748,
		0.980109, 0.185587, 0.070311,
		-0.154817, 0.936647, -0.314204,
		26.445589, 34.129623, 18.415058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780190, 33.830059, 19.196630>,  <26.553961, 33.473969, 18.635000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780190, 33.830059, 19.196630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.587954, 34.115650, 18.992954>,  <26.472612, 34.287003, 18.870749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.587954, 34.115650, 18.992954>,  <26.780190, 33.830059, 19.196630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587954, 34.115650, 18.992954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325757, 0.393748, 0.859561,
		0.814197, 0.578968, 0.043352,
		-0.480588, 0.713975, -0.509191,
		26.443777, 34.329842, 18.840197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965731, 34.482803, 19.454454>,  <26.780190, 33.830059, 19.196630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965731, 34.482803, 19.454454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.620481, 34.567444, 19.271046>,  <26.413332, 34.618229, 19.160999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.620481, 34.567444, 19.271046>,  <26.965731, 34.482803, 19.454454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620481, 34.567444, 19.271046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308215, 0.498517, 0.810237,
		0.400025, 0.840659, -0.365065,
		-0.863124, 0.211597, -0.458523,
		26.361544, 34.630924, 19.133490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720926, 35.119568, 19.784246>,  <26.965731, 34.482803, 19.454454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720926, 35.119568, 19.784246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.393982, 34.991600, 19.592590>,  <26.197815, 34.914818, 19.477596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.393982, 34.991600, 19.592590>,  <26.720926, 35.119568, 19.784246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393982, 34.991600, 19.592590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543139, 0.150498, 0.826045,
		-0.192157, 0.935416, -0.296771,
		-0.817359, -0.319918, -0.479141,
		26.148775, 34.895626, 19.448849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168621, 35.695904, 19.936394>,  <26.720926, 35.119568, 19.784246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168621, 35.695904, 19.936394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.978325, 35.361549, 19.826874>,  <25.864147, 35.160938, 19.761162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.978325, 35.361549, 19.826874>,  <26.168621, 35.695904, 19.936394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978325, 35.361549, 19.826874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639797, 0.115243, 0.759855,
		-0.603598, 0.536670, -0.589623,
		-0.475741, -0.835886, -0.273799,
		25.835602, 35.110783, 19.744734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508301, 35.889225, 19.937582>,  <26.168621, 35.695904, 19.936394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508301, 35.889225, 19.937582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.509188, 35.493172, 19.993614>,  <25.509720, 35.255539, 20.027233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.509188, 35.493172, 19.993614>,  <25.508301, 35.889225, 19.937582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509188, 35.493172, 19.993614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674511, 0.101933, 0.731193,
		-0.738261, -0.096107, -0.667633,
		0.002219, -0.990138, 0.140079,
		25.509853, 35.196129, 20.035639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756617, 35.744740, 20.070024>,  <25.508301, 35.889225, 19.937582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756617, 35.744740, 20.070024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.966318, 35.428230, 20.195911>,  <25.092140, 35.238327, 20.271444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.966318, 35.428230, 20.195911>,  <24.756617, 35.744740, 20.070024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966318, 35.428230, 20.195911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535509, -0.018983, 0.844316,
		-0.662108, -0.611172, -0.433684,
		0.524255, -0.791270, 0.314719,
		25.123594, 35.190849, 20.290327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288637, 35.286438, 20.346123>,  <24.756617, 35.744740, 20.070024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288637, 35.286438, 20.346123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.639565, 35.176529, 20.503506>,  <24.850121, 35.110584, 20.597935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.639565, 35.176529, 20.503506>,  <24.288637, 35.286438, 20.346123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639565, 35.176529, 20.503506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444462, -0.155996, 0.882111,
		-0.181005, -0.948770, -0.258985,
		0.877321, -0.274775, 0.393456,
		24.902761, 35.094097, 20.621542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285585, 34.570698, 20.417765>,  <24.288637, 35.286438, 20.346123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285585, 34.570698, 20.417765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.554686, 34.713646, 20.676899>,  <24.716146, 34.799416, 20.832380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.554686, 34.713646, 20.676899>,  <24.285585, 34.570698, 20.417765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554686, 34.713646, 20.676899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599276, -0.250312, 0.760403,
		0.433906, -0.899795, 0.045764,
		0.672751, 0.357368, 0.647837,
		24.756512, 34.820858, 20.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299433, 34.057957, 21.001717>,  <24.285585, 34.570698, 20.417765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299433, 34.057957, 21.001717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.459459, 34.396793, 21.141647>,  <24.555475, 34.600098, 21.225605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.459459, 34.396793, 21.141647>,  <24.299433, 34.057957, 21.001717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459459, 34.396793, 21.141647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465701, -0.140856, 0.873660,
		0.789348, -0.512436, 0.338141,
		0.400066, 0.847094, 0.349826,
		24.579479, 34.650921, 21.246595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566652, 33.915173, 21.661177>,  <24.299433, 34.057957, 21.001717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566652, 33.915173, 21.661177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.522453, 34.312702, 21.665283>,  <24.495934, 34.551220, 21.667747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.522453, 34.312702, 21.665283>,  <24.566652, 33.915173, 21.661177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522453, 34.312702, 21.665283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547467, -0.069485, 0.833938,
		0.829500, 0.086529, 0.551763,
		-0.110499, 0.993824, 0.010266,
		24.489304, 34.610847, 21.668364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768759, 34.114082, 22.359306>,  <24.566652, 33.915173, 21.661177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768759, 34.114082, 22.359306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.537909, 34.403706, 22.208218>,  <24.399399, 34.577480, 22.117565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.537909, 34.403706, 22.208218>,  <24.768759, 34.114082, 22.359306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.537909, 34.403706, 22.208218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660633, -0.142017, 0.737154,
		0.480097, 0.674964, 0.560295,
		-0.577124, 0.724055, -0.377722,
		24.364771, 34.620922, 22.094902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.382730, 34.277111, 22.940067>,  <24.768759, 34.114082, 22.359306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.382730, 34.277111, 22.940067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.195066, 34.476215, 22.648281>,  <24.082468, 34.595676, 22.473209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.195066, 34.476215, 22.648281>,  <24.382730, 34.277111, 22.940067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.195066, 34.476215, 22.648281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836332, 0.014845, 0.548022,
		0.283612, 0.867188, 0.409327,
		-0.469162, 0.497759, -0.729468,
		24.054317, 34.625542, 22.429441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093111, 34.968189, 23.221037>,  <24.382730, 34.277111, 22.940067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093111, 34.968189, 23.221037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.871037, 34.832699, 22.917187>,  <23.737791, 34.751404, 22.734877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.871037, 34.832699, 22.917187>,  <24.093111, 34.968189, 23.221037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871037, 34.832699, 22.917187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786957, -0.081662, 0.611580,
		-0.269192, 0.937333, -0.221228,
		-0.555188, -0.338730, -0.759624,
		23.704479, 34.731079, 22.689301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.435289, 35.121330, 23.368143>,  <24.093111, 34.968189, 23.221037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.435289, 35.121330, 23.368143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.370396, 34.857117, 23.074921>,  <23.331459, 34.698589, 22.898987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.370396, 34.857117, 23.074921>,  <23.435289, 35.121330, 23.368143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.370396, 34.857117, 23.074921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780738, -0.368381, 0.504721,
		-0.603431, 0.654208, -0.455943,
		-0.162232, -0.660536, -0.733057,
		23.321726, 34.658955, 22.855003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623716, 35.166985, 23.211102>,  <23.435289, 35.121330, 23.368143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623716, 35.166985, 23.211102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.786205, 34.824589, 23.083187>,  <22.883698, 34.619152, 23.006437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.786205, 34.824589, 23.083187>,  <22.623716, 35.166985, 23.211102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786205, 34.824589, 23.083187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797146, -0.503045, 0.333922,
		-0.446701, 0.119270, -0.886698,
		0.406222, -0.855991, -0.319786,
		22.908072, 34.567791, 22.987251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.050220, 34.982433, 22.767889>,  <22.623716, 35.166985, 23.211102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.050220, 34.982433, 22.767889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295807, 34.684261, 22.871719>,  <22.443159, 34.505360, 22.934017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295807, 34.684261, 22.871719>,  <22.050220, 34.982433, 22.767889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.295807, 34.684261, 22.871719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778402, -0.517245, 0.355736,
		-0.130911, -0.420465, -0.897815,
		0.613965, -0.745431, 0.259578,
		22.479996, 34.460632, 22.949593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898003, 35.483479, 23.425615>,  <22.050220, 34.982433, 22.767889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898003, 35.483479, 23.425615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697454, 35.826893, 23.468601>,  <21.577126, 36.032940, 23.494392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697454, 35.826893, 23.468601>,  <21.898003, 35.483479, 23.425615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697454, 35.826893, 23.468601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249017, 0.262130, -0.932351,
		-0.828623, -0.440694, -0.345214,
		-0.501372, 0.858532, 0.107467,
		21.547043, 36.084454, 23.500841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.581760, 35.556934, 22.817526>,  <21.898003, 35.483479, 23.425615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.581760, 35.556934, 22.817526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585451, 35.919926, 22.985527>,  <21.587666, 36.137718, 23.086329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585451, 35.919926, 22.985527>,  <21.581760, 35.556934, 22.817526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585451, 35.919926, 22.985527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346287, 0.391132, -0.852702,
		-0.938083, 0.153308, -0.310639,
		0.009225, 0.907476, 0.420003,
		21.588219, 36.192169, 23.111528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182241, 36.069878, 22.465693>,  <21.581760, 35.556934, 22.817526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182241, 36.069878, 22.465693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426317, 36.320576, 22.659542>,  <21.572763, 36.470993, 22.775852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426317, 36.320576, 22.659542>,  <21.182241, 36.069878, 22.465693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426317, 36.320576, 22.659542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368892, 0.316586, -0.873895,
		-0.701132, 0.712018, -0.038022,
		0.610191, 0.626741, 0.484626,
		21.609375, 36.508598, 22.804930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.043579, 36.809319, 22.333591>,  <21.182241, 36.069878, 22.465693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.043579, 36.809319, 22.333591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.427586, 36.787842, 22.443489>,  <21.657990, 36.774956, 22.509428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.427586, 36.787842, 22.443489>,  <21.043579, 36.809319, 22.333591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427586, 36.787842, 22.443489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275540, 0.354564, -0.893511,
		-0.049439, 0.933489, 0.355182,
		0.960017, -0.053692, 0.274743,
		21.715591, 36.771732, 22.525911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287222, 37.341850, 21.927458>,  <21.043579, 36.809319, 22.333591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287222, 37.341850, 21.927458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.616465, 37.157921, 22.060760>,  <21.814011, 37.047565, 22.140743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.616465, 37.157921, 22.060760>,  <21.287222, 37.341850, 21.927458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.616465, 37.157921, 22.060760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465026, 0.208921, -0.860293,
		0.325955, 0.863086, 0.385792,
		0.823107, -0.459820, 0.333259,
		21.863396, 37.019974, 22.160738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899782, 37.863194, 21.828995>,  <21.287222, 37.341850, 21.927458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899782, 37.863194, 21.828995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056301, 37.496094, 21.856178>,  <22.150213, 37.275833, 21.872488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056301, 37.496094, 21.856178>,  <21.899782, 37.863194, 21.828995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056301, 37.496094, 21.856178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584585, 0.190856, -0.788565,
		0.710736, 0.348291, 0.611185,
		0.391299, -0.917751, 0.067958,
		22.173691, 37.220768, 21.876566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709436, 37.831932, 21.670744>,  <21.899782, 37.863194, 21.828995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709436, 37.831932, 21.670744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565397, 37.462444, 21.618484>,  <22.478973, 37.240749, 21.587130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565397, 37.462444, 21.618484>,  <22.709436, 37.831932, 21.670744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565397, 37.462444, 21.618484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557941, -0.101002, -0.823712,
		0.747685, -0.369509, 0.551753,
		-0.360097, -0.923722, -0.130646,
		22.457369, 37.185329, 21.579290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269096, 37.389771, 21.515251>,  <22.709436, 37.831932, 21.670744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269096, 37.389771, 21.515251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954231, 37.201099, 21.356304>,  <22.765312, 37.087898, 21.260937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954231, 37.201099, 21.356304>,  <23.269096, 37.389771, 21.515251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954231, 37.201099, 21.356304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540207, -0.216423, -0.813227,
		0.297579, -0.854801, 0.425161,
		-0.787162, -0.471674, -0.397367,
		22.718082, 37.059597, 21.237095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.548302, 36.815472, 21.200672>,  <23.269096, 37.389771, 21.515251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.548302, 36.815472, 21.200672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185568, 36.852642, 21.036224>,  <22.967928, 36.874943, 20.937555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185568, 36.852642, 21.036224>,  <23.548302, 36.815472, 21.200672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185568, 36.852642, 21.036224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396454, -0.143098, -0.906834,
		-0.143098, -0.985336, 0.092925,
		0.906834, -0.092925, 0.411117,
		22.913517, 36.880520, 20.912889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.620497, 36.415882, 20.648300>,  <23.548302, 36.815472, 21.200672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.620497, 36.415882, 20.648300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294800, 36.624908, 20.547157>,  <23.099382, 36.750324, 20.486471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294800, 36.624908, 20.547157>,  <23.620497, 36.415882, 20.648300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.294800, 36.624908, 20.547157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342984, 0.081615, -0.935789,
		-0.468373, -0.848684, -0.245685,
		-0.814241, 0.522565, -0.252859,
		23.050528, 36.781677, 20.471300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.389347, 36.055580, 20.010910>,  <23.620497, 36.415882, 20.648300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.389347, 36.055580, 20.010910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238634, 36.425762, 19.995083>,  <23.148207, 36.647873, 19.985586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238634, 36.425762, 19.995083>,  <23.389347, 36.055580, 20.010910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238634, 36.425762, 19.995083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313916, 0.087381, -0.945421,
		-0.871489, -0.368638, -0.323439,
		-0.376780, 0.925457, -0.039570,
		23.125601, 36.703400, 19.983212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.169460, 36.146957, 19.310423>,  <23.389347, 36.055580, 20.010910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.169460, 36.146957, 19.310423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.198051, 36.514011, 19.466797>,  <23.215206, 36.734245, 19.560621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.198051, 36.514011, 19.466797>,  <23.169460, 36.146957, 19.310423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.198051, 36.514011, 19.466797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359212, 0.341958, -0.868350,
		-0.930515, 0.202497, -0.305184,
		0.071478, 0.917638, 0.390936,
		23.219494, 36.789303, 19.584078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.844704, 36.566532, 18.801035>,  <23.169460, 36.146957, 19.310423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.844704, 36.566532, 18.801035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.046068, 36.826904, 19.028320>,  <23.166887, 36.983128, 19.164692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.046068, 36.826904, 19.028320>,  <22.844704, 36.566532, 18.801035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.046068, 36.826904, 19.028320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521032, 0.295912, -0.800601,
		-0.689278, 0.699087, -0.190191,
		0.503410, 0.650933, 0.568212,
		23.197090, 37.022182, 19.198784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711493, 37.287346, 18.626347>,  <22.844704, 36.566532, 18.801035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711493, 37.287346, 18.626347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064190, 37.306759, 18.814037>,  <23.275808, 37.318405, 18.926653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064190, 37.306759, 18.814037>,  <22.711493, 37.287346, 18.626347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064190, 37.306759, 18.814037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422990, 0.358998, -0.831986,
		-0.208829, 0.932076, 0.296016,
		0.881743, 0.048531, 0.469228,
		23.328712, 37.321320, 18.954805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053036, 37.747082, 18.265312>,  <22.711493, 37.287346, 18.626347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053036, 37.747082, 18.265312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364431, 37.579536, 18.452290>,  <23.551270, 37.479008, 18.564476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364431, 37.579536, 18.452290>,  <23.053036, 37.747082, 18.265312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.364431, 37.579536, 18.452290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562804, 0.136155, -0.815299,
		0.277858, 0.897781, 0.341736,
		0.778490, -0.418868, 0.467444,
		23.597979, 37.453876, 18.592524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588741, 38.183483, 18.019667>,  <23.053036, 37.747082, 18.265312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588741, 38.183483, 18.019667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775867, 37.855644, 18.151978>,  <23.888144, 37.658943, 18.231365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775867, 37.855644, 18.151978>,  <23.588741, 38.183483, 18.019667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775867, 37.855644, 18.151978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598809, 0.018653, -0.800674,
		0.650057, 0.572643, 0.499506,
		0.467818, -0.819593, 0.330778,
		23.916212, 37.609768, 18.251211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249214, 38.346962, 17.827354>,  <23.588741, 38.183483, 18.019667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249214, 38.346962, 17.827354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.270332, 37.962399, 17.935360>,  <24.283003, 37.731659, 18.000164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.270332, 37.962399, 17.935360>,  <24.249214, 38.346962, 17.827354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270332, 37.962399, 17.935360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764381, -0.135089, -0.630454,
		0.642599, 0.239679, 0.727750,
		0.052795, -0.961408, 0.270014,
		24.286171, 37.673977, 18.016365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939949, 38.112019, 17.832132>,  <24.249214, 38.346962, 17.827354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939949, 38.112019, 17.832132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.753515, 37.765022, 17.762589>,  <24.641655, 37.556824, 17.720861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.753515, 37.765022, 17.762589>,  <24.939949, 38.112019, 17.832132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753515, 37.765022, 17.762589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658571, -0.208945, -0.722929,
		0.590806, -0.451445, 0.668689,
		-0.466082, -0.867490, -0.173862,
		24.613691, 37.504776, 17.710430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377672, 37.499378, 17.897629>,  <24.939949, 38.112019, 17.832132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377672, 37.499378, 17.897629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085878, 37.396755, 17.644005>,  <24.910803, 37.335182, 17.491831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085878, 37.396755, 17.644005>,  <25.377672, 37.499378, 17.897629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085878, 37.396755, 17.644005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683754, -0.248793, -0.685990,
		0.018247, -0.933959, 0.356913,
		-0.729484, -0.256558, -0.634059,
		24.867033, 37.319786, 17.453787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591356, 36.774883, 17.747669>,  <25.377672, 37.499378, 17.897629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591356, 36.774883, 17.747669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.338829, 36.879574, 17.455658>,  <25.187313, 36.942387, 17.280451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.338829, 36.879574, 17.455658>,  <25.591356, 36.774883, 17.747669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338829, 36.879574, 17.455658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640537, -0.354715, -0.681094,
		-0.437209, -0.897596, 0.056295,
		-0.631317, 0.261722, -0.730028,
		25.149435, 36.958092, 17.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536226, 36.110214, 17.271872>,  <25.591356, 36.774883, 17.747669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536226, 36.110214, 17.271872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.394045, 36.405949, 17.043125>,  <25.308735, 36.583389, 16.905878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.394045, 36.405949, 17.043125>,  <25.536226, 36.110214, 17.271872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394045, 36.405949, 17.043125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567252, -0.315635, -0.760657,
		-0.742884, -0.594772, -0.307197,
		-0.355455, 0.739338, -0.571866,
		25.287409, 36.627750, 16.871565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<24.846174, 27.108425, 25.165552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071079, 27.227917, 25.473999>,  <25.206022, 27.299612, 25.659067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071079, 27.227917, 25.473999>,  <24.846174, 27.108425, 25.165552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071079, 27.227917, 25.473999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009626, 0.934774, -0.355112,
		-0.826904, 0.192243, 0.528462,
		0.562261, 0.298730, 0.771118,
		25.239758, 27.317535, 25.705334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486704, 27.690331, 25.463772>,  <24.846174, 27.108425, 25.165552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486704, 27.690331, 25.463772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875813, 27.698223, 25.556141>,  <25.109278, 27.702959, 25.611563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875813, 27.698223, 25.556141>,  <24.486704, 27.690331, 25.463772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875813, 27.698223, 25.556141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043290, 0.963363, -0.264683,
		-0.227687, 0.267473, 0.936278,
		0.972772, 0.019733, 0.230924,
		25.167645, 27.704144, 25.625418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628380, 28.339241, 25.803604>,  <24.486704, 27.690331, 25.463772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628380, 28.339241, 25.803604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999207, 28.242371, 25.689137>,  <25.221703, 28.184248, 25.620457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999207, 28.242371, 25.689137>,  <24.628380, 28.339241, 25.803604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999207, 28.242371, 25.689137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240875, 0.969718, -0.040312,
		0.287266, -0.031559, 0.957331,
		0.927069, -0.242178, -0.286169,
		25.277327, 28.169718, 25.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141594, 28.792131, 26.145374>,  <24.628380, 28.339241, 25.803604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141594, 28.792131, 26.145374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367245, 28.642406, 25.850986>,  <25.502634, 28.552572, 25.674353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367245, 28.642406, 25.850986>,  <25.141594, 28.792131, 26.145374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367245, 28.642406, 25.850986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467536, 0.879489, -0.088935,
		0.680568, -0.293923, 0.671146,
		0.564125, -0.374311, -0.735972,
		25.536482, 28.530113, 25.630196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774408, 29.155651, 26.269701>,  <25.141594, 28.792131, 26.145374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774408, 29.155651, 26.269701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795017, 29.000195, 25.901722>,  <25.807383, 28.906921, 25.680935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795017, 29.000195, 25.901722>,  <25.774408, 29.155651, 26.269701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795017, 29.000195, 25.901722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366108, 0.864390, -0.344664,
		0.929145, -0.319042, 0.186821,
		0.051524, -0.388639, -0.919948,
		25.810474, 28.883602, 25.625738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483530, 29.266045, 26.010521>,  <25.774408, 29.155651, 26.269701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483530, 29.266045, 26.010521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254761, 29.209442, 25.687317>,  <26.117498, 29.175482, 25.493395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254761, 29.209442, 25.687317>,  <26.483530, 29.266045, 26.010521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254761, 29.209442, 25.687317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220387, 0.922288, -0.317513,
		0.790146, -0.359669, -0.496293,
		-0.571925, -0.141505, -0.808009,
		26.083183, 29.166990, 25.444914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969095, 29.477407, 25.426516>,  <26.483530, 29.266045, 26.010521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969095, 29.477407, 25.426516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592476, 29.504593, 25.294533>,  <26.366505, 29.520905, 25.215343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592476, 29.504593, 25.294533>,  <26.969095, 29.477407, 25.426516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592476, 29.504593, 25.294533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146554, 0.964538, -0.219519,
		0.303337, -0.255044, -0.918118,
		-0.941546, 0.067965, -0.329957,
		26.310013, 29.524982, 25.195545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910551, 29.758600, 24.718655>,  <26.969095, 29.477407, 25.426516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910551, 29.758600, 24.718655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539829, 29.848164, 24.839249>,  <26.317396, 29.901901, 24.911606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539829, 29.848164, 24.839249>,  <26.910551, 29.758600, 24.718655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539829, 29.848164, 24.839249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078501, 0.900585, -0.427533,
		-0.367242, -0.372574, -0.852245,
		-0.926807, 0.223910, 0.301485,
		26.261787, 29.915337, 24.929695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484743, 30.033424, 24.148615>,  <26.910551, 29.758600, 24.718655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484743, 30.033424, 24.148615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316097, 30.162132, 24.487720>,  <26.214909, 30.239357, 24.691183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316097, 30.162132, 24.487720>,  <26.484743, 30.033424, 24.148615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316097, 30.162132, 24.487720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030755, 0.939459, -0.341279,
		-0.906253, -0.117816, -0.405986,
		-0.421615, 0.321771, 0.847764,
		26.189613, 30.258663, 24.742050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050863, 30.513397, 23.947498>,  <26.484743, 30.033424, 24.148615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050863, 30.513397, 23.947498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085882, 30.597389, 24.337009>,  <26.106894, 30.647785, 24.570717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085882, 30.597389, 24.337009>,  <26.050863, 30.513397, 23.947498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085882, 30.597389, 24.337009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078775, 0.975929, -0.203363,
		-0.993041, -0.058906, 0.101981,
		0.087547, 0.209982, 0.973778,
		26.112146, 30.660383, 24.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877485, 31.246908, 24.041960>,  <26.050863, 30.513397, 23.947498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877485, 31.246908, 24.041960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006796, 31.171059, 24.412804>,  <26.084381, 31.125549, 24.635311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006796, 31.171059, 24.412804>,  <25.877485, 31.246908, 24.041960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006796, 31.171059, 24.412804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063055, 0.973223, 0.221044,
		-0.944202, -0.129917, 0.302661,
		0.323274, -0.189626, 0.927111,
		26.103779, 31.114170, 24.690937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369623, 31.666115, 24.511324>,  <25.877485, 31.246908, 24.041960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369623, 31.666115, 24.511324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749426, 31.611561, 24.624344>,  <25.977308, 31.578829, 24.692156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749426, 31.611561, 24.624344>,  <25.369623, 31.666115, 24.511324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749426, 31.611561, 24.624344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103359, 0.986278, 0.128736,
		-0.296230, -0.093032, 0.950575,
		0.949508, -0.136386, 0.282549,
		26.034279, 31.570644, 24.709108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566078, 32.115665, 24.984005>,  <25.369623, 31.666115, 24.511324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566078, 32.115665, 24.984005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937531, 32.027596, 24.864559>,  <26.160402, 31.974754, 24.792892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937531, 32.027596, 24.864559>,  <25.566078, 32.115665, 24.984005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937531, 32.027596, 24.864559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225762, 0.974049, -0.016103,
		0.294410, -0.052462, 0.954238,
		0.928630, -0.220171, -0.298614,
		26.216120, 31.961544, 24.774975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477787, 32.702877, 24.403711>,  <25.566078, 32.115665, 24.984005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477787, 32.702877, 24.403711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686693, 32.547245, 24.100170>,  <25.812037, 32.453865, 23.918045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686693, 32.547245, 24.100170>,  <25.477787, 32.702877, 24.403711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686693, 32.547245, 24.100170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119066, -0.914407, 0.386888,
		-0.844429, -0.111705, -0.523891,
		0.522267, -0.389077, -0.758852,
		25.843372, 32.430523, 23.872515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396225, 32.930462, 25.180857>,  <25.477787, 32.702877, 24.403711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396225, 32.930462, 25.180857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461679, 33.212555, 25.456791>,  <25.500952, 33.381809, 25.622353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461679, 33.212555, 25.456791>,  <25.396225, 32.930462, 25.180857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461679, 33.212555, 25.456791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508309, -0.659567, 0.553708,
		0.845485, 0.260045, -0.466403,
		0.163635, 0.705229, 0.689838,
		25.510771, 33.424122, 25.663742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091181, 32.736336, 25.416103>,  <25.396225, 32.930462, 25.180857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091181, 32.736336, 25.416103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962072, 32.986813, 25.699993>,  <25.884607, 33.137096, 25.870327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962072, 32.986813, 25.699993>,  <26.091181, 32.736336, 25.416103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962072, 32.986813, 25.699993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576738, -0.464438, 0.672064,
		0.750461, 0.626247, -0.211241,
		-0.322770, 0.626189, 0.709723,
		25.865242, 33.174667, 25.912910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681610, 32.888802, 25.796272>,  <26.091181, 32.736336, 25.416103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681610, 32.888802, 25.796272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394081, 33.012600, 26.045273>,  <26.221563, 33.086880, 26.194674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394081, 33.012600, 26.045273>,  <26.681610, 32.888802, 25.796272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394081, 33.012600, 26.045273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486791, -0.415188, 0.768540,
		0.496314, 0.855471, 0.147787,
		-0.718824, 0.309496, 0.622499,
		26.178434, 33.105450, 26.232023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057358, 33.250252, 26.388020>,  <26.681610, 32.888802, 25.796272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057358, 33.250252, 26.388020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694155, 33.105461, 26.472393>,  <26.476233, 33.018585, 26.523018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694155, 33.105461, 26.472393>,  <27.057358, 33.250252, 26.388020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694155, 33.105461, 26.472393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386432, -0.529139, 0.755435,
		-0.161837, 0.767453, 0.620342,
		-0.908009, -0.361977, 0.210934,
		26.421753, 32.996868, 26.535673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035439, 33.196800, 27.138716>,  <27.057358, 33.250252, 26.388020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035439, 33.196800, 27.138716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731030, 32.961128, 27.030113>,  <26.548384, 32.819725, 26.964952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731030, 32.961128, 27.030113>,  <27.035439, 33.196800, 27.138716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731030, 32.961128, 27.030113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334050, -0.714672, 0.614535,
		-0.556107, 0.376979, 0.740697,
		-0.761023, -0.589177, -0.271504,
		26.502724, 32.784374, 26.948662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813719, 32.918217, 27.773581>,  <27.035439, 33.196800, 27.138716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813719, 32.918217, 27.773581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640430, 32.691795, 27.493038>,  <26.536457, 32.555943, 27.324713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640430, 32.691795, 27.493038>,  <26.813719, 32.918217, 27.773581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640430, 32.691795, 27.493038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346396, -0.822973, 0.450250,
		-0.832064, -0.047890, 0.552608,
		-0.433219, -0.566058, -0.701356,
		26.510466, 32.521976, 27.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172501, 32.413692, 27.968241>,  <26.813719, 32.918217, 27.773581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172501, 32.413692, 27.968241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360794, 32.257286, 27.651882>,  <26.473770, 32.163441, 27.462067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360794, 32.257286, 27.651882>,  <26.172501, 32.413692, 27.968241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360794, 32.257286, 27.651882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229866, -0.811112, 0.537829,
		-0.851807, -0.434972, -0.291932,
		0.470730, -0.391021, -0.790896,
		26.502014, 32.139980, 27.414614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127495, 31.663231, 28.125410>,  <26.172501, 32.413692, 27.968241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127495, 31.663231, 28.125410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370905, 31.672264, 27.808125>,  <26.516951, 31.677685, 27.617754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370905, 31.672264, 27.808125>,  <26.127495, 31.663231, 28.125410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370905, 31.672264, 27.808125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219562, -0.965362, 0.140955,
		-0.762553, -0.259935, -0.592407,
		0.608527, 0.022585, -0.793212,
		26.553463, 31.679039, 27.570162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973761, 31.019878, 27.702412>,  <26.127495, 31.663231, 28.125410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973761, 31.019878, 27.702412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338461, 31.147385, 27.598801>,  <26.557281, 31.223888, 27.536634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338461, 31.147385, 27.598801>,  <25.973761, 31.019878, 27.702412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338461, 31.147385, 27.598801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328397, -0.944518, -0.006417,
		-0.246702, -0.079213, -0.965848,
		0.911753, 0.318765, -0.259028,
		26.611986, 31.243013, 27.521091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137320, 30.630968, 27.186905>,  <25.973761, 31.019878, 27.702412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137320, 30.630968, 27.186905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465607, 30.762115, 27.374062>,  <26.662579, 30.840803, 27.486355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465607, 30.762115, 27.374062>,  <26.137320, 30.630968, 27.186905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465607, 30.762115, 27.374062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314405, -0.942978, 0.109283,
		0.477041, 0.057416, -0.877003,
		0.820720, 0.327867, 0.467891,
		26.711823, 30.860476, 27.514429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699913, 30.193163, 27.054007>,  <26.137320, 30.630968, 27.186905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699913, 30.193163, 27.054007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841448, 30.393612, 27.369900>,  <26.926369, 30.513882, 27.559435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841448, 30.393612, 27.369900>,  <26.699913, 30.193163, 27.054007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841448, 30.393612, 27.369900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346544, -0.854501, 0.386956,
		0.868739, 0.136759, -0.476014,
		0.353835, 0.501123, 0.789732,
		26.947598, 30.543949, 27.606819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452780, 30.009840, 27.203188>,  <26.699913, 30.193163, 27.054007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452780, 30.009840, 27.203188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314682, 30.154305, 27.549683>,  <27.231823, 30.240984, 27.757580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314682, 30.154305, 27.549683>,  <27.452780, 30.009840, 27.203188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314682, 30.154305, 27.549683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281260, -0.840751, 0.462634,
		0.895376, 0.403360, 0.188685,
		-0.345245, 0.361162, 0.866238,
		27.211109, 30.262653, 27.809553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941858, 29.873020, 27.725672>,  <27.452780, 30.009840, 27.203188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941858, 29.873020, 27.725672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623461, 29.958866, 27.952065>,  <27.432423, 30.010374, 28.087900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623461, 29.958866, 27.952065>,  <27.941858, 29.873020, 27.725672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623461, 29.958866, 27.952065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258829, -0.724560, 0.638764,
		0.547176, 0.654944, 0.521197,
		-0.795993, 0.214616, 0.565981,
		27.384663, 30.023251, 28.121859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219563, 30.023100, 28.280632>,  <27.941858, 29.873020, 27.725672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219563, 30.023100, 28.280632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844408, 29.911598, 28.363255>,  <27.619316, 29.844696, 28.412828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844408, 29.911598, 28.363255>,  <28.219563, 30.023100, 28.280632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844408, 29.911598, 28.363255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340564, -0.626055, 0.701478,
		-0.066227, 0.728252, 0.682102,
		-0.937886, -0.278757, 0.206554,
		27.563042, 29.827971, 28.425220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461317, 30.136278, 28.918087>,  <28.219563, 30.023100, 28.280632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461317, 30.136278, 28.918087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795797, 30.212826, 29.123669>,  <28.996485, 30.258755, 29.247019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795797, 30.212826, 29.123669>,  <28.461317, 30.136278, 28.918087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795797, 30.212826, 29.123669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327560, 0.577351, -0.747910,
		-0.439859, 0.793753, 0.420096,
		0.836199, 0.191369, 0.513955,
		29.046658, 30.270237, 29.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594667, 30.817219, 28.756586>,  <28.461317, 30.136278, 28.918087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594667, 30.817219, 28.756586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944208, 30.660824, 28.872181>,  <29.153933, 30.566988, 28.941538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944208, 30.660824, 28.872181>,  <28.594667, 30.817219, 28.756586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944208, 30.660824, 28.872181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448242, 0.417649, -0.790347,
		0.188318, 0.820183, 0.540219,
		0.873851, -0.390985, 0.288989,
		29.206364, 30.543528, 28.958878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074192, 31.360012, 28.640545>,  <28.594667, 30.817219, 28.756586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074192, 31.360012, 28.640545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319084, 31.049393, 28.700073>,  <29.466019, 30.863022, 28.735790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319084, 31.049393, 28.700073>,  <29.074192, 31.360012, 28.640545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319084, 31.049393, 28.700073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598097, 0.331727, -0.729546,
		0.517161, 0.535657, 0.667545,
		0.612229, -0.776549, 0.148819,
		29.502752, 30.816427, 28.744719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705359, 31.658369, 28.741539>,  <29.074192, 31.360012, 28.640545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705359, 31.658369, 28.741539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750853, 31.294281, 28.582260>,  <29.778149, 31.075829, 28.486692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750853, 31.294281, 28.582260>,  <29.705359, 31.658369, 28.741539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750853, 31.294281, 28.582260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535282, 0.393793, -0.747262,
		0.836981, -0.128159, 0.532013,
		0.113735, -0.910221, -0.398198,
		29.784973, 31.021215, 28.462801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360224, 31.622980, 28.796848>,  <29.705359, 31.658369, 28.741539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360224, 31.622980, 28.796848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254194, 31.338219, 28.536716>,  <30.190577, 31.167362, 28.380638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254194, 31.338219, 28.536716>,  <30.360224, 31.622980, 28.796848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254194, 31.338219, 28.536716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677609, 0.342303, -0.650904,
		0.685991, -0.613205, 0.391658,
		-0.265072, -0.711905, -0.650330,
		30.174673, 31.124647, 28.341618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957079, 31.663464, 28.440138>,  <30.360224, 31.622980, 28.796848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957079, 31.663464, 28.440138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713680, 31.432171, 28.222740>,  <30.567642, 31.293396, 28.092302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713680, 31.432171, 28.222740>,  <30.957079, 31.663464, 28.440138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713680, 31.432171, 28.222740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633961, 0.057733, -0.771207,
		0.477313, -0.813828, 0.331445,
		-0.608495, -0.578231, -0.543492,
		30.531132, 31.258701, 28.059692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462564, 31.381512, 28.007524>,  <30.957079, 31.663464, 28.440138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462564, 31.381512, 28.007524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102615, 31.308887, 27.848900>,  <30.886646, 31.265312, 27.753725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102615, 31.308887, 27.848900>,  <31.462564, 31.381512, 28.007524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102615, 31.308887, 27.848900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401627, 0.009574, -0.915753,
		0.170063, -0.983333, 0.064305,
		-0.899874, -0.181562, -0.396562,
		30.832653, 31.254419, 27.729931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594685, 30.866821, 27.449968>,  <31.462564, 31.381512, 28.007524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594685, 30.866821, 27.449968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259655, 31.046814, 27.326038>,  <31.058638, 31.154810, 27.251680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259655, 31.046814, 27.326038>,  <31.594685, 30.866821, 27.449968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259655, 31.046814, 27.326038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423275, 0.175933, -0.888755,
		-0.345414, -0.875537, -0.337822,
		-0.837572, 0.449980, -0.309823,
		31.008383, 31.181808, 27.233091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413574, 30.611715, 26.819904>,  <31.594685, 30.866821, 27.449968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413574, 30.611715, 26.819904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233868, 30.967911, 26.848709>,  <31.126043, 31.181629, 26.865992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233868, 30.967911, 26.848709>,  <31.413574, 30.611715, 26.819904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233868, 30.967911, 26.848709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340023, 0.244973, -0.907950,
		-0.826162, -0.383426, -0.412845,
		-0.449268, 0.890490, 0.072014,
		31.099087, 31.235058, 26.870314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995174, 30.725153, 26.197876>,  <31.413574, 30.611715, 26.819904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995174, 30.725153, 26.197876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085194, 31.076279, 26.367012>,  <31.139206, 31.286955, 26.468494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085194, 31.076279, 26.367012>,  <30.995174, 30.725153, 26.197876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085194, 31.076279, 26.367012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312501, 0.346019, -0.884655,
		-0.922873, 0.331230, -0.196446,
		0.225050, 0.877814, 0.422842,
		31.152708, 31.339622, 26.493864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852978, 31.102787, 25.652540>,  <30.995174, 30.725153, 26.197876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852978, 31.102787, 25.652540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055635, 31.359768, 25.882519>,  <31.177231, 31.513956, 26.020506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055635, 31.359768, 25.882519>,  <30.852978, 31.102787, 25.652540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055635, 31.359768, 25.882519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622413, 0.188901, -0.759551,
		-0.596583, 0.742679, -0.304164,
		0.506646, 0.642451, 0.574949,
		31.207630, 31.552504, 26.055004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854008, 31.697025, 25.321962>,  <30.852978, 31.102787, 25.652540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854008, 31.697025, 25.321962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190651, 31.728695, 25.535664>,  <31.392637, 31.747696, 25.663883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190651, 31.728695, 25.535664>,  <30.854008, 31.697025, 25.321962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190651, 31.728695, 25.535664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468294, 0.385824, -0.794884,
		-0.269062, 0.919169, 0.287636,
		0.841609, 0.079174, 0.534252,
		31.443134, 31.752447, 25.695940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.684198, 29.130791, 32.898506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.993753, 28.902908, 32.787849>,  <28.179487, 28.766178, 32.721455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.993753, 28.902908, 32.787849>,  <27.684198, 29.130791, 32.898506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993753, 28.902908, 32.787849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317867, 0.727211, -0.608379,
		0.547777, 0.382880, 0.743870,
		0.773887, -0.569708, -0.276644,
		28.225920, 28.731997, 32.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203653, 29.656488, 32.697388>,  <27.684198, 29.130791, 32.898506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203653, 29.656488, 32.697388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.369459, 29.336025, 32.524727>,  <28.468943, 29.143747, 32.421131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.369459, 29.336025, 32.524727>,  <28.203653, 29.656488, 32.697388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369459, 29.336025, 32.524727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376193, 0.582747, -0.720336,
		0.828648, 0.136203, 0.542947,
		0.414513, -0.801158, -0.431654,
		28.493813, 29.095678, 32.395229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865078, 29.982321, 32.418098>,  <28.203653, 29.656488, 32.697388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865078, 29.982321, 32.418098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.789927, 29.627903, 32.248569>,  <28.744835, 29.415253, 32.146851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.789927, 29.627903, 32.248569>,  <28.865078, 29.982321, 32.418098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789927, 29.627903, 32.248569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172613, 0.395004, -0.902317,
		0.966905, -0.242684, 0.078730,
		-0.187879, -0.886045, -0.423822,
		28.733562, 29.362089, 32.121422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466988, 29.665529, 32.144047>,  <28.865078, 29.982321, 32.418098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466988, 29.665529, 32.144047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.154568, 29.536213, 31.930340>,  <28.967115, 29.458622, 31.802114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.154568, 29.536213, 31.930340>,  <29.466988, 29.665529, 32.144047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154568, 29.536213, 31.930340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364792, 0.458190, -0.810548,
		0.506842, -0.827975, -0.239934,
		-0.781049, -0.323294, -0.534269,
		28.920252, 29.439224, 31.770060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805923, 29.602362, 31.444956>,  <29.466988, 29.665529, 32.144047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805923, 29.602362, 31.444956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.415537, 29.553452, 31.372807>,  <29.181305, 29.524105, 31.329517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.415537, 29.553452, 31.372807>,  <29.805923, 29.602362, 31.444956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415537, 29.553452, 31.372807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109438, 0.440755, -0.890931,
		0.188439, -0.889260, -0.416782,
		-0.975968, -0.122275, -0.180375,
		29.122746, 29.516769, 31.318693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750456, 29.149511, 30.925661>,  <29.805923, 29.602362, 31.444956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750456, 29.149511, 30.925661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.423012, 29.378883, 30.912663>,  <29.226545, 29.516506, 30.904863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.423012, 29.378883, 30.912663>,  <29.750456, 29.149511, 30.925661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423012, 29.378883, 30.912663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220357, 0.261313, -0.939765,
		-0.530399, -0.776461, -0.340272,
		-0.818608, 0.573432, -0.032498,
		29.177429, 29.550913, 30.902912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645847, 29.148075, 30.253624>,  <29.750456, 29.149511, 30.925661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645847, 29.148075, 30.253624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400124, 29.437332, 30.379917>,  <29.252689, 29.610888, 30.455692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400124, 29.437332, 30.379917>,  <29.645847, 29.148075, 30.253624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400124, 29.437332, 30.379917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064645, 0.352665, -0.933514,
		-0.786413, -0.593876, -0.169897,
		-0.614309, 0.723145, 0.315732,
		29.215832, 29.654276, 30.474636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992958, 29.094166, 29.896290>,  <29.645847, 29.148075, 30.253624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992958, 29.094166, 29.896290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.073559, 29.463345, 30.027477>,  <29.121920, 29.684853, 30.106190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.073559, 29.463345, 30.027477>,  <28.992958, 29.094166, 29.896290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073559, 29.463345, 30.027477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053297, 0.324008, -0.944552,
		-0.978037, 0.207808, 0.016097,
		0.201501, 0.922949, 0.327967,
		29.134008, 29.740229, 30.125868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598742, 29.555403, 29.409822>,  <28.992958, 29.094166, 29.896290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598742, 29.555403, 29.409822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.834787, 29.816681, 29.599602>,  <28.976414, 29.973448, 29.713470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.834787, 29.816681, 29.599602>,  <28.598742, 29.555403, 29.409822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834787, 29.816681, 29.599602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125029, 0.506651, -0.853037,
		-0.797581, 0.562708, 0.217312,
		0.590112, 0.653195, 0.474450,
		29.011822, 30.012640, 29.741938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995188, 29.876406, 29.528645>,  <28.598742, 29.555403, 29.409822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995188, 29.876406, 29.528645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732712, 29.721554, 29.269554>,  <27.575226, 29.628643, 29.114100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732712, 29.721554, 29.269554>,  <27.995188, 29.876406, 29.528645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732712, 29.721554, 29.269554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231235, -0.713920, 0.660945,
		-0.718295, 0.583481, 0.378948,
		-0.656188, -0.387128, -0.647727,
		27.535856, 29.605415, 29.075235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290594, 29.793594, 29.865326>,  <27.995188, 29.876406, 29.528645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290594, 29.793594, 29.865326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.303749, 29.539478, 29.556698>,  <27.311642, 29.387009, 29.371521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.303749, 29.539478, 29.556698>,  <27.290594, 29.793594, 29.865326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303749, 29.539478, 29.556698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239410, -0.754521, 0.611048,
		-0.970361, 0.164625, -0.176911,
		0.032889, -0.635292, -0.771571,
		27.313616, 29.348890, 29.325226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824118, 29.230503, 30.092461>,  <27.290594, 29.793594, 29.865326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824118, 29.230503, 30.092461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011166, 29.071518, 29.776649>,  <27.123394, 28.976128, 29.587162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011166, 29.071518, 29.776649>,  <26.824118, 29.230503, 30.092461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011166, 29.071518, 29.776649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041705, -0.902129, 0.429447,
		-0.882944, -0.167892, -0.438432,
		0.467623, -0.397463, -0.789527,
		27.151451, 28.952278, 29.539791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449192, 28.625782, 29.891588>,  <26.824118, 29.230503, 30.092461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449192, 28.625782, 29.891588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.822184, 28.558956, 29.763481>,  <27.045979, 28.518860, 29.686617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.822184, 28.558956, 29.763481>,  <26.449192, 28.625782, 29.891588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822184, 28.558956, 29.763481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030702, -0.920068, 0.390554,
		-0.359915, -0.354351, -0.863074,
		0.932480, -0.167064, -0.320267,
		27.101927, 28.508837, 29.667400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378330, 27.945044, 29.482506>,  <26.449192, 28.625782, 29.891588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378330, 27.945044, 29.482506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.763401, 27.999977, 29.575794>,  <26.994444, 28.032938, 29.631767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.763401, 27.999977, 29.575794>,  <26.378330, 27.945044, 29.482506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763401, 27.999977, 29.575794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044337, -0.930078, 0.364678,
		0.266996, -0.340726, -0.901454,
		0.962677, 0.137335, 0.233220,
		27.052204, 28.041178, 29.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644726, 27.233923, 29.376749>,  <26.378330, 27.945044, 29.482506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644726, 27.233923, 29.376749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.966122, 27.394279, 29.552788>,  <27.158960, 27.490494, 29.658411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.966122, 27.394279, 29.552788>,  <26.644726, 27.233923, 29.376749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966122, 27.394279, 29.552788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106794, -0.824342, 0.555927,
		0.585659, -0.399683, -0.705165,
		0.803492, 0.400891, 0.440099,
		27.207169, 27.514547, 29.684818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188704, 26.667967, 29.444380>,  <26.644726, 27.233923, 29.376749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188704, 26.667967, 29.444380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.274429, 26.956467, 29.707855>,  <27.325865, 27.129566, 29.865940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.274429, 26.956467, 29.707855>,  <27.188704, 26.667967, 29.444380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274429, 26.956467, 29.707855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005609, -0.675255, 0.737563,
		0.976749, -0.154375, -0.148762,
		0.214313, 0.721249, 0.658688,
		27.338724, 27.172842, 29.905462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771263, 26.403103, 29.756924>,  <27.188704, 26.667967, 29.444380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771263, 26.403103, 29.756924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.616894, 26.674809, 30.006615>,  <27.524271, 26.837831, 30.156429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.616894, 26.674809, 30.006615>,  <27.771263, 26.403103, 29.756924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616894, 26.674809, 30.006615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107861, -0.705230, 0.700726,
		0.916203, 0.203097, 0.345431,
		-0.385924, 0.679266, 0.624228,
		27.501116, 26.878588, 30.193884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075485, 26.240759, 30.385294>,  <27.771263, 26.403103, 29.756924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075485, 26.240759, 30.385294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.764750, 26.477306, 30.471825>,  <27.578308, 26.619236, 30.523743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.764750, 26.477306, 30.471825>,  <28.075485, 26.240759, 30.385294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764750, 26.477306, 30.471825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332340, -0.676846, 0.656833,
		0.534853, 0.438361, 0.722338,
		-0.776842, 0.591371, 0.216328,
		27.531696, 26.654718, 30.536722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982182, 26.093323, 31.056923>,  <28.075485, 26.240759, 30.385294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982182, 26.093323, 31.056923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.635305, 26.262402, 30.951618>,  <27.427179, 26.363850, 30.888435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.635305, 26.262402, 30.951618>,  <27.982182, 26.093323, 31.056923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635305, 26.262402, 30.951618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467548, -0.509153, 0.722608,
		0.171403, 0.749727, 0.639164,
		-0.867191, 0.422696, -0.263263,
		27.375149, 26.389210, 30.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721708, 26.376905, 31.686567>,  <27.982182, 26.093323, 31.056923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721708, 26.376905, 31.686567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.414825, 26.311691, 31.438435>,  <27.230696, 26.272562, 31.289555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.414825, 26.311691, 31.438435>,  <27.721708, 26.376905, 31.686567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414825, 26.311691, 31.438435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464048, -0.526561, 0.712315,
		-0.442776, 0.834357, 0.328325,
		-0.767209, -0.163037, -0.620330,
		27.184664, 26.262779, 31.252335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199490, 26.367546, 32.169193>,  <27.721708, 26.376905, 31.686567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199490, 26.367546, 32.169193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.068335, 26.188572, 31.836376>,  <26.989641, 26.081188, 31.636686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.068335, 26.188572, 31.836376>,  <27.199490, 26.367546, 32.169193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068335, 26.188572, 31.836376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509947, -0.657574, 0.554572,
		-0.795263, 0.606134, -0.012558,
		-0.327888, -0.447435, -0.832041,
		26.969969, 26.054342, 31.586763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531616, 26.374239, 32.285339>,  <27.199490, 26.367546, 32.169193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531616, 26.374239, 32.285339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.572495, 26.075920, 32.022026>,  <26.597021, 25.896929, 31.864038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.572495, 26.075920, 32.022026>,  <26.531616, 26.374239, 32.285339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572495, 26.075920, 32.022026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610167, -0.569639, 0.550642,
		-0.785654, 0.345390, -0.513278,
		0.102197, -0.745800, -0.658285,
		26.603153, 25.852180, 31.824541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849405, 26.141354, 32.174728>,  <26.531616, 26.374239, 32.285339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849405, 26.141354, 32.174728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.075609, 25.824718, 32.082130>,  <26.211332, 25.634737, 32.026573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.075609, 25.824718, 32.082130>,  <25.849405, 26.141354, 32.174728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075609, 25.824718, 32.082130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580501, -0.581423, 0.570058,
		-0.585875, -0.187950, -0.788306,
		0.565481, -0.791595, -0.231536,
		26.245262, 25.587242, 32.012684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.004723, 24.790796, 31.683870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619324, 24.881138, 31.741371>,  <30.388084, 24.935343, 31.775871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619324, 24.881138, 31.741371>,  <31.004723, 24.790796, 31.683870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619324, 24.881138, 31.741371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083989, 0.764841, -0.638720,
		-0.254206, -0.603331, -0.755891,
		-0.963496, 0.225853, 0.143754,
		30.330275, 24.948895, 31.784498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728498, 24.956257, 30.978924>,  <31.004723, 24.790796, 31.683870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728498, 24.956257, 30.978924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.484478, 25.136818, 31.239407>,  <30.338066, 25.245155, 31.395697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.484478, 25.136818, 31.239407>,  <30.728498, 24.956257, 30.978924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484478, 25.136818, 31.239407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102686, 0.769885, -0.629867,
		-0.785679, -0.451122, -0.423317,
		-0.610052, 0.451405, 0.651206,
		30.301462, 25.272240, 31.434769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165150, 25.110466, 30.570515>,  <30.728498, 24.956257, 30.978924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165150, 25.110466, 30.570515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.150614, 25.357620, 30.884686>,  <30.141891, 25.505913, 31.073189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.150614, 25.357620, 30.884686>,  <30.165150, 25.110466, 30.570515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150614, 25.357620, 30.884686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096256, 0.780129, -0.618170,
		-0.994693, -0.098066, 0.031126,
		-0.036339, 0.617885, 0.785428,
		30.139711, 25.542986, 31.120314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656942, 25.497250, 30.404613>,  <30.165150, 25.110466, 30.570515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656942, 25.497250, 30.404613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.851280, 25.689442, 30.696667>,  <29.967882, 25.804756, 30.871899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.851280, 25.689442, 30.696667>,  <29.656942, 25.497250, 30.404613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851280, 25.689442, 30.696667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035618, 0.845540, -0.532723,
		-0.873319, 0.232815, 0.427915,
		0.485845, 0.480478, 0.730134,
		29.997034, 25.833586, 30.915707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260571, 26.080240, 30.749281>,  <29.656942, 25.497250, 30.404613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260571, 26.080240, 30.749281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.648951, 26.160831, 30.800919>,  <29.881979, 26.209187, 30.831902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.648951, 26.160831, 30.800919>,  <29.260571, 26.080240, 30.749281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648951, 26.160831, 30.800919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124949, 0.886990, -0.444564,
		-0.204075, 0.415518, 0.886396,
		0.970949, 0.201479, 0.129094,
		29.940235, 26.221275, 30.839647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259296, 26.667210, 30.517614>,  <29.260571, 26.080240, 30.749281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259296, 26.667210, 30.517614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.648787, 26.640617, 30.604733>,  <29.882481, 26.624662, 30.657003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.648787, 26.640617, 30.604733>,  <29.259296, 26.667210, 30.517614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648787, 26.640617, 30.604733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170212, 0.847839, -0.502192,
		-0.151272, 0.526070, 0.836879,
		0.973727, -0.066479, 0.217798,
		29.940905, 26.620674, 30.670073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532829, 27.325672, 30.876270>,  <29.259296, 26.667210, 30.517614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532829, 27.325672, 30.876270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.816343, 27.132084, 30.670982>,  <29.986452, 27.015930, 30.547810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.816343, 27.132084, 30.670982>,  <29.532829, 27.325672, 30.876270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816343, 27.132084, 30.670982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202365, 0.836454, -0.509306,
		0.675775, 0.257130, 0.690806,
		0.708786, -0.483971, -0.513220,
		30.028978, 26.986893, 30.517015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961735, 27.875895, 30.775763>,  <29.532829, 27.325672, 30.876270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961735, 27.875895, 30.775763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080658, 27.598885, 30.512852>,  <30.152012, 27.432678, 30.355104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080658, 27.598885, 30.512852>,  <29.961735, 27.875895, 30.775763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080658, 27.598885, 30.512852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542956, 0.688891, -0.480238,
		0.785370, -0.214093, 0.580825,
		0.297310, -0.692527, -0.657277,
		30.169851, 27.391127, 30.315668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534397, 28.177696, 30.620653>,  <29.961735, 27.875895, 30.775763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534397, 28.177696, 30.620653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464405, 27.897507, 30.343895>,  <30.422409, 27.729393, 30.177839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464405, 27.897507, 30.343895>,  <30.534397, 28.177696, 30.620653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464405, 27.897507, 30.343895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445324, 0.570439, -0.690134,
		0.878105, -0.428878, 0.212121,
		-0.174981, -0.700473, -0.691895,
		30.411911, 27.687365, 30.136326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136166, 28.107849, 30.262592>,  <30.534397, 28.177696, 30.620653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136166, 28.107849, 30.262592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851681, 27.974812, 30.014862>,  <30.680990, 27.894989, 29.866224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851681, 27.974812, 30.014862>,  <31.136166, 28.107849, 30.262592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851681, 27.974812, 30.014862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497042, 0.385096, -0.777593,
		0.497123, -0.860861, -0.108570,
		-0.711209, -0.332596, -0.619324,
		30.638317, 27.875034, 29.829065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406839, 27.759041, 29.762980>,  <31.136166, 28.107849, 30.262592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406839, 27.759041, 29.762980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061312, 27.791435, 29.564079>,  <30.853994, 27.810871, 29.444738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061312, 27.791435, 29.564079>,  <31.406839, 27.759041, 29.762980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061312, 27.791435, 29.564079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494238, 0.327632, -0.805224,
		0.097704, -0.941328, -0.323041,
		-0.863819, 0.080985, -0.497251,
		30.802166, 27.815731, 29.414904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536369, 27.494715, 29.058979>,  <31.406839, 27.759041, 29.762980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536369, 27.494715, 29.058979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212255, 27.728470, 29.041393>,  <31.017788, 27.868723, 29.030842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212255, 27.728470, 29.041393>,  <31.536369, 27.494715, 29.058979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212255, 27.728470, 29.041393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287112, 0.330458, -0.899091,
		-0.510891, -0.741139, -0.435549,
		-0.810282, 0.584389, -0.043962,
		30.969172, 27.903786, 29.028204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244055, 27.395353, 28.413595>,  <31.536369, 27.494715, 29.058979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244055, 27.395353, 28.413595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132761, 27.753319, 28.553146>,  <31.065985, 27.968098, 28.636877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132761, 27.753319, 28.553146>,  <31.244055, 27.395353, 28.413595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132761, 27.753319, 28.553146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369298, 0.434969, -0.821231,
		-0.886681, -0.099656, -0.451514,
		-0.278235, 0.894914, 0.348876,
		31.049290, 28.021793, 28.657808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066465, 27.655653, 27.820414>,  <31.244055, 27.395353, 28.413595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066465, 27.655653, 27.820414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100853, 27.980324, 28.051510>,  <31.121487, 28.175127, 28.190168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100853, 27.980324, 28.051510>,  <31.066465, 27.655653, 27.820414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100853, 27.980324, 28.051510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261689, 0.541131, -0.799184,
		-0.961316, 0.219895, -0.165887,
		0.085970, 0.811679, 0.577742,
		31.126644, 28.223827, 28.224833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381205, 27.445709, 27.641060>,  <31.066465, 27.655653, 27.820414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381205, 27.445709, 27.641060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.077442, 27.327438, 27.409241>,  <29.895184, 27.256475, 27.270149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.077442, 27.327438, 27.409241>,  <30.381205, 27.445709, 27.641060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077442, 27.327438, 27.409241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033795, -0.871639, 0.488982,
		-0.649736, 0.390923, 0.651937,
		-0.759408, -0.295677, -0.579546,
		29.849619, 27.238735, 27.235376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712263, 27.240267, 28.117723>,  <30.381205, 27.445709, 27.641060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712263, 27.240267, 28.117723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675817, 27.063984, 27.760517>,  <29.653950, 26.958214, 27.546194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675817, 27.063984, 27.760517>,  <29.712263, 27.240267, 28.117723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675817, 27.063984, 27.760517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214111, -0.867103, 0.449765,
		-0.972551, 0.232183, -0.015357,
		-0.091112, -0.440707, -0.893015,
		29.648483, 26.931772, 27.492613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016293, 26.902592, 28.054136>,  <29.712263, 27.240267, 28.117723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016293, 26.902592, 28.054136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272110, 26.731785, 27.798435>,  <29.425600, 26.629301, 27.645014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272110, 26.731785, 27.798435>,  <29.016293, 26.902592, 28.054136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272110, 26.731785, 27.798435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267770, -0.903205, 0.335441,
		-0.720615, -0.043355, -0.691979,
		0.639541, -0.427015, -0.639254,
		29.463972, 26.603680, 27.606659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677879, 26.312561, 27.947485>,  <29.016293, 26.902592, 28.054136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677879, 26.312561, 27.947485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.031116, 26.230354, 27.778767>,  <29.243059, 26.181030, 27.677536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.031116, 26.230354, 27.778767>,  <28.677879, 26.312561, 27.947485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031116, 26.230354, 27.778767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084872, -0.954106, 0.287192,
		-0.461461, -0.217818, -0.860005,
		0.883092, -0.205519, -0.421796,
		29.296043, 26.168699, 27.652227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557755, 25.711662, 27.423122>,  <28.677879, 26.312561, 27.947485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557755, 25.711662, 27.423122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.934303, 25.729111, 27.556938>,  <29.160233, 25.739580, 27.637228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.934303, 25.729111, 27.556938>,  <28.557755, 25.711662, 27.423122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934303, 25.729111, 27.556938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068643, -0.946101, 0.316515,
		0.330314, -0.320922, -0.887639,
		0.941372, 0.043619, 0.334539,
		29.216715, 25.742197, 27.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920427, 25.204142, 27.227694>,  <28.557755, 25.711662, 27.423122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920427, 25.204142, 27.227694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149012, 25.310783, 27.538139>,  <29.286163, 25.374769, 27.724407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149012, 25.310783, 27.538139>,  <28.920427, 25.204142, 27.227694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149012, 25.310783, 27.538139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174348, -0.884721, 0.432287,
		0.801894, -0.382350, -0.459102,
		0.571462, 0.266604, 0.776114,
		29.320450, 25.390764, 27.770973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224028, 24.600613, 27.465944>,  <28.920427, 25.204142, 27.227694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224028, 24.600613, 27.465944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.312803, 24.827751, 27.783005>,  <29.366070, 24.964033, 27.973242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.312803, 24.827751, 27.783005>,  <29.224028, 24.600613, 27.465944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312803, 24.827751, 27.783005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153906, -0.782333, 0.603546,
		0.962837, -0.255945, -0.086237,
		0.221941, 0.567844, 0.792651,
		29.379385, 24.998104, 28.020800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675455, 24.232336, 27.902164>,  <29.224028, 24.600613, 27.465944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675455, 24.232336, 27.902164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.525417, 24.517372, 28.139320>,  <29.435394, 24.688393, 28.281614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.525417, 24.517372, 28.139320>,  <29.675455, 24.232336, 27.902164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525417, 24.517372, 28.139320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155028, -0.678805, 0.717767,
		0.913931, 0.177317, 0.365088,
		-0.375096, 0.712588, 0.592892,
		29.412888, 24.731148, 28.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933712, 24.078470, 28.608622>,  <29.675455, 24.232336, 27.902164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933712, 24.078470, 28.608622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.617388, 24.313339, 28.677727>,  <29.427593, 24.454260, 28.719191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.617388, 24.313339, 28.677727>,  <29.933712, 24.078470, 28.608622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617388, 24.313339, 28.677727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200288, -0.514984, 0.833473,
		0.578363, 0.624517, 0.524858,
		-0.790811, 0.587172, 0.172764,
		29.380144, 24.489491, 28.729555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021799, 24.406414, 29.344063>,  <29.933712, 24.078470, 28.608622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021799, 24.406414, 29.344063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643517, 24.399979, 29.214211>,  <29.416548, 24.396118, 29.136299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643517, 24.399979, 29.214211>,  <30.021799, 24.406414, 29.344063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643517, 24.399979, 29.214211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290418, -0.406660, 0.866190,
		-0.145948, 0.913438, 0.379909,
		-0.945704, -0.016086, -0.324630,
		29.359806, 24.395153, 29.116821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718632, 24.538301, 29.912996>,  <30.021799, 24.406414, 29.344063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718632, 24.538301, 29.912996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.436289, 24.385952, 29.674099>,  <29.266882, 24.294542, 29.530762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.436289, 24.385952, 29.674099>,  <29.718632, 24.538301, 29.912996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436289, 24.385952, 29.674099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271750, -0.633026, 0.724866,
		-0.654153, 0.673953, 0.343324,
		-0.705858, -0.380875, -0.597242,
		29.224531, 24.271690, 29.494926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978743, 24.570915, 30.221794>,  <29.718632, 24.538301, 29.912996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978743, 24.570915, 30.221794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.006132, 24.272972, 29.956314>,  <29.022566, 24.094206, 29.797026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.006132, 24.272972, 29.956314>,  <28.978743, 24.570915, 30.221794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006132, 24.272972, 29.956314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176618, -0.663802, 0.726755,
		-0.981895, 0.067458, -0.177008,
		0.068473, -0.744860, -0.663698,
		29.026674, 24.049515, 29.757204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379864, 24.094330, 30.399467>,  <28.978743, 24.570915, 30.221794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379864, 24.094330, 30.399467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.581049, 23.876308, 30.131157>,  <28.701759, 23.745495, 29.970171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.581049, 23.876308, 30.131157>,  <28.379864, 24.094330, 30.399467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581049, 23.876308, 30.131157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269955, -0.836328, 0.477158,
		-0.821068, -0.058912, -0.567782,
		0.502963, -0.545054, -0.670779,
		28.731937, 23.712791, 29.929924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880466, 23.687784, 30.003487>,  <28.379864, 24.094330, 30.399467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880466, 23.687784, 30.003487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238310, 23.518856, 30.061893>,  <28.453016, 23.417500, 30.096937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238310, 23.518856, 30.061893>,  <27.880466, 23.687784, 30.003487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238310, 23.518856, 30.061893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432754, -0.737396, 0.518625,
		-0.111356, -0.527155, -0.842442,
		0.894608, -0.422322, 0.146015,
		28.506693, 23.392160, 30.105698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299088, 23.385397, 29.556839>,  <27.880466, 23.687784, 30.003487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299088, 23.385397, 29.556839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.907612, 23.303524, 29.550236>,  <26.672726, 23.254400, 29.546274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.907612, 23.303524, 29.550236>,  <27.299088, 23.385397, 29.556839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907612, 23.303524, 29.550236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026092, 0.203682, -0.978689,
		0.203682, -0.957402, -0.204682,
		0.978689, 0.204682, 0.016506,
		26.614004, 23.242119, 29.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228170, 23.033190, 28.973564>,  <27.299088, 23.385397, 29.556839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228170, 23.033190, 28.973564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.877884, 23.199371, 29.071968>,  <26.667713, 23.299080, 29.131010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.877884, 23.199371, 29.071968>,  <27.228170, 23.033190, 28.973564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877884, 23.199371, 29.071968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099432, 0.343422, -0.933903,
		-0.472481, -0.842293, -0.259430,
		-0.875714, 0.415456, 0.246011,
		26.615170, 23.324007, 29.145771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699520, 22.847170, 28.390385>,  <27.228170, 23.033190, 28.973564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699520, 22.847170, 28.390385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.574396, 23.176056, 28.580589>,  <26.499321, 23.373388, 28.694712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.574396, 23.176056, 28.580589>,  <26.699520, 22.847170, 28.390385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574396, 23.176056, 28.580589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093097, 0.471685, -0.876839,
		-0.945242, -0.318554, -0.071003,
		-0.312811, 0.822214, 0.475513,
		26.480553, 23.422720, 28.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195419, 23.052032, 27.939072>,  <26.699520, 22.847170, 28.390385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195419, 23.052032, 27.939072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.274399, 23.370018, 28.168522>,  <26.321787, 23.560808, 28.306192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.274399, 23.370018, 28.168522>,  <26.195419, 23.052032, 27.939072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274399, 23.370018, 28.168522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224879, 0.606274, -0.762799,
		-0.954171, 0.021619, 0.298480,
		0.197451, 0.794962, 0.573627,
		26.333633, 23.608507, 28.340611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665785, 23.360004, 27.724249>,  <26.195419, 23.052032, 27.939072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665785, 23.360004, 27.724249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.897474, 23.628498, 27.909264>,  <26.036488, 23.789595, 28.020273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.897474, 23.628498, 27.909264>,  <25.665785, 23.360004, 27.724249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897474, 23.628498, 27.909264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244329, 0.684283, -0.687066,
		-0.777691, 0.284954, 0.560356,
		0.579224, 0.671236, 0.462538,
		26.071241, 23.829868, 28.048025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320967, 24.002966, 27.559599>,  <25.665785, 23.360004, 27.724249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320967, 24.002966, 27.559599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.683422, 24.125061, 27.676727>,  <25.900894, 24.198318, 27.747005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.683422, 24.125061, 27.676727>,  <25.320967, 24.002966, 27.559599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683422, 24.125061, 27.676727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128761, 0.858475, -0.496429,
		-0.402911, 0.412128, 0.817199,
		0.906137, 0.305240, 0.292822,
		25.955263, 24.216633, 27.764574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251062, 24.749746, 27.929438>,  <25.320967, 24.002966, 27.559599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251062, 24.749746, 27.929438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.610315, 24.679680, 27.768108>,  <25.825867, 24.637640, 27.671310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.610315, 24.679680, 27.768108>,  <25.251062, 24.749746, 27.929438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610315, 24.679680, 27.768108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046252, 0.874510, -0.482797,
		0.437282, 0.452271, 0.777326,
		0.898134, -0.175165, -0.403325,
		25.879755, 24.627131, 27.647110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398603, 25.444065, 27.788134>,  <25.251062, 24.749746, 27.929438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398603, 25.444065, 27.788134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.657053, 25.205303, 27.597881>,  <25.812122, 25.062046, 27.483730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.657053, 25.205303, 27.597881>,  <25.398603, 25.444065, 27.788134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657053, 25.205303, 27.597881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249664, 0.754194, -0.607337,
		0.721243, 0.273667, 0.636329,
		0.646124, -0.596907, -0.475632,
		25.850891, 25.026232, 27.455191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052629, 25.740150, 27.853628>,  <25.398603, 25.444065, 27.788134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052629, 25.740150, 27.853628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040817, 25.505123, 27.530174>,  <26.033730, 25.364107, 27.336102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040817, 25.505123, 27.530174>,  <26.052629, 25.740150, 27.853628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040817, 25.505123, 27.530174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122294, 0.800785, -0.586333,
		0.992055, -0.116204, 0.048210,
		-0.029528, -0.587571, -0.808634,
		26.031960, 25.328852, 27.287584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675735, 25.953682, 27.417131>,  <26.052629, 25.740150, 27.853628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675735, 25.953682, 27.417131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.396996, 25.806377, 27.170948>,  <26.229752, 25.717995, 27.023239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.396996, 25.806377, 27.170948>,  <26.675735, 25.953682, 27.417131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396996, 25.806377, 27.170948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090266, 0.806262, -0.584632,
		0.711515, -0.462955, -0.528602,
		-0.696849, -0.368260, -0.615456,
		26.187941, 25.695900, 26.986311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859037, 26.214973, 26.748728>,  <26.675735, 25.953682, 27.417131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859037, 26.214973, 26.748728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.469950, 26.128029, 26.716297>,  <26.236498, 26.075863, 26.696838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.469950, 26.128029, 26.716297>,  <26.859037, 26.214973, 26.748728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469950, 26.128029, 26.716297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117135, 0.761832, -0.637096,
		0.200247, -0.610218, -0.766509,
		-0.972718, -0.217362, -0.081077,
		26.178135, 26.062820, 26.691975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723022, 26.319149, 26.113403>,  <26.859037, 26.214973, 26.748728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723022, 26.319149, 26.113403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.352539, 26.328957, 26.263889>,  <26.130249, 26.334841, 26.354181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.352539, 26.328957, 26.263889>,  <26.723022, 26.319149, 26.113403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352539, 26.328957, 26.263889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206587, 0.801730, -0.560849,
		-0.315372, -0.597184, -0.737504,
		-0.926209, 0.024518, 0.376214,
		26.074677, 26.336311, 26.376753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371080, 26.443806, 25.585884>,  <26.723022, 26.319149, 26.113403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371080, 26.443806, 25.585884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.111322, 26.528389, 25.878067>,  <25.955467, 26.579140, 26.053377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.111322, 26.528389, 25.878067>,  <26.371080, 26.443806, 25.585884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111322, 26.528389, 25.878067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396109, 0.725899, -0.562289,
		-0.649140, -0.654489, -0.387636,
		-0.649396, 0.211458, 0.730459,
		25.916504, 26.591825, 26.097204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777771, 26.426752, 25.241451>,  <26.371080, 26.443806, 25.585884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777771, 26.426752, 25.241451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.753389, 26.655796, 25.568474>,  <25.738760, 26.793222, 25.764688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.753389, 26.655796, 25.568474>,  <25.777771, 26.426752, 25.241451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753389, 26.655796, 25.568474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357278, 0.752295, -0.553538,
		-0.932007, -0.325836, 0.158725,
		-0.060954, 0.572610, 0.817558,
		25.735104, 26.827579, 25.813742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.363365, 23.936171, 27.792917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573330, 24.174541, 28.036011>,  <38.699306, 24.317564, 28.181868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573330, 24.174541, 28.036011>,  <38.363365, 23.936171, 27.792917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573330, 24.174541, 28.036011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352829, 0.802115, -0.481792,
		-0.774586, 0.038470, 0.631298,
		0.524908, 0.595929, 0.607733,
		38.730801, 24.353321, 28.218330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959843, 24.526321, 28.217648>,  <38.363365, 23.936171, 27.792917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959843, 24.526321, 28.217648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343540, 24.625328, 28.163120>,  <38.573761, 24.684732, 28.130404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343540, 24.625328, 28.163120>,  <37.959843, 24.526321, 28.217648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343540, 24.625328, 28.163120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278666, 0.908575, -0.311185,
		0.046833, 0.336490, 0.940521,
		0.959245, 0.247518, -0.136320,
		38.631313, 24.699583, 28.122225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996727, 25.344769, 28.411743>,  <37.959843, 24.526321, 28.217648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996727, 25.344769, 28.411743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.320908, 25.244205, 28.200100>,  <38.515415, 25.183868, 28.073114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.320908, 25.244205, 28.200100>,  <37.996727, 25.344769, 28.411743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320908, 25.244205, 28.200100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001163, 0.903914, -0.427712,
		0.585800, 0.346026, 0.732874,
		0.810455, -0.251406, -0.529110,
		38.564045, 25.168783, 28.041367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487995, 25.885719, 28.573021>,  <37.996727, 25.344769, 28.411743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487995, 25.885719, 28.573021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573933, 25.720482, 28.219028>,  <38.625496, 25.621340, 28.006632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573933, 25.720482, 28.219028>,  <38.487995, 25.885719, 28.573021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573933, 25.720482, 28.219028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107059, 0.910643, -0.399083,
		0.970763, -0.009005, 0.239871,
		0.214844, -0.413095, -0.884983,
		38.638386, 25.596554, 27.953533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225792, 26.134560, 28.295914>,  <38.487995, 25.885719, 28.573021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225792, 26.134560, 28.295914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.062901, 26.020569, 27.948822>,  <38.965164, 25.952175, 27.740566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.062901, 26.020569, 27.948822>,  <39.225792, 26.134560, 28.295914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062901, 26.020569, 27.948822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116829, 0.926017, -0.358949,
		0.905823, -0.247550, -0.343808,
		-0.407230, -0.284977, -0.867728,
		38.940731, 25.935076, 27.688503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669598, 26.334824, 27.732908>,  <39.225792, 26.134560, 28.295914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669598, 26.334824, 27.732908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315605, 26.270603, 27.558079>,  <39.103210, 26.232071, 27.453180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315605, 26.270603, 27.558079>,  <39.669598, 26.334824, 27.732908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315605, 26.270603, 27.558079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166128, 0.768031, -0.618490,
		0.434984, -0.619961, -0.653021,
		-0.884980, -0.160549, -0.437074,
		39.050110, 26.222439, 27.426956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807655, 26.384113, 27.016228>,  <39.669598, 26.334824, 27.732908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807655, 26.384113, 27.016228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409920, 26.414371, 27.046055>,  <39.171276, 26.432526, 27.063951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409920, 26.414371, 27.046055>,  <39.807655, 26.384113, 27.016228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409920, 26.414371, 27.046055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016304, 0.802397, -0.596568,
		-0.104960, -0.591977, -0.799091,
		-0.994343, 0.075644, 0.074568,
		39.111618, 26.437065, 27.068426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516685, 26.317772, 26.383953>,  <39.807655, 26.384113, 27.016228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516685, 26.317772, 26.383953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240128, 26.535141, 26.574390>,  <39.074192, 26.665564, 26.688654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240128, 26.535141, 26.574390>,  <39.516685, 26.317772, 26.383953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240128, 26.535141, 26.574390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081627, 0.713510, -0.695873,
		-0.717854, -0.442259, -0.537674,
		-0.691392, 0.543424, 0.476096,
		39.032711, 26.698168, 26.717218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043842, 26.562866, 25.843554>,  <39.516685, 26.317772, 26.383953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043842, 26.562866, 25.843554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933346, 26.807243, 26.140320>,  <38.867046, 26.953871, 26.318378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933346, 26.807243, 26.140320>,  <39.043842, 26.562866, 25.843554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933346, 26.807243, 26.140320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146753, 0.789714, -0.595664,
		-0.949817, -0.055671, -0.307811,
		-0.276244, 0.610944, 0.741914,
		38.850471, 26.990526, 26.362894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653694, 27.103605, 25.556273>,  <39.043842, 26.562866, 25.843554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653694, 27.103605, 25.556273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.776657, 27.251621, 25.906944>,  <38.850433, 27.340431, 26.117348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.776657, 27.251621, 25.906944>,  <38.653694, 27.103605, 25.556273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776657, 27.251621, 25.906944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222875, 0.867667, -0.444388,
		-0.925109, 0.331999, 0.184255,
		0.307408, 0.370042, 0.876681,
		38.868881, 27.362635, 26.169949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351910, 27.863270, 25.640100>,  <38.653694, 27.103605, 25.556273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351910, 27.863270, 25.640100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.671169, 27.835346, 25.879463>,  <38.862724, 27.818592, 26.023081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.671169, 27.835346, 25.879463>,  <38.351910, 27.863270, 25.640100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671169, 27.835346, 25.879463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353750, 0.858313, -0.371698,
		-0.487671, 0.508356, 0.709755,
		0.798147, -0.069810, 0.598405,
		38.910614, 27.814404, 26.058985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390137, 28.499264, 25.921963>,  <38.351910, 27.863270, 25.640100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390137, 28.499264, 25.921963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760212, 28.348717, 25.941441>,  <38.982258, 28.258389, 25.953127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760212, 28.348717, 25.941441>,  <38.390137, 28.499264, 25.921963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760212, 28.348717, 25.941441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328106, 0.728793, -0.601005,
		0.190711, 0.572020, 0.797760,
		0.925189, -0.376369, 0.048695,
		39.037769, 28.235806, 25.956049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816345, 29.064413, 26.069702>,  <38.390137, 28.499264, 25.921963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816345, 29.064413, 26.069702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072567, 28.794971, 25.922215>,  <39.226299, 28.633307, 25.833723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072567, 28.794971, 25.922215>,  <38.816345, 29.064413, 26.069702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072567, 28.794971, 25.922215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407632, 0.705185, -0.580130,
		0.650790, 0.221303, 0.726290,
		0.640553, -0.673602, -0.368717,
		39.264732, 28.592892, 25.811600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437653, 29.378792, 26.212273>,  <38.816345, 29.064413, 26.069702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437653, 29.378792, 26.212273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498787, 29.116375, 25.916637>,  <39.535465, 28.958925, 25.739256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498787, 29.116375, 25.916637>,  <39.437653, 29.378792, 26.212273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498787, 29.116375, 25.916637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645610, 0.632504, -0.427933,
		0.748218, -0.411760, 0.520215,
		0.152832, -0.656043, -0.739087,
		39.544636, 28.919561, 25.694912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116516, 29.348591, 26.134623>,  <39.437653, 29.378792, 26.212273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116516, 29.348591, 26.134623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951611, 29.227764, 25.790810>,  <39.852669, 29.155268, 25.584522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951611, 29.227764, 25.790810>,  <40.116516, 29.348591, 26.134623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951611, 29.227764, 25.790810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522486, 0.694489, -0.494664,
		0.746358, -0.653025, -0.128484,
		-0.412259, -0.302065, -0.859534,
		39.827934, 29.137144, 25.532949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638458, 29.249445, 25.674627>,  <40.116516, 29.348591, 26.134623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638458, 29.249445, 25.674627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309223, 29.309147, 25.455448>,  <40.111683, 29.344969, 25.323940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309223, 29.309147, 25.455448>,  <40.638458, 29.249445, 25.674627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309223, 29.309147, 25.455448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474370, 0.711173, -0.518851,
		0.312244, -0.686991, -0.656161,
		-0.823090, 0.149255, -0.547947,
		40.062298, 29.353924, 25.291063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892838, 29.316015, 25.006388>,  <40.638458, 29.249445, 25.674627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892838, 29.316015, 25.006388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517807, 29.453476, 24.985046>,  <40.292789, 29.535954, 24.972240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517807, 29.453476, 24.985046>,  <40.892838, 29.316015, 25.006388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517807, 29.453476, 24.985046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281014, 0.658252, -0.698381,
		-0.204880, -0.669781, -0.713735,
		-0.937579, 0.343654, -0.053355,
		40.236534, 29.556572, 24.969040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633781, 29.328836, 24.249521>,  <40.892838, 29.316015, 25.006388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633781, 29.328836, 24.249521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375244, 29.558899, 24.450096>,  <40.220123, 29.696938, 24.570440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375244, 29.558899, 24.450096>,  <40.633781, 29.328836, 24.249521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375244, 29.558899, 24.450096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195737, 0.760132, -0.619586,
		-0.737518, -0.302313, -0.603883,
		-0.646339, 0.575157, 0.501437,
		40.181343, 29.731445, 24.600527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052254, 29.580769, 23.787874>,  <40.633781, 29.328836, 24.249521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052254, 29.580769, 23.787874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077557, 29.852566, 24.080254>,  <40.092739, 30.015644, 24.255682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077557, 29.852566, 24.080254>,  <40.052254, 29.580769, 23.787874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077557, 29.852566, 24.080254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171966, 0.714039, -0.678657,
		-0.983070, 0.168627, -0.071683,
		0.063255, 0.679495, 0.730949,
		40.096535, 30.056414, 24.299538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697277, 30.254951, 23.425219>,  <40.052254, 29.580769, 23.787874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697277, 30.254951, 23.425219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879841, 30.402283, 23.749199>,  <39.989380, 30.490681, 23.943588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879841, 30.402283, 23.749199>,  <39.697277, 30.254951, 23.425219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879841, 30.402283, 23.749199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307203, 0.789086, -0.531948,
		-0.835054, 0.491607, 0.246997,
		0.456412, 0.368327, 0.809953,
		40.016766, 30.512781, 23.992186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489063, 30.898087, 23.431253>,  <39.697277, 30.254951, 23.425219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489063, 30.898087, 23.431253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827370, 30.884933, 23.644272>,  <40.030354, 30.877041, 23.772083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827370, 30.884933, 23.644272>,  <39.489063, 30.898087, 23.431253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827370, 30.884933, 23.644272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368360, 0.758054, -0.538205,
		-0.386000, 0.651362, 0.653247,
		0.845763, -0.032883, 0.532545,
		40.081100, 30.875069, 23.804035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046986, 30.587183, 22.989908>,  <39.489063, 30.898087, 23.431253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046986, 30.587183, 22.989908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.655769, 30.558521, 22.911629>,  <38.421040, 30.541325, 22.864662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.655769, 30.558521, 22.911629>,  <39.046986, 30.587183, 22.989908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655769, 30.558521, 22.911629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100697, -0.659652, 0.744795,
		-0.182460, 0.748148, 0.637952,
		-0.978043, -0.071655, -0.195697,
		38.362358, 30.537025, 22.852921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681072, 30.563427, 23.637712>,  <39.046986, 30.587183, 22.989908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681072, 30.563427, 23.637712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.387413, 30.441048, 23.395252>,  <38.211216, 30.367620, 23.249775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.387413, 30.441048, 23.395252>,  <38.681072, 30.563427, 23.637712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387413, 30.441048, 23.395252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233970, -0.724063, 0.648838,
		-0.637402, 0.618166, 0.459989,
		-0.734151, -0.305946, -0.606152,
		38.167168, 30.349264, 23.213408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166611, 30.413137, 24.111483>,  <38.681072, 30.563427, 23.637712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166611, 30.413137, 24.111483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057198, 30.231758, 23.772175>,  <37.991550, 30.122931, 23.568590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057198, 30.231758, 23.772175>,  <38.166611, 30.413137, 24.111483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057198, 30.231758, 23.772175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355281, -0.771908, 0.527194,
		-0.893842, 0.445582, 0.050043,
		-0.273537, -0.453448, -0.848270,
		37.975136, 30.095724, 23.517694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491741, 30.273277, 24.251513>,  <38.166611, 30.413137, 24.111483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491741, 30.273277, 24.251513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612202, 30.042171, 23.948067>,  <37.684479, 29.903507, 23.765999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612202, 30.042171, 23.948067>,  <37.491741, 30.273277, 24.251513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612202, 30.042171, 23.948067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390096, -0.800575, 0.454867,
		-0.870134, 0.158950, -0.466477,
		0.301149, -0.577766, -0.758614,
		37.702545, 29.868841, 23.720482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918247, 29.806471, 24.136951>,  <37.491741, 30.273277, 24.251513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918247, 29.806471, 24.136951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230465, 29.634068, 23.955849>,  <37.417793, 29.530626, 23.847187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230465, 29.634068, 23.955849>,  <36.918247, 29.806471, 24.136951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230465, 29.634068, 23.955849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369938, -0.902334, 0.221223,
		-0.503885, -0.005183, -0.863755,
		0.780542, -0.431007, -0.452755,
		37.464626, 29.504766, 23.820023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708881, 29.355709, 23.560326>,  <36.918247, 29.806471, 24.136951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708881, 29.355709, 23.560326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065361, 29.211147, 23.669983>,  <37.279247, 29.124411, 23.735777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065361, 29.211147, 23.669983>,  <36.708881, 29.355709, 23.560326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065361, 29.211147, 23.669983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405876, -0.905184, 0.126122,
		0.202570, -0.223668, -0.953382,
		0.891196, -0.361406, 0.274144,
		37.332722, 29.102726, 23.752226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638405, 28.694324, 23.385057>,  <36.708881, 29.355709, 23.560326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638405, 28.694324, 23.385057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937077, 28.739124, 23.647331>,  <37.116280, 28.766005, 23.804695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937077, 28.739124, 23.647331>,  <36.638405, 28.694324, 23.385057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937077, 28.739124, 23.647331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154329, -0.929656, 0.334547,
		0.647030, -0.350991, -0.676873,
		0.746682, 0.112001, 0.655684,
		37.161079, 28.772724, 23.844036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075989, 28.121052, 23.251440>,  <36.638405, 28.694324, 23.385057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075989, 28.121052, 23.251440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144985, 28.253883, 23.622379>,  <37.186382, 28.333582, 23.844942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144985, 28.253883, 23.622379>,  <37.075989, 28.121052, 23.251440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144985, 28.253883, 23.622379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000616, -0.941494, 0.337030,
		0.985011, -0.057564, -0.162605,
		0.172492, 0.332079, 0.927346,
		37.196732, 28.353506, 23.900583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457699, 27.615934, 23.582415>,  <37.075989, 28.121052, 23.251440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457699, 27.615934, 23.582415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.308563, 27.831871, 23.884293>,  <37.219082, 27.961433, 24.065418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.308563, 27.831871, 23.884293>,  <37.457699, 27.615934, 23.582415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308563, 27.831871, 23.884293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115325, -0.833992, 0.539589,
		0.920700, 0.114146, 0.373204,
		-0.372842, 0.539840, 0.754693,
		37.196712, 27.993824, 24.110701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705685, 27.283594, 24.143452>,  <37.457699, 27.615934, 23.582415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705685, 27.283594, 24.143452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413120, 27.498501, 24.311443>,  <37.237583, 27.627445, 24.412239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413120, 27.498501, 24.311443>,  <37.705685, 27.283594, 24.143452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413120, 27.498501, 24.311443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186276, -0.749846, 0.634848,
		0.656002, 0.386103, 0.648526,
		-0.731412, 0.537266, 0.419979,
		37.193695, 27.659681, 24.437437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763527, 27.197947, 24.838520>,  <37.705685, 27.283594, 24.143452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763527, 27.197947, 24.838520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380669, 27.304539, 24.793175>,  <37.150951, 27.368494, 24.765968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380669, 27.304539, 24.793175>,  <37.763527, 27.197947, 24.838520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380669, 27.304539, 24.793175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275532, -0.717509, 0.639736,
		0.089139, 0.643559, 0.760189,
		-0.957150, 0.266482, -0.113363,
		37.093525, 27.384483, 24.759167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494137, 27.139784, 25.439762>,  <37.763527, 27.197947, 24.838520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494137, 27.139784, 25.439762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172955, 27.134441, 25.201408>,  <36.980244, 27.131235, 25.058395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172955, 27.134441, 25.201408>,  <37.494137, 27.139784, 25.439762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172955, 27.134441, 25.201408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421155, -0.694728, 0.583079,
		-0.421768, 0.719148, 0.552212,
		-0.802958, -0.013357, -0.595887,
		36.932068, 27.130434, 25.022642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847111, 27.187178, 25.917179>,  <37.494137, 27.139784, 25.439762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847111, 27.187178, 25.917179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.743172, 27.021641, 25.568188>,  <36.680809, 26.922319, 25.358793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.743172, 27.021641, 25.568188>,  <36.847111, 27.187178, 25.917179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743172, 27.021641, 25.568188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525240, -0.697598, 0.487319,
		-0.810311, 0.584887, -0.036099,
		-0.259844, -0.413840, -0.872478,
		36.665218, 26.897490, 25.306444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312412, 26.969105, 26.063850>,  <36.847111, 27.187178, 25.917179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312412, 26.969105, 26.063850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389721, 26.751106, 25.737507>,  <36.436104, 26.620306, 25.541700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389721, 26.751106, 25.737507>,  <36.312412, 26.969105, 26.063850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389721, 26.751106, 25.737507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046413, -0.835684, 0.547246,
		-0.980047, -0.067899, -0.186807,
		0.193269, -0.544997, -0.815859,
		36.447701, 26.587606, 25.492750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697605, 26.546062, 25.872114>,  <36.312412, 26.969105, 26.063850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697605, 26.546062, 25.872114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.017414, 26.368919, 25.709808>,  <36.209301, 26.262634, 25.612425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.017414, 26.368919, 25.709808>,  <35.697605, 26.546062, 25.872114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017414, 26.368919, 25.709808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225001, -0.847190, 0.481293,
		-0.556902, -0.293507, -0.776990,
		0.799521, -0.442857, -0.405762,
		36.257271, 26.236063, 25.588079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436367, 25.901503, 25.853912>,  <35.697605, 26.546062, 25.872114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436367, 25.901503, 25.853912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811848, 25.794655, 25.766739>,  <36.037136, 25.730547, 25.714436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811848, 25.794655, 25.766739>,  <35.436367, 25.901503, 25.853912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811848, 25.794655, 25.766739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140686, -0.873945, 0.465218,
		-0.314729, -0.406040, -0.857950,
		0.938698, -0.267119, -0.217931,
		36.093456, 25.714520, 25.701359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369396, 25.289185, 25.780697>,  <35.436367, 25.901503, 25.853912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369396, 25.289185, 25.780697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768368, 25.298454, 25.807842>,  <36.007751, 25.304016, 25.824129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768368, 25.298454, 25.807842>,  <35.369396, 25.289185, 25.780697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768368, 25.298454, 25.807842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011591, -0.881799, 0.471483,
		0.070766, -0.471056, -0.879261,
		0.997426, 0.023173, 0.067861,
		36.067596, 25.305407, 25.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764927, 24.591953, 25.596407>,  <35.369396, 25.289185, 25.780697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764927, 24.591953, 25.596407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021317, 24.769100, 25.847172>,  <36.175152, 24.875389, 25.997631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021317, 24.769100, 25.847172>,  <35.764927, 24.591953, 25.596407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021317, 24.769100, 25.847172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146882, -0.872434, 0.466138,
		0.753376, -0.206701, -0.624258,
		0.640975, 0.442869, 0.626911,
		36.213608, 24.901960, 26.035246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330292, 24.235580, 25.539745>,  <35.764927, 24.591953, 25.596407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330292, 24.235580, 25.539745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.388889, 24.415783, 25.892014>,  <36.424046, 24.523905, 26.103374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.388889, 24.415783, 25.892014>,  <36.330292, 24.235580, 25.539745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388889, 24.415783, 25.892014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203451, -0.884965, 0.418860,
		0.968064, 0.117814, -0.221297,
		0.146492, 0.450507, 0.880672,
		36.432838, 24.550936, 26.156216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794525, 23.844648, 25.873119>,  <36.330292, 24.235580, 25.539745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794525, 23.844648, 25.873119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.656357, 24.068172, 26.174694>,  <36.573456, 24.202286, 26.355639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.656357, 24.068172, 26.174694>,  <36.794525, 23.844648, 25.873119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656357, 24.068172, 26.174694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262691, -0.713693, 0.649335,
		0.900932, 0.422345, 0.099730,
		-0.345420, 0.558809, 0.753935,
		36.552731, 24.235815, 26.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253010, 23.681164, 26.470491>,  <36.794525, 23.844648, 25.873119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253010, 23.681164, 26.470491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963886, 23.830849, 26.702873>,  <36.790413, 23.920660, 26.842302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963886, 23.830849, 26.702873>,  <37.253010, 23.681164, 26.470491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963886, 23.830849, 26.702873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290669, -0.598067, 0.746878,
		0.626939, 0.708719, 0.323519,
		-0.722813, 0.374210, 0.580954,
		36.747044, 23.943111, 26.877159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.318748, 25.548550, 31.837200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.659550, 25.366734, 31.941109>,  <25.864031, 25.257645, 32.003456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.659550, 25.366734, 31.941109>,  <25.318748, 25.548550, 31.837200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659550, 25.366734, 31.941109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523001, -0.761362, 0.383142,
		0.023629, -0.462300, -0.886409,
		0.852005, -0.454539, 0.259774,
		25.915152, 25.230371, 32.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412785, 24.941004, 31.559921>,  <25.318748, 25.548550, 31.837200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412785, 24.941004, 31.559921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.638159, 24.907509, 31.888683>,  <25.773384, 24.887413, 32.085941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.638159, 24.907509, 31.888683>,  <25.412785, 24.941004, 31.559921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638159, 24.907509, 31.888683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625499, -0.693152, 0.358176,
		0.539714, -0.715911, -0.442923,
		0.563435, -0.083735, 0.821906,
		25.807190, 24.882389, 32.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349651, 24.274622, 31.763657>,  <25.412785, 24.941004, 31.559921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349651, 24.274622, 31.763657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.520445, 24.424786, 32.092716>,  <25.622921, 24.514883, 32.290154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.520445, 24.424786, 32.092716>,  <25.349651, 24.274622, 31.763657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520445, 24.424786, 32.092716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542775, -0.621234, 0.565211,
		0.723243, -0.687850, -0.061495,
		0.426983, 0.375407, 0.822651,
		25.648540, 24.537407, 32.339512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539371, 23.732895, 32.019623>,  <25.349651, 24.274622, 31.763657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539371, 23.732895, 32.019623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.535542, 23.988789, 32.327038>,  <25.533243, 24.142324, 32.511486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.535542, 23.988789, 32.327038>,  <25.539371, 23.732895, 32.019623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535542, 23.988789, 32.327038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528126, -0.655867, 0.539371,
		0.849112, -0.400720, 0.344140,
		-0.009573, 0.639735, 0.768535,
		25.532669, 24.180710, 32.557598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608458, 23.325445, 32.594360>,  <25.539371, 23.732895, 32.019623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608458, 23.325445, 32.594360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.466640, 23.666889, 32.747013>,  <25.381550, 23.871756, 32.838604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.466640, 23.666889, 32.747013>,  <25.608458, 23.325445, 32.594360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466640, 23.666889, 32.747013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429250, -0.511185, 0.744603,
		0.830688, 0.100178, 0.547651,
		-0.354544, 0.853612, 0.381634,
		25.360277, 23.922974, 32.861504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733282, 23.286575, 33.302994>,  <25.608458, 23.325445, 32.594360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733282, 23.286575, 33.302994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.462423, 23.578598, 33.266148>,  <25.299908, 23.753811, 33.244038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.462423, 23.578598, 33.266148>,  <25.733282, 23.286575, 33.302994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462423, 23.578598, 33.266148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448724, -0.310465, 0.838009,
		0.583195, 0.608792, 0.537825,
		-0.677149, 0.730057, -0.092118,
		25.259279, 23.797615, 33.238514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683144, 23.693207, 34.000652>,  <25.733282, 23.286575, 33.302994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683144, 23.693207, 34.000652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.339478, 23.739571, 33.801292>,  <25.133278, 23.767389, 33.681675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.339478, 23.739571, 33.801292>,  <25.683144, 23.693207, 34.000652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339478, 23.739571, 33.801292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484840, -0.495819, 0.720482,
		-0.163605, 0.860656, 0.482188,
		-0.859165, 0.115910, -0.498398,
		25.081728, 23.774343, 33.651772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210802, 23.793959, 34.499950>,  <25.683144, 23.693207, 34.000652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210802, 23.793959, 34.499950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.972593, 23.724319, 34.186253>,  <24.829668, 23.682535, 33.998035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.972593, 23.724319, 34.186253>,  <25.210802, 23.793959, 34.499950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972593, 23.724319, 34.186253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612924, -0.532598, 0.583664,
		-0.519303, 0.828268, 0.210465,
		-0.595524, -0.174100, -0.784245,
		24.793936, 23.672089, 33.950977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584816, 23.847174, 34.755573>,  <25.210802, 23.793959, 34.499950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584816, 23.847174, 34.755573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.561678, 23.626366, 34.422844>,  <24.547794, 23.493881, 34.223206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.561678, 23.626366, 34.422844>,  <24.584816, 23.847174, 34.755573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561678, 23.626366, 34.422844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354209, -0.767660, 0.534072,
		-0.933376, 0.325532, -0.151125,
		-0.057845, -0.552020, -0.831822,
		24.544325, 23.460760, 34.173298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.896742, 23.649422, 34.767685>,  <24.584816, 23.847174, 34.755573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.896742, 23.649422, 34.767685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.097010, 23.382069, 34.547649>,  <24.217171, 23.221657, 34.415627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.097010, 23.382069, 34.547649>,  <23.896742, 23.649422, 34.767685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097010, 23.382069, 34.547649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376141, -0.740321, 0.557174,
		-0.779648, -0.072047, -0.622060,
		0.500666, -0.668382, -0.550090,
		24.247210, 23.181555, 34.382622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.408808, 23.140226, 34.549839>,  <23.896742, 23.649422, 34.767685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.408808, 23.140226, 34.549839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.772760, 22.976509, 34.522724>,  <23.991133, 22.878279, 34.506454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.772760, 22.976509, 34.522724>,  <23.408808, 23.140226, 34.549839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772760, 22.976509, 34.522724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345672, -0.838289, 0.421643,
		-0.229403, -0.360212, -0.904224,
		0.909882, -0.409291, -0.067791,
		24.045725, 22.853722, 34.502388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287434, 22.500549, 34.280579>,  <23.408808, 23.140226, 34.549839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287434, 22.500549, 34.280579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.648140, 22.466415, 34.450066>,  <23.864563, 22.445936, 34.551758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.648140, 22.466415, 34.450066>,  <23.287434, 22.500549, 34.280579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.648140, 22.466415, 34.450066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349422, -0.720938, 0.598458,
		0.254404, -0.687725, -0.679935,
		0.901766, -0.085334, 0.423716,
		23.918671, 22.440815, 34.577179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.539574, 21.866758, 34.270943>,  <23.287434, 22.500549, 34.280579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.539574, 21.866758, 34.270943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.682709, 22.050850, 34.595940>,  <23.768589, 22.161304, 34.790939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.682709, 22.050850, 34.595940>,  <23.539574, 21.866758, 34.270943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682709, 22.050850, 34.595940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361280, -0.734109, 0.574944,
		0.861062, -0.499274, -0.096421,
		0.357838, 0.460228, 0.812491,
		23.790060, 22.188919, 34.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200451, 21.556154, 34.683907>,  <23.539574, 21.866758, 34.270943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.200451, 21.556154, 34.683907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.935387, 21.733482, 34.925350>,  <23.776348, 21.839880, 35.070217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.935387, 21.733482, 34.925350>,  <24.200451, 21.556154, 34.683907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.935387, 21.733482, 34.925350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240371, -0.889235, 0.389209,
		0.709295, 0.112824, 0.695824,
		-0.662663, 0.443320, 0.603610,
		23.736588, 21.866478, 35.106434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516747, 20.991240, 34.295769>,  <24.200451, 21.556154, 34.683907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516747, 20.991240, 34.295769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.805487, 20.727818, 34.210693>,  <24.978731, 20.569763, 34.159649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.805487, 20.727818, 34.210693>,  <24.516747, 20.991240, 34.295769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805487, 20.727818, 34.210693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293695, 0.569798, -0.767511,
		0.626639, 0.491562, 0.604724,
		0.721850, -0.658557, -0.212688,
		25.022041, 20.530251, 34.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169569, 21.375065, 34.306522>,  <24.516747, 20.991240, 34.295769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169569, 21.375065, 34.306522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.207077, 21.050499, 34.075764>,  <25.229582, 20.855759, 33.937309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.207077, 21.050499, 34.075764>,  <25.169569, 21.375065, 34.306522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207077, 21.050499, 34.075764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313256, 0.574069, -0.756516,
		0.945028, -0.109777, 0.308012,
		0.093772, -0.811415, -0.576900,
		25.235209, 20.807076, 33.902695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739679, 21.451824, 33.940052>,  <25.169569, 21.375065, 34.306522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739679, 21.451824, 33.940052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.576796, 21.142708, 33.745335>,  <25.479065, 20.957237, 33.628502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.576796, 21.142708, 33.745335>,  <25.739679, 21.451824, 33.940052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576796, 21.142708, 33.745335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461279, 0.286002, -0.839896,
		0.788290, -0.566563, 0.240010,
		-0.407211, -0.772793, -0.486797,
		25.454632, 20.910870, 33.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284496, 21.169348, 33.545696>,  <25.739679, 21.451824, 33.940052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284496, 21.169348, 33.545696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.941483, 21.058292, 33.372467>,  <25.735674, 20.991659, 33.268528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.941483, 21.058292, 33.372467>,  <26.284496, 21.169348, 33.545696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941483, 21.058292, 33.372467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330430, 0.347945, -0.877354,
		0.394269, -0.895463, -0.206636,
		-0.857536, -0.277635, -0.433071,
		25.684221, 20.975002, 33.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476135, 20.886475, 32.909252>,  <26.284496, 21.169348, 33.545696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476135, 20.886475, 32.909252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.083015, 20.923744, 32.845470>,  <25.847143, 20.946106, 32.807201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.083015, 20.923744, 32.845470>,  <26.476135, 20.886475, 32.909252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083015, 20.923744, 32.845470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177460, 0.237398, -0.955065,
		-0.051135, -0.966934, -0.249849,
		-0.982799, 0.093176, -0.159453,
		25.788176, 20.951696, 32.797634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238819, 20.483173, 32.317207>,  <26.476135, 20.886475, 32.909252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238819, 20.483173, 32.317207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.991947, 20.793747, 32.368183>,  <25.843824, 20.980091, 32.398769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.991947, 20.793747, 32.368183>,  <26.238819, 20.483173, 32.317207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991947, 20.793747, 32.368183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209522, 0.318297, -0.924547,
		-0.758412, -0.543911, -0.359127,
		-0.617180, 0.776433, 0.127439,
		25.806793, 21.026676, 32.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963114, 20.528023, 31.629910>,  <26.238819, 20.483173, 32.317207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963114, 20.528023, 31.629910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.869516, 20.874950, 31.805637>,  <25.813358, 21.083107, 31.911074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.869516, 20.874950, 31.805637>,  <25.963114, 20.528023, 31.629910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869516, 20.874950, 31.805637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266899, 0.491808, -0.828788,
		-0.934886, -0.076679, -0.346568,
		-0.233996, 0.867320, 0.439319,
		25.799318, 21.135147, 31.937433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652727, 20.827234, 31.102797>,  <25.963114, 20.528023, 31.629910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652727, 20.827234, 31.102797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.759331, 21.124973, 31.347721>,  <25.823294, 21.303616, 31.494675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.759331, 21.124973, 31.347721>,  <25.652727, 20.827234, 31.102797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759331, 21.124973, 31.347721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262264, 0.555311, -0.789207,
		-0.927465, 0.370917, -0.047220,
		0.266508, 0.744345, 0.612310,
		25.839283, 21.348276, 31.531414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262737, 21.424036, 30.888233>,  <25.652727, 20.827234, 31.102797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262737, 21.424036, 30.888233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.557022, 21.568226, 31.117592>,  <25.733593, 21.654739, 31.255207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.557022, 21.568226, 31.117592>,  <25.262737, 21.424036, 30.888233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557022, 21.568226, 31.117592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257998, 0.633613, -0.729364,
		-0.626230, 0.684538, 0.373155,
		0.735713, 0.360476, 0.573396,
		25.777737, 21.676369, 31.289610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091749, 22.142799, 31.079668>,  <25.262737, 21.424036, 30.888233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091749, 22.142799, 31.079668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.488295, 22.095867, 31.103092>,  <25.726223, 22.067709, 31.117147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.488295, 22.095867, 31.103092>,  <25.091749, 22.142799, 31.079668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488295, 22.095867, 31.103092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126881, 0.745475, -0.654346,
		0.033119, 0.656126, 0.753925,
		0.991365, -0.117330, 0.058560,
		25.785704, 22.060669, 31.120661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433535, 22.797691, 31.039553>,  <25.091749, 22.142799, 31.079668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433535, 22.797691, 31.039553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.746267, 22.559559, 30.965446>,  <25.933907, 22.416679, 30.920982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.746267, 22.559559, 30.965446>,  <25.433535, 22.797691, 31.039553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746267, 22.559559, 30.965446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327528, 0.644993, -0.690442,
		0.530535, 0.479129, 0.699262,
		0.781830, -0.595332, -0.185263,
		25.980816, 22.380959, 30.909868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016836, 23.184986, 31.144804>,  <25.433535, 22.797691, 31.039553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016836, 23.184986, 31.144804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.114006, 22.890308, 30.892368>,  <26.172308, 22.713503, 30.740908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.114006, 22.890308, 30.892368>,  <26.016836, 23.184986, 31.144804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114006, 22.890308, 30.892368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216866, 0.675353, -0.704888,
		0.945493, 0.034373, 0.323822,
		0.242923, -0.736693, -0.631088,
		26.186884, 22.669300, 30.703041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617214, 23.456898, 30.772835>,  <26.016836, 23.184986, 31.144804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617214, 23.456898, 30.772835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.504860, 23.155800, 30.534683>,  <26.437447, 22.975142, 30.391792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.504860, 23.155800, 30.534683>,  <26.617214, 23.456898, 30.772835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504860, 23.155800, 30.534683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294703, 0.522736, -0.799936,
		0.913375, -0.400151, 0.075008,
		-0.280885, -0.752746, -0.595380,
		26.420595, 22.929976, 30.356070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033054, 23.590654, 30.176565>,  <26.617214, 23.456898, 30.772835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033054, 23.590654, 30.176565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.752052, 23.339008, 30.043476>,  <26.583452, 23.188021, 29.963623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.752052, 23.339008, 30.043476>,  <27.033054, 23.590654, 30.176565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752052, 23.339008, 30.043476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027532, 0.443144, -0.896028,
		0.711148, -0.638622, -0.293989,
		-0.702503, -0.629114, -0.332724,
		26.541302, 23.150274, 29.943659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600117, 23.102482, 30.308893>,  <27.033054, 23.590654, 30.176565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600117, 23.102482, 30.308893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.995939, 23.045254, 30.301834>,  <28.233433, 23.010918, 30.297598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.995939, 23.045254, 30.301834>,  <27.600117, 23.102482, 30.308893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995939, 23.045254, 30.301834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085152, -0.678925, 0.729253,
		-0.116317, -0.720133, -0.684016,
		0.989555, -0.143069, -0.017650,
		28.292807, 23.002333, 30.296539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651052, 22.330906, 30.181526>,  <27.600117, 23.102482, 30.308893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651052, 22.330906, 30.181526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.990911, 22.454952, 30.352139>,  <28.194826, 22.529379, 30.454506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.990911, 22.454952, 30.352139>,  <27.651052, 22.330906, 30.181526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990911, 22.454952, 30.352139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059101, -0.747726, 0.661372,
		0.524029, -0.587141, -0.616976,
		0.849647, 0.310114, 0.426531,
		28.245806, 22.547987, 30.480099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956070, 21.784679, 30.230715>,  <27.651052, 22.330906, 30.181526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956070, 21.784679, 30.230715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.129780, 22.033379, 30.491432>,  <28.234007, 22.182598, 30.647863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.129780, 22.033379, 30.491432>,  <27.956070, 21.784679, 30.230715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129780, 22.033379, 30.491432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061328, -0.742316, 0.667237,
		0.898690, -0.249792, -0.360501,
		0.434276, 0.621748, 0.651793,
		28.260063, 22.219904, 30.686970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710094, 21.477972, 30.484055>,  <27.956070, 21.784679, 30.230715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710094, 21.477972, 30.484055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600613, 21.743652, 30.762314>,  <28.534924, 21.903061, 30.929270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600613, 21.743652, 30.762314>,  <28.710094, 21.477972, 30.484055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600613, 21.743652, 30.762314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117157, -0.694857, 0.709541,
		0.954651, 0.275706, 0.112371,
		-0.273707, 0.664199, 0.695647,
		28.518501, 21.942911, 30.971008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184561, 21.425211, 30.959749>,  <28.710094, 21.477972, 30.484055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184561, 21.425211, 30.959749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893465, 21.609787, 31.162716>,  <28.718807, 21.720531, 31.284496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893465, 21.609787, 31.162716>,  <29.184561, 21.425211, 30.959749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893465, 21.609787, 31.162716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108979, -0.652632, 0.749797,
		0.677140, 0.600955, 0.424659,
		-0.727740, 0.461438, 0.507415,
		28.675142, 21.748219, 31.314939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478102, 21.531044, 31.530516>,  <29.184561, 21.425211, 30.959749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478102, 21.531044, 31.530516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080170, 21.517544, 31.568829>,  <28.841410, 21.509443, 31.591816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080170, 21.517544, 31.568829>,  <29.478102, 21.531044, 31.530516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080170, 21.517544, 31.568829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094431, -0.654443, 0.750192,
		0.037364, 0.755358, 0.654246,
		-0.994830, -0.033752, 0.095782,
		28.781721, 21.507418, 31.597563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321716, 21.646582, 32.194546>,  <29.478102, 21.531044, 31.530516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321716, 21.646582, 32.194546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984661, 21.465343, 32.078152>,  <28.782429, 21.356602, 32.008316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984661, 21.465343, 32.078152>,  <29.321716, 21.646582, 32.194546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984661, 21.465343, 32.078152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159889, -0.726525, 0.668279,
		-0.514198, 0.516591, 0.684641,
		-0.842636, -0.453095, -0.290981,
		28.731871, 21.329414, 31.990858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214537, 22.025925, 32.854763>,  <29.321716, 21.646582, 32.194546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214537, 22.025925, 32.854763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.493256, 22.224113, 33.062214>,  <29.660488, 22.343027, 33.186684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.493256, 22.224113, 33.062214>,  <29.214537, 22.025925, 32.854763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493256, 22.224113, 33.062214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115328, 0.791049, -0.600784,
		-0.707934, 0.358813, 0.608344,
		0.696799, 0.495474, 0.518629,
		29.702295, 22.372755, 33.217804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973255, 22.755234, 32.847595>,  <29.214537, 22.025925, 32.854763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973255, 22.755234, 32.847595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364847, 22.763386, 32.928764>,  <29.599802, 22.768276, 32.977467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.364847, 22.763386, 32.928764>,  <28.973255, 22.755234, 32.847595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364847, 22.763386, 32.928764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080813, 0.874792, -0.477711,
		-0.187254, 0.484070, 0.854759,
		0.978982, 0.020378, 0.202928,
		29.658543, 22.769499, 32.989643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083496, 23.364992, 33.187160>,  <28.973255, 22.755234, 32.847595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083496, 23.364992, 33.187160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442003, 23.259796, 33.044312>,  <29.657108, 23.196678, 32.958603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442003, 23.259796, 33.044312>,  <29.083496, 23.364992, 33.187160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442003, 23.259796, 33.044312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104792, 0.907997, -0.405659,
		0.430950, 0.326156, 0.841370,
		0.896270, -0.262988, -0.357123,
		29.710884, 23.180901, 32.937176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514635, 23.959372, 33.337543>,  <29.083496, 23.364992, 33.187160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514635, 23.959372, 33.337543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.747484, 23.784100, 33.063572>,  <29.887194, 23.678936, 32.899189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.747484, 23.784100, 33.063572>,  <29.514635, 23.959372, 33.337543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747484, 23.784100, 33.063572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262616, 0.898545, -0.351640,
		0.769522, 0.024825, 0.638137,
		0.582124, -0.438179, -0.684931,
		29.922121, 23.652645, 32.858093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145998, 24.321198, 33.413826>,  <29.514635, 23.959372, 33.337543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145998, 24.321198, 33.413826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111982, 24.162102, 33.048405>,  <30.091572, 24.066645, 32.829151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111982, 24.162102, 33.048405>,  <30.145998, 24.321198, 33.413826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111982, 24.162102, 33.048405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136730, 0.903539, -0.406107,
		0.986951, -0.159445, -0.022455,
		-0.085041, -0.397737, -0.913550,
		30.086470, 24.042780, 32.774342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583778, 24.727833, 32.961327>,  <30.145998, 24.321198, 33.413826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583778, 24.727833, 32.961327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386259, 24.536152, 32.671078>,  <30.267748, 24.421144, 32.496929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386259, 24.536152, 32.671078>,  <30.583778, 24.727833, 32.961327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386259, 24.536152, 32.671078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178304, 0.760930, -0.623854,
		0.851101, -0.437438, -0.290300,
		-0.493796, -0.479201, -0.725625,
		30.238119, 24.392391, 32.453392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940739, 24.833176, 32.420982>,  <30.583778, 24.727833, 32.961327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940739, 24.833176, 32.420982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575203, 24.775841, 32.269009>,  <30.355881, 24.741440, 32.177822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575203, 24.775841, 32.269009>,  <30.940739, 24.833176, 32.420982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575203, 24.775841, 32.269009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098558, 0.829367, -0.549943,
		0.393933, -0.540005, -0.743782,
		-0.913840, -0.143335, -0.379937,
		30.301050, 24.732840, 32.155029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.753769, 22.913296, 36.820358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.527830, 22.927692, 36.490593>,  <26.392267, 22.936331, 36.292736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.527830, 22.927692, 36.490593>,  <26.753769, 22.913296, 36.820358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527830, 22.927692, 36.490593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709541, 0.531252, -0.462950,
		0.421307, -0.846449, -0.325615,
		-0.564847, 0.035993, -0.824410,
		26.358376, 22.938490, 36.243271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240551, 22.840481, 36.215076>,  <26.753769, 22.913296, 36.820358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240551, 22.840481, 36.215076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.905775, 22.967724, 36.036938>,  <26.704908, 23.044069, 35.930054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.905775, 22.967724, 36.036938>,  <27.240551, 22.840481, 36.215076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905775, 22.967724, 36.036938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517401, 0.725142, -0.454385,
		0.178397, -0.610717, -0.771491,
		-0.836941, 0.318110, -0.445349,
		26.654694, 23.063156, 35.903332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443584, 22.970760, 35.505108>,  <27.240551, 22.840481, 36.215076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443584, 22.970760, 35.505108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.123268, 23.202229, 35.566910>,  <26.931078, 23.341108, 35.603992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.123268, 23.202229, 35.566910>,  <27.443584, 22.970760, 35.505108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123268, 23.202229, 35.566910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480767, 0.774886, -0.410383,
		-0.357203, -0.254349, -0.898728,
		-0.800793, 0.578669, 0.154509,
		26.883030, 23.375830, 35.613262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162329, 23.168869, 34.702690>,  <27.443584, 22.970760, 35.505108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162329, 23.168869, 34.702690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.024069, 23.400398, 34.998119>,  <26.941113, 23.539316, 35.175377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.024069, 23.400398, 34.998119>,  <27.162329, 23.168869, 34.702690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024069, 23.400398, 34.998119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314152, 0.813046, -0.490168,
		-0.884214, 0.062598, -0.462868,
		-0.345650, 0.578824, 0.738572,
		26.920374, 23.574045, 35.219692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862255, 23.732702, 34.287964>,  <27.162329, 23.168869, 34.702690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862255, 23.732702, 34.287964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.854797, 23.892475, 34.654594>,  <26.850323, 23.988338, 34.874573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.854797, 23.892475, 34.654594>,  <26.862255, 23.732702, 34.287964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854797, 23.892475, 34.654594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259957, 0.887141, -0.381318,
		-0.965440, 0.231159, -0.120377,
		-0.018646, 0.399433, 0.916573,
		26.849203, 24.012304, 34.929565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502415, 24.316587, 34.267952>,  <26.862255, 23.732702, 34.287964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502415, 24.316587, 34.267952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.714775, 24.384705, 34.600010>,  <26.842192, 24.425575, 34.799244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.714775, 24.384705, 34.600010>,  <26.502415, 24.316587, 34.267952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714775, 24.384705, 34.600010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201128, 0.926290, -0.318643,
		-0.823221, 0.336134, 0.457516,
		0.530900, 0.170295, 0.830148,
		26.874044, 24.435793, 34.849052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305887, 24.912569, 34.649155>,  <26.502415, 24.316587, 34.267952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305887, 24.912569, 34.649155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.676649, 24.889622, 34.797508>,  <26.899107, 24.875853, 34.886520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.676649, 24.889622, 34.797508>,  <26.305887, 24.912569, 34.649155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676649, 24.889622, 34.797508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156177, 0.957575, -0.242197,
		-0.341257, 0.282417, 0.896540,
		0.926905, -0.057368, 0.370886,
		26.954721, 24.872412, 34.908775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415657, 25.560602, 34.861462>,  <26.305887, 24.912569, 34.649155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415657, 25.560602, 34.861462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777117, 25.390877, 34.838215>,  <26.993992, 25.289042, 34.824265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777117, 25.390877, 34.838215>,  <26.415657, 25.560602, 34.861462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777117, 25.390877, 34.838215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376112, 0.851148, -0.366180,
		0.204844, 0.309038, 0.928727,
		0.903647, -0.424315, -0.058120,
		27.048210, 25.263582, 34.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895687, 26.072317, 35.150024>,  <26.415657, 25.560602, 34.861462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895687, 26.072317, 35.150024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.133755, 25.828461, 34.940605>,  <27.276596, 25.682146, 34.814953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.133755, 25.828461, 34.940605>,  <26.895687, 26.072317, 35.150024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133755, 25.828461, 34.940605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562196, 0.781410, -0.270801,
		0.574201, -0.133166, 0.807812,
		0.595171, -0.609643, -0.523552,
		27.312305, 25.645567, 34.783539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592171, 26.284470, 35.333595>,  <26.895687, 26.072317, 35.150024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592171, 26.284470, 35.333595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.588881, 26.097912, 34.979782>,  <27.586906, 25.985977, 34.767494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.588881, 26.097912, 34.979782>,  <27.592171, 26.284470, 35.333595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588881, 26.097912, 34.979782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437727, 0.793636, -0.422536,
		0.899070, -0.390661, 0.197627,
		-0.008225, -0.466396, -0.884538,
		27.586412, 25.957993, 34.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303535, 26.344225, 35.044289>,  <27.592171, 26.284470, 35.333595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303535, 26.344225, 35.044289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.054340, 26.284904, 34.737068>,  <27.904823, 26.249311, 34.552738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.054340, 26.284904, 34.737068>,  <28.303535, 26.344225, 35.044289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054340, 26.284904, 34.737068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318865, 0.848439, -0.422465,
		0.714292, -0.508093, -0.481278,
		-0.622986, -0.148301, -0.768046,
		27.867445, 26.240414, 34.506653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845997, 26.622725, 34.478603>,  <28.303535, 26.344225, 35.044289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845997, 26.622725, 34.478603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486883, 26.603767, 34.303452>,  <28.271414, 26.592394, 34.198360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486883, 26.603767, 34.303452>,  <28.845997, 26.622725, 34.478603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486883, 26.603767, 34.303452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199391, 0.842745, -0.500024,
		0.392715, -0.536222, -0.747155,
		-0.897785, -0.047391, -0.437876,
		28.217548, 26.589550, 34.172089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355341, 26.413790, 33.939041>,  <28.845997, 26.622725, 34.478603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355341, 26.413790, 33.939041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.550535, 26.547573, 34.261536>,  <29.667652, 26.627842, 34.455032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.550535, 26.547573, 34.261536>,  <29.355341, 26.413790, 33.939041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550535, 26.547573, 34.261536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110023, -0.892738, 0.436936,
		0.865890, -0.301923, -0.398845,
		0.487985, 0.334456, 0.806232,
		29.696930, 26.647909, 34.503407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836363, 25.924603, 34.111969>,  <29.355341, 26.413790, 33.939041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836363, 25.924603, 34.111969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.800951, 26.108799, 34.465263>,  <29.779703, 26.219316, 34.677242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.800951, 26.108799, 34.465263>,  <29.836363, 25.924603, 34.111969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800951, 26.108799, 34.465263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175762, -0.880029, 0.441199,
		0.980444, -0.116180, 0.158845,
		-0.088530, 0.460490, 0.883239,
		29.774391, 26.246946, 34.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229708, 25.478102, 34.475803>,  <29.836363, 25.924603, 34.111969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229708, 25.478102, 34.475803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038683, 25.672462, 34.768604>,  <29.924068, 25.789080, 34.944286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038683, 25.672462, 34.768604>,  <30.229708, 25.478102, 34.475803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038683, 25.672462, 34.768604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007675, -0.830813, 0.556499,
		0.878564, 0.271382, 0.393036,
		-0.477563, 0.485903, 0.732005,
		29.895414, 25.818233, 34.988205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557892, 25.345066, 35.135925>,  <30.229708, 25.478102, 34.475803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557892, 25.345066, 35.135925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.172047, 25.437927, 35.185928>,  <29.940540, 25.493645, 35.215931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.172047, 25.437927, 35.185928>,  <30.557892, 25.345066, 35.135925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172047, 25.437927, 35.185928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085936, -0.725030, 0.683335,
		0.249274, 0.648411, 0.719323,
		-0.964613, 0.232154, 0.125009,
		29.882664, 25.507574, 35.223431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535616, 25.200304, 35.821346>,  <30.557892, 25.345066, 35.135925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535616, 25.200304, 35.821346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.157383, 25.225571, 35.693668>,  <29.930443, 25.240730, 35.617062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.157383, 25.225571, 35.693668>,  <30.535616, 25.200304, 35.821346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157383, 25.225571, 35.693668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239635, -0.798792, 0.551820,
		-0.220113, 0.598282, 0.770461,
		-0.945582, 0.063167, -0.319194,
		29.873709, 25.244520, 35.597912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145132, 25.017586, 36.452522>,  <30.535616, 25.200304, 35.821346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145132, 25.017586, 36.452522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925991, 24.970173, 36.121269>,  <29.794506, 24.941725, 35.922516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925991, 24.970173, 36.121269>,  <30.145132, 25.017586, 36.452522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925991, 24.970173, 36.121269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294645, -0.899142, 0.323619,
		-0.782970, 0.421301, 0.457673,
		-0.547853, -0.118533, -0.828135,
		29.761635, 24.934612, 35.872829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617849, 24.550186, 36.608383>,  <30.145132, 25.017586, 36.452522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617849, 24.550186, 36.608383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.601501, 24.518047, 36.210011>,  <29.591694, 24.498764, 35.970989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.601501, 24.518047, 36.210011>,  <29.617849, 24.550186, 36.608383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601501, 24.518047, 36.210011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462643, -0.881951, 0.090135,
		-0.885602, 0.464443, -0.001127,
		-0.040869, -0.080345, -0.995929,
		29.589241, 24.493944, 35.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997606, 24.293139, 36.568565>,  <29.617849, 24.550186, 36.608383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997606, 24.293139, 36.568565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.170248, 24.228672, 36.213547>,  <29.273832, 24.189991, 36.000534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.170248, 24.228672, 36.213547>,  <28.997606, 24.293139, 36.568565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170248, 24.228672, 36.213547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202750, -0.976067, 0.078647,
		-0.878983, 0.146007, -0.453951,
		0.431603, -0.161168, -0.887549,
		29.299728, 24.180323, 35.947281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503325, 24.119732, 36.083694>,  <28.997606, 24.293139, 36.568565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503325, 24.119732, 36.083694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.844639, 23.956478, 35.953876>,  <29.049427, 23.858526, 35.875984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.844639, 23.956478, 35.953876>,  <28.503325, 24.119732, 36.083694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844639, 23.956478, 35.953876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345374, -0.908659, 0.234639,
		-0.390666, -0.088124, -0.916305,
		0.853286, -0.408133, -0.324547,
		29.100624, 23.834038, 35.856514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331612, 23.526033, 35.639149>,  <28.503325, 24.119732, 36.083694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331612, 23.526033, 35.639149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.715122, 23.455009, 35.727890>,  <28.945229, 23.412395, 35.781136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.715122, 23.455009, 35.727890>,  <28.331612, 23.526033, 35.639149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715122, 23.455009, 35.727890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237921, -0.928501, 0.285097,
		0.155368, -0.326128, -0.932471,
		0.958778, -0.177559, 0.221852,
		29.002756, 23.401741, 35.794445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402475, 22.779644, 35.528416>,  <28.331612, 23.526033, 35.639149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402475, 22.779644, 35.528416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734739, 22.879177, 35.727650>,  <28.934097, 22.938896, 35.847191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734739, 22.879177, 35.727650>,  <28.402475, 22.779644, 35.528416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734739, 22.879177, 35.727650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095726, -0.817430, 0.568018,
		0.548487, -0.519510, -0.655188,
		0.830661, 0.248832, 0.498080,
		28.983938, 22.953827, 35.877075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751709, 22.183323, 35.511211>,  <28.402475, 22.779644, 35.528416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751709, 22.183323, 35.511211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899864, 22.381401, 35.825562>,  <28.988758, 22.500248, 36.014172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899864, 22.381401, 35.825562>,  <28.751709, 22.183323, 35.511211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899864, 22.381401, 35.825562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063308, -0.857534, 0.510517,
		0.926717, -0.139337, -0.348970,
		0.370388, 0.495197, 0.785871,
		29.010981, 22.529961, 36.061321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544640, 21.859623, 35.651745>,  <28.751709, 22.183323, 35.511211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544640, 21.859623, 35.651745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.348621, 22.022888, 35.959839>,  <29.231010, 22.120848, 36.144695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.348621, 22.022888, 35.959839>,  <29.544640, 21.859623, 35.651745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348621, 22.022888, 35.959839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063230, -0.864630, 0.498414,
		0.869400, 0.292947, 0.397901,
		-0.490046, 0.408162, 0.770233,
		29.201607, 22.145336, 36.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858213, 21.577751, 36.231434>,  <29.544640, 21.859623, 35.651745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858213, 21.577751, 36.231434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.510492, 21.705978, 36.381924>,  <29.301859, 21.782915, 36.472218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.510492, 21.705978, 36.381924>,  <29.858213, 21.577751, 36.231434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510492, 21.705978, 36.381924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030022, -0.794003, 0.607172,
		0.493366, 0.516522, 0.699853,
		-0.869303, 0.320569, 0.376227,
		29.249701, 21.802149, 36.494793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944279, 20.959902, 35.751270>,  <29.858213, 21.577751, 36.231434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944279, 20.959902, 35.751270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.087513, 20.680492, 35.503448>,  <30.173452, 20.512848, 35.354755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.087513, 20.680492, 35.503448>,  <29.944279, 20.959902, 35.751270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087513, 20.680492, 35.503448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260016, 0.711906, -0.652366,
		0.896754, 0.072508, 0.436549,
		0.358084, -0.698522, -0.619551,
		30.194939, 20.470936, 35.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636999, 21.102808, 35.685036>,  <29.944279, 20.959902, 35.751270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636999, 21.102808, 35.685036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476562, 20.921364, 35.366699>,  <30.380301, 20.812498, 35.175697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476562, 20.921364, 35.366699>,  <30.636999, 21.102808, 35.685036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476562, 20.921364, 35.366699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186387, 0.810200, -0.555730,
		0.896875, -0.371234, -0.240418,
		-0.401092, -0.453610, -0.795841,
		30.356236, 20.785280, 35.127945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982555, 21.395632, 35.144722>,  <30.636999, 21.102808, 35.685036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982555, 21.395632, 35.144722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.670107, 21.220062, 34.967094>,  <30.482639, 21.114721, 34.860516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.670107, 21.220062, 34.967094>,  <30.982555, 21.395632, 35.144722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670107, 21.220062, 34.967094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003850, 0.714592, -0.699531,
		0.624371, -0.544708, -0.559871,
		-0.781119, -0.438922, -0.444073,
		30.435772, 21.088387, 34.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131937, 21.420444, 34.398663>,  <30.982555, 21.395632, 35.144722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131937, 21.420444, 34.398663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739151, 21.346058, 34.412270>,  <30.503479, 21.301426, 34.420433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739151, 21.346058, 34.412270>,  <31.131937, 21.420444, 34.398663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739151, 21.346058, 34.412270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140351, 0.596545, -0.790212,
		0.126662, -0.780737, -0.611888,
		-0.981967, -0.185969, 0.034017,
		30.444561, 21.290268, 34.422474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868484, 21.173271, 33.721279>,  <31.131937, 21.420444, 34.398663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868484, 21.173271, 33.721279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566868, 21.342228, 33.922478>,  <30.385897, 21.443602, 34.043198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566868, 21.342228, 33.922478>,  <30.868484, 21.173271, 33.721279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566868, 21.342228, 33.922478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247896, 0.526154, -0.813456,
		-0.608249, -0.738071, -0.292033,
		-0.754042, 0.422390, 0.502997,
		30.340654, 21.468945, 34.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335802, 21.279839, 33.214893>,  <30.868484, 21.173271, 33.721279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335802, 21.279839, 33.214893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231956, 21.533199, 33.506481>,  <30.169649, 21.685215, 33.681435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231956, 21.533199, 33.506481>,  <30.335802, 21.279839, 33.214893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231956, 21.533199, 33.506481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381026, 0.626432, -0.680001,
		-0.887366, -0.454297, 0.078710,
		-0.259616, 0.633401, 0.728974,
		30.154072, 21.723219, 33.725174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818203, 21.607439, 32.853527>,  <30.335802, 21.279839, 33.214893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818203, 21.607439, 32.853527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.876570, 21.839455, 33.174091>,  <29.911591, 21.978664, 33.366432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.876570, 21.839455, 33.174091>,  <29.818203, 21.607439, 32.853527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876570, 21.839455, 33.174091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299544, 0.797961, -0.523002,
		-0.942858, -0.163742, 0.290184,
		0.145918, 0.580040, 0.801412,
		29.920345, 22.013466, 33.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008741, 21.339544, 32.827991>,  <29.818203, 21.607439, 32.853527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008741, 21.339544, 32.827991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810625, 21.136738, 32.545822>,  <28.691755, 21.015055, 32.376522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810625, 21.136738, 32.545822>,  <29.008741, 21.339544, 32.827991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810625, 21.136738, 32.545822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266978, -0.683888, 0.678985,
		-0.826687, 0.524627, 0.203362,
		-0.495290, -0.507014, -0.705425,
		28.662039, 20.984634, 32.334194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434994, 21.132196, 33.114319>,  <29.008741, 21.339544, 32.827991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434994, 21.132196, 33.114319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.412918, 20.898312, 32.790573>,  <28.399672, 20.757980, 32.596325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.412918, 20.898312, 32.790573>,  <28.434994, 21.132196, 33.114319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412918, 20.898312, 32.790573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411024, -0.725427, 0.552100,
		-0.909952, 0.363138, -0.200293,
		-0.055191, -0.584710, -0.809363,
		28.396360, 20.722898, 32.547764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803734, 20.865009, 33.109543>,  <28.434994, 21.132196, 33.114319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803734, 20.865009, 33.109543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.040007, 20.615810, 32.904419>,  <28.181770, 20.466291, 32.781345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.040007, 20.615810, 32.904419>,  <27.803734, 20.865009, 33.109543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040007, 20.615810, 32.904419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346232, -0.769730, 0.536320,
		-0.728848, -0.139245, -0.670367,
		0.590681, -0.622998, -0.512805,
		28.217211, 20.428911, 32.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311369, 20.208660, 33.012627>,  <27.803734, 20.865009, 33.109543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311369, 20.208660, 33.012627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.682018, 20.082661, 32.930508>,  <27.904408, 20.007061, 32.881237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.682018, 20.082661, 32.930508>,  <27.311369, 20.208660, 33.012627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682018, 20.082661, 32.930508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164648, -0.830821, 0.531628,
		-0.338024, -0.458818, -0.821721,
		0.926623, -0.314998, -0.205294,
		27.960005, 19.988161, 32.868919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139132, 19.498226, 33.009541>,  <27.311369, 20.208660, 33.012627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139132, 19.498226, 33.009541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.532425, 19.552361, 33.058422>,  <27.768400, 19.584841, 33.087753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.532425, 19.552361, 33.058422>,  <27.139132, 19.498226, 33.009541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532425, 19.552361, 33.058422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015100, -0.728319, 0.685072,
		0.181722, -0.671740, -0.718152,
		0.983234, 0.135337, 0.122209,
		27.827394, 19.592962, 33.095085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462698, 18.793516, 32.809784>,  <27.139132, 19.498226, 33.009541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462698, 18.793516, 32.809784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718000, 18.993889, 33.043602>,  <27.871181, 19.114113, 33.183895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718000, 18.993889, 33.043602>,  <27.462698, 18.793516, 32.809784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718000, 18.993889, 33.043602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193097, -0.839229, 0.508339,
		0.745213, -0.211576, -0.632371,
		0.638257, 0.500930, 0.584549,
		27.909477, 19.144167, 33.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017200, 18.343067, 32.813873>,  <27.462698, 18.793516, 32.809784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017200, 18.343067, 32.813873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.030935, 18.596436, 33.123093>,  <28.039177, 18.748457, 33.308624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.030935, 18.596436, 33.123093>,  <28.017200, 18.343067, 32.813873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030935, 18.596436, 33.123093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101760, -0.771699, 0.627795,
		0.994216, 0.057107, -0.090956,
		0.034339, 0.633419, 0.773046,
		28.041237, 18.786461, 33.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632156, 18.188374, 33.291889>,  <28.017200, 18.343067, 32.813873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632156, 18.188374, 33.291889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385813, 18.390194, 33.533932>,  <28.238007, 18.511286, 33.679157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385813, 18.390194, 33.533932>,  <28.632156, 18.188374, 33.291889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385813, 18.390194, 33.533932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148894, -0.679659, 0.718257,
		0.773660, 0.532440, 0.343449,
		-0.615857, 0.504550, 0.605103,
		28.201056, 18.541559, 33.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903746, 18.023983, 33.917660>,  <28.632156, 18.188374, 33.291889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903746, 18.023983, 33.917660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544895, 18.183464, 33.993767>,  <28.329584, 18.279152, 34.039429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544895, 18.183464, 33.993767>,  <28.903746, 18.023983, 33.917660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544895, 18.183464, 33.993767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107275, -0.614401, 0.781667,
		0.428551, 0.680843, 0.593966,
		-0.897126, 0.398702, 0.190265,
		28.275757, 18.303074, 34.050846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.237740, 31.289526, 24.131857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955227, 31.204124, 24.401844>,  <28.785719, 31.152884, 24.563837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955227, 31.204124, 24.401844>,  <29.237740, 31.289526, 24.131857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955227, 31.204124, 24.401844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607021, -0.673242, 0.422222,
		0.364270, 0.707927, 0.605101,
		-0.706281, -0.213506, 0.674968,
		28.743343, 31.140072, 24.604334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547092, 31.317686, 24.891073>,  <29.237740, 31.289526, 24.131857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547092, 31.317686, 24.891073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205273, 31.112274, 24.922142>,  <29.000181, 30.989027, 24.940783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205273, 31.112274, 24.922142>,  <29.547092, 31.317686, 24.891073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205273, 31.112274, 24.922142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467958, -0.696424, 0.544067,
		-0.225302, 0.501279, 0.835439,
		-0.854549, -0.513530, 0.077672,
		28.948908, 30.958216, 24.945444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535027, 31.084778, 25.601662>,  <29.547092, 31.317686, 24.891073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535027, 31.084778, 25.601662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273409, 30.849522, 25.411369>,  <29.116438, 30.708368, 25.297194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273409, 30.849522, 25.411369>,  <29.535027, 31.084778, 25.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273409, 30.849522, 25.411369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216706, -0.748211, 0.627072,
		-0.724754, 0.307037, 0.616815,
		-0.654042, -0.588140, -0.475732,
		29.077196, 30.673080, 25.268650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199736, 30.784435, 26.115759>,  <29.535027, 31.084778, 25.601662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199736, 30.784435, 26.115759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157927, 30.532276, 25.808079>,  <29.132841, 30.380980, 25.623470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157927, 30.532276, 25.808079>,  <29.199736, 30.784435, 26.115759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157927, 30.532276, 25.808079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138461, -0.775130, 0.616443,
		-0.984837, -0.042073, 0.168303,
		-0.104521, -0.630399, -0.769202,
		29.126570, 30.343157, 25.577318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672274, 30.271555, 26.281876>,  <29.199736, 30.784435, 26.115759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672274, 30.271555, 26.281876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866354, 30.110706, 25.971294>,  <28.982801, 30.014196, 25.784946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866354, 30.110706, 25.971294>,  <28.672274, 30.271555, 26.281876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866354, 30.110706, 25.971294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089502, -0.860475, 0.501569,
		-0.869812, -0.312854, -0.381510,
		0.485197, -0.402125, -0.776453,
		29.011913, 29.990068, 25.738359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327978, 29.625427, 26.204771>,  <28.672274, 30.271555, 26.281876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327978, 29.625427, 26.204771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676117, 29.581329, 26.012794>,  <28.885000, 29.554871, 25.897608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676117, 29.581329, 26.012794>,  <28.327978, 29.625427, 26.204771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676117, 29.581329, 26.012794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082617, -0.928113, 0.363015,
		-0.485461, -0.355600, -0.798671,
		0.870346, -0.110246, -0.479941,
		28.937222, 29.548256, 25.868813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272203, 28.941862, 25.847862>,  <28.327978, 29.625427, 26.204771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272203, 28.941862, 25.847862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652287, 29.058056, 25.892990>,  <28.880337, 29.127771, 25.920067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652287, 29.058056, 25.892990>,  <28.272203, 28.941862, 25.847862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652287, 29.058056, 25.892990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247424, -0.923365, 0.293563,
		0.189448, -0.251032, -0.949259,
		0.950206, 0.290484, 0.112818,
		28.937347, 29.145201, 25.926836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640676, 28.309202, 25.650801>,  <28.272203, 28.941862, 25.847862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640676, 28.309202, 25.650801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893459, 28.541523, 25.856052>,  <29.045128, 28.680916, 25.979204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893459, 28.541523, 25.856052>,  <28.640676, 28.309202, 25.650801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893459, 28.541523, 25.856052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366832, -0.807400, 0.462104,
		0.682691, -0.103797, -0.723297,
		0.631955, 0.580803, 0.513129,
		29.083046, 28.715763, 26.009991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407770, 28.139515, 25.516127>,  <28.640676, 28.309202, 25.650801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407770, 28.139515, 25.516127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412701, 28.320251, 25.872932>,  <29.415659, 28.428694, 26.087015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412701, 28.320251, 25.872932>,  <29.407770, 28.139515, 25.516127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412701, 28.320251, 25.872932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314380, -0.848594, 0.425503,
		0.949217, 0.275185, -0.152512,
		0.012328, 0.451841, 0.892013,
		29.416399, 28.455805, 26.140537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046261, 27.907955, 25.798298>,  <29.407770, 28.139515, 25.516127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046261, 27.907955, 25.798298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826799, 28.058674, 26.096828>,  <29.695122, 28.149105, 26.275946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826799, 28.058674, 26.096828>,  <30.046261, 27.907955, 25.798298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826799, 28.058674, 26.096828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255574, -0.774360, 0.578834,
		0.796028, 0.508321, 0.328556,
		-0.548654, 0.376798, 0.746325,
		29.662203, 28.171713, 26.320726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458469, 27.705877, 26.317402>,  <30.046261, 27.907955, 25.798298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458469, 27.705877, 26.317402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118877, 27.799469, 26.506920>,  <29.915121, 27.855625, 26.620630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118877, 27.799469, 26.506920>,  <30.458469, 27.705877, 26.317402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118877, 27.799469, 26.506920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184189, -0.709360, 0.680355,
		0.495283, 0.664877, 0.559137,
		-0.848981, 0.233981, 0.473797,
		29.864183, 27.869663, 26.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565605, 27.662298, 26.992064>,  <30.458469, 27.705877, 26.317402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565605, 27.662298, 26.992064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168974, 27.618870, 26.963806>,  <29.930996, 27.592813, 26.946852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168974, 27.618870, 26.963806>,  <30.565605, 27.662298, 26.992064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168974, 27.618870, 26.963806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043552, -0.793077, 0.607562,
		-0.121987, 0.599367, 0.791124,
		-0.991576, -0.108570, -0.070641,
		29.871502, 27.586298, 26.942614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745581, 28.202885, 27.469860>,  <30.565605, 27.662298, 26.992064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745581, 28.202885, 27.469860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000179, 28.377277, 27.724354>,  <31.152939, 28.481913, 27.877050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000179, 28.377277, 27.724354>,  <30.745581, 28.202885, 27.469860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000179, 28.377277, 27.724354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300207, 0.619812, -0.725058,
		-0.710458, 0.652497, 0.263623,
		0.636495, 0.435982, 0.636235,
		31.191128, 28.508072, 27.915224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768290, 28.940704, 27.313101>,  <30.745581, 28.202885, 27.469860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768290, 28.940704, 27.313101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108932, 28.906284, 27.519928>,  <31.313318, 28.885632, 27.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108932, 28.906284, 27.519928>,  <30.768290, 28.940704, 27.313101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108932, 28.906284, 27.519928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470333, 0.560925, -0.681285,
		-0.231413, 0.823382, 0.518160,
		0.851607, -0.086050, 0.517070,
		31.364414, 28.880470, 27.675049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139284, 29.584887, 27.239195>,  <30.768290, 28.940704, 27.313101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139284, 29.584887, 27.239195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426445, 29.337627, 27.367260>,  <31.598742, 29.189272, 27.444099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426445, 29.337627, 27.367260>,  <31.139284, 29.584887, 27.239195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426445, 29.337627, 27.367260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669625, 0.487463, -0.560342,
		0.190307, 0.616661, 0.763880,
		0.717904, -0.618150, 0.320164,
		31.641815, 29.152182, 27.463310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717131, 30.008224, 27.376957>,  <31.139284, 29.584887, 27.239195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717131, 30.008224, 27.376957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867205, 29.637474, 27.372200>,  <31.957249, 29.415024, 27.369347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867205, 29.637474, 27.372200>,  <31.717131, 30.008224, 27.376957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867205, 29.637474, 27.372200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887336, 0.362832, -0.284583,
		0.268087, 0.096220, 0.958578,
		0.375185, -0.926874, -0.011891,
		31.979761, 29.359411, 27.368633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352776, 30.061213, 27.647150>,  <31.717131, 30.008224, 27.376957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352776, 30.061213, 27.647150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395039, 29.721031, 27.441017>,  <32.420395, 29.516922, 27.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395039, 29.721031, 27.441017>,  <32.352776, 30.061213, 27.647150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395039, 29.721031, 27.441017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827953, 0.362261, -0.428090,
		0.550755, -0.381441, 0.742409,
		0.105655, -0.850453, -0.515332,
		32.426735, 29.465895, 27.286417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080296, 29.939610, 27.738712>,  <32.352776, 30.061213, 27.647150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080296, 29.939610, 27.738712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944721, 29.729286, 27.426647>,  <32.863377, 29.603092, 27.239408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944721, 29.729286, 27.426647>,  <33.080296, 29.939610, 27.738712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944721, 29.729286, 27.426647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823870, 0.234523, -0.515982,
		0.454273, -0.817634, 0.353710,
		-0.338931, -0.525808, -0.780161,
		32.843040, 29.571545, 27.192598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616314, 29.528143, 27.539015>,  <33.080296, 29.939610, 27.738712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616314, 29.528143, 27.539015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386929, 29.533890, 27.211372>,  <33.249298, 29.537338, 27.014786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386929, 29.533890, 27.211372>,  <33.616314, 29.528143, 27.539015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386929, 29.533890, 27.211372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789448, 0.276847, -0.547839,
		0.218896, -0.960807, -0.170104,
		-0.573460, 0.014369, -0.819107,
		33.214890, 29.538200, 26.965639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033756, 29.141626, 27.087616>,  <33.616314, 29.528143, 27.539015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033756, 29.141626, 27.087616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768166, 29.358227, 26.881348>,  <33.608810, 29.488186, 26.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768166, 29.358227, 26.881348>,  <34.033756, 29.141626, 27.087616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768166, 29.358227, 26.881348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743972, 0.409103, -0.528338,
		-0.075132, -0.734447, -0.674494,
		-0.663974, 0.541500, -0.515671,
		33.568974, 29.520678, 26.726646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264942, 29.020967, 26.361835>,  <34.033756, 29.141626, 27.087616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264942, 29.020967, 26.361835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040764, 29.351757, 26.379757>,  <33.906258, 29.550232, 26.390509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040764, 29.351757, 26.379757>,  <34.264942, 29.020967, 26.361835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040764, 29.351757, 26.379757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739615, 0.524118, -0.422220,
		-0.372648, -0.203497, -0.905385,
		-0.560449, 0.826976, 0.044802,
		33.872627, 29.599850, 26.393198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542515, 29.496796, 25.832336>,  <34.264942, 29.020967, 26.361835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542515, 29.496796, 25.832336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296165, 29.773834, 25.982540>,  <34.148357, 29.940058, 26.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296165, 29.773834, 25.982540>,  <34.542515, 29.496796, 25.832336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296165, 29.773834, 25.982540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634768, 0.718540, -0.284203,
		-0.466657, 0.063329, -0.882168,
		-0.615875, 0.692597, 0.375510,
		34.111404, 29.981613, 26.095194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227684, 29.961575, 25.253351>,  <34.542515, 29.496796, 25.832336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227684, 29.961575, 25.253351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238602, 30.142349, 25.610004>,  <34.245152, 30.250814, 25.823996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238602, 30.142349, 25.610004>,  <34.227684, 29.961575, 25.253351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238602, 30.142349, 25.610004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657096, 0.664067, -0.356708,
		-0.753313, 0.595624, -0.278840,
		0.027295, 0.451937, 0.891632,
		34.246792, 30.277931, 25.877495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182613, 30.671921, 25.095554>,  <34.227684, 29.961575, 25.253351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182613, 30.671921, 25.095554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339317, 30.619381, 25.459812>,  <34.433338, 30.587858, 25.678368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339317, 30.619381, 25.459812>,  <34.182613, 30.671921, 25.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339317, 30.619381, 25.459812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743246, 0.628576, -0.229079,
		-0.542321, 0.766577, 0.343872,
		0.391756, -0.131347, 0.910645,
		34.456844, 30.579977, 25.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284180, 31.301825, 25.210480>,  <34.182613, 30.671921, 25.095554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284180, 31.301825, 25.210480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496754, 31.112450, 25.491459>,  <34.624298, 30.998825, 25.660046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496754, 31.112450, 25.491459>,  <34.284180, 31.301825, 25.210480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496754, 31.112450, 25.491459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751352, 0.646408, -0.132766,
		-0.391211, 0.598342, 0.699243,
		0.531436, -0.473438, 0.702448,
		34.656185, 30.970419, 25.702192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509899, 31.764208, 25.752626>,  <34.284180, 31.301825, 25.210480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509899, 31.764208, 25.752626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781471, 31.471355, 25.774670>,  <34.944416, 31.295645, 25.787895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781471, 31.471355, 25.774670>,  <34.509899, 31.764208, 25.752626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781471, 31.471355, 25.774670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712993, 0.639551, -0.287430,
		0.175190, 0.234439, 0.956215,
		0.678933, -0.732129, 0.055110,
		34.985149, 31.251717, 25.791203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165783, 32.086521, 26.339314>,  <34.509899, 31.764208, 25.752626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165783, 32.086521, 26.339314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894585, 32.369495, 26.419170>,  <33.731865, 32.539280, 26.467085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894585, 32.369495, 26.419170>,  <34.165783, 32.086521, 26.339314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894585, 32.369495, 26.419170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061083, -0.324883, 0.943780,
		0.732523, 0.627684, 0.263482,
		-0.677996, 0.707434, 0.199643,
		33.691185, 32.581726, 26.479063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482647, 32.419876, 26.862963>,  <34.165783, 32.086521, 26.339314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482647, 32.419876, 26.862963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095543, 32.510208, 26.907578>,  <33.863281, 32.564407, 26.934347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095543, 32.510208, 26.907578>,  <34.482647, 32.419876, 26.862963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095543, 32.510208, 26.907578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054753, -0.243629, 0.968322,
		0.245846, 0.943212, 0.223410,
		-0.967761, 0.225825, 0.111539,
		33.805214, 32.577957, 26.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375084, 32.844234, 27.494404>,  <34.482647, 32.419876, 26.862963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375084, 32.844234, 27.494404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045593, 32.631550, 27.415665>,  <33.847897, 32.503937, 27.368422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045593, 32.631550, 27.415665>,  <34.375084, 32.844234, 27.494404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045593, 32.631550, 27.415665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035631, -0.297954, 0.953915,
		-0.565861, 0.792783, 0.226488,
		-0.823731, -0.531713, -0.196848,
		33.798473, 32.472034, 27.356611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977936, 33.038975, 28.057062>,  <34.375084, 32.844234, 27.494404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977936, 33.038975, 28.057062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820705, 32.704090, 27.904976>,  <33.726368, 32.503159, 27.813725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820705, 32.704090, 27.904976>,  <33.977936, 33.038975, 28.057062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820705, 32.704090, 27.904976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018081, -0.406384, 0.913523,
		-0.919327, 0.365961, 0.144604,
		-0.393079, -0.837212, -0.380217,
		33.702782, 32.452927, 27.790911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350525, 32.887115, 28.434053>,  <33.977936, 33.038975, 28.057062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350525, 32.887115, 28.434053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455154, 32.531315, 28.284195>,  <33.517933, 32.317833, 28.194279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455154, 32.531315, 28.284195>,  <33.350525, 32.887115, 28.434053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455154, 32.531315, 28.284195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209776, -0.431277, 0.877493,
		-0.942110, -0.150941, -0.299409,
		0.261578, -0.889504, -0.374647,
		33.533627, 32.264465, 28.171801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854553, 32.550922, 28.603685>,  <33.350525, 32.887115, 28.434053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854553, 32.550922, 28.603685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145237, 32.284039, 28.538296>,  <33.319649, 32.123909, 28.499062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145237, 32.284039, 28.538296>,  <32.854553, 32.550922, 28.603685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145237, 32.284039, 28.538296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154948, -0.391047, 0.907234,
		-0.669243, -0.633964, -0.387560,
		0.726708, -0.667212, -0.163474,
		33.363251, 32.083874, 28.489254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645573, 31.832062, 28.661373>,  <32.854553, 32.550922, 28.603685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645573, 31.832062, 28.661373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038807, 31.847538, 28.732979>,  <33.274746, 31.856825, 28.775942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038807, 31.847538, 28.732979>,  <32.645573, 31.832062, 28.661373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038807, 31.847538, 28.732979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140692, -0.466244, 0.873397,
		0.117259, -0.883810, -0.452914,
		0.983085, 0.038693, 0.179016,
		33.333733, 31.859146, 28.786684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720234, 31.164257, 29.001135>,  <32.645573, 31.832062, 28.661373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720234, 31.164257, 29.001135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063591, 31.349026, 29.090385>,  <33.269608, 31.459887, 29.143936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063591, 31.349026, 29.090385>,  <32.720234, 31.164257, 29.001135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063591, 31.349026, 29.090385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057368, -0.518663, 0.853052,
		0.509771, -0.719456, -0.471717,
		0.858395, 0.461923, 0.223126,
		33.321110, 31.487602, 29.157324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204193, 30.645449, 29.219341>,  <32.720234, 31.164257, 29.001135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204193, 30.645449, 29.219341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354511, 30.985405, 29.367107>,  <33.444702, 31.189379, 29.455767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354511, 30.985405, 29.367107>,  <33.204193, 30.645449, 29.219341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354511, 30.985405, 29.367107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050462, -0.416807, 0.907593,
		0.925329, -0.322426, -0.199521,
		0.375793, 0.849890, 0.369413,
		33.467251, 31.240372, 29.477932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738384, 30.486610, 29.598091>,  <33.204193, 30.645449, 29.219341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738384, 30.486610, 29.598091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630653, 30.841183, 29.748665>,  <33.566013, 31.053926, 29.839008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630653, 30.841183, 29.748665>,  <33.738384, 30.486610, 29.598091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630653, 30.841183, 29.748665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070395, -0.371710, 0.925676,
		0.960472, 0.275810, 0.037712,
		-0.269329, 0.886431, 0.376433,
		33.549854, 31.107113, 29.861595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177433, 30.554214, 30.136496>,  <33.738384, 30.486610, 29.598091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177433, 30.554214, 30.136496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888088, 30.814121, 30.229919>,  <33.714481, 30.970066, 30.285973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888088, 30.814121, 30.229919>,  <34.177433, 30.554214, 30.136496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888088, 30.814121, 30.229919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050230, -0.386885, 0.920759,
		0.688638, 0.654311, 0.312496,
		-0.723363, 0.649766, 0.233558,
		33.671078, 31.009050, 30.299988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238873, 30.721136, 30.905201>,  <34.177433, 30.554214, 30.136496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238873, 30.721136, 30.905201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875336, 30.864033, 30.819057>,  <33.657211, 30.949772, 30.767372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875336, 30.864033, 30.819057>,  <34.238873, 30.721136, 30.905201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875336, 30.864033, 30.819057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349525, -0.370417, 0.860595,
		0.227669, 0.857420, 0.461517,
		-0.908845, 0.357243, -0.215357,
		33.602684, 30.971205, 30.754450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026386, 31.101248, 31.536144>,  <34.238873, 30.721136, 30.905201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026386, 31.101248, 31.536144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690533, 31.026299, 31.332218>,  <33.489021, 30.981329, 31.209862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690533, 31.026299, 31.332218>,  <34.026386, 31.101248, 31.536144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690533, 31.026299, 31.332218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445532, -0.299290, 0.843758,
		-0.310680, 0.935584, 0.167812,
		-0.839630, -0.187373, -0.509816,
		33.438644, 30.970087, 31.179274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617512, 31.158613, 32.104698>,  <34.026386, 31.101248, 31.536144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617512, 31.158613, 32.104698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398212, 30.990013, 31.815765>,  <33.266632, 30.888853, 31.642405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398212, 30.990013, 31.815765>,  <33.617512, 31.158613, 32.104698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398212, 30.990013, 31.815765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583942, -0.425376, 0.691424,
		-0.598698, 0.800871, -0.012921,
		-0.548245, -0.421499, -0.722334,
		33.233738, 30.863564, 31.599066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787392, 31.320229, 32.172985>,  <33.617512, 31.158613, 32.104698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787392, 31.320229, 32.172985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856304, 30.988724, 31.960018>,  <32.897652, 30.789820, 31.832237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856304, 30.988724, 31.960018>,  <32.787392, 31.320229, 32.172985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856304, 30.988724, 31.960018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595784, -0.518100, 0.613689,
		-0.784449, 0.211477, -0.583025,
		0.172284, -0.828764, -0.532418,
		32.907990, 30.740095, 31.800293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159985, 31.106234, 31.975143>,  <32.787392, 31.320229, 32.172985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159985, 31.106234, 31.975143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384102, 30.775105, 31.963932>,  <32.518574, 30.576427, 31.957205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384102, 30.775105, 31.963932>,  <32.159985, 31.106234, 31.975143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384102, 30.775105, 31.963932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770899, -0.533545, 0.347914,
		-0.302965, -0.173328, -0.937107,
		0.560292, -0.827821, -0.028027,
		32.552189, 30.526758, 31.955524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799282, 30.649019, 31.587889>,  <32.159985, 31.106234, 31.975143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799282, 30.649019, 31.587889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058987, 30.420128, 31.788296>,  <32.214809, 30.282793, 31.908541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058987, 30.420128, 31.788296>,  <31.799282, 30.649019, 31.587889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058987, 30.420128, 31.788296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718067, -0.678308, 0.155814,
		0.250684, -0.460928, -0.851295,
		0.649259, -0.572226, 0.501018,
		32.253765, 30.248461, 31.938601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687443, 29.968126, 31.282276>,  <31.799282, 30.649019, 31.587889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687443, 29.968126, 31.282276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862894, 29.937710, 31.640453>,  <31.968164, 29.919460, 31.855360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862894, 29.937710, 31.640453>,  <31.687443, 29.968126, 31.282276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862894, 29.937710, 31.640453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527874, -0.828198, 0.188247,
		0.727292, -0.555253, -0.403412,
		0.438629, -0.076040, 0.895445,
		31.994482, 29.914898, 31.909086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791714, 29.219849, 31.449326>,  <31.687443, 29.968126, 31.282276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791714, 29.219849, 31.449326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833380, 29.387127, 31.810272>,  <31.858379, 29.487494, 32.026840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833380, 29.387127, 31.810272>,  <31.791714, 29.219849, 31.449326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833380, 29.387127, 31.810272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417104, -0.805286, 0.421353,
		0.902870, -0.420270, 0.090549,
		0.104165, 0.418196, 0.902365,
		31.864630, 29.512585, 32.080982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952187, 28.667480, 31.814600>,  <31.791714, 29.219849, 31.449326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952187, 28.667480, 31.814600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813509, 28.923996, 32.088402>,  <31.730303, 29.077906, 32.252682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813509, 28.923996, 32.088402>,  <31.952187, 28.667480, 31.814600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813509, 28.923996, 32.088402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401662, -0.760975, 0.509494,
		0.847626, -0.098301, 0.521409,
		-0.346696, 0.641291, 0.684505,
		31.709499, 29.116383, 32.293755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771040, 28.208946, 32.314255>,  <31.952187, 28.667480, 31.814600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771040, 28.208946, 32.314255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667490, 28.542542, 32.509167>,  <31.605360, 28.742699, 32.626114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667490, 28.542542, 32.509167>,  <31.771040, 28.208946, 32.314255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667490, 28.542542, 32.509167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568434, -0.539412, 0.621222,
		0.780940, -0.116170, 0.613708,
		-0.258874, 0.833990, 0.487283,
		31.589828, 28.792738, 32.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957760, 28.122122, 33.108822>,  <31.771040, 28.208946, 32.314255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957760, 28.122122, 33.108822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654438, 28.373756, 33.040440>,  <31.472445, 28.524736, 32.999409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654438, 28.373756, 33.040440>,  <31.957760, 28.122122, 33.108822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654438, 28.373756, 33.040440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586747, -0.544348, 0.599511,
		0.284082, 0.554922, 0.781895,
		-0.758304, 0.629085, -0.170959,
		31.426947, 28.562481, 32.989151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659967, 28.292425, 33.759727>,  <31.957760, 28.122122, 33.108822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659967, 28.292425, 33.759727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361345, 28.371838, 33.505722>,  <31.182171, 28.419485, 33.353321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361345, 28.371838, 33.505722>,  <31.659967, 28.292425, 33.759727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361345, 28.371838, 33.505722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657538, -0.365740, 0.658694,
		-0.101477, 0.909296, 0.403588,
		-0.746556, 0.198533, -0.635011,
		31.137379, 28.431396, 33.315220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151571, 28.700590, 34.144657>,  <31.659967, 28.292425, 33.759727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151571, 28.700590, 34.144657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006643, 28.504745, 33.827419>,  <30.919687, 28.387238, 33.637077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006643, 28.504745, 33.827419>,  <31.151571, 28.700590, 34.144657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006643, 28.504745, 33.827419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699016, -0.420110, 0.578692,
		-0.616523, 0.764059, -0.190033,
		-0.362321, -0.489613, -0.793097,
		30.897947, 28.357861, 33.589489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529501, 28.579708, 34.347446>,  <31.151571, 28.700590, 34.144657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529501, 28.579708, 34.347446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561476, 28.322048, 34.043163>,  <30.580660, 28.167452, 33.860592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561476, 28.322048, 34.043163>,  <30.529501, 28.579708, 34.347446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561476, 28.322048, 34.043163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628572, -0.624870, 0.463072,
		-0.773633, 0.441147, -0.454842,
		0.079935, -0.644148, -0.760713,
		30.585457, 28.128803, 33.814949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781694, 28.343843, 34.363205>,  <30.529501, 28.579708, 34.347446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781694, 28.343843, 34.363205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013487, 28.089409, 34.159405>,  <30.152563, 27.936749, 34.037125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013487, 28.089409, 34.159405>,  <29.781694, 28.343843, 34.363205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013487, 28.089409, 34.159405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535487, -0.768451, 0.350338,
		-0.614374, 0.069819, -0.785919,
		0.579480, -0.636089, -0.509504,
		30.187330, 27.898582, 34.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326284, 27.895947, 34.079700>,  <29.781694, 28.343843, 34.363205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326284, 27.895947, 34.079700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681662, 27.723846, 34.143642>,  <29.894888, 27.620586, 34.182007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681662, 27.723846, 34.143642>,  <29.326284, 27.895947, 34.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681662, 27.723846, 34.143642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457402, -0.858864, 0.230513,
		0.038120, -0.277918, -0.959848,
		0.888443, -0.430249, 0.159860,
		29.948195, 27.594772, 34.191601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215818, 27.125299, 33.796413>,  <29.326284, 27.895947, 34.079700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215818, 27.125299, 33.796413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512787, 27.100880, 34.063271>,  <29.690968, 27.086227, 34.223385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512787, 27.100880, 34.063271>,  <29.215818, 27.125299, 33.796413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512787, 27.100880, 34.063271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381420, -0.857202, 0.346012,
		0.550755, -0.511349, -0.659690,
		0.742420, -0.061051, 0.667147,
		29.735514, 27.082563, 34.263416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890547, 26.605621, 33.433979>,  <29.215818, 27.125299, 33.796413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890547, 26.605621, 33.433979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514278, 26.702110, 33.529438>,  <28.288517, 26.760004, 33.586716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514278, 26.702110, 33.529438>,  <28.890547, 26.605621, 33.433979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514278, 26.702110, 33.529438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042082, 0.780812, -0.623347,
		-0.336706, -0.576320, -0.744637,
		-0.940669, 0.241220, 0.238652,
		28.232079, 26.774477, 33.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616589, 26.705561, 32.836010>,  <28.890547, 26.605621, 33.433979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616589, 26.705561, 32.836010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366459, 26.904617, 33.076450>,  <28.216381, 27.024052, 33.220715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366459, 26.904617, 33.076450>,  <28.616589, 26.705561, 32.836010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366459, 26.904617, 33.076450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109133, 0.706942, -0.698802,
		-0.772695, -0.502578, -0.387760,
		-0.625326, 0.497643, 0.601098,
		28.178862, 27.053909, 33.256779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078234, 26.815556, 32.451630>,  <28.616589, 26.705561, 32.836010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078234, 26.815556, 32.451630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113157, 27.093884, 32.736786>,  <28.134111, 27.260880, 32.907879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113157, 27.093884, 32.736786>,  <28.078234, 26.815556, 32.451630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113157, 27.093884, 32.736786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043402, 0.712287, -0.700545,
		-0.995235, 0.092105, 0.031990,
		0.087310, 0.695818, 0.712891,
		28.139351, 27.302629, 32.950653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727247, 27.297602, 32.229755>,  <28.078234, 26.815556, 32.451630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727247, 27.297602, 32.229755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930489, 27.492485, 32.513859>,  <28.052433, 27.609415, 32.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930489, 27.492485, 32.513859>,  <27.727247, 27.297602, 32.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930489, 27.492485, 32.513859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081898, 0.793568, -0.602945,
		-0.857394, 0.364526, 0.363313,
		0.508103, 0.487207, 0.710254,
		28.082920, 27.638647, 32.726936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327744, 27.872946, 32.399120>,  <27.727247, 27.297602, 32.229755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327744, 27.872946, 32.399120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710451, 27.935520, 32.497200>,  <27.940075, 27.973064, 32.556046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710451, 27.935520, 32.497200>,  <27.327744, 27.872946, 32.399120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710451, 27.935520, 32.497200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054989, 0.730537, -0.680655,
		-0.285602, 0.664713, 0.690354,
		0.956769, 0.156435, 0.245195,
		27.997482, 27.982450, 32.570759>
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
