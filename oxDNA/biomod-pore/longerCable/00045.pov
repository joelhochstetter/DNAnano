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
	<24.018442, 35.241764, 34.959480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238815, 34.908123, 34.948521>,  <24.371038, 34.707939, 34.941944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238815, 34.908123, 34.948521>,  <24.018442, 35.241764, 34.959480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238815, 34.908123, 34.948521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831337, 0.551392, -0.069608,
		0.073167, 0.015572, 0.997198,
		0.550931, -0.834101, -0.027398,
		24.404095, 34.657894, 34.940300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655949, 35.508488, 35.175579>,  <24.018442, 35.241764, 34.959480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655949, 35.508488, 35.175579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756998, 35.155449, 35.016987>,  <24.817629, 34.943626, 34.921829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756998, 35.155449, 35.016987>,  <24.655949, 35.508488, 35.175579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756998, 35.155449, 35.016987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918779, 0.347298, -0.187695,
		0.303357, -0.316864, 0.898650,
		0.252625, -0.882599, -0.396484,
		24.832787, 34.890671, 34.898041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437536, 35.670177, 35.186535>,  <24.655949, 35.508488, 35.175579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437536, 35.670177, 35.186535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476543, 35.305752, 35.026310>,  <25.499947, 35.087097, 34.930176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476543, 35.305752, 35.026310>,  <25.437536, 35.670177, 35.186535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476543, 35.305752, 35.026310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572578, -0.277844, 0.771335,
		-0.814030, -0.304572, 0.494561,
		0.097516, -0.911065, -0.400564,
		25.505798, 35.032433, 34.906139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156452, 35.085533, 35.562565>,  <25.437536, 35.670177, 35.186535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156452, 35.085533, 35.562565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472570, 34.959255, 35.352509>,  <25.662241, 34.883488, 35.226475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472570, 34.959255, 35.352509>,  <25.156452, 35.085533, 35.562565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472570, 34.959255, 35.352509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548866, -0.016218, 0.835753,
		-0.272358, -0.948723, 0.160456,
		0.790296, -0.315693, -0.525139,
		25.709660, 34.864548, 35.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414230, 34.474308, 35.883232>,  <25.156452, 35.085533, 35.562565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414230, 34.474308, 35.883232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180552, 34.423103, 36.203815>,  <25.040344, 34.392380, 36.396164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180552, 34.423103, 36.203815>,  <25.414230, 34.474308, 35.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180552, 34.423103, 36.203815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697116, -0.584832, 0.414730,
		0.415626, 0.800990, 0.430895,
		-0.584195, -0.128011, 0.801454,
		25.005293, 34.384701, 36.444252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788540, 34.696396, 36.552929>,  <25.414230, 34.474308, 35.883232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788540, 34.696396, 36.552929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520367, 34.399643, 36.557388>,  <25.359463, 34.221592, 36.560062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520367, 34.399643, 36.557388>,  <25.788540, 34.696396, 36.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520367, 34.399643, 36.557388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691204, -0.619032, 0.372876,
		-0.269733, 0.257691, 0.927814,
		-0.670433, -0.741886, 0.011144,
		25.319237, 34.177078, 36.560730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398359, 34.416897, 36.830837>,  <25.788540, 34.696396, 36.552929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398359, 34.416897, 36.830837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628302, 34.681717, 37.023186>,  <26.766268, 34.840607, 37.138596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628302, 34.681717, 37.023186>,  <26.398359, 34.416897, 36.830837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628302, 34.681717, 37.023186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765306, -0.642983, -0.029649,
		0.289562, 0.385056, -0.876291,
		0.574857, 0.662046, 0.480869,
		26.800758, 34.880329, 37.167446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963991, 34.438709, 36.477249>,  <26.398359, 34.416897, 36.830837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963991, 34.438709, 36.477249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049902, 34.535667, 36.855690>,  <27.101448, 34.593842, 37.082756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049902, 34.535667, 36.855690>,  <26.963991, 34.438709, 36.477249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049902, 34.535667, 36.855690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785555, -0.618473, -0.019875,
		0.580324, 0.747487, -0.323246,
		0.214775, 0.242393, 0.946106,
		27.114334, 34.608387, 37.139523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652246, 34.538132, 36.410320>,  <26.963991, 34.438709, 36.477249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652246, 34.538132, 36.410320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598316, 34.482388, 36.802727>,  <27.565958, 34.448940, 37.038170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598316, 34.482388, 36.802727>,  <27.652246, 34.538132, 36.410320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598316, 34.482388, 36.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835668, -0.547988, 0.037004,
		0.532430, 0.824796, 0.190341,
		-0.134825, -0.139360, 0.981020,
		27.557869, 34.440578, 37.097034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400560, 34.708786, 36.773422>,  <27.652246, 34.538132, 36.410320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400560, 34.708786, 36.773422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165154, 34.482697, 37.004650>,  <28.023909, 34.347042, 37.143387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165154, 34.482697, 37.004650>,  <28.400560, 34.708786, 36.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165154, 34.482697, 37.004650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684188, -0.729122, -0.016369,
		0.430734, 0.385874, 0.815824,
		-0.588519, -0.565228, 0.578068,
		27.988598, 34.313129, 37.178070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758234, 34.608322, 37.369537>,  <28.400560, 34.708786, 36.773422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758234, 34.608322, 37.369537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500177, 34.303635, 37.345634>,  <28.345343, 34.120823, 37.331295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500177, 34.303635, 37.345634>,  <28.758234, 34.608322, 37.369537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500177, 34.303635, 37.345634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757768, -0.647885, 0.077670,
		-0.097876, 0.004829, 0.995187,
		-0.645142, -0.761723, -0.059754,
		28.306635, 34.075119, 37.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829290, 34.147316, 37.911060>,  <28.758234, 34.608322, 37.369537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829290, 34.147316, 37.911060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671534, 33.952251, 37.599510>,  <28.576880, 33.835213, 37.412582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671534, 33.952251, 37.599510>,  <28.829290, 34.147316, 37.911060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671534, 33.952251, 37.599510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523762, -0.815717, 0.245516,
		-0.755069, -0.311115, 0.577129,
		-0.394390, -0.487660, -0.778873,
		28.553217, 33.805954, 37.365849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631922, 33.590473, 38.114220>,  <28.829290, 34.147316, 37.911060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631922, 33.590473, 38.114220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743290, 33.502647, 37.740208>,  <28.810110, 33.449951, 37.515800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743290, 33.502647, 37.740208>,  <28.631922, 33.590473, 38.114220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743290, 33.502647, 37.740208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593942, -0.725699, 0.347266,
		-0.754795, -0.652037, -0.071638,
		0.278418, -0.219566, -0.935026,
		28.826815, 33.436779, 37.459702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716976, 32.894588, 38.084568>,  <28.631922, 33.590473, 38.114220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716976, 32.894588, 38.084568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967602, 33.027149, 37.802410>,  <29.117977, 33.106686, 37.633114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967602, 33.027149, 37.802410>,  <28.716976, 32.894588, 38.084568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967602, 33.027149, 37.802410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691626, -0.653650, 0.307240,
		-0.359263, -0.680378, -0.638762,
		0.626565, 0.331404, -0.705399,
		29.155571, 33.126572, 37.590790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179470, 32.567963, 37.708576>,  <28.716976, 32.894588, 38.084568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179470, 32.567963, 37.708576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522942, 32.715092, 37.565815>,  <28.729025, 32.803368, 37.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522942, 32.715092, 37.565815>,  <28.179470, 32.567963, 37.708576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522942, 32.715092, 37.565815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474925, -0.309267, 0.823893,
		0.192666, -0.876962, -0.440248,
		0.858677, 0.367821, -0.356906,
		28.780544, 32.825439, 37.458744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858534, 32.853203, 37.026512>,  <28.179470, 32.567963, 37.708576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858534, 32.853203, 37.026512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048243, 33.168152, 37.184048>,  <28.162067, 33.357121, 37.278568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048243, 33.168152, 37.184048>,  <27.858534, 32.853203, 37.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048243, 33.168152, 37.184048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869467, 0.489125, 0.069167,
		-0.138175, -0.375232, 0.916574,
		0.474273, 0.787374, 0.393837,
		28.190525, 33.404366, 37.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366201, 33.190163, 37.361057>,  <27.858534, 32.853203, 37.026512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366201, 33.190163, 37.361057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659151, 33.461006, 37.332355>,  <27.834921, 33.623512, 37.315136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659151, 33.461006, 37.332355>,  <27.366201, 33.190163, 37.361057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659151, 33.461006, 37.332355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600873, 0.692268, 0.399646,
		0.320277, -0.249575, 0.913857,
		0.732375, 0.677110, -0.071755,
		27.878864, 33.664139, 37.310829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195940, 33.591553, 37.907639>,  <27.366201, 33.190163, 37.361057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195940, 33.591553, 37.907639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455563, 33.810024, 37.695820>,  <27.611336, 33.941109, 37.568729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455563, 33.810024, 37.695820>,  <27.195940, 33.591553, 37.907639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455563, 33.810024, 37.695820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487609, 0.832983, 0.261491,
		0.583920, 0.088487, 0.806975,
		0.649057, 0.546178, -0.529542,
		27.650280, 33.973877, 37.536957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413048, 34.165585, 38.354706>,  <27.195940, 33.591553, 37.907639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413048, 34.165585, 38.354706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464108, 34.270096, 37.971992>,  <27.494743, 34.332802, 37.742363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464108, 34.270096, 37.971992>,  <27.413048, 34.165585, 38.354706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464108, 34.270096, 37.971992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613099, 0.779076, 0.130957,
		0.779625, 0.569887, 0.259642,
		0.127650, 0.261284, -0.956784,
		27.502401, 34.348480, 37.684956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376583, 34.837212, 38.390438>,  <27.413048, 34.165585, 38.354706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376583, 34.837212, 38.390438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292227, 34.770760, 38.005123>,  <27.241613, 34.730888, 37.773933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292227, 34.770760, 38.005123>,  <27.376583, 34.837212, 38.390438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292227, 34.770760, 38.005123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561321, 0.827361, -0.019804,
		0.800278, 0.536538, -0.267735,
		-0.210888, -0.166134, -0.963289,
		27.228960, 34.720921, 37.716137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336718, 35.495892, 37.913929>,  <27.376583, 34.837212, 38.390438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336718, 35.495892, 37.913929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076296, 35.221169, 37.784672>,  <26.920042, 35.056335, 37.707115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076296, 35.221169, 37.784672>,  <27.336718, 35.495892, 37.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076296, 35.221169, 37.784672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635364, 0.726041, -0.263017,
		0.415258, 0.034076, -0.909065,
		-0.651056, -0.686807, -0.323145,
		26.880980, 35.015125, 37.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269436, 35.570534, 37.135540>,  <27.336718, 35.495892, 37.913929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269436, 35.570534, 37.135540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947529, 35.460747, 37.346069>,  <26.754385, 35.394875, 37.472385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947529, 35.460747, 37.346069>,  <27.269436, 35.570534, 37.135540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947529, 35.460747, 37.346069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501748, 0.788318, -0.356096,
		-0.317171, -0.550655, -0.772128,
		-0.804768, -0.274470, 0.526321,
		26.706099, 35.378407, 37.503967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013708, 35.587799, 37.029617>,  <27.269436, 35.570534, 37.135540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013708, 35.587799, 37.029617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262779, 35.878391, 37.145893>,  <28.412222, 36.052746, 37.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262779, 35.878391, 37.145893>,  <28.013708, 35.587799, 37.029617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262779, 35.878391, 37.145893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182833, 0.496297, -0.848682,
		-0.760819, 0.475307, 0.441857,
		0.622676, 0.726480, 0.290690,
		28.449583, 36.096336, 37.233101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737591, 36.315186, 37.004429>,  <28.013708, 35.587799, 37.029617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737591, 36.315186, 37.004429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135077, 36.301517, 36.961796>,  <28.373568, 36.293316, 36.936214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135077, 36.301517, 36.961796>,  <27.737591, 36.315186, 37.004429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135077, 36.301517, 36.961796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083571, 0.406936, -0.909626,
		0.074457, 0.912817, 0.401523,
		0.993716, -0.034173, -0.106584,
		28.433191, 36.291267, 36.929821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939289, 36.979492, 36.827023>,  <27.737591, 36.315186, 37.004429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939289, 36.979492, 36.827023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217478, 36.721855, 36.699608>,  <28.384392, 36.567272, 36.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217478, 36.721855, 36.699608>,  <27.939289, 36.979492, 36.827023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217478, 36.721855, 36.699608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035243, 0.412188, -0.910417,
		0.717689, 0.644396, 0.263965,
		0.695472, -0.644093, -0.318533,
		28.426119, 36.528625, 36.604050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485775, 37.366283, 36.571232>,  <27.939289, 36.979492, 36.827023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485775, 37.366283, 36.571232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500181, 37.007404, 36.395164>,  <28.508825, 36.792076, 36.289524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500181, 37.007404, 36.395164>,  <28.485775, 37.366283, 36.571232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500181, 37.007404, 36.395164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037295, 0.438939, -0.897743,
		0.998655, 0.048748, -0.017652,
		0.036015, -0.897193, -0.440166,
		28.510986, 36.738247, 36.263115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019428, 37.416866, 36.159840>,  <28.485775, 37.366283, 36.571232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019428, 37.416866, 36.159840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772844, 37.127262, 36.036045>,  <28.624895, 36.953499, 35.961769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772844, 37.127262, 36.036045>,  <29.019428, 37.416866, 36.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772844, 37.127262, 36.036045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169995, 0.506170, -0.845514,
		0.768818, -0.468612, -0.435111,
		-0.616458, -0.724013, -0.309491,
		28.587906, 36.910057, 35.943199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278080, 37.309898, 35.535892>,  <29.019428, 37.416866, 36.159840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278080, 37.309898, 35.535892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892912, 37.211361, 35.579891>,  <28.661812, 37.152237, 35.606289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892912, 37.211361, 35.579891>,  <29.278080, 37.309898, 35.535892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892912, 37.211361, 35.579891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241603, 0.605962, -0.757916,
		0.120057, -0.756388, -0.643011,
		-0.962919, -0.246347, 0.109996,
		28.604036, 37.137455, 35.612888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975979, 37.131920, 34.899059>,  <29.278080, 37.309898, 35.535892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975979, 37.131920, 34.899059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646730, 37.232590, 35.102680>,  <28.449181, 37.292992, 35.224854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646730, 37.232590, 35.102680>,  <28.975979, 37.131920, 34.899059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646730, 37.232590, 35.102680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303704, 0.562349, -0.769108,
		-0.479827, -0.787670, -0.386448,
		-0.823122, 0.251673, 0.509049,
		28.399794, 37.308090, 35.255394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421549, 37.266136, 34.511131>,  <28.975979, 37.131920, 34.899059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421549, 37.266136, 34.511131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206423, 37.502480, 34.751675>,  <28.077347, 37.644287, 34.896000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206423, 37.502480, 34.751675>,  <28.421549, 37.266136, 34.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206423, 37.502480, 34.751675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554627, 0.289240, -0.780211,
		-0.634934, -0.753142, 0.172150,
		-0.537817, 0.590862, 0.601361,
		28.045078, 37.679737, 34.932083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674112, 37.187683, 34.251564>,  <28.421549, 37.266136, 34.511131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674112, 37.187683, 34.251564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746738, 37.534130, 34.437840>,  <27.790314, 37.742001, 34.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746738, 37.534130, 34.437840>,  <27.674112, 37.187683, 34.251564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746738, 37.534130, 34.437840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378224, 0.498641, -0.779938,
		-0.907734, -0.034528, 0.418123,
		0.181564, 0.866121, 0.465693,
		27.801207, 37.793964, 34.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166864, 37.677124, 34.340065>,  <27.674112, 37.187683, 34.251564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166864, 37.677124, 34.340065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496555, 37.903481, 34.348190>,  <27.694370, 38.039295, 34.353065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496555, 37.903481, 34.348190>,  <27.166864, 37.677124, 34.340065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496555, 37.903481, 34.348190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329800, 0.508904, -0.795141,
		-0.460304, 0.648677, 0.606085,
		0.824229, 0.565893, 0.020317,
		27.743824, 38.073250, 34.354286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042028, 38.474487, 34.280502>,  <27.166864, 37.677124, 34.340065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042028, 38.474487, 34.280502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421150, 38.446808, 34.155998>,  <27.648623, 38.430199, 34.081295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421150, 38.446808, 34.155998>,  <27.042028, 38.474487, 34.280502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421150, 38.446808, 34.155998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240166, 0.487170, -0.839634,
		0.209735, 0.870562, 0.445122,
		0.947803, -0.069198, -0.311256,
		27.705492, 38.426048, 34.062622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350321, 39.168217, 34.165161>,  <27.042028, 38.474487, 34.280502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350321, 39.168217, 34.165161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566816, 38.917706, 33.940720>,  <27.696714, 38.767399, 33.806057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566816, 38.917706, 33.940720>,  <27.350321, 39.168217, 34.165161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566816, 38.917706, 33.940720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185749, 0.561752, -0.806183,
		0.820096, 0.540562, 0.187712,
		0.541239, -0.626280, -0.561100,
		27.729189, 38.729820, 33.772388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631742, 39.623634, 33.669521>,  <27.350321, 39.168217, 34.165161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631742, 39.623634, 33.669521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589560, 39.240509, 33.562588>,  <27.564249, 39.010632, 33.498428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589560, 39.240509, 33.562588>,  <27.631742, 39.623634, 33.669521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589560, 39.240509, 33.562588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313649, 0.287147, -0.905080,
		0.943664, -0.011601, -0.330701,
		-0.105459, -0.957816, -0.267332,
		27.557922, 38.953163, 33.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486250, 39.682709, 32.966961>,  <27.631742, 39.623634, 33.669521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486250, 39.682709, 32.966961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426893, 39.486244, 32.623627>,  <27.391279, 39.368366, 32.417625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426893, 39.486244, 32.623627>,  <27.486250, 39.682709, 32.966961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426893, 39.486244, 32.623627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193841, -0.865554, 0.461781,
		-0.969745, -0.097855, 0.223650,
		-0.148394, -0.491162, -0.858335,
		27.382376, 39.338894, 32.366127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982777, 39.144207, 32.901009>,  <27.486250, 39.682709, 32.966961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982777, 39.144207, 32.901009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296263, 39.079079, 32.661247>,  <27.484354, 39.040001, 32.517391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296263, 39.079079, 32.661247>,  <26.982777, 39.144207, 32.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296263, 39.079079, 32.661247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309320, -0.734544, 0.603959,
		-0.538622, -0.658738, -0.525310,
		0.783714, -0.162817, -0.599402,
		27.531378, 39.030235, 32.481426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205641, 38.434986, 32.736195>,  <26.982777, 39.144207, 32.901009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205641, 38.434986, 32.736195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558928, 38.622295, 32.726013>,  <27.770899, 38.734680, 32.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558928, 38.622295, 32.726013>,  <27.205641, 38.434986, 32.736195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558928, 38.622295, 32.726013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283554, -0.490008, 0.824312,
		0.373531, -0.735263, -0.565564,
		0.883217, 0.468274, -0.025453,
		27.823893, 38.762779, 32.718376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760391, 37.922890, 32.898113>,  <27.205641, 38.434986, 32.736195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760391, 37.922890, 32.898113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884109, 38.281368, 33.025341>,  <27.958340, 38.496456, 33.101677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884109, 38.281368, 33.025341>,  <27.760391, 37.922890, 32.898113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884109, 38.281368, 33.025341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303931, -0.410086, 0.859916,
		0.901090, -0.169297, -0.399220,
		0.309295, 0.896197, 0.318070,
		27.976898, 38.550228, 33.120762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525793, 38.003021, 33.094063>,  <27.760391, 37.922890, 32.898113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525793, 38.003021, 33.094063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279375, 38.233521, 33.308884>,  <28.131523, 38.371819, 33.437775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279375, 38.233521, 33.308884>,  <28.525793, 38.003021, 33.094063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279375, 38.233521, 33.308884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278172, -0.478711, 0.832740,
		0.736958, 0.662399, 0.134612,
		-0.616046, 0.576250, 0.537051,
		28.094561, 38.406395, 33.469997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921904, 38.317329, 33.692593>,  <28.525793, 38.003021, 33.094063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921904, 38.317329, 33.692593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539999, 38.358490, 33.804195>,  <28.310856, 38.383186, 33.871159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539999, 38.358490, 33.804195>,  <28.921904, 38.317329, 33.692593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539999, 38.358490, 33.804195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228716, -0.345536, 0.910106,
		0.190060, 0.932746, 0.306369,
		-0.954760, 0.102903, 0.279006,
		28.253571, 38.389362, 33.887897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891954, 38.755707, 34.258308>,  <28.921904, 38.317329, 33.692593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891954, 38.755707, 34.258308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567852, 38.521683, 34.272087>,  <28.373390, 38.381268, 34.280354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567852, 38.521683, 34.272087>,  <28.891954, 38.755707, 34.258308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567852, 38.521683, 34.272087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271425, -0.322507, 0.906817,
		-0.519434, 0.744105, 0.420114,
		-0.810257, -0.585061, 0.034448,
		28.324776, 38.346165, 34.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641058, 38.831188, 34.966251>,  <28.891954, 38.755707, 34.258308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641058, 38.831188, 34.966251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428335, 38.520103, 34.832180>,  <28.300701, 38.333450, 34.751736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428335, 38.520103, 34.832180>,  <28.641058, 38.831188, 34.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428335, 38.520103, 34.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064870, -0.357214, 0.931767,
		-0.844378, 0.517262, 0.139518,
		-0.531806, -0.777714, -0.335179,
		28.268793, 38.286789, 34.731625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947672, 38.765121, 35.434261>,  <28.641058, 38.831188, 34.966251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947672, 38.765121, 35.434261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050529, 38.415241, 35.269936>,  <28.112244, 38.205311, 35.171341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050529, 38.415241, 35.269936>,  <27.947672, 38.765121, 35.434261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050529, 38.415241, 35.269936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178962, -0.460862, 0.869241,
		-0.949658, -0.149997, -0.275046,
		0.257142, -0.874704, -0.410818,
		28.127672, 38.152828, 35.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929264, 38.253025, 35.990211>,  <27.947672, 38.765121, 35.434261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929264, 38.253025, 35.990211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983292, 38.007393, 35.679173>,  <28.015709, 37.860016, 35.492550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983292, 38.007393, 35.679173>,  <27.929264, 38.253025, 35.990211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983292, 38.007393, 35.679173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014821, -0.785958, 0.618102,
		-0.990725, -0.071963, -0.115261,
		0.135071, -0.614078, -0.777602,
		28.023813, 37.823170, 35.445892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457973, 37.723228, 36.057278>,  <27.929264, 38.253025, 35.990211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457973, 37.723228, 36.057278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727472, 37.575703, 35.801140>,  <27.889172, 37.487186, 35.647457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727472, 37.575703, 35.801140>,  <27.457973, 37.723228, 36.057278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727472, 37.575703, 35.801140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047411, -0.843183, 0.535533,
		-0.737439, -0.391173, -0.550606,
		0.673748, -0.368818, -0.640342,
		27.929596, 37.465057, 35.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327816, 37.133934, 35.699993>,  <27.457973, 37.723228, 36.057278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327816, 37.133934, 35.699993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727375, 37.115208, 35.698830>,  <27.967112, 37.103970, 35.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727375, 37.115208, 35.698830>,  <27.327816, 37.133934, 35.699993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727375, 37.115208, 35.698830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036794, -0.820451, 0.570532,
		-0.029099, -0.569797, -0.821271,
		0.998899, -0.046820, -0.002909,
		28.027044, 37.101162, 35.697956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631483, 36.415203, 35.449741>,  <27.327816, 37.133934, 35.699993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631483, 36.415203, 35.449741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812395, 36.624168, 35.738884>,  <27.920942, 36.749550, 35.912369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812395, 36.624168, 35.738884>,  <27.631483, 36.415203, 35.449741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812395, 36.624168, 35.738884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022823, -0.817005, 0.576179,
		0.891584, -0.244096, -0.381438,
		0.452280, 0.522418, 0.722857,
		27.948078, 36.780895, 35.955742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939741, 35.857716, 35.813522>,  <27.631483, 36.415203, 35.449741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939741, 35.857716, 35.813522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242043, 36.106544, 35.731674>,  <28.423424, 36.255840, 35.682568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242043, 36.106544, 35.731674>,  <27.939741, 35.857716, 35.813522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242043, 36.106544, 35.731674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195708, 0.083627, 0.977090,
		0.624928, -0.778484, -0.058543,
		0.755753, 0.622068, -0.204616,
		28.468769, 36.293163, 35.670288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655394, 35.569466, 35.733463>,  <27.939741, 35.857716, 35.813522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655394, 35.569466, 35.733463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625818, 35.932697, 35.898354>,  <28.608072, 36.150635, 35.997288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625818, 35.932697, 35.898354>,  <28.655394, 35.569466, 35.733463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625818, 35.932697, 35.898354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318026, -0.370304, 0.872774,
		0.945194, 0.195632, -0.261412,
		-0.073941, 0.908077, 0.412225,
		28.603636, 36.205120, 36.022022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224405, 35.569363, 36.155739>,  <28.655394, 35.569466, 35.733463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224405, 35.569363, 36.155739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968803, 35.849239, 36.283550>,  <28.815443, 36.017166, 36.360237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968803, 35.849239, 36.283550>,  <29.224405, 35.569363, 36.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968803, 35.849239, 36.283550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172466, -0.274499, 0.945995,
		0.749619, 0.659603, 0.054733,
		-0.639005, 0.699696, 0.319529,
		28.777102, 36.059147, 36.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614609, 36.050537, 36.680016>,  <29.224405, 35.569363, 36.155739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614609, 36.050537, 36.680016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221493, 36.050434, 36.753906>,  <28.985622, 36.050373, 36.798241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221493, 36.050434, 36.753906>,  <29.614609, 36.050537, 36.680016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221493, 36.050434, 36.753906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184228, -0.074558, 0.980052,
		0.013524, 0.997217, 0.073322,
		-0.982790, -0.000254, 0.184723,
		28.926655, 36.050358, 36.809322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728189, 36.237457, 37.474705>,  <29.614609, 36.050537, 36.680016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728189, 36.237457, 37.474705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344351, 36.134483, 37.429272>,  <29.114048, 36.072697, 37.402012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344351, 36.134483, 37.429272>,  <29.728189, 36.237457, 37.474705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344351, 36.134483, 37.429272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024585, -0.325412, 0.945253,
		-0.280306, 0.909853, 0.305935,
		-0.959596, -0.257439, -0.113583,
		29.056473, 36.057251, 37.395195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271755, 36.589325, 37.930130>,  <29.728189, 36.237457, 37.474705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271755, 36.589325, 37.930130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157688, 36.219414, 37.829361>,  <29.089247, 35.997467, 37.768898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157688, 36.219414, 37.829361>,  <29.271755, 36.589325, 37.930130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157688, 36.219414, 37.829361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104993, -0.291395, 0.950824,
		-0.952709, 0.244696, 0.180192,
		-0.285170, -0.924777, -0.251923,
		29.072138, 35.941982, 37.753784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597002, 36.584599, 38.186508>,  <29.271755, 36.589325, 37.930130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597002, 36.584599, 38.186508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779589, 36.229637, 38.160709>,  <28.889141, 36.016663, 38.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779589, 36.229637, 38.160709>,  <28.597002, 36.584599, 38.186508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779589, 36.229637, 38.160709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084551, -0.028897, 0.996000,
		-0.885714, -0.460095, 0.061840,
		0.456467, -0.887399, -0.064497,
		28.916529, 35.963417, 38.141361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698910, 36.400021, 38.824844>,  <28.597002, 36.584599, 38.186508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698910, 36.400021, 38.824844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918316, 36.106773, 38.664009>,  <29.049959, 35.930824, 38.567509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918316, 36.106773, 38.664009>,  <28.698910, 36.400021, 38.824844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918316, 36.106773, 38.664009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436440, -0.159151, 0.885545,
		-0.713199, -0.661222, 0.232664,
		0.548513, -0.733114, -0.402090,
		29.082870, 35.886841, 38.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566183, 35.736443, 39.200565>,  <28.698910, 36.400021, 38.824844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566183, 35.736443, 39.200565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920715, 35.749943, 39.015835>,  <29.133434, 35.758041, 38.904999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920715, 35.749943, 39.015835>,  <28.566183, 35.736443, 39.200565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920715, 35.749943, 39.015835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462535, -0.017253, 0.886433,
		0.021957, -0.999281, -0.030907,
		0.886329, 0.033759, -0.461823,
		29.186615, 35.760067, 38.877289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928221, 35.032185, 39.081722>,  <28.566183, 35.736443, 39.200565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928221, 35.032185, 39.081722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152508, 35.348068, 39.181290>,  <29.287079, 35.537598, 39.241028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152508, 35.348068, 39.181290>,  <28.928221, 35.032185, 39.081722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152508, 35.348068, 39.181290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006988, -0.296093, 0.955133,
		0.827979, -0.537298, -0.160506,
		0.560715, 0.789709, 0.248914,
		29.320723, 35.584980, 39.255962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397221, 34.845211, 39.558525>,  <28.928221, 35.032185, 39.081722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397221, 34.845211, 39.558525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363115, 35.237156, 39.630756>,  <29.342651, 35.472321, 39.674095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363115, 35.237156, 39.630756>,  <29.397221, 34.845211, 39.558525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363115, 35.237156, 39.630756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044247, -0.177334, 0.983155,
		0.995375, 0.091818, -0.028236,
		-0.085264, 0.979858, 0.180577,
		29.337536, 35.531113, 39.684929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876469, 35.009377, 40.125561>,  <29.397221, 34.845211, 39.558525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876469, 35.009377, 40.125561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599421, 35.297314, 40.143932>,  <29.433191, 35.470074, 40.154957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599421, 35.297314, 40.143932>,  <29.876469, 35.009377, 40.125561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599421, 35.297314, 40.143932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150293, 0.081747, 0.985256,
		0.705471, 0.689311, -0.164806,
		-0.692620, 0.719839, 0.045929,
		29.391634, 35.513264, 40.157711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536123, 34.919048, 39.911854>,  <29.876469, 35.009377, 40.125561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536123, 34.919048, 39.911854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824432, 35.057785, 40.151917>,  <30.997417, 35.141026, 40.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824432, 35.057785, 40.151917>,  <30.536123, 34.919048, 39.911854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824432, 35.057785, 40.151917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408418, -0.487066, 0.771985,
		0.560072, -0.801541, -0.209408,
		0.720773, 0.346841, 0.600156,
		31.040665, 35.161839, 40.331963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018869, 34.345261, 40.165707>,  <30.536123, 34.919048, 39.911854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018869, 34.345261, 40.165707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961523, 34.671146, 40.390450>,  <30.927114, 34.866676, 40.525295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961523, 34.671146, 40.390450>,  <31.018869, 34.345261, 40.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961523, 34.671146, 40.390450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492048, -0.551262, 0.673794,
		0.858682, -0.179862, 0.479911,
		-0.143367, 0.814714, 0.561860,
		30.918512, 34.915562, 40.559006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377064, 34.306805, 40.869560>,  <31.018869, 34.345261, 40.165707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377064, 34.306805, 40.869560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030609, 34.506710, 40.872162>,  <30.822737, 34.626656, 40.873722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030609, 34.506710, 40.872162>,  <31.377064, 34.306805, 40.869560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030609, 34.506710, 40.872162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351903, -0.619014, 0.702130,
		0.354929, 0.605850, 0.712020,
		-0.866135, 0.499768, 0.006506,
		30.770769, 34.656639, 40.874115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905119, 34.801376, 41.087566>,  <31.377064, 34.306805, 40.869560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905119, 34.801376, 41.087566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677916, 34.662952, 41.386261>,  <31.541594, 34.579899, 41.565475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677916, 34.662952, 41.386261>,  <31.905119, 34.801376, 41.087566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677916, 34.662952, 41.386261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723798, 0.641926, -0.253077,
		-0.391770, -0.684235, -0.615093,
		-0.568008, -0.346055, 0.746735,
		31.507513, 34.559135, 41.610283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507629, 34.798450, 41.623589>,  <31.905119, 34.801376, 41.087566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507629, 34.798450, 41.623589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764050, 34.582504, 41.405380>,  <32.917900, 34.452934, 41.274456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764050, 34.582504, 41.405380>,  <32.507629, 34.798450, 41.623589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764050, 34.582504, 41.405380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764175, 0.382895, 0.519065,
		-0.071348, -0.749623, 0.658008,
		0.641051, -0.539868, -0.545524,
		32.956364, 34.420544, 41.241722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206444, 34.958569, 41.749836>,  <32.507629, 34.798450, 41.623589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206444, 34.958569, 41.749836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514740, 34.795418, 41.554043>,  <33.699718, 34.697525, 41.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514740, 34.795418, 41.554043>,  <33.206444, 34.958569, 41.749836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514740, 34.795418, 41.554043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622690, -0.644949, -0.443055,
		-0.134980, 0.646278, -0.751069,
		0.770738, -0.407880, -0.489486,
		33.745960, 34.673054, 41.407196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440128, 35.057545, 41.063156>,  <33.206444, 34.958569, 41.749836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440128, 35.057545, 41.063156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311035, 35.434349, 41.099934>,  <33.233578, 35.660431, 41.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311035, 35.434349, 41.099934>,  <33.440128, 35.057545, 41.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311035, 35.434349, 41.099934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320179, 0.200073, -0.925989,
		-0.890689, -0.269411, -0.366184,
		-0.322736, 0.942013, 0.091943,
		33.214214, 35.716953, 41.127518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767952, 35.130962, 40.714802>,  <33.440128, 35.057545, 41.063156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767952, 35.130962, 40.714802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002197, 35.454556, 40.735226>,  <33.142742, 35.648712, 40.747478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002197, 35.454556, 40.735226>,  <32.767952, 35.130962, 40.714802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002197, 35.454556, 40.735226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074453, 0.116404, -0.990407,
		-0.807166, 0.576191, 0.128399,
		0.585610, 0.808983, 0.051058,
		33.177879, 35.697250, 40.750542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465450, 35.599846, 40.377567>,  <32.767952, 35.130962, 40.714802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465450, 35.599846, 40.377567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851654, 35.702564, 40.360409>,  <33.083378, 35.764194, 40.350113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851654, 35.702564, 40.360409>,  <32.465450, 35.599846, 40.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851654, 35.702564, 40.360409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113175, 0.265593, -0.957419,
		-0.234470, 0.929255, 0.285497,
		0.965513, 0.256797, -0.042895,
		33.141308, 35.779602, 40.347542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453514, 36.165813, 39.993134>,  <32.465450, 35.599846, 40.377567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453514, 36.165813, 39.993134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847469, 36.098495, 39.976749>,  <33.083843, 36.058105, 39.966919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847469, 36.098495, 39.976749>,  <32.453514, 36.165813, 39.993134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847469, 36.098495, 39.976749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017109, 0.329848, -0.943879,
		0.172365, 0.928911, 0.327741,
		0.984884, -0.168299, -0.040962,
		33.142933, 36.048004, 39.964462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634823, 36.712807, 39.654358>,  <32.453514, 36.165813, 39.993134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634823, 36.712807, 39.654358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927025, 36.440567, 39.631912>,  <33.102345, 36.277222, 39.618443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927025, 36.440567, 39.631912>,  <32.634823, 36.712807, 39.654358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927025, 36.440567, 39.631912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132368, 0.221730, -0.966082,
		0.669960, 0.698296, 0.252063,
		0.730501, -0.680602, -0.056118,
		33.146175, 36.236385, 39.615078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272282, 37.018147, 39.294582>,  <32.634823, 36.712807, 39.654358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272282, 37.018147, 39.294582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329430, 36.626930, 39.233875>,  <33.363716, 36.392200, 39.197453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329430, 36.626930, 39.233875>,  <33.272282, 37.018147, 39.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329430, 36.626930, 39.233875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179260, 0.176373, -0.967863,
		0.973373, 0.111070, 0.200521,
		0.142867, -0.978037, -0.151766,
		33.372292, 36.333519, 39.188347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700474, 37.026894, 38.789413>,  <33.272282, 37.018147, 39.294582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700474, 37.026894, 38.789413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590534, 36.643158, 38.763744>,  <33.524570, 36.412914, 38.748344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590534, 36.643158, 38.763744>,  <33.700474, 37.026894, 38.789413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590534, 36.643158, 38.763744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154458, 0.021818, -0.987758,
		0.949000, -0.281397, 0.142181,
		-0.274850, -0.959343, -0.064169,
		33.508080, 36.355354, 38.744495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249668, 36.659813, 38.408306>,  <33.700474, 37.026894, 38.789413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249668, 36.659813, 38.408306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920399, 36.433262, 38.392265>,  <33.722836, 36.297333, 38.382641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920399, 36.433262, 38.392265>,  <34.249668, 36.659813, 38.408306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920399, 36.433262, 38.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099564, -0.074447, -0.992242,
		0.558995, -0.820779, 0.117673,
		-0.823172, -0.566374, -0.040104,
		33.673447, 36.263351, 38.380234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387638, 36.025166, 38.015759>,  <34.249668, 36.659813, 38.408306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387638, 36.025166, 38.015759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996475, 36.101780, 37.982269>,  <33.761776, 36.147747, 37.962177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996475, 36.101780, 37.982269>,  <34.387638, 36.025166, 38.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996475, 36.101780, 37.982269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090321, 0.025985, -0.995574,
		-0.188513, -0.981142, -0.042710,
		-0.977908, 0.191536, -0.083719,
		33.703102, 36.159241, 37.957153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155857, 35.776676, 37.332783>,  <34.387638, 36.025166, 38.015759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155857, 35.776676, 37.332783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834984, 35.991100, 37.437958>,  <33.642460, 36.119755, 37.501064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834984, 35.991100, 37.437958>,  <34.155857, 35.776676, 37.332783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834984, 35.991100, 37.437958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167589, 0.220529, -0.960875,
		-0.573074, -0.814865, -0.087067,
		-0.802185, 0.536061, 0.262942,
		33.594330, 36.151920, 37.516842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629105, 35.661758, 36.815964>,  <34.155857, 35.776676, 37.332783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629105, 35.661758, 36.815964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496437, 35.990314, 37.001572>,  <33.416836, 36.187447, 37.112934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496437, 35.990314, 37.001572>,  <33.629105, 35.661758, 36.815964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496437, 35.990314, 37.001572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452419, 0.293120, -0.842258,
		-0.827835, -0.489283, 0.274392,
		-0.331673, 0.821391, 0.464016,
		33.396935, 36.236732, 37.140778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842972, 35.594532, 36.726925>,  <33.629105, 35.661758, 36.815964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842972, 35.594532, 36.726925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958134, 35.970619, 36.799706>,  <33.027229, 36.196270, 36.843376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958134, 35.970619, 36.799706>,  <32.842972, 35.594532, 36.726925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958134, 35.970619, 36.799706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534696, 0.315445, -0.783960,
		-0.794488, 0.128415, 0.593547,
		0.287904, 0.940215, 0.181955,
		33.044506, 36.252686, 36.854294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233871, 36.057751, 36.573784>,  <32.842972, 35.594532, 36.726925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233871, 36.057751, 36.573784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544029, 36.310108, 36.584660>,  <32.730122, 36.461525, 36.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544029, 36.310108, 36.584660>,  <32.233871, 36.057751, 36.573784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544029, 36.310108, 36.584660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431043, 0.560243, -0.707340,
		-0.461488, 0.536747, 0.706351,
		0.775391, 0.630897, 0.027185,
		32.776646, 36.499378, 36.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923931, 36.726810, 36.711525>,  <32.233871, 36.057751, 36.573784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923931, 36.726810, 36.711525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272953, 36.777328, 36.522762>,  <32.482365, 36.807640, 36.409504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272953, 36.777328, 36.522762>,  <31.923931, 36.726810, 36.711525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272953, 36.777328, 36.522762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447422, 0.594420, -0.668191,
		0.196121, 0.794175, 0.575172,
		0.872554, 0.126299, -0.471909,
		32.534718, 36.815220, 36.381191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983618, 37.398495, 36.555573>,  <31.923931, 36.726810, 36.711525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983618, 37.398495, 36.555573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 37.264874, 36.314919>,  <32.447983, 37.184700, 36.170528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 37.264874, 36.314919>,  <31.983618, 37.398495, 36.555573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273846, 37.264874, 36.314919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272156, 0.663698, -0.696733,
		0.632046, 0.669265, 0.390644,
		0.725568, -0.334051, -0.601632,
		32.491516, 37.164658, 36.134430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493881, 37.916477, 36.445202>,  <31.983618, 37.398495, 36.555573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493881, 37.916477, 36.445202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476273, 37.669144, 36.131329>,  <32.465706, 37.520744, 35.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476273, 37.669144, 36.131329>,  <32.493881, 37.916477, 36.445202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476273, 37.669144, 36.131329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557239, 0.667109, -0.494420,
		0.829184, 0.415488, -0.373929,
		-0.044026, -0.618333, -0.784682,
		32.463066, 37.483643, 35.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324047, 38.349228, 35.904057>,  <32.493881, 37.916477, 36.445202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324047, 38.349228, 35.904057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316284, 38.002998, 35.703896>,  <32.311626, 37.795261, 35.583801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316284, 38.002998, 35.703896>,  <32.324047, 38.349228, 35.904057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316284, 38.002998, 35.703896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449325, 0.454654, -0.769023,
		0.893157, 0.209916, -0.397750,
		-0.019408, -0.865578, -0.500398,
		32.310463, 37.743324, 35.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733147, 38.438396, 35.278435>,  <32.324047, 38.349228, 35.904057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733147, 38.438396, 35.278435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463600, 38.149025, 35.218369>,  <32.301872, 37.975403, 35.182327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463600, 38.149025, 35.218369>,  <32.733147, 38.438396, 35.278435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463600, 38.149025, 35.218369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329771, 0.476365, -0.815063,
		0.661176, -0.499724, -0.559573,
		-0.673867, -0.723431, -0.150167,
		32.261440, 37.931995, 35.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743011, 38.351795, 34.500122>,  <32.733147, 38.438396, 35.278435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743011, 38.351795, 34.500122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419582, 38.175667, 34.656235>,  <32.225525, 38.069988, 34.749905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419582, 38.175667, 34.656235>,  <32.743011, 38.351795, 34.500122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419582, 38.175667, 34.656235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552806, 0.341309, -0.760207,
		0.201527, -0.830437, -0.519386,
		-0.808575, -0.440322, 0.390287,
		32.177010, 38.043571, 34.773319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401115, 38.055649, 33.954662>,  <32.743011, 38.351795, 34.500122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401115, 38.055649, 33.954662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110435, 38.088371, 34.227486>,  <31.936026, 38.108006, 34.391182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110435, 38.088371, 34.227486>,  <32.401115, 38.055649, 33.954662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110435, 38.088371, 34.227486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642944, 0.268659, -0.717248,
		-0.241918, -0.959755, -0.142638,
		-0.726704, 0.081807, 0.682063,
		31.892424, 38.112915, 34.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856840, 37.748940, 33.695633>,  <32.401115, 38.055649, 33.954662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856840, 37.748940, 33.695633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657339, 37.941956, 33.983635>,  <31.537640, 38.057766, 34.156437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657339, 37.941956, 33.983635>,  <31.856840, 37.748940, 33.695633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657339, 37.941956, 33.983635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668439, 0.314675, -0.673921,
		-0.551758, -0.817398, 0.165602,
		-0.498750, 0.482536, 0.720005,
		31.507713, 38.086716, 34.199635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170597, 37.648453, 33.650509>,  <31.856840, 37.748940, 33.695633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170597, 37.648453, 33.650509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200886, 38.002010, 33.835114>,  <31.219059, 38.214146, 33.945877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200886, 38.002010, 33.835114>,  <31.170597, 37.648453, 33.650509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200886, 38.002010, 33.835114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672980, 0.386830, -0.630444,
		-0.735774, -0.262849, 0.624137,
		0.075724, 0.883896, 0.461512,
		31.223602, 38.267178, 33.973568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570698, 37.859066, 33.410282>,  <31.170597, 37.648453, 33.650509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570698, 37.859066, 33.410282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703865, 38.164474, 33.631626>,  <30.783766, 38.347717, 33.764431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703865, 38.164474, 33.631626>,  <30.570698, 37.859066, 33.410282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703865, 38.164474, 33.631626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753457, 0.568246, -0.330755,
		-0.566981, -0.306816, 0.764458,
		0.332919, 0.763518, 0.553358,
		30.803741, 38.393532, 33.797634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962311, 38.208630, 33.742313>,  <30.570698, 37.859066, 33.410282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962311, 38.208630, 33.742313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264349, 38.466690, 33.695660>,  <30.445572, 38.621529, 33.667667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264349, 38.466690, 33.695660>,  <29.962311, 38.208630, 33.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264349, 38.466690, 33.695660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619716, 0.644302, -0.448137,
		-0.213968, 0.410669, 0.886323,
		0.755096, 0.645155, -0.116638,
		30.490877, 38.660236, 33.660667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628754, 38.949284, 33.974766>,  <29.962311, 38.208630, 33.742313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628754, 38.949284, 33.974766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956303, 38.991501, 33.749092>,  <30.152832, 39.016830, 33.613686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956303, 38.991501, 33.749092>,  <29.628754, 38.949284, 33.974766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956303, 38.991501, 33.749092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436243, 0.753238, -0.492265,
		0.373014, 0.649225, 0.662847,
		0.818873, 0.105541, -0.564188,
		30.201965, 39.023163, 33.579834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700031, 39.632267, 33.877491>,  <29.628754, 38.949284, 33.974766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700031, 39.632267, 33.877491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932886, 39.475605, 33.592472>,  <30.072599, 39.381607, 33.421459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932886, 39.475605, 33.592472>,  <29.700031, 39.632267, 33.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932886, 39.475605, 33.592472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246924, 0.749801, -0.613863,
		0.774691, 0.533296, 0.339777,
		0.582136, -0.391655, -0.712548,
		30.107527, 39.358109, 33.378708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076330, 40.224380, 33.539780>,  <29.700031, 39.632267, 33.877491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076330, 40.224380, 33.539780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081949, 39.920818, 33.279362>,  <30.085320, 39.738682, 33.123112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081949, 39.920818, 33.279362>,  <30.076330, 40.224380, 33.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081949, 39.920818, 33.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407809, 0.590147, -0.696719,
		0.912959, 0.275288, -0.301201,
		0.014046, -0.758909, -0.651045,
		30.086163, 39.693146, 33.084049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282726, 40.623714, 32.929298>,  <30.076330, 40.224380, 33.539780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282726, 40.623714, 32.929298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123453, 40.269848, 32.832291>,  <30.027889, 40.057529, 32.774086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123453, 40.269848, 32.832291>,  <30.282726, 40.623714, 32.929298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123453, 40.269848, 32.832291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548953, 0.441626, -0.709660,
		0.734915, -0.149444, -0.661488,
		-0.398185, -0.884666, -0.242520,
		30.003998, 40.004448, 32.759533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558973, 40.456276, 32.201393>,  <30.282726, 40.623714, 32.929298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558973, 40.456276, 32.201393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216112, 40.261654, 32.268978>,  <30.010395, 40.144878, 32.309528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216112, 40.261654, 32.268978>,  <30.558973, 40.456276, 32.201393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216112, 40.261654, 32.268978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445640, 0.536106, -0.716935,
		0.258249, -0.689820, -0.676355,
		-0.857154, -0.486558, 0.168962,
		29.958965, 40.115685, 32.319668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378178, 40.262814, 31.554850>,  <30.558973, 40.456276, 32.201393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378178, 40.262814, 31.554850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051102, 40.265018, 31.785103>,  <29.854856, 40.266342, 31.923254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051102, 40.265018, 31.785103>,  <30.378178, 40.262814, 31.554850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051102, 40.265018, 31.785103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498252, 0.494051, -0.712502,
		-0.288320, -0.869416, -0.401234,
		-0.817690, 0.005513, 0.575633,
		29.805796, 40.266674, 31.957792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941628, 39.998844, 31.114094>,  <30.378178, 40.262814, 31.554850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941628, 39.998844, 31.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697121, 40.151768, 31.391279>,  <29.550417, 40.243523, 31.557590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697121, 40.151768, 31.391279>,  <29.941628, 39.998844, 31.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697121, 40.151768, 31.391279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506966, 0.483216, -0.713784,
		-0.607734, -0.787620, -0.101557,
		-0.611265, 0.382305, 0.692963,
		29.513741, 40.266460, 31.599169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266872, 39.902195, 30.835953>,  <29.941628, 39.998844, 31.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266872, 39.902195, 30.835953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247225, 40.193737, 31.109114>,  <29.235435, 40.368664, 31.273010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247225, 40.193737, 31.109114>,  <29.266872, 39.902195, 30.835953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247225, 40.193737, 31.109114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477612, 0.583346, -0.656958,
		-0.877196, -0.358432, 0.319457,
		-0.049120, 0.728858, 0.682901,
		29.232489, 40.412395, 31.313984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545111, 40.107941, 30.896370>,  <29.266872, 39.902195, 30.835953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545111, 40.107941, 30.896370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729706, 40.430992, 31.043217>,  <28.840464, 40.624821, 31.131325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729706, 40.430992, 31.043217>,  <28.545111, 40.107941, 30.896370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729706, 40.430992, 31.043217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629456, 0.589693, -0.506012,
		-0.625152, 0.002435, 0.780499,
		0.461487, 0.807624, 0.367115,
		28.868153, 40.673279, 31.153351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963249, 40.541210, 31.077883>,  <28.545111, 40.107941, 30.896370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963249, 40.541210, 31.077883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299574, 40.756733, 31.057009>,  <28.501369, 40.886047, 31.044483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299574, 40.756733, 31.057009>,  <27.963249, 40.541210, 31.077883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299574, 40.756733, 31.057009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510978, 0.758157, -0.405092,
		-0.178699, 0.367273, 0.912786,
		0.840814, 0.538803, -0.052186,
		28.551819, 40.918373, 31.041353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819574, 41.134033, 31.349867>,  <27.963249, 40.541210, 31.077883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819574, 41.134033, 31.349867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130215, 41.229568, 31.116680>,  <28.316599, 41.286888, 30.976768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130215, 41.229568, 31.116680>,  <27.819574, 41.134033, 31.349867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130215, 41.229568, 31.116680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517264, 0.769962, -0.373625,
		0.359625, 0.591705, 0.721495,
		0.776600, 0.238839, -0.582965,
		28.363195, 41.301220, 30.941790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740917, 41.889275, 31.237829>,  <27.819574, 41.134033, 31.349867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740917, 41.889275, 31.237829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968609, 41.757679, 30.936434>,  <28.105223, 41.678722, 30.755596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968609, 41.757679, 30.936434>,  <27.740917, 41.889275, 31.237829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968609, 41.757679, 30.936434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302186, 0.768591, -0.563872,
		0.764632, 0.548665, 0.338087,
		0.569228, -0.328989, -0.753489,
		28.139378, 41.658981, 30.710386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053644, 42.509445, 31.087391>,  <27.740917, 41.889275, 31.237829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053644, 42.509445, 31.087391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123592, 42.281067, 30.766533>,  <28.165562, 42.144039, 30.574018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123592, 42.281067, 30.766533>,  <28.053644, 42.509445, 31.087391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123592, 42.281067, 30.766533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365829, 0.718698, -0.591305,
		0.914106, 0.396849, -0.083192,
		0.174869, -0.570950, -0.802145,
		28.176054, 42.109783, 30.525888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461815, 42.889542, 30.635366>,  <28.053644, 42.509445, 31.087391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461815, 42.889542, 30.635366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261169, 42.613766, 30.426348>,  <28.140781, 42.448299, 30.300936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261169, 42.613766, 30.426348>,  <28.461815, 42.889542, 30.635366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261169, 42.613766, 30.426348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424311, 0.722467, -0.545896,
		0.753885, -0.052108, -0.654937,
		-0.501615, -0.689440, -0.522547,
		28.110685, 42.406933, 30.269583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520666, 43.097919, 29.961998>,  <28.461815, 42.889542, 30.635366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520666, 43.097919, 29.961998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207064, 42.849922, 29.949732>,  <28.018902, 42.701122, 29.942371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207064, 42.849922, 29.949732>,  <28.520666, 43.097919, 29.961998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207064, 42.849922, 29.949732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496244, 0.655662, -0.569077,
		0.372932, -0.430942, -0.821712,
		-0.784005, -0.619997, -0.030665,
		27.971863, 42.663921, 29.940533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324259, 42.967728, 29.244379>,  <28.520666, 43.097919, 29.961998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324259, 42.967728, 29.244379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007320, 42.915302, 29.482710>,  <27.817158, 42.883846, 29.625708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007320, 42.915302, 29.482710>,  <28.324259, 42.967728, 29.244379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007320, 42.915302, 29.482710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505578, 0.687662, -0.521068,
		-0.341435, -0.714103, -0.611129,
		-0.792346, -0.131063, 0.595827,
		27.769617, 42.875984, 29.661457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734560, 43.095024, 28.761581>,  <28.324259, 42.967728, 29.244379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734560, 43.095024, 28.761581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570889, 43.106499, 29.126383>,  <27.472687, 43.113384, 29.345264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570889, 43.106499, 29.126383>,  <27.734560, 43.095024, 28.761581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570889, 43.106499, 29.126383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545620, 0.793431, -0.269751,
		-0.731350, -0.607984, -0.309003,
		-0.409177, 0.028684, 0.912004,
		27.448135, 43.115105, 29.399984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943584, 43.043556, 28.538532>,  <27.734560, 43.095024, 28.761581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943584, 43.043556, 28.538532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965902, 43.185333, 28.911898>,  <26.979294, 43.270401, 29.135916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965902, 43.185333, 28.911898>,  <26.943584, 43.043556, 28.538532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965902, 43.185333, 28.911898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622976, 0.742926, -0.244871,
		-0.780249, -0.567830, 0.262262,
		0.055796, 0.354443, 0.933411,
		26.982641, 43.291668, 29.191921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289742, 43.164490, 28.735462>,  <26.943584, 43.043556, 28.538532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289742, 43.164490, 28.735462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517250, 43.395210, 28.969999>,  <26.653755, 43.533642, 29.110722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517250, 43.395210, 28.969999>,  <26.289742, 43.164490, 28.735462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517250, 43.395210, 28.969999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543223, 0.798716, -0.258770,
		-0.617581, -0.171335, 0.767618,
		0.568773, 0.576799, 0.586344,
		26.687881, 43.568249, 29.145903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909199, 43.446926, 29.193644>,  <26.289742, 43.164490, 28.735462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909199, 43.446926, 29.193644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212378, 43.705578, 29.228010>,  <26.394285, 43.860771, 29.248631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212378, 43.705578, 29.228010>,  <25.909199, 43.446926, 29.193644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212378, 43.705578, 29.228010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645676, 0.762442, -0.042250,
		-0.092827, -0.023451, 0.995406,
		0.757948, 0.646632, 0.085917,
		26.439762, 43.899567, 29.253786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822372, 43.797089, 29.778399>,  <25.909199, 43.446926, 29.193644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822372, 43.797089, 29.778399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020309, 44.014977, 29.507576>,  <26.139071, 44.145710, 29.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020309, 44.014977, 29.507576>,  <25.822372, 43.797089, 29.778399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020309, 44.014977, 29.507576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653140, 0.747067, 0.123688,
		0.573184, 0.381008, 0.725460,
		0.494842, 0.544723, -0.677059,
		26.168762, 44.178394, 29.304459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737814, 44.548641, 30.081301>,  <25.822372, 43.797089, 29.778399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737814, 44.548641, 30.081301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769678, 44.536652, 29.682753>,  <25.788797, 44.529457, 29.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769678, 44.536652, 29.682753>,  <25.737814, 44.548641, 30.081301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769678, 44.536652, 29.682753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628018, 0.774719, -0.073515,
		0.774111, 0.631595, 0.042893,
		0.079662, -0.029971, -0.996371,
		25.793577, 44.527660, 29.383841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158319, 45.024994, 29.680111>,  <25.737814, 44.548641, 30.081301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158319, 45.024994, 29.680111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235916, 45.395878, 29.808270>,  <26.282475, 45.618408, 29.885164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235916, 45.395878, 29.808270>,  <26.158319, 45.024994, 29.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235916, 45.395878, 29.808270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644506, 0.366685, -0.670936,
		-0.739581, -0.076341, 0.668724,
		0.193991, 0.927208, 0.320396,
		26.294113, 45.674042, 29.904388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472305, 45.368999, 30.024303>,  <26.158319, 45.024994, 29.680111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472305, 45.368999, 30.024303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741030, 45.625687, 29.876318>,  <25.902264, 45.779697, 29.787527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741030, 45.625687, 29.876318>,  <25.472305, 45.368999, 30.024303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741030, 45.625687, 29.876318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709814, 0.414952, -0.569192,
		-0.211741, 0.644995, 0.734266,
		0.671811, 0.641713, -0.369964,
		25.942574, 45.818199, 29.765329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174919, 46.072857, 29.971764>,  <25.472305, 45.368999, 30.024303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174919, 46.072857, 29.971764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470284, 46.040035, 29.704027>,  <25.647501, 46.020344, 29.543385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470284, 46.040035, 29.704027>,  <25.174919, 46.072857, 29.971764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470284, 46.040035, 29.704027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568942, 0.457049, -0.683675,
		0.362018, 0.885649, 0.290807,
		0.738409, -0.082050, -0.669343,
		25.691807, 46.015419, 29.503223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074850, 45.848972, 29.276752>,  <25.174919, 46.072857, 29.971764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074850, 45.848972, 29.276752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145348, 46.237888, 29.215313>,  <25.187647, 46.471237, 29.178450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145348, 46.237888, 29.215313>,  <25.074850, 45.848972, 29.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145348, 46.237888, 29.215313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870701, -0.081201, 0.485063,
		0.459149, -0.219228, -0.860884,
		0.176244, 0.972289, -0.153599,
		25.198221, 46.529575, 29.169233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723867, 45.908623, 28.847729>,  <25.074850, 45.848972, 29.276752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723867, 45.908623, 28.847729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656008, 46.239960, 29.061298>,  <25.615292, 46.438763, 29.189440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656008, 46.239960, 29.061298>,  <25.723867, 45.908623, 28.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656008, 46.239960, 29.061298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820287, -0.181592, 0.542360,
		0.546214, 0.529980, -0.648669,
		-0.169647, 0.828339, 0.533924,
		25.605114, 46.488461, 29.221476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275173, 46.170086, 29.141499>,  <25.723867, 45.908623, 28.847729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275173, 46.170086, 29.141499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001570, 46.308712, 29.398254>,  <25.837408, 46.391888, 29.552309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001570, 46.308712, 29.398254>,  <26.275173, 46.170086, 29.141499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001570, 46.308712, 29.398254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645773, -0.121578, 0.753788,
		0.339276, 0.930114, -0.140642,
		-0.684009, 0.346565, 0.641891,
		25.796368, 46.412682, 29.590822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510843, 46.783806, 29.441374>,  <26.275173, 46.170086, 29.141499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510843, 46.783806, 29.441374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265608, 46.558167, 29.662611>,  <26.118465, 46.422783, 29.795353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265608, 46.558167, 29.662611>,  <26.510843, 46.783806, 29.441374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265608, 46.558167, 29.662611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711827, -0.090774, 0.696464,
		-0.342669, 0.820701, 0.457195,
		-0.613090, -0.564101, 0.553092,
		26.081680, 46.388935, 29.828539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496655, 46.979679, 30.236246>,  <26.510843, 46.783806, 29.441374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496655, 46.979679, 30.236246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429094, 46.594360, 30.152784>,  <26.388559, 46.363171, 30.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429094, 46.594360, 30.152784>,  <26.496655, 46.979679, 30.236246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429094, 46.594360, 30.152784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664418, -0.267641, 0.697795,
		-0.728026, -0.020776, 0.685235,
		-0.168899, -0.963295, -0.208653,
		26.378424, 46.305370, 30.090189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400978, 46.679962, 30.865437>,  <26.496655, 46.979679, 30.236246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400978, 46.679962, 30.865437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456390, 46.364155, 30.626282>,  <26.489637, 46.174671, 30.482788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456390, 46.364155, 30.626282>,  <26.400978, 46.679962, 30.865437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456390, 46.364155, 30.626282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545287, -0.443154, 0.711531,
		-0.826724, -0.424590, 0.369123,
		0.138530, -0.789518, -0.597889,
		26.497950, 46.127300, 30.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258089, 46.101334, 31.284468>,  <26.400978, 46.679962, 30.865437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258089, 46.101334, 31.284468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502823, 45.991932, 30.987589>,  <26.649662, 45.926289, 30.809462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502823, 45.991932, 30.987589>,  <26.258089, 46.101334, 31.284468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502823, 45.991932, 30.987589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644908, -0.370804, 0.668280,
		-0.457989, -0.887523, -0.050482,
		0.611832, -0.273509, -0.742195,
		26.686373, 45.909878, 30.764931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495316, 45.509373, 31.539837>,  <26.258089, 46.101334, 31.284468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495316, 45.509373, 31.539837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765110, 45.580559, 31.253229>,  <26.926987, 45.623272, 31.081264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765110, 45.580559, 31.253229>,  <26.495316, 45.509373, 31.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765110, 45.580559, 31.253229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668578, -0.558901, 0.490543,
		-0.313163, -0.809912, -0.495955,
		0.674487, 0.177965, -0.716517,
		26.967457, 45.633949, 31.038275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797314, 44.867592, 31.462166>,  <26.495316, 45.509373, 31.539837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797314, 44.867592, 31.462166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058760, 45.132423, 31.315504>,  <27.215628, 45.291325, 31.227507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058760, 45.132423, 31.315504>,  <26.797314, 44.867592, 31.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058760, 45.132423, 31.315504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703862, -0.353723, 0.616001,
		0.278150, -0.660700, -0.697214,
		0.653613, 0.662083, -0.366654,
		27.254845, 45.331047, 31.205507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435659, 44.490635, 31.307114>,  <26.797314, 44.867592, 31.462166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435659, 44.490635, 31.307114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530155, 44.875443, 31.361832>,  <27.586853, 45.106327, 31.394663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530155, 44.875443, 31.361832>,  <27.435659, 44.490635, 31.307114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530155, 44.875443, 31.361832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774756, -0.271452, 0.571022,
		0.586466, -0.028918, -0.809457,
		0.236241, 0.962018, 0.136793,
		27.601028, 45.164047, 31.402870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131332, 44.501469, 31.249933>,  <27.435659, 44.490635, 31.307114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131332, 44.501469, 31.249933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025141, 44.821659, 31.464876>,  <27.961426, 45.013775, 31.593842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025141, 44.821659, 31.464876>,  <28.131332, 44.501469, 31.249933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025141, 44.821659, 31.464876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751285, -0.177541, 0.635649,
		0.604227, 0.572460, -0.554255,
		-0.265480, 0.800480, 0.537356,
		27.945498, 45.061802, 31.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717781, 44.761868, 31.349955>,  <28.131332, 44.501469, 31.249933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717781, 44.761868, 31.349955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506947, 44.939655, 31.639679>,  <28.380445, 45.046329, 31.813513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506947, 44.939655, 31.639679>,  <28.717781, 44.761868, 31.349955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506947, 44.939655, 31.639679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729629, -0.200282, 0.653857,
		0.435688, 0.873116, -0.218735,
		-0.527084, 0.444473, 0.724311,
		28.348822, 45.072998, 31.856972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198200, 44.884449, 31.727257>,  <28.717781, 44.761868, 31.349955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198200, 44.884449, 31.727257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902237, 44.970852, 31.982092>,  <28.724659, 45.022694, 32.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902237, 44.970852, 31.982092>,  <29.198200, 44.884449, 31.727257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902237, 44.970852, 31.982092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519045, -0.419145, 0.744922,
		0.427938, 0.881850, 0.198013,
		-0.739906, 0.216002, 0.637088,
		28.680265, 45.035652, 32.173218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414675, 45.274971, 32.294453>,  <29.198200, 44.884449, 31.727257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414675, 45.274971, 32.294453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083801, 45.107212, 32.444050>,  <28.885277, 45.006557, 32.533806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083801, 45.107212, 32.444050>,  <29.414675, 45.274971, 32.294453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083801, 45.107212, 32.444050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512662, -0.290727, 0.807871,
		-0.230094, 0.859989, 0.455496,
		-0.827185, -0.419402, 0.373989,
		28.835646, 44.981392, 32.556248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317623, 45.535515, 32.922523>,  <29.414675, 45.274971, 32.294453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317623, 45.535515, 32.922523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133623, 45.181183, 32.898186>,  <29.023224, 44.968582, 32.883583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133623, 45.181183, 32.898186>,  <29.317623, 45.535515, 32.922523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133623, 45.181183, 32.898186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640740, -0.378602, 0.667916,
		-0.614697, 0.268256, 0.741745,
		-0.459999, -0.885833, -0.060843,
		28.995623, 44.915432, 32.879932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382662, 45.228588, 33.654915>,  <29.317623, 45.535515, 32.922523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382662, 45.228588, 33.654915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276224, 44.932938, 33.407402>,  <29.212362, 44.755547, 33.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276224, 44.932938, 33.407402>,  <29.382662, 45.228588, 33.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276224, 44.932938, 33.407402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688835, -0.594850, 0.414319,
		-0.674315, -0.315991, 0.667419,
		-0.266093, -0.739123, -0.618782,
		29.196396, 44.711201, 33.221767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418324, 44.614788, 34.045242>,  <29.382662, 45.228588, 33.654915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418324, 44.614788, 34.045242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435146, 44.460613, 33.676533>,  <29.445240, 44.368111, 33.455307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435146, 44.460613, 33.676533>,  <29.418324, 44.614788, 34.045242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435146, 44.460613, 33.676533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639564, -0.698411, 0.321217,
		-0.767587, -0.603044, 0.217137,
		0.042057, -0.385435, -0.921776,
		29.447763, 44.344982, 33.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153427, 43.992603, 34.025646>,  <29.418324, 44.614788, 34.045242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153427, 43.992603, 34.025646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407671, 43.992161, 33.716843>,  <29.560217, 43.991894, 33.531559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407671, 43.992161, 33.716843>,  <29.153427, 43.992603, 34.025646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407671, 43.992161, 33.716843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465949, -0.796769, 0.384773,
		-0.615540, -0.604283, -0.505917,
		0.635611, -0.001111, -0.772009,
		29.598354, 43.991829, 33.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215786, 43.318626, 33.899117>,  <29.153427, 43.992603, 34.025646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215786, 43.318626, 33.899117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517824, 43.488922, 33.699684>,  <29.699047, 43.591099, 33.580025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517824, 43.488922, 33.699684>,  <29.215786, 43.318626, 33.899117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517824, 43.488922, 33.699684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606200, -0.743024, 0.283615,
		-0.249709, -0.516393, -0.819136,
		0.755094, 0.425739, -0.498577,
		29.744352, 43.616642, 33.550110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509817, 42.734501, 33.427334>,  <29.215786, 43.318626, 33.899117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509817, 42.734501, 33.427334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781099, 43.018013, 33.504967>,  <29.943869, 43.188122, 33.551544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781099, 43.018013, 33.504967>,  <29.509817, 42.734501, 33.427334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781099, 43.018013, 33.504967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664881, -0.704312, 0.248752,
		0.313004, -0.039665, -0.948923,
		0.678205, 0.708782, 0.194080,
		29.984560, 43.230648, 33.563190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012783, 42.288818, 33.184658>,  <29.509817, 42.734501, 33.427334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012783, 42.288818, 33.184658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156258, 42.605026, 33.383221>,  <30.242342, 42.794750, 33.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156258, 42.605026, 33.383221>,  <30.012783, 42.288818, 33.184658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156258, 42.605026, 33.383221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714148, -0.574850, 0.399423,
		0.601112, 0.211239, -0.770742,
		0.358687, 0.790522, 0.496405,
		30.263865, 42.842182, 33.532143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650339, 42.280701, 33.103165>,  <30.012783, 42.288818, 33.184658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650339, 42.280701, 33.103165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625090, 42.510712, 33.429443>,  <30.609940, 42.648720, 33.625210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625090, 42.510712, 33.429443>,  <30.650339, 42.280701, 33.103165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625090, 42.510712, 33.429443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599401, -0.631649, 0.491669,
		0.797956, 0.519966, -0.304798,
		-0.063125, 0.575027, 0.815696,
		30.606152, 42.683220, 33.674152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362333, 42.299805, 33.383934>,  <30.650339, 42.280701, 33.103165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362333, 42.299805, 33.383934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129602, 42.431072, 33.681599>,  <30.989964, 42.509834, 33.860199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129602, 42.431072, 33.681599>,  <31.362333, 42.299805, 33.383934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129602, 42.431072, 33.681599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579349, -0.474942, 0.662408,
		0.570816, 0.816539, 0.086210,
		-0.581827, 0.328168, 0.744166,
		30.955053, 42.529522, 33.904850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824568, 42.621052, 33.949478>,  <31.362333, 42.299805, 33.383934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824568, 42.621052, 33.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488708, 42.509449, 34.135872>,  <31.287193, 42.442490, 34.247707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488708, 42.509449, 34.135872>,  <31.824568, 42.621052, 33.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488708, 42.509449, 34.135872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542874, -0.404906, 0.735758,
		-0.016597, 0.870752, 0.491442,
		-0.839650, -0.279002, 0.465988,
		31.236813, 42.425747, 34.275669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907528, 42.708138, 34.713593>,  <31.824568, 42.621052, 33.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907528, 42.708138, 34.713593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578049, 42.482052, 34.695457>,  <31.380362, 42.346401, 34.684574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578049, 42.482052, 34.695457>,  <31.907528, 42.708138, 34.713593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578049, 42.482052, 34.695457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234930, -0.412960, 0.879927,
		-0.516068, 0.714144, 0.472940,
		-0.823700, -0.565210, -0.045341,
		31.330938, 42.312489, 34.681854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587564, 42.668797, 35.466446>,  <31.907528, 42.708138, 34.713593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587564, 42.668797, 35.466446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449123, 42.364780, 35.246426>,  <31.366058, 42.182369, 35.114414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449123, 42.364780, 35.246426>,  <31.587564, 42.668797, 35.466446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449123, 42.364780, 35.246426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115692, -0.616381, 0.778903,
		-0.931036, 0.205944, 0.301262,
		-0.346103, -0.760041, -0.550046,
		31.345293, 42.136768, 35.081413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006289, 42.347427, 35.907642>,  <31.587564, 42.668797, 35.466446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006289, 42.347427, 35.907642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161354, 42.077957, 35.655968>,  <31.254393, 41.916275, 35.504963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161354, 42.077957, 35.655968>,  <31.006289, 42.347427, 35.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161354, 42.077957, 35.655968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281258, -0.563573, 0.776711,
		-0.877845, -0.478066, -0.028999,
		0.387662, -0.673676, -0.629189,
		31.277653, 41.875854, 35.467213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822268, 41.660801, 36.183464>,  <31.006289, 42.347427, 35.907642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822268, 41.660801, 36.183464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120770, 41.575748, 35.931149>,  <31.299871, 41.524719, 35.779758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120770, 41.575748, 35.931149>,  <30.822268, 41.660801, 36.183464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120770, 41.575748, 35.931149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375577, -0.647880, 0.662717,
		-0.549585, -0.731465, -0.403627,
		0.746257, -0.212626, -0.630786,
		31.344646, 41.511959, 35.741913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957245, 40.926846, 36.265083>,  <30.822268, 41.660801, 36.183464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957245, 40.926846, 36.265083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298243, 41.040882, 36.089825>,  <31.502842, 41.109303, 35.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298243, 41.040882, 36.089825>,  <30.957245, 40.926846, 36.265083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298243, 41.040882, 36.089825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506908, -0.655548, 0.559733,
		-0.127654, -0.699271, -0.703366,
		0.852496, 0.285090, -0.438150,
		31.553991, 41.126408, 35.958378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276966, 40.294498, 36.107109>,  <30.957245, 40.926846, 36.265083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276966, 40.294498, 36.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572870, 40.563595, 36.101738>,  <31.750412, 40.725052, 36.098515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572870, 40.563595, 36.101738>,  <31.276966, 40.294498, 36.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572870, 40.563595, 36.101738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583351, -0.631271, 0.511076,
		0.335345, -0.385904, -0.859431,
		0.739760, 0.672736, -0.013424,
		31.794798, 40.765415, 36.097710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904846, 39.950909, 35.849922>,  <31.276966, 40.294498, 36.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904846, 39.950909, 35.849922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045650, 40.262032, 36.058189>,  <32.130135, 40.448708, 36.183151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045650, 40.262032, 36.058189>,  <31.904846, 39.950909, 35.849922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045650, 40.262032, 36.058189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631795, -0.607881, 0.480953,
		0.690596, 0.159656, -0.705399,
		0.352011, 0.777812, 0.520670,
		32.151253, 40.495377, 36.214390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576637, 39.688210, 36.124054>,  <31.904846, 39.950909, 35.849922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576637, 39.688210, 36.124054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500702, 40.024517, 36.326862>,  <32.455143, 40.226303, 36.448547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500702, 40.024517, 36.326862>,  <32.576637, 39.688210, 36.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500702, 40.024517, 36.326862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404054, -0.403755, 0.820806,
		0.894820, 0.360683, -0.263068,
		-0.189836, 0.840767, 0.507023,
		32.443752, 40.276749, 36.478970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184898, 39.902023, 36.370682>,  <32.576637, 39.688210, 36.124054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184898, 39.902023, 36.370682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893440, 40.034966, 36.610222>,  <32.718567, 40.114731, 36.753944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893440, 40.034966, 36.610222>,  <33.184898, 39.902023, 36.370682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893440, 40.034966, 36.610222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483820, -0.369101, 0.793526,
		0.484769, 0.867931, 0.108141,
		-0.728641, 0.332356, 0.598851,
		32.674847, 40.134674, 36.789879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483391, 40.391911, 36.924133>,  <33.184898, 39.902023, 36.370682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483391, 40.391911, 36.924133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137825, 40.237869, 37.053963>,  <32.930485, 40.145443, 37.131863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137825, 40.237869, 37.053963>,  <33.483391, 40.391911, 36.924133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137825, 40.237869, 37.053963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436543, -0.251172, 0.863911,
		-0.251172, 0.888035, 0.385106,
		-0.863911, -0.385106, 0.324578,
		32.878651, 40.122337, 37.151337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496193, 40.479282, 37.622906>,  <33.483391, 40.391911, 36.924133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496193, 40.479282, 37.622906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186432, 40.227062, 37.602089>,  <33.000576, 40.075729, 37.589600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186432, 40.227062, 37.602089>,  <33.496193, 40.479282, 37.622906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186432, 40.227062, 37.602089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247531, -0.377650, 0.892249,
		-0.582263, 0.678076, 0.448533,
		-0.774402, -0.630550, -0.052047,
		32.954113, 40.037899, 37.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125862, 40.515038, 38.208603>,  <33.496193, 40.479282, 37.622906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125862, 40.515038, 38.208603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981865, 40.175610, 38.053513>,  <32.895466, 39.971954, 37.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981865, 40.175610, 38.053513>,  <33.125862, 40.515038, 38.208603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981865, 40.175610, 38.053513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078416, -0.441641, 0.893758,
		-0.929653, 0.291344, 0.225530,
		-0.359994, -0.848571, -0.387727,
		32.873867, 39.921040, 37.937195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731144, 40.317432, 38.649441>,  <33.125862, 40.515038, 38.208603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731144, 40.317432, 38.649441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766106, 39.961926, 38.469460>,  <32.787083, 39.748623, 38.361469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766106, 39.961926, 38.469460>,  <32.731144, 40.317432, 38.649441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766106, 39.961926, 38.469460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101674, -0.441367, 0.891547,
		-0.990970, -0.123675, 0.051786,
		0.087406, -0.888763, -0.449957,
		32.792328, 39.695297, 38.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372513, 39.735336, 39.022324>,  <32.731144, 40.317432, 38.649441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372513, 39.735336, 39.022324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645546, 39.520924, 38.823631>,  <32.809368, 39.392277, 38.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645546, 39.520924, 38.823631>,  <32.372513, 39.735336, 39.022324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645546, 39.520924, 38.823631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114952, -0.592493, 0.797332,
		-0.721709, -0.601347, -0.342809,
		0.682585, -0.536035, -0.496734,
		32.850323, 39.360115, 38.674610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199924, 39.115097, 39.149830>,  <32.372513, 39.735336, 39.022324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199924, 39.115097, 39.149830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586201, 39.113613, 39.045963>,  <32.817966, 39.112724, 38.983643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586201, 39.113613, 39.045963>,  <32.199924, 39.115097, 39.149830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586201, 39.113613, 39.045963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201551, -0.619834, 0.758408,
		-0.163762, -0.784724, -0.597821,
		0.965691, -0.003706, -0.259667,
		32.875908, 39.112499, 38.968063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382977, 38.294933, 39.183754>,  <32.199924, 39.115097, 39.149830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382977, 38.294933, 39.183754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693691, 38.542259, 39.231575>,  <32.880119, 38.690655, 39.260269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693691, 38.542259, 39.231575>,  <32.382977, 38.294933, 39.183754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693691, 38.542259, 39.231575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246762, -0.473493, 0.845525,
		0.579404, -0.627292, -0.520379,
		0.776788, 0.618311, 0.119552,
		32.926727, 38.727753, 39.267441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866936, 37.867092, 39.313740>,  <32.382977, 38.294933, 39.183754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866936, 37.867092, 39.313740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001118, 38.226170, 39.428017>,  <33.081627, 38.441616, 39.496582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001118, 38.226170, 39.428017>,  <32.866936, 37.867092, 39.313740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001118, 38.226170, 39.428017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431940, -0.416074, 0.800194,
		0.837197, -0.145025, -0.527323,
		0.335453, 0.897691, 0.285693,
		33.101753, 38.495476, 39.513725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625923, 37.774445, 39.417038>,  <32.866936, 37.867092, 39.313740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625923, 37.774445, 39.417038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534630, 38.115135, 39.605705>,  <33.479855, 38.319550, 39.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534630, 38.115135, 39.605705>,  <33.625923, 37.774445, 39.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534630, 38.115135, 39.605705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661870, -0.219564, 0.716743,
		0.714031, 0.475767, -0.513621,
		-0.228229, 0.851726, 0.471671,
		33.466160, 38.370651, 39.747208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225124, 38.123798, 39.710655>,  <33.625923, 37.774445, 39.417038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225124, 38.123798, 39.710655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934525, 38.292202, 39.927891>,  <33.760162, 38.393246, 40.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934525, 38.292202, 39.927891>,  <34.225124, 38.123798, 39.710655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934525, 38.292202, 39.927891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594434, -0.011449, 0.804063,
		0.344737, 0.906983, -0.241946,
		-0.726502, 0.421011, 0.543089,
		33.716576, 38.418507, 40.090816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525059, 38.719769, 40.025307>,  <34.225124, 38.123798, 39.710655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525059, 38.719769, 40.025307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233791, 38.556900, 40.245846>,  <34.059032, 38.459179, 40.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233791, 38.556900, 40.245846>,  <34.525059, 38.719769, 40.025307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233791, 38.556900, 40.245846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604334, -0.001916, 0.796729,
		-0.323347, 0.913351, 0.247461,
		-0.728167, -0.407169, 0.551350,
		34.015343, 38.434750, 40.411251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873760, 39.249855, 39.611732>,  <34.525059, 38.719769, 40.025307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873760, 39.249855, 39.611732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234779, 39.393208, 39.516254>,  <35.451389, 39.479218, 39.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234779, 39.393208, 39.516254>,  <34.873760, 39.249855, 39.611732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234779, 39.393208, 39.516254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407342, 0.530914, -0.743104,
		-0.139590, 0.767915, 0.625157,
		0.902545, 0.358382, -0.238694,
		35.505543, 39.500721, 39.444645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864052, 39.967869, 39.477310>,  <34.873760, 39.249855, 39.611732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864052, 39.967869, 39.477310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210606, 39.892597, 39.292286>,  <35.418537, 39.847435, 39.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210606, 39.892597, 39.292286>,  <34.864052, 39.967869, 39.477310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210606, 39.892597, 39.292286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285423, 0.573454, -0.767909,
		0.409762, 0.797332, 0.443122,
		0.866389, -0.188183, -0.462556,
		35.470524, 39.836143, 39.153519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130505, 40.613174, 39.333679>,  <34.864052, 39.967869, 39.477310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130505, 40.613174, 39.333679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296291, 40.343807, 39.088821>,  <35.395763, 40.182186, 38.941906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296291, 40.343807, 39.088821>,  <35.130505, 40.613174, 39.333679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296291, 40.343807, 39.088821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057394, 0.651957, -0.756081,
		0.908252, 0.348505, 0.231565,
		0.414468, -0.673422, -0.612143,
		35.420631, 40.141781, 38.905178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615635, 40.978664, 38.967751>,  <35.130505, 40.613174, 39.333679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615635, 40.978664, 38.967751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520912, 40.665264, 38.737953>,  <35.464077, 40.477222, 38.600075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520912, 40.665264, 38.737953>,  <35.615635, 40.978664, 38.967751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520912, 40.665264, 38.737953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045926, 0.599681, -0.798920,
		0.970471, -0.162804, -0.177991,
		-0.236806, -0.783503, -0.574496,
		35.449871, 40.430214, 38.565605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914570, 41.175552, 38.310375>,  <35.615635, 40.978664, 38.967751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914570, 41.175552, 38.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659672, 40.875721, 38.238762>,  <35.506733, 40.695824, 38.195793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659672, 40.875721, 38.238762>,  <35.914570, 41.175552, 38.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659672, 40.875721, 38.238762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239314, 0.413297, -0.878587,
		0.732561, -0.517032, -0.442756,
		-0.637247, -0.749576, -0.179032,
		35.468498, 40.650848, 38.185051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094887, 40.947220, 37.619232>,  <35.914570, 41.175552, 38.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094887, 40.947220, 37.619232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717609, 40.836975, 37.693455>,  <35.491245, 40.770828, 37.737988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717609, 40.836975, 37.693455>,  <36.094887, 40.947220, 37.619232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717609, 40.836975, 37.693455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300720, 0.470660, -0.829486,
		0.141277, -0.838165, -0.526802,
		-0.943191, -0.275607, 0.185560,
		35.434650, 40.754292, 37.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967224, 40.853680, 37.000290>,  <36.094887, 40.947220, 37.619232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967224, 40.853680, 37.000290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607212, 40.869186, 37.173931>,  <35.391205, 40.878490, 37.278114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607212, 40.869186, 37.173931>,  <35.967224, 40.853680, 37.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607212, 40.869186, 37.173931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308657, 0.646503, -0.697685,
		-0.307698, -0.761925, -0.569905,
		-0.900029, 0.038771, 0.434101,
		35.337204, 40.880817, 37.304161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409218, 40.613262, 36.464695>,  <35.967224, 40.853680, 37.000290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409218, 40.613262, 36.464695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256321, 40.862461, 36.737682>,  <35.164585, 41.011982, 36.901474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256321, 40.862461, 36.737682>,  <35.409218, 40.613262, 36.464695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256321, 40.862461, 36.737682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342887, 0.590198, -0.730818,
		-0.858092, -0.513357, -0.011978,
		-0.382240, 0.623001, 0.682467,
		35.141647, 41.049362, 36.942421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812183, 40.925991, 36.114880>,  <35.409218, 40.613262, 36.464695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812183, 40.925991, 36.114880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834038, 41.183311, 36.420345>,  <34.847153, 41.337704, 36.603626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834038, 41.183311, 36.420345>,  <34.812183, 40.925991, 36.114880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834038, 41.183311, 36.420345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378576, 0.721050, -0.580316,
		-0.923956, -0.257396, 0.282935,
		0.054639, 0.643299, 0.763663,
		34.850430, 41.376301, 36.649445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214046, 41.101185, 36.101448>,  <34.812183, 40.925991, 36.114880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214046, 41.101185, 36.101448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408989, 41.385021, 36.305004>,  <34.525955, 41.555321, 36.427139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408989, 41.385021, 36.305004>,  <34.214046, 41.101185, 36.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408989, 41.385021, 36.305004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448883, 0.703474, -0.551025,
		-0.748993, 0.040111, 0.661363,
		0.487353, 0.709588, 0.508892,
		34.555195, 41.597897, 36.457672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716053, 41.557304, 36.275494>,  <34.214046, 41.101185, 36.101448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716053, 41.557304, 36.275494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051826, 41.773315, 36.299892>,  <34.253292, 41.902920, 36.314533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051826, 41.773315, 36.299892>,  <33.716053, 41.557304, 36.275494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051826, 41.773315, 36.299892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457285, 0.762517, -0.457665,
		-0.293663, 0.356287, 0.887030,
		0.839436, 0.540025, 0.060999,
		34.303658, 41.935322, 36.318192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446510, 42.101368, 36.220528>,  <33.716053, 41.557304, 36.275494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446510, 42.101368, 36.220528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827396, 42.215763, 36.177628>,  <34.055927, 42.284401, 36.151886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827396, 42.215763, 36.177628>,  <33.446510, 42.101368, 36.220528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827396, 42.215763, 36.177628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300829, 0.817350, -0.491366,
		-0.052864, 0.500149, 0.864324,
		0.952212, 0.285989, -0.107251,
		34.113060, 42.301559, 36.145451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491913, 42.785835, 36.518421>,  <33.446510, 42.101368, 36.220528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491913, 42.785835, 36.518421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755882, 42.727428, 36.223618>,  <33.914265, 42.692383, 36.046738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755882, 42.727428, 36.223618>,  <33.491913, 42.785835, 36.518421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755882, 42.727428, 36.223618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343404, 0.813858, -0.468731,
		0.668262, 0.562418, 0.486941,
		0.659924, -0.146018, -0.737007,
		33.953857, 42.683624, 36.002514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866730, 43.425743, 36.393799>,  <33.491913, 42.785835, 36.518421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866730, 43.425743, 36.393799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919998, 43.220608, 36.054562>,  <33.951958, 43.097527, 35.851021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919998, 43.220608, 36.054562>,  <33.866730, 43.425743, 36.393799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919998, 43.220608, 36.054562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312864, 0.790208, -0.526960,
		0.940416, 0.335513, -0.055216,
		0.133170, -0.512837, -0.848094,
		33.959949, 43.066757, 35.800133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270657, 43.864208, 36.011654>,  <33.866730, 43.425743, 36.393799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270657, 43.864208, 36.011654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132492, 43.600410, 35.744595>,  <34.049591, 43.442131, 35.584358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132492, 43.600410, 35.744595>,  <34.270657, 43.864208, 36.011654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132492, 43.600410, 35.744595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241114, 0.749921, -0.616022,
		0.906947, -0.051804, -0.418047,
		-0.345415, -0.659496, -0.667648,
		34.028866, 43.402561, 35.544300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549358, 44.089050, 35.375072>,  <34.270657, 43.864208, 36.011654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549358, 44.089050, 35.375072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233994, 43.865643, 35.271950>,  <34.044773, 43.731598, 35.210075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233994, 43.865643, 35.271950>,  <34.549358, 44.089050, 35.375072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233994, 43.865643, 35.271950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344642, 0.748198, -0.566940,
		0.509536, -0.358132, -0.782377,
		-0.788413, -0.558517, -0.257807,
		33.997471, 43.698086, 35.194607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485176, 44.129898, 34.616886>,  <34.549358, 44.089050, 35.375072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485176, 44.129898, 34.616886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127247, 43.998718, 34.738037>,  <33.912487, 43.920010, 34.810726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127247, 43.998718, 34.738037>,  <34.485176, 44.129898, 34.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127247, 43.998718, 34.738037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443331, 0.573255, -0.689084,
		0.052362, -0.750884, -0.658355,
		-0.894827, -0.327951, 0.302874,
		33.858799, 43.900333, 34.828899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132374, 43.871986, 33.978409>,  <34.485176, 44.129898, 34.616886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132374, 43.871986, 33.978409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851582, 43.936615, 34.255859>,  <33.683105, 43.975391, 34.422329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851582, 43.936615, 34.255859>,  <34.132374, 43.871986, 33.978409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851582, 43.936615, 34.255859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564354, 0.467888, -0.680136,
		-0.434431, -0.868893, -0.237265,
		-0.701979, 0.161570, 0.693628,
		33.640987, 43.985085, 34.463947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492561, 43.619659, 33.691242>,  <34.132374, 43.871986, 33.978409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492561, 43.619659, 33.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398720, 43.872017, 33.987061>,  <33.342415, 44.023434, 34.164551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398720, 43.872017, 33.987061>,  <33.492561, 43.619659, 33.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398720, 43.872017, 33.987061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662610, 0.452875, -0.596534,
		-0.711274, -0.629980, 0.311793,
		-0.234601, 0.630896, 0.739549,
		33.328339, 44.061287, 34.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825409, 43.626595, 33.734993>,  <33.492561, 43.619659, 33.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825409, 43.626595, 33.734993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920212, 43.976051, 33.904972>,  <32.977093, 44.185726, 34.006958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920212, 43.976051, 33.904972>,  <32.825409, 43.626595, 33.734993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920212, 43.976051, 33.904972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429468, 0.486565, -0.760797,
		-0.871426, -0.002183, 0.490522,
		0.237010, 0.873642, 0.424943,
		32.991314, 44.238144, 34.032455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145382, 44.010975, 33.858364>,  <32.825409, 43.626595, 33.734993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145382, 44.010975, 33.858364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411919, 44.308796, 33.842186>,  <32.571838, 44.487488, 33.832481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411919, 44.308796, 33.842186>,  <32.145382, 44.010975, 33.858364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411919, 44.308796, 33.842186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622590, 0.525700, -0.579673,
		-0.410337, 0.411437, 0.813845,
		0.666337, 0.744553, -0.040442,
		32.611820, 44.532162, 33.830055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767973, 44.669472, 33.795204>,  <32.145382, 44.010975, 33.858364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767973, 44.669472, 33.795204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129429, 44.655273, 33.624477>,  <32.346302, 44.646755, 33.522041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129429, 44.655273, 33.624477>,  <31.767973, 44.669472, 33.795204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129429, 44.655273, 33.624477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423896, 0.068333, -0.903130,
		0.061226, 0.997031, 0.046701,
		0.903639, -0.035498, -0.426821,
		32.400520, 44.644623, 33.496429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783182, 45.245354, 33.352760>,  <31.767973, 44.669472, 33.795204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783182, 45.245354, 33.352760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024475, 44.957500, 33.215210>,  <32.169250, 44.784790, 33.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024475, 44.957500, 33.215210>,  <31.783182, 45.245354, 33.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024475, 44.957500, 33.215210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497256, -0.002247, -0.867601,
		0.623578, 0.694355, -0.359195,
		0.603231, -0.719629, -0.343871,
		32.205444, 44.741611, 33.112049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048965, 45.491711, 32.758018>,  <31.783182, 45.245354, 33.352760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048965, 45.491711, 32.758018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130772, 45.102180, 32.718361>,  <32.179855, 44.868462, 32.694565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130772, 45.102180, 32.718361>,  <32.048965, 45.491711, 32.758018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130772, 45.102180, 32.718361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181380, 0.061831, -0.981468,
		0.961913, 0.218706, -0.163988,
		0.204513, -0.973830, -0.099145,
		32.192127, 44.810032, 32.688618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430935, 45.421036, 32.182503>,  <32.048965, 45.491711, 32.758018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430935, 45.421036, 32.182503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263000, 45.064362, 32.250187>,  <32.162239, 44.850357, 32.290798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263000, 45.064362, 32.250187>,  <32.430935, 45.421036, 32.182503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263000, 45.064362, 32.250187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372673, -0.000628, -0.927962,
		0.827560, -0.452649, -0.332045,
		-0.419833, -0.891689, 0.169210,
		32.137051, 44.796856, 32.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560780, 45.079075, 31.514433>,  <32.430935, 45.421036, 32.182503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560780, 45.079075, 31.514433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263561, 44.878319, 31.691515>,  <32.085228, 44.757866, 31.797764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263561, 44.878319, 31.691515>,  <32.560780, 45.079075, 31.514433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263561, 44.878319, 31.691515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462258, -0.093449, -0.881808,
		0.483940, -0.859869, -0.162565,
		-0.743048, -0.501889, 0.442705,
		32.040646, 44.727753, 31.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494923, 44.416180, 31.068640>,  <32.560780, 45.079075, 31.514433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494923, 44.416180, 31.068640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156445, 44.475044, 31.273497>,  <31.953358, 44.510365, 31.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156445, 44.475044, 31.273497>,  <32.494923, 44.416180, 31.068640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156445, 44.475044, 31.273497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532760, -0.252984, -0.807568,
		0.010722, -0.956213, 0.292476,
		-0.846199, 0.147161, 0.512144,
		31.902584, 44.519192, 31.427139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117634, 43.987587, 30.807461>,  <32.494923, 44.416180, 31.068640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117634, 43.987587, 30.807461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832088, 44.212559, 30.974344>,  <31.660761, 44.347542, 31.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832088, 44.212559, 30.974344>,  <32.117634, 43.987587, 30.807461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832088, 44.212559, 30.974344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612460, -0.212567, -0.761386,
		-0.339544, -0.799052, 0.496212,
		-0.713865, 0.562434, 0.417211,
		31.617929, 44.381290, 31.099508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547300, 43.601200, 30.767504>,  <32.117634, 43.987587, 30.807461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547300, 43.601200, 30.767504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418142, 43.977165, 30.811867>,  <31.340649, 44.202744, 30.838484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418142, 43.977165, 30.811867>,  <31.547300, 43.601200, 30.767504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418142, 43.977165, 30.811867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616216, -0.119843, -0.778406,
		-0.718344, -0.319683, 0.617887,
		-0.322893, 0.939915, 0.110905,
		31.321274, 44.259140, 30.845139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906506, 43.544945, 30.559153>,  <31.547300, 43.601200, 30.767504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906506, 43.544945, 30.559153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942871, 43.943268, 30.563251>,  <30.964691, 44.182262, 30.565710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942871, 43.943268, 30.563251>,  <30.906506, 43.544945, 30.559153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942871, 43.943268, 30.563251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702839, 0.071451, -0.707752,
		-0.705516, 0.057142, 0.706387,
		0.090914, 0.995806, 0.010248,
		30.970146, 44.242008, 30.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244581, 43.849651, 30.514219>,  <30.906506, 43.544945, 30.559153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244581, 43.849651, 30.514219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495173, 44.129063, 30.375893>,  <30.645527, 44.296707, 30.292896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495173, 44.129063, 30.375893>,  <30.244581, 43.849651, 30.514219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495173, 44.129063, 30.375893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530712, 0.057342, -0.845610,
		-0.570849, 0.713286, 0.406638,
		0.626479, 0.698524, -0.345816,
		30.683117, 44.338619, 30.272148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836016, 44.248512, 30.104889>,  <30.244581, 43.849651, 30.514219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836016, 44.248512, 30.104889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188377, 44.377773, 29.966568>,  <30.399796, 44.455330, 29.883575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188377, 44.377773, 29.966568>,  <29.836016, 44.248512, 30.104889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188377, 44.377773, 29.966568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407875, 0.147685, -0.901015,
		-0.240093, 0.934753, 0.261901,
		0.880905, 0.323150, -0.345804,
		30.452648, 44.474720, 29.862827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680813, 44.857197, 29.693270>,  <29.836016, 44.248512, 30.104889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680813, 44.857197, 29.693270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048038, 44.741749, 29.584560>,  <30.268373, 44.672482, 29.519335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048038, 44.741749, 29.584560>,  <29.680813, 44.857197, 29.693270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048038, 44.741749, 29.584560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225638, 0.183250, -0.956821,
		0.325959, 0.939744, 0.103112,
		0.918062, -0.288618, -0.271774,
		30.323458, 44.655163, 29.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881920, 45.312378, 29.173754>,  <29.680813, 44.857197, 29.693270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881920, 45.312378, 29.173754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117226, 44.995884, 29.106951>,  <30.258410, 44.805988, 29.066868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117226, 44.995884, 29.106951>,  <29.881920, 45.312378, 29.173754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117226, 44.995884, 29.106951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161740, 0.087230, -0.982970,
		0.792329, 0.605259, -0.076660,
		0.588265, -0.791235, -0.167010,
		30.293705, 44.758514, 29.056849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280550, 45.425751, 28.604174>,  <29.881920, 45.312378, 29.173754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280550, 45.425751, 28.604174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283548, 45.025787, 28.608772>,  <30.285347, 44.785809, 28.611532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283548, 45.025787, 28.608772>,  <30.280550, 45.425751, 28.604174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283548, 45.025787, 28.608772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127844, -0.012363, -0.991717,
		0.991766, 0.005966, -0.127925,
		0.007498, -0.999906, 0.011499,
		30.285797, 44.725815, 28.612223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665508, 45.313553, 28.138241>,  <30.280550, 45.425751, 28.604174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665508, 45.313553, 28.138241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492897, 44.955254, 28.180998>,  <30.389330, 44.740276, 28.206652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492897, 44.955254, 28.180998>,  <30.665508, 45.313553, 28.138241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492897, 44.955254, 28.180998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040397, -0.099187, -0.994248,
		0.901194, -0.433364, 0.006616,
		-0.431528, -0.895744, 0.106893,
		30.363438, 44.686531, 28.213066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887711, 44.995197, 27.604778>,  <30.665508, 45.313553, 28.138241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887711, 44.995197, 27.604778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577650, 44.765945, 27.711111>,  <30.391613, 44.628395, 27.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577650, 44.765945, 27.711111>,  <30.887711, 44.995197, 27.604778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577650, 44.765945, 27.711111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171301, -0.214338, -0.961621,
		0.608108, -0.790940, 0.067968,
		-0.775152, -0.573126, 0.265830,
		30.345104, 44.594009, 27.790859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017897, 44.342403, 27.385376>,  <30.887711, 44.995197, 27.604778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017897, 44.342403, 27.385376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620554, 44.334526, 27.430735>,  <30.382149, 44.329800, 27.457951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620554, 44.334526, 27.430735>,  <31.017897, 44.342403, 27.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620554, 44.334526, 27.430735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095569, -0.407904, -0.908009,
		0.064139, -0.912812, 0.403311,
		-0.993354, -0.019694, 0.113399,
		30.322548, 44.328617, 27.464754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660070, 43.733780, 27.184521>,  <31.017897, 44.342403, 27.385376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660070, 43.733780, 27.184521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382614, 44.017895, 27.136593>,  <30.216141, 44.188362, 27.107836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382614, 44.017895, 27.136593>,  <30.660070, 43.733780, 27.184521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382614, 44.017895, 27.136593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192287, -0.342894, -0.919483,
		-0.694181, -0.614752, 0.374424,
		-0.693641, 0.710285, -0.119821,
		30.174522, 44.230980, 27.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752312, 43.465809, 26.400839>,  <30.660070, 43.733780, 27.184521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752312, 43.465809, 26.400839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074766, 43.559578, 26.183514>,  <31.268238, 43.615841, 26.053120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074766, 43.559578, 26.183514>,  <30.752312, 43.465809, 26.400839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074766, 43.559578, 26.183514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590016, -0.248616, 0.768161,
		0.045001, -0.939806, -0.338733,
		0.806137, 0.234426, -0.543312,
		31.316607, 43.629906, 26.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299608, 42.950169, 26.468605>,  <30.752312, 43.465809, 26.400839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299608, 42.950169, 26.468605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482647, 43.286716, 26.353575>,  <31.592470, 43.488647, 26.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482647, 43.286716, 26.353575>,  <31.299608, 42.950169, 26.468605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482647, 43.286716, 26.353575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682921, -0.125451, 0.719640,
		0.569408, -0.525695, -0.631996,
		0.457596, 0.841372, -0.287575,
		31.619926, 43.539127, 26.267302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904951, 42.698429, 26.357544>,  <31.299608, 42.950169, 26.468605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904951, 42.698429, 26.357544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925268, 43.088226, 26.444984>,  <31.937458, 43.322105, 26.497448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925268, 43.088226, 26.444984>,  <31.904951, 42.698429, 26.357544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925268, 43.088226, 26.444984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725066, -0.186504, 0.662945,
		0.686804, 0.124828, -0.716044,
		0.050791, 0.974492, 0.218600,
		31.940506, 43.380573, 26.510565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642521, 42.832367, 26.462734>,  <31.904951, 42.698429, 26.357544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642521, 42.832367, 26.462734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476917, 43.155922, 26.629730>,  <32.377556, 43.350056, 26.729929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476917, 43.155922, 26.629730>,  <32.642521, 42.832367, 26.462734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476917, 43.155922, 26.629730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799838, 0.104301, 0.591084,
		0.434575, 0.578640, -0.690159,
		-0.414009, 0.808886, 0.417492,
		32.352715, 43.398586, 26.754978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238762, 43.122982, 26.766655>,  <32.642521, 42.832367, 26.462734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238762, 43.122982, 26.766655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933914, 43.322048, 26.932306>,  <32.751007, 43.441490, 27.031696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933914, 43.322048, 26.932306>,  <33.238762, 43.122982, 26.766655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933914, 43.322048, 26.932306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578255, 0.235536, 0.781117,
		0.291195, 0.834775, -0.467286,
		-0.762120, 0.497668, 0.414126,
		32.705276, 43.471348, 27.056543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534794, 43.628090, 27.018820>,  <33.238762, 43.122982, 26.766655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534794, 43.628090, 27.018820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185345, 43.670647, 27.208755>,  <32.975677, 43.696178, 27.322718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185345, 43.670647, 27.208755>,  <33.534794, 43.628090, 27.018820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185345, 43.670647, 27.208755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486278, 0.227000, 0.843804,
		-0.018017, 0.968066, -0.250046,
		-0.873619, 0.106389, 0.474839,
		32.923260, 43.702564, 27.351208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517303, 44.302078, 27.563601>,  <33.534794, 43.628090, 27.018820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517303, 44.302078, 27.563601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236057, 44.038395, 27.670237>,  <33.067310, 43.880184, 27.734219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236057, 44.038395, 27.670237>,  <33.517303, 44.302078, 27.563601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236057, 44.038395, 27.670237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396300, -0.051997, 0.916647,
		-0.590403, 0.750158, 0.297805,
		-0.703115, -0.659211, 0.266589,
		33.025124, 43.840630, 27.750214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162430, 44.599148, 28.087868>,  <33.517303, 44.302078, 27.563601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162430, 44.599148, 28.087868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093193, 44.209240, 28.144239>,  <33.051651, 43.975296, 28.178062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093193, 44.209240, 28.144239>,  <33.162430, 44.599148, 28.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093193, 44.209240, 28.144239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466245, 0.044942, 0.883513,
		-0.867557, 0.218635, 0.446703,
		-0.173091, -0.974771, 0.140928,
		33.041267, 43.916809, 28.186518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121590, 44.568111, 28.789846>,  <33.162430, 44.599148, 28.087868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121590, 44.568111, 28.789846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202816, 44.186550, 28.701448>,  <33.251553, 43.957615, 28.648409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202816, 44.186550, 28.701448>,  <33.121590, 44.568111, 28.789846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202816, 44.186550, 28.701448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415248, -0.120502, 0.901692,
		-0.886754, -0.274875, 0.371634,
		0.203070, -0.953899, -0.220997,
		33.263737, 43.900379, 28.635149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800186, 44.099308, 29.286583>,  <33.121590, 44.568111, 28.789846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800186, 44.099308, 29.286583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083260, 43.885494, 29.101780>,  <33.253105, 43.757206, 28.990898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083260, 43.885494, 29.101780>,  <32.800186, 44.099308, 29.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083260, 43.885494, 29.101780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390190, -0.249454, 0.886298,
		-0.589008, -0.807492, 0.032035,
		0.707688, -0.534536, -0.462006,
		33.295567, 43.725132, 28.963179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583511, 43.416275, 29.471180>,  <32.800186, 44.099308, 29.286583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583511, 43.416275, 29.471180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972641, 43.399212, 29.380140>,  <33.206120, 43.388973, 29.325516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972641, 43.399212, 29.380140>,  <32.583511, 43.416275, 29.471180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972641, 43.399212, 29.380140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191391, -0.405146, 0.893995,
		-0.130347, -0.913256, -0.385969,
		0.972820, -0.042659, -0.227599,
		33.264488, 43.386414, 29.311861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794235, 42.784695, 29.758802>,  <32.583511, 43.416275, 29.471180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794235, 42.784695, 29.758802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121044, 43.008369, 29.702539>,  <33.317131, 43.142574, 29.668781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121044, 43.008369, 29.702539>,  <32.794235, 42.784695, 29.758802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121044, 43.008369, 29.702539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381834, -0.341912, 0.858661,
		0.432058, -0.755254, -0.492866,
		0.817024, 0.559185, -0.140656,
		33.366150, 43.176125, 29.660343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381489, 42.390728, 29.775305>,  <32.794235, 42.784695, 29.758802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381489, 42.390728, 29.775305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534996, 42.754112, 29.841537>,  <33.627102, 42.972145, 29.881277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534996, 42.754112, 29.841537>,  <33.381489, 42.390728, 29.775305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534996, 42.754112, 29.841537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334593, -0.303926, 0.892007,
		0.860680, -0.286920, -0.420602,
		0.383766, 0.908463, 0.165582,
		33.650127, 43.026649, 29.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980633, 42.259838, 30.050144>,  <33.381489, 42.390728, 29.775305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980633, 42.259838, 30.050144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928555, 42.645664, 30.141933>,  <33.897308, 42.877159, 30.197006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928555, 42.645664, 30.141933>,  <33.980633, 42.259838, 30.050144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928555, 42.645664, 30.141933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455059, -0.147494, 0.878161,
		0.880892, 0.218754, -0.419733,
		-0.130193, 0.964568, 0.229473,
		33.889496, 42.935036, 30.210775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588333, 42.454762, 30.194397>,  <33.980633, 42.259838, 30.050144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588333, 42.454762, 30.194397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355976, 42.711357, 30.394817>,  <34.216560, 42.865314, 30.515070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355976, 42.711357, 30.394817>,  <34.588333, 42.454762, 30.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355976, 42.711357, 30.394817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485860, -0.220618, 0.845735,
		0.653072, 0.734723, -0.183519,
		-0.580894, 0.641490, 0.501052,
		34.181709, 42.903805, 30.545134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061245, 42.907017, 30.528727>,  <34.588333, 42.454762, 30.194397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061245, 42.907017, 30.528727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728424, 42.923306, 30.750008>,  <34.528732, 42.933079, 30.882776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728424, 42.923306, 30.750008>,  <35.061245, 42.907017, 30.528727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728424, 42.923306, 30.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525942, -0.259036, 0.810114,
		0.176288, 0.965009, 0.194115,
		-0.832050, 0.040720, 0.553204,
		34.478809, 42.935520, 30.915968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295250, 43.075672, 31.177534>,  <35.061245, 42.907017, 30.528727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295250, 43.075672, 31.177534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923523, 42.964981, 31.275349>,  <34.700489, 42.898567, 31.334038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923523, 42.964981, 31.275349>,  <35.295250, 43.075672, 31.177534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923523, 42.964981, 31.275349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318134, -0.263663, 0.910644,
		-0.187523, 0.924070, 0.333061,
		-0.929315, -0.276725, 0.244536,
		34.644730, 42.881962, 31.348709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161911, 43.407047, 31.847734>,  <35.295250, 43.075672, 31.177534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161911, 43.407047, 31.847734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905003, 43.103561, 31.804213>,  <34.750858, 42.921471, 31.778099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905003, 43.103561, 31.804213>,  <35.161911, 43.407047, 31.847734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905003, 43.103561, 31.804213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244288, -0.337179, 0.909194,
		-0.726504, 0.557373, 0.401906,
		-0.642274, -0.758714, -0.108802,
		34.712322, 42.875946, 31.771572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618004, 43.394314, 32.496857>,  <35.161911, 43.407047, 31.847734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618004, 43.394314, 32.496857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598385, 43.013386, 32.376408>,  <34.586613, 42.784828, 32.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598385, 43.013386, 32.376408>,  <34.618004, 43.394314, 32.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598385, 43.013386, 32.376408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092317, -0.304520, 0.948022,
		-0.994521, 0.018697, 0.102851,
		-0.049046, -0.952322, -0.301126,
		34.583672, 42.727688, 32.286072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316689, 43.129093, 33.033573>,  <34.618004, 43.394314, 32.496857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316689, 43.129093, 33.033573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492344, 42.829342, 32.835346>,  <34.597736, 42.649490, 32.716412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492344, 42.829342, 32.835346>,  <34.316689, 43.129093, 33.033573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492344, 42.829342, 32.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226837, -0.441245, 0.868244,
		-0.869314, -0.493689, -0.023779,
		0.439134, -0.749382, -0.495568,
		34.624084, 42.604527, 32.686676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165470, 42.604931, 33.406269>,  <34.316689, 43.129093, 33.033573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165470, 42.604931, 33.406269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477081, 42.475620, 33.191383>,  <34.664047, 42.398033, 33.062450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477081, 42.475620, 33.191383>,  <34.165470, 42.604931, 33.406269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477081, 42.475620, 33.191383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435843, -0.336732, 0.834657,
		-0.450727, -0.884365, -0.121424,
		0.779029, -0.323281, -0.537218,
		34.710789, 42.378635, 33.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322956, 41.863094, 33.578037>,  <34.165470, 42.604931, 33.406269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322956, 41.863094, 33.578037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661865, 42.010242, 33.424782>,  <34.865211, 42.098530, 33.332829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661865, 42.010242, 33.424782>,  <34.322956, 41.863094, 33.578037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661865, 42.010242, 33.424782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521371, -0.438197, 0.732227,
		0.101474, -0.820155, -0.563070,
		0.847275, 0.367870, -0.383140,
		34.916046, 42.120602, 33.309841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868019, 41.322430, 33.743191>,  <34.322956, 41.863094, 33.578037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868019, 41.322430, 33.743191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111641, 41.613716, 33.617496>,  <35.257816, 41.788490, 33.542080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111641, 41.613716, 33.617496>,  <34.868019, 41.322430, 33.743191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111641, 41.613716, 33.617496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623639, -0.194922, 0.757021,
		0.490024, -0.657042, -0.572864,
		0.609058, 0.728218, -0.314240,
		35.294357, 41.832180, 33.523224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567162, 41.114044, 33.468559>,  <34.868019, 41.322430, 33.743191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567162, 41.114044, 33.468559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598011, 41.479839, 33.627438>,  <35.616520, 41.699318, 33.722767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598011, 41.479839, 33.627438>,  <35.567162, 41.114044, 33.468559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598011, 41.479839, 33.627438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644623, -0.349651, 0.679856,
		0.760601, 0.203613, -0.616465,
		0.077120, 0.914487, 0.397198,
		35.621147, 41.754185, 33.746597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264496, 41.166794, 33.609547>,  <35.567162, 41.114044, 33.468559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264496, 41.166794, 33.609547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142860, 41.487118, 33.815941>,  <36.069878, 41.679310, 33.939777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142860, 41.487118, 33.815941>,  <36.264496, 41.166794, 33.609547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142860, 41.487118, 33.815941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661963, -0.211883, 0.718965,
		0.685079, 0.560193, -0.465672,
		-0.304091, 0.800806, 0.515983,
		36.051632, 41.727360, 33.970737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774033, 41.591476, 33.749126>,  <36.264496, 41.166794, 33.609547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774033, 41.591476, 33.749126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524574, 41.661888, 34.053780>,  <36.374901, 41.704136, 34.236572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524574, 41.661888, 34.053780>,  <36.774033, 41.591476, 33.749126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524574, 41.661888, 34.053780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753446, -0.124269, 0.645660,
		0.208305, 0.976509, -0.055132,
		-0.623642, 0.176033, 0.761632,
		36.337482, 41.714699, 34.282269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092255, 42.126461, 34.334133>,  <36.774033, 41.591476, 33.749126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092255, 42.126461, 34.334133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810390, 41.948086, 34.554893>,  <36.641270, 41.841061, 34.687347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810390, 41.948086, 34.554893>,  <37.092255, 42.126461, 34.334133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810390, 41.948086, 34.554893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592209, 0.058789, 0.803637,
		-0.390815, 0.893133, 0.222659,
		-0.704665, -0.445934, 0.551897,
		36.598991, 41.814304, 34.720463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116131, 42.464874, 34.988926>,  <37.092255, 42.126461, 34.334133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116131, 42.464874, 34.988926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926739, 42.118465, 35.053207>,  <36.813103, 41.910622, 35.091778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926739, 42.118465, 35.053207>,  <37.116131, 42.464874, 34.988926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926739, 42.118465, 35.053207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471892, -0.095347, 0.876486,
		-0.743733, 0.490831, 0.453813,
		-0.473476, -0.866022, 0.160706,
		36.784695, 41.858658, 35.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844826, 42.589550, 35.635479>,  <37.116131, 42.464874, 34.988926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844826, 42.589550, 35.635479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878941, 42.194134, 35.585651>,  <36.899410, 41.956886, 35.555756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878941, 42.194134, 35.585651>,  <36.844826, 42.589550, 35.635479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878941, 42.194134, 35.585651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456944, -0.072294, 0.886553,
		-0.885397, -0.132531, 0.445541,
		0.085286, -0.988539, -0.124568,
		36.904526, 41.897572, 35.548283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667618, 42.465458, 36.327740>,  <36.844826, 42.589550, 35.635479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667618, 42.465458, 36.327740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804913, 42.124832, 36.169231>,  <36.887291, 41.920456, 36.074127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804913, 42.124832, 36.169231>,  <36.667618, 42.465458, 36.327740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804913, 42.124832, 36.169231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375083, -0.262523, 0.889041,
		-0.861103, -0.453788, 0.229297,
		0.343241, -0.851562, -0.396268,
		36.907887, 41.869362, 36.050350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480911, 41.881229, 36.873810>,  <36.667618, 42.465458, 36.327740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480911, 41.881229, 36.873810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782795, 41.761486, 36.640297>,  <36.963924, 41.689640, 36.500187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782795, 41.761486, 36.640297>,  <36.480911, 41.881229, 36.873810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782795, 41.761486, 36.640297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523236, -0.262161, 0.810861,
		-0.395782, -0.917419, -0.041221,
		0.754706, -0.299356, -0.583785,
		37.009209, 41.671680, 36.465160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737263, 41.055515, 36.976006>,  <36.480911, 41.881229, 36.873810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737263, 41.055515, 36.976006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053993, 41.243237, 36.819668>,  <37.244030, 41.355869, 36.725864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053993, 41.243237, 36.819668>,  <36.737263, 41.055515, 36.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053993, 41.243237, 36.819668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595537, -0.451377, 0.664526,
		0.135447, -0.758953, -0.636903,
		0.791827, 0.469307, -0.390847,
		37.291542, 41.384029, 36.702415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204464, 40.500050, 36.697384>,  <36.737263, 41.055515, 36.976006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204464, 40.500050, 36.697384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419727, 40.820045, 36.803509>,  <37.548885, 41.012043, 36.867184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419727, 40.820045, 36.803509>,  <37.204464, 40.500050, 36.697384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419727, 40.820045, 36.803509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625015, -0.589976, 0.511159,
		0.565453, -0.109261, -0.817511,
		0.538162, 0.799993, 0.265314,
		37.581177, 41.060043, 36.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869331, 40.211552, 36.588257>,  <37.204464, 40.500050, 36.697384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869331, 40.211552, 36.588257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929123, 40.548630, 36.795147>,  <37.964996, 40.750877, 36.919281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929123, 40.548630, 36.795147>,  <37.869331, 40.211552, 36.588257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929123, 40.548630, 36.795147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861514, -0.367713, 0.350115,
		0.485231, 0.393264, -0.780957,
		0.149480, 0.842692, 0.517228,
		37.973969, 40.801437, 36.950314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630489, 40.403111, 36.524509>,  <37.869331, 40.211552, 36.588257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630489, 40.403111, 36.524509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494564, 40.617149, 36.833881>,  <38.413010, 40.745575, 37.019505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494564, 40.617149, 36.833881>,  <38.630489, 40.403111, 36.524509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494564, 40.617149, 36.833881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792471, -0.279954, 0.541864,
		0.506476, 0.797054, -0.328919,
		-0.339812, 0.535099, 0.773432,
		38.392620, 40.777679, 37.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292908, 40.826908, 36.908058>,  <38.630489, 40.403111, 36.524509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292908, 40.826908, 36.908058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992107, 40.787815, 37.168808>,  <38.811626, 40.764359, 37.325256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992107, 40.787815, 37.168808>,  <39.292908, 40.826908, 36.908058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992107, 40.787815, 37.168808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652148, -0.254193, 0.714205,
		0.095898, 0.962202, 0.254892,
		-0.752002, -0.097737, 0.651875,
		38.766506, 40.758495, 37.364372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545300, 41.153862, 37.501923>,  <39.292908, 40.826908, 36.908058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545300, 41.153862, 37.501923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261086, 40.931034, 37.673882>,  <39.090557, 40.797337, 37.777058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261086, 40.931034, 37.673882>,  <39.545300, 41.153862, 37.501923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261086, 40.931034, 37.673882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664768, -0.331108, 0.669665,
		-0.230705, 0.761605, 0.605585,
		-0.710534, -0.557069, 0.429902,
		39.047924, 40.763912, 37.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574146, 41.343723, 38.179634>,  <39.545300, 41.153862, 37.501923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574146, 41.343723, 38.179634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364841, 41.002953, 38.171524>,  <39.239258, 40.798489, 38.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364841, 41.002953, 38.171524>,  <39.574146, 41.343723, 38.179634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364841, 41.002953, 38.171524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617201, -0.395286, 0.680303,
		-0.587584, 0.343465, 0.732650,
		-0.523267, -0.851928, -0.020277,
		39.207863, 40.747375, 38.165440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319649, 41.264820, 38.794476>,  <39.574146, 41.343723, 38.179634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319649, 41.264820, 38.794476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356819, 40.907757, 38.618057>,  <39.379124, 40.693520, 38.512207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356819, 40.907757, 38.618057>,  <39.319649, 41.264820, 38.794476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356819, 40.907757, 38.618057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609914, -0.299090, 0.733860,
		-0.787000, -0.337197, 0.516652,
		0.092930, -0.892660, -0.441045,
		39.384697, 40.639957, 38.485744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262917, 40.646858, 39.248650>,  <39.319649, 41.264820, 38.794476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262917, 40.646858, 39.248650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496372, 40.512672, 38.952858>,  <39.636444, 40.432163, 38.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496372, 40.512672, 38.952858>,  <39.262917, 40.646858, 39.248650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496372, 40.512672, 38.952858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674234, -0.307307, 0.671544,
		-0.452525, -0.890521, 0.046825,
		0.583635, -0.335462, -0.739483,
		39.671463, 40.412033, 38.731014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514988, 40.024921, 39.555843>,  <39.262917, 40.646858, 39.248650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514988, 40.024921, 39.555843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757591, 40.108311, 39.248940>,  <39.903152, 40.158344, 39.064796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757591, 40.108311, 39.248940>,  <39.514988, 40.024921, 39.555843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757591, 40.108311, 39.248940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793839, -0.212632, 0.569743,
		-0.044370, -0.954635, -0.294455,
		0.606507, 0.208470, -0.767261,
		39.939545, 40.170853, 39.018761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032131, 39.444519, 39.608730>,  <39.514988, 40.024921, 39.555843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032131, 39.444519, 39.608730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185539, 39.739479, 39.386326>,  <40.277584, 39.916454, 39.252884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185539, 39.739479, 39.386326>,  <40.032131, 39.444519, 39.608730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185539, 39.739479, 39.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814941, 0.013023, 0.579398,
		0.434490, -0.675329, -0.595944,
		0.383524, 0.737401, -0.556011,
		40.300598, 39.960701, 39.219521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706448, 39.240234, 39.383732>,  <40.032131, 39.444519, 39.608730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706448, 39.240234, 39.383732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707523, 39.640228, 39.382198>,  <40.708168, 39.880226, 39.381279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707523, 39.640228, 39.382198>,  <40.706448, 39.240234, 39.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707523, 39.640228, 39.382198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863958, -0.000392, 0.503563,
		0.503556, -0.004666, -0.863950,
		0.002688, 0.999989, -0.003833,
		40.708328, 39.940224, 39.381050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375084, 39.251625, 39.358017>,  <40.706448, 39.240234, 39.383732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375084, 39.251625, 39.358017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220493, 39.597866, 39.485371>,  <41.127739, 39.805611, 39.561783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220493, 39.597866, 39.485371>,  <41.375084, 39.251625, 39.358017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220493, 39.597866, 39.485371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788063, 0.130587, 0.601584,
		0.479157, 0.483403, -0.732618,
		-0.386478, 0.865603, 0.318381,
		41.104549, 39.857548, 39.580883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924625, 39.642681, 39.487400>,  <41.375084, 39.251625, 39.358017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924625, 39.642681, 39.487400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639072, 39.836582, 39.689548>,  <41.467743, 39.952923, 39.810837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639072, 39.836582, 39.689548>,  <41.924625, 39.642681, 39.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639072, 39.836582, 39.689548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603736, 0.060405, 0.794893,
		0.354797, 0.872565, -0.335782,
		-0.713878, 0.484749, 0.505367,
		41.424908, 39.982006, 39.841160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235741, 40.336773, 39.560028>,  <41.924625, 39.642681, 39.487400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235741, 40.336773, 39.560028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979565, 40.362911, 39.866116>,  <41.825859, 40.378593, 40.049767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979565, 40.362911, 39.866116>,  <42.235741, 40.336773, 39.560028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979565, 40.362911, 39.866116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767449, 0.016565, 0.640896,
		0.029203, 0.997725, -0.060757,
		-0.640444, 0.065344, 0.765220,
		41.787430, 40.382515, 40.095680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577518, 40.736588, 40.033405>,  <42.235741, 40.336773, 39.560028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577518, 40.736588, 40.033405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297405, 40.569263, 40.264786>,  <42.129337, 40.468868, 40.403614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297405, 40.569263, 40.264786>,  <42.577518, 40.736588, 40.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297405, 40.569263, 40.264786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625632, 0.030586, 0.779518,
		-0.343776, 0.907787, 0.240292,
		-0.700287, -0.418315, 0.578456,
		42.087318, 40.443768, 40.438324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881512, 40.679165, 40.650925>,  <42.577518, 40.736588, 40.033405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881512, 40.679165, 40.650925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531555, 40.499676, 40.723824>,  <42.321579, 40.391983, 40.767563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531555, 40.499676, 40.723824>,  <42.881512, 40.679165, 40.650925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531555, 40.499676, 40.723824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294666, -0.194548, 0.935587,
		-0.384360, 0.872240, 0.302431,
		-0.874894, -0.448719, 0.182243,
		42.269089, 40.365059, 40.778496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584087, 41.032261, 41.286156>,  <42.881512, 40.679165, 40.650925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584087, 41.032261, 41.286156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452927, 40.655849, 41.252815>,  <42.374229, 40.430004, 41.232811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452927, 40.655849, 41.252815>,  <42.584087, 41.032261, 41.286156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452927, 40.655849, 41.252815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193312, -0.153201, 0.969103,
		-0.924721, 0.301660, 0.232147,
		-0.327904, -0.941027, -0.083354,
		42.354557, 40.373543, 41.227810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092602, 40.875786, 41.776962>,  <42.584087, 41.032261, 41.286156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092602, 40.875786, 41.776962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199055, 40.501198, 41.685566>,  <42.262924, 40.276447, 41.630730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199055, 40.501198, 41.685566>,  <42.092602, 40.875786, 41.776962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199055, 40.501198, 41.685566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408375, -0.105181, 0.906734,
		-0.873158, -0.334618, 0.354437,
		0.266129, -0.936466, -0.228489,
		42.278893, 40.220257, 41.617020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730385, 40.472950, 42.257885>,  <42.092602, 40.875786, 41.776962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730385, 40.472950, 42.257885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066422, 40.287258, 42.145645>,  <42.268044, 40.175842, 42.078300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066422, 40.287258, 42.145645>,  <41.730385, 40.472950, 42.257885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066422, 40.287258, 42.145645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379496, 0.133363, 0.915531,
		-0.387597, -0.875616, 0.288211,
		0.840090, -0.464232, -0.280602,
		42.318447, 40.147987, 42.061466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772778, 39.885193, 42.644787>,  <41.730385, 40.472950, 42.257885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772778, 39.885193, 42.644787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152264, 39.941944, 42.531784>,  <42.379955, 39.975994, 42.463982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152264, 39.941944, 42.531784>,  <41.772778, 39.885193, 42.644787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152264, 39.941944, 42.531784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306779, -0.197349, 0.931096,
		0.076354, -0.970012, -0.230754,
		0.948713, 0.141883, -0.282511,
		42.436878, 39.984509, 42.447029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261967, 39.256550, 42.833988>,  <41.772778, 39.885193, 42.644787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261967, 39.256550, 42.833988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512493, 39.566475, 42.799603>,  <42.662807, 39.752430, 42.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512493, 39.566475, 42.799603>,  <42.261967, 39.256550, 42.833988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512493, 39.566475, 42.799603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424431, -0.246413, 0.871285,
		0.653904, -0.582184, -0.483188,
		0.626313, 0.774817, -0.085967,
		42.700386, 39.798920, 42.773811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049839, 39.050156, 42.862282>,  <42.261967, 39.256550, 42.833988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049839, 39.050156, 42.862282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005302, 39.427681, 42.986744>,  <42.978580, 39.654198, 43.061420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005302, 39.427681, 42.986744>,  <43.049839, 39.050156, 42.862282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005302, 39.427681, 42.986744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383140, -0.248127, 0.889739,
		0.916955, 0.218279, -0.333987,
		-0.111341, 0.943815, 0.311153,
		42.971901, 39.710827, 43.080090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682186, 39.291454, 43.035770>,  <43.049839, 39.050156, 42.862282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682186, 39.291454, 43.035770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410782, 39.516338, 43.224892>,  <43.247940, 39.651268, 43.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410782, 39.516338, 43.224892>,  <43.682186, 39.291454, 43.035770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410782, 39.516338, 43.224892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582468, 0.019575, 0.812618,
		0.447608, 0.826762, -0.340752,
		-0.678512, 0.562211, 0.472800,
		43.207230, 39.685001, 43.366734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088703, 39.647636, 43.487869>,  <43.682186, 39.291454, 43.035770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088703, 39.647636, 43.487869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717789, 39.613918, 43.633766>,  <43.495239, 39.593689, 43.721306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717789, 39.613918, 43.633766>,  <44.088703, 39.647636, 43.487869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717789, 39.613918, 43.633766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371283, -0.331670, 0.867262,
		0.047872, 0.939622, 0.338848,
		-0.927285, -0.084291, 0.364744,
		43.439602, 39.588631, 43.743191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986515, 40.099079, 44.116673>,  <44.088703, 39.647636, 43.487869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986515, 40.099079, 44.116673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734665, 39.788960, 44.136623>,  <43.583557, 39.602886, 44.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734665, 39.788960, 44.136623>,  <43.986515, 40.099079, 44.116673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734665, 39.788960, 44.136623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377135, -0.248879, 0.892092,
		-0.679224, 0.580492, 0.449092,
		-0.629622, -0.775298, 0.049879,
		43.545776, 39.556370, 44.151588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878139, 40.102337, 44.805893>,  <43.986515, 40.099079, 44.116673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878139, 40.102337, 44.805893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746891, 39.741894, 44.692509>,  <43.668140, 39.525627, 44.624477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746891, 39.741894, 44.692509>,  <43.878139, 40.102337, 44.805893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746891, 39.741894, 44.692509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318543, -0.388042, 0.864843,
		-0.889306, 0.193483, 0.414366,
		-0.328124, -0.901103, -0.283456,
		43.648453, 39.471561, 44.607471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563698, 39.875893, 45.430420>,  <43.878139, 40.102337, 44.805893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563698, 39.875893, 45.430420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689007, 39.587540, 45.183136>,  <43.764194, 39.414528, 45.034763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689007, 39.587540, 45.183136>,  <43.563698, 39.875893, 45.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689007, 39.587540, 45.183136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501068, -0.427519, 0.752435,
		-0.806715, -0.545486, 0.227280,
		0.313276, -0.720883, -0.618212,
		43.782990, 39.371273, 44.997673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738262, 39.465179, 45.951908>,  <43.563698, 39.875893, 45.430420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738262, 39.465179, 45.951908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835194, 39.308613, 45.596813>,  <43.893353, 39.214672, 45.383759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835194, 39.308613, 45.596813>,  <43.738262, 39.465179, 45.951908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835194, 39.308613, 45.596813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565158, -0.686783, 0.457084,
		-0.788589, -0.612476, 0.054782,
		0.242330, -0.391412, -0.887735,
		43.907894, 39.191189, 45.330494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975281, 39.362400, 46.600548>,  <43.738262, 39.465179, 45.951908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975281, 39.362400, 46.600548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964046, 38.962971, 46.582375>,  <43.957306, 38.723312, 46.571468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964046, 38.962971, 46.582375>,  <43.975281, 39.362400, 46.600548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964046, 38.962971, 46.582375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312780, 0.034392, -0.949202,
		0.949410, -0.040874, 0.311368,
		-0.028089, -0.998572, -0.045437,
		43.955620, 38.663399, 46.568745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507183, 39.150612, 46.141293>,  <43.975281, 39.362400, 46.600548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507183, 39.150612, 46.141293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198780, 38.898354, 46.105904>,  <44.013737, 38.746998, 46.084671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198780, 38.898354, 46.105904>,  <44.507183, 39.150612, 46.141293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198780, 38.898354, 46.105904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073994, 0.226706, -0.971149,
		0.632511, -0.742218, -0.221456,
		-0.771009, -0.630649, -0.088474,
		43.967476, 38.709160, 46.079361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476231, 38.996910, 45.419964>,  <44.507183, 39.150612, 46.141293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476231, 38.996910, 45.419964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118469, 38.841133, 45.507938>,  <43.903812, 38.747665, 45.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118469, 38.841133, 45.507938>,  <44.476231, 38.996910, 45.419964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118469, 38.841133, 45.507938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307312, 0.177833, -0.934845,
		0.324959, -0.903719, -0.278736,
		-0.894405, -0.389445, 0.219935,
		43.850147, 38.724300, 45.573917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320938, 38.703804, 44.754704>,  <44.476231, 38.996910, 45.419964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320938, 38.703804, 44.754704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999451, 38.754631, 44.987221>,  <43.806561, 38.785126, 45.126732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999451, 38.754631, 44.987221>,  <44.320938, 38.703804, 44.754704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999451, 38.754631, 44.987221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550775, 0.210778, -0.807601,
		-0.225142, -0.969240, -0.099420,
		-0.803715, 0.127067, 0.581289,
		43.758335, 38.792751, 45.161606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765816, 38.308670, 44.413551>,  <44.320938, 38.703804, 44.754704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765816, 38.308670, 44.413551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678501, 38.626171, 44.640640>,  <43.626110, 38.816669, 44.776894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678501, 38.626171, 44.640640>,  <43.765816, 38.308670, 44.413551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678501, 38.626171, 44.640640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487459, 0.415292, -0.768060,
		-0.845419, -0.444403, 0.296266,
		-0.218291, 0.793750, 0.567724,
		43.613014, 38.864296, 44.810959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097878, 38.416012, 44.285706>,  <43.765816, 38.308670, 44.413551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097878, 38.416012, 44.285706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227791, 38.770741, 44.417198>,  <43.305740, 38.983578, 44.496094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227791, 38.770741, 44.417198>,  <43.097878, 38.416012, 44.285706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227791, 38.770741, 44.417198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442681, 0.449693, -0.775764,
		-0.835792, 0.106432, 0.538631,
		0.324785, 0.886819, 0.328734,
		43.325226, 39.036785, 44.515820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531029, 38.842030, 44.252449>,  <43.097878, 38.416012, 44.285706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531029, 38.842030, 44.252449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838596, 39.097767, 44.252636>,  <43.023136, 39.251209, 44.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838596, 39.097767, 44.252636>,  <42.531029, 38.842030, 44.252449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838596, 39.097767, 44.252636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456666, 0.549724, -0.699471,
		-0.447459, 0.537625, 0.714661,
		0.768919, 0.639346, 0.000464,
		43.069271, 39.289570, 44.252773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210938, 39.503330, 44.188820>,  <42.531029, 38.842030, 44.252449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210938, 39.503330, 44.188820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588982, 39.539673, 44.063271>,  <42.815807, 39.561478, 43.987942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588982, 39.539673, 44.063271>,  <42.210938, 39.503330, 44.188820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588982, 39.539673, 44.063271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320554, 0.444072, -0.836687,
		0.063359, 0.891373, 0.448822,
		0.945109, 0.090860, -0.313869,
		42.872513, 39.566929, 43.969109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328640, 40.184414, 44.168018>,  <42.210938, 39.503330, 44.188820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328640, 40.184414, 44.168018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573490, 40.002586, 43.909199>,  <42.720402, 39.893490, 43.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573490, 40.002586, 43.909199>,  <42.328640, 40.184414, 44.168018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573490, 40.002586, 43.909199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291476, 0.630940, -0.718997,
		0.735078, 0.628718, 0.253722,
		0.612130, -0.454565, -0.647046,
		42.757130, 39.866219, 43.715084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953243, 40.635494, 43.805954>,  <42.328640, 40.184414, 44.168018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953243, 40.635494, 43.805954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814968, 40.332314, 43.584682>,  <42.732002, 40.150406, 43.451920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814968, 40.332314, 43.584682>,  <42.953243, 40.635494, 43.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814968, 40.332314, 43.584682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243043, 0.641727, -0.727404,
		0.906329, -0.117006, -0.406051,
		-0.345684, -0.757955, -0.553179,
		42.711262, 40.104927, 43.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144592, 40.826645, 43.171795>,  <42.953243, 40.635494, 43.805954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144592, 40.826645, 43.171795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905811, 40.526264, 43.058857>,  <42.762543, 40.346035, 42.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905811, 40.526264, 43.058857>,  <43.144592, 40.826645, 43.171795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905811, 40.526264, 43.058857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183764, 0.470559, -0.863021,
		0.780950, -0.463294, -0.418898,
		-0.596949, -0.750954, -0.282346,
		42.726727, 40.300980, 42.974152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531033, 40.751453, 42.590054>,  <43.144592, 40.826645, 43.171795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531033, 40.751453, 42.590054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307568, 40.425705, 42.652908>,  <43.173489, 40.230255, 42.690620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307568, 40.425705, 42.652908>,  <43.531033, 40.751453, 42.590054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307568, 40.425705, 42.652908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119892, -0.108170, -0.986876,
		0.820684, -0.570170, -0.037207,
		-0.558663, -0.814374, 0.157132,
		43.139969, 40.181393, 42.700047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721607, 40.140858, 42.147564>,  <43.531033, 40.751453, 42.590054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721607, 40.140858, 42.147564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331631, 40.107670, 42.230122>,  <43.097645, 40.087757, 42.279655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331631, 40.107670, 42.230122>,  <43.721607, 40.140858, 42.147564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331631, 40.107670, 42.230122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193071, -0.145219, -0.970379,
		0.110481, -0.985915, 0.125563,
		-0.974945, -0.082966, 0.206396,
		43.039146, 40.082779, 42.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519478, 39.673340, 41.698467>,  <43.721607, 40.140858, 42.147564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519478, 39.673340, 41.698467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161053, 39.824352, 41.791885>,  <42.945999, 39.914959, 41.847939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161053, 39.824352, 41.791885>,  <43.519478, 39.673340, 41.698467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161053, 39.824352, 41.791885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361299, -0.314499, -0.877812,
		-0.257949, -0.870954, 0.418211,
		-0.896061, 0.377530, 0.233551,
		42.892235, 39.937611, 41.861950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932182, 39.206730, 41.404350>,  <43.519478, 39.673340, 41.698467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932182, 39.206730, 41.404350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736008, 39.544968, 41.488674>,  <42.618301, 39.747910, 41.539268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736008, 39.544968, 41.488674>,  <42.932182, 39.206730, 41.404350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736008, 39.544968, 41.488674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628881, -0.175944, -0.757332,
		-0.603307, -0.503995, 0.618069,
		-0.490437, 0.845596, 0.210805,
		42.588875, 39.798645, 41.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379196, 39.239223, 40.936855>,  <42.932182, 39.206730, 41.404350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379196, 39.239223, 40.936855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302952, 39.574150, 41.141819>,  <42.257206, 39.775108, 41.264797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302952, 39.574150, 41.141819>,  <42.379196, 39.239223, 40.936855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302952, 39.574150, 41.141819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676925, 0.265920, -0.686337,
		-0.710943, -0.477686, 0.516115,
		-0.190609, 0.837318, 0.512412,
		42.245770, 39.825344, 41.295544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635693, 39.411659, 41.108635>,  <42.379196, 39.239223, 40.936855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635693, 39.411659, 41.108635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799458, 39.771767, 41.049435>,  <41.897717, 39.987831, 41.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799458, 39.771767, 41.049435>,  <41.635693, 39.411659, 41.108635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799458, 39.771767, 41.049435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712751, 0.214340, -0.667866,
		-0.569536, 0.378916, 0.729418,
		0.409408, 0.900267, -0.147998,
		41.922279, 40.041847, 41.005035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083313, 39.884186, 41.128239>,  <41.635693, 39.411659, 41.108635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083313, 39.884186, 41.128239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381927, 40.062862, 40.931000>,  <41.561096, 40.170067, 40.812656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381927, 40.062862, 40.931000>,  <41.083313, 39.884186, 41.128239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381927, 40.062862, 40.931000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622815, 0.208456, -0.754087,
		-0.234055, 0.870065, 0.433827,
		0.746538, 0.446692, -0.493099,
		41.605888, 40.196869, 40.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799534, 40.577656, 41.007355>,  <41.083313, 39.884186, 41.128239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799534, 40.577656, 41.007355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080055, 40.461750, 40.746830>,  <41.248367, 40.392208, 40.590515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080055, 40.461750, 40.746830>,  <40.799534, 40.577656, 41.007355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080055, 40.461750, 40.746830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636933, 0.155604, -0.755052,
		0.320132, 0.944365, -0.075433,
		0.701307, -0.289762, -0.651311,
		41.290447, 40.374821, 40.551437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446564, 40.588615, 40.311207>,  <40.799534, 40.577656, 41.007355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446564, 40.588615, 40.311207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800213, 40.454285, 40.181252>,  <41.012402, 40.373684, 40.103279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800213, 40.454285, 40.181252>,  <40.446564, 40.588615, 40.311207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800213, 40.454285, 40.181252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373681, -0.090730, -0.923109,
		0.280531, 0.937543, -0.205709,
		0.884118, -0.335830, -0.324889,
		41.065449, 40.353535, 40.083786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751530, 41.093143, 39.927422>,  <40.446564, 40.588615, 40.311207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751530, 41.093143, 39.927422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859554, 40.726902, 39.808266>,  <40.924370, 40.507156, 39.736771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859554, 40.726902, 39.808266>,  <40.751530, 41.093143, 39.927422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859554, 40.726902, 39.808266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521966, 0.120758, -0.844375,
		0.809083, 0.383526, -0.445300,
		0.270066, -0.915601, -0.297891,
		40.940575, 40.452221, 39.718899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815273, 41.221886, 39.282459>,  <40.751530, 41.093143, 39.927422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815273, 41.221886, 39.282459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795696, 40.822857, 39.302246>,  <40.783951, 40.583439, 39.314117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795696, 40.822857, 39.302246>,  <40.815273, 41.221886, 39.282459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795696, 40.822857, 39.302246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530339, -0.016012, -0.847634,
		0.846371, -0.067724, -0.528270,
		-0.048947, -0.997576, 0.049469,
		40.781013, 40.523582, 39.317085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936348, 40.992176, 38.625134>,  <40.815273, 41.221886, 39.282459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936348, 40.992176, 38.625134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740440, 40.697681, 38.811928>,  <40.622894, 40.520985, 38.924004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740440, 40.697681, 38.811928>,  <40.936348, 40.992176, 38.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740440, 40.697681, 38.811928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586024, -0.118575, -0.801570,
		0.645521, -0.666251, -0.373380,
		-0.489774, -0.736240, 0.466982,
		40.593510, 40.476810, 38.952023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781609, 40.538754, 38.062279>,  <40.936348, 40.992176, 38.625134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781609, 40.538754, 38.062279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519085, 40.446663, 38.349682>,  <40.361572, 40.391407, 38.522125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519085, 40.446663, 38.349682>,  <40.781609, 40.538754, 38.062279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519085, 40.446663, 38.349682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691748, -0.196600, -0.694862,
		0.301235, -0.953071, -0.030229,
		-0.656310, -0.230227, 0.718508,
		40.322193, 40.377594, 38.565235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455742, 39.945374, 37.770298>,  <40.781609, 40.538754, 38.062279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455742, 39.945374, 37.770298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208897, 40.043171, 38.069469>,  <40.060791, 40.101849, 38.248974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208897, 40.043171, 38.069469>,  <40.455742, 39.945374, 37.770298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208897, 40.043171, 38.069469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780543, -0.310532, -0.542515,
		0.099615, -0.918583, 0.382469,
		-0.617114, 0.244491, 0.747927,
		40.023762, 40.116520, 38.293846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162792, 39.544144, 37.397560>,  <40.455742, 39.945374, 37.770298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162792, 39.544144, 37.397560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272804, 39.583908, 37.015045>,  <41.338810, 39.607765, 36.785538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272804, 39.583908, 37.015045>,  <41.162792, 39.544144, 37.397560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272804, 39.583908, 37.015045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690813, -0.712209, 0.124642,
		-0.668684, -0.694893, -0.264549,
		0.275027, 0.099408, -0.956284,
		41.355312, 39.613731, 36.728161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215458, 38.868610, 37.016285>,  <41.162792, 39.544144, 37.397560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215458, 38.868610, 37.016285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477264, 39.142242, 36.887505>,  <41.634350, 39.306419, 36.810238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477264, 39.142242, 36.887505>,  <41.215458, 38.868610, 37.016285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477264, 39.142242, 36.887505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698210, -0.710252, -0.089694,
		-0.290022, -0.166082, -0.942499,
		0.654515, 0.684076, -0.321948,
		41.673618, 39.347466, 36.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329788, 38.818943, 36.335224>,  <41.215458, 38.868610, 37.016285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329788, 38.818943, 36.335224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659122, 38.974018, 36.501026>,  <41.856724, 39.067062, 36.600506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659122, 38.974018, 36.501026>,  <41.329788, 38.818943, 36.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659122, 38.974018, 36.501026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545231, -0.743087, -0.388001,
		0.157588, 0.545456, -0.823191,
		0.823340, 0.387685, 0.414501,
		41.906124, 39.090324, 36.625378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900570, 39.016499, 35.757092>,  <41.329788, 38.818943, 36.335224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900570, 39.016499, 35.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037876, 38.903133, 36.115276>,  <42.120258, 38.835114, 36.330185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037876, 38.903133, 36.115276>,  <41.900570, 39.016499, 35.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037876, 38.903133, 36.115276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507137, -0.746541, -0.430683,
		0.790558, 0.601959, -0.112533,
		0.343264, -0.283410, 0.895460,
		42.140854, 38.818111, 36.383915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415901, 38.500168, 35.658707>,  <41.900570, 39.016499, 35.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415901, 38.500168, 35.658707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377308, 38.463520, 36.055149>,  <42.354153, 38.441532, 36.293015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377308, 38.463520, 36.055149>,  <42.415901, 38.500168, 35.658707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377308, 38.463520, 36.055149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729603, -0.683827, 0.007811,
		0.677031, 0.723869, 0.132825,
		-0.096483, -0.091621, 0.991109,
		42.348362, 38.436035, 36.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046730, 38.617073, 36.154232>,  <42.415901, 38.500168, 35.658707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046730, 38.617073, 36.154232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814709, 38.325085, 36.298828>,  <42.675495, 38.149891, 36.385586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814709, 38.325085, 36.298828>,  <43.046730, 38.617073, 36.154232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814709, 38.325085, 36.298828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700331, -0.673548, -0.236366,
		0.416023, 0.116059, 0.901917,
		-0.580053, -0.729974, 0.361492,
		42.640694, 38.106091, 36.407276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330109, 38.007290, 36.370285>,  <43.046730, 38.617073, 36.154232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330109, 38.007290, 36.370285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393631, 37.998516, 35.975460>,  <43.431744, 37.993252, 35.738564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393631, 37.998516, 35.975460>,  <43.330109, 38.007290, 36.370285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393631, 37.998516, 35.975460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987298, 0.008499, 0.158652,
		0.004910, -0.999724, 0.023004,
		0.158803, -0.021932, -0.987067,
		43.441273, 37.991936, 35.679340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937366, 37.457798, 36.167637>,  <43.330109, 38.007290, 36.370285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937366, 37.457798, 36.167637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900906, 37.755459, 35.902931>,  <43.879028, 37.934055, 35.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900906, 37.755459, 35.902931>,  <43.937366, 37.457798, 36.167637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900906, 37.755459, 35.902931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993036, 0.018123, -0.116407,
		-0.074631, -0.667763, -0.740623,
		-0.091155, 0.744153, -0.661761,
		43.873558, 37.978706, 35.704403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251965, 37.328403, 35.614227>,  <43.937366, 37.457798, 36.167637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251965, 37.328403, 35.614227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243423, 37.728268, 35.620163>,  <44.238297, 37.968185, 35.623726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243423, 37.728268, 35.620163>,  <44.251965, 37.328403, 35.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243423, 37.728268, 35.620163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999551, 0.021037, 0.021357,
		0.021037, 0.015292, -0.999662,
		-0.021357, 0.999662, 0.014842,
		44.237015, 38.028168, 35.624615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647385, 37.591248, 35.092785>,  <44.251965, 37.328403, 35.614227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647385, 37.591248, 35.092785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657639, 37.812157, 35.426090>,  <44.663792, 37.944702, 35.626076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657639, 37.812157, 35.426090>,  <44.647385, 37.591248, 35.092785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657639, 37.812157, 35.426090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995800, 0.059178, -0.069862,
		-0.087894, 0.831558, -0.548440,
		0.025639, 0.552276, 0.833267,
		44.665329, 37.977840, 35.676071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997952, 38.255764, 34.884617>,  <44.647385, 37.591248, 35.092785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997952, 38.255764, 34.884617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037273, 38.112000, 35.255810>,  <45.060867, 38.025742, 35.478527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037273, 38.112000, 35.255810>,  <44.997952, 38.255764, 34.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037273, 38.112000, 35.255810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989694, -0.062259, -0.128958,
		0.104125, 0.931099, 0.349590,
		0.098308, -0.359415, 0.927985,
		45.066765, 38.004173, 35.534206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454937, 38.691311, 35.349857>,  <44.997952, 38.255764, 34.884617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454937, 38.691311, 35.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458469, 38.297825, 35.421673>,  <45.460590, 38.061733, 35.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458469, 38.297825, 35.421673>,  <45.454937, 38.691311, 35.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458469, 38.297825, 35.421673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925758, -0.059828, -0.373352,
		0.378012, 0.169508, 0.910150,
		0.008834, -0.983711, 0.179539,
		45.461121, 38.002712, 35.475536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974438, 38.501869, 35.864487>,  <45.454937, 38.691311, 35.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974438, 38.501869, 35.864487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919472, 38.229507, 35.576740>,  <45.886490, 38.066090, 35.404095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919472, 38.229507, 35.576740>,  <45.974438, 38.501869, 35.864487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919472, 38.229507, 35.576740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949136, 0.117198, -0.292243,
		0.283298, -0.722933, 0.630167,
		-0.137418, -0.680906, -0.719363,
		45.878246, 38.025234, 35.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513699, 38.071327, 35.939457>,  <45.974438, 38.501869, 35.864487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513699, 38.071327, 35.939457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397022, 38.022079, 35.560036>,  <46.327015, 37.992531, 35.332382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397022, 38.022079, 35.560036>,  <46.513699, 38.071327, 35.939457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397022, 38.022079, 35.560036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934505, 0.174820, -0.310063,
		0.204002, -0.976872, 0.064066,
		-0.291692, -0.123123, -0.948555,
		46.309513, 37.985142, 35.275471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655880, 37.497673, 35.517319>,  <46.513699, 38.071327, 35.939457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655880, 37.497673, 35.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673012, 37.814835, 35.274181>,  <46.683292, 38.005131, 35.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673012, 37.814835, 35.274181>,  <46.655880, 37.497673, 35.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673012, 37.814835, 35.274181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935791, -0.244940, -0.253573,
		-0.349943, -0.557956, -0.752480,
		0.042830, 0.792900, -0.607845,
		46.685860, 38.052704, 35.091827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.282688, 37.256145, 35.792923>,  <46.655880, 37.497673, 35.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.282688, 37.256145, 35.792923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579506, 37.292900, 36.058533>,  <47.757599, 37.314953, 36.217899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579506, 37.292900, 36.058533>,  <47.282688, 37.256145, 35.792923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579506, 37.292900, 36.058533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389310, -0.747320, 0.538470,
		0.545713, -0.658080, -0.518775,
		0.742047, 0.091886, 0.664020,
		47.802120, 37.320465, 36.257740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505932, 36.554005, 35.961170>,  <47.282688, 37.256145, 35.792923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505932, 36.554005, 35.961170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574921, 36.796749, 36.271519>,  <47.616314, 36.942394, 36.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574921, 36.796749, 36.271519>,  <47.505932, 36.554005, 35.961170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.574921, 36.796749, 36.271519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473047, -0.639867, 0.605637,
		0.863991, -0.471477, 0.176716,
		0.172470, 0.606860, 0.775870,
		47.626663, 36.978806, 36.504280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764729, 36.078110, 36.527321>,  <47.505932, 36.554005, 35.961170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764729, 36.078110, 36.527321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626530, 36.432484, 36.651093>,  <47.543610, 36.645107, 36.725357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626530, 36.432484, 36.651093>,  <47.764729, 36.078110, 36.527321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626530, 36.432484, 36.651093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326383, -0.422591, 0.845513,
		0.879834, 0.191129, 0.435158,
		-0.345496, 0.885939, 0.309429,
		47.522881, 36.698265, 36.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670559, 35.403458, 36.230862>,  <47.764729, 36.078110, 36.527321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670559, 35.403458, 36.230862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813828, 35.089855, 36.028061>,  <47.899788, 34.901695, 35.906380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813828, 35.089855, 36.028061>,  <47.670559, 35.403458, 36.230862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813828, 35.089855, 36.028061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908019, -0.166123, -0.384583,
		0.217290, 0.598115, -0.771391,
		0.358171, -0.784004, -0.507003,
		47.921280, 34.854652, 35.875961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845367, 35.410671, 35.474140>,  <47.670559, 35.403458, 36.230862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845367, 35.410671, 35.474140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708126, 35.052925, 35.588959>,  <47.625782, 34.838280, 35.657852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708126, 35.052925, 35.588959>,  <47.845367, 35.410671, 35.474140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708126, 35.052925, 35.588959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748836, 0.075961, -0.658388,
		0.567033, -0.440848, -0.695793,
		-0.343102, -0.894362, 0.287050,
		47.605194, 34.784618, 35.675076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710239, 35.064945, 34.807423>,  <47.845367, 35.410671, 35.474140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710239, 35.064945, 34.807423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514904, 34.885925, 35.107082>,  <47.397701, 34.778511, 35.286877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514904, 34.885925, 35.107082>,  <47.710239, 35.064945, 34.807423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514904, 34.885925, 35.107082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829766, -0.027676, -0.557425,
		0.270212, -0.893828, -0.357850,
		-0.488338, -0.447554, 0.749147,
		47.368404, 34.751659, 35.331825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.289425, 38.909309, 30.812153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959389, 38.683495, 30.821373>,  <32.761368, 38.548008, 30.826904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959389, 38.683495, 30.821373>,  <33.289425, 38.909309, 30.812153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959389, 38.683495, 30.821373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308794, -0.416401, 0.855135,
		-0.473155, 0.712679, 0.517892,
		-0.825088, -0.564534, 0.023049,
		32.711861, 38.514133, 30.828287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997692, 38.980461, 31.496855>,  <33.289425, 38.909309, 30.812153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997692, 38.980461, 31.496855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886707, 38.631634, 31.335598>,  <32.820118, 38.422337, 31.238844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886707, 38.631634, 31.335598>,  <32.997692, 38.980461, 31.496855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886707, 38.631634, 31.335598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140762, -0.451986, 0.880849,
		-0.950370, 0.187652, 0.248161,
		-0.277458, -0.872064, -0.403140,
		32.803471, 38.370014, 31.214657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675938, 38.622532, 32.071373>,  <32.997692, 38.980461, 31.496855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675938, 38.622532, 32.071373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748707, 38.322094, 31.817522>,  <32.792366, 38.141830, 31.665211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748707, 38.322094, 31.817522>,  <32.675938, 38.622532, 32.071373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748707, 38.322094, 31.817522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288901, -0.576090, 0.764629,
		-0.939916, -0.322446, 0.112191,
		0.181919, -0.751099, -0.634631,
		32.803284, 38.096764, 31.627132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377831, 38.104355, 32.381950>,  <32.675938, 38.622532, 32.071373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377831, 38.104355, 32.381950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633633, 37.900322, 32.151871>,  <32.787113, 37.777905, 32.013824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633633, 37.900322, 32.151871>,  <32.377831, 38.104355, 32.381950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633633, 37.900322, 32.151871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224893, -0.591336, 0.774432,
		-0.735158, -0.624611, -0.263449,
		0.639505, -0.510081, -0.575196,
		32.825485, 37.747299, 31.979313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226528, 37.447193, 32.448093>,  <32.377831, 38.104355, 32.381950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226528, 37.447193, 32.448093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.610229, 37.460602, 32.335876>,  <32.840450, 37.468647, 32.268547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.610229, 37.460602, 32.335876>,  <32.226528, 37.447193, 32.448093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610229, 37.460602, 32.335876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271211, -0.387561, 0.881046,
		-0.079192, -0.921235, -0.380862,
		0.959257, 0.033522, -0.280541,
		32.898006, 37.470657, 32.251713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561394, 36.881088, 32.697014>,  <32.226528, 37.447193, 32.448093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561394, 36.881088, 32.697014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882313, 37.105850, 32.616428>,  <33.074863, 37.240707, 32.568077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882313, 37.105850, 32.616428>,  <32.561394, 36.881088, 32.697014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882313, 37.105850, 32.616428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468166, -0.382932, 0.796356,
		0.370330, -0.733230, -0.570289,
		0.802294, 0.561905, -0.201462,
		33.123001, 37.274422, 32.555988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037041, 36.459877, 32.907955>,  <32.561394, 36.881088, 32.697014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037041, 36.459877, 32.907955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218224, 36.814671, 32.871967>,  <33.326935, 37.027546, 32.850372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218224, 36.814671, 32.871967>,  <33.037041, 36.459877, 32.907955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218224, 36.814671, 32.871967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650995, -0.260111, 0.713125,
		0.609125, -0.381587, -0.695240,
		0.452959, 0.886980, -0.089971,
		33.354111, 37.080765, 32.844975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759060, 36.382721, 32.826584>,  <33.037041, 36.459877, 32.907955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759060, 36.382721, 32.826584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717941, 36.753635, 32.970570>,  <33.693268, 36.976185, 33.056961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717941, 36.753635, 32.970570>,  <33.759060, 36.382721, 32.826584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717941, 36.753635, 32.970570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662884, -0.205949, 0.719840,
		0.741631, 0.312615, -0.593511,
		-0.102800, 0.927285, 0.359965,
		33.687099, 37.031822, 33.078560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402088, 36.535652, 32.987080>,  <33.759060, 36.382721, 32.826584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402088, 36.535652, 32.987080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.199005, 36.808010, 33.198219>,  <34.077156, 36.971424, 33.324902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.199005, 36.808010, 33.198219>,  <34.402088, 36.535652, 32.987080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199005, 36.808010, 33.198219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668081, -0.075691, 0.740228,
		0.543967, 0.728464, -0.416461,
		-0.507707, 0.680890, 0.527846,
		34.046692, 37.012276, 33.356575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951370, 36.773487, 33.377888>,  <34.402088, 36.535652, 32.987080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951370, 36.773487, 33.377888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624722, 36.913383, 33.561543>,  <34.428734, 36.997322, 33.671738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624722, 36.913383, 33.561543>,  <34.951370, 36.773487, 33.377888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624722, 36.913383, 33.561543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498235, 0.025589, 0.866664,
		0.291360, 0.936497, -0.195151,
		-0.816622, 0.349742, 0.459140,
		34.379734, 37.018307, 33.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087536, 37.502136, 33.446625>,  <34.951370, 36.773487, 33.377888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087536, 37.502136, 33.446625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826931, 37.346920, 33.707382>,  <34.670570, 37.253788, 33.863834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826931, 37.346920, 33.707382>,  <35.087536, 37.502136, 33.446625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826931, 37.346920, 33.707382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572500, 0.312334, 0.758084,
		-0.497776, 0.867105, 0.018667,
		-0.651508, -0.388043, 0.651890,
		34.631477, 37.230507, 33.902950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835190, 38.051491, 33.919945>,  <35.087536, 37.502136, 33.446625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835190, 38.051491, 33.919945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793251, 37.694176, 34.094780>,  <34.768085, 37.479786, 34.199680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793251, 37.694176, 34.094780>,  <34.835190, 38.051491, 33.919945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793251, 37.694176, 34.094780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633526, 0.278794, 0.721747,
		-0.766584, 0.352582, 0.536688,
		-0.104849, -0.893286, 0.437089,
		34.761795, 37.426189, 34.225906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011723, 38.296467, 34.530113>,  <34.835190, 38.051491, 33.919945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011723, 38.296467, 34.530113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019295, 37.896797, 34.515762>,  <35.023838, 37.656994, 34.507153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019295, 37.896797, 34.515762>,  <35.011723, 38.296467, 34.530113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019295, 37.896797, 34.515762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743094, -0.009944, 0.669113,
		-0.668919, -0.039330, 0.742294,
		0.018935, -0.999177, -0.035877,
		35.024975, 37.597046, 34.504997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973087, 38.067257, 35.253586>,  <35.011723, 38.296467, 34.530113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973087, 38.067257, 35.253586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107914, 37.753277, 35.045647>,  <35.188808, 37.564888, 34.920883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107914, 37.753277, 35.045647>,  <34.973087, 38.067257, 35.253586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107914, 37.753277, 35.045647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721872, -0.138990, 0.677925,
		-0.604390, -0.603770, 0.519783,
		0.337066, -0.784948, -0.519849,
		35.209034, 37.517792, 34.889690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946198, 37.493851, 35.763306>,  <34.973087, 38.067257, 35.253586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946198, 37.493851, 35.763306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217667, 37.414154, 35.480545>,  <35.380550, 37.366337, 35.310890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217667, 37.414154, 35.480545>,  <34.946198, 37.493851, 35.763306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217667, 37.414154, 35.480545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728230, 0.057674, 0.682902,
		-0.095292, -0.978252, 0.184235,
		0.678675, -0.199241, -0.706897,
		35.421268, 37.354382, 35.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292599, 36.909626, 36.108112>,  <34.946198, 37.493851, 35.763306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292599, 36.909626, 36.108112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520294, 37.077946, 35.825581>,  <35.656910, 37.178936, 35.656063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520294, 37.077946, 35.825581>,  <35.292599, 36.909626, 36.108112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520294, 37.077946, 35.825581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767234, 0.036893, 0.640305,
		0.295499, -0.906403, -0.301852,
		0.569238, 0.420801, -0.706325,
		35.691067, 37.204185, 35.613682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891773, 36.444527, 36.059025>,  <35.292599, 36.909626, 36.108112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891773, 36.444527, 36.059025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006851, 36.791348, 35.896320>,  <36.075897, 36.999439, 35.798698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006851, 36.791348, 35.896320>,  <35.891773, 36.444527, 36.059025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006851, 36.791348, 35.896320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755589, 0.055484, 0.652692,
		0.588486, -0.495120, -0.639172,
		0.287697, 0.867051, -0.406759,
		36.093159, 37.051464, 35.774292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562077, 36.409050, 36.209320>,  <35.891773, 36.444527, 36.059025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562077, 36.409050, 36.209320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508755, 36.790039, 36.099758>,  <36.476761, 37.018631, 36.034019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508755, 36.790039, 36.099758>,  <36.562077, 36.409050, 36.209320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508755, 36.790039, 36.099758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798572, 0.266906, 0.539485,
		0.586952, -0.146818, -0.796198,
		-0.133304, 0.952473, -0.273906,
		36.468765, 37.075783, 36.017586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209835, 36.667980, 36.031498>,  <36.562077, 36.409050, 36.209320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209835, 36.667980, 36.031498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974689, 36.974327, 36.135693>,  <36.833603, 37.158134, 36.198208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974689, 36.974327, 36.135693>,  <37.209835, 36.667980, 36.031498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974689, 36.974327, 36.135693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615666, 0.214698, 0.758195,
		0.524753, 0.606092, -0.597735,
		-0.587868, 0.765871, 0.260487,
		36.798328, 37.204090, 36.213840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669567, 37.190460, 36.136528>,  <37.209835, 36.667980, 36.031498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669567, 37.190460, 36.136528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347466, 37.314728, 36.338535>,  <37.154205, 37.389290, 36.459740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347466, 37.314728, 36.338535>,  <37.669567, 37.190460, 36.136528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347466, 37.314728, 36.338535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589695, 0.330837, 0.736755,
		0.061808, 0.891085, -0.449609,
		-0.805258, 0.310669, 0.505020,
		37.105888, 37.407928, 36.490040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651928, 37.874149, 36.245033>,  <37.669567, 37.190460, 36.136528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651928, 37.874149, 36.245033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426338, 37.748917, 36.550690>,  <37.290985, 37.673779, 36.734085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426338, 37.748917, 36.550690>,  <37.651928, 37.874149, 36.245033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426338, 37.748917, 36.550690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671631, 0.364478, 0.645033,
		-0.480457, 0.877005, 0.004714,
		-0.563979, -0.313077, 0.764140,
		37.257145, 37.654995, 36.779930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873619, 38.249962, 36.708252>,  <37.651928, 37.874149, 36.245033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873619, 38.249962, 36.708252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631817, 38.016483, 36.925091>,  <37.486736, 37.876396, 37.055195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631817, 38.016483, 36.925091>,  <37.873619, 38.249962, 36.708252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631817, 38.016483, 36.925091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513338, 0.234938, 0.825402,
		-0.609144, 0.777240, 0.157612,
		-0.604507, -0.583697, 0.542098,
		37.450466, 37.841373, 37.087719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041779, 38.916542, 36.927277>,  <37.873619, 38.249962, 36.708252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041779, 38.916542, 36.927277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424587, 38.969501, 36.824062>,  <38.654274, 39.001278, 36.762135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424587, 38.969501, 36.824062>,  <38.041779, 38.916542, 36.927277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424587, 38.969501, 36.824062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271626, 0.097395, -0.957462,
		-0.101631, 0.986400, 0.129171,
		0.957022, 0.132395, -0.258034,
		38.711693, 39.009220, 36.746651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024132, 39.449173, 36.475922>,  <38.041779, 38.916542, 36.927277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024132, 39.449173, 36.475922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364353, 39.254074, 36.397270>,  <38.568485, 39.137012, 36.350079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364353, 39.254074, 36.397270>,  <38.024132, 39.449173, 36.475922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364353, 39.254074, 36.397270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209082, 0.029445, -0.977455,
		0.482545, 0.872486, -0.076936,
		0.850550, -0.487751, -0.196629,
		38.619518, 39.107750, 36.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374508, 39.884457, 36.055489>,  <38.024132, 39.449173, 36.475922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374508, 39.884457, 36.055489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531868, 39.523331, 35.986012>,  <38.626282, 39.306656, 35.944324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531868, 39.523331, 35.986012>,  <38.374508, 39.884457, 36.055489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531868, 39.523331, 35.986012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114206, 0.139478, -0.983617,
		0.912248, 0.406788, -0.048236,
		0.393396, -0.902812, -0.173696,
		38.649887, 39.252487, 35.933903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771412, 40.004280, 35.476978>,  <38.374508, 39.884457, 36.055489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771412, 40.004280, 35.476978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701977, 39.610600, 35.490913>,  <38.660316, 39.374390, 35.499275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701977, 39.610600, 35.490913>,  <38.771412, 40.004280, 35.476978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701977, 39.610600, 35.490913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087757, -0.019775, -0.995946,
		0.980900, -0.175944, -0.082938,
		-0.173591, -0.984201, 0.034838,
		38.649899, 39.315338, 35.501366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168541, 39.636154, 35.032032>,  <38.771412, 40.004280, 35.476978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168541, 39.636154, 35.032032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877758, 39.363865, 35.068142>,  <38.703289, 39.200489, 35.089806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877758, 39.363865, 35.068142>,  <39.168541, 39.636154, 35.032032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877758, 39.363865, 35.068142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138026, 0.016074, -0.990298,
		0.672671, -0.732362, -0.105643,
		-0.726955, -0.680726, 0.090273,
		38.659672, 39.159649, 35.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188858, 39.455463, 34.465672>,  <39.168541, 39.636154, 35.032032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188858, 39.455463, 34.465672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853951, 39.278687, 34.594460>,  <38.653004, 39.172619, 34.671730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853951, 39.278687, 34.594460>,  <39.188858, 39.455463, 34.465672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853951, 39.278687, 34.594460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256085, -0.203318, -0.945030,
		0.483110, -0.873699, 0.057058,
		-0.837272, -0.441942, 0.321966,
		38.602768, 39.146103, 34.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043697, 38.866623, 34.057991>,  <39.188858, 39.455463, 34.465672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043697, 38.866623, 34.057991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674992, 38.945580, 34.191494>,  <38.453770, 38.992954, 34.271595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674992, 38.945580, 34.191494>,  <39.043697, 38.866623, 34.057991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674992, 38.945580, 34.191494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360542, -0.119516, -0.925055,
		-0.142705, -0.973013, 0.181331,
		-0.921762, 0.197388, 0.333756,
		38.398464, 39.004795, 34.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474998, 38.429291, 33.699162>,  <39.043697, 38.866623, 34.057991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474998, 38.429291, 33.699162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282871, 38.748627, 33.844460>,  <38.167595, 38.940228, 33.931637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282871, 38.748627, 33.844460>,  <38.474998, 38.429291, 33.699162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282871, 38.748627, 33.844460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646577, -0.042460, -0.761666,
		-0.592645, -0.600708, 0.536583,
		-0.480322, 0.798340, 0.363240,
		38.138775, 38.988129, 33.953430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794834, 38.212708, 33.708187>,  <38.474998, 38.429291, 33.699162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794834, 38.212708, 33.708187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 38.612625, 33.711334>,  <37.806824, 38.852577, 33.713223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 38.612625, 33.711334>,  <37.794834, 38.212708, 33.708187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802326, 38.612625, 33.711334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562537, 0.017042, -0.826596,
		-0.826560, 0.011062, 0.562740,
		0.018734, 0.999793, 0.007863,
		37.807945, 38.912563, 33.713692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144440, 38.407780, 33.492184>,  <37.794834, 38.212708, 33.708187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144440, 38.407780, 33.492184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338753, 38.756222, 33.463352>,  <37.455341, 38.965286, 33.446053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338753, 38.756222, 33.463352>,  <37.144440, 38.407780, 33.492184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338753, 38.756222, 33.463352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597408, 0.270693, -0.754871,
		-0.638061, 0.409760, 0.651902,
		0.485780, 0.871104, -0.072075,
		37.484486, 39.017551, 33.441730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618179, 38.984131, 33.545780>,  <37.144440, 38.407780, 33.492184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618179, 38.984131, 33.545780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943024, 39.135044, 33.367733>,  <37.137932, 39.225594, 33.260902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943024, 39.135044, 33.367733>,  <36.618179, 38.984131, 33.545780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943024, 39.135044, 33.367733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578224, 0.417968, -0.700686,
		-0.078310, 0.826415, 0.557590,
		0.812111, 0.377282, -0.445122,
		37.186657, 39.248230, 33.234196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410995, 39.589615, 33.334736>,  <36.618179, 38.984131, 33.545780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410995, 39.589615, 33.334736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736629, 39.532097, 33.109673>,  <36.932011, 39.497585, 32.974632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736629, 39.532097, 33.109673>,  <36.410995, 39.589615, 33.334736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736629, 39.532097, 33.109673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500172, 0.318731, -0.805133,
		0.295114, 0.936874, 0.187551,
		0.814086, -0.143798, -0.562660,
		36.980854, 39.488956, 32.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337616, 40.131149, 32.870388>,  <36.410995, 39.589615, 33.334736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337616, 40.131149, 32.870388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585091, 39.858192, 32.714661>,  <36.733578, 39.694420, 32.621223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585091, 39.858192, 32.714661>,  <36.337616, 40.131149, 32.870388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585091, 39.858192, 32.714661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340731, 0.213448, -0.915610,
		0.707902, 0.699131, -0.100453,
		0.618690, -0.682390, -0.389316,
		36.770699, 39.653477, 32.597866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814960, 40.461414, 32.430283>,  <36.337616, 40.131149, 32.870388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814960, 40.461414, 32.430283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791866, 40.085533, 32.295452>,  <36.778011, 39.860004, 32.214554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791866, 40.085533, 32.295452>,  <36.814960, 40.461414, 32.430283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791866, 40.085533, 32.295452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236533, 0.340900, -0.909857,
		0.969907, 0.027200, -0.241952,
		-0.057733, -0.939706, -0.337075,
		36.774548, 39.803619, 32.194328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935387, 40.459335, 31.648672>,  <36.814960, 40.461414, 32.430283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935387, 40.459335, 31.648672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774147, 40.094456, 31.678082>,  <36.677402, 39.875530, 31.695726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774147, 40.094456, 31.678082>,  <36.935387, 40.459335, 31.648672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774147, 40.094456, 31.678082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386172, 0.096713, -0.917343,
		0.829686, -0.398176, -0.391250,
		-0.403103, -0.912197, 0.073523,
		36.653217, 39.820797, 31.700138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050915, 40.118603, 31.047880>,  <36.935387, 40.459335, 31.648672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050915, 40.118603, 31.047880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723114, 39.947208, 31.200102>,  <36.526436, 39.844372, 31.291435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723114, 39.947208, 31.200102>,  <37.050915, 40.118603, 31.047880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723114, 39.947208, 31.200102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477048, 0.142085, -0.867316,
		0.317562, -0.892307, -0.320847,
		-0.819500, -0.428486, 0.380552,
		36.477264, 39.818665, 31.314268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809612, 39.782597, 30.467611>,  <37.050915, 40.118603, 31.047880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809612, 39.782597, 30.467611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509357, 39.777466, 30.731848>,  <36.329205, 39.774387, 30.890390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509357, 39.777466, 30.731848>,  <36.809612, 39.782597, 30.467611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509357, 39.777466, 30.731848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660606, -0.003659, -0.750724,
		0.012060, -0.999911, -0.005739,
		-0.750637, -0.012845, 0.660591,
		36.284168, 39.773621, 30.930025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376980, 39.194023, 30.326391>,  <36.809612, 39.782597, 30.467611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376980, 39.194023, 30.326391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138687, 39.457035, 30.510895>,  <35.995712, 39.614841, 30.621597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138687, 39.457035, 30.510895>,  <36.376980, 39.194023, 30.326391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138687, 39.457035, 30.510895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675577, -0.099618, -0.730529,
		-0.434394, -0.746815, 0.503557,
		-0.595733, 0.657528, 0.461257,
		35.959969, 39.654293, 30.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.700321, 38.893250, 30.218483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614574, 39.260941, 30.350588>,  <35.563126, 39.481556, 30.429850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614574, 39.260941, 30.350588>,  <35.700321, 38.893250, 30.218483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614574, 39.260941, 30.350588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773317, 0.046825, -0.632288,
		-0.596679, -0.390940, 0.700814,
		-0.214371, 0.919225, 0.330260,
		35.550262, 39.536709, 30.449665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034172, 38.949589, 30.589376>,  <35.700321, 38.893250, 30.218483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034172, 38.949589, 30.589376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107826, 39.321041, 30.460545>,  <35.152020, 39.543915, 30.383245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107826, 39.321041, 30.460545>,  <35.034172, 38.949589, 30.589376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107826, 39.321041, 30.460545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869709, 0.001266, -0.493564,
		-0.457932, 0.370996, 0.807874,
		0.184133, 0.928634, -0.322079,
		35.163067, 39.599632, 30.363920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477276, 39.366299, 30.614630>,  <35.034172, 38.949589, 30.589376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477276, 39.366299, 30.614630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699390, 39.556763, 30.341887>,  <34.832657, 39.671043, 30.178242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699390, 39.556763, 30.341887>,  <34.477276, 39.366299, 30.614630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699390, 39.556763, 30.341887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820555, 0.180135, -0.542440,
		-0.135464, 0.860709, 0.490744,
		0.555283, 0.476164, -0.681857,
		34.865974, 39.699612, 30.137329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026230, 39.895866, 30.422314>,  <34.477276, 39.366299, 30.614630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026230, 39.895866, 30.422314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291771, 39.872757, 30.124063>,  <34.451096, 39.858891, 29.945114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291771, 39.872757, 30.124063>,  <34.026230, 39.895866, 30.422314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291771, 39.872757, 30.124063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737054, 0.118340, -0.665393,
		0.126681, 0.991291, 0.035977,
		0.663855, -0.057776, -0.745626,
		34.490929, 39.855423, 29.900375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869244, 40.458599, 30.111181>,  <34.026230, 39.895866, 30.422314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869244, 40.458599, 30.111181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071350, 40.258755, 29.829729>,  <34.192616, 40.138847, 29.660858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071350, 40.258755, 29.829729>,  <33.869244, 40.458599, 30.111181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071350, 40.258755, 29.829729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730456, 0.186550, -0.656988,
		0.459498, 0.845926, -0.270684,
		0.505267, -0.499608, -0.703632,
		34.222931, 40.108871, 29.618639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029800, 40.937595, 29.584713>,  <33.869244, 40.458599, 30.111181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029800, 40.937595, 29.584713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024593, 40.577576, 29.410475>,  <34.021469, 40.361565, 29.305931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024593, 40.577576, 29.410475>,  <34.029800, 40.937595, 29.584713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024593, 40.577576, 29.410475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676597, 0.328685, -0.658925,
		0.736238, 0.286144, -0.613249,
		-0.013018, -0.900049, -0.435595,
		34.020687, 40.307560, 29.279797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009174, 41.063118, 28.813326>,  <34.029800, 40.937595, 29.584713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009174, 41.063118, 28.813326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882401, 40.687130, 28.863941>,  <33.806335, 40.461536, 28.894310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882401, 40.687130, 28.863941>,  <34.009174, 41.063118, 28.813326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882401, 40.687130, 28.863941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784582, 0.184868, -0.591823,
		0.532902, -0.286849, -0.796073,
		-0.316933, -0.939969, 0.126541,
		33.787319, 40.405140, 28.901903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948330, 40.747696, 28.076607>,  <34.009174, 41.063118, 28.813326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948330, 40.747696, 28.076607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712669, 40.514881, 28.300797>,  <33.571274, 40.375195, 28.435310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712669, 40.514881, 28.300797>,  <33.948330, 40.747696, 28.076607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712669, 40.514881, 28.300797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708385, 0.038376, -0.704783,
		0.388699, -0.812258, -0.434913,
		-0.589156, -0.582034, 0.560475,
		33.535923, 40.340271, 28.468939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760609, 40.181149, 27.708443>,  <33.948330, 40.747696, 28.076607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760609, 40.181149, 27.708443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470497, 40.212170, 27.982073>,  <33.296432, 40.230782, 28.146252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470497, 40.212170, 27.982073>,  <33.760609, 40.181149, 27.708443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470497, 40.212170, 27.982073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687040, -0.017767, -0.726402,
		-0.044191, -0.996829, 0.066177,
		-0.725275, 0.077566, 0.684076,
		33.252914, 40.235435, 28.187296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254578, 39.766781, 27.494715>,  <33.760609, 40.181149, 27.708443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254578, 39.766781, 27.494715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058445, 39.986362, 27.765486>,  <32.940765, 40.118111, 27.927948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058445, 39.986362, 27.765486>,  <33.254578, 39.766781, 27.494715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058445, 39.986362, 27.765486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765696, 0.099644, -0.635437,
		-0.416276, -0.829894, 0.371471,
		-0.490330, 0.548951, 0.676926,
		32.911346, 40.151047, 27.968563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519299, 39.604664, 27.368053>,  <33.254578, 39.766781, 27.494715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519299, 39.604664, 27.368053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524532, 39.932758, 27.596804>,  <32.527672, 40.129616, 27.734055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524532, 39.932758, 27.596804>,  <32.519299, 39.604664, 27.368053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524532, 39.932758, 27.596804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686012, 0.423458, -0.591668,
		-0.727473, -0.384572, 0.568232,
		0.013084, 0.820236, 0.571875,
		32.528458, 40.178829, 27.768366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806341, 39.706734, 27.547539>,  <32.519299, 39.604664, 27.368053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806341, 39.706734, 27.547539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975304, 40.067509, 27.583506>,  <32.076683, 40.283974, 27.605085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975304, 40.067509, 27.583506>,  <31.806341, 39.706734, 27.547539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975304, 40.067509, 27.583506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662857, 0.375047, -0.648044,
		-0.618217, 0.214136, 0.756276,
		0.422408, 0.901935, 0.089919,
		32.102028, 40.338089, 27.610481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327129, 40.172699, 27.731983>,  <31.806341, 39.706734, 27.547539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327129, 40.172699, 27.731983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611534, 40.412483, 27.584951>,  <31.782177, 40.556355, 27.496733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611534, 40.412483, 27.584951>,  <31.327129, 40.172699, 27.731983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611534, 40.412483, 27.584951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673764, 0.431157, -0.600121,
		-0.201263, 0.674354, 0.710451,
		0.711010, 0.599458, -0.367580,
		31.824837, 40.592319, 27.474678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083466, 40.750999, 27.716597>,  <31.327129, 40.172699, 27.731983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083466, 40.750999, 27.716597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377369, 40.811691, 27.452139>,  <31.553711, 40.848106, 27.293465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377369, 40.811691, 27.452139>,  <31.083466, 40.750999, 27.716597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377369, 40.811691, 27.452139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677094, 0.222848, -0.701343,
		0.040921, 0.962973, 0.266473,
		0.734758, 0.151728, -0.661143,
		31.597795, 40.857208, 27.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875908, 41.428535, 27.444553>,  <31.083466, 40.750999, 27.716597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875908, 41.428535, 27.444553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122232, 41.247742, 27.186409>,  <31.270027, 41.139267, 27.031523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122232, 41.247742, 27.186409>,  <30.875908, 41.428535, 27.444553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122232, 41.247742, 27.186409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519657, 0.382683, -0.763878,
		0.592229, 0.805769, 0.000783,
		0.615809, -0.451984, -0.645360,
		31.306974, 41.112148, 26.992802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119175, 41.947109, 26.979132>,  <30.875908, 41.428535, 27.444553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119175, 41.947109, 26.979132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164888, 41.589691, 26.805458>,  <31.192318, 41.375240, 26.701254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164888, 41.589691, 26.805458>,  <31.119175, 41.947109, 26.979132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164888, 41.589691, 26.805458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449521, 0.343236, -0.824694,
		0.885929, 0.289427, -0.362439,
		0.114286, -0.893544, -0.434186,
		31.199175, 41.321629, 26.675201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495712, 42.111145, 26.262913>,  <31.119175, 41.947109, 26.979132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495712, 42.111145, 26.262913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323587, 41.752998, 26.217049>,  <31.220312, 41.538109, 26.189529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323587, 41.752998, 26.217049>,  <31.495712, 42.111145, 26.262913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323587, 41.752998, 26.217049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398721, 0.302491, -0.865749,
		0.809848, -0.326825, -0.487167,
		-0.430312, -0.895368, -0.114660,
		31.194494, 41.484386, 26.182652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628727, 42.026535, 25.637465>,  <31.495712, 42.111145, 26.262913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628727, 42.026535, 25.637465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331671, 41.776085, 25.732504>,  <31.153437, 41.625816, 25.789528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331671, 41.776085, 25.732504>,  <31.628727, 42.026535, 25.637465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331671, 41.776085, 25.732504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449231, 0.202632, -0.870133,
		0.496667, -0.752933, -0.431758,
		-0.742640, -0.626125, 0.237600,
		31.108879, 41.588249, 25.803783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567940, 41.577152, 25.143316>,  <31.628727, 42.026535, 25.637465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567940, 41.577152, 25.143316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207951, 41.548676, 25.315351>,  <30.991957, 41.531590, 25.418573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207951, 41.548676, 25.315351>,  <31.567940, 41.577152, 25.143316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207951, 41.548676, 25.315351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434422, 0.064129, -0.898424,
		0.036367, -0.995400, -0.088636,
		-0.899975, -0.071178, 0.430092,
		30.937958, 41.527317, 25.444378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130396, 40.950367, 24.812481>,  <31.567940, 41.577152, 25.143316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130396, 40.950367, 24.812481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915272, 41.239346, 24.986303>,  <30.786198, 41.412731, 25.090597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915272, 41.239346, 24.986303>,  <31.130396, 40.950367, 24.812481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915272, 41.239346, 24.986303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428514, 0.209652, -0.878875,
		-0.726042, -0.658880, 0.196824,
		-0.537809, 0.722442, 0.434555,
		30.753929, 41.456078, 25.116671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564259, 41.086735, 24.337107>,  <31.130396, 40.950367, 24.812481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564259, 41.086735, 24.337107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542521, 41.408817, 24.573307>,  <30.529478, 41.602066, 24.715027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542521, 41.408817, 24.573307>,  <30.564259, 41.086735, 24.337107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542521, 41.408817, 24.573307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321562, 0.545756, -0.773789,
		-0.945328, -0.231933, 0.229265,
		-0.054345, 0.805207, 0.590499,
		30.526217, 41.650379, 24.750456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854311, 41.353138, 24.308420>,  <30.564259, 41.086735, 24.337107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854311, 41.353138, 24.308420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113634, 41.648109, 24.384209>,  <30.269228, 41.825092, 24.429682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113634, 41.648109, 24.384209>,  <29.854311, 41.353138, 24.308420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113634, 41.648109, 24.384209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311187, 0.483756, -0.818012,
		-0.694879, 0.471365, 0.543100,
		0.648310, 0.737425, 0.189469,
		30.308126, 41.869335, 24.441050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536936, 41.933323, 24.502237>,  <29.854311, 41.353138, 24.308420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536936, 41.933323, 24.502237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869213, 42.009438, 24.292955>,  <30.068579, 42.055107, 24.167387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869213, 42.009438, 24.292955>,  <29.536936, 41.933323, 24.502237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869213, 42.009438, 24.292955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555705, 0.226306, -0.799986,
		-0.033825, 0.955288, 0.293735,
		0.830692, 0.190290, -0.523203,
		30.118420, 42.066525, 24.135994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405010, 41.412399, 25.054691>,  <29.536936, 41.933323, 24.502237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405010, 41.412399, 25.054691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019224, 41.508770, 25.011305>,  <28.787752, 41.566593, 24.985273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019224, 41.508770, 25.011305>,  <29.405010, 41.412399, 25.054691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019224, 41.508770, 25.011305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167026, -0.237852, 0.956833,
		0.204729, 0.940946, 0.269641,
		-0.964463, 0.240929, -0.108467,
		28.729885, 41.581047, 24.978765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157635, 41.969326, 25.505911>,  <29.405010, 41.412399, 25.054691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157635, 41.969326, 25.505911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851938, 41.720371, 25.438301>,  <28.668520, 41.570999, 25.397736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851938, 41.720371, 25.438301>,  <29.157635, 41.969326, 25.505911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851938, 41.720371, 25.438301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169617, -0.058884, 0.983750,
		-0.622228, 0.780490, -0.060566,
		-0.764240, -0.622390, -0.169023,
		28.622665, 41.533653, 25.387594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576212, 42.203503, 25.969164>,  <29.157635, 41.969326, 25.505911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576212, 42.203503, 25.969164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484161, 41.830715, 25.857111>,  <28.428930, 41.607040, 25.789879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484161, 41.830715, 25.857111>,  <28.576212, 42.203503, 25.969164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484161, 41.830715, 25.857111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152145, -0.249861, 0.956254,
		-0.961194, 0.262680, -0.084295,
		-0.230127, -0.931971, -0.280130,
		28.415123, 41.551125, 25.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912851, 41.967617, 26.342743>,  <28.576212, 42.203503, 25.969164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912851, 41.967617, 26.342743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095589, 41.633701, 26.219835>,  <28.205231, 41.433350, 26.146091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095589, 41.633701, 26.219835>,  <27.912851, 41.967617, 26.342743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095589, 41.633701, 26.219835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067828, -0.311724, 0.947748,
		-0.886957, -0.453815, -0.085787,
		0.456844, -0.834793, -0.307267,
		28.232641, 41.383263, 26.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504202, 41.372253, 26.739202>,  <27.912851, 41.967617, 26.342743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504202, 41.372253, 26.739202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864796, 41.242939, 26.624092>,  <28.081152, 41.165352, 26.555027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864796, 41.242939, 26.624092>,  <27.504202, 41.372253, 26.739202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864796, 41.242939, 26.624092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234464, -0.194112, 0.952548,
		-0.363805, -0.926179, -0.099190,
		0.901484, -0.323285, -0.287774,
		28.135241, 41.145954, 26.537760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547422, 40.763969, 27.088688>,  <27.504202, 41.372253, 26.739202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547422, 40.763969, 27.088688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924238, 40.841328, 26.979025>,  <28.150328, 40.887745, 26.913227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924238, 40.841328, 26.979025>,  <27.547422, 40.763969, 27.088688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924238, 40.841328, 26.979025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326853, -0.344627, 0.880000,
		0.075709, -0.918602, -0.387865,
		0.942038, 0.193398, -0.274156,
		28.206850, 40.899345, 26.896778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931570, 40.169163, 27.315054>,  <27.547422, 40.763969, 27.088688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931570, 40.169163, 27.315054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230381, 40.429733, 27.262003>,  <28.409668, 40.586075, 27.230173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230381, 40.429733, 27.262003>,  <27.931570, 40.169163, 27.315054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230381, 40.429733, 27.262003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424815, -0.314314, 0.848963,
		0.511352, -0.690541, -0.511538,
		0.747028, 0.651428, -0.132627,
		28.454489, 40.625160, 27.222216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519762, 39.824268, 27.570862>,  <27.931570, 40.169163, 27.315054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519762, 39.824268, 27.570862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648794, 40.202583, 27.555792>,  <28.726213, 40.429573, 27.546751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648794, 40.202583, 27.555792>,  <28.519762, 39.824268, 27.570862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648794, 40.202583, 27.555792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566452, -0.161007, 0.808213,
		0.758336, -0.282055, -0.587684,
		0.322581, 0.945792, -0.037673,
		28.745569, 40.486320, 27.544489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257101, 39.829285, 27.553188>,  <28.519762, 39.824268, 27.570862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257101, 39.829285, 27.553188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189066, 40.200623, 27.685394>,  <29.148245, 40.423428, 27.764717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189066, 40.200623, 27.685394>,  <29.257101, 39.829285, 27.553188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189066, 40.200623, 27.685394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777361, -0.079727, 0.623982,
		0.605623, 0.363062, -0.708101,
		-0.170090, 0.928348, 0.330515,
		29.138039, 40.479126, 27.784548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869026, 40.056786, 27.690798>,  <29.257101, 39.829285, 27.553188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869026, 40.056786, 27.690798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653280, 40.325001, 27.894552>,  <29.523832, 40.485928, 28.016804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653280, 40.325001, 27.894552>,  <29.869026, 40.056786, 27.690798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653280, 40.325001, 27.894552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756083, 0.119324, 0.643506,
		0.370711, 0.732220, -0.571338,
		-0.539363, 0.670534, 0.509384,
		29.491472, 40.526161, 28.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317947, 40.544182, 27.767885>,  <29.869026, 40.056786, 27.690798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317947, 40.544182, 27.767885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032377, 40.558056, 28.047630>,  <29.861034, 40.566380, 28.215477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032377, 40.558056, 28.047630>,  <30.317947, 40.544182, 27.767885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032377, 40.558056, 28.047630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698460, 0.106083, 0.707743,
		-0.049639, 0.993752, -0.099965,
		-0.713925, 0.034690, 0.699362,
		29.818199, 40.568462, 28.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622841, 41.021328, 28.229372>,  <30.317947, 40.544182, 27.767885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622841, 41.021328, 28.229372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349545, 40.797211, 28.416670>,  <30.185566, 40.662739, 28.529049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349545, 40.797211, 28.416670>,  <30.622841, 41.021328, 28.229372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349545, 40.797211, 28.416670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656669, -0.191044, 0.729581,
		-0.319325, 0.805960, 0.498458,
		-0.683240, -0.560295, 0.468244,
		30.144573, 40.629124, 28.557142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664364, 41.219193, 28.916679>,  <30.622841, 41.021328, 28.229372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664364, 41.219193, 28.916679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485655, 40.861393, 28.923122>,  <30.378429, 40.646713, 28.926989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485655, 40.861393, 28.923122>,  <30.664364, 41.219193, 28.916679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485655, 40.861393, 28.923122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695791, -0.336094, 0.634756,
		-0.562377, 0.294800, 0.772544,
		-0.446774, -0.894502, 0.016107,
		30.351624, 40.593044, 28.927954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986588, 40.822208, 29.493441>,  <30.664364, 41.219193, 28.916679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986588, 40.822208, 29.493441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771141, 40.536831, 29.314154>,  <30.641874, 40.365604, 29.206581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771141, 40.536831, 29.314154>,  <30.986588, 40.822208, 29.493441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771141, 40.536831, 29.314154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543876, -0.700699, 0.461757,
		-0.643500, 0.004935, 0.765430,
		-0.538614, -0.713440, -0.448216,
		30.609556, 40.322800, 29.179689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846447, 40.288387, 29.987368>,  <30.986588, 40.822208, 29.493441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846447, 40.288387, 29.987368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804672, 40.108990, 29.632303>,  <30.779608, 40.001350, 29.419264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804672, 40.108990, 29.632303>,  <30.846447, 40.288387, 29.987368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804672, 40.108990, 29.632303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440547, -0.821061, 0.363013,
		-0.891634, -0.353145, 0.283331,
		-0.104436, -0.448496, -0.887663,
		30.773342, 39.974442, 29.366005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710649, 39.674911, 30.154951>,  <30.846447, 40.288387, 29.987368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710649, 39.674911, 30.154951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822855, 39.630539, 29.773584>,  <30.890179, 39.603916, 29.544764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822855, 39.630539, 29.773584>,  <30.710649, 39.674911, 30.154951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822855, 39.630539, 29.773584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507535, -0.825938, 0.245429,
		-0.814690, -0.552739, -0.175385,
		0.280515, -0.110935, -0.953417,
		30.907009, 39.597260, 29.487558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499081, 38.942944, 30.015919>,  <30.710649, 39.674911, 30.154951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499081, 38.942944, 30.015919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.796946, 39.080429, 29.787066>,  <30.975664, 39.162922, 29.649754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.796946, 39.080429, 29.787066>,  <30.499081, 38.942944, 30.015919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796946, 39.080429, 29.787066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587317, -0.744672, 0.317054,
		-0.317076, -0.572122, -0.756398,
		0.744662, 0.343715, -0.572135,
		31.020344, 39.183544, 29.615425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799637, 38.338909, 29.565250>,  <30.499081, 38.942944, 30.015919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799637, 38.338909, 29.565250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087883, 38.615128, 29.590090>,  <31.260830, 38.780861, 29.604994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087883, 38.615128, 29.590090>,  <30.799637, 38.338909, 29.565250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087883, 38.615128, 29.590090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648893, -0.703264, 0.290443,
		0.244236, -0.169003, -0.954875,
		0.720615, 0.690549, 0.062097,
		31.304068, 38.822292, 29.608719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376028, 37.945992, 29.371975>,  <30.799637, 38.338909, 29.565250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376028, 37.945992, 29.371975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508766, 38.263634, 29.575651>,  <31.588409, 38.454220, 29.697857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508766, 38.263634, 29.575651>,  <31.376028, 37.945992, 29.371975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508766, 38.263634, 29.575651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621222, -0.590171, 0.515540,
		0.709903, 0.145242, -0.689161,
		0.331844, 0.794105, 0.509192,
		31.608320, 38.501865, 29.728409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187500, 37.877377, 29.315042>,  <31.376028, 37.945992, 29.371975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187500, 37.877377, 29.315042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118839, 38.126476, 29.620386>,  <32.077644, 38.275936, 29.803593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118839, 38.126476, 29.620386>,  <32.187500, 37.877377, 29.315042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118839, 38.126476, 29.620386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693534, -0.473935, 0.542583,
		0.699676, 0.622551, -0.350547,
		-0.171649, 0.622749, 0.763361,
		32.067345, 38.313301, 29.849394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854107, 37.768879, 29.705114>,  <32.187500, 37.877377, 29.315042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854107, 37.768879, 29.705114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638371, 37.975372, 29.971231>,  <32.508930, 38.099266, 30.130901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638371, 37.975372, 29.971231>,  <32.854107, 37.768879, 29.705114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638371, 37.975372, 29.971231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532316, -0.403169, 0.744375,
		0.652495, 0.755619, -0.057352,
		-0.539342, 0.516231, 0.665294,
		32.476566, 38.130241, 30.170820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.973499, 39.170898, 32.220257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664989, 39.291904, 32.444267>,  <37.479885, 39.364506, 32.578674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664989, 39.291904, 32.444267>,  <37.973499, 39.170898, 32.220257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664989, 39.291904, 32.444267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561146, -0.092107, 0.822576,
		0.300420, 0.948685, -0.098713,
		-0.771274, 0.302510, 0.560021,
		37.433609, 39.382656, 32.612274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292702, 39.707401, 32.641895>,  <37.973499, 39.170898, 32.220257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292702, 39.707401, 32.641895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957752, 39.565502, 32.808250>,  <37.756783, 39.480362, 32.908062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957752, 39.565502, 32.808250>,  <38.292702, 39.707401, 32.641895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957752, 39.565502, 32.808250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443145, 0.004906, 0.896437,
		-0.320048, 0.934950, 0.153096,
		-0.837372, -0.354747, 0.415888,
		37.706539, 39.459080, 32.933018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004757, 40.219425, 33.188019>,  <38.292702, 39.707401, 32.641895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004757, 40.219425, 33.188019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865398, 39.852066, 33.263035>,  <37.781784, 39.631653, 33.308044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865398, 39.852066, 33.263035>,  <38.004757, 40.219425, 33.188019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865398, 39.852066, 33.263035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533027, -0.029531, 0.845583,
		-0.771041, 0.394560, 0.499818,
		-0.348393, -0.918395, 0.187542,
		37.760880, 39.576546, 33.319298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783882, 40.281101, 33.825722>,  <38.004757, 40.219425, 33.188019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783882, 40.281101, 33.825722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787525, 39.881680, 33.804558>,  <37.789711, 39.642025, 33.791859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787525, 39.881680, 33.804558>,  <37.783882, 40.281101, 33.825722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787525, 39.881680, 33.804558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261126, -0.048699, 0.964075,
		-0.965262, -0.022600, 0.260306,
		0.009111, -0.998558, -0.052909,
		37.790260, 39.582111, 33.788685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547211, 40.036251, 34.465153>,  <37.783882, 40.281101, 33.825722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547211, 40.036251, 34.465153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724560, 39.711327, 34.313591>,  <37.830971, 39.516373, 34.222656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724560, 39.711327, 34.313591>,  <37.547211, 40.036251, 34.465153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724560, 39.711327, 34.313591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256689, -0.289947, 0.921977,
		-0.858796, -0.506040, 0.079958,
		0.443373, -0.812314, -0.378901,
		37.857571, 39.467632, 34.199921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255714, 39.398697, 34.822094>,  <37.547211, 40.036251, 34.465153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255714, 39.398697, 34.822094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610989, 39.305771, 34.663525>,  <37.824154, 39.250015, 34.568382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610989, 39.305771, 34.663525>,  <37.255714, 39.398697, 34.822094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610989, 39.305771, 34.663525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287326, -0.392445, 0.873745,
		-0.358547, -0.889956, -0.281820,
		0.888194, -0.232304, -0.396417,
		37.877445, 39.236076, 34.544598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301476, 38.667465, 34.998100>,  <37.255714, 39.398697, 34.822094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301476, 38.667465, 34.998100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672153, 38.798637, 34.924667>,  <37.894558, 38.877342, 34.880608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672153, 38.798637, 34.924667>,  <37.301476, 38.667465, 34.998100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672153, 38.798637, 34.924667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302709, -0.361806, 0.881739,
		0.222732, -0.872671, -0.434551,
		0.926692, 0.327934, -0.183580,
		37.950161, 38.897018, 34.869595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832005, 38.157623, 35.252213>,  <37.301476, 38.667465, 34.998100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832005, 38.157623, 35.252213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062016, 38.484116, 35.229900>,  <38.200020, 38.680012, 35.216515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062016, 38.484116, 35.229900>,  <37.832005, 38.157623, 35.252213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062016, 38.484116, 35.229900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281199, -0.133159, 0.950366,
		0.768293, -0.562168, -0.306093,
		0.575024, 0.816233, -0.055776,
		38.234524, 38.728985, 35.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463917, 38.017330, 35.545952>,  <37.832005, 38.157623, 35.252213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463917, 38.017330, 35.545952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539291, 38.410065, 35.537155>,  <38.584515, 38.645706, 35.531879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539291, 38.410065, 35.537155>,  <38.463917, 38.017330, 35.545952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539291, 38.410065, 35.537155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518376, -0.080421, 0.851363,
		0.834133, -0.171825, -0.524116,
		0.188436, 0.981839, -0.021988,
		38.595821, 38.704617, 35.530560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235317, 38.082870, 35.724228>,  <38.463917, 38.017330, 35.545952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235317, 38.082870, 35.724228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026226, 38.415569, 35.799015>,  <38.900772, 38.615189, 35.843887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026226, 38.415569, 35.799015>,  <39.235317, 38.082870, 35.724228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026226, 38.415569, 35.799015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397045, 0.043453, 0.916770,
		0.754392, 0.553458, -0.352954,
		-0.522731, 0.831743, 0.186967,
		38.869408, 38.665092, 35.855106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715397, 38.522610, 36.026413>,  <39.235317, 38.082870, 35.724228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715397, 38.522610, 36.026413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366974, 38.681927, 36.141392>,  <39.157921, 38.777519, 36.210381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366974, 38.681927, 36.141392>,  <39.715397, 38.522610, 36.026413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366974, 38.681927, 36.141392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371490, 0.151338, 0.916019,
		0.321344, 0.904687, -0.279786,
		-0.871053, 0.398295, 0.287451,
		39.105659, 38.801414, 36.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985870, 38.951206, 36.530960>,  <39.715397, 38.522610, 36.026413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985870, 38.951206, 36.530960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590717, 38.971443, 36.589638>,  <39.353626, 38.983585, 36.624844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590717, 38.971443, 36.589638>,  <39.985870, 38.951206, 36.530960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590717, 38.971443, 36.589638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155147, 0.303625, 0.940075,
		0.003021, 0.951447, -0.307796,
		-0.987887, 0.050594, 0.146697,
		39.294350, 38.986622, 36.633648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665501, 39.644875, 36.652195>,  <39.985870, 38.951206, 36.530960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665501, 39.644875, 36.652195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503548, 39.329052, 36.836662>,  <39.406376, 39.139561, 36.947342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503548, 39.329052, 36.836662>,  <39.665501, 39.644875, 36.652195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503548, 39.329052, 36.836662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351967, 0.330919, 0.875564,
		-0.843915, 0.516814, 0.143915,
		-0.404879, -0.789554, 0.461169,
		39.382084, 39.092186, 36.975014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449299, 39.851032, 37.352791>,  <39.665501, 39.644875, 36.652195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449299, 39.851032, 37.352791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516457, 39.456718, 37.355602>,  <39.556751, 39.220131, 37.357288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516457, 39.456718, 37.355602>,  <39.449299, 39.851032, 37.352791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516457, 39.456718, 37.355602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508633, 0.092730, 0.855975,
		-0.844455, -0.140138, 0.516969,
		0.167893, -0.985780, 0.007027,
		39.566826, 39.160984, 37.357712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439655, 39.484837, 37.959629>,  <39.449299, 39.851032, 37.352791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439655, 39.484837, 37.959629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.404007, 39.842522, 38.135101>,  <39.382618, 40.057133, 38.240387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.404007, 39.842522, 38.135101>,  <39.439655, 39.484837, 37.959629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404007, 39.842522, 38.135101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910184, 0.105752, -0.400477,
		-0.404503, -0.434976, 0.804471,
		-0.089124, 0.894211, 0.438685,
		39.377270, 40.110786, 38.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704327, 39.538166, 38.082748>,  <39.439655, 39.484837, 37.959629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704327, 39.538166, 38.082748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850582, 39.907200, 38.131966>,  <38.938335, 40.128620, 38.161495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850582, 39.907200, 38.131966>,  <38.704327, 39.538166, 38.082748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850582, 39.907200, 38.131966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811571, 0.380742, -0.443156,
		-0.455697, 0.062181, 0.887961,
		0.365639, 0.922588, 0.123039,
		38.960274, 40.183975, 38.168877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180210, 39.989353, 38.358452>,  <38.704327, 39.538166, 38.082748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180210, 39.989353, 38.358452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.425926, 40.252125, 38.183601>,  <38.573357, 40.409790, 38.078690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.425926, 40.252125, 38.183601>,  <38.180210, 39.989353, 38.358452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425926, 40.252125, 38.183601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777700, 0.410314, -0.476263,
		-0.133513, 0.632520, 0.762950,
		0.614294, 0.656933, -0.437128,
		38.610214, 40.449203, 38.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905754, 40.710991, 38.345020>,  <38.180210, 39.989353, 38.358452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905754, 40.710991, 38.345020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167049, 40.689606, 38.042915>,  <38.323826, 40.676777, 37.861652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167049, 40.689606, 38.042915>,  <37.905754, 40.710991, 38.345020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167049, 40.689606, 38.042915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660329, 0.447841, -0.602830,
		0.370465, 0.892514, 0.257246,
		0.653239, -0.053460, -0.755262,
		38.363022, 40.673569, 37.816338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968945, 41.392475, 38.150261>,  <37.905754, 40.710991, 38.345020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968945, 41.392475, 38.150261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083363, 41.189392, 37.825195>,  <38.152012, 41.067543, 37.630157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083363, 41.189392, 37.825195>,  <37.968945, 41.392475, 38.150261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083363, 41.189392, 37.825195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587436, 0.577120, -0.567320,
		0.757032, 0.639664, -0.133162,
		0.286043, -0.507704, -0.812660,
		38.169174, 41.037083, 37.581398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288837, 41.921535, 37.627777>,  <37.968945, 41.392475, 38.150261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288837, 41.921535, 37.627777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.201057, 41.599953, 37.406693>,  <38.148392, 41.407001, 37.274040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.201057, 41.599953, 37.406693>,  <38.288837, 41.921535, 37.627777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201057, 41.599953, 37.406693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526734, 0.574493, -0.626505,
		0.821215, 0.153651, -0.549543,
		-0.219446, -0.803958, -0.552716,
		38.135223, 41.358765, 37.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322304, 42.152245, 36.878689>,  <38.288837, 41.921535, 37.627777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322304, 42.152245, 36.878689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106915, 41.815193, 36.880619>,  <37.977680, 41.612965, 36.881775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106915, 41.815193, 36.880619>,  <38.322304, 42.152245, 36.878689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106915, 41.815193, 36.880619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512102, 0.322702, -0.796000,
		0.669175, -0.431096, -0.605278,
		-0.538477, -0.842627, 0.004821,
		37.945370, 41.562405, 36.882065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293678, 41.933159, 36.147953>,  <38.322304, 42.152245, 36.878689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293678, 41.933159, 36.147953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982975, 41.747135, 36.317837>,  <37.796555, 41.635521, 36.419765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982975, 41.747135, 36.317837>,  <38.293678, 41.933159, 36.147953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982975, 41.747135, 36.317837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528965, 0.115728, -0.840716,
		0.341831, -0.877684, -0.335891,
		-0.776755, -0.465057, 0.424705,
		37.749947, 41.607620, 36.445248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082630, 41.269306, 35.811031>,  <38.293678, 41.933159, 36.147953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082630, 41.269306, 35.811031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763485, 41.409920, 36.006927>,  <37.571999, 41.494286, 36.124466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763485, 41.409920, 36.006927>,  <38.082630, 41.269306, 35.811031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763485, 41.409920, 36.006927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555339, -0.112510, -0.823978,
		-0.234552, -0.929391, 0.284986,
		-0.797862, 0.351530, 0.489738,
		37.524128, 41.515377, 36.153851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561958, 40.788059, 35.578674>,  <38.082630, 41.269306, 35.811031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561958, 40.788059, 35.578674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.364502, 41.111645, 35.706364>,  <37.246029, 41.305794, 35.782978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.364502, 41.111645, 35.706364>,  <37.561958, 40.788059, 35.578674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364502, 41.111645, 35.706364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554159, -0.009701, -0.832354,
		-0.670245, -0.587782, 0.453083,
		-0.493638, 0.808962, 0.319223,
		37.216412, 41.354332, 35.802132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805698, 40.635876, 35.460918>,  <37.561958, 40.788059, 35.578674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805698, 40.635876, 35.460918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.857391, 41.032513, 35.463818>,  <36.888405, 41.270493, 35.465557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.857391, 41.032513, 35.463818>,  <36.805698, 40.635876, 35.460918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857391, 41.032513, 35.463818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713945, 0.098111, -0.693295,
		-0.688174, 0.084423, 0.720618,
		0.129231, 0.991588, 0.007244,
		36.896160, 41.329990, 35.465992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103897, 40.803341, 35.418854>,  <36.805698, 40.635876, 35.460918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103897, 40.803341, 35.418854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331104, 41.118599, 35.324043>,  <36.467430, 41.307755, 35.267159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331104, 41.118599, 35.324043>,  <36.103897, 40.803341, 35.418854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331104, 41.118599, 35.324043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687506, 0.296073, -0.663081,
		-0.452429, 0.539597, 0.710030,
		0.568017, 0.788147, -0.237024,
		36.501511, 41.355042, 35.252937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627735, 41.364491, 35.442451>,  <36.103897, 40.803341, 35.418854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627735, 41.364491, 35.442451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936184, 41.504261, 35.229557>,  <36.121254, 41.588123, 35.101822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936184, 41.504261, 35.229557>,  <35.627735, 41.364491, 35.442451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936184, 41.504261, 35.229557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633254, 0.334235, -0.698052,
		-0.066024, 0.875323, 0.479010,
		0.771122, 0.349423, -0.532234,
		36.167522, 41.609089, 35.069885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420128, 41.960377, 35.193588>,  <35.627735, 41.364491, 35.442451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420128, 41.960377, 35.193588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.709793, 41.887932, 34.927422>,  <35.883591, 41.844463, 34.767719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.709793, 41.887932, 34.927422>,  <35.420128, 41.960377, 35.193588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709793, 41.887932, 34.927422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607657, 0.288681, -0.739875,
		0.326096, 0.940139, 0.098998,
		0.724164, -0.181114, -0.665420,
		35.927044, 41.833599, 34.727795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332047, 42.530754, 35.731403>,  <35.420128, 41.960377, 35.193588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332047, 42.530754, 35.731403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.959007, 42.479744, 35.866455>,  <34.735184, 42.449139, 35.947487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.959007, 42.479744, 35.866455>,  <35.332047, 42.530754, 35.731403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959007, 42.479744, 35.866455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340861, -0.618681, 0.707847,
		0.118617, 0.775224, 0.620450,
		-0.932600, -0.127525, 0.337630,
		34.679226, 42.441486, 35.967743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395164, 42.660141, 36.388447>,  <35.332047, 42.530754, 35.731403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395164, 42.660141, 36.388447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067066, 42.432293, 36.367504>,  <34.870209, 42.295586, 36.354939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067066, 42.432293, 36.367504>,  <35.395164, 42.660141, 36.388447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067066, 42.432293, 36.367504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370441, -0.598711, 0.710154,
		-0.435864, 0.563100, 0.702097,
		-0.820241, -0.569616, -0.052361,
		34.820995, 42.261410, 36.351795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188446, 42.582085, 37.016392>,  <35.395164, 42.660141, 36.388447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188446, 42.582085, 37.016392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.991055, 42.275600, 36.851757>,  <34.872620, 42.091709, 36.752975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.991055, 42.275600, 36.851757>,  <35.188446, 42.582085, 37.016392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991055, 42.275600, 36.851757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347559, -0.607516, 0.714232,
		-0.797295, 0.209409, 0.566099,
		-0.493481, -0.766206, -0.411588,
		34.843010, 42.045738, 36.728279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869858, 42.262695, 37.559551>,  <35.188446, 42.582085, 37.016392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869858, 42.262695, 37.559551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840424, 41.966099, 37.292782>,  <34.822762, 41.788143, 37.132721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840424, 41.966099, 37.292782>,  <34.869858, 42.262695, 37.559551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840424, 41.966099, 37.292782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103040, -0.670806, 0.734440,
		-0.991952, -0.014676, 0.125763,
		-0.073584, -0.741488, -0.666919,
		34.818348, 41.743652, 37.092705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530560, 41.680099, 37.892757>,  <34.869858, 42.262695, 37.559551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530560, 41.680099, 37.892757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.703522, 41.482185, 37.591236>,  <34.807297, 41.363438, 37.410324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.703522, 41.482185, 37.591236>,  <34.530560, 41.680099, 37.892757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703522, 41.482185, 37.591236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129890, -0.793094, 0.595088,
		-0.892277, -0.355228, -0.278666,
		0.432401, -0.494788, -0.753800,
		34.833241, 41.333748, 37.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227890, 41.134594, 37.894958>,  <34.530560, 41.680099, 37.892757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227890, 41.134594, 37.894958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.565617, 41.045074, 37.700211>,  <34.768253, 40.991364, 37.583363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.565617, 41.045074, 37.700211>,  <34.227890, 41.134594, 37.894958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565617, 41.045074, 37.700211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133678, -0.791901, 0.595838,
		-0.518899, -0.568160, -0.638700,
		0.844318, -0.223800, -0.486868,
		34.818913, 40.977936, 37.554150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255058, 40.411755, 38.087799>,  <34.227890, 41.134594, 37.894958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255058, 40.411755, 38.087799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620930, 40.527321, 37.974743>,  <34.840454, 40.596661, 37.906910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620930, 40.527321, 37.974743>,  <34.255058, 40.411755, 38.087799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620930, 40.527321, 37.974743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399242, -0.754832, 0.520417,
		-0.062989, -0.588858, -0.805779,
		0.914679, 0.288920, -0.282643,
		34.895332, 40.613998, 37.889950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577381, 39.779034, 37.956089>,  <34.255058, 40.411755, 38.087799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577381, 39.779034, 37.956089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.879967, 40.037052, 37.999306>,  <35.061520, 40.191864, 38.025234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.879967, 40.037052, 37.999306>,  <34.577381, 39.779034, 37.956089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879967, 40.037052, 37.999306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499290, -0.676254, 0.541656,
		0.422459, -0.355798, -0.833628,
		0.756464, 0.645049, 0.108043,
		35.106907, 40.230568, 38.031719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277603, 39.477020, 37.723259>,  <34.577381, 39.779034, 37.956089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277603, 39.477020, 37.723259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333073, 39.766026, 37.994183>,  <35.366356, 39.939426, 38.156738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333073, 39.766026, 37.994183>,  <35.277603, 39.477020, 37.723259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333073, 39.766026, 37.994183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546005, -0.626363, 0.556370,
		0.826225, 0.292660, -0.481355,
		0.138676, 0.722509, 0.677311,
		35.374676, 39.982777, 38.197376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970020, 39.406979, 37.926098>,  <35.277603, 39.477020, 37.723259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970020, 39.406979, 37.926098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785782, 39.601830, 38.222897>,  <35.675240, 39.718739, 38.400974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785782, 39.601830, 38.222897>,  <35.970020, 39.406979, 37.926098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785782, 39.601830, 38.222897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488644, -0.558714, 0.670124,
		0.741000, 0.671227, 0.019308,
		-0.460593, 0.487128, 0.741998,
		35.647602, 39.747967, 38.445496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396549, 39.292053, 38.463440>,  <35.970020, 39.406979, 37.926098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396549, 39.292053, 38.463440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113163, 39.471939, 38.681004>,  <35.943130, 39.579868, 38.811543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113163, 39.471939, 38.681004>,  <36.396549, 39.292053, 38.463440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113163, 39.471939, 38.681004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390700, -0.391902, 0.832926,
		0.587737, 0.802604, 0.101946,
		-0.708462, 0.449711, 0.543913,
		35.900623, 39.606853, 38.844177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678825, 39.867558, 38.963150>,  <36.396549, 39.292053, 38.463440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678825, 39.867558, 38.963150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341637, 39.695549, 39.092449>,  <36.139324, 39.592346, 39.170029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341637, 39.695549, 39.092449>,  <36.678825, 39.867558, 38.963150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341637, 39.695549, 39.092449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433353, -0.186759, 0.881661,
		-0.318763, 0.883292, 0.343782,
		-0.842968, -0.430020, 0.323245,
		36.088745, 39.566544, 39.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.553112, 45.406223, 33.865765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253235, 45.141510, 33.864552>,  <33.073311, 44.982681, 33.863823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253235, 45.141510, 33.864552>,  <33.553112, 45.406223, 33.865765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253235, 45.141510, 33.864552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409206, -0.467154, 0.783784,
		-0.520113, 0.586353, 0.621026,
		-0.749689, -0.661783, -0.003034,
		33.028328, 44.942974, 33.863640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343052, 45.293827, 34.682705>,  <33.553112, 45.406223, 33.865765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343052, 45.293827, 34.682705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242630, 44.977047, 34.460068>,  <33.182377, 44.786980, 34.326485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242630, 44.977047, 34.460068>,  <33.343052, 45.293827, 34.682705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242630, 44.977047, 34.460068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292728, -0.610196, 0.736187,
		-0.922650, 0.021893, 0.385017,
		-0.251053, -0.791948, -0.556589,
		33.167313, 44.739464, 34.293091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962601, 44.903702, 35.143978>,  <33.343052, 45.293827, 34.682705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962601, 44.903702, 35.143978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099255, 44.661388, 34.856560>,  <33.181248, 44.515999, 34.684109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099255, 44.661388, 34.856560>,  <32.962601, 44.903702, 35.143978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099255, 44.661388, 34.856560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236351, -0.684599, 0.689538,
		-0.909630, -0.405396, -0.090701,
		0.341630, -0.605787, -0.718548,
		33.201744, 44.479652, 34.640995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679550, 44.276421, 35.355473>,  <32.962601, 44.903702, 35.143978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679550, 44.276421, 35.355473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984566, 44.193985, 35.110180>,  <33.167576, 44.144524, 34.963005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984566, 44.193985, 35.110180>,  <32.679550, 44.276421, 35.355473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984566, 44.193985, 35.110180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276446, -0.753201, 0.596880,
		-0.584897, -0.624673, -0.517377,
		0.762544, -0.206086, -0.613234,
		33.213329, 44.132160, 34.926208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718948, 43.530022, 35.284229>,  <32.679550, 44.276421, 35.355473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718948, 43.530022, 35.284229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081997, 43.637611, 35.155308>,  <33.299828, 43.702164, 35.077953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081997, 43.637611, 35.155308>,  <32.718948, 43.530022, 35.284229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081997, 43.637611, 35.155308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380288, -0.851964, 0.359915,
		-0.177784, -0.449234, -0.875546,
		0.907620, 0.268973, -0.322304,
		33.354282, 43.718304, 35.058617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988899, 42.857830, 34.935558>,  <32.718948, 43.530022, 35.284229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988899, 42.857830, 34.935558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279404, 43.109264, 35.046860>,  <33.453705, 43.260124, 35.113640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279404, 43.109264, 35.046860>,  <32.988899, 42.857830, 34.935558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279404, 43.109264, 35.046860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524158, -0.768269, 0.367453,
		0.444749, -0.121018, -0.887442,
		0.726262, 0.628584, 0.278255,
		33.497284, 43.297840, 35.130337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569855, 42.577744, 34.691669>,  <32.988899, 42.857830, 34.935558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569855, 42.577744, 34.691669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701080, 42.841988, 34.961769>,  <33.779816, 43.000534, 35.123829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701080, 42.841988, 34.961769>,  <33.569855, 42.577744, 34.691669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701080, 42.841988, 34.961769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658091, -0.672643, 0.338331,
		0.677710, 0.333384, -0.655412,
		0.328064, 0.660611, 0.675254,
		33.799500, 43.040173, 35.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244148, 42.450813, 34.705498>,  <33.569855, 42.577744, 34.691669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244148, 42.450813, 34.705498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156754, 42.639275, 35.047325>,  <34.104317, 42.752350, 35.252422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156754, 42.639275, 35.047325>,  <34.244148, 42.450813, 34.705498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156754, 42.639275, 35.047325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570303, -0.648953, 0.503601,
		0.791845, 0.597390, -0.126913,
		-0.218486, 0.471152, 0.854564,
		34.091209, 42.780621, 35.303696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869236, 42.506660, 35.053505>,  <34.244148, 42.450813, 34.705498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869236, 42.506660, 35.053505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585739, 42.541882, 35.333485>,  <34.415642, 42.563015, 35.501472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585739, 42.541882, 35.333485>,  <34.869236, 42.506660, 35.053505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585739, 42.541882, 35.333485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469753, -0.681325, 0.561363,
		0.526321, 0.726666, 0.441523,
		-0.708744, 0.088050, 0.699949,
		34.373116, 42.568298, 35.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470253, 42.635887, 34.687180>,  <34.869236, 42.506660, 35.053505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470253, 42.635887, 34.687180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659206, 42.359200, 34.468681>,  <35.772579, 42.193188, 34.337582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659206, 42.359200, 34.468681>,  <35.470253, 42.635887, 34.687180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659206, 42.359200, 34.468681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564367, 0.238668, -0.790271,
		0.677014, 0.681592, -0.277639,
		0.472379, -0.691715, -0.546250,
		35.800919, 42.151684, 34.304806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819073, 42.939674, 34.131130>,  <35.470253, 42.635887, 34.687180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819073, 42.939674, 34.131130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740936, 42.570408, 33.998703>,  <35.694054, 42.348846, 33.919247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740936, 42.570408, 33.998703>,  <35.819073, 42.939674, 34.131130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740936, 42.570408, 33.998703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386382, 0.382707, -0.839193,
		0.901416, -0.036010, -0.431453,
		-0.195339, -0.923168, -0.331065,
		35.682335, 42.293457, 33.899384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793159, 42.981678, 33.452953>,  <35.819073, 42.939674, 34.131130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793159, 42.981678, 33.452953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628780, 42.617519, 33.472130>,  <35.530151, 42.399025, 33.483635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628780, 42.617519, 33.472130>,  <35.793159, 42.981678, 33.452953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628780, 42.617519, 33.472130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421001, 0.142865, -0.895739,
		0.808628, -0.388287, -0.441988,
		-0.410948, -0.910397, 0.047945,
		35.505497, 42.344398, 33.486515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984673, 42.592495, 32.866405>,  <35.793159, 42.981678, 33.452953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984673, 42.592495, 32.866405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636509, 42.453083, 33.005497>,  <35.427612, 42.369434, 33.088951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636509, 42.453083, 33.005497>,  <35.984673, 42.592495, 32.866405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636509, 42.453083, 33.005497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401489, 0.093694, -0.911059,
		0.284954, -0.932602, -0.221484,
		-0.870407, -0.348532, 0.347730,
		35.375385, 42.348522, 33.109818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805378, 42.084877, 32.342125>,  <35.984673, 42.592495, 32.866405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805378, 42.084877, 32.342125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474197, 42.178780, 32.545841>,  <35.275490, 42.235123, 32.668072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474197, 42.178780, 32.545841>,  <35.805378, 42.084877, 32.342125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474197, 42.178780, 32.545841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482892, 0.163319, -0.860315,
		-0.285147, -0.958235, -0.021856,
		-0.827953, 0.234762, 0.509294,
		35.225811, 42.249207, 32.698627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214844, 41.628460, 32.066788>,  <35.805378, 42.084877, 32.342125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214844, 41.628460, 32.066788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042667, 41.953148, 32.224686>,  <34.939362, 42.147961, 32.319424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042667, 41.953148, 32.224686>,  <35.214844, 41.628460, 32.066788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042667, 41.953148, 32.224686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575758, 0.089890, -0.812664,
		-0.695141, -0.577084, 0.428663,
		-0.430443, 0.811723, 0.394747,
		34.913536, 42.196663, 32.343109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584709, 41.575172, 31.767944>,  <35.214844, 41.628460, 32.066788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584709, 41.575172, 31.767944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592754, 41.948540, 31.911230>,  <34.597584, 42.172562, 31.997202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592754, 41.948540, 31.911230>,  <34.584709, 41.575172, 31.767944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592754, 41.948540, 31.911230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581266, 0.302431, -0.755424,
		-0.813465, -0.193022, 0.548650,
		0.020115, 0.933423, 0.358214,
		34.598789, 42.228565, 32.018696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992321, 41.767937, 31.720726>,  <34.584709, 41.575172, 31.767944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992321, 41.767937, 31.720726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186153, 42.117832, 31.722050>,  <34.302452, 42.327770, 31.722843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186153, 42.117832, 31.722050>,  <33.992321, 41.767937, 31.720726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186153, 42.117832, 31.722050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590812, 0.330075, -0.736201,
		-0.645078, 0.354791, 0.676755,
		0.484577, 0.874742, 0.003309,
		34.331528, 42.380257, 31.723042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532890, 42.270752, 31.523281>,  <33.992321, 41.767937, 31.720726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532890, 42.270752, 31.523281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862152, 42.496330, 31.496836>,  <34.059711, 42.631680, 31.480968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862152, 42.496330, 31.496836>,  <33.532890, 42.270752, 31.523281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862152, 42.496330, 31.496836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351890, 0.415287, -0.838875,
		-0.445627, 0.713791, 0.540295,
		0.823159, 0.563949, -0.066113,
		34.109100, 42.665516, 31.477001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308010, 43.055622, 31.422531>,  <33.532890, 42.270752, 31.523281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308010, 43.055622, 31.422531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679974, 43.006802, 31.283751>,  <33.903152, 42.977509, 31.200481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679974, 43.006802, 31.283751>,  <33.308010, 43.055622, 31.422531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679974, 43.006802, 31.283751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275990, 0.391976, -0.877602,
		0.243108, 0.911844, 0.330817,
		0.929907, -0.122050, -0.346952,
		33.958946, 42.970188, 31.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256191, 43.645351, 31.038651>,  <33.308010, 43.055622, 31.422531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256191, 43.645351, 31.038651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571293, 43.441250, 30.900620>,  <33.760353, 43.318787, 30.817801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571293, 43.441250, 30.900620>,  <33.256191, 43.645351, 31.038651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571293, 43.441250, 30.900620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287482, 0.190905, -0.938568,
		0.544786, 0.838567, 0.003697,
		0.787757, -0.510256, -0.345076,
		33.807621, 43.288174, 30.797096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587055, 44.094410, 30.627449>,  <33.256191, 43.645351, 31.038651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587055, 44.094410, 30.627449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701733, 43.735645, 30.492771>,  <33.770538, 43.520386, 30.411964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701733, 43.735645, 30.492771>,  <33.587055, 44.094410, 30.627449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701733, 43.735645, 30.492771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068791, 0.331266, -0.941026,
		0.955549, 0.292948, 0.033273,
		0.286694, -0.896908, -0.336693,
		33.787743, 43.466572, 30.391764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982918, 44.255955, 30.115456>,  <33.587055, 44.094410, 30.627449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982918, 44.255955, 30.115456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922741, 43.865734, 30.051376>,  <33.886635, 43.631603, 30.012928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922741, 43.865734, 30.051376>,  <33.982918, 44.255955, 30.115456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922741, 43.865734, 30.051376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253939, 0.194738, -0.947413,
		0.955449, -0.101849, -0.277028,
		-0.150441, -0.975553, -0.160199,
		33.877609, 43.573067, 30.003317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442635, 43.892624, 29.560123>,  <33.982918, 44.255955, 30.115456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442635, 43.892624, 29.560123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091560, 43.705330, 29.600964>,  <33.880917, 43.592953, 29.625467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091560, 43.705330, 29.600964>,  <34.442635, 43.892624, 29.560123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091560, 43.705330, 29.600964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125305, 0.018584, -0.991944,
		0.462564, -0.883409, -0.074982,
		-0.877687, -0.468233, 0.102099,
		33.828255, 43.564861, 29.631594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.862701, 39.448204, 32.526024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.190273, 39.673866, 32.483910>,  <29.386816, 39.809265, 32.458641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.190273, 39.673866, 32.483910>,  <28.862701, 39.448204, 32.526024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190273, 39.673866, 32.483910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499887, -0.611104, 0.613730,
		0.281901, -0.555230, -0.782465,
		0.818929, 0.564156, -0.105282,
		29.435951, 39.843113, 32.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358957, 38.916386, 32.410770>,  <28.862701, 39.448204, 32.526024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358957, 38.916386, 32.410770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.578629, 39.241585, 32.488171>,  <29.710432, 39.436703, 32.534611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.578629, 39.241585, 32.488171>,  <29.358957, 38.916386, 32.410770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578629, 39.241585, 32.488171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670000, -0.566714, 0.479515,
		0.499503, -0.133693, -0.855934,
		0.549178, 0.812995, 0.193501,
		29.743382, 39.485485, 32.546223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075436, 38.724262, 32.216896>,  <29.358957, 38.916386, 32.410770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075436, 38.724262, 32.216896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035063, 39.025799, 32.476597>,  <30.010839, 39.206722, 32.632420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035063, 39.025799, 32.476597>,  <30.075436, 38.724262, 32.216896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035063, 39.025799, 32.476597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521384, -0.515717, 0.679849,
		0.847332, 0.407130, -0.340989,
		-0.100934, 0.753844, 0.649254,
		30.004784, 39.251953, 32.671371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734621, 38.743244, 32.441193>,  <30.075436, 38.724262, 32.216896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734621, 38.743244, 32.441193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536943, 38.957912, 32.714764>,  <30.418337, 39.086716, 32.878906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536943, 38.957912, 32.714764>,  <30.734621, 38.743244, 32.441193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536943, 38.957912, 32.714764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521548, -0.446381, 0.727139,
		0.695527, 0.716048, -0.059302,
		-0.494195, 0.536674, 0.683924,
		30.388685, 39.118916, 32.919941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298824, 39.059456, 32.877113>,  <30.734621, 38.743244, 32.441193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298824, 39.059456, 32.877113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.959885, 39.070690, 33.089230>,  <30.756521, 39.077431, 33.216499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.959885, 39.070690, 33.089230>,  <31.298824, 39.059456, 32.877113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959885, 39.070690, 33.089230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490901, -0.339412, 0.802381,
		0.202524, 0.940218, 0.273813,
		-0.847349, 0.028086, 0.530294,
		30.705681, 39.079117, 33.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470518, 39.445774, 33.416233>,  <31.298824, 39.059456, 32.877113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470518, 39.445774, 33.416233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.163319, 39.199867, 33.488052>,  <30.979000, 39.052322, 33.531143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.163319, 39.199867, 33.488052>,  <31.470518, 39.445774, 33.416233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163319, 39.199867, 33.488052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521084, -0.436802, 0.733264,
		-0.372360, 0.656706, 0.655809,
		-0.767997, -0.614770, 0.179552,
		30.932920, 39.015438, 33.541920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401230, 39.510372, 34.152943>,  <31.470518, 39.445774, 33.416233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401230, 39.510372, 34.152943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215361, 39.170822, 34.052151>,  <31.103840, 38.967091, 33.991676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215361, 39.170822, 34.052151>,  <31.401230, 39.510372, 34.152943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215361, 39.170822, 34.052151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511788, -0.489685, 0.705891,
		-0.722601, 0.199049, 0.661987,
		-0.464672, -0.848875, -0.251976,
		31.075958, 38.916161, 33.976559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123016, 39.258442, 34.761288>,  <31.401230, 39.510372, 34.152943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123016, 39.258442, 34.761288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.148981, 38.940025, 34.520588>,  <31.164560, 38.748974, 34.376167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.148981, 38.940025, 34.520588>,  <31.123016, 39.258442, 34.761288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148981, 38.940025, 34.520588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458698, -0.511737, 0.726444,
		-0.886218, -0.323178, 0.331925,
		0.064912, -0.796041, -0.601752,
		31.168455, 38.701214, 34.340061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810514, 38.726551, 35.099148>,  <31.123016, 39.258442, 34.761288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810514, 38.726551, 35.099148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.046211, 38.540016, 34.835232>,  <31.187630, 38.428097, 34.676880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.046211, 38.540016, 34.835232>,  <30.810514, 38.726551, 35.099148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046211, 38.540016, 34.835232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363830, -0.575988, 0.732028,
		-0.721402, -0.671395, -0.169731,
		0.589243, -0.466333, -0.659792,
		31.222984, 38.400116, 34.637295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944704, 38.066372, 35.350342>,  <30.810514, 38.726551, 35.099148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944704, 38.066372, 35.350342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.233864, 38.101646, 35.076221>,  <31.407360, 38.122810, 34.911751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.233864, 38.101646, 35.076221>,  <30.944704, 38.066372, 35.350342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233864, 38.101646, 35.076221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522127, -0.719324, 0.458210,
		-0.452545, -0.689054, -0.566045,
		0.722902, 0.088187, -0.685300,
		31.450735, 38.128101, 34.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231873, 37.453342, 35.353485>,  <30.944704, 38.066372, 35.350342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231873, 37.453342, 35.353485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497185, 37.653080, 35.130520>,  <31.656372, 37.772923, 34.996738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497185, 37.653080, 35.130520>,  <31.231873, 37.453342, 35.353485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497185, 37.653080, 35.130520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718433, -0.633431, 0.287435,
		-0.209554, -0.591115, -0.778890,
		0.663281, 0.499347, -0.557415,
		31.696169, 37.802883, 34.963295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471085, 36.902973, 34.848984>,  <31.231873, 37.453342, 35.353485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471085, 36.902973, 34.848984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700249, 37.214172, 34.952126>,  <31.837748, 37.400894, 35.014011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700249, 37.214172, 34.952126>,  <31.471085, 36.902973, 34.848984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700249, 37.214172, 34.952126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595889, -0.611380, 0.520702,
		0.562753, -0.144663, -0.813868,
		0.572909, 0.778002, 0.257853,
		31.872122, 37.447575, 35.029480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121819, 36.640732, 34.883255>,  <31.471085, 36.902973, 34.848984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121819, 36.640732, 34.883255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156929, 36.978188, 35.095131>,  <32.177994, 37.180660, 35.222256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156929, 36.978188, 35.095131>,  <32.121819, 36.640732, 34.883255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156929, 36.978188, 35.095131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718365, -0.421987, 0.553063,
		0.690107, 0.331963, -0.643081,
		0.087776, 0.843639, 0.529687,
		32.183262, 37.231277, 35.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809467, 36.829754, 34.831982>,  <32.121819, 36.640732, 34.883255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809467, 36.829754, 34.831982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672325, 37.010098, 35.161629>,  <32.590038, 37.118305, 35.359417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672325, 37.010098, 35.161629>,  <32.809467, 36.829754, 34.831982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672325, 37.010098, 35.161629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760065, -0.382408, 0.525419,
		0.552041, 0.806527, -0.211574,
		-0.342857, 0.450863, 0.824119,
		32.569469, 37.145355, 35.408863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319927, 37.299526, 34.453754>,  <32.809467, 36.829754, 34.831982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319927, 37.299526, 34.453754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.624367, 37.209370, 34.210468>,  <33.807030, 37.155273, 34.064495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.624367, 37.209370, 34.210468>,  <33.319927, 37.299526, 34.453754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624367, 37.209370, 34.210468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542142, 0.293743, -0.787272,
		0.356106, 0.928931, 0.101371,
		0.761098, -0.225395, -0.608216,
		33.852695, 37.141750, 34.028004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312195, 37.862919, 34.045300>,  <33.319927, 37.299526, 34.453754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312195, 37.862919, 34.045300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541458, 37.604088, 33.844189>,  <33.679016, 37.448788, 33.723522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541458, 37.604088, 33.844189>,  <33.312195, 37.862919, 34.045300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541458, 37.604088, 33.844189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254081, 0.442984, -0.859772,
		0.779062, 0.620527, 0.089488,
		0.573154, -0.647079, -0.502776,
		33.713406, 37.409966, 33.693356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682461, 38.263222, 33.447681>,  <33.312195, 37.862919, 34.045300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682461, 38.263222, 33.447681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.691357, 37.875877, 33.348259>,  <33.696693, 37.643471, 33.288605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.691357, 37.875877, 33.348259>,  <33.682461, 38.263222, 33.447681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691357, 37.875877, 33.348259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220799, 0.237719, -0.945906,
		0.975066, 0.075920, -0.208526,
		0.022243, -0.968363, -0.248554,
		33.698029, 37.585369, 33.273693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961464, 38.274563, 32.791050>,  <33.682461, 38.263222, 33.447681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961464, 38.274563, 32.791050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749428, 37.937164, 32.825729>,  <33.622208, 37.734726, 32.846539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749428, 37.937164, 32.825729>,  <33.961464, 38.274563, 32.791050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749428, 37.937164, 32.825729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467060, 0.205112, -0.860107,
		0.707716, -0.496427, -0.502691,
		-0.530088, -0.843498, 0.086700,
		33.590401, 37.684116, 32.851738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182720, 37.942970, 32.183384>,  <33.961464, 38.274563, 32.791050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182720, 37.942970, 32.183384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859077, 37.744232, 32.308918>,  <33.664890, 37.624989, 32.384239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859077, 37.744232, 32.308918>,  <34.182720, 37.942970, 32.183384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859077, 37.744232, 32.308918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354401, -0.013461, -0.934997,
		0.468771, -0.867736, -0.165190,
		-0.809107, -0.496843, 0.313837,
		33.616344, 37.595181, 32.403069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118073, 37.502975, 31.709438>,  <34.182720, 37.942970, 32.183384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118073, 37.502975, 31.709438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752281, 37.513817, 31.870930>,  <33.532806, 37.520321, 31.967825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752281, 37.513817, 31.870930>,  <34.118073, 37.502975, 31.709438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752281, 37.513817, 31.870930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394193, 0.165536, -0.903997,
		-0.091333, -0.985831, -0.140695,
		-0.914478, 0.027103, 0.403727,
		33.477940, 37.521946, 31.992048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685509, 37.225479, 31.093651>,  <34.118073, 37.502975, 31.709438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685509, 37.225479, 31.093651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.403812, 37.356789, 31.345453>,  <33.234795, 37.435574, 31.496534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.403812, 37.356789, 31.345453>,  <33.685509, 37.225479, 31.093651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403812, 37.356789, 31.345453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600858, 0.196711, -0.774774,
		-0.378173, -0.923871, 0.058717,
		-0.704241, 0.328279, 0.629506,
		33.192539, 37.455273, 31.534306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007462, 37.164894, 30.743845>,  <33.685509, 37.225479, 31.093651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007462, 37.164894, 30.743845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931759, 37.441990, 31.022209>,  <32.886337, 37.608246, 31.189228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931759, 37.441990, 31.022209>,  <33.007462, 37.164894, 30.743845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931759, 37.441990, 31.022209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588660, 0.487201, -0.645070,
		-0.785915, -0.531738, 0.315583,
		-0.189256, 0.692741, 0.695911,
		32.874981, 37.649811, 31.230982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407909, 37.358234, 30.649614>,  <33.007462, 37.164894, 30.743845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407909, 37.358234, 30.649614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528526, 37.672966, 30.865009>,  <32.600899, 37.861805, 30.994246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528526, 37.672966, 30.865009>,  <32.407909, 37.358234, 30.649614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528526, 37.672966, 30.865009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553333, 0.604355, -0.573217,
		-0.776462, -0.125113, 0.617619,
		0.301544, 0.786830, 0.538488,
		32.618988, 37.909016, 31.026556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755768, 37.723579, 30.915167>,  <32.407909, 37.358234, 30.649614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755768, 37.723579, 30.915167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073746, 37.957924, 30.852139>,  <32.264534, 38.098530, 30.814322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073746, 37.957924, 30.852139>,  <31.755768, 37.723579, 30.915167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073746, 37.957924, 30.852139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570708, 0.634043, -0.521807,
		-0.205799, 0.504736, 0.838385,
		0.794946, 0.585860, -0.157572,
		32.312229, 38.133682, 30.804867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507626, 38.380241, 30.998148>,  <31.755768, 37.723579, 30.915167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507626, 38.380241, 30.998148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825888, 38.362171, 30.756523>,  <32.016846, 38.351330, 30.611549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825888, 38.362171, 30.756523>,  <31.507626, 38.380241, 30.998148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825888, 38.362171, 30.756523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431030, 0.658436, -0.616988,
		0.425609, 0.751279, 0.504417,
		0.795657, -0.045177, -0.604060,
		32.064587, 38.348618, 30.575306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808359, 39.047947, 30.874622>,  <31.507626, 38.380241, 30.998148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808359, 39.047947, 30.874622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.924942, 38.839592, 30.553692>,  <31.994892, 38.714581, 30.361134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.924942, 38.839592, 30.553692>,  <31.808359, 39.047947, 30.874622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924942, 38.839592, 30.553692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359728, 0.717494, -0.596488,
		0.886368, 0.462472, 0.021743,
		0.291459, -0.520886, -0.802328,
		32.012379, 38.683327, 30.312994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145309, 39.423546, 30.480028>,  <31.808359, 39.047947, 30.874622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145309, 39.423546, 30.480028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.995485, 39.159561, 30.219519>,  <31.905590, 39.001171, 30.063213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.995485, 39.159561, 30.219519>,  <32.145309, 39.423546, 30.480028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995485, 39.159561, 30.219519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494573, 0.736345, -0.461729,
		0.784285, 0.149156, -0.602204,
		-0.374560, -0.659961, -0.651273,
		31.883118, 38.961575, 30.024137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237770, 39.680355, 29.808941>,  <32.145309, 39.423546, 30.480028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237770, 39.680355, 29.808941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.933941, 39.422897, 29.771494>,  <31.751642, 39.268421, 29.749025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.933941, 39.422897, 29.771494>,  <32.237770, 39.680355, 29.808941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933941, 39.422897, 29.771494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573146, 0.730411, -0.371488,
		0.307485, -0.228517, -0.923706,
		-0.759576, -0.643646, -0.093617,
		31.706068, 39.229805, 29.743408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926167, 39.676952, 29.383932>,  <32.237770, 39.680355, 29.808941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926167, 39.676952, 29.383932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095848, 39.879723, 29.083778>,  <33.197659, 40.001385, 28.903687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095848, 39.879723, 29.083778>,  <32.926167, 39.676952, 29.383932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095848, 39.879723, 29.083778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904772, -0.202539, 0.374654,
		0.037940, -0.837856, -0.544572,
		0.424202, 0.506928, -0.750384,
		33.223110, 40.031799, 28.858664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448364, 39.182240, 28.982670>,  <32.926167, 39.676952, 29.383932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448364, 39.182240, 28.982670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566628, 39.561928, 28.939669>,  <33.637585, 39.789742, 28.913868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566628, 39.561928, 28.939669>,  <33.448364, 39.182240, 28.982670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566628, 39.561928, 28.939669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888137, -0.231680, 0.396908,
		0.351848, -0.212828, -0.911541,
		0.295659, 0.949225, -0.107504,
		33.655327, 39.846695, 28.907417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168652, 39.129375, 28.734529>,  <33.448364, 39.182240, 28.982670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168652, 39.129375, 28.734529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.111492, 39.492901, 28.891315>,  <34.077198, 39.711018, 28.985386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.111492, 39.492901, 28.891315>,  <34.168652, 39.129375, 28.734529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111492, 39.492901, 28.891315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872623, -0.071184, 0.483180,
		0.467023, 0.411081, -0.782881,
		-0.142897, 0.908815, 0.391963,
		34.068623, 39.765545, 29.008904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828602, 39.461468, 28.669806>,  <34.168652, 39.129375, 28.734529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828602, 39.461468, 28.669806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651958, 39.654678, 28.972239>,  <34.545971, 39.770607, 29.153698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651958, 39.654678, 28.972239>,  <34.828602, 39.461468, 28.669806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651958, 39.654678, 28.972239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877067, 0.054860, 0.477226,
		0.189035, 0.873884, -0.447875,
		-0.441611, 0.483029, 0.756084,
		34.519474, 39.799587, 29.199064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317165, 39.916615, 28.927412>,  <34.828602, 39.461468, 28.669806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317165, 39.916615, 28.927412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064377, 39.879082, 29.235126>,  <34.912704, 39.856560, 29.419756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064377, 39.879082, 29.235126>,  <35.317165, 39.916615, 28.927412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064377, 39.879082, 29.235126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720448, 0.294664, 0.627796,
		-0.285592, 0.950982, -0.118616,
		-0.631975, -0.093837, 0.769287,
		34.874783, 39.850929, 29.465912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453041, 40.476040, 29.365990>,  <35.317165, 39.916615, 28.927412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453041, 40.476040, 29.365990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269062, 40.227661, 29.619879>,  <35.158676, 40.078632, 29.772213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269062, 40.227661, 29.619879>,  <35.453041, 40.476040, 29.365990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269062, 40.227661, 29.619879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633037, 0.271956, 0.724778,
		-0.622666, 0.735163, 0.267997,
		-0.459946, -0.620947, 0.634724,
		35.131077, 40.041378, 29.810295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425701, 40.819199, 29.984688>,  <35.453041, 40.476040, 29.365990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425701, 40.819199, 29.984688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338791, 40.444290, 30.093731>,  <35.286644, 40.219345, 30.159157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338791, 40.444290, 30.093731>,  <35.425701, 40.819199, 29.984688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338791, 40.444290, 30.093731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620080, 0.083156, 0.780119,
		-0.753853, 0.338536, 0.563116,
		-0.217272, -0.937272, 0.272607,
		35.273609, 40.163109, 30.175512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371571, 40.750710, 30.684912>,  <35.425701, 40.819199, 29.984688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371571, 40.750710, 30.684912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398853, 40.354080, 30.640844>,  <35.415222, 40.116104, 30.614405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398853, 40.354080, 30.640844>,  <35.371571, 40.750710, 30.684912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398853, 40.354080, 30.640844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512084, -0.059974, 0.856839,
		-0.856223, -0.114860, 0.503676,
		0.068209, -0.991570, -0.110168,
		35.419315, 40.056610, 30.607794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089596, 40.375481, 31.292650>,  <35.371571, 40.750710, 30.684912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089596, 40.375481, 31.292650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360886, 40.141815, 31.114317>,  <35.523659, 40.001617, 31.007317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360886, 40.141815, 31.114317>,  <35.089596, 40.375481, 31.292650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360886, 40.141815, 31.114317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493966, -0.086771, 0.865141,
		-0.544066, -0.806987, 0.229705,
		0.678226, -0.584160, -0.445833,
		35.564354, 39.966568, 30.980566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241402, 39.789906, 31.732746>,  <35.089596, 40.375481, 31.292650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241402, 39.789906, 31.732746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564697, 39.796646, 31.497303>,  <35.758675, 39.800690, 31.356037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564697, 39.796646, 31.497303>,  <35.241402, 39.789906, 31.732746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564697, 39.796646, 31.497303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571964, -0.260136, 0.777938,
		-0.140006, -0.965425, -0.219893,
		0.808243, 0.016855, -0.588609,
		35.807171, 39.801704, 31.320721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528111, 39.146763, 31.849329>,  <35.241402, 39.789906, 31.732746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528111, 39.146763, 31.849329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808613, 39.388283, 31.697720>,  <35.976913, 39.533195, 31.606754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808613, 39.388283, 31.697720>,  <35.528111, 39.146763, 31.849329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808613, 39.388283, 31.697720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686455, -0.428425, 0.587563,
		0.192387, -0.672219, -0.714919,
		0.701260, 0.603800, -0.379025,
		36.018990, 39.569424, 31.584013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055462, 38.684917, 31.808985>,  <35.528111, 39.146763, 31.849329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055462, 38.684917, 31.808985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257874, 39.029190, 31.786507>,  <36.379322, 39.235756, 31.773020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257874, 39.029190, 31.786507>,  <36.055462, 38.684917, 31.808985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257874, 39.029190, 31.786507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614613, -0.314110, 0.723592,
		0.605134, -0.400696, -0.687936,
		0.506028, 0.860685, -0.056194,
		36.409683, 39.287395, 31.769648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671700, 38.521484, 31.758038>,  <36.055462, 38.684917, 31.808985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671700, 38.521484, 31.758038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699142, 38.901524, 31.879765>,  <36.715611, 39.129547, 31.952801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699142, 38.901524, 31.879765>,  <36.671700, 38.521484, 31.758038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699142, 38.901524, 31.879765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689858, -0.265536, 0.673488,
		0.720686, 0.163729, -0.673650,
		0.068609, 0.950097, 0.304318,
		36.719727, 39.186554, 31.971060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373573, 38.693615, 31.918173>,  <36.671700, 38.521484, 31.758038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373573, 38.693615, 31.918173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190372, 38.965443, 32.147404>,  <37.080452, 39.128540, 32.284943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190372, 38.965443, 32.147404>,  <37.373573, 38.693615, 31.918173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190372, 38.965443, 32.147404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739534, -0.066452, 0.669831,
		0.493281, 0.730592, -0.472133,
		-0.457999, 0.679573, 0.573077,
		37.052971, 39.169315, 32.319328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.505112, 43.281654, 28.958679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127926, 43.354008, 29.070467>,  <33.901615, 43.397419, 29.137539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127926, 43.354008, 29.070467>,  <34.505112, 43.281654, 28.958679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127926, 43.354008, 29.070467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314933, -0.212648, -0.924986,
		-0.107883, -0.960241, 0.257485,
		-0.942963, 0.180881, 0.279470,
		33.845036, 43.408272, 29.154308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179176, 43.059563, 28.300184>,  <34.505112, 43.281654, 28.958679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179176, 43.059563, 28.300184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900181, 43.229527, 28.530996>,  <33.732784, 43.331505, 28.669483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900181, 43.229527, 28.530996>,  <34.179176, 43.059563, 28.300184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900181, 43.229527, 28.530996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557865, 0.183439, -0.809405,
		-0.449771, -0.886456, 0.109093,
		-0.697490, 0.424906, 0.577028,
		33.690933, 43.356998, 28.704105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548141, 42.754749, 28.195700>,  <34.179176, 43.059563, 28.300184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548141, 42.754749, 28.195700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457382, 43.107277, 28.361496>,  <33.402927, 43.318794, 28.460974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457382, 43.107277, 28.361496>,  <33.548141, 42.754749, 28.195700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457382, 43.107277, 28.361496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711808, 0.140408, -0.688197,
		-0.664716, -0.451187, 0.595469,
		-0.226897, 0.881315, 0.414490,
		33.389313, 43.371670, 28.485844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784519, 42.603497, 28.171202>,  <33.548141, 42.754749, 28.195700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784519, 42.603497, 28.171202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863022, 42.995625, 28.179739>,  <32.910122, 43.230900, 28.184862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863022, 42.995625, 28.179739>,  <32.784519, 42.603497, 28.171202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863022, 42.995625, 28.179739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657113, 0.147644, -0.739191,
		-0.727796, 0.131044, 0.673157,
		0.196254, 0.980320, 0.021344,
		32.921898, 43.289722, 28.186142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173779, 42.939320, 28.208189>,  <32.784519, 42.603497, 28.171202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173779, 42.939320, 28.208189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426411, 43.207935, 28.053196>,  <32.577991, 43.369106, 27.960199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426411, 43.207935, 28.053196>,  <32.173779, 42.939320, 28.208189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426411, 43.207935, 28.053196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638750, 0.167423, -0.750978,
		-0.439437, 0.721807, 0.534686,
		0.631581, 0.671538, -0.387482,
		32.615887, 43.409397, 27.936951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794174, 43.572952, 28.020391>,  <32.173779, 42.939320, 28.208189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794174, 43.572952, 28.020391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136856, 43.590588, 27.814823>,  <32.342464, 43.601170, 27.691483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136856, 43.590588, 27.814823>,  <31.794174, 43.572952, 28.020391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136856, 43.590588, 27.814823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500499, 0.311999, -0.807563,
		0.124738, 0.949059, 0.289358,
		0.856704, 0.044090, -0.513921,
		32.393867, 43.603813, 27.660646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723604, 44.152626, 27.660776>,  <31.794174, 43.572952, 28.020391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723604, 44.152626, 27.660776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018566, 43.953518, 27.478146>,  <32.195541, 43.834053, 27.368567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018566, 43.953518, 27.478146>,  <31.723604, 44.152626, 27.660776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018566, 43.953518, 27.478146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500189, 0.051848, -0.864363,
		0.453924, 0.865760, -0.210745,
		0.737404, -0.497767, -0.456578,
		32.239788, 43.804188, 27.341171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841711, 44.511158, 27.098970>,  <31.723604, 44.152626, 27.660776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841711, 44.511158, 27.098970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009613, 44.165642, 26.987488>,  <32.110355, 43.958332, 26.920599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009613, 44.165642, 26.987488>,  <31.841711, 44.511158, 27.098970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009613, 44.165642, 26.987488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387319, 0.107234, -0.915688,
		0.820846, 0.492314, -0.289548,
		0.419757, -0.863787, -0.278705,
		32.135540, 43.906506, 26.903875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218147, 44.628555, 26.431437>,  <31.841711, 44.511158, 27.098970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218147, 44.628555, 26.431437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112946, 44.244179, 26.465893>,  <32.049824, 44.013554, 26.486567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112946, 44.244179, 26.465893>,  <32.218147, 44.628555, 26.431437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112946, 44.244179, 26.465893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391161, 0.024589, -0.919994,
		0.881943, -0.275653, -0.382350,
		-0.263001, -0.960943, 0.086139,
		32.034046, 43.955894, 26.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369667, 44.436047, 25.764669>,  <32.218147, 44.628555, 26.431437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369667, 44.436047, 25.764669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121685, 44.166748, 25.925865>,  <31.972897, 44.005169, 26.022583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121685, 44.166748, 25.925865>,  <32.369667, 44.436047, 25.764669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121685, 44.166748, 25.925865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461902, -0.102032, -0.881043,
		0.634278, -0.732343, -0.247720,
		-0.619950, -0.673248, 0.402987,
		31.935699, 43.964775, 26.046761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253952, 43.926880, 25.232565>,  <32.369667, 44.436047, 25.764669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253952, 43.926880, 25.232565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954454, 43.886002, 25.494541>,  <31.774757, 43.861477, 25.651726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954454, 43.886002, 25.494541>,  <32.253952, 43.926880, 25.232565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954454, 43.886002, 25.494541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651206, -0.071087, -0.755564,
		0.123772, -0.992221, -0.013323,
		-0.748739, -0.102194, 0.654939,
		31.729832, 43.855343, 25.691023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850609, 43.260963, 25.079578>,  <32.253952, 43.926880, 25.232565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850609, 43.260963, 25.079578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635139, 43.535801, 25.274612>,  <31.505857, 43.700703, 25.391632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635139, 43.535801, 25.274612>,  <31.850609, 43.260963, 25.079578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635139, 43.535801, 25.274612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754852, -0.136548, -0.641523,
		-0.374206, -0.713625, 0.592207,
		-0.538672, 0.687091, 0.487585,
		31.473537, 43.741928, 25.420889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226936, 43.036995, 25.551283>,  <31.850609, 43.260963, 25.079578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226936, 43.036995, 25.551283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213425, 43.368507, 25.327862>,  <31.205318, 43.567413, 25.193810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213425, 43.368507, 25.327862>,  <31.226936, 43.036995, 25.551283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213425, 43.368507, 25.327862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664219, -0.436206, -0.607073,
		-0.746775, 0.350495, 0.565226,
		-0.033779, 0.828781, -0.558553,
		31.203291, 43.617142, 25.160295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552999, 43.423157, 25.532410>,  <31.226936, 43.036995, 25.551283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552999, 43.423157, 25.532410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749451, 43.448650, 25.184908>,  <30.867321, 43.463947, 24.976408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749451, 43.448650, 25.184908>,  <30.552999, 43.423157, 25.532410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749451, 43.448650, 25.184908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745021, -0.486047, -0.456840,
		-0.451372, 0.871605, -0.191225,
		0.491129, 0.063738, -0.868752,
		30.896790, 43.467773, 24.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289839, 43.075077, 24.949379>,  <30.552999, 43.423157, 25.532410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289839, 43.075077, 24.949379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254824, 42.702206, 24.808874>,  <30.233814, 42.478485, 24.724571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254824, 42.702206, 24.808874>,  <30.289839, 43.075077, 24.949379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254824, 42.702206, 24.808874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133597, -0.360418, 0.923175,
		-0.987162, 0.033883, 0.156086,
		-0.087536, -0.932175, -0.351264,
		30.228563, 42.422554, 24.703495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045275, 42.720169, 25.463741>,  <30.289839, 43.075077, 24.949379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045275, 42.720169, 25.463741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195278, 42.414787, 25.253407>,  <30.285280, 42.231560, 25.127205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195278, 42.414787, 25.253407>,  <30.045275, 42.720169, 25.463741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195278, 42.414787, 25.253407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302293, -0.435518, 0.847905,
		-0.876350, -0.476927, 0.067465,
		0.375007, -0.763456, -0.525838,
		30.307781, 42.185749, 25.095655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877617, 42.102036, 25.805901>,  <30.045275, 42.720169, 25.463741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877617, 42.102036, 25.805901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.174181, 41.937946, 25.593477>,  <30.352119, 41.839493, 25.466022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.174181, 41.937946, 25.593477>,  <29.877617, 42.102036, 25.805901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174181, 41.937946, 25.593477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214672, -0.604803, 0.766896,
		-0.635788, -0.682588, -0.360343,
		0.741411, -0.410227, -0.531059,
		30.396605, 41.814877, 25.434160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770401, 41.384052, 25.926754>,  <29.877617, 42.102036, 25.805901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770401, 41.384052, 25.926754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.139616, 41.430473, 25.780037>,  <30.361145, 41.458328, 25.692007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.139616, 41.430473, 25.780037>,  <29.770401, 41.384052, 25.926754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139616, 41.430473, 25.780037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363338, -0.576354, 0.731984,
		-0.126450, -0.808917, -0.574163,
		0.923036, 0.116056, -0.366791,
		30.416527, 41.465290, 25.670000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090401, 40.802074, 26.074055>,  <29.770401, 41.384052, 25.926754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090401, 40.802074, 26.074055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.408470, 41.022728, 25.973333>,  <30.599312, 41.155121, 25.912901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.408470, 41.022728, 25.973333>,  <30.090401, 40.802074, 26.074055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408470, 41.022728, 25.973333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563267, -0.518157, 0.643618,
		0.224567, -0.653618, -0.722740,
		0.795173, 0.551631, -0.251801,
		30.647022, 41.188217, 25.897793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695024, 40.318680, 26.066404>,  <30.090401, 40.802074, 26.074055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695024, 40.318680, 26.066404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856600, 40.681625, 26.112932>,  <30.953545, 40.899391, 26.140848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856600, 40.681625, 26.112932>,  <30.695024, 40.318680, 26.066404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856600, 40.681625, 26.112932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693802, -0.386744, 0.607510,
		0.596216, -0.164693, -0.785749,
		0.403937, 0.907362, 0.116319,
		30.977781, 40.953835, 26.147827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477524, 40.224609, 26.035934>,  <30.695024, 40.318680, 26.066404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477524, 40.224609, 26.035934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.393778, 40.562145, 26.233559>,  <31.343531, 40.764668, 26.352133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.393778, 40.562145, 26.233559>,  <31.477524, 40.224609, 26.035934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393778, 40.562145, 26.233559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708450, -0.217359, 0.671456,
		0.673992, 0.490597, -0.552313,
		-0.209364, 0.843842, 0.494061,
		31.330969, 40.815296, 26.381777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066216, 40.506699, 26.116047>,  <31.477524, 40.224609, 26.035934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066216, 40.506699, 26.116047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852812, 40.707462, 26.388355>,  <31.724770, 40.827923, 26.551741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852812, 40.707462, 26.388355>,  <32.066216, 40.506699, 26.116047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852812, 40.707462, 26.388355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690542, -0.206280, 0.693253,
		0.488382, 0.839960, -0.236539,
		-0.533511, 0.501912, 0.680771,
		31.692759, 40.858036, 26.592587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588291, 40.975918, 26.472883>,  <32.066216, 40.506699, 26.116047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588291, 40.975918, 26.472883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272968, 40.924843, 26.713640>,  <32.083775, 40.894196, 26.858093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272968, 40.924843, 26.713640>,  <32.588291, 40.975918, 26.472883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272968, 40.924843, 26.713640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615282, -0.159647, 0.771972,
		-0.002484, 0.978881, 0.204417,
		-0.788303, -0.127692, 0.601891,
		32.036476, 40.886536, 26.894207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710537, 41.428085, 27.044395>,  <32.588291, 40.975918, 26.472883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710537, 41.428085, 27.044395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445213, 41.155529, 27.168158>,  <32.286018, 40.991997, 27.242414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445213, 41.155529, 27.168158>,  <32.710537, 41.428085, 27.044395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445213, 41.155529, 27.168158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510011, -0.109042, 0.853228,
		-0.547642, 0.723753, 0.419845,
		-0.663307, -0.681389, 0.309407,
		32.246220, 40.951111, 27.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718872, 41.470840, 27.781721>,  <32.710537, 41.428085, 27.044395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718872, 41.470840, 27.781721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523991, 41.127758, 27.716032>,  <32.407063, 40.921909, 27.676619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523991, 41.127758, 27.716032>,  <32.718872, 41.470840, 27.781721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523991, 41.127758, 27.716032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353684, -0.365735, 0.860898,
		-0.798464, 0.361345, 0.481544,
		-0.487199, -0.857711, -0.164224,
		32.377831, 40.870445, 27.666765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524216, 41.251163, 28.468300>,  <32.718872, 41.470840, 27.781721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524216, 41.251163, 28.468300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516132, 40.907410, 28.263927>,  <32.511284, 40.701157, 28.141304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516132, 40.907410, 28.263927>,  <32.524216, 41.251163, 28.468300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516132, 40.907410, 28.263927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651303, -0.399039, 0.645424,
		-0.758549, -0.319726, 0.567784,
		-0.020209, -0.859385, -0.510929,
		32.510071, 40.649593, 28.110649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313179, 40.762775, 28.932270>,  <32.524216, 41.251163, 28.468300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313179, 40.762775, 28.932270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512589, 40.599804, 28.626204>,  <32.632233, 40.502022, 28.442564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512589, 40.599804, 28.626204>,  <32.313179, 40.762775, 28.932270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512589, 40.599804, 28.626204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507119, -0.578813, 0.638597,
		-0.703069, -0.706386, -0.081938,
		0.498522, -0.407425, -0.765167,
		32.662144, 40.477577, 28.396654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394951, 40.137257, 29.136911>,  <32.313179, 40.762775, 28.932270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394951, 40.137257, 29.136911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662247, 40.188927, 28.843853>,  <32.822624, 40.219929, 28.668018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662247, 40.188927, 28.843853>,  <32.394951, 40.137257, 29.136911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662247, 40.188927, 28.843853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650823, -0.578587, 0.491596,
		-0.360394, -0.805326, -0.470708,
		0.668241, 0.129179, -0.732644,
		32.862720, 40.227680, 28.624060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969349, 39.556957, 28.749655>,  <32.394951, 40.137257, 29.136911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969349, 39.556957, 28.749655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680801, 39.429237, 28.995478>,  <31.507673, 39.352604, 29.142971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680801, 39.429237, 28.995478>,  <31.969349, 39.556957, 28.749655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680801, 39.429237, 28.995478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634643, 0.659994, -0.402039,
		-0.277232, -0.680041, -0.678739,
		-0.721367, -0.319299, 0.614555,
		31.464392, 39.333447, 29.179844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432516, 39.396141, 28.361254>,  <31.969349, 39.556957, 28.749655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432516, 39.396141, 28.361254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271809, 39.450928, 28.723431>,  <31.175385, 39.483799, 28.940737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271809, 39.450928, 28.723431>,  <31.432516, 39.396141, 28.361254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271809, 39.450928, 28.723431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746354, 0.523927, -0.410434,
		-0.530602, -0.840678, -0.108267,
		-0.401767, 0.136971, 0.905440,
		31.151279, 39.492020, 28.995062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712389, 39.400867, 28.180981>,  <31.432516, 39.396141, 28.361254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712389, 39.400867, 28.180981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.724537, 39.574516, 28.541117>,  <30.731825, 39.678707, 28.757198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.724537, 39.574516, 28.541117>,  <30.712389, 39.400867, 28.180981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724537, 39.574516, 28.541117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655196, 0.688895, -0.310068,
		-0.754848, -0.580483, 0.305357,
		0.030369, 0.434123, 0.900342,
		30.733648, 39.704754, 28.811218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999228, 39.401306, 28.474512>,  <30.712389, 39.400867, 28.180981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999228, 39.401306, 28.474512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189915, 39.672779, 28.697985>,  <30.304327, 39.835663, 28.832067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189915, 39.672779, 28.697985>,  <29.999228, 39.401306, 28.474512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189915, 39.672779, 28.697985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700575, 0.677216, -0.224884,
		-0.530973, -0.284191, 0.798312,
		0.476720, 0.678685, 0.558681,
		30.332932, 39.876385, 28.865589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587723, 39.517723, 29.037062>,  <29.999228, 39.401306, 28.474512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587723, 39.517723, 29.037062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834425, 39.828346, 28.985577>,  <29.982447, 40.014721, 28.954685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834425, 39.828346, 28.985577>,  <29.587723, 39.517723, 29.037062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834425, 39.828346, 28.985577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777669, 0.575816, -0.252321,
		-0.121828, 0.255715, 0.959045,
		0.616756, 0.776560, -0.128711,
		30.019451, 40.061314, 28.946962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196846, 40.057232, 29.276230>,  <29.587723, 39.517723, 29.037062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196846, 40.057232, 29.276230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470909, 40.213387, 29.030251>,  <29.635347, 40.307079, 28.882664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470909, 40.213387, 29.030251>,  <29.196846, 40.057232, 29.276230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470909, 40.213387, 29.030251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675344, 0.656762, -0.335521,
		0.272891, 0.645185, 0.713629,
		0.685158, 0.390385, -0.614946,
		29.676456, 40.330502, 28.845766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073496, 40.877136, 29.258877>,  <29.196846, 40.057232, 29.276230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073496, 40.877136, 29.258877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277737, 40.766602, 28.933197>,  <29.400280, 40.700279, 28.737789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277737, 40.766602, 28.933197>,  <29.073496, 40.877136, 29.258877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277737, 40.766602, 28.933197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572531, 0.597209, -0.561738,
		0.641479, 0.752979, 0.146722,
		0.510600, -0.276340, -0.814201,
		29.430916, 40.683701, 28.688936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992901, 41.432373, 29.759531>,  <29.073496, 40.877136, 29.258877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992901, 41.432373, 29.759531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739586, 41.507439, 30.059858>,  <28.587597, 41.552479, 30.240055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739586, 41.507439, 30.059858>,  <28.992901, 41.432373, 29.759531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739586, 41.507439, 30.059858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665226, -0.363790, 0.652021,
		0.395501, 0.912381, 0.105545,
		-0.633288, 0.187663, 0.750819,
		28.549599, 41.563736, 30.285105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328615, 41.759102, 30.215282>,  <28.992901, 41.432373, 29.759531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328615, 41.759102, 30.215282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.024708, 41.618790, 30.434265>,  <28.842363, 41.534603, 30.565655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.024708, 41.618790, 30.434265>,  <29.328615, 41.759102, 30.215282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024708, 41.618790, 30.434265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644330, -0.519043, 0.561634,
		0.087143, 0.779453, 0.620371,
		-0.759766, -0.350781, 0.547456,
		28.796778, 41.513554, 30.598501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526394, 41.771290, 30.869297>,  <29.328615, 41.759102, 30.215282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526394, 41.771290, 30.869297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240122, 41.497780, 30.926214>,  <29.068357, 41.333672, 30.960365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240122, 41.497780, 30.926214>,  <29.526394, 41.771290, 30.869297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240122, 41.497780, 30.926214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555333, -0.433563, 0.709668,
		-0.423562, 0.586916, 0.690018,
		-0.715682, -0.683778, 0.142293,
		29.025417, 41.292648, 30.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302124, 41.718552, 31.613062>,  <29.526394, 41.771290, 30.869297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302124, 41.718552, 31.613062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202269, 41.360874, 31.464415>,  <29.142355, 41.146267, 31.375227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202269, 41.360874, 31.464415>,  <29.302124, 41.718552, 31.613062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202269, 41.360874, 31.464415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411125, -0.445334, 0.795395,
		-0.876731, 0.045781, 0.478798,
		-0.249639, -0.894193, -0.371616,
		29.127377, 41.092617, 31.352930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196276, 41.356411, 32.214100>,  <29.302124, 41.718552, 31.613062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196276, 41.356411, 32.214100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204870, 41.069969, 31.935038>,  <29.210028, 40.898102, 31.767599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204870, 41.069969, 31.935038>,  <29.196276, 41.356411, 32.214100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204870, 41.069969, 31.935038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378779, -0.639969, 0.668555,
		-0.925238, -0.278625, 0.257495,
		0.021487, -0.716106, -0.697661,
		29.211317, 40.855137, 31.725740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668442, 40.861301, 32.432667>,  <29.196276, 41.356411, 32.214100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668442, 40.861301, 32.432667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.954960, 40.698841, 32.205700>,  <29.126871, 40.601364, 32.069519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.954960, 40.698841, 32.205700>,  <28.668442, 40.861301, 32.432667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954960, 40.698841, 32.205700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186079, -0.672529, 0.716295,
		-0.672530, -0.618663, -0.406153,
		-0.716295, 0.406153, 0.567416,
		29.169847, 40.576996, 32.035477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666319, 40.187283, 32.647942>,  <28.668442, 40.861301, 32.432667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666319, 40.187283, 32.647942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005533, 40.208778, 32.437057>,  <29.209061, 40.221676, 32.310528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005533, 40.208778, 32.437057>,  <28.666319, 40.187283, 32.647942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005533, 40.208778, 32.437057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462524, -0.560651, 0.686835,
		-0.258668, -0.826307, -0.500308,
		0.848034, 0.053742, -0.527209,
		29.259943, 40.224899, 32.278896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.065977, 44.499760, 27.676952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447927, 44.412941, 27.595858>,  <29.677097, 44.360847, 27.547201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447927, 44.412941, 27.595858>,  <29.065977, 44.499760, 27.676952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447927, 44.412941, 27.595858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220983, 0.063132, 0.973232,
		-0.198442, -0.974117, 0.108248,
		0.954875, -0.217052, -0.202735,
		29.734390, 44.347824, 27.535036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291498, 43.956970, 28.208975>,  <29.065977, 44.499760, 27.676952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291498, 43.956970, 28.208975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621391, 44.131485, 28.065048>,  <29.819328, 44.236195, 27.978693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621391, 44.131485, 28.065048>,  <29.291498, 43.956970, 28.208975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621391, 44.131485, 28.065048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402919, -0.006861, 0.915210,
		0.396826, -0.899781, -0.181447,
		0.824733, 0.436288, -0.359816,
		29.868811, 44.262371, 27.957104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845331, 43.573154, 28.493484>,  <29.291498, 43.956970, 28.208975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845331, 43.573154, 28.493484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972612, 43.937916, 28.389809>,  <30.048981, 44.156773, 28.327602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972612, 43.937916, 28.389809>,  <29.845331, 43.573154, 28.493484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972612, 43.937916, 28.389809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457038, 0.091973, 0.884679,
		0.830581, -0.399966, -0.387509,
		0.318201, 0.911904, -0.259191,
		30.068073, 44.211487, 28.312052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380014, 43.466404, 28.805058>,  <29.845331, 43.573154, 28.493484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380014, 43.466404, 28.805058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366257, 43.858219, 28.725739>,  <30.358002, 44.093307, 28.678146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366257, 43.858219, 28.725739>,  <30.380014, 43.466404, 28.805058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366257, 43.858219, 28.725739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504179, 0.188322, 0.842816,
		0.862914, -0.070990, -0.500340,
		-0.034394, 0.979538, -0.198297,
		30.355938, 44.152081, 28.666250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065372, 43.719398, 28.742823>,  <30.380014, 43.466404, 28.805058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065372, 43.719398, 28.742823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818068, 44.011070, 28.860161>,  <30.669685, 44.186073, 28.930563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818068, 44.011070, 28.860161>,  <31.065372, 43.719398, 28.742823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818068, 44.011070, 28.860161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583061, 0.175227, 0.793307,
		0.527061, 0.661508, -0.533492,
		-0.618261, 0.729179, 0.293344,
		30.632589, 44.229824, 28.948164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520763, 44.196259, 29.104494>,  <31.065372, 43.719398, 28.742823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520763, 44.196259, 29.104494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180130, 44.365883, 29.227770>,  <30.975750, 44.467655, 29.301735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180130, 44.365883, 29.227770>,  <31.520763, 44.196259, 29.104494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180130, 44.365883, 29.227770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402354, 0.151876, 0.902799,
		0.336032, 0.892810, -0.299956,
		-0.851583, 0.424057, 0.308190,
		30.924656, 44.493099, 29.320227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719547, 44.763035, 29.555513>,  <31.520763, 44.196259, 29.104494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719547, 44.763035, 29.555513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338343, 44.696175, 29.656569>,  <31.109619, 44.656059, 29.717201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338343, 44.696175, 29.656569>,  <31.719547, 44.763035, 29.555513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338343, 44.696175, 29.656569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207668, 0.246676, 0.946586,
		-0.220546, 0.954573, -0.200373,
		-0.953013, -0.167155, 0.252638,
		31.052439, 44.646027, 29.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539900, 45.267586, 29.961544>,  <31.719547, 44.763035, 29.555513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539900, 45.267586, 29.961544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277184, 44.976242, 30.039635>,  <31.119555, 44.801434, 30.086489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277184, 44.976242, 30.039635>,  <31.539900, 45.267586, 29.961544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277184, 44.976242, 30.039635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238856, 0.044619, 0.970029,
		-0.715245, 0.683737, 0.144668,
		-0.656790, -0.728363, 0.195228,
		31.080147, 44.757732, 30.098204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014057, 45.570686, 30.553078>,  <31.539900, 45.267586, 29.961544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014057, 45.570686, 30.553078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022566, 45.170898, 30.562876>,  <31.027672, 44.931026, 30.568754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022566, 45.170898, 30.562876>,  <31.014057, 45.570686, 30.553078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022566, 45.170898, 30.562876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259237, 0.029175, 0.965373,
		-0.965579, -0.014186, 0.259722,
		0.021272, -0.999473, 0.024493,
		31.028948, 44.871056, 30.570223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689741, 45.378185, 31.167469>,  <31.014057, 45.570686, 30.553078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689741, 45.378185, 31.167469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885000, 45.042599, 31.071270>,  <31.002155, 44.841248, 31.013552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885000, 45.042599, 31.071270>,  <30.689741, 45.378185, 31.167469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885000, 45.042599, 31.071270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338749, -0.071823, 0.938132,
		-0.804338, -0.539416, 0.249140,
		0.488149, -0.838971, -0.240496,
		31.031445, 44.790909, 30.999121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818697, 45.162148, 31.738384>,  <30.689741, 45.378185, 31.167469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818697, 45.162148, 31.738384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046915, 44.908772, 31.529301>,  <31.183846, 44.756744, 31.403851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046915, 44.908772, 31.529301>,  <30.818697, 45.162148, 31.738384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046915, 44.908772, 31.529301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575693, -0.145441, 0.804627,
		-0.585711, -0.759996, 0.281689,
		0.570544, -0.633445, -0.522711,
		31.218079, 44.718739, 31.372488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807285, 44.537312, 32.143936>,  <30.818697, 45.162148, 31.738384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807285, 44.537312, 32.143936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132793, 44.576115, 31.914724>,  <31.328098, 44.599396, 31.777197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132793, 44.576115, 31.914724>,  <30.807285, 44.537312, 32.143936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132793, 44.576115, 31.914724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581138, -0.148591, 0.800125,
		-0.007531, -0.984129, -0.177293,
		0.813770, 0.097006, -0.573034,
		31.376925, 44.605217, 31.742815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264338, 44.052795, 32.354492>,  <30.807285, 44.537312, 32.143936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264338, 44.052795, 32.354492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082472, 44.048378, 32.710732>,  <29.973352, 44.045727, 32.924473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082472, 44.048378, 32.710732>,  <30.264338, 44.052795, 32.354492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082472, 44.048378, 32.710732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784960, 0.477449, -0.394817,
		-0.420855, -0.878590, -0.225745,
		-0.454664, -0.011040, 0.890595,
		29.946074, 44.045067, 32.977909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587597, 43.810883, 32.233307>,  <30.264338, 44.052795, 32.354492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587597, 43.810883, 32.233307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541265, 43.965275, 32.599388>,  <29.513466, 44.057911, 32.819038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541265, 43.965275, 32.599388>,  <29.587597, 43.810883, 32.233307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541265, 43.965275, 32.599388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837410, 0.457567, -0.298959,
		-0.534160, -0.801032, 0.270224,
		-0.115830, 0.385980, 0.915206,
		29.506516, 44.081070, 32.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853672, 43.714455, 32.434017>,  <29.587597, 43.810883, 32.233307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853672, 43.714455, 32.434017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935251, 44.000259, 32.701710>,  <28.984198, 44.171741, 32.862328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935251, 44.000259, 32.701710>,  <28.853672, 43.714455, 32.434017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935251, 44.000259, 32.701710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789215, 0.524485, -0.319461,
		-0.579263, -0.463017, 0.670873,
		0.203947, 0.714514, 0.669234,
		28.996435, 44.214615, 32.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250845, 43.838699, 32.828724>,  <28.853672, 43.714455, 32.434017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250845, 43.838699, 32.828724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482359, 44.164841, 32.822872>,  <28.621267, 44.360523, 32.819359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482359, 44.164841, 32.822872>,  <28.250845, 43.838699, 32.828724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482359, 44.164841, 32.822872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772115, 0.542143, -0.331541,
		-0.262389, 0.203189, 0.943327,
		0.578784, 0.815350, -0.014633,
		28.655994, 44.409447, 32.818481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766396, 44.338600, 32.960106>,  <28.250845, 43.838699, 32.828724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766396, 44.338600, 32.960106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088873, 44.533703, 32.826157>,  <28.282360, 44.650764, 32.745789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088873, 44.533703, 32.826157>,  <27.766396, 44.338600, 32.960106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088873, 44.533703, 32.826157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589463, 0.613563, -0.525427,
		-0.050815, 0.620993, 0.782167,
		0.806195, 0.487759, -0.334874,
		28.330732, 44.680031, 32.725693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599874, 45.040730, 32.990257>,  <27.766396, 44.338600, 32.960106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599874, 45.040730, 32.990257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909607, 45.009186, 32.739117>,  <28.095446, 44.990261, 32.588432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909607, 45.009186, 32.739117>,  <27.599874, 45.040730, 32.990257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909607, 45.009186, 32.739117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488292, 0.556613, -0.672126,
		0.402469, 0.827021, 0.392498,
		0.774331, -0.078856, -0.627848,
		28.141907, 44.985527, 32.550762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649147, 45.671154, 32.755699>,  <27.599874, 45.040730, 32.990257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649147, 45.671154, 32.755699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878979, 45.491642, 32.481922>,  <28.016878, 45.383934, 32.317657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878979, 45.491642, 32.481922>,  <27.649147, 45.671154, 32.755699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878979, 45.491642, 32.481922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218941, 0.721509, -0.656879,
		0.788622, 0.527281, 0.316309,
		0.574579, -0.448776, -0.684441,
		28.051352, 45.357010, 32.276588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809034, 46.192856, 32.161457>,  <27.649147, 45.671154, 32.755699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809034, 46.192856, 32.161457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830820, 45.824696, 32.006592>,  <27.843891, 45.603798, 31.913673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830820, 45.824696, 32.006592>,  <27.809034, 46.192856, 32.161457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830820, 45.824696, 32.006592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434856, 0.327170, -0.838963,
		0.898851, 0.214052, -0.382424,
		0.054464, -0.920403, -0.387159,
		27.847158, 45.548576, 31.890444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178671, 46.308170, 31.556919>,  <27.809034, 46.192856, 32.161457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178671, 46.308170, 31.556919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980221, 45.966763, 31.493208>,  <27.861151, 45.761917, 31.454981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980221, 45.966763, 31.493208>,  <28.178671, 46.308170, 31.556919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980221, 45.966763, 31.493208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444834, 0.407409, -0.797584,
		0.745643, -0.324848, -0.581799,
		-0.496124, -0.853517, -0.159278,
		27.831383, 45.710709, 31.445425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185705, 46.150074, 30.825089>,  <28.178671, 46.308170, 31.556919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185705, 46.150074, 30.825089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877323, 45.919502, 30.933430>,  <27.692295, 45.781158, 30.998434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877323, 45.919502, 30.933430>,  <28.185705, 46.150074, 30.825089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877323, 45.919502, 30.933430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532308, 0.349685, -0.770953,
		0.349685, -0.738547, -0.576427,
		0.770953, 0.576427, -0.270855,
		27.646038, 45.746574, 31.014687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886574, 45.999172, 30.200024>,  <28.185705, 46.150074, 30.825089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886574, 45.999172, 30.200024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597948, 45.871342, 30.445696>,  <27.424772, 45.794643, 30.593100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597948, 45.871342, 30.445696>,  <27.886574, 45.999172, 30.200024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597948, 45.871342, 30.445696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677450, 0.142856, -0.721563,
		0.142856, -0.936730, -0.319578,
		0.721563, 0.319578, -0.614180,
		27.381479, 45.775467, 30.629950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524998, 45.517384, 29.864000>,  <27.886574, 45.999172, 30.200024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524998, 45.517384, 29.864000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253601, 45.628262, 30.136122>,  <27.090763, 45.694790, 30.299395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253601, 45.628262, 30.136122>,  <27.524998, 45.517384, 29.864000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253601, 45.628262, 30.136122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689337, 0.079828, -0.720029,
		-0.253899, -0.957491, 0.136921,
		-0.678491, 0.277199, 0.680302,
		27.050055, 45.711422, 30.340212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948933, 45.206604, 29.605175>,  <27.524998, 45.517384, 29.864000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948933, 45.206604, 29.605175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802423, 45.487469, 29.849409>,  <26.714518, 45.655987, 29.995951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802423, 45.487469, 29.849409>,  <26.948933, 45.206604, 29.605175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802423, 45.487469, 29.849409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837558, 0.037099, -0.545088,
		-0.405391, -0.711052, 0.574511,
		-0.366272, 0.702160, 0.610587,
		26.692541, 45.698116, 30.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437895, 44.714668, 29.391251>,  <26.948933, 45.206604, 29.605175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437895, 44.714668, 29.391251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113966, 44.480282, 29.379690>,  <26.919609, 44.339649, 29.372753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113966, 44.480282, 29.379690>,  <27.437895, 44.714668, 29.391251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113966, 44.480282, 29.379690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539162, -0.762754, 0.357087,
		-0.231285, 0.273594, 0.933624,
		-0.809822, -0.585963, -0.028902,
		26.871019, 44.304493, 29.371019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443247, 44.305901, 30.008560>,  <27.437895, 44.714668, 29.391251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443247, 44.305901, 30.008560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220970, 44.091923, 29.753988>,  <27.087605, 43.963535, 29.601246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220970, 44.091923, 29.753988>,  <27.443247, 44.305901, 30.008560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220970, 44.091923, 29.753988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392618, -0.843615, 0.366286,
		-0.732843, -0.046332, 0.678818,
		-0.555691, -0.534946, -0.636428,
		27.054262, 43.931438, 29.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081810, 43.792164, 30.376537>,  <27.443247, 44.305901, 30.008560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081810, 43.792164, 30.376537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071770, 43.638809, 30.007240>,  <27.065744, 43.546795, 29.785662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071770, 43.638809, 30.007240>,  <27.081810, 43.792164, 30.376537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071770, 43.638809, 30.007240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256970, -0.894978, 0.364666,
		-0.966093, -0.228092, 0.120986,
		-0.025103, -0.383391, -0.923245,
		27.064240, 43.523792, 29.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930073, 43.125076, 30.536125>,  <27.081810, 43.792164, 30.376537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930073, 43.125076, 30.536125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053192, 43.108482, 30.155907>,  <27.127064, 43.098526, 29.927776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053192, 43.108482, 30.155907>,  <26.930073, 43.125076, 30.536125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053192, 43.108482, 30.155907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356094, -0.921417, 0.155524,
		-0.882302, -0.386355, -0.268840,
		0.307801, -0.041487, -0.950546,
		27.145533, 43.096035, 29.870743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709240, 42.429169, 30.301470>,  <26.930073, 43.125076, 30.536125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709240, 42.429169, 30.301470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024734, 42.572430, 30.101624>,  <27.214031, 42.658386, 29.981716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024734, 42.572430, 30.101624>,  <26.709240, 42.429169, 30.301470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024734, 42.572430, 30.101624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503178, -0.843032, 0.190024,
		-0.353135, -0.401275, -0.845147,
		0.788738, 0.358156, -0.499617,
		27.261356, 42.679874, 29.951738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921890, 41.925770, 29.870480>,  <26.709240, 42.429169, 30.301470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921890, 41.925770, 29.870480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242098, 42.160160, 29.920759>,  <27.434221, 42.300797, 29.950928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242098, 42.160160, 29.920759>,  <26.921890, 41.925770, 29.870480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242098, 42.160160, 29.920759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565443, -0.807989, 0.165618,
		0.198613, -0.061504, -0.978146,
		0.800517, 0.585979, 0.125700,
		27.482252, 42.335953, 29.958469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519016, 41.510860, 29.499788>,  <26.921890, 41.925770, 29.870480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519016, 41.510860, 29.499788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701717, 41.776234, 29.736847>,  <27.811338, 41.935459, 29.879082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701717, 41.776234, 29.736847>,  <27.519016, 41.510860, 29.499788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701717, 41.776234, 29.736847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598458, -0.722067, 0.347084,
		0.658199, 0.196143, -0.726844,
		0.456752, 0.663436, 0.592647,
		27.838743, 41.975266, 29.914640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307760, 41.414845, 29.448374>,  <27.519016, 41.510860, 29.499788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307760, 41.414845, 29.448374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258324, 41.626560, 29.784130>,  <28.228661, 41.753590, 29.985584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258324, 41.626560, 29.784130>,  <28.307760, 41.414845, 29.448374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258324, 41.626560, 29.784130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590406, -0.640652, 0.490903,
		0.797587, 0.556254, -0.233316,
		-0.123592, 0.529289, 0.839391,
		28.221247, 41.785347, 30.035948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747965, 41.307762, 28.761101>,  <28.307760, 41.414845, 29.448374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747965, 41.307762, 28.761101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974165, 41.064510, 28.538254>,  <29.109886, 40.918560, 28.404545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974165, 41.064510, 28.538254>,  <28.747965, 41.307762, 28.761101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974165, 41.064510, 28.538254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551220, 0.223785, -0.803789,
		0.613486, 0.761639, -0.208664,
		0.565502, -0.608133, -0.557119,
		29.143816, 40.882069, 28.371119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747166, 41.649063, 28.144896>,  <28.747965, 41.307762, 28.761101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747166, 41.649063, 28.144896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886955, 41.290592, 28.035542>,  <28.970829, 41.075512, 27.969929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886955, 41.290592, 28.035542>,  <28.747166, 41.649063, 28.144896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886955, 41.290592, 28.035542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401910, 0.120190, -0.907757,
		0.846366, 0.427115, -0.318178,
		0.349475, -0.896173, -0.273387,
		28.991798, 41.021740, 27.953526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053778, 41.802189, 27.563559>,  <28.747166, 41.649063, 28.144896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053778, 41.802189, 27.563559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951038, 41.415726, 27.554003>,  <28.889395, 41.183849, 27.548269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951038, 41.415726, 27.554003>,  <29.053778, 41.802189, 27.563559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951038, 41.415726, 27.554003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348771, 0.115716, -0.930037,
		0.901326, -0.230546, -0.366689,
		-0.256848, -0.966157, -0.023890,
		28.873983, 41.125877, 27.546837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389069, 41.523396, 27.001307>,  <29.053778, 41.802189, 27.563559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389069, 41.523396, 27.001307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106730, 41.251068, 27.079550>,  <28.937326, 41.087673, 27.126495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106730, 41.251068, 27.079550>,  <29.389069, 41.523396, 27.001307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106730, 41.251068, 27.079550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375011, 0.124880, -0.918571,
		0.600954, -0.721727, -0.343461,
		-0.705848, -0.680819, 0.195608,
		28.894976, 41.046822, 27.138233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455057, 41.132614, 26.548723>,  <29.389069, 41.523396, 27.001307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455057, 41.132614, 26.548723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076437, 41.091755, 26.671106>,  <28.849266, 41.067242, 26.744537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076437, 41.091755, 26.671106>,  <29.455057, 41.132614, 26.548723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076437, 41.091755, 26.671106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318826, 0.152363, -0.935487,
		0.048936, -0.983032, -0.176784,
		-0.946549, -0.102142, 0.305960,
		28.792473, 41.061111, 26.762894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262880, 40.596054, 26.204283>,  <29.455057, 41.132614, 26.548723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262880, 40.596054, 26.204283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937672, 40.805199, 26.306738>,  <28.742546, 40.930687, 26.368210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937672, 40.805199, 26.306738>,  <29.262880, 40.596054, 26.204283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937672, 40.805199, 26.306738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308986, -0.014610, -0.950954,
		-0.493479, -0.852290, 0.173437,
		-0.813023, 0.522865, 0.256136,
		28.693766, 40.962059, 26.383579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674080, 40.177059, 25.860474>,  <29.262880, 40.596054, 26.204283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674080, 40.177059, 25.860474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543110, 40.546513, 25.940172>,  <28.464527, 40.768185, 25.987991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543110, 40.546513, 25.940172>,  <28.674080, 40.177059, 25.860474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543110, 40.546513, 25.940172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276992, 0.107778, -0.954808,
		-0.903364, -0.367819, 0.220549,
		-0.327426, 0.923630, 0.199246,
		28.444881, 40.823601, 25.999947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996548, 40.342285, 25.515657>,  <28.674080, 40.177059, 25.860474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996548, 40.342285, 25.515657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146479, 40.709557, 25.566965>,  <28.236437, 40.929920, 25.597750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146479, 40.709557, 25.566965>,  <27.996548, 40.342285, 25.515657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146479, 40.709557, 25.566965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220948, 0.222841, -0.949486,
		-0.900381, 0.327554, 0.286397,
		0.374829, 0.918178, 0.128270,
		28.258926, 40.985008, 25.605446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535595, 40.767139, 25.178446>,  <27.996548, 40.342285, 25.515657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535595, 40.767139, 25.178446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872656, 40.976006, 25.231035>,  <28.074892, 41.101326, 25.262589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872656, 40.976006, 25.231035>,  <27.535595, 40.767139, 25.178446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872656, 40.976006, 25.231035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007233, 0.255122, -0.966882,
		-0.538410, 0.813794, 0.218756,
		0.842652, 0.522161, 0.131474,
		28.125452, 41.132652, 25.270477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.776806, 36.970654, 37.781536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945534, 37.287270, 37.604660>,  <37.046768, 37.477238, 37.498535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945534, 37.287270, 37.604660>,  <36.776806, 36.970654, 37.781536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945534, 37.287270, 37.604660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592299, -0.128692, -0.795374,
		-0.686477, 0.597413, 0.414544,
		0.421818, 0.791541, -0.442191,
		37.072079, 37.524731, 37.472004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210693, 37.320717, 37.540573>,  <36.776806, 36.970654, 37.781536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210693, 37.320717, 37.540573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540127, 37.422832, 37.337975>,  <36.737785, 37.484100, 37.216415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540127, 37.422832, 37.337975>,  <36.210693, 37.320717, 37.540573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540127, 37.422832, 37.337975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535652, 0.056426, -0.842551,
		-0.186514, 0.965217, 0.183218,
		0.823583, 0.255288, -0.506496,
		36.787201, 37.499420, 37.186028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980076, 37.772373, 37.044064>,  <36.210693, 37.320717, 37.540573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980076, 37.772373, 37.044064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323082, 37.642757, 36.884228>,  <36.528885, 37.564987, 36.788326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323082, 37.642757, 36.884228>,  <35.980076, 37.772373, 37.044064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323082, 37.642757, 36.884228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430170, -0.025604, -0.902385,
		0.282175, 0.945698, -0.161347,
		0.857514, -0.324037, -0.399586,
		36.580338, 37.545547, 36.764351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216217, 38.296940, 36.524445>,  <35.980076, 37.772373, 37.044064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216217, 38.296940, 36.524445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388737, 37.949673, 36.426254>,  <36.492249, 37.741310, 36.367340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388737, 37.949673, 36.426254>,  <36.216217, 38.296940, 36.524445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388737, 37.949673, 36.426254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497808, -0.002083, -0.867285,
		0.752439, 0.496262, -0.433081,
		0.431302, -0.868170, -0.245476,
		36.518127, 37.689220, 36.352612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421906, 38.361351, 35.859314>,  <36.216217, 38.296940, 36.524445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421906, 38.361351, 35.859314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416557, 37.961964, 35.880821>,  <36.413349, 37.722332, 35.893726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416557, 37.961964, 35.880821>,  <36.421906, 38.361351, 35.859314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416557, 37.961964, 35.880821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512247, -0.039346, -0.857937,
		0.858735, -0.039012, -0.510934,
		-0.013367, -0.998464, 0.053772,
		36.412548, 37.662426, 35.896954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533554, 38.095619, 35.178322>,  <36.421906, 38.361351, 35.859314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533554, 38.095619, 35.178322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370575, 37.779392, 35.361187>,  <36.272789, 37.589657, 35.470905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370575, 37.779392, 35.361187>,  <36.533554, 38.095619, 35.178322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370575, 37.779392, 35.361187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703121, -0.047878, -0.709457,
		0.582760, -0.610503, -0.536355,
		-0.407446, -0.790565, 0.457159,
		36.248341, 37.542221, 35.498333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592766, 37.542965, 34.731506>,  <36.533554, 38.095619, 35.178322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592766, 37.542965, 34.731506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296749, 37.442932, 34.981243>,  <36.119141, 37.382912, 35.131084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296749, 37.442932, 34.981243>,  <36.592766, 37.542965, 34.731506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296749, 37.442932, 34.981243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538402, -0.336051, -0.772783,
		0.403068, -0.908036, 0.114048,
		-0.740040, -0.250080, 0.624340,
		36.074738, 37.367908, 35.168545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270256, 36.929470, 34.446865>,  <36.592766, 37.542965, 34.731506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270256, 36.929470, 34.446865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991985, 37.071133, 34.696857>,  <35.825024, 37.156132, 34.846855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991985, 37.071133, 34.696857>,  <36.270256, 36.929470, 34.446865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991985, 37.071133, 34.696857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699522, -0.136074, -0.701536,
		-0.163416, -0.925230, 0.342410,
		-0.695675, 0.354166, 0.624982,
		35.783283, 37.177380, 34.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743362, 36.497795, 34.311501>,  <36.270256, 36.929470, 34.446865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743362, 36.497795, 34.311501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588486, 36.820576, 34.489902>,  <35.495560, 37.014244, 34.596943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588486, 36.820576, 34.489902>,  <35.743362, 36.497795, 34.311501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588486, 36.820576, 34.489902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839780, -0.108970, -0.531879,
		-0.380599, -0.580480, 0.719852,
		-0.387188, 0.806950, 0.446002,
		35.472328, 37.062660, 34.623703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059937, 36.280205, 34.342369>,  <35.743362, 36.497795, 34.311501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059937, 36.280205, 34.342369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057110, 36.675163, 34.405617>,  <35.055416, 36.912136, 34.443565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057110, 36.675163, 34.405617>,  <35.059937, 36.280205, 34.342369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057110, 36.675163, 34.405617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918886, 0.055969, -0.390534,
		-0.394461, -0.148055, 0.906907,
		-0.007062, 0.987394, 0.158123,
		35.054993, 36.971382, 34.453053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453632, 36.363579, 34.860703>,  <35.059937, 36.280205, 34.342369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453632, 36.363579, 34.860703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557758, 36.674019, 34.630955>,  <34.620235, 36.860283, 34.493107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557758, 36.674019, 34.630955>,  <34.453632, 36.363579, 34.860703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557758, 36.674019, 34.630955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915574, 0.009564, -0.402035,
		-0.306527, 0.630536, 0.713068,
		0.260317, 0.776101, -0.574371,
		34.635853, 36.906849, 34.458645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796284, 36.609756, 34.710281>,  <34.453632, 36.363579, 34.860703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796284, 36.609756, 34.710281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053345, 36.810310, 34.478554>,  <34.207581, 36.930641, 34.339516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053345, 36.810310, 34.478554>,  <33.796284, 36.609756, 34.710281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053345, 36.810310, 34.478554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744066, 0.228180, -0.627932,
		-0.182644, 0.834597, 0.519701,
		0.642655, 0.501380, -0.579320,
		34.246140, 36.960724, 34.304756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368477, 36.697868, 35.341530>,  <33.796284, 36.609756, 34.710281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368477, 36.697868, 35.341530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085239, 36.841515, 35.584721>,  <32.915298, 36.927704, 35.730637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085239, 36.841515, 35.584721>,  <33.368477, 36.697868, 35.341530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085239, 36.841515, 35.584721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581572, -0.191716, 0.790581,
		0.400472, 0.913388, -0.073101,
		-0.708093, 0.359119, 0.607978,
		32.872810, 36.949249, 35.767113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759396, 37.033421, 35.869419>,  <33.368477, 36.697868, 35.341530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759396, 37.033421, 35.869419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394653, 36.967018, 36.019600>,  <33.175808, 36.927177, 36.109707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394653, 36.967018, 36.019600>,  <33.759396, 37.033421, 35.869419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394653, 36.967018, 36.019600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401559, -0.170699, 0.899785,
		-0.085283, 0.971238, 0.222315,
		-0.911854, -0.166009, 0.375451,
		33.121098, 36.917217, 36.132236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860023, 37.283073, 36.538296>,  <33.759396, 37.033421, 35.869419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860023, 37.283073, 36.538296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518112, 37.075550, 36.543915>,  <33.312965, 36.951038, 36.547287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518112, 37.075550, 36.543915>,  <33.860023, 37.283073, 36.538296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518112, 37.075550, 36.543915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062911, -0.076701, 0.995067,
		-0.515168, 0.851445, 0.098201,
		-0.854777, -0.518804, 0.014051,
		33.261681, 36.919910, 36.548130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214821, 37.545979, 37.015804>,  <33.860023, 37.283073, 36.538296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214821, 37.545979, 37.015804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203194, 37.148941, 36.968632>,  <33.196217, 36.910717, 36.940327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203194, 37.148941, 36.968632>,  <33.214821, 37.545979, 37.015804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203194, 37.148941, 36.968632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045715, -0.119179, 0.991820,
		-0.998532, 0.023439, 0.048841,
		-0.029068, -0.992596, -0.117933,
		33.194473, 36.851162, 36.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983730, 37.331306, 37.635971>,  <33.214821, 37.545979, 37.015804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983730, 37.331306, 37.635971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104538, 36.976532, 37.496185>,  <33.177025, 36.763668, 37.412315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104538, 36.976532, 37.496185>,  <32.983730, 37.331306, 37.635971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104538, 36.976532, 37.496185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039204, -0.354715, 0.934152,
		-0.952495, -0.295834, -0.072360,
		0.302021, -0.886939, -0.349462,
		33.195145, 36.710449, 37.391346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549969, 36.864216, 37.901611>,  <32.983730, 37.331306, 37.635971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549969, 36.864216, 37.901611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871025, 36.650101, 37.796368>,  <33.063660, 36.521629, 37.733223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871025, 36.650101, 37.796368>,  <32.549969, 36.864216, 37.901611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871025, 36.650101, 37.796368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021435, -0.466715, 0.884148,
		-0.596071, -0.704017, -0.386081,
		0.802646, -0.535291, -0.263105,
		33.111820, 36.489513, 37.717438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364990, 36.195541, 38.041271>,  <32.549969, 36.864216, 37.901611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364990, 36.195541, 38.041271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764259, 36.205929, 38.019440>,  <33.003822, 36.212162, 38.006340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764259, 36.205929, 38.019440>,  <32.364990, 36.195541, 38.041271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764259, 36.205929, 38.019440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060336, -0.482479, 0.873827,
		-0.003642, -0.875523, -0.483163,
		0.998171, 0.025969, -0.054583,
		33.063709, 36.213718, 38.003063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639980, 35.476006, 38.205963>,  <32.364990, 36.195541, 38.041271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639980, 35.476006, 38.205963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922989, 35.753929, 38.257572>,  <33.092793, 35.920685, 38.288540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922989, 35.753929, 38.257572>,  <32.639980, 35.476006, 38.205963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922989, 35.753929, 38.257572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163062, -0.338159, 0.926855,
		0.687622, -0.634730, -0.352552,
		0.707521, 0.694814, 0.129025,
		33.135246, 35.962372, 38.296280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088543, 35.171726, 38.612999>,  <32.639980, 35.476006, 38.205963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088543, 35.171726, 38.612999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208496, 35.551041, 38.654636>,  <33.280468, 35.778629, 38.679619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208496, 35.551041, 38.654636>,  <33.088543, 35.171726, 38.612999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208496, 35.551041, 38.654636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117961, -0.145133, 0.982355,
		0.946656, -0.282309, -0.155382,
		0.299878, 0.948282, 0.104090,
		33.298458, 35.835526, 38.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578941, 35.065228, 39.098366>,  <33.088543, 35.171726, 38.612999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578941, 35.065228, 39.098366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518623, 35.459362, 39.130310>,  <33.482433, 35.695843, 39.149479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518623, 35.459362, 39.130310>,  <33.578941, 35.065228, 39.098366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518623, 35.459362, 39.130310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176314, -0.052685, 0.982923,
		0.972715, 0.162301, -0.165783,
		-0.150795, 0.985334, 0.079863,
		33.473385, 35.754963, 39.154270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064369, 35.294647, 39.593006>,  <33.578941, 35.065228, 39.098366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064369, 35.294647, 39.593006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811733, 35.604736, 39.588596>,  <33.660152, 35.790791, 39.585953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811733, 35.604736, 39.588596>,  <34.064369, 35.294647, 39.593006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811733, 35.604736, 39.588596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063493, 0.065887, 0.995805,
		0.772700, 0.628239, -0.090835,
		-0.631588, 0.775226, -0.011022,
		33.622257, 35.837303, 39.585289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443485, 35.815018, 39.916882>,  <34.064369, 35.294647, 39.593006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443485, 35.815018, 39.916882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045654, 35.855255, 39.927433>,  <33.806957, 35.879398, 39.933765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045654, 35.855255, 39.927433>,  <34.443485, 35.815018, 39.916882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045654, 35.855255, 39.927433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023549, -0.029250, 0.999295,
		0.101298, 0.994497, 0.026722,
		-0.994577, 0.100598, 0.026383,
		33.747280, 35.885433, 39.935349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333977, 36.285797, 40.405052>,  <34.443485, 35.815018, 39.916882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333977, 36.285797, 40.405052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985458, 36.092449, 40.371132>,  <33.776348, 35.976440, 40.350780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985458, 36.092449, 40.371132>,  <34.333977, 36.285797, 40.405052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985458, 36.092449, 40.371132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150768, 0.099204, 0.983579,
		-0.467022, 0.869776, -0.159313,
		-0.871298, -0.483372, -0.084804,
		33.724068, 35.947437, 40.345692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863968, 36.788170, 40.791580>,  <34.333977, 36.285797, 40.405052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863968, 36.788170, 40.791580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676376, 36.435135, 40.804813>,  <33.563824, 36.223312, 40.812756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676376, 36.435135, 40.804813>,  <33.863968, 36.788170, 40.791580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676376, 36.435135, 40.804813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311340, 0.200258, 0.928959,
		-0.826516, 0.425359, -0.368702,
		-0.468976, -0.882591, 0.033085,
		33.535683, 36.170357, 40.814739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222553, 36.886776, 41.010822>,  <33.863968, 36.788170, 40.791580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222553, 36.886776, 41.010822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380775, 36.542999, 41.140369>,  <33.475708, 36.336735, 41.218098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380775, 36.542999, 41.140369>,  <33.222553, 36.886776, 41.010822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380775, 36.542999, 41.140369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276610, 0.224778, 0.934324,
		-0.875796, -0.459167, -0.148817,
		0.395560, -0.859442, 0.323870,
		33.499443, 36.285168, 41.237530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329956, 37.696716, 40.853825>,  <33.222553, 36.886776, 41.010822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329956, 37.696716, 40.853825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452797, 38.054386, 40.984138>,  <33.526501, 38.268990, 41.062328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452797, 38.054386, 40.984138>,  <33.329956, 37.696716, 40.853825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452797, 38.054386, 40.984138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127563, 0.377916, -0.917010,
		-0.943088, 0.240059, 0.230123,
		0.307104, 0.894176, 0.325785,
		33.544930, 38.322639, 41.081875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795940, 38.247559, 40.824863>,  <33.329956, 37.696716, 40.853825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795940, 38.247559, 40.824863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174084, 38.353859, 40.749306>,  <33.400970, 38.417637, 40.703972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174084, 38.353859, 40.749306>,  <32.795940, 38.247559, 40.824863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174084, 38.353859, 40.749306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279565, 0.362600, -0.889025,
		-0.167765, 0.893252, 0.417080,
		0.945356, 0.265748, -0.188890,
		33.457691, 38.433582, 40.692638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696999, 39.017128, 40.660023>,  <32.795940, 38.247559, 40.824863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696999, 39.017128, 40.660023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014469, 38.831371, 40.502838>,  <33.204952, 38.719917, 40.408527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014469, 38.831371, 40.502838>,  <32.696999, 39.017128, 40.660023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014469, 38.831371, 40.502838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255738, 0.331410, -0.908166,
		0.551975, 0.821285, 0.144270,
		0.793676, -0.464390, -0.392964,
		33.252571, 38.692055, 40.384949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067661, 39.485115, 40.236504>,  <32.696999, 39.017128, 40.660023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067661, 39.485115, 40.236504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204338, 39.130959, 40.110443>,  <33.286343, 38.918465, 40.034805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204338, 39.130959, 40.110443>,  <33.067661, 39.485115, 40.236504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204338, 39.130959, 40.110443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099491, 0.299374, -0.948935,
		0.934530, 0.355600, 0.014205,
		0.341693, -0.885395, -0.315153,
		33.306847, 38.865341, 40.015896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705997, 39.552925, 39.865234>,  <33.067661, 39.485115, 40.236504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705997, 39.552925, 39.865234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517220, 39.218945, 39.752010>,  <33.403954, 39.018559, 39.684074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517220, 39.218945, 39.752010>,  <33.705997, 39.552925, 39.865234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517220, 39.218945, 39.752010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036514, 0.302282, -0.952519,
		0.880869, -0.459876, -0.112174,
		-0.471949, -0.834949, -0.283063,
		33.375633, 38.968460, 39.667091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088791, 39.231762, 39.289238>,  <33.705997, 39.552925, 39.865234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088791, 39.231762, 39.289238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719238, 39.085194, 39.245083>,  <33.497509, 38.997253, 39.218590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719238, 39.085194, 39.245083>,  <34.088791, 39.231762, 39.289238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719238, 39.085194, 39.245083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053232, 0.162597, -0.985255,
		0.378964, -0.916133, -0.130715,
		-0.923879, -0.366418, -0.110386,
		33.442074, 38.975269, 39.211967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117970, 38.894440, 38.632645>,  <34.088791, 39.231762, 39.289238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117970, 38.894440, 38.632645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737644, 38.956352, 38.739967>,  <33.509449, 38.993500, 38.804363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737644, 38.956352, 38.739967>,  <34.117970, 38.894440, 38.632645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737644, 38.956352, 38.739967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260507, 0.069056, -0.962999,
		-0.167588, -0.985532, -0.025336,
		-0.950816, 0.154786, 0.268310,
		33.452400, 39.002789, 38.820461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720829, 38.682556, 38.047634>,  <34.117970, 38.894440, 38.632645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720829, 38.682556, 38.047634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448902, 38.898445, 38.246250>,  <33.285748, 39.027977, 38.365417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448902, 38.898445, 38.246250>,  <33.720829, 38.682556, 38.047634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448902, 38.898445, 38.246250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308744, 0.403511, -0.861311,
		-0.665228, -0.738835, -0.107676,
		-0.679815, 0.539724, 0.496538,
		33.244957, 39.060364, 38.395210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144501, 38.634869, 37.735550>,  <33.720829, 38.682556, 38.047634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144501, 38.634869, 37.735550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015911, 38.966091, 37.919281>,  <32.938759, 39.164825, 38.029518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015911, 38.966091, 37.919281>,  <33.144501, 38.634869, 37.735550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015911, 38.966091, 37.919281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404743, 0.318373, -0.857217,
		-0.856060, -0.461481, 0.232802,
		-0.321471, 0.828054, 0.459328,
		32.919468, 39.214508, 38.057079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469368, 38.691376, 37.578766>,  <33.144501, 38.634869, 37.735550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469368, 38.691376, 37.578766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587540, 39.058876, 37.683548>,  <32.658443, 39.279377, 37.746418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587540, 39.058876, 37.683548>,  <32.469368, 38.691376, 37.578766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587540, 39.058876, 37.683548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289262, 0.347346, -0.892008,
		-0.910521, 0.187751, 0.368376,
		0.295429, 0.918749, 0.261957,
		32.676167, 39.334499, 37.762135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922976, 39.256550, 37.513508>,  <32.469368, 38.691376, 37.578766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922976, 39.256550, 37.513508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258663, 39.473381, 37.530777>,  <32.460075, 39.603481, 37.541138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258663, 39.473381, 37.530777>,  <31.922976, 39.256550, 37.513508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258663, 39.473381, 37.530777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405780, 0.677105, -0.613899,
		-0.362015, 0.497675, 0.788203,
		0.839218, 0.542078, 0.043176,
		32.510429, 39.636005, 37.543728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779793, 39.942741, 37.746258>,  <31.922976, 39.256550, 37.513508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779793, 39.942741, 37.746258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129913, 40.010353, 37.565025>,  <32.339985, 40.050919, 37.456287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129913, 40.010353, 37.565025>,  <31.779793, 39.942741, 37.746258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129913, 40.010353, 37.565025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417274, 0.737524, -0.530981,
		0.244406, 0.653825, 0.716085,
		0.875299, 0.169029, -0.453080,
		32.392502, 40.061062, 37.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739922, 40.620628, 37.575001>,  <31.779793, 39.942741, 37.746258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739922, 40.620628, 37.575001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039337, 40.477467, 37.351719>,  <32.218987, 40.391571, 37.217751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039337, 40.477467, 37.351719>,  <31.739922, 40.620628, 37.575001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039337, 40.477467, 37.351719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163569, 0.716143, -0.678517,
		0.642598, 0.599202, 0.477519,
		0.748540, -0.357906, -0.558203,
		32.263901, 40.370094, 37.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981506, 41.195621, 37.206833>,  <31.739922, 40.620628, 37.575001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981506, 41.195621, 37.206833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131290, 40.891804, 36.994087>,  <32.221161, 40.709515, 36.866440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131290, 40.891804, 36.994087>,  <31.981506, 41.195621, 37.206833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131290, 40.891804, 36.994087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120718, 0.528777, -0.840132,
		0.919352, 0.378801, 0.106314,
		0.374459, -0.759543, -0.531860,
		32.243629, 40.663940, 36.834530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558666, 41.507111, 36.862022>,  <31.981506, 41.195621, 37.206833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558666, 41.507111, 36.862022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406857, 41.187256, 36.675884>,  <32.315773, 40.995342, 36.564201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406857, 41.187256, 36.675884>,  <32.558666, 41.507111, 36.862022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406857, 41.187256, 36.675884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368785, 0.592046, -0.716575,
		0.848506, -0.100341, -0.519586,
		-0.379520, -0.799633, -0.465350,
		32.292999, 40.947365, 36.536278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720341, 41.685783, 36.165874>,  <32.558666, 41.507111, 36.862022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720341, 41.685783, 36.165874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441147, 41.399597, 36.153748>,  <32.273628, 41.227886, 36.146469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441147, 41.399597, 36.153748>,  <32.720341, 41.685783, 36.165874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441147, 41.399597, 36.153748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422256, 0.445398, -0.789506,
		0.578370, -0.538263, -0.612993,
		-0.697988, -0.715467, -0.030320,
		32.231750, 41.184956, 36.144653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684731, 41.484894, 35.478447>,  <32.720341, 41.685783, 36.165874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684731, 41.484894, 35.478447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328552, 41.348614, 35.599129>,  <32.114845, 41.266846, 35.671539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328552, 41.348614, 35.599129>,  <32.684731, 41.484894, 35.478447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328552, 41.348614, 35.599129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430593, 0.416169, -0.800870,
		0.147296, -0.843045, -0.517280,
		-0.890446, -0.340702, 0.301709,
		32.061420, 41.246403, 35.689640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291206, 41.169262, 34.919792>,  <32.684731, 41.484894, 35.478447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291206, 41.169262, 34.919792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001907, 41.267208, 35.178078>,  <31.828327, 41.325977, 35.333050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001907, 41.267208, 35.178078>,  <32.291206, 41.169262, 34.919792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001907, 41.267208, 35.178078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498436, 0.462080, -0.733514,
		-0.477987, -0.852362, -0.212149,
		-0.723250, 0.244868, 0.645717,
		31.784933, 41.340668, 35.371792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672239, 40.990448, 34.590763>,  <32.291206, 41.169262, 34.919792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672239, 40.990448, 34.590763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556263, 41.271816, 34.850342>,  <31.486677, 41.440636, 35.006088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556263, 41.271816, 34.850342>,  <31.672239, 40.990448, 34.590763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556263, 41.271816, 34.850342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610095, 0.386587, -0.691617,
		-0.737373, -0.596449, 0.317065,
		-0.289941, 0.703420, 0.648949,
		31.469280, 41.482841, 35.045025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987568, 41.116184, 34.393692>,  <31.672239, 40.990448, 34.590763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987568, 41.116184, 34.393692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087690, 41.433746, 34.615341>,  <31.147764, 41.624283, 34.748333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087690, 41.433746, 34.615341>,  <30.987568, 41.116184, 34.393692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087690, 41.433746, 34.615341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419673, 0.604751, -0.676868,
		-0.872480, -0.063128, 0.484554,
		0.250306, 0.793909, 0.554127,
		31.162783, 41.671921, 34.781578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358776, 41.507416, 34.464596>,  <30.987568, 41.116184, 34.393692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358776, 41.507416, 34.464596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661806, 41.755493, 34.546017>,  <30.843624, 41.904339, 34.594872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661806, 41.755493, 34.546017>,  <30.358776, 41.507416, 34.464596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661806, 41.755493, 34.546017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455298, 0.725527, -0.516056,
		-0.467741, 0.298273, 0.832016,
		0.757576, 0.620197, 0.203556,
		30.889078, 41.941551, 34.607082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070019, 42.047535, 34.693089>,  <30.358776, 41.507416, 34.464596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070019, 42.047535, 34.693089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432224, 42.173786, 34.579655>,  <30.649548, 42.249538, 34.511593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432224, 42.173786, 34.579655>,  <30.070019, 42.047535, 34.693089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432224, 42.173786, 34.579655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422293, 0.735521, -0.529790,
		0.041370, 0.599490, 0.799312,
		0.905515, 0.315627, -0.283589,
		30.703878, 42.268475, 34.494579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065050, 42.828362, 34.807568>,  <30.070019, 42.047535, 34.693089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065050, 42.828362, 34.807568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353416, 42.730362, 34.548260>,  <30.526436, 42.671562, 34.392673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353416, 42.730362, 34.548260>,  <30.065050, 42.828362, 34.807568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353416, 42.730362, 34.548260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390434, 0.629263, -0.672004,
		0.572573, 0.737565, 0.357990,
		0.720917, -0.245000, -0.648270,
		30.569691, 42.656860, 34.353779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366398, 43.471882, 34.704708>,  <30.065050, 42.828362, 34.807568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366398, 43.471882, 34.704708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418932, 43.232323, 34.388714>,  <30.450453, 43.088585, 34.199120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418932, 43.232323, 34.388714>,  <30.366398, 43.471882, 34.704708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418932, 43.232323, 34.388714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298303, 0.736075, -0.607625,
		0.945392, 0.315456, -0.081982,
		0.131334, -0.598900, -0.789981,
		30.458332, 43.052654, 34.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743589, 43.857613, 34.242630>,  <30.366398, 43.471882, 34.704708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743589, 43.857613, 34.242630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599911, 43.555851, 34.022865>,  <30.513702, 43.374794, 33.891006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599911, 43.555851, 34.022865>,  <30.743589, 43.857613, 34.242630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599911, 43.555851, 34.022865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318101, 0.652417, -0.687869,
		0.877375, -0.072313, -0.474324,
		-0.359198, -0.754403, -0.549412,
		30.492151, 43.329529, 33.858044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971981, 44.037563, 33.560665>,  <30.743589, 43.857613, 34.242630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971981, 44.037563, 33.560665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656445, 43.791725, 33.559845>,  <30.467123, 43.644222, 33.559353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656445, 43.791725, 33.559845>,  <30.971981, 44.037563, 33.560665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656445, 43.791725, 33.559845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493040, 0.634817, -0.594911,
		0.366931, -0.468278, -0.803789,
		-0.788843, -0.614591, -0.002054,
		30.419792, 43.607349, 33.559227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752958, 44.061455, 32.874912>,  <30.971981, 44.037563, 33.560665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752958, 44.061455, 32.874912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436460, 43.929546, 33.080898>,  <30.246563, 43.850403, 33.204491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436460, 43.929546, 33.080898>,  <30.752958, 44.061455, 32.874912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436460, 43.929546, 33.080898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584811, 0.654155, -0.479663,
		-0.178689, -0.680687, -0.710447,
		-0.791243, -0.329767, 0.514964,
		30.199087, 43.830616, 33.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160320, 43.922565, 32.219433>,  <30.752958, 44.061455, 32.874912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160320, 43.922565, 32.219433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461481, 44.157124, 32.099918>,  <31.642178, 44.297859, 32.028210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461481, 44.157124, 32.099918>,  <31.160320, 43.922565, 32.219433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461481, 44.157124, 32.099918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508727, -0.230521, 0.829492,
		0.417535, -0.776529, -0.471876,
		0.752902, 0.586399, -0.298791,
		31.687351, 44.333042, 32.010281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813555, 43.570305, 32.361710>,  <31.160320, 43.922565, 32.219433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813555, 43.570305, 32.361710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899786, 43.960873, 32.357105>,  <31.951525, 44.195213, 32.354343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899786, 43.960873, 32.357105>,  <31.813555, 43.570305, 32.361710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899786, 43.960873, 32.357105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484220, -0.096655, 0.869591,
		0.847972, -0.193038, -0.493639,
		0.215577, 0.976419, -0.011512,
		31.964458, 44.253799, 32.353653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558243, 43.548489, 32.600777>,  <31.813555, 43.570305, 32.361710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558243, 43.548489, 32.600777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446541, 43.930943, 32.636169>,  <32.379520, 44.160416, 32.657406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446541, 43.930943, 32.636169>,  <32.558243, 43.548489, 32.600777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446541, 43.930943, 32.636169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503532, 0.067358, 0.861347,
		0.817602, 0.285087, -0.500253,
		-0.279255, 0.956132, 0.088479,
		32.362766, 44.217781, 32.662712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174683, 43.932957, 32.728172>,  <32.558243, 43.548489, 32.600777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174683, 43.932957, 32.728172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868435, 44.166245, 32.836742>,  <32.684685, 44.306217, 32.901882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868435, 44.166245, 32.836742>,  <33.174683, 43.932957, 32.728172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868435, 44.166245, 32.836742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424745, 0.141438, 0.894196,
		0.483127, 0.799903, -0.356010,
		-0.765624, 0.583224, 0.271422,
		32.638748, 44.341213, 32.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597851, 44.452229, 33.058155>,  <33.174683, 43.932957, 32.728172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597851, 44.452229, 33.058155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223732, 44.532368, 33.174828>,  <32.999260, 44.580452, 33.244831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223732, 44.532368, 33.174828>,  <33.597851, 44.452229, 33.058155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223732, 44.532368, 33.174828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330112, 0.197122, 0.923130,
		0.127451, 0.959689, -0.250505,
		-0.935298, 0.200348, 0.291681,
		32.943142, 44.592472, 33.262333>
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
