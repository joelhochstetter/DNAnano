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
	<1.483539, 1.197814, 0.698345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.779991, 1.450871, 0.788223>,  <1.957863, 1.602705, 0.842150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.779991, 1.450871, 0.788223>,  <1.483539, 1.197814, 0.698345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.779991, 1.450871, 0.788223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012047, -0.347166, 0.937726,
		0.671252, -0.692271, -0.264917,
		0.741131, 0.632643, 0.224696,
		2.002331, 1.640663, 0.855632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.974705, 0.785164, 1.103321>,  <1.483539, 1.197814, 0.698345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.974705, 0.785164, 1.103321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021512, 1.171635, 1.195244>,  <2.049597, 1.403517, 1.250398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021512, 1.171635, 1.195244>,  <1.974705, 0.785164, 1.103321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021512, 1.171635, 1.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032585, -0.227538, 0.973224,
		0.992595, -0.121374, 0.004857,
		0.117019, 0.966175, 0.229808,
		2.056618, 1.461487, 1.264186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.606945, 0.923742, 1.474058>,  <1.974705, 0.785164, 1.103321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.606945, 0.923742, 1.474058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.284428, 1.141430, 1.566765>,  <2.090917, 1.272042, 1.622389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.284428, 1.141430, 1.566765>,  <2.606945, 0.923742, 1.474058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.284428, 1.141430, 1.566765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068757, -0.475392, 0.877083,
		0.587505, 0.691251, 0.420725,
		-0.806294, 0.544219, 0.231767,
		2.042539, 1.304695, 1.636295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736185, 1.105815, 2.096369>,  <2.606945, 0.923742, 1.474058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736185, 1.105815, 2.096369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.341067, 1.161900, 2.069237>,  <2.103996, 1.195550, 2.052958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.341067, 1.161900, 2.069237>,  <2.736185, 1.105815, 2.096369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.341067, 1.161900, 2.069237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111021, -0.328370, 0.938002,
		0.109246, 0.934084, 0.339928,
		-0.987795, 0.140212, -0.067830,
		2.044728, 1.203963, 2.048888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.483716, 1.584615, 2.652297>,  <2.736185, 1.105815, 2.096369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.483716, 1.584615, 2.652297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.259912, 1.276684, 2.529457>,  <2.125629, 1.091925, 2.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.259912, 1.276684, 2.529457>,  <2.483716, 1.584615, 2.652297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.259912, 1.276684, 2.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006955, -0.366151, 0.930530,
		-0.828793, 0.522778, 0.199511,
		-0.559511, -0.769829, -0.307099,
		2.092059, 1.045735, 2.437327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.999032, 1.437941, 3.171642>,  <2.483716, 1.584615, 2.652297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.999032, 1.437941, 3.171642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.008645, 1.091885, 2.971260>,  <2.014412, 0.884251, 2.851031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.008645, 1.091885, 2.971260>,  <1.999032, 1.437941, 3.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.008645, 1.091885, 2.971260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080846, -0.501140, 0.861582,
		-0.996437, 0.019797, -0.081985,
		0.024030, -0.865140, -0.500954,
		2.015854, 0.832343, 2.820974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.517912, 0.944536, 3.511830>,  <1.999032, 1.437941, 3.171642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.517912, 0.944536, 3.511830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743579, 0.691887, 3.299126>,  <1.878979, 0.540298, 3.171503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743579, 0.691887, 3.299126>,  <1.517912, 0.944536, 3.511830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.743579, 0.691887, 3.299126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096501, -0.589186, 0.802214,
		-0.820002, -0.503898, -0.271447,
		0.564167, -0.631623, -0.531760,
		1.912829, 0.502400, 3.139597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308056, 0.201371, 3.654836>,  <1.517912, 0.944536, 3.511830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308056, 0.201371, 3.654836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690250, 0.200348, 3.536827>,  <1.919567, 0.199734, 3.466022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690250, 0.200348, 3.536827>,  <1.308056, 0.201371, 3.654836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690250, 0.200348, 3.536827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235090, -0.597586, 0.766566,
		-0.178262, -0.801801, -0.570384,
		0.955487, -0.002558, -0.295022,
		1.976897, 0.199580, 3.448320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.202613, 0.527201, 4.360590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301254, 0.139736, 4.348701>,  <2.360439, -0.092742, 4.341568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301254, 0.139736, 4.348701>,  <2.202613, 0.527201, 4.360590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.301254, 0.139736, 4.348701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027645, 0.023625, -0.999339,
		0.968722, 0.247261, -0.020953,
		0.246603, -0.968661, -0.029721,
		2.375235, -0.150862, 4.339785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.971015, 0.354283, 4.217568>,  <2.202613, 0.527201, 4.360590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.971015, 0.354283, 4.217568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684753, 0.099285, 4.103416>,  <2.512997, -0.053713, 4.034925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684753, 0.099285, 4.103416>,  <2.971015, 0.354283, 4.217568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684753, 0.099285, 4.103416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248132, 0.149884, -0.957061,
		0.652895, -0.755735, 0.050918,
		-0.715653, -0.637494, -0.285380,
		2.470057, -0.091963, 4.017802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.285694, 0.057574, 3.663724>,  <2.971015, 0.354283, 4.217568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.285694, 0.057574, 3.663724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888187, 0.035599, 3.624924>,  <2.649683, 0.022413, 3.601644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888187, 0.035599, 3.624924>,  <3.285694, 0.057574, 3.663724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888187, 0.035599, 3.624924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082155, 0.227230, -0.970370,
		0.075351, -0.972290, -0.221300,
		-0.993767, -0.054937, -0.097001,
		2.590057, 0.019117, 3.595823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.189869, -0.024688, 2.902245>,  <3.285694, 0.057574, 3.663724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.189869, -0.024688, 2.902245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.822983, 0.034801, 3.050079>,  <2.602851, 0.070495, 3.138780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.822983, 0.034801, 3.050079>,  <3.189869, -0.024688, 2.902245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.822983, 0.034801, 3.050079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256890, 0.488283, -0.834019,
		-0.304502, -0.859919, -0.409656,
		-0.917217, 0.148724, 0.369587,
		2.547818, 0.079418, 3.160955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.669298, -0.259375, 2.446565>,  <3.189869, -0.024688, 2.902245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.669298, -0.259375, 2.446565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.457338, 0.006092, 2.657753>,  <2.330163, 0.165372, 2.784466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.457338, 0.006092, 2.657753>,  <2.669298, -0.259375, 2.446565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457338, 0.006092, 2.657753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315254, 0.423796, -0.849124,
		-0.787287, -0.616395, -0.015346,
		-0.529899, 0.663667, 0.527970,
		2.298368, 0.205192, 2.816144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.979932, -0.295647, 2.216120>,  <2.669298, -0.259375, 2.446565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.979932, -0.295647, 2.216120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.022406, 0.066475, 2.380630>,  <2.047890, 0.283748, 2.479337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.022406, 0.066475, 2.380630>,  <1.979932, -0.295647, 2.216120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.022406, 0.066475, 2.380630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369110, 0.419950, -0.829096,
		-0.923300, -0.063770, 0.378749,
		0.106185, 0.905304, 0.411278,
		2.054261, 0.338066, 2.504014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.417022, 0.007958, 2.109383>,  <1.979932, -0.295647, 2.216120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.417022, 0.007958, 2.109383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682150, 0.303650, 2.157066>,  <1.841226, 0.481065, 2.185676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682150, 0.303650, 2.157066>,  <1.417022, 0.007958, 2.109383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.682150, 0.303650, 2.157066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273462, 0.387187, -0.880514,
		-0.697058, 0.551022, 0.458786,
		0.662819, 0.739230, 0.119208,
		1.880996, 0.525419, 2.192829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070581, 0.618112, 1.745319>,  <1.417022, 0.007958, 2.109383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070581, 0.618112, 1.745319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460133, 0.684372, 1.807442>,  <1.693864, 0.724128, 1.844715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460133, 0.684372, 1.807442>,  <1.070581, 0.618112, 1.745319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.460133, 0.684372, 1.807442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048182, 0.517634, -0.854244,
		-0.221897, 0.839413, 0.496132,
		0.973879, 0.165650, 0.155306,
		1.752296, 0.734067, 1.854033>
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
