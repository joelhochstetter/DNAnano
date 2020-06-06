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
	<42.454720, 32.463348, 23.150360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824062, 32.398788, 23.289707>,  <43.045670, 32.360054, 23.373316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824062, 32.398788, 23.289707>,  <42.454720, 32.463348, 23.150360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824062, 32.398788, 23.289707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034158, 0.869219, 0.493245,
		-0.382417, -0.467342, 0.797088,
		0.923359, -0.161398, 0.348367,
		43.101070, 32.350368, 23.394217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363346, 33.069572, 23.585346>,  <42.454720, 32.463348, 23.150360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363346, 33.069572, 23.585346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760876, 33.025303, 23.588539>,  <42.999393, 32.998741, 23.590454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760876, 33.025303, 23.588539>,  <42.363346, 33.069572, 23.585346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760876, 33.025303, 23.588539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058172, -0.580908, -0.811888,
		0.094492, 0.806410, -0.583759,
		0.993825, -0.110676, 0.007981,
		43.059025, 32.992100, 23.590933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964024, 33.562252, 23.858147>,  <42.363346, 33.069572, 23.585346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964024, 33.562252, 23.858147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895039, 33.679771, 23.482075>,  <41.853645, 33.750282, 23.256432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895039, 33.679771, 23.482075>,  <41.964024, 33.562252, 23.858147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895039, 33.679771, 23.482075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004119, -0.954690, -0.297572,
		-0.985007, -0.047448, 0.165861,
		-0.172465, 0.293794, -0.940181,
		41.843300, 33.767910, 23.200020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358223, 33.113922, 23.642653>,  <41.964024, 33.562252, 23.858147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358223, 33.113922, 23.642653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258621, 32.824356, 23.900009>,  <41.198860, 32.650616, 24.054422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258621, 32.824356, 23.900009>,  <41.358223, 33.113922, 23.642653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258621, 32.824356, 23.900009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966150, 0.231946, -0.112937,
		-0.067476, -0.649734, -0.757161,
		-0.249000, -0.723910, 0.643392,
		41.183922, 32.607182, 24.093027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977268, 33.482819, 24.160023>,  <41.358223, 33.113922, 23.642653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977268, 33.482819, 24.160023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778214, 33.648846, 24.464672>,  <40.658779, 33.748463, 24.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778214, 33.648846, 24.464672>,  <40.977268, 33.482819, 24.160023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778214, 33.648846, 24.464672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593881, -0.476927, 0.647955,
		0.632185, 0.774763, -0.009164,
		-0.497642, 0.415070, 0.761623,
		40.628922, 33.773365, 24.693159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326756, 33.520882, 24.664402>,  <40.977268, 33.482819, 24.160023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326756, 33.520882, 24.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988976, 33.570377, 24.872860>,  <40.786308, 33.600075, 24.997934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988976, 33.570377, 24.872860>,  <41.326756, 33.520882, 24.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988976, 33.570377, 24.872860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412733, -0.469814, 0.780337,
		0.341402, 0.874049, 0.345662,
		-0.844450, 0.123743, 0.521144,
		40.735641, 33.607502, 25.029203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565575, 33.909554, 25.302805>,  <41.326756, 33.520882, 24.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565575, 33.909554, 25.302805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205505, 33.757370, 25.387604>,  <40.989464, 33.666061, 25.438482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205505, 33.757370, 25.387604>,  <41.565575, 33.909554, 25.302805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205505, 33.757370, 25.387604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372978, -0.422062, 0.826288,
		-0.224890, 0.822872, 0.521830,
		-0.900173, -0.380455, 0.211996,
		40.935452, 33.643234, 25.451202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518429, 34.087173, 25.924421>,  <41.565575, 33.909554, 25.302805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518429, 34.087173, 25.924421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239269, 33.802837, 25.889462>,  <41.071774, 33.632236, 25.868484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239269, 33.802837, 25.889462>,  <41.518429, 34.087173, 25.924421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239269, 33.802837, 25.889462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316503, -0.415585, 0.852711,
		-0.642466, 0.567444, 0.515020,
		-0.697900, -0.710842, -0.087402,
		41.029900, 33.589584, 25.863241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131466, 34.066887, 26.585072>,  <41.518429, 34.087173, 25.924421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131466, 34.066887, 26.585072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092918, 33.710709, 26.407162>,  <41.069790, 33.497002, 26.300417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092918, 33.710709, 26.407162>,  <41.131466, 34.066887, 26.585072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092918, 33.710709, 26.407162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316239, -0.451092, 0.834571,
		-0.943772, -0.060225, 0.325065,
		-0.096372, -0.890443, -0.444773,
		41.064007, 33.443577, 26.273729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625916, 33.651756, 26.999084>,  <41.131466, 34.066887, 26.585072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625916, 33.651756, 26.999084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836121, 33.392853, 26.778217>,  <40.962242, 33.237511, 26.645697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836121, 33.392853, 26.778217>,  <40.625916, 33.651756, 26.999084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836121, 33.392853, 26.778217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339525, -0.435542, 0.833682,
		-0.780102, -0.625585, -0.009122,
		0.525512, -0.647260, -0.552169,
		40.993774, 33.198673, 26.612566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421967, 33.116543, 27.219585>,  <40.625916, 33.651756, 26.999084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421967, 33.116543, 27.219585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770874, 33.028946, 27.044682>,  <40.980217, 32.976387, 26.939739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770874, 33.028946, 27.044682>,  <40.421967, 33.116543, 27.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770874, 33.028946, 27.044682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279655, -0.510134, 0.813361,
		-0.401177, -0.831750, -0.383731,
		0.872267, -0.218989, -0.437257,
		41.032555, 32.963249, 26.913504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539406, 32.346264, 27.055252>,  <40.421967, 33.116543, 27.219585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539406, 32.346264, 27.055252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904995, 32.506355, 27.081997>,  <41.124348, 32.602409, 27.098043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904995, 32.506355, 27.081997>,  <40.539406, 32.346264, 27.055252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904995, 32.506355, 27.081997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284286, -0.749157, 0.598286,
		0.289541, -0.527809, -0.798489,
		0.913974, 0.400227, 0.066863,
		41.179188, 32.626423, 27.102057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894409, 31.789995, 27.274908>,  <40.539406, 32.346264, 27.055252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894409, 31.789995, 27.274908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172672, 32.076694, 27.294212>,  <41.339630, 32.248714, 27.305796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172672, 32.076694, 27.294212>,  <40.894409, 31.789995, 27.274908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172672, 32.076694, 27.294212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472990, -0.507568, 0.720177,
		0.540680, -0.478173, -0.692110,
		0.695662, 0.716746, 0.048261,
		41.381371, 32.291718, 27.308691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541302, 31.444317, 27.256420>,  <40.894409, 31.789995, 27.274908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541302, 31.444317, 27.256420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605495, 31.808712, 27.408394>,  <41.644012, 32.027348, 27.499578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605495, 31.808712, 27.408394>,  <41.541302, 31.444317, 27.256420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605495, 31.808712, 27.408394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640341, -0.389017, 0.662291,
		0.751139, 0.137004, -0.645771,
		0.160480, 0.910986, 0.379935,
		41.653641, 32.082008, 27.522375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234257, 31.718479, 27.104322>,  <41.541302, 31.444317, 27.256420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234257, 31.718479, 27.104322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084812, 31.876862, 27.439854>,  <41.995144, 31.971891, 27.641172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084812, 31.876862, 27.439854>,  <42.234257, 31.718479, 27.104322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084812, 31.876862, 27.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675673, -0.503403, 0.538565,
		0.635517, 0.767987, -0.079460,
		-0.373611, 0.395956, 0.838829,
		41.972729, 31.995649, 27.691502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787762, 31.901630, 27.524355>,  <42.234257, 31.718479, 27.104322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787762, 31.901630, 27.524355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477413, 31.896172, 27.776649>,  <42.291203, 31.892897, 27.928026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477413, 31.896172, 27.776649>,  <42.787762, 31.901630, 27.524355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477413, 31.896172, 27.776649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561067, -0.472085, 0.679956,
		0.288481, 0.881447, 0.373937,
		-0.775876, -0.013649, 0.630738,
		42.244652, 31.892076, 27.965872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168232, 32.067608, 28.060778>,  <42.787762, 31.901630, 27.524355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168232, 32.067608, 28.060778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818550, 31.950596, 28.215797>,  <42.608742, 31.880388, 28.308809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818550, 31.950596, 28.215797>,  <43.168232, 32.067608, 28.060778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818550, 31.950596, 28.215797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481656, -0.421409, 0.768389,
		-0.061462, 0.858394, 0.509296,
		-0.874203, -0.292532, 0.387550,
		42.556290, 31.862837, 28.332062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128342, 32.261551, 28.767057>,  <43.168232, 32.067608, 28.060778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128342, 32.261551, 28.767057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857807, 31.966911, 28.767418>,  <42.695488, 31.790129, 28.767635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857807, 31.966911, 28.767418>,  <43.128342, 32.261551, 28.767057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857807, 31.966911, 28.767418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440496, -0.403476, 0.801979,
		-0.590369, 0.542804, 0.597351,
		-0.676334, -0.736595, 0.000903,
		42.654907, 31.745934, 28.767689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986813, 32.162994, 29.435131>,  <43.128342, 32.261551, 28.767057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986813, 32.162994, 29.435131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831043, 31.820698, 29.298862>,  <42.737583, 31.615320, 29.217102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831043, 31.820698, 29.298862>,  <42.986813, 32.162994, 29.435131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831043, 31.820698, 29.298862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200290, -0.439694, 0.875530,
		-0.899019, 0.272717, 0.342623,
		-0.389421, -0.855742, -0.340671,
		42.714218, 31.563974, 29.196661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528645, 31.800072, 29.930101>,  <42.986813, 32.162994, 29.435131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528645, 31.800072, 29.930101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616516, 31.496784, 29.684551>,  <42.669239, 31.314812, 29.537222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616516, 31.496784, 29.684551>,  <42.528645, 31.800072, 29.930101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616516, 31.496784, 29.684551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095603, -0.609484, 0.787013,
		-0.970876, -0.231582, -0.061405,
		0.219683, -0.758221, -0.613873,
		42.682423, 31.269318, 29.500389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171524, 31.265236, 30.177597>,  <42.528645, 31.800072, 29.930101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171524, 31.265236, 30.177597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441944, 31.089569, 29.940926>,  <42.604198, 30.984169, 29.798922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441944, 31.089569, 29.940926>,  <42.171524, 31.265236, 30.177597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441944, 31.089569, 29.940926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084085, -0.751758, 0.654057,
		-0.732039, -0.491928, -0.471301,
		0.676053, -0.439166, -0.591680,
		42.644760, 30.957819, 29.763422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997181, 30.591619, 30.115047>,  <42.171524, 31.265236, 30.177597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997181, 30.591619, 30.115047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381622, 30.549839, 30.012772>,  <42.612286, 30.524771, 29.951406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381622, 30.549839, 30.012772>,  <41.997181, 30.591619, 30.115047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381622, 30.549839, 30.012772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092460, -0.750656, 0.654192,
		-0.260264, -0.652385, -0.711798,
		0.961100, -0.104450, -0.255688,
		42.669952, 30.518503, 29.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141376, 29.818151, 30.095118>,  <41.997181, 30.591619, 30.115047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141376, 29.818151, 30.095118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504539, 29.983479, 30.123035>,  <42.722439, 30.082674, 30.139786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504539, 29.983479, 30.123035>,  <42.141376, 29.818151, 30.095118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504539, 29.983479, 30.123035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288861, -0.737595, 0.610339,
		0.303744, -0.533970, -0.789060,
		0.907909, 0.413316, 0.069797,
		42.776913, 30.107473, 30.143974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698776, 29.279104, 30.039852>,  <42.141376, 29.818151, 30.095118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698776, 29.279104, 30.039852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865479, 29.587463, 30.232533>,  <42.965500, 29.772478, 30.348141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865479, 29.587463, 30.232533>,  <42.698776, 29.279104, 30.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865479, 29.587463, 30.232533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297910, -0.616474, 0.728841,
		0.858818, -0.160243, -0.486574,
		0.416752, 0.770897, 0.481701,
		42.990505, 29.818733, 30.377043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382740, 29.058456, 30.076727>,  <42.698776, 29.279104, 30.039852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382740, 29.058456, 30.076727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385689, 29.328064, 30.372196>,  <43.387459, 29.489828, 30.549479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385689, 29.328064, 30.372196>,  <43.382740, 29.058456, 30.076727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385689, 29.328064, 30.372196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128820, -0.733181, 0.667721,
		0.991641, 0.090232, -0.092234,
		0.007374, 0.674021, 0.738676,
		43.387901, 29.530270, 30.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060074, 29.111286, 30.481674>,  <43.382740, 29.058456, 30.076727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060074, 29.111286, 30.481674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758804, 29.230465, 30.716263>,  <43.578041, 29.301971, 30.857016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758804, 29.230465, 30.716263>,  <44.060074, 29.111286, 30.481674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758804, 29.230465, 30.716263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299596, -0.638344, 0.709055,
		0.585632, 0.709750, 0.391523,
		-0.753178, 0.297947, 0.586473,
		43.532852, 29.319849, 30.892204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347176, 29.317755, 31.147472>,  <44.060074, 29.111286, 30.481674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347176, 29.317755, 31.147472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964512, 29.204353, 31.174114>,  <43.734913, 29.136312, 31.190100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964512, 29.204353, 31.174114>,  <44.347176, 29.317755, 31.147472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964512, 29.204353, 31.174114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240591, -0.640520, 0.729281,
		-0.164093, 0.713695, 0.680965,
		-0.956656, -0.283503, 0.066604,
		43.677517, 29.119303, 31.194096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186615, 29.330929, 31.970030>,  <44.347176, 29.317755, 31.147472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186615, 29.330929, 31.970030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949856, 29.100922, 31.744106>,  <43.807800, 28.962917, 31.608551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949856, 29.100922, 31.744106>,  <44.186615, 29.330929, 31.970030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949856, 29.100922, 31.744106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050677, -0.725908, 0.685922,
		-0.804419, 0.377373, 0.458803,
		-0.591897, -0.575020, -0.564810,
		43.772285, 28.928415, 31.574663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528229, 29.055918, 32.400810>,  <44.186615, 29.330929, 31.970030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528229, 29.055918, 32.400810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616020, 28.806675, 32.100525>,  <43.668697, 28.657129, 31.920355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616020, 28.806675, 32.100525>,  <43.528229, 29.055918, 32.400810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616020, 28.806675, 32.100525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058062, -0.776453, 0.627495,
		-0.973887, -0.094136, -0.206596,
		0.219482, -0.623105, -0.750712,
		43.681866, 28.619743, 31.875311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917362, 28.602457, 32.121346>,  <43.528229, 29.055918, 32.400810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917362, 28.602457, 32.121346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269558, 28.417477, 32.079624>,  <43.480877, 28.306488, 32.054592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269558, 28.417477, 32.079624>,  <42.917362, 28.602457, 32.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269558, 28.417477, 32.079624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315778, -0.736232, 0.598538,
		-0.353587, -0.494068, -0.794275,
		0.880489, -0.462449, -0.104307,
		43.533703, 28.278742, 32.048332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782887, 27.922188, 32.127609>,  <42.917362, 28.602457, 32.121346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782887, 27.922188, 32.127609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182514, 27.919029, 32.144585>,  <43.422291, 27.917135, 32.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182514, 27.919029, 32.144585>,  <42.782887, 27.922188, 32.127609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182514, 27.919029, 32.144585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030755, -0.820085, 0.571414,
		0.030296, -0.572187, -0.819564,
		0.999068, -0.007894, 0.042443,
		43.482235, 27.916660, 32.157318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475403, 27.935514, 32.790852>,  <42.782887, 27.922188, 32.127609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475403, 27.935514, 32.790852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139065, 27.728519, 32.854324>,  <41.937260, 27.604322, 32.892410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139065, 27.728519, 32.854324>,  <42.475403, 27.935514, 32.790852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139065, 27.728519, 32.854324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430639, 0.461987, -0.775318,
		0.327906, -0.720262, -0.611311,
		-0.840849, -0.517485, 0.158685,
		41.886810, 27.573273, 32.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124168, 27.669905, 32.148304>,  <42.475403, 27.935514, 32.790852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124168, 27.669905, 32.148304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847748, 27.725052, 32.432117>,  <41.681896, 27.758141, 32.602406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847748, 27.725052, 32.432117>,  <42.124168, 27.669905, 32.148304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847748, 27.725052, 32.432117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559010, 0.520350, -0.645557,
		-0.458207, -0.842750, -0.282521,
		-0.691053, 0.137867, 0.709534,
		41.640430, 27.766413, 32.644978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571400, 27.587008, 31.841269>,  <42.124168, 27.669905, 32.148304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571400, 27.587008, 31.841269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398518, 27.777477, 32.147591>,  <41.294788, 27.891758, 32.331383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398518, 27.777477, 32.147591>,  <41.571400, 27.587008, 31.841269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398518, 27.777477, 32.147591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526197, 0.556484, -0.642995,
		-0.732334, -0.680872, 0.010044,
		-0.432208, 0.476172, 0.765805,
		41.268856, 27.920328, 32.377331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820137, 27.555044, 31.733406>,  <41.571400, 27.587008, 31.841269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820137, 27.555044, 31.733406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928131, 27.856895, 31.972618>,  <40.992928, 28.038006, 32.116146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928131, 27.856895, 31.972618>,  <40.820137, 27.555044, 31.733406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928131, 27.856895, 31.972618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626986, 0.609157, -0.485610,
		-0.730750, -0.243849, 0.637606,
		0.269987, 0.754629, 0.598032,
		41.009129, 28.083284, 32.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197655, 27.803240, 31.908094>,  <40.820137, 27.555044, 31.733406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197655, 27.803240, 31.908094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471153, 28.089268, 31.966297>,  <40.635250, 28.260885, 32.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471153, 28.089268, 31.966297>,  <40.197655, 27.803240, 31.908094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471153, 28.089268, 31.966297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541949, 0.631132, -0.554945,
		-0.488659, 0.300580, 0.819062,
		0.683742, 0.715069, 0.145509,
		40.676277, 28.303789, 32.009949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855625, 28.437052, 32.106426>,  <40.197655, 27.803240, 31.908094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855625, 28.437052, 32.106426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210381, 28.528458, 31.945827>,  <40.423233, 28.583302, 31.849468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210381, 28.528458, 31.945827>,  <39.855625, 28.437052, 32.106426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210381, 28.528458, 31.945827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455054, 0.581998, -0.673946,
		0.079667, 0.780423, 0.620156,
		0.886893, 0.228514, -0.401500,
		40.476448, 28.597012, 31.825377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773365, 29.069588, 31.865210>,  <39.855625, 28.437052, 32.106426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773365, 29.069588, 31.865210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115883, 28.994869, 31.672600>,  <40.321392, 28.950037, 31.557034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115883, 28.994869, 31.672600>,  <39.773365, 29.069588, 31.865210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115883, 28.994869, 31.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269039, 0.634509, -0.724580,
		0.440880, 0.750003, 0.493071,
		0.856296, -0.186798, -0.481522,
		40.372772, 28.938829, 31.528143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026165, 29.792654, 31.689541>,  <39.773365, 29.069588, 31.865210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026165, 29.792654, 31.689541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189125, 29.521713, 31.444519>,  <40.286900, 29.359150, 31.297506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189125, 29.521713, 31.444519>,  <40.026165, 29.792654, 31.689541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189125, 29.521713, 31.444519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146743, 0.613474, -0.775961,
		0.901384, 0.406013, 0.150532,
		0.407397, -0.677350, -0.612556,
		40.311344, 29.318508, 31.260752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476879, 30.162067, 31.239750>,  <40.026165, 29.792654, 31.689541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476879, 30.162067, 31.239750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400433, 29.817024, 31.052399>,  <40.354565, 29.609999, 30.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400433, 29.817024, 31.052399>,  <40.476879, 30.162067, 31.239750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400433, 29.817024, 31.052399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017213, 0.480048, -0.877074,
		0.981416, -0.159564, -0.106595,
		-0.191120, -0.862609, -0.468380,
		40.343098, 29.558241, 30.911884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907738, 30.149836, 30.616404>,  <40.476879, 30.162067, 31.239750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907738, 30.149836, 30.616404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613380, 29.885052, 30.559452>,  <40.436768, 29.726181, 30.525280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613380, 29.885052, 30.559452>,  <40.907738, 30.149836, 30.616404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613380, 29.885052, 30.559452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121646, 0.336111, -0.933933,
		0.666081, -0.669955, -0.327866,
		-0.735893, -0.661959, -0.142380,
		40.392612, 29.686464, 30.516739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039761, 29.860811, 30.005249>,  <40.907738, 30.149836, 30.616404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039761, 29.860811, 30.005249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651024, 29.778400, 30.050976>,  <40.417782, 29.728954, 30.078413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651024, 29.778400, 30.050976>,  <41.039761, 29.860811, 30.005249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651024, 29.778400, 30.050976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187927, 0.385121, -0.903529,
		0.142125, -0.899575, -0.412996,
		-0.971846, -0.206027, 0.114319,
		40.359470, 29.716593, 30.085272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798492, 29.652679, 29.399429>,  <41.039761, 29.860811, 30.005249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798492, 29.652679, 29.399429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437366, 29.714767, 29.559845>,  <40.220692, 29.752020, 29.656094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437366, 29.714767, 29.559845>,  <40.798492, 29.652679, 29.399429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437366, 29.714767, 29.559845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356050, 0.253155, -0.899523,
		-0.241148, -0.954892, -0.173286,
		-0.902816, 0.155219, 0.401037,
		40.166523, 29.761333, 29.680157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404472, 29.393744, 28.883474>,  <40.798492, 29.652679, 29.399429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404472, 29.393744, 28.883474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160503, 29.629688, 29.095158>,  <40.014122, 29.771255, 29.222168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160503, 29.629688, 29.095158>,  <40.404472, 29.393744, 28.883474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160503, 29.629688, 29.095158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473438, 0.264305, -0.840238,
		-0.635497, -0.763024, 0.118059,
		-0.609918, 0.589862, 0.529210,
		39.977528, 29.806646, 29.253922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774822, 29.322790, 28.538322>,  <40.404472, 29.393744, 28.883474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774822, 29.322790, 28.538322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734898, 29.665558, 28.740601>,  <39.710941, 29.871218, 28.861967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734898, 29.665558, 28.740601>,  <39.774822, 29.322790, 28.538322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734898, 29.665558, 28.740601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356925, 0.443575, -0.822099,
		-0.928785, -0.262553, 0.261580,
		-0.099814, 0.856918, 0.505697,
		39.704952, 29.922632, 28.892309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012791, 29.564915, 28.503496>,  <39.774822, 29.322790, 28.538322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012791, 29.564915, 28.503496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227779, 29.896675, 28.564453>,  <39.356773, 30.095732, 28.601027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227779, 29.896675, 28.564453>,  <39.012791, 29.564915, 28.503496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227779, 29.896675, 28.564453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435464, 0.427729, -0.792098,
		-0.722147, 0.359368, 0.591065,
		0.537470, 0.829399, 0.152391,
		39.389019, 30.145494, 28.610170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562424, 30.108711, 28.567734>,  <39.012791, 29.564915, 28.503496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562424, 30.108711, 28.567734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912872, 30.278595, 28.476490>,  <39.123142, 30.380526, 28.421743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912872, 30.278595, 28.476490>,  <38.562424, 30.108711, 28.567734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912872, 30.278595, 28.476490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450091, 0.551083, -0.702656,
		-0.172718, 0.718281, 0.673974,
		0.876120, 0.424711, -0.228110,
		39.175709, 30.406008, 28.408056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382423, 30.701742, 28.374073>,  <38.562424, 30.108711, 28.567734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382423, 30.701742, 28.374073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749268, 30.696690, 28.214699>,  <38.969376, 30.693659, 28.119074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749268, 30.696690, 28.214699>,  <38.382423, 30.701742, 28.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749268, 30.696690, 28.214699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347479, 0.464507, -0.814550,
		0.195364, 0.885479, 0.421615,
		0.917110, -0.012631, -0.398434,
		39.024399, 30.692900, 28.095169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374722, 31.386326, 28.164581>,  <38.382423, 30.701742, 28.374073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374722, 31.386326, 28.164581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668995, 31.198853, 27.968987>,  <38.845558, 31.086369, 27.851629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668995, 31.198853, 27.968987>,  <38.374722, 31.386326, 28.164581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668995, 31.198853, 27.968987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146107, 0.595130, -0.790236,
		0.661380, 0.652808, 0.369349,
		0.735683, -0.468682, -0.488987,
		38.889698, 31.058249, 27.822290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884605, 31.940689, 27.874645>,  <38.374722, 31.386326, 28.164581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884605, 31.940689, 27.874645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916958, 31.609348, 27.652908>,  <38.936371, 31.410543, 27.519867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916958, 31.609348, 27.652908>,  <38.884605, 31.940689, 27.874645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916958, 31.609348, 27.652908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100596, 0.560107, -0.822290,
		0.991634, 0.010747, 0.128633,
		0.080885, -0.828350, -0.554340,
		38.941223, 31.360844, 27.486607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313557, 32.166973, 27.412066>,  <38.884605, 31.940689, 27.874645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313557, 32.166973, 27.412066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175735, 31.835903, 27.234871>,  <39.093044, 31.637260, 27.128553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175735, 31.835903, 27.234871>,  <39.313557, 32.166973, 27.412066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175735, 31.835903, 27.234871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038373, 0.483903, -0.874280,
		0.937984, -0.284234, -0.198489,
		-0.344549, -0.827677, -0.442987,
		39.072372, 31.587601, 27.101974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615467, 32.254826, 26.809633>,  <39.313557, 32.166973, 27.412066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615467, 32.254826, 26.809633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303425, 32.010136, 26.757126>,  <39.116199, 31.863321, 26.725622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303425, 32.010136, 26.757126>,  <39.615467, 32.254826, 26.809633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303425, 32.010136, 26.757126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176181, 0.416104, -0.892086,
		0.600335, -0.672791, -0.432378,
		-0.780102, -0.611727, -0.131268,
		39.069393, 31.826618, 26.717745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660122, 31.918858, 26.154106>,  <39.615467, 32.254826, 26.809633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660122, 31.918858, 26.154106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268101, 31.869583, 26.216488>,  <39.032887, 31.840019, 26.253916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268101, 31.869583, 26.216488>,  <39.660122, 31.918858, 26.154106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268101, 31.869583, 26.216488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195121, 0.447459, -0.872759,
		0.037727, -0.885780, -0.462569,
		-0.980053, -0.123184, 0.155953,
		38.974083, 31.832628, 26.263273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416477, 31.621675, 25.540186>,  <39.660122, 31.918858, 26.154106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416477, 31.621675, 25.540186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101719, 31.809906, 25.699860>,  <38.912865, 31.922844, 25.795664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101719, 31.809906, 25.699860>,  <39.416477, 31.621675, 25.540186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101719, 31.809906, 25.699860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313174, 0.252849, -0.915418,
		-0.531710, -0.845354, -0.051593,
		-0.786897, 0.470579, 0.399185,
		38.865650, 31.951080, 25.819614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919781, 31.526115, 25.068865>,  <39.416477, 31.621675, 25.540186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919781, 31.526115, 25.068865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794479, 31.836823, 25.287407>,  <38.719299, 32.023247, 25.418533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794479, 31.836823, 25.287407>,  <38.919781, 31.526115, 25.068865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794479, 31.836823, 25.287407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226520, 0.497592, -0.837312,
		-0.922259, -0.386050, 0.020081,
		-0.313252, 0.776767, 0.546357,
		38.700504, 32.069851, 25.451315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306793, 31.770679, 24.762527>,  <38.919781, 31.526115, 25.068865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306793, 31.770679, 24.762527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410698, 32.090107, 24.979713>,  <38.473042, 32.281765, 25.110025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410698, 32.090107, 24.979713>,  <38.306793, 31.770679, 24.762527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410698, 32.090107, 24.979713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385626, 0.601272, -0.699832,
		-0.885333, -0.027588, 0.464139,
		0.259766, 0.798568, 0.542964,
		38.488628, 32.329678, 25.142603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723465, 32.142414, 24.926107>,  <38.306793, 31.770679, 24.762527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723465, 32.142414, 24.926107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042576, 32.382961, 24.908627>,  <38.234043, 32.527290, 24.898138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042576, 32.382961, 24.908627>,  <37.723465, 32.142414, 24.926107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042576, 32.382961, 24.908627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388871, 0.457767, -0.799518,
		-0.460801, 0.654829, 0.599050,
		0.797773, 0.601372, -0.043704,
		38.281906, 32.563374, 24.895515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583111, 32.880695, 25.180634>,  <37.723465, 32.142414, 24.926107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583111, 32.880695, 25.180634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872494, 32.858395, 24.905388>,  <38.046124, 32.845013, 24.740240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872494, 32.858395, 24.905388>,  <37.583111, 32.880695, 25.180634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872494, 32.858395, 24.905388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604198, 0.431081, -0.670160,
		0.333997, 0.900589, 0.278182,
		0.723458, -0.055754, -0.688114,
		38.089531, 32.841667, 24.698954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146282, 32.842258, 24.624199>,  <37.583111, 32.880695, 25.180634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146282, 32.842258, 24.624199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983509, 33.112549, 24.378338>,  <36.885845, 33.274723, 24.230822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983509, 33.112549, 24.378338>,  <37.146282, 32.842258, 24.624199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983509, 33.112549, 24.378338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911415, -0.255367, 0.322661,
		0.061070, 0.691503, 0.719788,
		-0.406931, 0.675731, -0.614651,
		36.861431, 33.315269, 24.193943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600147, 32.998444, 24.901098>,  <37.146282, 32.842258, 24.624199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600147, 32.998444, 24.901098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506638, 33.117149, 24.530739>,  <36.450531, 33.188374, 24.308523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506638, 33.117149, 24.530739>,  <36.600147, 32.998444, 24.901098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506638, 33.117149, 24.530739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956481, -0.241226, 0.164177,
		-0.174629, 0.923982, 0.340237,
		-0.233771, 0.296761, -0.925896,
		36.436504, 33.206177, 24.252970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976540, 33.329678, 24.840622>,  <36.600147, 32.998444, 24.901098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976540, 33.329678, 24.840622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994354, 33.149593, 24.483898>,  <36.005043, 33.041542, 24.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994354, 33.149593, 24.483898>,  <35.976540, 33.329678, 24.840622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994354, 33.149593, 24.483898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923664, -0.358661, 0.134931,
		-0.380606, 0.817724, -0.431818,
		0.044540, -0.450210, -0.891811,
		36.007717, 33.014530, 24.216354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322109, 33.465313, 24.465714>,  <35.976540, 33.329678, 24.840622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322109, 33.465313, 24.465714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482536, 33.144821, 24.288097>,  <35.578793, 32.952526, 24.181528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482536, 33.144821, 24.288097>,  <35.322109, 33.465313, 24.465714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482536, 33.144821, 24.288097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887900, -0.459260, 0.026713,
		-0.225334, 0.383552, -0.895607,
		0.401071, -0.801229, -0.444043,
		35.602859, 32.904453, 24.154884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856483, 33.063583, 24.022766>,  <35.322109, 33.465313, 24.465714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856483, 33.063583, 24.022766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137318, 32.797234, 24.123714>,  <35.305817, 32.637424, 24.184284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137318, 32.797234, 24.123714>,  <34.856483, 33.063583, 24.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137318, 32.797234, 24.123714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708906, -0.620088, 0.336070,
		-0.067287, -0.414858, -0.907395,
		0.702086, -0.665871, 0.252371,
		35.347942, 32.597473, 24.199427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803879, 32.367432, 23.625383>,  <34.856483, 33.063583, 24.022766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803879, 32.367432, 23.625383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957798, 32.343712, 23.993820>,  <35.050148, 32.329479, 24.214882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957798, 32.343712, 23.993820>,  <34.803879, 32.367432, 23.625383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957798, 32.343712, 23.993820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666406, -0.708315, 0.232794,
		0.638619, -0.703401, -0.312078,
		0.384797, -0.059304, 0.921094,
		35.073238, 32.325920, 24.270149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903870, 31.677692, 23.715435>,  <34.803879, 32.367432, 23.625383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903870, 31.677692, 23.715435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841228, 31.870285, 24.060375>,  <34.803646, 31.985840, 24.267340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841228, 31.870285, 24.060375>,  <34.903870, 31.677692, 23.715435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841228, 31.870285, 24.060375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629380, -0.721534, 0.288565,
		0.761155, -0.497558, 0.416028,
		-0.156600, 0.481482, 0.862352,
		34.794247, 32.014729, 24.319080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050926, 31.172661, 24.241636>,  <34.903870, 31.677692, 23.715435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050926, 31.172661, 24.241636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827503, 31.454018, 24.417477>,  <34.693447, 31.622831, 24.522982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827503, 31.454018, 24.417477>,  <35.050926, 31.172661, 24.241636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827503, 31.454018, 24.417477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522654, -0.709995, 0.471953,
		0.644083, 0.033855, 0.764206,
		-0.558561, 0.703392, 0.439602,
		34.659935, 31.665035, 24.549356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031963, 30.979929, 24.887011>,  <35.050926, 31.172661, 24.241636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031963, 30.979929, 24.887011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715591, 31.224548, 24.878605>,  <34.525768, 31.371319, 24.873562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715591, 31.224548, 24.878605>,  <35.031963, 30.979929, 24.887011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715591, 31.224548, 24.878605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509818, -0.639593, 0.575331,
		0.338402, 0.465758, 0.817651,
		-0.790929, 0.611547, -0.021012,
		34.478313, 31.408012, 24.872301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765404, 31.054989, 25.541758>,  <35.031963, 30.979929, 24.887011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765404, 31.054989, 25.541758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454903, 31.154530, 25.310066>,  <34.268600, 31.214254, 25.171051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454903, 31.154530, 25.310066>,  <34.765404, 31.054989, 25.541758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454903, 31.154530, 25.310066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609678, -0.530087, 0.589322,
		-0.160387, 0.810606, 0.563201,
		-0.776253, 0.248852, -0.579227,
		34.222027, 31.229185, 25.136297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222446, 31.228905, 26.068178>,  <34.765404, 31.054989, 25.541758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222446, 31.228905, 26.068178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019337, 31.163296, 25.729885>,  <33.897472, 31.123930, 25.526909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019337, 31.163296, 25.729885>,  <34.222446, 31.228905, 26.068178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019337, 31.163296, 25.729885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646982, -0.575618, 0.500078,
		-0.568843, 0.801100, 0.186163,
		-0.507771, -0.164021, -0.845734,
		33.867004, 31.114090, 25.476166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381073, 31.464735, 26.164478>,  <34.222446, 31.228905, 26.068178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381073, 31.464735, 26.164478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436001, 31.215015, 25.856869>,  <33.468960, 31.065184, 25.672304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436001, 31.215015, 25.856869>,  <33.381073, 31.464735, 26.164478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436001, 31.215015, 25.856869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645281, -0.645413, 0.408724,
		-0.751502, 0.440108, -0.491477,
		0.137323, -0.624297, -0.769022,
		33.477200, 31.027727, 25.626162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687943, 31.357555, 25.898020>,  <33.381073, 31.464735, 26.164478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687943, 31.357555, 25.898020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931923, 31.064697, 25.776745>,  <33.078312, 30.888983, 25.703979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931923, 31.064697, 25.776745>,  <32.687943, 31.357555, 25.898020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931923, 31.064697, 25.776745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515512, -0.657181, 0.549873,
		-0.601835, -0.179101, -0.778279,
		0.609952, -0.732145, -0.303185,
		33.114910, 30.845053, 25.685789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233570, 30.825178, 26.080029>,  <32.687943, 31.357555, 25.898020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233570, 30.825178, 26.080029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580067, 30.643467, 25.996838>,  <32.787964, 30.534439, 25.946924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580067, 30.643467, 25.996838>,  <32.233570, 30.825178, 26.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580067, 30.643467, 25.996838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288815, -0.794967, 0.533491,
		-0.407687, -0.402067, -0.819837,
		0.866243, -0.454279, -0.207975,
		32.839939, 30.507183, 25.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056206, 30.107431, 25.901922>,  <32.233570, 30.825178, 26.080029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056206, 30.107431, 25.901922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444031, 30.078762, 25.995571>,  <32.676727, 30.061562, 26.051760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444031, 30.078762, 25.995571>,  <32.056206, 30.107431, 25.901922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444031, 30.078762, 25.995571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189929, -0.823606, 0.534416,
		0.154521, -0.562616, -0.812149,
		0.969562, -0.071672, 0.234121,
		32.734898, 30.057261, 26.065807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342468, 29.358585, 25.715036>,  <32.056206, 30.107431, 25.901922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342468, 29.358585, 25.715036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560532, 29.533607, 26.001072>,  <32.691368, 29.638620, 26.172693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560532, 29.533607, 26.001072>,  <32.342468, 29.358585, 25.715036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560532, 29.533607, 26.001072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187926, -0.767494, 0.612892,
		0.817000, -0.468505, -0.336175,
		0.545155, 0.437557, 0.715087,
		32.724079, 29.664875, 26.215597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732967, 28.912151, 25.994526>,  <32.342468, 29.358585, 25.715036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732967, 28.912151, 25.994526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718452, 29.178112, 26.292946>,  <32.709743, 29.337688, 26.471996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718452, 29.178112, 26.292946>,  <32.732967, 28.912151, 25.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718452, 29.178112, 26.292946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289456, -0.721530, 0.628975,
		0.956503, -0.193126, 0.218640,
		-0.036284, 0.664903, 0.746047,
		32.707569, 29.377583, 26.516760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802444, 28.561888, 26.497297>,  <32.732967, 28.912151, 25.994526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802444, 28.561888, 26.497297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654884, 28.895832, 26.660721>,  <32.566349, 29.096199, 26.758774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654884, 28.895832, 26.660721>,  <32.802444, 28.561888, 26.497297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654884, 28.895832, 26.660721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318532, -0.526498, 0.788249,
		0.873182, 0.160650, 0.460157,
		-0.368904, 0.834860, 0.408556,
		32.544212, 29.146290, 26.783287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776218, 28.326464, 27.195534>,  <32.802444, 28.561888, 26.497297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776218, 28.326464, 27.195534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550091, 28.656387, 27.199581>,  <32.414413, 28.854342, 27.202009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550091, 28.656387, 27.199581>,  <32.776218, 28.326464, 27.195534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550091, 28.656387, 27.199581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297697, -0.215449, 0.930031,
		0.769277, 0.522755, 0.367341,
		-0.565322, 0.824808, 0.010118,
		32.380493, 28.903830, 27.202616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864273, 28.678804, 27.819271>,  <32.776218, 28.326464, 27.195534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864273, 28.678804, 27.819271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512646, 28.820637, 27.691830>,  <32.301670, 28.905737, 27.615364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512646, 28.820637, 27.691830>,  <32.864273, 28.678804, 27.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512646, 28.820637, 27.691830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420134, -0.260523, 0.869261,
		0.225221, 0.897997, 0.377990,
		-0.879069, 0.354583, -0.318604,
		32.248924, 28.927011, 27.596249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553848, 29.115534, 28.346699>,  <32.864273, 28.678804, 27.819271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553848, 29.115534, 28.346699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244038, 29.008526, 28.117424>,  <32.058151, 28.944321, 27.979860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244038, 29.008526, 28.117424>,  <32.553848, 29.115534, 28.346699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244038, 29.008526, 28.117424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515354, -0.258539, 0.817048,
		-0.366768, 0.928219, 0.062378,
		-0.774527, -0.267521, -0.573185,
		32.011681, 28.928270, 27.945469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895641, 29.449961, 28.620642>,  <32.553848, 29.115534, 28.346699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895641, 29.449961, 28.620642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778059, 29.139874, 28.396988>,  <31.707510, 28.953821, 28.262796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778059, 29.139874, 28.396988>,  <31.895641, 29.449961, 28.620642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778059, 29.139874, 28.396988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624420, -0.287144, 0.726393,
		-0.723664, 0.562660, -0.399654,
		-0.293954, -0.775217, -0.559132,
		31.689873, 28.907309, 28.229248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250280, 29.368460, 28.839151>,  <31.895641, 29.449961, 28.620642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250280, 29.368460, 28.839151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285946, 29.023041, 28.640621>,  <31.307346, 28.815790, 28.521503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285946, 29.023041, 28.640621>,  <31.250280, 29.368460, 28.839151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285946, 29.023041, 28.640621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534473, -0.461972, 0.707757,
		-0.840468, 0.202165, -0.502734,
		0.089166, -0.863545, -0.496325,
		31.312696, 28.763977, 28.491724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620598, 28.997828, 28.975084>,  <31.250280, 29.368460, 28.839151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620598, 28.997828, 28.975084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893129, 28.717606, 28.890217>,  <31.056648, 28.549473, 28.839296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893129, 28.717606, 28.890217>,  <30.620598, 28.997828, 28.975084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893129, 28.717606, 28.890217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425614, -0.614979, 0.663818,
		-0.595518, -0.361978, -0.717169,
		0.681331, -0.700552, -0.212168,
		31.097528, 28.507439, 28.826565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280182, 28.369774, 29.049784>,  <30.620598, 28.997828, 28.975084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280182, 28.369774, 29.049784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669407, 28.278347, 29.061832>,  <30.902943, 28.223492, 29.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669407, 28.278347, 29.061832>,  <30.280182, 28.369774, 29.049784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669407, 28.278347, 29.061832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207785, -0.812894, 0.544084,
		-0.099872, -0.535687, -0.838490,
		0.973063, -0.228565, 0.030122,
		30.961327, 28.209778, 29.070869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277712, 27.682770, 29.068293>,  <30.280182, 28.369774, 29.049784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277712, 27.682770, 29.068293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656551, 27.773422, 29.159195>,  <30.883854, 27.827814, 29.213737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656551, 27.773422, 29.159195>,  <30.277712, 27.682770, 29.068293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656551, 27.773422, 29.159195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048087, -0.800290, 0.597682,
		0.317326, -0.555134, -0.768850,
		0.947097, 0.226632, 0.227258,
		30.940680, 27.841412, 29.227373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667633, 27.064327, 29.023714>,  <30.277712, 27.682770, 29.068293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667633, 27.064327, 29.023714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895336, 27.294292, 29.258804>,  <31.031958, 27.432272, 29.399858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895336, 27.294292, 29.258804>,  <30.667633, 27.064327, 29.023714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895336, 27.294292, 29.258804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136000, -0.770853, 0.622326,
		0.810833, -0.274333, -0.517001,
		0.569257, 0.574915, 0.587724,
		31.066113, 27.466766, 29.435122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287352, 26.715071, 29.226189>,  <30.667633, 27.064327, 29.023714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287352, 26.715071, 29.226189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238512, 26.986217, 29.516178>,  <31.209208, 27.148905, 29.690172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238512, 26.986217, 29.516178>,  <31.287352, 26.715071, 29.226189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238512, 26.986217, 29.516178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065008, -0.723410, 0.687352,
		0.990387, 0.131055, 0.044262,
		-0.122100, 0.677867, 0.724975,
		31.201881, 27.189577, 29.733671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820671, 26.587584, 29.747635>,  <31.287352, 26.715071, 29.226189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820671, 26.587584, 29.747635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528826, 26.805847, 29.912521>,  <31.353718, 26.936806, 30.011454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528826, 26.805847, 29.912521>,  <31.820671, 26.587584, 29.747635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528826, 26.805847, 29.912521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113564, -0.691087, 0.713794,
		0.674365, 0.473981, 0.566193,
		-0.729613, 0.545657, 0.412218,
		31.309942, 26.969543, 30.036186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090073, 26.641737, 30.401178>,  <31.820671, 26.587584, 29.747635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090073, 26.641737, 30.401178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698467, 26.714054, 30.438808>,  <31.463505, 26.757444, 30.461386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698467, 26.714054, 30.438808>,  <32.090073, 26.641737, 30.401178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698467, 26.714054, 30.438808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047265, -0.650414, 0.758108,
		0.198248, 0.737750, 0.645308,
		-0.979011, 0.180794, 0.094074,
		31.404764, 26.768291, 30.467031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977795, 26.859713, 31.116550>,  <32.090073, 26.641737, 30.401178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977795, 26.859713, 31.116550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612873, 26.748440, 30.996338>,  <31.393921, 26.681677, 30.924210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612873, 26.748440, 30.996338>,  <31.977795, 26.859713, 31.116550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612873, 26.748440, 30.996338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078417, -0.601620, 0.794924,
		-0.401939, 0.748778, 0.527045,
		-0.912303, -0.278182, -0.300531,
		31.339182, 26.664986, 30.906179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678438, 26.787928, 31.718626>,  <31.977795, 26.859713, 31.116550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678438, 26.787928, 31.718626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453581, 26.573315, 31.466873>,  <31.318666, 26.444546, 31.315821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453581, 26.573315, 31.466873>,  <31.678438, 26.787928, 31.718626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453581, 26.573315, 31.466873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051667, -0.736739, 0.674200,
		-0.825423, 0.411517, 0.386433,
		-0.562145, -0.536535, -0.629383,
		31.284937, 26.412354, 31.278059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133703, 26.411678, 32.136402>,  <31.678438, 26.787928, 31.718626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133703, 26.411678, 32.136402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112749, 26.199635, 31.797878>,  <31.100178, 26.072409, 31.594765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112749, 26.199635, 31.797878>,  <31.133703, 26.411678, 32.136402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112749, 26.199635, 31.797878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044598, -0.845385, 0.532293,
		-0.997631, 0.065627, 0.020642,
		-0.052383, -0.530111, -0.846309,
		31.097034, 26.040602, 31.543985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700619, 25.963882, 32.310078>,  <31.133703, 26.411678, 32.136402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700619, 25.963882, 32.310078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864601, 25.802315, 31.982960>,  <30.962990, 25.705374, 31.786690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864601, 25.802315, 31.982960>,  <30.700619, 25.963882, 32.310078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864601, 25.802315, 31.982960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003828, -0.895829, 0.444382,
		-0.912099, -0.185306, -0.365701,
		0.409952, -0.403921, -0.817794,
		30.987589, 25.681139, 31.737621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213867, 25.503471, 32.080544>,  <30.700619, 25.963882, 32.310078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213867, 25.503471, 32.080544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574511, 25.397854, 31.943501>,  <30.790897, 25.334484, 31.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574511, 25.397854, 31.943501>,  <30.213867, 25.503471, 32.080544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574511, 25.397854, 31.943501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252260, -0.964397, 0.079397,
		-0.351375, 0.014842, -0.936117,
		0.901610, -0.264043, -0.342609,
		30.844994, 25.318642, 31.840717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030230, 24.883102, 31.644827>,  <30.213867, 25.503471, 32.080544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030230, 24.883102, 31.644827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426149, 24.850555, 31.691608>,  <30.663700, 24.831028, 31.719677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426149, 24.850555, 31.691608>,  <30.030230, 24.883102, 31.644827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426149, 24.850555, 31.691608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091958, -0.991849, 0.088197,
		0.108824, -0.098052, -0.989214,
		0.989799, -0.081368, 0.116954,
		30.723089, 24.826145, 31.726694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289997, 24.255970, 31.216516>,  <30.030230, 24.883102, 31.644827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289997, 24.255970, 31.216516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555395, 24.337345, 31.504513>,  <30.714634, 24.386169, 31.677311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555395, 24.337345, 31.504513>,  <30.289997, 24.255970, 31.216516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555395, 24.337345, 31.504513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034299, -0.969581, 0.242354,
		0.747393, -0.136106, -0.650291,
		0.663496, 0.203438, 0.719990,
		30.754444, 24.398376, 31.720510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793941, 23.835726, 31.063438>,  <30.289997, 24.255970, 31.216516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793941, 23.835726, 31.063438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829939, 23.943066, 31.447083>,  <30.851538, 24.007469, 31.677269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829939, 23.943066, 31.447083>,  <30.793941, 23.835726, 31.063438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829939, 23.943066, 31.447083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044712, -0.963134, 0.265280,
		0.994938, 0.019010, -0.098674,
		0.089993, 0.268349, 0.959109,
		30.856937, 24.023571, 31.734816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406809, 23.359892, 31.360596>,  <30.793941, 23.835726, 31.063438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406809, 23.359892, 31.360596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171474, 23.489258, 31.657043>,  <31.030273, 23.566877, 31.834913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171474, 23.489258, 31.657043>,  <31.406809, 23.359892, 31.360596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171474, 23.489258, 31.657043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102295, -0.879400, 0.464965,
		0.802119, 0.349369, 0.484300,
		-0.588338, 0.323415, 0.741122,
		30.994972, 23.586283, 31.879379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754604, 23.124027, 31.867979>,  <31.406809, 23.359892, 31.360596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754604, 23.124027, 31.867979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414145, 23.204483, 32.061924>,  <31.209869, 23.252756, 32.178291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414145, 23.204483, 32.061924>,  <31.754604, 23.124027, 31.867979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414145, 23.204483, 32.061924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044627, -0.892604, 0.448627,
		0.523026, 0.403485, 0.750762,
		-0.851148, 0.201139, 0.484862,
		31.158800, 23.264824, 32.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868399, 23.023745, 32.532036>,  <31.754604, 23.124027, 31.867979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868399, 23.023745, 32.532036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469250, 23.001965, 32.517673>,  <31.229761, 22.988895, 32.509056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469250, 23.001965, 32.517673>,  <31.868399, 23.023745, 32.532036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469250, 23.001965, 32.517673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017680, -0.755700, 0.654679,
		-0.062783, 0.652650, 0.755054,
		-0.997871, -0.054452, -0.035907,
		31.169889, 22.985628, 32.506901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543320, 23.178766, 33.154591>,  <31.868399, 23.023745, 32.532036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543320, 23.178766, 33.154591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242107, 22.993881, 32.967270>,  <31.061380, 22.882950, 32.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242107, 22.993881, 32.967270>,  <31.543320, 23.178766, 33.154591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242107, 22.993881, 32.967270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022133, -0.693523, 0.720094,
		-0.657613, 0.552618, 0.512014,
		-0.753031, -0.462210, -0.468301,
		31.016197, 22.855219, 32.826778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061295, 23.002277, 33.722942>,  <31.543320, 23.178766, 33.154591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061295, 23.002277, 33.722942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982147, 22.753078, 33.420227>,  <30.934658, 22.603559, 33.238598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982147, 22.753078, 33.420227>,  <31.061295, 23.002277, 33.722942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982147, 22.753078, 33.420227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049209, -0.764764, 0.642429,
		-0.978992, 0.164358, 0.120667,
		-0.197870, -0.622995, -0.756786,
		30.922787, 22.566179, 33.193192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545752, 22.629349, 33.932091>,  <31.061295, 23.002277, 33.722942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545752, 22.629349, 33.932091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732281, 22.406658, 33.657108>,  <30.844198, 22.273043, 33.492119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732281, 22.406658, 33.657108>,  <30.545752, 22.629349, 33.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732281, 22.406658, 33.657108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030560, -0.786800, 0.616451,
		-0.884086, -0.266458, -0.383918,
		0.466325, -0.556728, -0.687456,
		30.872179, 22.239639, 33.450871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289886, 21.995960, 34.084297>,  <30.545752, 22.629349, 33.932091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289886, 21.995960, 34.084297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611177, 21.915802, 33.859917>,  <30.803953, 21.867706, 33.725288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611177, 21.915802, 33.859917>,  <30.289886, 21.995960, 34.084297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611177, 21.915802, 33.859917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206954, -0.789164, 0.578265,
		-0.558563, -0.580570, -0.592406,
		0.803229, -0.200397, -0.560949,
		30.852146, 21.855682, 33.691631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223238, 21.358566, 33.938969>,  <30.289886, 21.995960, 34.084297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223238, 21.358566, 33.938969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612396, 21.412220, 33.863625>,  <30.845892, 21.444412, 33.818420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612396, 21.412220, 33.863625>,  <30.223238, 21.358566, 33.938969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612396, 21.412220, 33.863625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217487, -0.807503, 0.548305,
		-0.078550, -0.574410, -0.814790,
		0.972897, 0.134137, -0.188356,
		30.904266, 21.452461, 33.807117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465715, 20.713789, 33.700321>,  <30.223238, 21.358566, 33.938969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465715, 20.713789, 33.700321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772490, 20.920185, 33.852936>,  <30.956554, 21.044022, 33.944504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772490, 20.920185, 33.852936>,  <30.465715, 20.713789, 33.700321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772490, 20.920185, 33.852936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224212, -0.772530, 0.594077,
		0.601283, -0.370073, -0.708170,
		0.766934, 0.515989, 0.381534,
		31.002569, 21.074982, 33.967396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009819, 20.225109, 33.695847>,  <30.465715, 20.713789, 33.700321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009819, 20.225109, 33.695847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062988, 20.514072, 33.967274>,  <31.094889, 20.687450, 34.130131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062988, 20.514072, 33.967274>,  <31.009819, 20.225109, 33.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062988, 20.514072, 33.967274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189352, -0.690546, 0.698063,
		0.972871, 0.035702, -0.228577,
		0.132921, 0.722407, 0.678572,
		31.102865, 20.730795, 34.170845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443373, 19.784378, 34.151955>,  <31.009819, 20.225109, 33.695847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443373, 19.784378, 34.151955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465090, 20.130650, 34.351013>,  <31.478121, 20.338411, 34.470448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465090, 20.130650, 34.351013>,  <31.443373, 19.784378, 34.151955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465090, 20.130650, 34.351013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090524, -0.500601, 0.860932,
		0.994413, -0.001695, -0.105544,
		0.054295, 0.865677, 0.497650,
		31.481379, 20.390352, 34.500309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063206, 19.771490, 34.592049>,  <31.443373, 19.784378, 34.151955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063206, 19.771490, 34.592049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787966, 20.018143, 34.745033>,  <31.622820, 20.166134, 34.836823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787966, 20.018143, 34.745033>,  <32.063206, 19.771490, 34.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787966, 20.018143, 34.745033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209211, -0.336107, 0.918293,
		0.694797, 0.711897, 0.102270,
		-0.688104, 0.616632, 0.382463,
		31.581535, 20.203133, 34.859772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297295, 20.312296, 35.146976>,  <32.063206, 19.771490, 34.592049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297295, 20.312296, 35.146976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926554, 20.176483, 35.211063>,  <31.704109, 20.094995, 35.249516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926554, 20.176483, 35.211063>,  <32.297295, 20.312296, 35.146976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926554, 20.176483, 35.211063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221522, -0.150048, 0.963542,
		-0.303113, 0.928549, 0.214286,
		-0.926850, -0.339532, 0.160213,
		31.648499, 20.074623, 35.259129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985291, 20.651083, 35.772316>,  <32.297295, 20.312296, 35.146976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985291, 20.651083, 35.772316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898684, 20.265598, 35.709858>,  <31.846720, 20.034307, 35.672382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898684, 20.265598, 35.709858>,  <31.985291, 20.651083, 35.772316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898684, 20.265598, 35.709858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439122, -0.238982, 0.866059,
		-0.871947, 0.118949, 0.474931,
		-0.216516, -0.963711, -0.156147,
		31.833729, 19.976484, 35.663013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911160, 20.426037, 36.433887>,  <31.985291, 20.651083, 35.772316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911160, 20.426037, 36.433887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979815, 20.115841, 36.190857>,  <32.021008, 19.929724, 36.045036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979815, 20.115841, 36.190857>,  <31.911160, 20.426037, 36.433887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979815, 20.115841, 36.190857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722479, -0.320195, 0.612780,
		-0.669750, -0.544139, 0.505319,
		0.171637, -0.775492, -0.607580,
		32.031307, 19.883194, 36.008583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409212, 19.941795, 36.572239>,  <31.911160, 20.426037, 36.433887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409212, 19.941795, 36.572239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413046, 20.060452, 36.954216>,  <31.415346, 20.131645, 37.183403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413046, 20.060452, 36.954216>,  <31.409212, 19.941795, 36.572239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413046, 20.060452, 36.954216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415298, -0.869909, 0.266057,
		0.909635, 0.394034, -0.131534,
		0.009587, 0.296641, 0.954941,
		31.415922, 20.149445, 37.240700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957985, 20.505400, 36.938320>,  <31.409212, 19.941795, 36.572239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957985, 20.505400, 36.938320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176800, 20.502487, 36.603489>,  <31.308088, 20.500740, 36.402592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176800, 20.502487, 36.603489>,  <30.957985, 20.505400, 36.938320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176800, 20.502487, 36.603489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785444, -0.350321, -0.510248,
		-0.289530, 0.936601, -0.197358,
		0.547038, -0.007282, -0.837076,
		31.340912, 20.500303, 36.352367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475182, 20.665575, 37.593994>,  <30.957985, 20.505400, 36.938320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475182, 20.665575, 37.593994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740879, 20.649506, 37.892567>,  <30.900297, 20.639864, 38.071712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740879, 20.649506, 37.892567>,  <30.475182, 20.665575, 37.593994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740879, 20.649506, 37.892567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600016, 0.624201, -0.500353,
		-0.445825, 0.780230, 0.438727,
		0.664245, -0.040174, 0.746435,
		30.940153, 20.637453, 38.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726166, 21.292372, 37.655708>,  <30.475182, 20.665575, 37.593994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726166, 21.292372, 37.655708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027138, 21.058929, 37.777855>,  <31.207722, 20.918863, 37.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027138, 21.058929, 37.777855>,  <30.726166, 21.292372, 37.655708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027138, 21.058929, 37.777855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653480, 0.719516, -0.235076,
		-0.082527, 0.376432, 0.922761,
		0.752432, -0.583605, 0.305370,
		31.252867, 20.883848, 37.869465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135677, 21.859962, 37.249767>,  <30.726166, 21.292372, 37.655708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135677, 21.859962, 37.249767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332952, 21.623775, 36.994232>,  <31.451317, 21.482063, 36.840912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332952, 21.623775, 36.994232>,  <31.135677, 21.859962, 37.249767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332952, 21.623775, 36.994232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466375, 0.799375, -0.378805,
		0.734344, -0.111116, 0.669621,
		0.493188, -0.590468, -0.638838,
		31.480909, 21.446634, 36.802582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890770, 21.963284, 37.344349>,  <31.135677, 21.859962, 37.249767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890770, 21.963284, 37.344349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794672, 21.850327, 36.972858>,  <31.737013, 21.782553, 36.749962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794672, 21.850327, 36.972858>,  <31.890770, 21.963284, 37.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794672, 21.850327, 36.972858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468313, 0.804326, -0.365709,
		0.850273, -0.522796, -0.060988,
		-0.240246, -0.282391, -0.928729,
		31.722599, 21.765610, 36.694241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474255, 22.020908, 36.930527>,  <31.890770, 21.963284, 37.344349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474255, 22.020908, 36.930527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205498, 22.030506, 36.634422>,  <32.044243, 22.036264, 36.456760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205498, 22.030506, 36.634422>,  <32.474255, 22.020908, 36.930527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205498, 22.030506, 36.634422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436074, 0.820690, -0.369198,
		0.598667, -0.570870, -0.561877,
		-0.671891, 0.023993, -0.740261,
		32.003929, 22.037704, 36.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869442, 21.966267, 36.345135>,  <32.474255, 22.020908, 36.930527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869442, 21.966267, 36.345135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512337, 22.132599, 36.275776>,  <32.298073, 22.232399, 36.234161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512337, 22.132599, 36.275776>,  <32.869442, 21.966267, 36.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512337, 22.132599, 36.275776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450287, 0.836305, -0.312787,
		0.014944, -0.357321, -0.933862,
		-0.892759, 0.415831, -0.173395,
		32.244511, 22.257349, 36.223759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989113, 22.391060, 35.730595>,  <32.869442, 21.966267, 36.345135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989113, 22.391060, 35.730595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644627, 22.540413, 35.868519>,  <32.437935, 22.630024, 35.951271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644627, 22.540413, 35.868519>,  <32.989113, 22.391060, 35.730595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644627, 22.540413, 35.868519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059790, 0.748158, -0.660821,
		-0.504709, -0.548494, -0.666651,
		-0.861217, 0.373381, 0.344808,
		32.386261, 22.652428, 35.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578873, 22.578470, 35.104321>,  <32.989113, 22.391060, 35.730595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578873, 22.578470, 35.104321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422127, 22.768024, 35.419758>,  <32.328079, 22.881758, 35.609020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422127, 22.768024, 35.419758>,  <32.578873, 22.578470, 35.104321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422127, 22.768024, 35.419758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079031, 0.836635, -0.542030,
		-0.916624, -0.274723, -0.290393,
		-0.391861, 0.473887, 0.788591,
		32.304569, 22.910191, 35.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265617, 23.111362, 34.729729>,  <32.578873, 22.578470, 35.104321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265617, 23.111362, 34.729729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268520, 23.248898, 35.105328>,  <32.270264, 23.331419, 35.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268520, 23.248898, 35.105328>,  <32.265617, 23.111362, 34.729729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268520, 23.248898, 35.105328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024757, 0.938677, -0.343909,
		-0.999667, 0.025743, -0.001700,
		0.007257, 0.343836, 0.939002,
		32.270699, 23.352049, 35.387028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621244, 23.482132, 34.960381>,  <32.265617, 23.111362, 34.729729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621244, 23.482132, 34.960381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941549, 23.635311, 35.144608>,  <32.133732, 23.727219, 35.255146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941549, 23.635311, 35.144608>,  <31.621244, 23.482132, 34.960381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941549, 23.635311, 35.144608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128775, 0.861013, -0.492010,
		-0.584974, 0.334674, 0.738782,
		0.800764, 0.382950, 0.460572,
		32.181778, 23.750196, 35.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427301, 24.127010, 35.067299>,  <31.621244, 23.482132, 34.960381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427301, 24.127010, 35.067299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819654, 24.149120, 35.141937>,  <32.055065, 24.162386, 35.186722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819654, 24.149120, 35.141937>,  <31.427301, 24.127010, 35.067299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819654, 24.149120, 35.141937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046264, 0.865100, -0.499462,
		-0.189032, 0.498546, 0.846002,
		0.980881, 0.055275, 0.186596,
		32.113918, 24.165703, 35.197914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529377, 24.837620, 35.178051>,  <31.427301, 24.127010, 35.067299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529377, 24.837620, 35.178051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906511, 24.705090, 35.163696>,  <32.132790, 24.625572, 35.155083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906511, 24.705090, 35.163696>,  <31.529377, 24.837620, 35.178051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906511, 24.705090, 35.163696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229564, 0.723750, -0.650759,
		0.241587, 0.605319, 0.758436,
		0.942834, -0.331324, -0.035890,
		32.189362, 24.605692, 35.152931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916376, 25.281984, 35.425735>,  <31.529377, 24.837620, 35.178051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916376, 25.281984, 35.425735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188854, 25.098629, 35.197403>,  <32.352341, 24.988615, 35.060402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188854, 25.098629, 35.197403>,  <31.916376, 25.281984, 35.425735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188854, 25.098629, 35.197403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184226, 0.861957, -0.472324,
		0.708542, 0.216583, 0.671609,
		0.681196, -0.458390, -0.570833,
		32.393211, 24.961113, 35.026154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472404, 25.702118, 35.459843>,  <31.916376, 25.281984, 35.425735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472404, 25.702118, 35.459843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509968, 25.497528, 35.118183>,  <32.532505, 25.374775, 34.913185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509968, 25.497528, 35.118183>,  <32.472404, 25.702118, 35.459843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509968, 25.497528, 35.118183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164408, 0.854132, -0.493385,
		0.981912, -0.094096, 0.164302,
		0.093910, -0.511473, -0.854152,
		32.538139, 25.344086, 34.861938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057014, 25.918789, 35.181519>,  <32.472404, 25.702118, 35.459843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057014, 25.918789, 35.181519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850723, 25.760220, 34.877708>,  <32.726948, 25.665079, 34.695423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850723, 25.760220, 34.877708>,  <33.057014, 25.918789, 35.181519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850723, 25.760220, 34.877708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394065, 0.677418, -0.621143,
		0.760750, -0.619640, -0.193145,
		-0.515725, -0.396423, -0.759524,
		32.696007, 25.641293, 34.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503407, 25.956053, 34.575272>,  <33.057014, 25.918789, 35.181519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503407, 25.956053, 34.575272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134872, 25.905548, 34.428196>,  <32.913750, 25.875246, 34.339951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134872, 25.905548, 34.428196>,  <33.503407, 25.956053, 34.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134872, 25.905548, 34.428196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201075, 0.654685, -0.728667,
		0.332719, -0.745282, -0.577800,
		-0.921340, -0.126260, -0.367684,
		32.858471, 25.867670, 34.317890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617119, 25.895452, 33.966991>,  <33.503407, 25.956053, 34.575272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617119, 25.895452, 33.966991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226696, 25.982368, 33.962917>,  <32.992443, 26.034519, 33.960472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226696, 25.982368, 33.962917>,  <33.617119, 25.895452, 33.966991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226696, 25.982368, 33.962917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167691, 0.721770, -0.671512,
		-0.138560, -0.657140, -0.740924,
		-0.976054, 0.217291, -0.010188,
		32.933880, 26.047556, 33.959862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377415, 25.998379, 33.215122>,  <33.617119, 25.895452, 33.966991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377415, 25.998379, 33.215122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127716, 26.196468, 33.456806>,  <32.977898, 26.315323, 33.601818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127716, 26.196468, 33.456806>,  <33.377415, 25.998379, 33.215122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127716, 26.196468, 33.456806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004518, 0.775688, -0.631100,
		-0.781218, -0.391229, -0.486455,
		-0.624242, 0.495225, 0.604214,
		32.940445, 26.345036, 33.638069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950470, 26.359455, 32.740952>,  <33.377415, 25.998379, 33.215122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950470, 26.359455, 32.740952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915707, 26.545601, 33.093288>,  <32.894848, 26.657288, 33.304691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915707, 26.545601, 33.093288>,  <32.950470, 26.359455, 32.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915707, 26.545601, 33.093288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108789, 0.874468, -0.472728,
		-0.990258, -0.136911, -0.025373,
		-0.086910, 0.465362, 0.880843,
		32.889633, 26.685209, 33.357540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537189, 26.861382, 32.615738>,  <32.950470, 26.359455, 32.740952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537189, 26.861382, 32.615738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706623, 26.996254, 32.952042>,  <32.808285, 27.077177, 33.153824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706623, 26.996254, 32.952042>,  <32.537189, 26.861382, 32.615738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706623, 26.996254, 32.952042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012886, 0.930292, -0.366595,
		-0.905763, 0.144451, 0.398405,
		0.423588, 0.337182, 0.840763,
		32.833698, 27.097408, 33.204269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130600, 27.501181, 32.894775>,  <32.537189, 26.861382, 32.615738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130600, 27.501181, 32.894775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505726, 27.511776, 33.033222>,  <32.730801, 27.518133, 33.116291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505726, 27.511776, 33.033222>,  <32.130600, 27.501181, 32.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505726, 27.511776, 33.033222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061014, 0.968984, -0.239471,
		-0.341726, 0.245698, 0.907114,
		0.937817, 0.026487, 0.346119,
		32.787071, 27.519722, 33.137058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202652, 28.132198, 33.179214>,  <32.130600, 27.501181, 32.894775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202652, 28.132198, 33.179214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585564, 28.021297, 33.146351>,  <32.815311, 27.954758, 33.126633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585564, 28.021297, 33.146351>,  <32.202652, 28.132198, 33.179214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585564, 28.021297, 33.146351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219059, 0.880765, -0.419841,
		0.188762, 0.383907, 0.903872,
		0.957279, -0.277251, -0.082157,
		32.872746, 27.938122, 33.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591965, 28.665443, 33.480068>,  <32.202652, 28.132198, 33.179214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591965, 28.665443, 33.480068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808563, 28.451939, 33.220261>,  <32.938522, 28.323835, 33.064377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808563, 28.451939, 33.220261>,  <32.591965, 28.665443, 33.480068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808563, 28.451939, 33.220261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356644, 0.845477, -0.397461,
		0.761304, -0.016424, 0.648186,
		0.541499, -0.533760, -0.649522,
		32.971012, 28.291811, 33.025402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105141, 29.067118, 33.315502>,  <32.591965, 28.665443, 33.480068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105141, 29.067118, 33.315502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163059, 28.797016, 33.026207>,  <33.197811, 28.634956, 32.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163059, 28.797016, 33.026207>,  <33.105141, 29.067118, 33.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163059, 28.797016, 33.026207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355871, 0.717565, -0.598711,
		0.923250, -0.170690, 0.344202,
		0.144794, -0.675252, -0.723236,
		33.206497, 28.594440, 32.809235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791862, 29.297693, 33.008747>,  <33.105141, 29.067118, 33.315502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791862, 29.297693, 33.008747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610920, 29.074600, 32.730377>,  <33.502354, 28.940744, 32.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610920, 29.074600, 32.730377>,  <33.791862, 29.297693, 33.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610920, 29.074600, 32.730377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352244, 0.605153, -0.713942,
		0.819330, -0.568089, -0.077285,
		-0.452353, -0.557731, -0.695926,
		33.475216, 28.907282, 32.521599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281723, 29.106287, 32.462406>,  <33.791862, 29.297693, 33.008747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281723, 29.106287, 32.462406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910213, 29.076458, 32.317177>,  <33.687309, 29.058561, 32.230042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910213, 29.076458, 32.317177>,  <34.281723, 29.106287, 32.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910213, 29.076458, 32.317177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291762, 0.457037, -0.840233,
		0.228595, -0.886316, -0.402726,
		-0.928773, -0.074573, -0.363070,
		33.631580, 29.054087, 32.208256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389946, 28.849720, 31.809607>,  <34.281723, 29.106287, 32.462406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389946, 28.849720, 31.809607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051254, 29.060677, 31.837639>,  <33.848042, 29.187250, 31.854458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051254, 29.060677, 31.837639>,  <34.389946, 28.849720, 31.809607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051254, 29.060677, 31.837639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259344, 0.524162, -0.811169,
		-0.464538, -0.668663, -0.580598,
		-0.846726, 0.527394, 0.070080,
		33.797237, 29.218895, 31.858664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321957, 29.192270, 31.115421>,  <34.389946, 28.849720, 31.809607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321957, 29.192270, 31.115421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998760, 29.353310, 31.287495>,  <33.804840, 29.449934, 31.390739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998760, 29.353310, 31.287495>,  <34.321957, 29.192270, 31.115421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998760, 29.353310, 31.287495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004759, 0.734563, -0.678523,
		-0.589170, -0.546196, -0.595440,
		-0.807995, 0.402599, 0.430183,
		33.756363, 29.474089, 31.416550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985325, 29.352242, 30.563589>,  <34.321957, 29.192270, 31.115421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985325, 29.352242, 30.563589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816418, 29.568932, 30.854305>,  <33.715073, 29.698946, 31.028736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816418, 29.568932, 30.854305>,  <33.985325, 29.352242, 30.563589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816418, 29.568932, 30.854305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072020, 0.819297, -0.568829,
		-0.903606, -0.187854, -0.384977,
		-0.422267, 0.541723, 0.726792,
		33.689739, 29.731449, 31.072342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385921, 29.623707, 30.185186>,  <33.985325, 29.352242, 30.563589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385921, 29.623707, 30.185186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490311, 29.835526, 30.508041>,  <33.552944, 29.962616, 30.701756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490311, 29.835526, 30.508041>,  <33.385921, 29.623707, 30.185186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490311, 29.835526, 30.508041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224934, 0.846458, -0.482611,
		-0.938774, -0.055603, 0.340018,
		0.260977, 0.529544, 0.807139,
		33.568604, 29.994389, 30.750183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842953, 30.034933, 30.377581>,  <33.385921, 29.623707, 30.185186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842953, 30.034933, 30.377581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171577, 30.220238, 30.510498>,  <33.368752, 30.331421, 30.590248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171577, 30.220238, 30.510498>,  <32.842953, 30.034933, 30.377581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171577, 30.220238, 30.510498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164285, 0.750500, -0.640126,
		-0.545932, 0.471314, 0.692691,
		0.821565, 0.463264, 0.332292,
		33.418045, 30.359217, 30.610186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628754, 30.663059, 30.473066>,  <32.842953, 30.034933, 30.377581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628754, 30.663059, 30.473066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027809, 30.687531, 30.460590>,  <33.267242, 30.702213, 30.453104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027809, 30.687531, 30.460590>,  <32.628754, 30.663059, 30.473066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027809, 30.687531, 30.460590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067694, 0.799831, -0.596395,
		-0.011538, 0.597099, 0.802085,
		0.997639, 0.061178, -0.031192,
		33.327103, 30.705883, 30.451233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724113, 31.402760, 30.535864>,  <32.628754, 30.663059, 30.473066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724113, 31.402760, 30.535864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064953, 31.263718, 30.379356>,  <33.269459, 31.180292, 30.285452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064953, 31.263718, 30.379356>,  <32.724113, 31.402760, 30.535864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064953, 31.263718, 30.379356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106019, 0.617449, -0.779434,
		0.512523, 0.705640, 0.489277,
		0.852103, -0.347605, -0.391268,
		33.320583, 31.159435, 30.261976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209866, 31.939861, 30.314459>,  <32.724113, 31.402760, 30.535864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209866, 31.939861, 30.314459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352463, 31.623672, 30.115231>,  <33.438019, 31.433960, 29.995693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352463, 31.623672, 30.115231>,  <33.209866, 31.939861, 30.314459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352463, 31.623672, 30.115231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296529, 0.601257, -0.741998,
		0.885994, 0.116823, 0.448739,
		0.356490, -0.790470, -0.498068,
		33.459412, 31.386532, 29.965811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734612, 32.266716, 29.850403>,  <33.209866, 31.939861, 30.314459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734612, 32.266716, 29.850403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688229, 31.894855, 29.710518>,  <33.660400, 31.671738, 29.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688229, 31.894855, 29.710518>,  <33.734612, 32.266716, 29.850403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688229, 31.894855, 29.710518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214771, 0.320288, -0.922653,
		0.969756, -0.182094, 0.162524,
		-0.115955, -0.929654, -0.349710,
		33.653442, 31.615959, 29.605604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303909, 32.080379, 29.526602>,  <33.734612, 32.266716, 29.850403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303909, 32.080379, 29.526602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046539, 31.841076, 29.335564>,  <33.892117, 31.697495, 29.220940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046539, 31.841076, 29.335564>,  <34.303909, 32.080379, 29.526602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046539, 31.841076, 29.335564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227842, 0.445956, -0.865570,
		0.730821, -0.665742, -0.150629,
		-0.643420, -0.598257, -0.477598,
		33.853512, 31.661598, 29.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606327, 31.671875, 28.963312>,  <34.303909, 32.080379, 29.526602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606327, 31.671875, 28.963312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224556, 31.631226, 28.851074>,  <33.995491, 31.606836, 28.783731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224556, 31.631226, 28.851074>,  <34.606327, 31.671875, 28.963312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224556, 31.631226, 28.851074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214427, 0.420410, -0.881633,
		0.207559, -0.901625, -0.379462,
		-0.954432, -0.101624, -0.280593,
		33.938225, 31.600739, 28.766895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632614, 31.386625, 28.300779>,  <34.606327, 31.671875, 28.963312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632614, 31.386625, 28.300779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278591, 31.570415, 28.330578>,  <34.066177, 31.680689, 28.348457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278591, 31.570415, 28.330578>,  <34.632614, 31.386625, 28.300779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278591, 31.570415, 28.330578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171457, 0.470596, -0.865530,
		-0.432746, -0.753274, -0.495287,
		-0.885061, 0.459475, 0.074494,
		34.013073, 31.708258, 28.352926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259403, 31.358074, 27.616961>,  <34.632614, 31.386625, 28.300779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259403, 31.358074, 27.616961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084057, 31.648674, 27.828632>,  <33.978848, 31.823034, 27.955635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084057, 31.648674, 27.828632>,  <34.259403, 31.358074, 27.616961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084057, 31.648674, 27.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113655, 0.628845, -0.769179,
		-0.891581, -0.277039, -0.358235,
		-0.438367, 0.726501, 0.529180,
		33.952545, 31.866625, 27.987387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835133, 31.718014, 27.042336>,  <34.259403, 31.358074, 27.616961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835133, 31.718014, 27.042336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860600, 31.957230, 27.361908>,  <33.875877, 32.100761, 27.553652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860600, 31.957230, 27.361908>,  <33.835133, 31.718014, 27.042336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860600, 31.957230, 27.361908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117440, 0.790504, -0.601092,
		-0.991037, 0.132095, -0.019907,
		0.063665, 0.598042, 0.798932,
		33.879700, 32.136642, 27.601587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299557, 32.188976, 27.001751>,  <33.835133, 31.718014, 27.042336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299557, 32.188976, 27.001751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581886, 32.333603, 27.245419>,  <33.751282, 32.420380, 27.391619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581886, 32.333603, 27.245419>,  <33.299557, 32.188976, 27.001751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581886, 32.333603, 27.245419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080581, 0.813371, -0.576137,
		-0.703794, 0.455736, 0.544958,
		0.705819, 0.361569, 0.609169,
		33.793633, 32.442074, 27.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982540, 32.840363, 27.014517>,  <33.299557, 32.188976, 27.001751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982540, 32.840363, 27.014517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366882, 32.838860, 27.125320>,  <33.597488, 32.837959, 27.191803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366882, 32.838860, 27.125320>,  <32.982540, 32.840363, 27.014517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366882, 32.838860, 27.125320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136354, 0.876814, -0.461090,
		-0.241154, 0.480814, 0.843008,
		0.960860, -0.003754, 0.277009,
		33.655140, 32.837734, 27.208424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109722, 33.578987, 27.149883>,  <32.982540, 32.840363, 27.014517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109722, 33.578987, 27.149883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446030, 33.372791, 27.083710>,  <33.647816, 33.249073, 27.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446030, 33.372791, 27.083710>,  <33.109722, 33.578987, 27.149883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446030, 33.372791, 27.083710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321387, 0.721144, -0.613728,
		0.435672, 0.462838, 0.771991,
		0.840773, -0.515492, -0.165432,
		33.698261, 33.218143, 27.034081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052578, 33.633850, 27.900360>,  <33.109722, 33.578987, 27.149883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052578, 33.633850, 27.900360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717567, 33.816681, 27.780609>,  <32.516560, 33.926380, 27.708757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717567, 33.816681, 27.780609>,  <33.052578, 33.633850, 27.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717567, 33.816681, 27.780609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525216, -0.522401, 0.671748,
		0.150643, 0.719847, 0.677589,
		-0.837529, 0.457075, -0.299378,
		32.466309, 33.953804, 27.690796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683289, 33.874458, 28.531559>,  <33.052578, 33.633850, 27.900360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683289, 33.874458, 28.531559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393555, 33.884903, 28.255978>,  <32.219715, 33.891171, 28.090630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393555, 33.884903, 28.255978>,  <32.683289, 33.874458, 28.531559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393555, 33.884903, 28.255978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603786, -0.506439, 0.615599,
		-0.332835, 0.861880, 0.382600,
		-0.724336, 0.026116, -0.688952,
		32.176254, 33.892738, 28.049292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118145, 34.253941, 28.838587>,  <32.683289, 33.874458, 28.531559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118145, 34.253941, 28.838587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982588, 34.031761, 28.534843>,  <31.901253, 33.898453, 28.352598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982588, 34.031761, 28.534843>,  <32.118145, 34.253941, 28.838587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982588, 34.031761, 28.534843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664372, -0.430196, 0.611181,
		-0.666153, 0.711622, -0.223235,
		-0.338895, -0.555451, -0.759358,
		31.880919, 33.865128, 28.307035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396299, 34.166210, 28.935390>,  <32.118145, 34.253941, 28.838587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396299, 34.166210, 28.935390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487110, 33.859882, 28.694733>,  <31.541595, 33.676086, 28.550337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487110, 33.859882, 28.694733>,  <31.396299, 34.166210, 28.935390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487110, 33.859882, 28.694733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702209, -0.556777, 0.443736,
		-0.674805, 0.321742, -0.664169,
		0.227026, -0.765821, -0.601646,
		31.555218, 33.630135, 28.514238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745281, 33.850437, 28.689472>,  <31.396299, 34.166210, 28.935390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745281, 33.850437, 28.689472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004826, 33.548363, 28.652222>,  <31.160553, 33.367119, 28.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004826, 33.548363, 28.652222>,  <30.745281, 33.850437, 28.689472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004826, 33.548363, 28.652222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614466, -0.592231, 0.521243,
		-0.448789, -0.280991, -0.848312,
		0.648861, -0.755187, -0.093127,
		31.199484, 33.321808, 28.624283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404594, 33.278618, 28.495235>,  <30.745281, 33.850437, 28.689472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404594, 33.278618, 28.495235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730387, 33.160103, 28.694767>,  <30.925861, 33.088993, 28.814486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730387, 33.160103, 28.694767>,  <30.404594, 33.278618, 28.495235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730387, 33.160103, 28.694767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552393, -0.658945, 0.510542,
		0.177432, -0.691377, -0.700368,
		0.814481, -0.296292, 0.498830,
		30.974731, 33.071217, 28.844416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325016, 32.628704, 28.527798>,  <30.404594, 33.278618, 28.495235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325016, 32.628704, 28.527798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590834, 32.703663, 28.817146>,  <30.750324, 32.748638, 28.990755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590834, 32.703663, 28.817146>,  <30.325016, 32.628704, 28.527798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590834, 32.703663, 28.817146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556600, -0.521757, 0.646503,
		0.498579, -0.832256, -0.242423,
		0.664542, 0.187400, 0.723371,
		30.790195, 32.759884, 29.034157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229979, 32.171291, 29.031130>,  <30.325016, 32.628704, 28.527798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229979, 32.171291, 29.031130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468601, 32.377831, 29.276897>,  <30.611774, 32.501755, 29.424358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468601, 32.377831, 29.276897>,  <30.229979, 32.171291, 29.031130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468601, 32.377831, 29.276897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478900, -0.385315, 0.788788,
		0.644031, -0.764801, 0.017415,
		0.596556, 0.516344, 0.614418,
		30.647568, 32.532734, 29.461224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551691, 31.725323, 29.564127>,  <30.229979, 32.171291, 29.031130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551691, 31.725323, 29.564127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554375, 32.086811, 29.735355>,  <30.555984, 32.303703, 29.838093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554375, 32.086811, 29.735355>,  <30.551691, 31.725323, 29.564127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554375, 32.086811, 29.735355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163501, -0.421329, 0.892048,
		0.986520, -0.075975, 0.144932,
		0.006709, 0.903720, 0.428072,
		30.556387, 32.357925, 29.863777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933342, 31.589897, 30.142241>,  <30.551691, 31.725323, 29.564127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933342, 31.589897, 30.142241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744478, 31.932926, 30.223862>,  <30.631159, 32.138744, 30.272835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744478, 31.932926, 30.223862>,  <30.933342, 31.589897, 30.142241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744478, 31.932926, 30.223862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180897, -0.320816, 0.929706,
		0.862752, 0.402057, 0.306609,
		-0.472160, 0.857570, 0.204054,
		30.602831, 32.190197, 30.285078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141651, 31.679520, 30.868208>,  <30.933342, 31.589897, 30.142241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141651, 31.679520, 30.868208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852129, 31.943130, 30.786438>,  <30.678415, 32.101295, 30.737375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852129, 31.943130, 30.786438>,  <31.141651, 31.679520, 30.868208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852129, 31.943130, 30.786438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378313, -0.131262, 0.916324,
		0.577049, 0.740577, 0.344327,
		-0.723805, 0.659027, -0.204425,
		30.634987, 32.140839, 30.725111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183746, 32.262779, 31.399721>,  <31.141651, 31.679520, 30.868208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183746, 32.262779, 31.399721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812511, 32.207523, 31.261402>,  <30.589771, 32.174370, 31.178411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812511, 32.207523, 31.261402>,  <31.183746, 32.262779, 31.399721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812511, 32.207523, 31.261402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291036, -0.310198, 0.905028,
		-0.232281, 0.940583, 0.247688,
		-0.928086, -0.138135, -0.345796,
		30.534086, 32.166084, 31.157663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697214, 32.582428, 31.790876>,  <31.183746, 32.262779, 31.399721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697214, 32.582428, 31.790876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516134, 32.264603, 31.629025>,  <30.407486, 32.073906, 31.531914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516134, 32.264603, 31.629025>,  <30.697214, 32.582428, 31.790876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516134, 32.264603, 31.629025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084080, -0.413731, 0.906508,
		-0.887689, 0.444399, 0.120489,
		-0.452701, -0.794567, -0.404629,
		30.380323, 32.026234, 31.507635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104153, 32.453861, 32.246826>,  <30.697214, 32.582428, 31.790876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104153, 32.453861, 32.246826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191353, 32.127323, 32.032887>,  <30.243673, 31.931402, 31.904522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191353, 32.127323, 32.032887>,  <30.104153, 32.453861, 32.246826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191353, 32.127323, 32.032887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114248, -0.565609, 0.816721,
		-0.969239, -0.116938, -0.216567,
		0.217998, -0.816341, -0.534850,
		30.256752, 31.882421, 31.872431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903131, 31.882978, 32.635277>,  <30.104153, 32.453861, 32.246826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903131, 31.882978, 32.635277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042059, 31.628681, 32.359539>,  <30.125416, 31.476103, 32.194096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042059, 31.628681, 32.359539>,  <29.903131, 31.882978, 32.635277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042059, 31.628681, 32.359539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128476, -0.760438, 0.636575,
		-0.928904, -0.132531, -0.345793,
		0.347320, -0.635743, -0.689347,
		30.146255, 31.437958, 32.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466986, 31.312532, 32.567879>,  <29.903131, 31.882978, 32.635277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466986, 31.312532, 32.567879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835865, 31.200684, 32.461025>,  <30.057192, 31.133575, 32.396912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835865, 31.200684, 32.461025>,  <29.466986, 31.312532, 32.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835865, 31.200684, 32.461025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067959, -0.797214, 0.599859,
		-0.380699, -0.535035, -0.754192,
		0.922198, -0.279620, -0.267138,
		30.112524, 31.116798, 32.380882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411112, 30.613873, 32.408524>,  <29.466986, 31.312532, 32.567879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411112, 30.613873, 32.408524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810736, 30.624672, 32.422112>,  <30.050510, 30.631151, 32.430264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810736, 30.624672, 32.422112>,  <29.411112, 30.613873, 32.408524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810736, 30.624672, 32.422112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008875, -0.893465, 0.449044,
		0.042478, -0.448320, -0.892863,
		0.999058, 0.026999, 0.033973,
		30.110453, 30.632772, 32.432304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592630, 30.016806, 32.163826>,  <29.411112, 30.613873, 32.408524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592630, 30.016806, 32.163826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906551, 30.136906, 32.380688>,  <30.094904, 30.208965, 32.510807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906551, 30.136906, 32.380688>,  <29.592630, 30.016806, 32.163826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906551, 30.136906, 32.380688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114944, -0.930148, 0.348731,
		0.608993, -0.211367, -0.764494,
		0.784803, 0.300249, 0.542158,
		30.141993, 30.226980, 32.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269667, 29.571913, 32.027996>,  <29.592630, 30.016806, 32.163826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269667, 29.571913, 32.027996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306585, 29.735336, 32.391216>,  <30.328737, 29.833391, 32.609150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306585, 29.735336, 32.391216>,  <30.269667, 29.571913, 32.027996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306585, 29.735336, 32.391216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168996, -0.905142, 0.390074,
		0.981285, 0.117454, -0.152588,
		0.092298, 0.408561, 0.908052,
		30.334274, 29.857904, 32.663631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894270, 29.302589, 32.289291>,  <30.269667, 29.571913, 32.027996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894270, 29.302589, 32.289291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677374, 29.431396, 32.599716>,  <30.547235, 29.508680, 32.785973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677374, 29.431396, 32.599716>,  <30.894270, 29.302589, 32.289291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677374, 29.431396, 32.599716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319880, -0.774973, 0.545063,
		0.776950, 0.543804, 0.317216,
		-0.542242, 0.322016, 0.776067,
		30.514702, 29.528002, 32.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317831, 29.181475, 32.809475>,  <30.894270, 29.302589, 32.289291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317831, 29.181475, 32.809475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961828, 29.239506, 32.982376>,  <30.748226, 29.274324, 33.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961828, 29.239506, 32.982376>,  <31.317831, 29.181475, 32.809475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961828, 29.239506, 32.982376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172262, -0.770775, 0.613378,
		0.422157, 0.620370, 0.661002,
		-0.890005, 0.145077, 0.432254,
		30.694826, 29.283030, 33.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470627, 29.066336, 33.465618>,  <31.317831, 29.181475, 32.809475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470627, 29.066336, 33.465618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075640, 29.012482, 33.432674>,  <30.838648, 28.980169, 33.412907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075640, 29.012482, 33.432674>,  <31.470627, 29.066336, 33.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075640, 29.012482, 33.432674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045617, -0.743043, 0.667687,
		-0.151093, 0.655562, 0.739871,
		-0.987467, -0.134633, -0.082364,
		30.779400, 28.972092, 33.407967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173376, 28.966307, 34.127731>,  <31.470627, 29.066336, 33.465618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173376, 28.966307, 34.127731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901922, 28.806885, 33.880955>,  <30.739050, 28.711231, 33.732891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901922, 28.806885, 33.880955>,  <31.173376, 28.966307, 34.127731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901922, 28.806885, 33.880955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024355, -0.827295, 0.561240,
		-0.734073, 0.395901, 0.551723,
		-0.678633, -0.398554, -0.616937,
		30.698332, 28.687319, 33.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580130, 28.639099, 34.623779>,  <31.173376, 28.966307, 34.127731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580130, 28.639099, 34.623779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584110, 28.437008, 34.278606>,  <30.586498, 28.315754, 34.071503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584110, 28.437008, 34.278606>,  <30.580130, 28.639099, 34.623779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584110, 28.437008, 34.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044798, -0.862331, 0.504360,
		-0.998947, 0.033639, -0.031215,
		0.009952, -0.505227, -0.862929,
		30.587095, 28.285440, 34.019726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083242, 28.024977, 34.779648>,  <30.580130, 28.639099, 34.623779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083242, 28.024977, 34.779648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 27.946102, 34.447868>,  <30.417715, 27.898777, 34.248798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 27.946102, 34.447868>,  <30.083242, 28.024977, 34.779648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292288, 27.946102, 34.447868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157407, -0.978477, 0.133436,
		-0.837912, 0.060826, -0.542405,
		0.522615, -0.197186, -0.829452,
		30.449072, 27.886946, 34.199032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519793, 27.648138, 34.299088>,  <30.083242, 28.024977, 34.779648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519793, 27.648138, 34.299088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880028, 27.573807, 34.141907>,  <30.096169, 27.529207, 34.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880028, 27.573807, 34.141907>,  <29.519793, 27.648138, 34.299088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880028, 27.573807, 34.141907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177492, -0.982423, 0.057805,
		-0.396783, 0.017686, -0.917742,
		0.900589, -0.185828, -0.392948,
		30.150204, 27.518059, 34.024021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442413, 27.220833, 33.641083>,  <29.519793, 27.648138, 34.299088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442413, 27.220833, 33.641083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818483, 27.172173, 33.768375>,  <30.044127, 27.142977, 33.844749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818483, 27.172173, 33.768375>,  <29.442413, 27.220833, 33.641083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818483, 27.172173, 33.768375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139852, -0.989557, 0.034894,
		0.310659, -0.077312, -0.947372,
		0.940177, -0.121652, 0.318227,
		30.100536, 27.135677, 33.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795580, 26.788998, 33.248085>,  <29.442413, 27.220833, 33.641083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795580, 26.788998, 33.248085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974346, 26.742966, 33.602943>,  <30.081606, 26.715345, 33.815857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974346, 26.742966, 33.602943>,  <29.795580, 26.788998, 33.248085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974346, 26.742966, 33.602943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333745, -0.941541, 0.045991,
		0.829989, -0.316633, -0.459197,
		0.446916, -0.115082, 0.887143,
		30.108421, 26.708441, 33.869087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048735, 26.058279, 33.300907>,  <29.795580, 26.788998, 33.248085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048735, 26.058279, 33.300907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066233, 26.172359, 33.683895>,  <30.076731, 26.240808, 33.913689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066233, 26.172359, 33.683895>,  <30.048735, 26.058279, 33.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066233, 26.172359, 33.683895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235995, -0.928313, 0.287299,
		0.970769, -0.238525, 0.026699,
		0.043743, 0.285202, 0.957469,
		30.079355, 26.257919, 33.971134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204433, 25.485792, 33.595707>,  <30.048735, 26.058279, 33.300907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204433, 25.485792, 33.595707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097157, 25.683044, 33.926739>,  <30.032789, 25.801395, 34.125359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097157, 25.683044, 33.926739>,  <30.204433, 25.485792, 33.595707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097157, 25.683044, 33.926739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255931, -0.864657, 0.432282,
		0.928747, -0.095869, 0.358103,
		-0.268194, 0.493131, 0.827584,
		30.016699, 25.830984, 34.175014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483561, 25.102468, 34.160290>,  <30.204433, 25.485792, 33.595707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483561, 25.102468, 34.160290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142832, 25.287380, 34.258839>,  <29.938395, 25.398327, 34.317966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142832, 25.287380, 34.258839>,  <30.483561, 25.102468, 34.160290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142832, 25.287380, 34.258839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381955, -0.869990, 0.311814,
		0.358483, 0.171508, 0.917646,
		-0.851822, 0.462280, 0.246369,
		29.887285, 25.426064, 34.332748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368603, 24.886551, 34.866234>,  <30.483561, 25.102468, 34.160290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368603, 24.886551, 34.866234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994930, 25.002964, 34.783672>,  <29.770727, 25.072813, 34.734135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994930, 25.002964, 34.783672>,  <30.368603, 24.886551, 34.866234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994930, 25.002964, 34.783672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321551, -0.937428, 0.133544,
		-0.154618, 0.191122, 0.969312,
		-0.934183, 0.291035, -0.206399,
		29.714676, 25.090275, 34.721752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922119, 24.544271, 35.323380>,  <30.368603, 24.886551, 34.866234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922119, 24.544271, 35.323380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644867, 24.659466, 35.059067>,  <29.478516, 24.728582, 34.900478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644867, 24.659466, 35.059067>,  <29.922119, 24.544271, 35.323380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644867, 24.659466, 35.059067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493341, -0.857901, 0.143596,
		-0.525535, 0.425523, 0.736711,
		-0.693129, 0.287985, -0.660785,
		29.436928, 24.745861, 34.860832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351040, 24.299341, 35.684353>,  <29.922119, 24.544271, 35.323380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351040, 24.299341, 35.684353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239275, 24.344772, 35.302982>,  <29.172216, 24.372030, 35.074158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239275, 24.344772, 35.302982>,  <29.351040, 24.299341, 35.684353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239275, 24.344772, 35.302982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449632, -0.892852, 0.025410,
		-0.848386, 0.435792, 0.300543,
		-0.279414, 0.113576, -0.953429,
		29.155451, 24.378845, 35.016953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701132, 24.006235, 35.641865>,  <29.351040, 24.299341, 35.684353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701132, 24.006235, 35.641865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835365, 24.014816, 35.265160>,  <28.915905, 24.019966, 35.039135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835365, 24.014816, 35.265160>,  <28.701132, 24.006235, 35.641865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835365, 24.014816, 35.265160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512666, -0.834562, -0.201693,
		-0.790290, 0.550496, -0.269065,
		0.335583, 0.021455, -0.941766,
		28.936041, 24.021254, 34.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108095, 23.809010, 35.226318>,  <28.701132, 24.006235, 35.641865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108095, 23.809010, 35.226318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439573, 23.737389, 35.014202>,  <28.638460, 23.694416, 34.886932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439573, 23.737389, 35.014202>,  <28.108095, 23.809010, 35.226318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439573, 23.737389, 35.014202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321687, -0.927695, -0.189472,
		-0.458020, 0.327602, -0.826374,
		0.828695, -0.179052, -0.530288,
		28.688181, 23.683674, 34.855114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907675, 23.440546, 34.637024>,  <28.108095, 23.809010, 35.226318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907675, 23.440546, 34.637024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296774, 23.347996, 34.643028>,  <28.530233, 23.292465, 34.646629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296774, 23.347996, 34.643028>,  <27.907675, 23.440546, 34.637024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296774, 23.347996, 34.643028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220169, -0.942054, -0.253100,
		0.072703, 0.242898, -0.967324,
		0.972749, -0.231376, 0.015011,
		28.588598, 23.278584, 34.647533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836380, 22.822884, 34.276806>,  <27.907675, 23.440546, 34.637024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836380, 22.822884, 34.276806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213474, 22.827526, 34.410137>,  <28.439732, 22.830311, 34.490135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213474, 22.827526, 34.410137>,  <27.836380, 22.822884, 34.276806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213474, 22.827526, 34.410137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065790, -0.986229, -0.151734,
		0.326982, 0.164975, -0.930519,
		0.942738, 0.011604, 0.333333,
		28.496296, 22.831007, 34.510136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015612, 22.060768, 34.283504>,  <27.836380, 22.822884, 34.276806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015612, 22.060768, 34.283504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808958, 21.996990, 33.947014>,  <27.684965, 21.958723, 33.745117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808958, 21.996990, 33.947014>,  <28.015612, 22.060768, 34.283504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808958, 21.996990, 33.947014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120384, 0.959220, -0.255742,
		0.847701, -0.233395, -0.476372,
		-0.516634, -0.159446, -0.841229,
		27.653967, 21.949156, 33.694645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435244, 22.233961, 33.639336>,  <28.015612, 22.060768, 34.283504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435244, 22.233961, 33.639336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043440, 22.264866, 33.564934>,  <27.808357, 22.283409, 33.520294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043440, 22.264866, 33.564934>,  <28.435244, 22.233961, 33.639336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043440, 22.264866, 33.564934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116245, 0.971021, -0.208819,
		0.164479, -0.226161, -0.960103,
		-0.979507, 0.077261, -0.186002,
		27.749588, 22.288044, 33.509132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463270, 22.630392, 32.997066>,  <28.435244, 22.233961, 33.639336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463270, 22.630392, 32.997066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078419, 22.650429, 33.104248>,  <27.847507, 22.662451, 33.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078419, 22.650429, 33.104248>,  <28.463270, 22.630392, 32.997066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078419, 22.650429, 33.104248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119134, 0.806862, -0.578603,
		-0.245183, -0.588613, -0.770338,
		-0.962129, 0.050090, 0.267953,
		27.789780, 22.665457, 33.184635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995205, 22.732889, 32.391109>,  <28.463270, 22.630392, 32.997066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995205, 22.732889, 32.391109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797380, 22.875370, 32.708229>,  <27.678686, 22.960859, 32.898502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797380, 22.875370, 32.708229>,  <27.995205, 22.732889, 32.391109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797380, 22.875370, 32.708229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181404, 0.849768, -0.494961,
		-0.850001, -0.388605, -0.355646,
		-0.494562, 0.356202, 0.792798,
		27.649012, 22.982231, 32.946068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243595, 23.047035, 32.076233>,  <27.995205, 22.732889, 32.391109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243595, 23.047035, 32.076233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349064, 23.200478, 32.430256>,  <27.412346, 23.292543, 32.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349064, 23.200478, 32.430256>,  <27.243595, 23.047035, 32.076233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349064, 23.200478, 32.430256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137904, 0.923090, -0.359008,
		-0.954704, -0.027391, 0.296295,
		0.263673, 0.383607, 0.885055,
		27.428165, 23.315559, 32.695774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837770, 23.575388, 32.149181>,  <27.243595, 23.047035, 32.076233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837770, 23.575388, 32.149181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111969, 23.651585, 32.430267>,  <27.276487, 23.697302, 32.598919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111969, 23.651585, 32.430267>,  <26.837770, 23.575388, 32.149181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111969, 23.651585, 32.430267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076826, 0.978703, -0.190362,
		-0.724011, 0.076506, 0.685533,
		0.685497, 0.190491, 0.702714,
		27.317617, 23.708733, 32.641083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616785, 24.239792, 32.520084>,  <26.837770, 23.575388, 32.149181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616785, 24.239792, 32.520084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007315, 24.183292, 32.585621>,  <27.241632, 24.149393, 32.624943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007315, 24.183292, 32.585621>,  <26.616785, 24.239792, 32.520084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007315, 24.183292, 32.585621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161950, 0.979388, -0.120709,
		-0.143413, 0.144385, 0.979074,
		0.976322, -0.141250, 0.163840,
		27.300211, 24.140917, 32.634773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804609, 24.656843, 33.179195>,  <26.616785, 24.239792, 32.520084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804609, 24.656843, 33.179195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150265, 24.598541, 32.986523>,  <27.357658, 24.563560, 32.870918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150265, 24.598541, 32.986523>,  <26.804609, 24.656843, 33.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150265, 24.598541, 32.986523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071937, 0.983087, -0.168420,
		0.498086, 0.110887, 0.860008,
		0.864138, -0.145754, -0.481685,
		27.409506, 24.554815, 32.842018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233702, 25.209265, 33.412331>,  <26.804609, 24.656843, 33.179195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233702, 25.209265, 33.412331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424879, 25.072701, 33.088600>,  <27.539585, 24.990763, 32.894363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424879, 25.072701, 33.088600>,  <27.233702, 25.209265, 33.412331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424879, 25.072701, 33.088600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170094, 0.939907, -0.296047,
		0.861764, 0.003833, 0.507296,
		0.477945, -0.341410, -0.809325,
		27.568262, 24.970278, 32.845802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881063, 25.564518, 33.359459>,  <27.233702, 25.209265, 33.412331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881063, 25.564518, 33.359459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826315, 25.418728, 32.991020>,  <27.793465, 25.331255, 32.769955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826315, 25.418728, 32.991020>,  <27.881063, 25.564518, 33.359459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826315, 25.418728, 32.991020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124312, 0.916180, -0.380999,
		0.982758, -0.166652, -0.080092,
		-0.136873, -0.364473, -0.921100,
		27.785254, 25.309385, 32.714691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434258, 25.677891, 33.057758>,  <27.881063, 25.564518, 33.359459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434258, 25.677891, 33.057758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144726, 25.647125, 32.783485>,  <27.971006, 25.628666, 32.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144726, 25.647125, 32.783485>,  <28.434258, 25.677891, 33.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144726, 25.647125, 32.783485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199911, 0.927764, -0.315103,
		0.660384, -0.365156, -0.656167,
		-0.723830, -0.076913, -0.685679,
		27.927576, 25.624052, 32.577782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771612, 25.909595, 32.417423>,  <28.434258, 25.677891, 33.057758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771612, 25.909595, 32.417423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375988, 25.922562, 32.359863>,  <28.138613, 25.930342, 32.325329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375988, 25.922562, 32.359863>,  <28.771612, 25.909595, 32.417423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375988, 25.922562, 32.359863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086937, 0.916209, -0.391156,
		0.119162, -0.399388, -0.909005,
		-0.989061, 0.032415, -0.143899,
		28.079269, 25.932285, 32.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800833, 26.065296, 31.699596>,  <28.771612, 25.909595, 32.417423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800833, 26.065296, 31.699596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428562, 26.153839, 31.816105>,  <28.205200, 26.206964, 31.886011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428562, 26.153839, 31.816105>,  <28.800833, 26.065296, 31.699596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428562, 26.153839, 31.816105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117123, 0.934553, -0.335996,
		-0.346585, -0.278589, -0.895694,
		-0.930678, 0.221357, 0.291273,
		28.149359, 26.220245, 31.903486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602739, 26.280369, 31.100639>,  <28.800833, 26.065296, 31.699596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602739, 26.280369, 31.100639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340559, 26.402287, 31.377041>,  <28.183250, 26.475437, 31.542881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340559, 26.402287, 31.377041>,  <28.602739, 26.280369, 31.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340559, 26.402287, 31.377041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028542, 0.904298, -0.425948,
		-0.754699, -0.298910, -0.584023,
		-0.655450, 0.304793, 0.691004,
		28.143925, 26.493725, 31.584341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009758, 26.601835, 30.701115>,  <28.602739, 26.280369, 31.100639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009758, 26.601835, 30.701115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015131, 26.775085, 31.061607>,  <28.018354, 26.879036, 31.277903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015131, 26.775085, 31.061607>,  <28.009758, 26.601835, 30.701115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015131, 26.775085, 31.061607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184335, 0.884793, -0.427974,
		-0.982772, 0.171878, -0.067955,
		0.013433, 0.433128, 0.901233,
		28.019161, 26.905024, 31.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594288, 27.159161, 30.674986>,  <28.009758, 26.601835, 30.701115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594288, 27.159161, 30.674986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811283, 27.239433, 31.001282>,  <27.941481, 27.287598, 31.197060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811283, 27.239433, 31.001282>,  <27.594288, 27.159161, 30.674986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811283, 27.239433, 31.001282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041616, 0.963434, -0.264693,
		-0.839033, 0.177541, 0.514299,
		0.542487, 0.200683, 0.815741,
		27.974030, 27.299639, 31.246004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262421, 27.734566, 30.903151>,  <27.594288, 27.159161, 30.674986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262421, 27.734566, 30.903151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608578, 27.745281, 31.103302>,  <27.816273, 27.751711, 31.223392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608578, 27.745281, 31.103302>,  <27.262421, 27.734566, 30.903151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608578, 27.745281, 31.103302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083917, 0.976720, -0.197422,
		-0.494018, 0.212837, 0.842999,
		0.865393, 0.026788, 0.500378,
		27.868195, 27.753317, 31.253416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319199, 28.278690, 31.249435>,  <27.262421, 27.734566, 30.903151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319199, 28.278690, 31.249435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706175, 28.177773, 31.241402>,  <27.938360, 28.117222, 31.236582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706175, 28.177773, 31.241402>,  <27.319199, 28.278690, 31.249435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706175, 28.177773, 31.241402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235806, 0.927346, -0.290560,
		0.091930, 0.276364, 0.956646,
		0.967442, -0.252294, -0.020082,
		27.996408, 28.102085, 31.235376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541105, 28.904596, 31.590981>,  <27.319199, 28.278690, 31.249435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541105, 28.904596, 31.590981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872574, 28.735119, 31.444675>,  <28.071455, 28.633432, 31.356892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872574, 28.735119, 31.444675>,  <27.541105, 28.904596, 31.590981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872574, 28.735119, 31.444675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380840, 0.905679, -0.186294,
		0.410197, 0.015079, 0.911872,
		0.828673, -0.423694, -0.365764,
		28.121176, 28.608011, 31.334946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138769, 29.253597, 31.935894>,  <27.541105, 28.904596, 31.590981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138769, 29.253597, 31.935894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231529, 29.101620, 31.577705>,  <28.287186, 29.010433, 31.362793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231529, 29.101620, 31.577705>,  <28.138769, 29.253597, 31.935894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231529, 29.101620, 31.577705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347127, 0.892277, -0.288695,
		0.908695, -0.243894, 0.338807,
		0.231899, -0.379944, -0.895469,
		28.301100, 28.987637, 31.309065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770056, 29.410566, 31.860149>,  <28.138769, 29.253597, 31.935894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770056, 29.410566, 31.860149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655838, 29.328773, 31.485630>,  <28.587307, 29.279697, 31.260918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655838, 29.328773, 31.485630>,  <28.770056, 29.410566, 31.860149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655838, 29.328773, 31.485630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215118, 0.938368, -0.270537,
		0.933911, -0.278664, -0.223958,
		-0.285544, -0.204480, -0.936297,
		28.570175, 29.267429, 31.204741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335304, 29.685923, 31.303297>,  <28.770056, 29.410566, 31.860149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335304, 29.685923, 31.303297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975885, 29.647949, 31.131901>,  <28.760235, 29.625166, 31.029064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975885, 29.647949, 31.131901>,  <29.335304, 29.685923, 31.303297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975885, 29.647949, 31.131901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004181, 0.974429, -0.224657,
		0.438860, -0.203656, -0.875172,
		-0.898546, -0.094934, -0.428489,
		28.706322, 29.619469, 31.003353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438845, 29.940657, 30.586193>,  <29.335304, 29.685923, 31.303297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438845, 29.940657, 30.586193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044846, 29.967331, 30.649860>,  <28.808447, 29.983335, 30.688061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044846, 29.967331, 30.649860>,  <29.438845, 29.940657, 30.586193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044846, 29.967331, 30.649860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010654, 0.897073, -0.441755,
		-0.172245, -0.436823, -0.882903,
		-0.984997, 0.066684, 0.159170,
		28.749346, 29.987335, 30.697611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183157, 30.268452, 30.062111>,  <29.438845, 29.940657, 30.586193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183157, 30.268452, 30.062111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875166, 30.334858, 30.308548>,  <28.690371, 30.374702, 30.456411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875166, 30.334858, 30.308548>,  <29.183157, 30.268452, 30.062111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875166, 30.334858, 30.308548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134573, 0.901588, -0.411133,
		-0.623718, -0.399472, -0.671861,
		-0.769977, 0.166017, 0.616095,
		28.644173, 30.384663, 30.493376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666920, 30.669170, 29.654968>,  <29.183157, 30.268452, 30.062111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666920, 30.669170, 29.654968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517591, 30.710991, 30.023685>,  <28.427996, 30.736084, 30.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517591, 30.710991, 30.023685>,  <28.666920, 30.669170, 29.654968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517591, 30.710991, 30.023685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207385, 0.959078, -0.192769,
		-0.904226, -0.263130, -0.336360,
		-0.373319, 0.104551, 0.921793,
		28.405596, 30.742355, 30.300222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954790, 30.998770, 29.617594>,  <28.666920, 30.669170, 29.654968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954790, 30.998770, 29.617594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125572, 31.066380, 29.972927>,  <28.228043, 31.106945, 30.186127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125572, 31.066380, 29.972927>,  <27.954790, 30.998770, 29.617594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125572, 31.066380, 29.972927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264447, 0.962768, -0.056087,
		-0.864741, -0.210971, 0.455758,
		0.426956, 0.169024, 0.888335,
		28.253658, 31.117086, 30.239428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415470, 31.049158, 30.176523>,  <27.954790, 30.998770, 29.617594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415470, 31.049158, 30.176523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764130, 31.243973, 30.154522>,  <27.973326, 31.360861, 30.141321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764130, 31.243973, 30.154522>,  <27.415470, 31.049158, 30.176523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764130, 31.243973, 30.154522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477894, 0.819597, -0.316034,
		-0.108838, 0.301757, 0.947152,
		0.871649, 0.487035, -0.055004,
		28.025623, 31.390083, 30.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375498, 31.665369, 30.501925>,  <27.415470, 31.049158, 30.176523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375498, 31.665369, 30.501925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650290, 31.740917, 30.221245>,  <27.815165, 31.786247, 30.052837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650290, 31.740917, 30.221245>,  <27.375498, 31.665369, 30.501925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650290, 31.740917, 30.221245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421809, 0.889945, -0.173420,
		0.591721, 0.415121, 0.691043,
		0.686981, 0.188872, -0.701701,
		27.856384, 31.797579, 30.010735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328087, 32.362881, 30.520559>,  <27.375498, 31.665369, 30.501925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328087, 32.362881, 30.520559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538116, 32.286831, 30.188740>,  <27.664133, 32.241203, 29.989649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538116, 32.286831, 30.188740>,  <27.328087, 32.362881, 30.520559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538116, 32.286831, 30.188740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407166, 0.799819, -0.441028,
		0.747338, 0.569336, 0.342552,
		0.525073, -0.190121, -0.829549,
		27.695639, 32.229794, 29.939875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598061, 33.002258, 30.389099>,  <27.328087, 32.362881, 30.520559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598061, 33.002258, 30.389099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616171, 32.764053, 30.068272>,  <27.627037, 32.621128, 29.875776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616171, 32.764053, 30.068272>,  <27.598061, 33.002258, 30.389099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616171, 32.764053, 30.068272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544976, 0.658169, -0.519437,
		0.837228, 0.460624, -0.294745,
		0.045274, -0.595517, -0.802067,
		27.629753, 32.585400, 29.827652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766693, 33.526546, 29.933363>,  <27.598061, 33.002258, 30.389099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766693, 33.526546, 29.933363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615585, 33.204208, 29.750977>,  <27.524921, 33.010807, 29.641544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615585, 33.204208, 29.750977>,  <27.766693, 33.526546, 29.933363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615585, 33.204208, 29.750977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611591, 0.586909, -0.530560,
		0.695160, 0.078438, -0.714562,
		-0.377767, -0.805844, -0.455968,
		27.502254, 32.962456, 29.614187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722342, 33.704220, 29.212992>,  <27.766693, 33.526546, 29.933363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722342, 33.704220, 29.212992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495794, 33.376011, 29.243881>,  <27.359865, 33.179085, 29.262415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495794, 33.376011, 29.243881>,  <27.722342, 33.704220, 29.212992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495794, 33.376011, 29.243881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710826, 0.438922, -0.549613,
		0.417072, -0.366183, -0.831842,
		-0.566372, -0.820523, 0.077230,
		27.325884, 33.129852, 29.267048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674095, 33.472542, 28.582991>,  <27.722342, 33.704220, 29.212992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674095, 33.472542, 28.582991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360268, 33.307335, 28.767975>,  <27.171972, 33.208210, 28.878965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360268, 33.307335, 28.767975>,  <27.674095, 33.472542, 28.582991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360268, 33.307335, 28.767975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619901, 0.538535, -0.570704,
		-0.013338, -0.734434, -0.678549,
		-0.784567, -0.413021, 0.462459,
		27.124897, 33.183430, 28.906712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256981, 33.230465, 28.074137>,  <27.674095, 33.472542, 28.582991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256981, 33.230465, 28.074137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978470, 33.269688, 28.358555>,  <26.811363, 33.293221, 28.529205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978470, 33.269688, 28.358555>,  <27.256981, 33.230465, 28.074137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978470, 33.269688, 28.358555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631185, 0.388038, -0.671589,
		-0.341768, -0.916412, -0.208287,
		-0.696276, 0.098060, 0.711045,
		26.769587, 33.299107, 28.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579624, 32.924377, 27.877172>,  <27.256981, 33.230465, 28.074137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579624, 32.924377, 27.877172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498735, 33.191170, 28.164013>,  <26.450201, 33.351246, 28.336117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498735, 33.191170, 28.164013>,  <26.579624, 32.924377, 27.877172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498735, 33.191170, 28.164013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668337, 0.441231, -0.598866,
		-0.715843, -0.600371, 0.356543,
		-0.202224, 0.666985, 0.717103,
		26.438068, 33.391266, 28.379145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780640, 32.997604, 27.688780>,  <26.579624, 32.924377, 27.877172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780640, 32.997604, 27.688780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901228, 33.301704, 27.918957>,  <25.973581, 33.484165, 28.057064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901228, 33.301704, 27.918957>,  <25.780640, 32.997604, 27.688780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901228, 33.301704, 27.918957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571938, 0.627077, -0.528830,
		-0.762890, -0.169691, 0.623861,
		0.301472, 0.760250, 0.575444,
		25.991669, 33.529778, 28.091589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203352, 33.225903, 27.874418>,  <25.780640, 32.997604, 27.688780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203352, 33.225903, 27.874418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445385, 33.533928, 27.955299>,  <25.590605, 33.718742, 28.003828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445385, 33.533928, 27.955299>,  <25.203352, 33.225903, 27.874418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445385, 33.533928, 27.955299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711858, 0.637011, -0.295763,
		-0.356561, 0.035020, 0.933615,
		0.605081, 0.770059, 0.202204,
		25.626909, 33.764946, 28.015961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.805124, 33.725868, 28.220816>,  <25.203352, 33.225903, 27.874418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.805124, 33.725868, 28.220816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106138, 33.924427, 28.047710>,  <25.286747, 34.043560, 27.943848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106138, 33.924427, 28.047710>,  <24.805124, 33.725868, 28.220816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106138, 33.924427, 28.047710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652139, 0.653188, -0.384786,
		0.091670, 0.571787, 0.815265,
		0.752537, 0.496392, -0.432763,
		25.331900, 34.073345, 27.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647646, 34.421158, 28.445892>,  <24.805124, 33.725868, 28.220816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647646, 34.421158, 28.445892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897957, 34.441498, 28.134556>,  <25.048143, 34.453701, 27.947754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897957, 34.441498, 28.134556>,  <24.647646, 34.421158, 28.445892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897957, 34.441498, 28.134556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581040, 0.696123, -0.421669,
		0.520379, 0.716119, 0.465167,
		0.625778, 0.050853, -0.778341,
		25.085690, 34.456753, 27.901052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858406, 35.148605, 28.244827>,  <24.647646, 34.421158, 28.445892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858406, 35.148605, 28.244827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861153, 34.926792, 27.911972>,  <24.862801, 34.793705, 27.712259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861153, 34.926792, 27.911972>,  <24.858406, 35.148605, 28.244827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861153, 34.926792, 27.911972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530174, 0.703551, -0.473215,
		0.847861, 0.444426, -0.289166,
		0.006866, -0.554529, -0.832136,
		24.863213, 34.760433, 27.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921621, 35.613941, 27.826435>,  <24.858406, 35.148605, 28.244827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921621, 35.613941, 27.826435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783318, 35.298962, 27.622326>,  <24.700335, 35.109974, 27.499861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783318, 35.298962, 27.622326>,  <24.921621, 35.613941, 27.826435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783318, 35.298962, 27.622326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638446, 0.595953, -0.487059,
		0.687631, 0.157374, -0.708800,
		-0.345761, -0.787447, -0.510271,
		24.679588, 35.062729, 27.469244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327742, 36.049210, 27.377924>,  <24.921621, 35.613941, 27.826435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327742, 36.049210, 27.377924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.930099, 36.063232, 27.336884>,  <23.691515, 36.071644, 27.312260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.930099, 36.063232, 27.336884>,  <24.327742, 36.049210, 27.377924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.930099, 36.063232, 27.336884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108039, 0.240476, -0.964624,
		-0.009142, -0.970022, -0.242846,
		-0.994105, 0.035055, -0.102602,
		23.631868, 36.073750, 27.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100101, 35.559067, 26.864113>,  <24.327742, 36.049210, 27.377924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100101, 35.559067, 26.864113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851118, 35.872089, 26.869034>,  <23.701727, 36.059902, 26.871986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851118, 35.872089, 26.869034>,  <24.100101, 35.559067, 26.864113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.851118, 35.872089, 26.869034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146784, 0.132167, -0.980299,
		-0.768764, -0.608391, -0.197135,
		-0.622459, 0.782555, 0.012303,
		23.664381, 36.106857, 26.872725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613228, 35.594715, 26.328064>,  <24.100101, 35.559067, 26.864113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613228, 35.594715, 26.328064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.699633, 35.973133, 26.424675>,  <23.751474, 36.200184, 26.482641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.699633, 35.973133, 26.424675>,  <23.613228, 35.594715, 26.328064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.699633, 35.973133, 26.424675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095805, 0.225639, -0.969489,
		-0.971680, 0.232559, -0.041896,
		0.216010, 0.946046, 0.241529,
		23.764435, 36.256947, 26.497133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362143, 35.928608, 25.873838>,  <23.613228, 35.594715, 26.328064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362143, 35.928608, 25.873838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.612764, 36.215992, 25.994667>,  <23.763138, 36.388420, 26.067163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.612764, 36.215992, 25.994667>,  <23.362143, 35.928608, 25.873838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.612764, 36.215992, 25.994667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097363, 0.312391, -0.944951,
		-0.773272, 0.621474, 0.125779,
		0.626555, 0.718457, 0.302072,
		23.800732, 36.431530, 26.085289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808306, 35.894794, 25.334482>,  <23.362143, 35.928608, 25.873838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.808306, 35.894794, 25.334482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.498913, 35.643639, 25.369080>,  <22.313276, 35.492947, 25.389837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.498913, 35.643639, 25.369080>,  <22.808306, 35.894794, 25.334482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.498913, 35.643639, 25.369080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212978, -0.386006, -0.897575,
		0.596962, -0.675839, 0.432295,
		-0.773484, -0.627887, 0.086492,
		22.266867, 35.455273, 25.395027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013262, 35.140926, 25.316399>,  <22.808306, 35.894794, 25.334482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013262, 35.140926, 25.316399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.644518, 35.165787, 25.163395>,  <22.423271, 35.180702, 25.071592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.644518, 35.165787, 25.163395>,  <23.013262, 35.140926, 25.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644518, 35.165787, 25.163395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273692, -0.594375, -0.756182,
		-0.274355, -0.801782, 0.530918,
		-0.921858, 0.062154, -0.382511,
		22.367960, 35.184433, 25.048641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.692650, 34.402908, 25.304716>,  <23.013262, 35.140926, 25.316399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.692650, 34.402908, 25.304716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608164, 34.655315, 25.006130>,  <22.557472, 34.806759, 24.826979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608164, 34.655315, 25.006130>,  <22.692650, 34.402908, 25.304716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608164, 34.655315, 25.006130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489314, -0.592848, -0.639612,
		-0.846145, -0.500350, -0.183547,
		-0.211214, 0.631016, -0.746463,
		22.544800, 34.844620, 24.782190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.420927, 33.950420, 24.714964>,  <22.692650, 34.402908, 25.304716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.420927, 33.950420, 24.714964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541649, 34.302521, 24.568501>,  <22.614082, 34.513783, 24.480623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541649, 34.302521, 24.568501>,  <22.420927, 33.950420, 24.714964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.541649, 34.302521, 24.568501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609505, -0.473476, -0.635865,
		-0.733088, -0.031268, -0.679415,
		0.301804, 0.880251, -0.366158,
		22.632191, 34.566597, 24.458652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408577, 33.867085, 24.035797>,  <22.420927, 33.950420, 24.714964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408577, 33.867085, 24.035797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664698, 34.168552, 24.095116>,  <22.818371, 34.349434, 24.130707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664698, 34.168552, 24.095116>,  <22.408577, 33.867085, 24.035797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664698, 34.168552, 24.095116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657293, -0.437707, -0.613497,
		-0.397464, 0.490299, -0.775648,
		0.640303, 0.753671, 0.148298,
		22.856789, 34.394653, 24.139605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640331, 34.057522, 23.384247>,  <22.408577, 33.867085, 24.035797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640331, 34.057522, 23.384247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906403, 34.234833, 23.624596>,  <23.066046, 34.341221, 23.768805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906403, 34.234833, 23.624596>,  <22.640331, 34.057522, 23.384247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906403, 34.234833, 23.624596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718594, -0.161378, -0.676446,
		-0.202885, 0.881739, -0.425881,
		0.665176, 0.443276, 0.600871,
		23.105955, 34.367817, 23.804857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119171, 34.151279, 23.043415>,  <22.640331, 34.057522, 23.384247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119171, 34.151279, 23.043415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333910, 34.220688, 23.373672>,  <23.462753, 34.262333, 23.571827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333910, 34.220688, 23.373672>,  <23.119171, 34.151279, 23.043415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333910, 34.220688, 23.373672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830705, -0.279691, -0.481355,
		0.147402, 0.944280, -0.294293,
		0.536845, 0.173518, 0.825644,
		23.494963, 34.272743, 23.621367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.733320, 34.658669, 22.884758>,  <23.119171, 34.151279, 23.043415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.733320, 34.658669, 22.884758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820005, 34.445538, 23.211960>,  <23.872017, 34.317661, 23.408281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820005, 34.445538, 23.211960>,  <23.733320, 34.658669, 22.884758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.820005, 34.445538, 23.211960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887380, -0.241759, -0.392568,
		0.406930, 0.810957, 0.420424,
		0.216714, -0.532823, 0.818006,
		23.885019, 34.285690, 23.457361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387766, 34.882401, 23.082247>,  <23.733320, 34.658669, 22.884758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387766, 34.882401, 23.082247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373844, 34.545113, 23.296825>,  <24.365492, 34.342739, 23.425571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373844, 34.545113, 23.296825>,  <24.387766, 34.882401, 23.082247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373844, 34.545113, 23.296825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953792, -0.188319, -0.234129,
		0.298444, 0.503508, 0.810809,
		-0.034805, -0.843218, 0.536444,
		24.363403, 34.292149, 23.457758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007515, 34.918270, 23.519789>,  <24.387766, 34.882401, 23.082247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007515, 34.918270, 23.519789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906219, 34.533867, 23.475372>,  <24.845442, 34.303223, 23.448723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906219, 34.533867, 23.475372>,  <25.007515, 34.918270, 23.519789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906219, 34.533867, 23.475372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946259, -0.222199, -0.234993,
		0.201157, -0.164584, 0.965633,
		-0.253239, -0.961010, -0.111042,
		24.830248, 34.245564, 23.442060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433840, 34.618511, 23.981382>,  <25.007515, 34.918270, 23.519789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433840, 34.618511, 23.981382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333210, 34.333424, 23.719467>,  <25.272833, 34.162373, 23.562319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333210, 34.333424, 23.719467>,  <25.433840, 34.618511, 23.981382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333210, 34.333424, 23.719467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965300, -0.135813, -0.223049,
		0.070042, -0.688180, 0.722151,
		-0.251575, -0.712715, -0.654787,
		25.257738, 34.119610, 23.523031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051224, 34.217907, 23.935673>,  <25.433840, 34.618511, 23.981382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051224, 34.217907, 23.935673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839149, 34.076241, 23.627525>,  <25.711905, 33.991241, 23.442636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839149, 34.076241, 23.627525>,  <26.051224, 34.217907, 23.935673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839149, 34.076241, 23.627525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846090, -0.280011, -0.453570,
		-0.055072, -0.892278, 0.448115,
		-0.530188, -0.354166, -0.770368,
		25.680094, 33.969990, 23.396416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301613, 33.549305, 23.779886>,  <26.051224, 34.217907, 23.935673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301613, 33.549305, 23.779886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117508, 33.693375, 23.455311>,  <26.007044, 33.779816, 23.260565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117508, 33.693375, 23.455311>,  <26.301613, 33.549305, 23.779886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117508, 33.693375, 23.455311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814699, -0.191797, -0.547247,
		-0.352735, -0.912956, -0.205155,
		-0.460264, 0.360173, -0.811439,
		25.979429, 33.801426, 23.211880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321371, 32.991749, 23.291580>,  <26.301613, 33.549305, 23.779886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321371, 32.991749, 23.291580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300987, 33.351974, 23.118893>,  <26.288757, 33.568111, 23.015280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300987, 33.351974, 23.118893>,  <26.321371, 32.991749, 23.291580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300987, 33.351974, 23.118893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833319, -0.199911, -0.515378,
		-0.550438, -0.386025, -0.740272,
		-0.050960, 0.900567, -0.431721,
		26.285700, 33.622143, 22.989376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761848, 32.856285, 22.651649>,  <26.321371, 32.991749, 23.291580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761848, 32.856285, 22.651649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697401, 33.251019, 22.657330>,  <26.658731, 33.487858, 22.660738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697401, 33.251019, 22.657330>,  <26.761848, 32.856285, 22.651649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697401, 33.251019, 22.657330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692214, 0.123249, -0.711091,
		-0.703478, -0.104741, -0.702957,
		-0.161120, 0.986833, 0.014200,
		26.649065, 33.547070, 22.661589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691679, 33.114464, 21.927759>,  <26.761848, 32.856285, 22.651649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691679, 33.114464, 21.927759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815639, 33.423252, 22.149757>,  <26.890017, 33.608524, 22.282957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815639, 33.423252, 22.149757>,  <26.691679, 33.114464, 21.927759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815639, 33.423252, 22.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731867, 0.178922, -0.657539,
		-0.606902, 0.609956, -0.509533,
		0.309903, 0.771972, 0.554995,
		26.908611, 33.654842, 22.316256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761648, 33.719788, 21.572521>,  <26.691679, 33.114464, 21.927759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761648, 33.719788, 21.572521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976658, 33.844654, 21.885857>,  <27.105663, 33.919575, 22.073858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976658, 33.844654, 21.885857>,  <26.761648, 33.719788, 21.572521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976658, 33.844654, 21.885857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687823, 0.375090, -0.621455,
		-0.487820, 0.872846, -0.013095,
		0.537523, 0.312165, 0.783340,
		27.137915, 33.938305, 22.120859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036514, 34.323399, 21.379593>,  <26.761648, 33.719788, 21.572521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036514, 34.323399, 21.379593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265406, 34.193432, 21.680786>,  <27.402740, 34.115452, 21.861502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265406, 34.193432, 21.680786>,  <27.036514, 34.323399, 21.379593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265406, 34.193432, 21.680786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819927, 0.208066, -0.533317,
		0.016613, 0.922571, 0.385470,
		0.572226, -0.324917, 0.752985,
		27.437073, 34.095955, 21.906681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484764, 34.820202, 21.478975>,  <27.036514, 34.323399, 21.379593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484764, 34.820202, 21.478975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676472, 34.491451, 21.602142>,  <27.791496, 34.294201, 21.676043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676472, 34.491451, 21.602142>,  <27.484764, 34.820202, 21.478975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676472, 34.491451, 21.602142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788307, 0.248878, -0.562701,
		0.385839, 0.512418, 0.767174,
		0.479271, -0.821881, 0.307915,
		27.820253, 34.244888, 21.694517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162796, 35.034252, 21.499437>,  <27.484764, 34.820202, 21.478975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162796, 35.034252, 21.499437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190769, 34.635788, 21.478386>,  <28.207552, 34.396709, 21.465755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190769, 34.635788, 21.478386>,  <28.162796, 35.034252, 21.499437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190769, 34.635788, 21.478386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887449, 0.086220, -0.452770,
		0.455571, -0.015041, 0.890073,
		0.069932, -0.996163, -0.052627,
		28.211748, 34.336941, 21.462597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768543, 34.943356, 21.737354>,  <28.162796, 35.034252, 21.499437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768543, 34.943356, 21.737354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689600, 34.623680, 21.510254>,  <28.642235, 34.431873, 21.373993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689600, 34.623680, 21.510254>,  <28.768543, 34.943356, 21.737354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689600, 34.623680, 21.510254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940525, 0.008997, -0.339606,
		0.276518, -0.601008, 0.749885,
		-0.197359, -0.799192, -0.567751,
		28.630392, 34.383923, 21.339928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399969, 34.583538, 21.718386>,  <28.768543, 34.943356, 21.737354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399969, 34.583538, 21.718386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181881, 34.405098, 21.434490>,  <29.051027, 34.298035, 21.264153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181881, 34.405098, 21.434490>,  <29.399969, 34.583538, 21.718386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181881, 34.405098, 21.434490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837369, -0.250074, -0.486083,
		0.039355, -0.859335, 0.509896,
		-0.545220, -0.446101, -0.709739,
		29.018314, 34.271267, 21.221569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688513, 33.862133, 21.662510>,  <29.399969, 34.583538, 21.718386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688513, 33.862133, 21.662510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495968, 33.979687, 21.332195>,  <29.380440, 34.050217, 21.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495968, 33.979687, 21.332195>,  <29.688513, 33.862133, 21.662510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495968, 33.979687, 21.332195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833777, -0.137093, -0.534810,
		-0.270380, -0.945959, -0.179040,
		-0.481363, 0.293881, -0.825786,
		29.351559, 34.067852, 21.084459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125446, 33.736511, 21.143593>,  <29.688513, 33.862133, 21.662510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125446, 33.736511, 21.143593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827080, 33.844437, 20.900017>,  <29.648060, 33.909191, 20.753872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827080, 33.844437, 20.900017>,  <30.125446, 33.736511, 21.143593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827080, 33.844437, 20.900017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601515, -0.119667, -0.789848,
		-0.285985, -0.955447, -0.073037,
		-0.745917, 0.269817, -0.608939,
		29.603304, 33.925381, 20.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205379, 33.304581, 20.546164>,  <30.125446, 33.736511, 21.143593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205379, 33.304581, 20.546164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987719, 33.618378, 20.427189>,  <29.857122, 33.806656, 20.355804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987719, 33.618378, 20.427189>,  <30.205379, 33.304581, 20.546164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987719, 33.618378, 20.427189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436868, -0.037725, -0.898734,
		-0.716272, -0.618988, -0.322193,
		-0.544151, 0.784494, -0.297438,
		29.824472, 33.853725, 20.337957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944267, 33.130508, 19.875628>,  <30.205379, 33.304581, 20.546164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944267, 33.130508, 19.875628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908010, 33.525890, 19.924198>,  <29.886257, 33.763119, 19.953341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908010, 33.525890, 19.924198>,  <29.944267, 33.130508, 19.875628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908010, 33.525890, 19.924198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420985, 0.148527, -0.894825,
		-0.902527, -0.029990, -0.429587,
		-0.090641, 0.988454, 0.121425,
		29.880817, 33.822426, 19.960625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543976, 33.515018, 19.296192>,  <29.944267, 33.130508, 19.875628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543976, 33.515018, 19.296192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805979, 33.760532, 19.472481>,  <29.963181, 33.907841, 19.578255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805979, 33.760532, 19.472481>,  <29.543976, 33.515018, 19.296192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805979, 33.760532, 19.472481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308920, 0.314768, -0.897491,
		-0.689589, 0.724012, 0.016566,
		0.655008, 0.613782, 0.440722,
		30.002481, 33.944668, 19.604698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339355, 34.217571, 19.141033>,  <29.543976, 33.515018, 19.296192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339355, 34.217571, 19.141033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732994, 34.158482, 19.180492>,  <29.969177, 34.123028, 19.204168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732994, 34.158482, 19.180492>,  <29.339355, 34.217571, 19.141033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732994, 34.158482, 19.180492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138373, 0.289299, -0.947185,
		0.111382, 0.945772, 0.305139,
		0.984097, -0.147722, 0.098647,
		30.028223, 34.114166, 19.210087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823711, 34.757477, 19.171898>,  <29.339355, 34.217571, 19.141033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823711, 34.757477, 19.171898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080250, 34.807213, 18.869053>,  <29.234173, 34.837055, 18.687346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080250, 34.807213, 18.869053>,  <28.823711, 34.757477, 19.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080250, 34.807213, 18.869053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553343, -0.608615, -0.568682,
		-0.531497, 0.783663, -0.321532,
		0.641344, 0.124336, -0.757112,
		29.272654, 34.844513, 18.641920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388260, 34.814377, 18.570004>,  <28.823711, 34.757477, 19.171898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388260, 34.814377, 18.570004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738089, 34.695114, 18.417046>,  <28.947985, 34.623554, 18.325270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738089, 34.695114, 18.417046>,  <28.388260, 34.814377, 18.570004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738089, 34.695114, 18.417046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482764, -0.609309, -0.629032,
		-0.045446, 0.734741, -0.676824,
		0.874570, -0.298160, -0.382397,
		29.000460, 34.605667, 18.302326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348919, 34.867401, 17.786375>,  <28.388260, 34.814377, 18.570004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348919, 34.867401, 17.786375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587740, 34.597458, 17.959858>,  <28.731033, 34.435493, 18.063948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587740, 34.597458, 17.959858>,  <28.348919, 34.867401, 17.786375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587740, 34.597458, 17.959858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438234, -0.727227, -0.528291,
		0.671923, 0.125352, -0.729936,
		0.597052, -0.674853, 0.433707,
		28.766855, 34.395000, 18.089970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864386, 35.231995, 17.308170>,  <28.348919, 34.867401, 17.786375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864386, 35.231995, 17.308170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699711, 34.937798, 17.092926>,  <27.600906, 34.761280, 16.963779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699711, 34.937798, 17.092926>,  <27.864386, 35.231995, 17.308170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699711, 34.937798, 17.092926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867757, 0.135986, 0.478023,
		-0.278408, 0.663745, -0.694213,
		-0.411688, -0.735494, -0.538109,
		27.576204, 34.717148, 16.931494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129766, 35.439564, 16.954622>,  <27.864386, 35.231995, 17.308170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129766, 35.439564, 16.954622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139822, 35.040257, 16.975914>,  <27.145855, 34.800674, 16.988689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139822, 35.040257, 16.975914>,  <27.129766, 35.439564, 16.954622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139822, 35.040257, 16.975914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956671, -0.008570, 0.291044,
		-0.290083, -0.058241, -0.955228,
		0.025137, -0.998266, 0.053231,
		27.147364, 34.740776, 16.991884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653391, 35.080956, 16.500217>,  <27.129766, 35.439564, 16.954622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653391, 35.080956, 16.500217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717749, 34.848885, 16.819595>,  <26.756363, 34.709644, 17.011221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717749, 34.848885, 16.819595>,  <26.653391, 35.080956, 16.500217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717749, 34.848885, 16.819595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949964, 0.128420, 0.284741,
		-0.267735, -0.804305, -0.530483,
		0.160894, -0.580174, 0.798442,
		26.766016, 34.674831, 17.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080860, 34.764885, 16.705568>,  <26.653391, 35.080956, 16.500217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080860, 34.764885, 16.705568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291189, 34.732380, 17.044250>,  <26.417387, 34.712879, 17.247459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291189, 34.732380, 17.044250>,  <26.080860, 34.764885, 16.705568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291189, 34.732380, 17.044250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829116, 0.173322, 0.531532,
		-0.189946, -0.981507, 0.023762,
		0.525821, -0.081261, 0.846705,
		26.448936, 34.708000, 17.298262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766516, 34.264347, 17.090122>,  <26.080860, 34.764885, 16.705568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766516, 34.264347, 17.090122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977901, 34.474857, 17.356583>,  <26.104733, 34.601162, 17.516459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977901, 34.474857, 17.356583>,  <25.766516, 34.264347, 17.090122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977901, 34.474857, 17.356583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804552, 0.060016, 0.590842,
		0.270967, -0.848192, 0.455134,
		0.528463, 0.526278, 0.666152,
		26.136440, 34.632740, 17.556429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345369, 34.232494, 17.716249>,  <25.766516, 34.264347, 17.090122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345369, 34.232494, 17.716249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604277, 34.511909, 17.838295>,  <25.759621, 34.679558, 17.911522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604277, 34.511909, 17.838295>,  <25.345369, 34.232494, 17.716249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604277, 34.511909, 17.838295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581698, 0.193968, 0.789939,
		0.492618, -0.688786, 0.531886,
		0.647267, 0.698535, 0.305114,
		25.798456, 34.721470, 17.929829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621939, 34.084991, 18.491119>,  <25.345369, 34.232494, 17.716249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621939, 34.084991, 18.491119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664082, 34.476166, 18.418968>,  <25.689367, 34.710873, 18.375677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664082, 34.476166, 18.418968>,  <25.621939, 34.084991, 18.491119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664082, 34.476166, 18.418968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443295, 0.208555, 0.871777,
		0.890162, -0.011890, 0.455488,
		0.105359, 0.977938, -0.180377,
		25.695690, 34.769547, 18.364855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835432, 34.446957, 19.155298>,  <25.621939, 34.084991, 18.491119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835432, 34.446957, 19.155298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665215, 34.732792, 18.933208>,  <25.563084, 34.904293, 18.799955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665215, 34.732792, 18.933208>,  <25.835432, 34.446957, 19.155298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665215, 34.732792, 18.933208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563752, 0.270604, 0.780357,
		0.707882, 0.645085, 0.287698,
		-0.425544, 0.714590, -0.555223,
		25.537552, 34.947170, 18.766642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781858, 35.011303, 19.567135>,  <25.835432, 34.446957, 19.155298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781858, 35.011303, 19.567135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523697, 35.097958, 19.274143>,  <25.368801, 35.149952, 19.098349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523697, 35.097958, 19.274143>,  <25.781858, 35.011303, 19.567135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523697, 35.097958, 19.274143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588281, 0.470684, 0.657558,
		0.487218, 0.855292, -0.176337,
		-0.645403, 0.216639, -0.732477,
		25.330076, 35.162949, 19.054399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539728, 35.570606, 19.838232>,  <25.781858, 35.011303, 19.567135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539728, 35.570606, 19.838232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270077, 35.476208, 19.558273>,  <25.108286, 35.419567, 19.390299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270077, 35.476208, 19.558273>,  <25.539728, 35.570606, 19.838232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270077, 35.476208, 19.558273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725869, 0.386939, 0.568676,
		0.136610, 0.891394, -0.432151,
		-0.674131, -0.235998, -0.699895,
		25.067837, 35.405407, 19.348305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157959, 36.160210, 19.623228>,  <25.539728, 35.570606, 19.838232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157959, 36.160210, 19.623228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948782, 35.824665, 19.562763>,  <24.823277, 35.623341, 19.526484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948782, 35.824665, 19.562763>,  <25.157959, 36.160210, 19.623228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948782, 35.824665, 19.562763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608893, 0.243542, 0.754941,
		-0.596473, 0.486833, -0.638133,
		-0.522942, -0.838857, -0.151163,
		24.791899, 35.573009, 19.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594395, 36.453659, 19.761877>,  <25.157959, 36.160210, 19.623228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594395, 36.453659, 19.761877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528288, 36.059181, 19.757904>,  <24.488625, 35.822495, 19.755520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528288, 36.059181, 19.757904>,  <24.594395, 36.453659, 19.761877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528288, 36.059181, 19.757904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805289, 0.129122, 0.578651,
		-0.569382, 0.103631, -0.815515,
		-0.165267, -0.986199, -0.009933,
		24.478708, 35.763321, 19.754925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873266, 36.385811, 19.645027>,  <24.594395, 36.453659, 19.761877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873266, 36.385811, 19.645027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.981127, 36.040596, 19.815884>,  <24.045843, 35.833466, 19.918398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.981127, 36.040596, 19.815884>,  <23.873266, 36.385811, 19.645027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981127, 36.040596, 19.815884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652870, 0.162207, 0.739898,
		-0.707847, -0.478383, -0.519713,
		0.269654, -0.863040, 0.427140,
		24.062023, 35.781685, 19.944025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239531, 36.259155, 19.929022>,  <23.873266, 36.385811, 19.645027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239531, 36.259155, 19.929022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515671, 36.022549, 20.095646>,  <23.681355, 35.880585, 20.195620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515671, 36.022549, 20.095646>,  <23.239531, 36.259155, 19.929022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.515671, 36.022549, 20.095646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485188, 0.048572, 0.873060,
		-0.536664, -0.804827, -0.253466,
		0.690351, -0.591518, 0.416559,
		23.722776, 35.845093, 20.220613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808460, 35.755135, 20.242165>,  <23.239531, 36.259155, 19.929022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.808460, 35.755135, 20.242165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162230, 35.774780, 20.427803>,  <23.374491, 35.786568, 20.539186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162230, 35.774780, 20.427803>,  <22.808460, 35.755135, 20.242165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.162230, 35.774780, 20.427803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461199, 0.244073, 0.853068,
		-0.071377, -0.968513, 0.238514,
		0.884421, 0.049113, 0.464098,
		23.427555, 35.789513, 20.567032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741360, 35.280930, 20.807655>,  <22.808460, 35.755135, 20.242165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741360, 35.280930, 20.807655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032652, 35.537983, 20.902905>,  <23.207428, 35.692215, 20.960054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032652, 35.537983, 20.902905>,  <22.741360, 35.280930, 20.807655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.032652, 35.537983, 20.902905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293252, -0.021848, 0.955785,
		0.619419, -0.765865, 0.172543,
		0.728233, 0.642631, 0.238125,
		23.251122, 35.730774, 20.974342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.079967, 35.044209, 21.534843>,  <22.741360, 35.280930, 20.807655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.079967, 35.044209, 21.534843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.152214, 35.433754, 21.479752>,  <23.195562, 35.667480, 21.446697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.152214, 35.433754, 21.479752>,  <23.079967, 35.044209, 21.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.152214, 35.433754, 21.479752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453790, 0.206747, 0.866793,
		0.872612, -0.094058, 0.479271,
		0.180617, 0.973863, -0.137728,
		23.206400, 35.725914, 21.438433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268463, 35.358498, 22.148098>,  <23.079967, 35.044209, 21.534843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268463, 35.358498, 22.148098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167624, 35.680283, 21.932953>,  <23.107121, 35.873352, 21.803865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167624, 35.680283, 21.932953>,  <23.268463, 35.358498, 22.148098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.167624, 35.680283, 21.932953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420638, 0.409462, 0.809570,
		0.871499, 0.430335, 0.235161,
		-0.252097, 0.804458, -0.537861,
		23.091995, 35.921619, 21.771595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.438059, 35.993622, 22.565905>,  <23.268463, 35.358498, 22.148098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.438059, 35.993622, 22.565905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158598, 36.100517, 22.300434>,  <22.990921, 36.164654, 22.141151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158598, 36.100517, 22.300434>,  <23.438059, 35.993622, 22.565905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158598, 36.100517, 22.300434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494262, 0.490409, 0.717777,
		0.517291, 0.829508, -0.210540,
		-0.698652, 0.267238, -0.663678,
		22.949001, 36.180687, 22.101330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.207251, 36.669605, 22.889223>,  <23.438059, 35.993622, 22.565905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.207251, 36.669605, 22.889223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.926802, 36.535465, 22.637520>,  <22.758532, 36.454979, 22.486498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.926802, 36.535465, 22.637520>,  <23.207251, 36.669605, 22.889223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926802, 36.535465, 22.637520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691380, 0.535599, 0.484900,
		0.174416, 0.775030, -0.607377,
		-0.701122, -0.335354, -0.629258,
		22.716465, 36.434860, 22.448742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969866, 37.191605, 22.590467>,  <23.207251, 36.669605, 22.889223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969866, 37.191605, 22.590467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655748, 36.947224, 22.550354>,  <22.467278, 36.800594, 22.526285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655748, 36.947224, 22.550354>,  <22.969866, 37.191605, 22.590467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655748, 36.947224, 22.550354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605308, 0.723596, 0.331679,
		-0.130073, 0.321168, -0.938047,
		-0.785292, -0.610950, -0.100285,
		22.420160, 36.763939, 22.520269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328352, 37.639359, 22.617661>,  <22.969866, 37.191605, 22.590467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328352, 37.639359, 22.617661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.174715, 37.271339, 22.648594>,  <22.082533, 37.050526, 22.667154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.174715, 37.271339, 22.648594>,  <22.328352, 37.639359, 22.617661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.174715, 37.271339, 22.648594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844648, 0.383969, 0.373011,
		-0.372882, 0.077952, -0.924599,
		-0.384094, -0.920050, 0.077333,
		22.059486, 36.995323, 22.671795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.589273, 37.641319, 22.358936>,  <22.328352, 37.639359, 22.617661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.589273, 37.641319, 22.358936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.615156, 37.330250, 22.609066>,  <21.630686, 37.143608, 22.759144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.615156, 37.330250, 22.609066>,  <21.589273, 37.641319, 22.358936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615156, 37.330250, 22.609066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765478, 0.363335, 0.531066,
		-0.640200, -0.513036, -0.571784,
		0.064707, -0.777677, 0.625325,
		21.634569, 37.096947, 22.796663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874794, 37.543797, 22.463821>,  <21.589273, 37.641319, 22.358936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874794, 37.543797, 22.463821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105217, 37.402641, 22.758747>,  <21.243471, 37.317947, 22.935703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105217, 37.402641, 22.758747>,  <20.874794, 37.543797, 22.463821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105217, 37.402641, 22.758747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716558, 0.216029, 0.663231,
		-0.393326, -0.910387, -0.128417,
		0.576055, -0.352885, 0.737315,
		21.278034, 37.296776, 22.979942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543558, 37.101227, 22.968611>,  <20.874794, 37.543797, 22.463821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543558, 37.101227, 22.968611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828127, 37.310703, 23.156071>,  <20.998867, 37.436390, 23.268547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828127, 37.310703, 23.156071>,  <20.543558, 37.101227, 22.968611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828127, 37.310703, 23.156071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694068, 0.418976, 0.585431,
		0.110231, -0.741761, 0.661544,
		0.711420, 0.523689, 0.468648,
		21.041553, 37.467812, 23.296665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.280775, 37.130222, 23.587921>,  <20.543558, 37.101227, 22.968611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.280775, 37.130222, 23.587921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537983, 37.435474, 23.562119>,  <20.692308, 37.618626, 23.546637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537983, 37.435474, 23.562119>,  <20.280775, 37.130222, 23.587921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537983, 37.435474, 23.562119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588055, 0.545947, 0.596769,
		0.490627, -0.345803, 0.799816,
		0.643021, 0.763127, -0.064505,
		20.730888, 37.664413, 23.542767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006523, 37.696503, 24.015701>,  <20.280775, 37.130222, 23.587921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006523, 37.696503, 24.015701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318430, 37.899635, 23.869236>,  <20.505573, 38.021515, 23.781357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318430, 37.899635, 23.869236>,  <20.006523, 37.696503, 24.015701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318430, 37.899635, 23.869236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330835, 0.830761, 0.447642,
		0.531518, -0.227917, 0.815808,
		0.779767, 0.507828, -0.366161,
		20.552361, 38.051983, 23.759388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220518, 37.716106, 23.913965>,  <20.006523, 37.696503, 24.015701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220518, 37.716106, 23.913965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974295, 37.737705, 23.599468>,  <18.826561, 37.750664, 23.410770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974295, 37.737705, 23.599468>,  <19.220518, 37.716106, 23.913965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974295, 37.737705, 23.599468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690987, -0.516733, 0.505493,
		-0.378981, 0.854442, 0.355391,
		-0.615557, 0.053998, -0.786241,
		18.789627, 37.753906, 23.363596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.079071, 25.767740, 28.242813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452627, 25.624737, 28.245152>,  <28.676762, 25.538935, 28.246555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452627, 25.624737, 28.245152>,  <28.079071, 25.767740, 28.242813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452627, 25.624737, 28.245152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293359, 0.756764, -0.584165,
		0.204421, 0.547262, 0.811614,
		0.933891, -0.357509, 0.005845,
		28.732794, 25.517485, 28.246904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520910, 26.287460, 28.578346>,  <28.079071, 25.767740, 28.242813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520910, 26.287460, 28.578346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.750448, 26.048584, 28.354179>,  <28.888170, 25.905258, 28.219679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.750448, 26.048584, 28.354179>,  <28.520910, 26.287460, 28.578346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750448, 26.048584, 28.354179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344156, 0.796791, -0.496670,
		0.743142, 0.092139, 0.662760,
		0.573844, -0.597189, -0.560419,
		28.922602, 25.869427, 28.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268522, 26.445139, 28.705513>,  <28.520910, 26.287460, 28.578346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268522, 26.445139, 28.705513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324007, 26.244034, 28.364223>,  <29.357298, 26.123371, 28.159451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324007, 26.244034, 28.364223>,  <29.268522, 26.445139, 28.705513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324007, 26.244034, 28.364223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308803, 0.840555, -0.445093,
		0.940957, -0.201738, 0.271850,
		0.138713, -0.502761, -0.853223,
		29.365622, 26.093206, 28.108257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923174, 26.715990, 28.416624>,  <29.268522, 26.445139, 28.705513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923174, 26.715990, 28.416624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.715664, 26.559425, 28.112606>,  <29.591158, 26.465487, 27.930195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.715664, 26.559425, 28.112606>,  <29.923174, 26.715990, 28.416624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715664, 26.559425, 28.112606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184598, 0.816778, -0.546624,
		0.834744, -0.423877, -0.351469,
		-0.518773, -0.391411, -0.760047,
		29.560032, 26.442003, 27.884592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386587, 26.789320, 27.830526>,  <29.923174, 26.715990, 28.416624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386587, 26.789320, 27.830526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.020824, 26.747623, 27.674068>,  <29.801367, 26.722605, 27.580194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.020824, 26.747623, 27.674068>,  <30.386587, 26.789320, 27.830526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020824, 26.747623, 27.674068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169015, 0.779698, -0.602913,
		0.367824, -0.617417, -0.695343,
		-0.914407, -0.104243, -0.391144,
		29.746502, 26.716351, 27.556725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457642, 26.939577, 27.074322>,  <30.386587, 26.789320, 27.830526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457642, 26.939577, 27.074322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084984, 27.029999, 27.188122>,  <29.861389, 27.084251, 27.256401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084984, 27.029999, 27.188122>,  <30.457642, 26.939577, 27.074322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084984, 27.029999, 27.188122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025807, 0.822125, -0.568722,
		-0.362455, -0.522504, -0.771762,
		-0.931644, 0.226053, 0.284499,
		29.805490, 27.097815, 27.273472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214188, 27.263651, 26.497810>,  <30.457642, 26.939577, 27.074322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214188, 27.263651, 26.497810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.963341, 27.385143, 26.784718>,  <29.812834, 27.458038, 26.956861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.963341, 27.385143, 26.784718>,  <30.214188, 27.263651, 26.497810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963341, 27.385143, 26.784718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121428, 0.871462, -0.475194,
		-0.769403, -0.385098, -0.509625,
		-0.627115, 0.303733, 0.717268,
		29.775206, 27.476263, 26.999897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737112, 27.698400, 26.155445>,  <30.214188, 27.263651, 26.497810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737112, 27.698400, 26.155445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.678658, 27.801712, 26.537426>,  <29.643585, 27.863699, 26.766615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.678658, 27.801712, 26.537426>,  <29.737112, 27.698400, 26.155445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678658, 27.801712, 26.537426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256556, 0.922395, -0.288733,
		-0.955418, -0.287193, -0.068534,
		-0.146137, 0.258278, 0.954954,
		29.634817, 27.879196, 26.823912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191549, 28.164673, 26.094332>,  <29.737112, 27.698400, 26.155445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191549, 28.164673, 26.094332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.311314, 28.237621, 26.468945>,  <29.383171, 28.281391, 26.693712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.311314, 28.237621, 26.468945>,  <29.191549, 28.164673, 26.094332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311314, 28.237621, 26.468945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286949, 0.953332, -0.093906,
		-0.909953, -0.240621, 0.337768,
		0.299409, 0.182372, 0.936533,
		29.401136, 28.292334, 26.749905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625860, 28.408934, 26.492662>,  <29.191549, 28.164673, 26.094332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625860, 28.408934, 26.492662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.959204, 28.557163, 26.656704>,  <29.159210, 28.646101, 26.755129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.959204, 28.557163, 26.656704>,  <28.625860, 28.408934, 26.492662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959204, 28.557163, 26.656704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358823, 0.927071, -0.108556,
		-0.420424, -0.056689, 0.905555,
		0.833361, 0.370573, 0.410104,
		29.209211, 28.668335, 26.779736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408358, 29.061567, 26.673073>,  <28.625860, 28.408934, 26.492662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408358, 29.061567, 26.673073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.799141, 29.112190, 26.741814>,  <29.033611, 29.142565, 26.783058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.799141, 29.112190, 26.741814>,  <28.408358, 29.061567, 26.673073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799141, 29.112190, 26.741814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138344, 0.988662, 0.058378,
		-0.162517, -0.080808, 0.983391,
		0.976959, 0.126559, 0.171854,
		29.092228, 29.150158, 26.793369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521481, 29.581186, 27.188515>,  <28.408358, 29.061567, 26.673073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521481, 29.581186, 27.188515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.866432, 29.601303, 26.987011>,  <29.073402, 29.613373, 26.866108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.866432, 29.601303, 26.987011>,  <28.521481, 29.581186, 27.188515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866432, 29.601303, 26.987011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020952, 0.997746, 0.063741,
		0.505832, -0.044414, 0.861488,
		0.862377, 0.050292, -0.503762,
		29.125145, 29.616390, 26.835882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977940, 29.958652, 27.475237>,  <28.521481, 29.581186, 27.188515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977940, 29.958652, 27.475237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.127943, 29.978260, 27.104946>,  <29.217945, 29.990025, 26.882772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.127943, 29.978260, 27.104946>,  <28.977940, 29.958652, 27.475237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127943, 29.978260, 27.104946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010532, 0.998762, 0.048619,
		0.926961, -0.008483, 0.375060,
		0.375009, 0.049018, -0.925725,
		29.240446, 29.992966, 26.827229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440605, 30.583490, 27.399351>,  <28.977940, 29.958652, 27.475237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440605, 30.583490, 27.399351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325901, 30.479179, 27.030621>,  <29.257078, 30.416594, 26.809381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325901, 30.479179, 27.030621>,  <29.440605, 30.583490, 27.399351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325901, 30.479179, 27.030621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242966, 0.950574, -0.193329,
		0.926681, 0.168534, -0.335945,
		-0.286758, -0.260777, -0.921827,
		29.239874, 30.400946, 26.754072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769758, 31.093693, 27.032343>,  <29.440605, 30.583490, 27.399351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769758, 31.093693, 27.032343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.476730, 30.929314, 26.815285>,  <29.300913, 30.830687, 26.685051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.476730, 30.929314, 26.815285>,  <29.769758, 31.093693, 27.032343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476730, 30.929314, 26.815285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182570, 0.886607, -0.424967,
		0.655751, -0.212247, -0.724528,
		-0.732570, -0.410950, -0.542643,
		29.256960, 30.806028, 26.652493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938478, 31.280647, 26.341408>,  <29.769758, 31.093693, 27.032343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938478, 31.280647, 26.341408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.551720, 31.181934, 26.315445>,  <29.319664, 31.122707, 26.299868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.551720, 31.181934, 26.315445>,  <29.938478, 31.280647, 26.341408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551720, 31.181934, 26.315445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182044, 0.845350, -0.502238,
		0.178814, -0.473795, -0.862290,
		-0.966895, -0.246782, -0.064909,
		29.261652, 31.107901, 26.295973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801044, 31.565918, 25.632273>,  <29.938478, 31.280647, 26.341408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801044, 31.565918, 25.632273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.471903, 31.512894, 25.853302>,  <29.274418, 31.481079, 25.985920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.471903, 31.512894, 25.853302>,  <29.801044, 31.565918, 25.632273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471903, 31.512894, 25.853302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304037, 0.924223, -0.231028,
		-0.480077, -0.358105, -0.800804,
		-0.822853, -0.132563, 0.552576,
		29.225046, 31.473125, 26.019075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245195, 31.904598, 25.192844>,  <29.801044, 31.565918, 25.632273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245195, 31.904598, 25.192844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.110445, 31.891857, 25.569248>,  <29.029594, 31.884212, 25.795092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.110445, 31.891857, 25.569248>,  <29.245195, 31.904598, 25.192844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110445, 31.891857, 25.569248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245590, 0.967803, -0.055160,
		-0.908956, -0.249685, -0.333850,
		-0.336874, -0.031852, 0.941011,
		29.009382, 31.882301, 25.851551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577681, 32.147503, 25.063927>,  <29.245195, 31.904598, 25.192844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577681, 32.147503, 25.063927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.668278, 32.201580, 25.449760>,  <28.722635, 32.234028, 25.681261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.668278, 32.201580, 25.449760>,  <28.577681, 32.147503, 25.063927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668278, 32.201580, 25.449760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491156, 0.871046, -0.006759,
		-0.841111, -0.472230, 0.263688,
		0.226492, 0.135197, 0.964584,
		28.736225, 32.242138, 25.739136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956543, 32.497154, 25.344910>,  <28.577681, 32.147503, 25.063927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956543, 32.497154, 25.344910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270571, 32.566772, 25.582691>,  <28.458986, 32.608543, 25.725361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270571, 32.566772, 25.582691>,  <27.956543, 32.497154, 25.344910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270571, 32.566772, 25.582691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222172, 0.974975, 0.007960,
		-0.578194, -0.138321, 0.804089,
		0.785068, 0.174044, 0.594456,
		28.506090, 32.618984, 25.761028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635736, 32.800549, 25.936659>,  <27.956543, 32.497154, 25.344910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635736, 32.800549, 25.936659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020063, 32.910316, 25.921040>,  <28.250660, 32.976177, 25.911669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020063, 32.910316, 25.921040>,  <27.635736, 32.800549, 25.936659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020063, 32.910316, 25.921040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275637, 0.960790, -0.030112,
		0.029254, 0.039695, 0.998783,
		0.960816, 0.274421, -0.039048,
		28.308308, 32.992641, 25.909325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603785, 33.362198, 26.340797>,  <27.635736, 32.800549, 25.936659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603785, 33.362198, 26.340797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.950905, 33.384125, 26.143246>,  <28.159178, 33.397282, 26.024715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.950905, 33.384125, 26.143246>,  <27.603785, 33.362198, 26.340797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950905, 33.384125, 26.143246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200227, 0.948215, -0.246571,
		0.454788, 0.312863, 0.833838,
		0.867800, 0.054819, -0.493880,
		28.211245, 33.400570, 25.995081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021406, 33.701740, 25.894144>,  <27.603785, 33.362198, 26.340797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021406, 33.701740, 25.894144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.630497, 33.711979, 25.809975>,  <26.395950, 33.718121, 25.759472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.630497, 33.711979, 25.809975>,  <27.021406, 33.701740, 25.894144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630497, 33.711979, 25.809975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122960, -0.877060, 0.464378,
		-0.172670, 0.479699, 0.860276,
		-0.977275, 0.025595, -0.210425,
		26.337315, 33.719658, 25.746847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553339, 33.733772, 26.542204>,  <27.021406, 33.701740, 25.894144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553339, 33.733772, 26.542204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.369368, 33.566883, 26.228672>,  <26.258986, 33.466747, 26.040552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.369368, 33.566883, 26.228672>,  <26.553339, 33.733772, 26.542204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369368, 33.566883, 26.228672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044133, -0.892385, 0.449112,
		-0.886859, 0.171966, 0.428845,
		-0.459927, -0.417225, -0.783831,
		26.231390, 33.441715, 25.993523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192181, 33.210415, 26.795732>,  <26.553339, 33.733772, 26.542204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192181, 33.210415, 26.795732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198067, 33.092518, 26.413548>,  <26.201597, 33.021782, 26.184237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198067, 33.092518, 26.413548>,  <26.192181, 33.210415, 26.795732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198067, 33.092518, 26.413548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028169, -0.955067, 0.295049,
		-0.999495, -0.031256, -0.005749,
		0.014713, -0.294738, -0.955465,
		26.202480, 33.004097, 26.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718590, 32.700314, 26.817598>,  <26.192181, 33.210415, 26.795732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718590, 32.700314, 26.817598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.943563, 32.622982, 26.496029>,  <26.078547, 32.576584, 26.303087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.943563, 32.622982, 26.496029>,  <25.718590, 32.700314, 26.817598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943563, 32.622982, 26.496029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179325, -0.920617, 0.346853,
		-0.807163, -0.339245, -0.483116,
		0.562433, -0.193332, -0.803923,
		26.112293, 32.564983, 26.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326281, 32.206234, 26.553511>,  <25.718590, 32.700314, 26.817598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326281, 32.206234, 26.553511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.689306, 32.204735, 26.385551>,  <25.907122, 32.203835, 26.284777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.689306, 32.204735, 26.385551>,  <25.326281, 32.206234, 26.553511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689306, 32.204735, 26.385551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046298, -0.992971, 0.108926,
		-0.417354, -0.118297, -0.901011,
		0.907564, -0.003746, -0.419898,
		25.961575, 32.203609, 26.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224865, 31.775841, 26.033924>,  <25.326281, 32.206234, 26.553511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224865, 31.775841, 26.033924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.613211, 31.765236, 26.129185>,  <25.846218, 31.758873, 26.186340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.613211, 31.765236, 26.129185>,  <25.224865, 31.775841, 26.033924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613211, 31.765236, 26.129185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028165, -0.999597, 0.003542,
		0.237960, -0.010147, -0.971222,
		0.970867, -0.026512, 0.238149,
		25.904470, 31.757282, 26.200630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470892, 31.191511, 25.782515>,  <25.224865, 31.775841, 26.033924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470892, 31.191511, 25.782515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787260, 31.278214, 26.011414>,  <25.977081, 31.330235, 26.148752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787260, 31.278214, 26.011414>,  <25.470892, 31.191511, 25.782515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787260, 31.278214, 26.011414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095701, -0.967470, 0.234185,
		0.604392, -0.130457, -0.785933,
		0.790918, 0.216754, 0.572246,
		26.024536, 31.343239, 26.183088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065121, 30.751554, 25.537235>,  <25.470892, 31.191511, 25.782515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065121, 30.751554, 25.537235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.140182, 30.847584, 25.918213>,  <26.185221, 30.905201, 26.146799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.140182, 30.847584, 25.918213>,  <26.065121, 30.751554, 25.537235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140182, 30.847584, 25.918213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143992, -0.965919, 0.215098,
		0.971623, 0.096780, -0.215828,
		0.187656, 0.240072, 0.952445,
		26.196480, 30.919605, 26.203947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649393, 30.315702, 25.836504>,  <26.065121, 30.751554, 25.537235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649393, 30.315702, 25.836504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.474976, 30.467918, 26.162708>,  <26.370325, 30.559248, 26.358431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.474976, 30.467918, 26.162708>,  <26.649393, 30.315702, 25.836504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474976, 30.467918, 26.162708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087531, -0.883965, 0.459286,
		0.895659, 0.271650, 0.352138,
		-0.436043, 0.380541, 0.815509,
		26.344162, 30.582081, 26.407362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874454, 29.907373, 26.344200>,  <26.649393, 30.315702, 25.836504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874454, 29.907373, 26.344200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.563681, 30.096161, 26.510872>,  <26.377216, 30.209433, 26.610874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.563681, 30.096161, 26.510872>,  <26.874454, 29.907373, 26.344200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563681, 30.096161, 26.510872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136224, -0.772176, 0.620634,
		0.614667, 0.425430, 0.664223,
		-0.776934, 0.471967, 0.416678,
		26.330601, 30.237751, 26.635876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055696, 30.020245, 27.001610>,  <26.874454, 29.907373, 26.344200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055696, 30.020245, 27.001610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.657007, 30.052589, 27.001263>,  <26.417793, 30.071997, 27.001055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.657007, 30.052589, 27.001263>,  <27.055696, 30.020245, 27.001610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657007, 30.052589, 27.001263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050780, -0.617514, 0.784919,
		0.062934, 0.782393, 0.619597,
		-0.996725, 0.080861, -0.000867,
		26.357990, 30.076847, 27.001003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883183, 30.169008, 27.700405>,  <27.055696, 30.020245, 27.001610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883183, 30.169008, 27.700405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581306, 29.997681, 27.501614>,  <26.400181, 29.894884, 27.382339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581306, 29.997681, 27.501614>,  <26.883183, 30.169008, 27.700405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581306, 29.997681, 27.501614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032662, -0.781081, 0.623575,
		-0.655269, 0.454373, 0.603463,
		-0.754689, -0.428320, -0.496977,
		26.354900, 29.869184, 27.352520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368570, 29.941427, 28.241842>,  <26.883183, 30.169008, 27.700405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368570, 29.941427, 28.241842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.275078, 29.745171, 27.906071>,  <26.218983, 29.627417, 27.704607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.275078, 29.745171, 27.906071>,  <26.368570, 29.941427, 28.241842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275078, 29.745171, 27.906071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044185, -0.857092, 0.513265,
		-0.971297, 0.157056, 0.178651,
		-0.233732, -0.490639, -0.839430,
		26.204958, 29.597979, 27.654242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190819, 29.301802, 28.497896>,  <26.368570, 29.941427, 28.241842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190819, 29.301802, 28.497896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.171055, 29.223736, 28.106087>,  <26.159197, 29.176897, 27.871000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.171055, 29.223736, 28.106087>,  <26.190819, 29.301802, 28.497896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171055, 29.223736, 28.106087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231570, -0.951761, 0.201313,
		-0.971563, 0.236776, 0.001834,
		-0.049411, -0.195163, -0.979525,
		26.156231, 29.165186, 27.812229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574644, 28.882648, 28.398048>,  <26.190819, 29.301802, 28.497896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574644, 28.882648, 28.398048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.834576, 28.772835, 28.114540>,  <25.990534, 28.706947, 27.944435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.834576, 28.772835, 28.114540>,  <25.574644, 28.882648, 28.398048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834576, 28.772835, 28.114540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173811, -0.961457, 0.213052,
		-0.739942, -0.015255, -0.672498,
		0.649828, -0.274533, -0.708770,
		26.029524, 28.690475, 27.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247044, 28.246574, 28.097288>,  <25.574644, 28.882648, 28.398048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247044, 28.246574, 28.097288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.634768, 28.266491, 28.000992>,  <25.867403, 28.278440, 27.943214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.634768, 28.266491, 28.000992>,  <25.247044, 28.246574, 28.097288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634768, 28.266491, 28.000992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113462, -0.959344, 0.258430,
		-0.218083, -0.277814, -0.935553,
		0.969312, 0.049791, -0.240738,
		25.925562, 28.281427, 27.928770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376768, 27.692167, 27.650196>,  <25.247044, 28.246574, 28.097288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376768, 27.692167, 27.650196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.725536, 27.776588, 27.826927>,  <25.934797, 27.827240, 27.932966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.725536, 27.776588, 27.826927>,  <25.376768, 27.692167, 27.650196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725536, 27.776588, 27.826927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137057, -0.971465, 0.193573,
		0.470076, -0.108224, -0.875966,
		0.871920, 0.211051, 0.441830,
		25.987112, 27.839903, 27.959476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925415, 27.231369, 27.434841>,  <25.376768, 27.692167, 27.650196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925415, 27.231369, 27.434841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.049347, 27.365402, 27.790756>,  <26.123707, 27.445822, 28.004305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.049347, 27.365402, 27.790756>,  <25.925415, 27.231369, 27.434841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049347, 27.365402, 27.790756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150185, -0.941338, 0.302203,
		0.938855, 0.040000, -0.341981,
		0.309832, 0.335085, 0.889788,
		26.142296, 27.465927, 28.057693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.351452, 26.601641, 27.624538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.349678, 26.840302, 27.945534>,  <26.348614, 26.983498, 28.138130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.349678, 26.840302, 27.945534>,  <26.351452, 26.601641, 27.624538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349678, 26.840302, 27.945534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100872, -0.798134, 0.593975,
		0.994889, 0.083582, -0.056646,
		-0.004434, 0.596654, 0.802487,
		26.348349, 27.019299, 28.186279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935371, 26.440596, 27.997660>,  <26.351452, 26.601641, 27.624538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935371, 26.440596, 27.997660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665453, 26.594223, 28.249737>,  <26.503502, 26.686399, 28.400984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665453, 26.594223, 28.249737>,  <26.935371, 26.440596, 27.997660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665453, 26.594223, 28.249737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285445, -0.651630, 0.702780,
		0.680567, 0.654118, 0.330088,
		-0.674796, 0.384067, 0.630193,
		26.463015, 26.709444, 28.438795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298512, 26.307201, 28.565334>,  <26.935371, 26.440596, 27.997660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298512, 26.307201, 28.565334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.917202, 26.376858, 28.664078>,  <26.688416, 26.418652, 28.723324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.917202, 26.376858, 28.664078>,  <27.298512, 26.307201, 28.565334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917202, 26.376858, 28.664078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029154, -0.760300, 0.648917,
		0.300692, 0.625794, 0.719699,
		-0.953276, 0.174143, 0.246861,
		26.631220, 26.429100, 28.738136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266352, 26.185194, 29.323151>,  <27.298512, 26.307201, 28.565334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266352, 26.185194, 29.323151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.890747, 26.152706, 29.189487>,  <26.665384, 26.133213, 29.109289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.890747, 26.152706, 29.189487>,  <27.266352, 26.185194, 29.323151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890747, 26.152706, 29.189487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101288, -0.863281, 0.494456,
		-0.328633, 0.498146, 0.802403,
		-0.939011, -0.081221, -0.334159,
		26.609043, 26.128340, 29.089239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946516, 26.248768, 29.866447>,  <27.266352, 26.185194, 29.323151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946516, 26.248768, 29.866447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.712904, 26.055061, 29.605865>,  <26.572737, 25.938837, 29.449516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.712904, 26.055061, 29.605865>,  <26.946516, 26.248768, 29.866447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712904, 26.055061, 29.605865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014099, -0.796378, 0.604635,
		-0.811609, 0.362310, 0.458281,
		-0.584031, -0.484266, -0.651456,
		26.537695, 25.909781, 29.410429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396967, 25.894472, 30.285755>,  <26.946516, 26.248768, 29.866447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396967, 25.894472, 30.285755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.426651, 25.723118, 29.925537>,  <26.444462, 25.620306, 29.709406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.426651, 25.723118, 29.925537>,  <26.396967, 25.894472, 30.285755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426651, 25.723118, 29.925537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035504, -0.903596, 0.426912,
		-0.996611, 0.000293, -0.082263,
		0.074208, -0.428385, -0.900544,
		26.448914, 25.594603, 29.655375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837929, 25.424540, 30.337278>,  <26.396967, 25.894472, 30.285755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837929, 25.424540, 30.337278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077259, 25.308609, 30.038479>,  <26.220858, 25.239050, 29.859200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077259, 25.308609, 30.038479>,  <25.837929, 25.424540, 30.337278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077259, 25.308609, 30.038479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073664, -0.908441, 0.411470,
		-0.797859, -0.301220, -0.522194,
		0.598326, -0.289828, -0.746998,
		26.256756, 25.221661, 29.814379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473576, 24.860823, 30.227722>,  <25.837929, 25.424540, 30.337278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473576, 24.860823, 30.227722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.825779, 24.810928, 30.044792>,  <26.037102, 24.780991, 29.935034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.825779, 24.810928, 30.044792>,  <25.473576, 24.860823, 30.227722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825779, 24.810928, 30.044792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108920, -0.992182, 0.060914,
		-0.461349, -0.003824, -0.887211,
		0.880508, -0.124737, -0.457326,
		26.089931, 24.773506, 29.907595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339687, 24.375811, 29.695335>,  <25.473576, 24.860823, 30.227722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339687, 24.375811, 29.695335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.735554, 24.357494, 29.749695>,  <25.973074, 24.346504, 29.782310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.735554, 24.357494, 29.749695>,  <25.339687, 24.375811, 29.695335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735554, 24.357494, 29.749695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041482, -0.998548, -0.034363,
		0.137276, 0.028370, -0.990126,
		0.989664, -0.045790, 0.135900,
		26.032454, 24.343758, 29.790464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536619, 23.791559, 29.290197>,  <25.339687, 24.375811, 29.695335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536619, 23.791559, 29.290197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804472, 23.865601, 29.577900>,  <25.965183, 23.910025, 29.750521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804472, 23.865601, 29.577900>,  <25.536619, 23.791559, 29.290197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804472, 23.865601, 29.577900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032213, -0.974771, 0.220871,
		0.741993, -0.124733, -0.658702,
		0.669634, 0.185104, 0.719255,
		26.005362, 23.921131, 29.793676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971308, 23.259441, 29.172869>,  <25.536619, 23.791559, 29.290197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971308, 23.259441, 29.172869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038845, 23.387028, 29.545910>,  <26.079369, 23.463579, 29.769735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038845, 23.387028, 29.545910>,  <25.971308, 23.259441, 29.172869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038845, 23.387028, 29.545910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041507, -0.947651, 0.316599,
		0.984768, -0.014746, -0.173246,
		0.168845, 0.318967, 0.932604,
		26.089499, 23.482718, 29.825691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592503, 22.986473, 29.379120>,  <25.971308, 23.259441, 29.172869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592503, 22.986473, 29.379120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381945, 23.078503, 29.706528>,  <26.255610, 23.133720, 29.902973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381945, 23.078503, 29.706528>,  <26.592503, 22.986473, 29.379120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381945, 23.078503, 29.706528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211828, -0.896849, 0.388317,
		0.823430, 0.377794, 0.423361,
		-0.526394, 0.230072, 0.818520,
		26.224026, 23.147524, 29.952084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058899, 22.718483, 29.821756>,  <26.592503, 22.986473, 29.379120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058899, 22.718483, 29.821756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715771, 22.739937, 30.026215>,  <26.509893, 22.752810, 30.148890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715771, 22.739937, 30.026215>,  <27.058899, 22.718483, 29.821756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715771, 22.739937, 30.026215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227213, -0.852500, 0.470764,
		0.461001, 0.519969, 0.719104,
		-0.857819, 0.053633, 0.511147,
		26.458426, 22.756027, 30.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257851, 22.518921, 30.492170>,  <27.058899, 22.718483, 29.821756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257851, 22.518921, 30.492170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.862947, 22.457012, 30.477394>,  <26.626005, 22.419867, 30.468529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.862947, 22.457012, 30.477394>,  <27.257851, 22.518921, 30.492170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862947, 22.457012, 30.477394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126549, -0.904454, 0.407369,
		-0.096460, 0.397504, 0.912516,
		-0.987259, -0.154773, -0.036940,
		26.566771, 22.410580, 30.466312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080069, 22.240444, 31.105604>,  <27.257851, 22.518921, 30.492170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080069, 22.240444, 31.105604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.756256, 22.157551, 30.885891>,  <26.561968, 22.107815, 30.754063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.756256, 22.157551, 30.885891>,  <27.080069, 22.240444, 31.105604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756256, 22.157551, 30.885891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123856, -0.854281, 0.504840,
		-0.573861, 0.476716, 0.665902,
		-0.809532, -0.207232, -0.549283,
		26.513397, 22.095381, 30.721106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601776, 21.975288, 31.592270>,  <27.080069, 22.240444, 31.105604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601776, 21.975288, 31.592270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.441994, 21.825363, 31.257618>,  <26.346125, 21.735409, 31.056826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.441994, 21.825363, 31.257618>,  <26.601776, 21.975288, 31.592270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441994, 21.825363, 31.257618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240836, -0.837644, 0.490255,
		-0.884553, 0.397325, 0.244332,
		-0.399455, -0.374812, -0.836631,
		26.322157, 21.712919, 31.006628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947561, 21.610397, 31.833096>,  <26.601776, 21.975288, 31.592270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947561, 21.610397, 31.833096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077475, 21.473396, 31.480457>,  <26.155422, 21.391195, 31.268875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077475, 21.473396, 31.480457>,  <25.947561, 21.610397, 31.833096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077475, 21.473396, 31.480457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001617, -0.931923, 0.362652,
		-0.945788, -0.119207, -0.302115,
		0.324779, -0.342503, -0.881595,
		26.174910, 21.370646, 31.215979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526527, 21.037243, 31.664717>,  <25.947561, 21.610397, 31.833096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526527, 21.037243, 31.664717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.859806, 20.997398, 31.447144>,  <26.059772, 20.973492, 31.316599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.859806, 20.997398, 31.447144>,  <25.526527, 21.037243, 31.664717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859806, 20.997398, 31.447144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139567, -0.913917, 0.381152,
		-0.535078, -0.393489, -0.747568,
		0.833194, -0.099610, -0.543935,
		26.109764, 20.967516, 31.283962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463512, 20.437824, 31.477322>,  <25.526527, 21.037243, 31.664717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463512, 20.437824, 31.477322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.853718, 20.515720, 31.436436>,  <26.087841, 20.562458, 31.411905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.853718, 20.515720, 31.436436>,  <25.463512, 20.437824, 31.477322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853718, 20.515720, 31.436436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219909, -0.856307, 0.467309,
		0.003478, -0.478344, -0.878165,
		0.975514, 0.194742, -0.102214,
		26.146372, 20.574142, 31.405771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691328, 19.832209, 31.260178>,  <25.463512, 20.437824, 31.477322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691328, 19.832209, 31.260178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.010065, 20.016457, 31.416573>,  <26.201307, 20.127005, 31.510410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.010065, 20.016457, 31.416573>,  <25.691328, 19.832209, 31.260178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010065, 20.016457, 31.416573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190901, -0.805926, 0.560393,
		0.573236, -0.371905, -0.730129,
		0.796842, 0.460620, 0.390988,
		26.249117, 20.154642, 31.533869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138615, 19.351990, 31.304701>,  <25.691328, 19.832209, 31.260178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138615, 19.351990, 31.304701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.286318, 19.601532, 31.580223>,  <26.374939, 19.751257, 31.745537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.286318, 19.601532, 31.580223>,  <26.138615, 19.351990, 31.304701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286318, 19.601532, 31.580223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346091, -0.780186, 0.521087,
		0.862480, 0.045976, -0.503999,
		0.369256, 0.623856, 0.688806,
		26.397095, 19.788689, 31.786865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739128, 18.994659, 31.440992>,  <26.138615, 19.351990, 31.304701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739128, 18.994659, 31.440992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.716375, 19.252838, 31.745667>,  <26.702723, 19.407745, 31.928471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.716375, 19.252838, 31.745667>,  <26.739128, 18.994659, 31.440992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716375, 19.252838, 31.745667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607789, -0.582869, 0.539311,
		0.792059, 0.493621, -0.359139,
		-0.056884, 0.645447, 0.761684,
		26.699310, 19.446472, 31.974173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356771, 19.234606, 31.747683>,  <26.739128, 18.994659, 31.440992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356771, 19.234606, 31.747683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115557, 19.255413, 32.066090>,  <26.970827, 19.267897, 32.257133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115557, 19.255413, 32.066090>,  <27.356771, 19.234606, 31.747683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115557, 19.255413, 32.066090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626486, -0.586849, 0.512955,
		0.493823, 0.808024, 0.321304,
		-0.603037, 0.052017, 0.796016,
		26.934647, 19.271019, 32.304893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557186, 19.671179, 32.388546>,  <27.356771, 19.234606, 31.747683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557186, 19.671179, 32.388546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337790, 19.339188, 32.429138>,  <27.206152, 19.139994, 32.453491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337790, 19.339188, 32.429138>,  <27.557186, 19.671179, 32.388546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337790, 19.339188, 32.429138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777497, -0.461587, 0.427126,
		-0.307663, 0.313173, 0.898480,
		-0.548491, -0.829976, 0.101477,
		27.173243, 19.090195, 32.459583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916296, 19.427542, 33.068947>,  <27.557186, 19.671179, 32.388546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916296, 19.427542, 33.068947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.286150, 19.276688, 33.047707>,  <28.508062, 19.186174, 33.034962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.286150, 19.276688, 33.047707>,  <27.916296, 19.427542, 33.068947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286150, 19.276688, 33.047707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213234, 0.628157, -0.748298,
		0.315565, 0.680579, 0.661234,
		0.924635, -0.377135, -0.053102,
		28.563541, 19.163548, 33.031776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478077, 19.939713, 33.215057>,  <27.916296, 19.427542, 33.068947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478077, 19.939713, 33.215057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.644321, 19.647041, 32.998940>,  <28.744068, 19.471439, 32.869270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.644321, 19.647041, 32.998940>,  <28.478077, 19.939713, 33.215057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644321, 19.647041, 32.998940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336279, 0.675547, -0.656165,
		0.845093, 0.091023, 0.526814,
		0.415613, -0.731677, -0.540291,
		28.769005, 19.427538, 32.836853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017698, 20.283110, 33.010502>,  <28.478077, 19.939713, 33.215057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017698, 20.283110, 33.010502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999868, 19.965439, 32.768082>,  <28.989170, 19.774837, 32.622631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999868, 19.965439, 32.768082>,  <29.017698, 20.283110, 33.010502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999868, 19.965439, 32.768082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447757, 0.526425, -0.722766,
		0.893044, -0.303579, 0.332134,
		-0.044573, -0.794176, -0.606050,
		28.986496, 19.727186, 32.586266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622149, 20.357561, 32.752537>,  <29.017698, 20.283110, 33.010502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622149, 20.357561, 32.752537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.408747, 20.138206, 32.494965>,  <29.280704, 20.006594, 32.340424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.408747, 20.138206, 32.494965>,  <29.622149, 20.357561, 32.752537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408747, 20.138206, 32.494965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383347, 0.521859, -0.762042,
		0.753934, -0.653402, -0.068192,
		-0.533506, -0.548388, -0.643926,
		29.248695, 19.973690, 32.301788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105404, 20.262304, 32.237698>,  <29.622149, 20.357561, 32.752537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105404, 20.262304, 32.237698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726284, 20.228626, 32.114681>,  <29.498812, 20.208420, 32.040871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726284, 20.228626, 32.114681>,  <30.105404, 20.262304, 32.237698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726284, 20.228626, 32.114681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177676, 0.661435, -0.728653,
		0.264769, -0.745261, -0.611950,
		-0.947802, -0.084196, -0.307543,
		29.441944, 20.203367, 32.022419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191467, 20.527901, 31.582367>,  <30.105404, 20.262304, 32.237698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191467, 20.527901, 31.582367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792942, 20.525700, 31.616619>,  <29.553827, 20.524380, 31.637171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792942, 20.525700, 31.616619>,  <30.191467, 20.527901, 31.582367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792942, 20.525700, 31.616619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059744, 0.760762, -0.646275,
		-0.061588, -0.649007, -0.758285,
		-0.996312, -0.005501, 0.085628,
		29.494049, 20.524050, 31.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093283, 20.950951, 31.057674>,  <30.191467, 20.527901, 31.582367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093283, 20.950951, 31.057674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722176, 20.922607, 31.204220>,  <29.499512, 20.905602, 31.292147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722176, 20.922607, 31.204220>,  <30.093283, 20.950951, 31.057674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722176, 20.922607, 31.204220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290553, 0.753234, -0.590099,
		-0.234145, -0.653924, -0.719416,
		-0.927769, -0.070859, 0.366365,
		29.443846, 20.901350, 31.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595554, 20.979713, 30.528673>,  <30.093283, 20.950951, 31.057674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595554, 20.979713, 30.528673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463251, 21.137432, 30.871632>,  <29.383869, 21.232063, 31.077408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463251, 21.137432, 30.871632>,  <29.595554, 20.979713, 30.528673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463251, 21.137432, 30.871632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243135, 0.842259, -0.481129,
		-0.911858, -0.367600, -0.182716,
		-0.330757, 0.394296, 0.857397,
		29.364023, 21.255720, 31.128851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928366, 21.345058, 30.353456>,  <29.595554, 20.979713, 30.528673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928366, 21.345058, 30.353456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011826, 21.489151, 30.717148>,  <29.061901, 21.575607, 30.935364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011826, 21.489151, 30.717148>,  <28.928366, 21.345058, 30.353456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011826, 21.489151, 30.717148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490889, 0.842671, -0.221212,
		-0.845868, -0.400174, 0.352658,
		0.208651, 0.360232, 0.909229,
		29.074421, 21.597221, 30.989916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306147, 21.631084, 30.624027>,  <28.928366, 21.345058, 30.353456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306147, 21.631084, 30.624027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610001, 21.801006, 30.821003>,  <28.792313, 21.902960, 30.939188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610001, 21.801006, 30.821003>,  <28.306147, 21.631084, 30.624027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610001, 21.801006, 30.821003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355194, 0.905282, -0.233028,
		-0.544789, 0.002104, 0.838571,
		0.759633, 0.424806, 0.492440,
		28.837891, 21.928448, 30.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995121, 22.144070, 31.116734>,  <28.306147, 21.631084, 30.624027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995121, 22.144070, 31.116734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.380770, 22.221821, 31.044418>,  <28.612160, 22.268473, 31.001030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.380770, 22.221821, 31.044418>,  <27.995121, 22.144070, 31.116734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380770, 22.221821, 31.044418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225800, 0.958599, -0.173499,
		0.139579, 0.208097, 0.968098,
		0.964123, 0.194379, -0.180789,
		28.670006, 22.280134, 30.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065140, 22.889153, 31.198997>,  <27.995121, 22.144070, 31.116734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065140, 22.889153, 31.198997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.403395, 22.816837, 30.998112>,  <28.606348, 22.773449, 30.877581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.403395, 22.816837, 30.998112>,  <28.065140, 22.889153, 31.198997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403395, 22.816837, 30.998112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097177, 0.873022, -0.477901,
		0.524840, 0.452933, 0.720690,
		0.845635, -0.180787, -0.502212,
		28.657085, 22.762602, 30.847448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303438, 23.590591, 31.099068>,  <28.065140, 22.889153, 31.198997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303438, 23.590591, 31.099068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.504103, 23.360180, 30.840912>,  <28.624500, 23.221933, 30.686018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.504103, 23.360180, 30.840912>,  <28.303438, 23.590591, 31.099068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504103, 23.360180, 30.840912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012659, 0.741091, -0.671284,
		0.864972, 0.344927, 0.364484,
		0.501660, -0.576028, -0.645390,
		28.654600, 23.187372, 30.647295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916348, 23.951180, 30.940945>,  <28.303438, 23.590591, 31.099068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916348, 23.951180, 30.940945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841465, 23.695156, 30.642876>,  <28.796535, 23.541542, 30.464035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841465, 23.695156, 30.642876>,  <28.916348, 23.951180, 30.940945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841465, 23.695156, 30.642876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057236, 0.750187, -0.658744,
		0.980652, -0.165970, -0.103804,
		-0.187204, -0.640057, -0.745172,
		28.785303, 23.503139, 30.419325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348021, 24.250879, 30.369753>,  <28.916348, 23.951180, 30.940945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348021, 24.250879, 30.369753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068119, 24.017151, 30.205357>,  <28.900179, 23.876913, 30.106718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068119, 24.017151, 30.205357>,  <29.348021, 24.250879, 30.369753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068119, 24.017151, 30.205357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052393, 0.615736, -0.786209,
		0.712461, -0.528618, -0.461477,
		-0.699752, -0.584321, -0.410993,
		28.858192, 23.841854, 30.082060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596563, 24.142920, 29.623987>,  <29.348021, 24.250879, 30.369753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596563, 24.142920, 29.623987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210802, 24.037476, 29.632339>,  <28.979345, 23.974209, 29.637350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210802, 24.037476, 29.632339>,  <29.596563, 24.142920, 29.623987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210802, 24.037476, 29.632339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176999, 0.584840, -0.791602,
		0.196464, -0.767119, -0.610680,
		-0.964403, -0.263611, 0.020879,
		28.921482, 23.958393, 29.638603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251854, 23.668283, 29.012060>,  <29.596563, 24.142920, 29.623987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251854, 23.668283, 29.012060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007271, 23.945484, 29.164829>,  <28.860521, 24.111805, 29.256491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007271, 23.945484, 29.164829>,  <29.251854, 23.668283, 29.012060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007271, 23.945484, 29.164829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141222, 0.379342, -0.914416,
		-0.778573, -0.613063, -0.134084,
		-0.611458, 0.693003, 0.381923,
		28.823833, 24.153385, 29.279406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709879, 23.834648, 28.519205>,  <29.251854, 23.668283, 29.012060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709879, 23.834648, 28.519205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712339, 24.155312, 28.758305>,  <28.713816, 24.347710, 28.901764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712339, 24.155312, 28.758305>,  <28.709879, 23.834648, 28.519205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712339, 24.155312, 28.758305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162015, 0.590661, -0.790487,
		-0.986769, -0.091982, 0.133514,
		0.006151, 0.801660, 0.597749,
		28.714186, 24.395809, 28.937630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208933, 24.225048, 28.222036>,  <28.709879, 23.834648, 28.519205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208933, 24.225048, 28.222036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.455454, 24.468155, 28.422352>,  <28.603367, 24.614019, 28.542542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.455454, 24.468155, 28.422352>,  <28.208933, 24.225048, 28.222036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455454, 24.468155, 28.422352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007454, 0.631384, -0.775434,
		-0.787473, 0.481637, 0.384594,
		0.616305, 0.607767, 0.500788,
		28.640345, 24.650484, 28.572588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014616, 25.034174, 28.209862>,  <28.208933, 24.225048, 28.222036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014616, 25.034174, 28.209862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.389725, 25.090973, 28.336620>,  <28.614790, 25.125051, 28.412676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.389725, 25.090973, 28.336620>,  <28.014616, 25.034174, 28.209862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389725, 25.090973, 28.336620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099299, 0.764814, -0.636553,
		-0.332753, 0.628408, 0.703120,
		0.937771, 0.141995, 0.316894,
		28.671057, 25.133572, 28.431688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.591373, 34.493107, 20.169411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.848778, 34.340546, 20.434868>,  <29.003222, 34.249008, 20.594143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.848778, 34.340546, 20.434868>,  <28.591373, 34.493107, 20.169411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848778, 34.340546, 20.434868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765267, -0.338774, 0.547356,
		0.016063, -0.860096, -0.509880,
		0.643512, -0.381401, 0.663644,
		29.041832, 34.226124, 20.633961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356068, 33.763779, 20.240826>,  <28.591373, 34.493107, 20.169411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356068, 33.763779, 20.240826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.574364, 33.886681, 20.552662>,  <28.705341, 33.960423, 20.739763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.574364, 33.886681, 20.552662>,  <28.356068, 33.763779, 20.240826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574364, 33.886681, 20.552662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712147, -0.320230, 0.624740,
		0.441602, -0.896129, 0.044047,
		0.545742, 0.307254, 0.779590,
		28.738087, 33.978859, 20.786539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288687, 33.293713, 20.774733>,  <28.356068, 33.763779, 20.240826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288687, 33.293713, 20.774733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.416746, 33.613811, 20.977554>,  <28.493582, 33.805870, 21.099247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.416746, 33.613811, 20.977554>,  <28.288687, 33.293713, 20.774733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416746, 33.613811, 20.977554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638268, -0.213321, 0.739668,
		0.700085, -0.560441, 0.442479,
		0.320150, 0.800250, 0.507054,
		28.512791, 33.853886, 21.129671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429085, 33.060673, 21.426403>,  <28.288687, 33.293713, 20.774733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429085, 33.060673, 21.426403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.365305, 33.454597, 21.453892>,  <28.327038, 33.690952, 21.470385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.365305, 33.454597, 21.453892>,  <28.429085, 33.060673, 21.426403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365305, 33.454597, 21.453892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735927, -0.164974, 0.656655,
		0.658018, 0.054129, 0.751054,
		-0.159448, 0.984812, 0.068721,
		28.317471, 33.750042, 21.474508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302429, 33.115128, 22.073854>,  <28.429085, 33.060673, 21.426403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302429, 33.115128, 22.073854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.156979, 33.464046, 21.943092>,  <28.069708, 33.673397, 21.864635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.156979, 33.464046, 21.943092>,  <28.302429, 33.115128, 22.073854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156979, 33.464046, 21.943092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705227, -0.028498, 0.708408,
		0.608629, 0.488138, 0.625533,
		-0.363627, 0.872301, -0.326904,
		28.047890, 33.725739, 21.845020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246876, 33.556759, 22.731792>,  <28.302429, 33.115128, 22.073854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246876, 33.556759, 22.731792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.998251, 33.712090, 22.459656>,  <27.849075, 33.805286, 22.296373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.998251, 33.712090, 22.459656>,  <28.246876, 33.556759, 22.731792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998251, 33.712090, 22.459656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751915, -0.052132, 0.657196,
		0.219739, 0.920046, 0.324391,
		-0.621562, 0.388326, -0.680341,
		27.811783, 33.828587, 22.255554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809122, 34.110439, 23.141586>,  <28.246876, 33.556759, 22.731792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809122, 34.110439, 23.141586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.623724, 34.036144, 22.795021>,  <27.512486, 33.991566, 22.587082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.623724, 34.036144, 22.795021>,  <27.809122, 34.110439, 23.141586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623724, 34.036144, 22.795021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875845, 0.244356, 0.416156,
		0.134417, 0.951731, -0.275937,
		-0.463495, -0.185739, -0.866414,
		27.484674, 33.980423, 22.535097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245438, 34.584229, 23.131096>,  <27.809122, 34.110439, 23.141586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245438, 34.584229, 23.131096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.137707, 34.300346, 22.870701>,  <27.073069, 34.130016, 22.714464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.137707, 34.300346, 22.870701>,  <27.245438, 34.584229, 23.131096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137707, 34.300346, 22.870701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945948, 0.068128, 0.317084,
		-0.180685, 0.701200, -0.689689,
		-0.269326, -0.709702, -0.650989,
		27.056910, 34.087437, 22.675404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622253, 34.814651, 22.663275>,  <27.245438, 34.584229, 23.131096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622253, 34.814651, 22.663275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.618210, 34.414864, 22.650879>,  <26.615784, 34.174992, 22.643440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.618210, 34.414864, 22.650879>,  <26.622253, 34.814651, 22.663275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618210, 34.414864, 22.650879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972226, 0.002577, 0.234029,
		-0.233825, 0.032496, -0.971735,
		-0.010109, -0.999469, -0.030991,
		26.615177, 34.115025, 22.641582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098152, 34.655628, 22.223883>,  <26.622253, 34.814651, 22.663275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098152, 34.655628, 22.223883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.167324, 34.357716, 22.481689>,  <26.208826, 34.178970, 22.636374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.167324, 34.357716, 22.481689>,  <26.098152, 34.655628, 22.223883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167324, 34.357716, 22.481689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980065, -0.065125, 0.187701,
		-0.097820, -0.664130, -0.741190,
		0.172928, -0.744775, 0.644519,
		26.219202, 34.134281, 22.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511967, 34.220955, 22.074108>,  <26.098152, 34.655628, 22.223883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511967, 34.220955, 22.074108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.629337, 34.094162, 22.434868>,  <25.699759, 34.018085, 22.651323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.629337, 34.094162, 22.434868>,  <25.511967, 34.220955, 22.074108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629337, 34.094162, 22.434868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950491, -0.197707, 0.239748,
		0.102317, -0.927596, -0.359300,
		0.293425, -0.316981, 0.901901,
		25.717365, 33.999069, 22.705439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148163, 33.711361, 22.254358>,  <25.511967, 34.220955, 22.074108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148163, 33.711361, 22.254358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.288063, 33.775036, 22.623646>,  <25.372004, 33.813240, 22.845219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.288063, 33.775036, 22.623646>,  <25.148163, 33.711361, 22.254358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288063, 33.775036, 22.623646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930760, -0.053080, 0.361758,
		0.106595, -0.985819, 0.129609,
		0.349749, 0.159197, 0.923219,
		25.392988, 33.822792, 22.900612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761921, 33.242771, 22.724968>,  <25.148163, 33.711361, 22.254358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761921, 33.242771, 22.724968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.925070, 33.506603, 22.977505>,  <25.022959, 33.664902, 23.129026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.925070, 33.506603, 22.977505>,  <24.761921, 33.242771, 22.724968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925070, 33.506603, 22.977505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872584, 0.078041, 0.482190,
		0.268775, -0.747568, 0.607373,
		0.407870, 0.659584, 0.631340,
		25.047430, 33.704479, 23.166906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.519747, 33.022018, 23.330473>,  <24.761921, 33.242771, 22.724968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.519747, 33.022018, 23.330473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.617407, 33.407196, 23.376308>,  <24.676003, 33.638302, 23.403811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.617407, 33.407196, 23.376308>,  <24.519747, 33.022018, 23.330473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617407, 33.407196, 23.376308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905401, 0.184030, 0.382599,
		0.347334, -0.197160, 0.916781,
		0.244148, 0.962944, 0.114589,
		24.690651, 33.696079, 23.410685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324886, 33.146385, 24.021622>,  <24.519747, 33.022018, 23.330473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324886, 33.146385, 24.021622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.332508, 33.501965, 23.838577>,  <24.337082, 33.715313, 23.728750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.332508, 33.501965, 23.838577>,  <24.324886, 33.146385, 24.021622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332508, 33.501965, 23.838577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863900, 0.245041, 0.440036,
		0.503303, 0.386945, 0.772632,
		0.019057, 0.888948, -0.457612,
		24.338224, 33.768650, 23.701294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270105, 33.650814, 24.462761>,  <24.324886, 33.146385, 24.021622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270105, 33.650814, 24.462761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.127026, 33.832645, 24.136471>,  <24.041178, 33.941746, 23.940697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.127026, 33.832645, 24.136471>,  <24.270105, 33.650814, 24.462761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.127026, 33.832645, 24.136471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659045, 0.495977, 0.565391,
		0.661597, 0.739839, 0.122179,
		-0.357700, 0.454582, -0.815724,
		24.019716, 33.969021, 23.891754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242317, 34.282875, 24.707380>,  <24.270105, 33.650814, 24.462761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242317, 34.282875, 24.707380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007826, 34.290359, 24.383408>,  <23.867130, 34.294849, 24.189024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007826, 34.290359, 24.383408>,  <24.242317, 34.282875, 24.707380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.007826, 34.290359, 24.383408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672303, 0.546598, 0.499239,
		0.452045, 0.837186, -0.307854,
		-0.586228, 0.018707, -0.809930,
		23.831957, 34.295971, 24.140429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991667, 34.892025, 24.615662>,  <24.242317, 34.282875, 24.707380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991667, 34.892025, 24.615662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721569, 34.711956, 24.381947>,  <23.559511, 34.603916, 24.241716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721569, 34.711956, 24.381947>,  <23.991667, 34.892025, 24.615662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721569, 34.711956, 24.381947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722481, 0.563206, 0.401024,
		0.148546, 0.692927, -0.705540,
		-0.675244, -0.450169, -0.584289,
		23.518995, 34.576904, 24.206659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.678026, 35.418587, 24.278645>,  <23.991667, 34.892025, 24.615662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.678026, 35.418587, 24.278645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.421520, 35.112186, 24.260632>,  <23.267616, 34.928349, 24.249823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.421520, 35.112186, 24.260632>,  <23.678026, 35.418587, 24.278645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421520, 35.112186, 24.260632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680519, 0.540629, 0.494584,
		-0.354503, 0.347806, -0.867962,
		-0.641265, -0.765997, -0.045034,
		23.229141, 34.882389, 24.247122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018959, 35.699921, 24.071125>,  <23.678026, 35.418587, 24.278645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018959, 35.699921, 24.071125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912584, 35.338108, 24.204456>,  <22.848759, 35.121021, 24.284454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912584, 35.338108, 24.204456>,  <23.018959, 35.699921, 24.071125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912584, 35.338108, 24.204456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631368, 0.424728, 0.648831,
		-0.728459, -0.037904, -0.684040,
		-0.265938, -0.904527, 0.333328,
		22.832804, 35.066750, 24.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250082, 35.698677, 23.880775>,  <23.018959, 35.699921, 24.071125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250082, 35.698677, 23.880775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340101, 35.434826, 24.167618>,  <22.394114, 35.276516, 24.339724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340101, 35.434826, 24.167618>,  <22.250082, 35.698677, 23.880775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340101, 35.434826, 24.167618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636506, 0.457710, 0.620776,
		-0.737708, -0.596148, -0.316850,
		0.225049, -0.659628, 0.717108,
		22.407616, 35.236938, 24.382750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678366, 36.039711, 23.535732>,  <22.250082, 35.698677, 23.880775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678366, 36.039711, 23.535732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.643621, 36.361870, 23.301197>,  <21.622774, 36.555164, 23.160477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.643621, 36.361870, 23.301197>,  <21.678366, 36.039711, 23.535732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.643621, 36.361870, 23.301197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584970, -0.435177, -0.684421,
		-0.806391, -0.402437, -0.433334,
		-0.086860, 0.805398, -0.586336,
		21.617563, 36.603489, 23.125296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556929, 35.810146, 22.893208>,  <21.678366, 36.039711, 23.535732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556929, 35.810146, 22.893208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708067, 36.172543, 22.816875>,  <21.798750, 36.389980, 22.771076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708067, 36.172543, 22.816875>,  <21.556929, 35.810146, 22.893208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708067, 36.172543, 22.816875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583048, -0.392942, -0.711092,
		-0.719226, 0.157422, -0.676707,
		0.377848, 0.905988, -0.190830,
		21.821421, 36.444340, 22.759626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586433, 35.868885, 22.226704>,  <21.556929, 35.810146, 22.893208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586433, 35.868885, 22.226704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830198, 36.170238, 22.325523>,  <21.976458, 36.351051, 22.384815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830198, 36.170238, 22.325523>,  <21.586433, 35.868885, 22.226704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.830198, 36.170238, 22.325523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650763, -0.297296, -0.698658,
		-0.452908, 0.586542, -0.671448,
		0.609411, 0.753381, 0.247052,
		22.013021, 36.396252, 22.399639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771505, 36.185719, 21.604065>,  <21.586433, 35.868885, 22.226704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771505, 36.185719, 21.604065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.058443, 36.285641, 21.864223>,  <22.230606, 36.345596, 22.020319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.058443, 36.285641, 21.864223>,  <21.771505, 36.185719, 21.604065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058443, 36.285641, 21.864223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696678, -0.246923, -0.673550,
		-0.007661, 0.936282, -0.351164,
		0.717343, 0.249808, 0.650396,
		22.273645, 36.360584, 22.059341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.133638, 36.604050, 21.168131>,  <21.771505, 36.185719, 21.604065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.133638, 36.604050, 21.168131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375746, 36.500244, 21.469143>,  <22.521009, 36.437962, 21.649750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375746, 36.500244, 21.469143>,  <22.133638, 36.604050, 21.168131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375746, 36.500244, 21.469143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772283, -0.037712, -0.634158,
		0.192952, 0.965003, 0.177592,
		0.605267, -0.259513, 0.752532,
		22.557325, 36.422390, 21.694902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.802753, 37.024075, 21.225895>,  <22.133638, 36.604050, 21.168131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.802753, 37.024075, 21.225895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.859730, 36.657757, 21.376114>,  <22.893915, 36.437965, 21.466246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.859730, 36.657757, 21.376114>,  <22.802753, 37.024075, 21.225895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.859730, 36.657757, 21.376114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778398, -0.130722, -0.614010,
		0.611398, 0.379783, 0.694231,
		0.142439, -0.915793, 0.375545,
		22.902462, 36.383018, 21.488777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586935, 36.954269, 21.132076>,  <22.802753, 37.024075, 21.225895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586935, 36.954269, 21.132076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.488039, 36.582272, 21.240879>,  <23.428701, 36.359074, 21.306160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.488039, 36.582272, 21.240879>,  <23.586935, 36.954269, 21.132076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488039, 36.582272, 21.240879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703371, -0.365333, -0.609755,
		0.666440, 0.040567, 0.744454,
		-0.247238, -0.929993, 0.272006,
		23.413868, 36.303272, 21.322481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178082, 36.609173, 21.343058>,  <23.586935, 36.954269, 21.132076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178082, 36.609173, 21.343058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.907063, 36.346264, 21.211040>,  <23.744452, 36.188519, 21.131830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.907063, 36.346264, 21.211040>,  <24.178082, 36.609173, 21.343058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.907063, 36.346264, 21.211040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683560, -0.397137, -0.612395,
		0.271436, -0.640530, 0.718361,
		-0.677546, -0.657269, -0.330043,
		23.703798, 36.149082, 21.112028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538155, 35.915165, 21.247707>,  <24.178082, 36.609173, 21.343058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538155, 35.915165, 21.247707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205143, 35.862972, 21.032349>,  <24.005337, 35.831657, 20.903133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205143, 35.862972, 21.032349>,  <24.538155, 35.915165, 21.247707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205143, 35.862972, 21.032349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536301, -0.433410, -0.724249,
		-0.138845, -0.891701, 0.430803,
		-0.832528, -0.130482, -0.538397,
		23.955385, 35.823830, 20.870829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579578, 35.234493, 20.990734>,  <24.538155, 35.915165, 21.247707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579578, 35.234493, 20.990734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.304726, 35.395924, 20.749081>,  <24.139814, 35.492783, 20.604090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.304726, 35.395924, 20.749081>,  <24.579578, 35.234493, 20.990734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304726, 35.395924, 20.749081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481939, -0.369055, -0.794691,
		-0.543677, -0.837211, 0.059090,
		-0.687132, 0.403578, -0.604132,
		24.098585, 35.516998, 20.567841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447018, 34.680817, 20.506723>,  <24.579578, 35.234493, 20.990734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447018, 34.680817, 20.506723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.328194, 35.020054, 20.331226>,  <24.256899, 35.223595, 20.225929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.328194, 35.020054, 20.331226>,  <24.447018, 34.680817, 20.506723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328194, 35.020054, 20.331226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377543, -0.317718, -0.869779,
		-0.877051, -0.424018, -0.225812,
		-0.297057, 0.848094, -0.438740,
		24.239077, 35.274483, 20.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150547, 34.482910, 19.869419>,  <24.447018, 34.680817, 20.506723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150547, 34.482910, 19.869419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255543, 34.867912, 19.842068>,  <24.318541, 35.098915, 19.825657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255543, 34.867912, 19.842068>,  <24.150547, 34.482910, 19.869419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255543, 34.867912, 19.842068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597251, -0.217720, -0.771939,
		-0.757885, 0.161788, -0.632009,
		0.262491, 0.962509, -0.068379,
		24.334290, 35.156666, 19.821554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193167, 34.454453, 19.162569>,  <24.150547, 34.482910, 19.869419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193167, 34.454453, 19.162569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.354988, 34.803108, 19.273262>,  <24.452080, 35.012302, 19.339678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.354988, 34.803108, 19.273262>,  <24.193167, 34.454453, 19.162569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.354988, 34.803108, 19.273262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601690, -0.025807, -0.798313,
		-0.688699, 0.489467, -0.534897,
		0.404552, 0.871640, 0.276734,
		24.476355, 35.064602, 19.356283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226000, 34.879681, 18.564512>,  <24.193167, 34.454453, 19.162569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226000, 34.879681, 18.564512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.489466, 35.069073, 18.798428>,  <24.647545, 35.182709, 18.938776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.489466, 35.069073, 18.798428>,  <24.226000, 34.879681, 18.564512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489466, 35.069073, 18.798428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661172, 0.006800, -0.750203,
		-0.359186, 0.880776, -0.308575,
		0.658663, 0.473483, 0.584788,
		24.687065, 35.211117, 18.973864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487507, 35.422546, 18.123629>,  <24.226000, 34.879681, 18.564512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487507, 35.422546, 18.123629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.755569, 35.336094, 18.407650>,  <24.916407, 35.284222, 18.578062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.755569, 35.336094, 18.407650>,  <24.487507, 35.422546, 18.123629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755569, 35.336094, 18.407650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690636, -0.168829, -0.703221,
		0.271866, 0.961657, 0.036126,
		0.670158, -0.216132, 0.710053,
		24.956617, 35.271255, 18.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090210, 35.835842, 17.927216>,  <24.487507, 35.422546, 18.123629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090210, 35.835842, 17.927216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.219898, 35.565437, 18.191906>,  <25.297712, 35.403194, 18.350721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.219898, 35.565437, 18.191906>,  <25.090210, 35.835842, 17.927216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219898, 35.565437, 18.191906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871257, -0.059096, -0.487256,
		0.368498, 0.734514, 0.569823,
		0.324222, -0.676015, 0.661727,
		25.317165, 35.362633, 18.390425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741543, 35.977001, 17.997173>,  <25.090210, 35.835842, 17.927216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741543, 35.977001, 17.997173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.737854, 35.590744, 18.101059>,  <25.735641, 35.358990, 18.163389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.737854, 35.590744, 18.101059>,  <25.741543, 35.977001, 17.997173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737854, 35.590744, 18.101059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855213, -0.142208, -0.498386,
		0.518196, 0.217515, 0.827140,
		-0.009220, -0.965642, 0.259713,
		25.735088, 35.301052, 18.178972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478271, 35.798164, 18.122026>,  <25.741543, 35.977001, 17.997173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478271, 35.798164, 18.122026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.286102, 35.447762, 18.105061>,  <26.170801, 35.237518, 18.094881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.286102, 35.447762, 18.105061>,  <26.478271, 35.798164, 18.122026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286102, 35.447762, 18.105061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700554, -0.354206, -0.619486,
		0.527653, -0.327329, 0.783861,
		-0.480424, -0.876011, -0.042414,
		26.141975, 35.184959, 18.092337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930897, 35.342030, 18.360266>,  <26.478271, 35.798164, 18.122026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930897, 35.342030, 18.360266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.685263, 35.113407, 18.142559>,  <26.537882, 34.976234, 18.011934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.685263, 35.113407, 18.142559>,  <26.930897, 35.342030, 18.360266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685263, 35.113407, 18.142559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789241, -0.445046, -0.423122,
		-0.000386, -0.689390, 0.724390,
		-0.614083, -0.571555, -0.544267,
		26.501038, 34.941940, 17.979279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146524, 34.610836, 18.375679>,  <26.930897, 35.342030, 18.360266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146524, 34.610836, 18.375679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.908829, 34.637970, 18.055111>,  <26.766211, 34.654251, 17.862770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.908829, 34.637970, 18.055111>,  <27.146524, 34.610836, 18.375679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908829, 34.637970, 18.055111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569772, -0.667771, -0.479001,
		-0.567661, -0.741269, 0.358163,
		-0.594240, 0.067839, -0.801422,
		26.730556, 34.658321, 17.814684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744829, 34.035824, 18.151384>,  <27.146524, 34.610836, 18.375679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744829, 34.035824, 18.151384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.791174, 34.216244, 17.797405>,  <26.818981, 34.324493, 17.585018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.791174, 34.216244, 17.797405>,  <26.744829, 34.035824, 18.151384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791174, 34.216244, 17.797405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185434, -0.885107, -0.426850,
		-0.975803, -0.114645, -0.186189,
		0.115861, 0.451047, -0.884948,
		26.825932, 34.351559, 17.531921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.283745, 29.451584, 26.768290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636690, 29.553574, 26.926491>,  <25.848457, 29.614767, 27.021412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636690, 29.553574, 26.926491>,  <25.283745, 29.451584, 26.768290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636690, 29.553574, 26.926491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034585, 0.873345, -0.485873,
		-0.469295, 0.415039, 0.779426,
		0.882364, 0.254974, 0.395502,
		25.901400, 29.630066, 27.045141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095709, 30.228174, 26.809317>,  <25.283745, 29.451584, 26.768290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095709, 30.228174, 26.809317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481106, 30.166908, 26.897156>,  <25.712343, 30.130148, 26.949860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481106, 30.166908, 26.897156>,  <25.095709, 30.228174, 26.809317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481106, 30.166908, 26.897156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215947, 0.929429, -0.299213,
		-0.158272, 0.335711, 0.928573,
		0.963492, -0.153165, 0.219598,
		25.770153, 30.120958, 26.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288523, 30.739313, 27.160311>,  <25.095709, 30.228174, 26.809317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288523, 30.739313, 27.160311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619101, 30.583355, 26.997845>,  <25.817448, 30.489780, 26.900366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619101, 30.583355, 26.997845>,  <25.288523, 30.739313, 27.160311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619101, 30.583355, 26.997845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327441, 0.919709, -0.216605,
		0.458006, 0.046018, 0.887757,
		0.826446, -0.389895, -0.406164,
		25.867035, 30.466387, 26.875996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879093, 31.130907, 27.504189>,  <25.288523, 30.739313, 27.160311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879093, 31.130907, 27.504189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018833, 30.950653, 27.175583>,  <26.102676, 30.842501, 26.978420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018833, 30.950653, 27.175583>,  <25.879093, 31.130907, 27.504189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018833, 30.950653, 27.175583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236909, 0.890748, -0.387870,
		0.906548, -0.059121, 0.417942,
		0.349349, -0.450636, -0.821512,
		26.123638, 30.815462, 26.929129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442719, 31.323742, 27.424335>,  <25.879093, 31.130907, 27.504189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442719, 31.323742, 27.424335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359798, 31.211433, 27.049488>,  <26.310045, 31.144049, 26.824579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359798, 31.211433, 27.049488>,  <26.442719, 31.323742, 27.424335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359798, 31.211433, 27.049488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226836, 0.918026, -0.325229,
		0.951615, -0.279993, -0.126619,
		-0.207301, -0.280771, -0.937120,
		26.297607, 31.127203, 26.768353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057266, 31.485308, 26.998308>,  <26.442719, 31.323742, 27.424335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057266, 31.485308, 26.998308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725367, 31.461773, 26.776299>,  <26.526226, 31.447651, 26.643093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725367, 31.461773, 26.776299>,  <27.057266, 31.485308, 26.998308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725367, 31.461773, 26.776299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294116, 0.799058, -0.524406,
		0.474353, -0.598368, -0.645713,
		-0.829750, -0.058839, -0.555025,
		26.476442, 31.444120, 26.609791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135054, 31.685287, 26.289131>,  <27.057266, 31.485308, 26.998308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135054, 31.685287, 26.289131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737640, 31.702934, 26.247292>,  <26.499191, 31.713522, 26.222187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737640, 31.702934, 26.247292>,  <27.135054, 31.685287, 26.289131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737640, 31.702934, 26.247292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084196, 0.904400, -0.418296,
		0.076147, -0.424398, -0.902268,
		-0.993535, 0.044115, -0.104600,
		26.439579, 31.716169, 26.215912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027573, 31.912289, 25.615292>,  <27.135054, 31.685287, 26.289131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027573, 31.912289, 25.615292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684078, 32.000996, 25.800068>,  <26.477982, 32.054222, 25.910934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684078, 32.000996, 25.800068>,  <27.027573, 31.912289, 25.615292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684078, 32.000996, 25.800068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073283, 0.945379, -0.317630,
		-0.507150, -0.238908, -0.828084,
		-0.858737, 0.221770, 0.461941,
		26.426456, 32.067528, 25.938650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767759, 32.422153, 25.134109>,  <27.027573, 31.912289, 25.615292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767759, 32.422153, 25.134109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557323, 32.450127, 25.473129>,  <26.431061, 32.466911, 25.676540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557323, 32.450127, 25.473129>,  <26.767759, 32.422153, 25.134109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557323, 32.450127, 25.473129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264812, 0.933594, -0.241405,
		-0.808148, -0.351442, -0.472637,
		-0.526091, 0.069931, 0.847548,
		26.399496, 32.471107, 25.727394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199785, 32.609028, 24.916744>,  <26.767759, 32.422153, 25.134109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199785, 32.609028, 24.916744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168791, 32.717445, 25.300522>,  <26.150194, 32.782494, 25.530788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168791, 32.717445, 25.300522>,  <26.199785, 32.609028, 24.916744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168791, 32.717445, 25.300522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412422, 0.867426, -0.278354,
		-0.907691, -0.417265, 0.044568,
		-0.077488, 0.271040, 0.959444,
		26.145544, 32.798756, 25.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524469, 32.924507, 24.973282>,  <26.199785, 32.609028, 24.916744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524469, 32.924507, 24.973282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770275, 33.064919, 25.255882>,  <25.917759, 33.149166, 25.425444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770275, 33.064919, 25.255882>,  <25.524469, 32.924507, 24.973282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770275, 33.064919, 25.255882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311385, 0.930765, -0.191617,
		-0.724852, -0.102243, 0.681276,
		0.614516, 0.351032, 0.706503,
		25.954630, 33.170227, 25.467833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200624, 33.617092, 25.167252>,  <25.524469, 32.924507, 24.973282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200624, 33.617092, 25.167252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559801, 33.656612, 25.338802>,  <25.775307, 33.680325, 25.441732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559801, 33.656612, 25.338802>,  <25.200624, 33.617092, 25.167252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559801, 33.656612, 25.338802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015579, 0.981000, -0.193380,
		-0.439837, 0.166962, 0.882421,
		0.897943, 0.098803, 0.428879,
		25.829184, 33.686253, 25.467466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286234, 34.232719, 25.685753>,  <25.200624, 33.617092, 25.167252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286234, 34.232719, 25.685753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623348, 34.158070, 25.483810>,  <25.825617, 34.113277, 25.362644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623348, 34.158070, 25.483810>,  <25.286234, 34.232719, 25.685753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623348, 34.158070, 25.483810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042947, 0.958290, -0.282552,
		0.536531, 0.216449, 0.815650,
		0.842787, -0.186627, -0.504857,
		25.876184, 34.102081, 25.332354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724419, 34.488297, 26.305166>,  <25.286234, 34.232719, 25.685753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724419, 34.488297, 26.305166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856102, 34.689034, 26.625111>,  <24.935112, 34.809475, 26.817078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856102, 34.689034, 26.625111>,  <24.724419, 34.488297, 26.305166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856102, 34.689034, 26.625111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081380, 0.859008, -0.505454,
		-0.940743, 0.101307, 0.323633,
		0.329210, 0.501840, 0.799861,
		24.954865, 34.839584, 26.865068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358177, 34.200565, 26.617167>,  <24.724419, 34.488297, 26.305166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358177, 34.200565, 26.617167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223785, 34.430653, 26.915493>,  <25.143150, 34.568707, 27.094488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223785, 34.430653, 26.915493>,  <25.358177, 34.200565, 26.617167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223785, 34.430653, 26.915493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807900, -0.231040, 0.542142,
		0.484163, 0.784693, -0.387094,
		-0.335981, 0.575219, 0.745815,
		25.122992, 34.603218, 27.139238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911839, 34.674034, 26.880110>,  <25.358177, 34.200565, 26.617167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911839, 34.674034, 26.880110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657858, 34.583870, 27.175686>,  <25.505470, 34.529774, 27.353031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657858, 34.583870, 27.175686>,  <25.911839, 34.674034, 26.880110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657858, 34.583870, 27.175686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770519, -0.254133, 0.584566,
		0.056022, 0.940536, 0.335043,
		-0.634950, -0.225408, 0.738938,
		25.467373, 34.516247, 27.397367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378345, 34.755722, 27.434118>,  <25.911839, 34.674034, 26.880110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378345, 34.755722, 27.434118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059748, 34.559563, 27.575600>,  <25.868589, 34.441868, 27.660488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059748, 34.559563, 27.575600>,  <26.378345, 34.755722, 27.434118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059748, 34.559563, 27.575600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586403, -0.483907, 0.649588,
		-0.147395, 0.724808, 0.673000,
		-0.796496, -0.490395, 0.353704,
		25.820799, 34.412445, 27.681711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436182, 34.759167, 28.128553>,  <26.378345, 34.755722, 27.434118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436182, 34.759167, 28.128553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178177, 34.455765, 28.091412>,  <26.023375, 34.273724, 28.069126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178177, 34.455765, 28.091412>,  <26.436182, 34.759167, 28.128553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178177, 34.455765, 28.091412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526882, -0.529441, 0.664897,
		-0.553492, 0.379943, 0.741141,
		-0.645013, -0.758509, -0.092856,
		25.984673, 34.228210, 28.063555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291895, 34.576946, 28.812548>,  <26.436182, 34.759167, 28.128553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291895, 34.576946, 28.812548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199869, 34.249512, 28.602028>,  <26.144653, 34.053051, 28.475716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199869, 34.249512, 28.602028>,  <26.291895, 34.576946, 28.812548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199869, 34.249512, 28.602028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465891, -0.567451, 0.678929,
		-0.854409, -0.088999, 0.511922,
		-0.230067, -0.818583, -0.526299,
		26.130850, 34.003937, 28.444138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118961, 34.188694, 29.332861>,  <26.291895, 34.576946, 28.812548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118961, 34.188694, 29.332861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214010, 33.949665, 29.026543>,  <26.271040, 33.806248, 28.842751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214010, 33.949665, 29.026543>,  <26.118961, 34.188694, 29.332861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214010, 33.949665, 29.026543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601938, -0.528170, 0.598922,
		-0.762369, -0.603280, 0.234194,
		0.237623, -0.597570, -0.765797,
		26.285297, 33.770393, 28.796803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042845, 33.537224, 29.588285>,  <26.118961, 34.188694, 29.332861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042845, 33.537224, 29.588285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257202, 33.445766, 29.263191>,  <26.385817, 33.390892, 29.068134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257202, 33.445766, 29.263191>,  <26.042845, 33.537224, 29.588285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257202, 33.445766, 29.263191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533574, -0.654306, 0.535894,
		-0.654306, -0.720838, -0.228642,
		-0.535894, 0.228642, 0.812736,
		26.417971, 33.377174, 29.019371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147564, 32.877289, 29.690506>,  <26.042845, 33.537224, 29.588285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147564, 32.877289, 29.690506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419504, 32.939869, 29.403919>,  <26.582668, 32.977417, 29.231968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419504, 32.939869, 29.403919>,  <26.147564, 32.877289, 29.690506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419504, 32.939869, 29.403919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605893, -0.670237, 0.428574,
		-0.413151, -0.725469, -0.550455,
		0.679853, 0.156451, -0.716466,
		26.623461, 32.986805, 29.188980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391264, 32.223812, 29.376871>,  <26.147564, 32.877289, 29.690506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391264, 32.223812, 29.376871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681820, 32.497547, 29.351444>,  <26.856153, 32.661789, 29.336189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681820, 32.497547, 29.351444>,  <26.391264, 32.223812, 29.376871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681820, 32.497547, 29.351444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685064, -0.713520, 0.146889,
		0.055166, -0.150245, -0.987109,
		0.726391, 0.684336, -0.063565,
		26.899736, 32.702847, 29.332375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977320, 31.919888, 28.941916>,  <26.391264, 32.223812, 29.376871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977320, 31.919888, 28.941916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134956, 32.224495, 29.147743>,  <27.229538, 32.407261, 29.271240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134956, 32.224495, 29.147743>,  <26.977320, 31.919888, 28.941916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134956, 32.224495, 29.147743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779432, -0.573596, 0.251937,
		0.487010, 0.301786, -0.819602,
		0.394089, 0.761520, 0.514568,
		27.253183, 32.452950, 29.302114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668026, 31.846077, 28.755726>,  <26.977320, 31.919888, 28.941916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668026, 31.846077, 28.755726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670095, 32.081715, 29.078945>,  <27.671337, 32.223099, 29.272877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670095, 32.081715, 29.078945>,  <27.668026, 31.846077, 28.755726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670095, 32.081715, 29.078945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794761, -0.492840, 0.354210,
		0.606901, 0.640374, -0.470737,
		0.005171, 0.589093, 0.808049,
		27.671646, 32.258442, 29.321360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384809, 31.869013, 28.872055>,  <27.668026, 31.846077, 28.755726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384809, 31.869013, 28.872055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165060, 31.959427, 29.193825>,  <28.033211, 32.013676, 29.386887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165060, 31.959427, 29.193825>,  <28.384809, 31.869013, 28.872055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165060, 31.959427, 29.193825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551316, -0.625367, 0.552238,
		0.627884, 0.746877, 0.218945,
		-0.549375, 0.226033, 0.804423,
		28.000248, 32.027237, 29.435152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914059, 32.066307, 29.316330>,  <28.384809, 31.869013, 28.872055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914059, 32.066307, 29.316330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587236, 31.981583, 29.530827>,  <28.391142, 31.930748, 29.659525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587236, 31.981583, 29.530827>,  <28.914059, 32.066307, 29.316330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587236, 31.981583, 29.530827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562196, -0.498979, 0.659512,
		0.127882, 0.840331, 0.526773,
		-0.817057, -0.211809, 0.536241,
		28.342119, 31.918039, 29.691698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110033, 32.147915, 30.041891>,  <28.914059, 32.066307, 29.316330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110033, 32.147915, 30.041891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790054, 31.908230, 30.029106>,  <28.598066, 31.764418, 30.021435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790054, 31.908230, 30.029106>,  <29.110033, 32.147915, 30.041891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790054, 31.908230, 30.029106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460915, -0.647676, 0.606690,
		-0.384239, 0.470589, 0.794296,
		-0.799948, -0.599217, -0.031961,
		28.550070, 31.728464, 30.019518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316195, 32.029076, 30.706476>,  <29.110033, 32.147915, 30.041891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316195, 32.029076, 30.706476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676294, 32.118073, 30.856167>,  <29.892355, 32.171471, 30.945980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676294, 32.118073, 30.856167>,  <29.316195, 32.029076, 30.706476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676294, 32.118073, 30.856167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313670, 0.264631, -0.911911,
		-0.301923, 0.938333, 0.168446,
		0.900252, 0.222490, 0.374225,
		29.946369, 32.184818, 30.968435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498857, 32.748787, 30.514992>,  <29.316195, 32.029076, 30.706476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498857, 32.748787, 30.514992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841002, 32.551052, 30.576954>,  <30.046288, 32.432411, 30.614130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841002, 32.551052, 30.576954>,  <29.498857, 32.748787, 30.514992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841002, 32.551052, 30.576954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347023, 0.324760, -0.879833,
		0.384626, 0.806327, 0.449331,
		0.855358, -0.494335, 0.154903,
		30.097609, 32.402752, 30.623425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974646, 33.254002, 30.580421>,  <29.498857, 32.748787, 30.514992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974646, 33.254002, 30.580421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167156, 32.918640, 30.478085>,  <30.282663, 32.717422, 30.416681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167156, 32.918640, 30.478085>,  <29.974646, 33.254002, 30.580421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167156, 32.918640, 30.478085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274570, 0.421369, -0.864326,
		0.832457, 0.345732, 0.432995,
		0.481276, -0.838401, -0.255844,
		30.311539, 32.667118, 30.401331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604048, 33.512268, 30.353361>,  <29.974646, 33.254002, 30.580421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604048, 33.512268, 30.353361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539808, 33.154907, 30.185528>,  <30.501265, 32.940491, 30.084827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539808, 33.154907, 30.185528>,  <30.604048, 33.512268, 30.353361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539808, 33.154907, 30.185528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370437, 0.339468, -0.864603,
		0.914869, -0.294281, 0.276430,
		-0.160597, -0.893398, -0.419581,
		30.491629, 32.886887, 30.059654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278633, 33.458763, 30.019379>,  <30.604048, 33.512268, 30.353361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278633, 33.458763, 30.019379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058903, 33.164516, 29.860832>,  <30.927065, 32.987968, 29.765705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058903, 33.164516, 29.860832>,  <31.278633, 33.458763, 30.019379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058903, 33.164516, 29.860832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635449, -0.059725, -0.769830,
		0.542629, -0.674757, 0.500257,
		-0.549326, -0.735619, -0.396365,
		30.894104, 32.943832, 29.741922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687420, 33.003014, 29.873871>,  <31.278633, 33.458763, 30.019379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687420, 33.003014, 29.873871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400917, 32.938805, 29.602222>,  <31.229015, 32.900280, 29.439234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400917, 32.938805, 29.602222>,  <31.687420, 33.003014, 29.873871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400917, 32.938805, 29.602222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653352, 0.187640, -0.733432,
		0.245164, -0.969032, -0.029521,
		-0.716259, -0.160524, -0.679121,
		31.186039, 32.890648, 29.398485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070107, 32.602665, 29.341095>,  <31.687420, 33.003014, 29.873871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070107, 32.602665, 29.341095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726522, 32.751904, 29.200813>,  <31.520372, 32.841446, 29.116644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726522, 32.751904, 29.200813>,  <32.070107, 32.602665, 29.341095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726522, 32.751904, 29.200813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464442, 0.279293, -0.840410,
		-0.215602, -0.884758, -0.413180,
		-0.858958, 0.373092, -0.350703,
		31.468836, 32.863831, 29.095602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095337, 32.394218, 28.653313>,  <32.070107, 32.602665, 29.341095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095337, 32.394218, 28.653313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822668, 32.686768, 28.645126>,  <31.659067, 32.862297, 28.640215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822668, 32.686768, 28.645126>,  <32.095337, 32.394218, 28.653313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822668, 32.686768, 28.645126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462597, 0.409151, -0.786511,
		-0.566862, -0.545606, -0.617237,
		-0.681668, 0.731375, -0.020464,
		31.618168, 32.906181, 28.638987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911278, 32.591763, 27.893072>,  <32.095337, 32.394218, 28.653313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911278, 32.591763, 27.893072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799635, 32.919540, 28.093315>,  <31.732649, 33.116207, 28.213461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799635, 32.919540, 28.093315>,  <31.911278, 32.591763, 27.893072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799635, 32.919540, 28.093315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339684, 0.571872, -0.746710,
		-0.898173, -0.038363, -0.437966,
		-0.279107, 0.819445, 0.500609,
		31.715902, 33.165375, 28.243498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747875, 33.036964, 27.323853>,  <31.911278, 32.591763, 27.893072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747875, 33.036964, 27.323853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771559, 33.285942, 27.636021>,  <31.785769, 33.435329, 27.823322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771559, 33.285942, 27.636021>,  <31.747875, 33.036964, 27.323853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771559, 33.285942, 27.636021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210762, 0.756374, -0.619256,
		-0.975743, 0.201147, -0.086405,
		0.059208, 0.622446, 0.780420,
		31.789322, 33.472675, 27.870146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382759, 33.688469, 27.036484>,  <31.747875, 33.036964, 27.323853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382759, 33.688469, 27.036484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612936, 33.750538, 27.357677>,  <31.751043, 33.787777, 27.550394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612936, 33.750538, 27.357677>,  <31.382759, 33.688469, 27.036484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612936, 33.750538, 27.357677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452719, 0.757249, -0.470764,
		-0.681109, 0.634426, 0.365505,
		0.575444, 0.155171, 0.802986,
		31.785568, 33.797089, 27.598574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263699, 34.345993, 27.266304>,  <31.382759, 33.688469, 27.036484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263699, 34.345993, 27.266304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628851, 34.224522, 27.375427>,  <31.847942, 34.151638, 27.440901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628851, 34.224522, 27.375427>,  <31.263699, 34.345993, 27.266304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628851, 34.224522, 27.375427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397488, 0.813506, -0.424513,
		-0.093016, 0.495969, 0.863344,
		0.912881, -0.303682, 0.272810,
		31.902716, 34.133415, 27.457270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.545082, 29.418753, 33.665222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.905392, 29.379002, 33.496117>,  <30.121578, 29.355150, 33.394653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.905392, 29.379002, 33.496117>,  <29.545082, 29.418753, 33.665222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905392, 29.379002, 33.496117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039458, 0.950712, -0.307554,
		0.432493, 0.293718, 0.852455,
		0.900773, -0.099379, -0.422766,
		30.175623, 29.349188, 33.369286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888973, 30.021152, 33.879036>,  <29.545082, 29.418753, 33.665222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888973, 30.021152, 33.879036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.095350, 29.861839, 33.575676>,  <30.219175, 29.766253, 33.393658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.095350, 29.861839, 33.575676>,  <29.888973, 30.021152, 33.879036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095350, 29.861839, 33.575676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128548, 0.911313, -0.391132,
		0.846924, 0.104310, 0.521382,
		0.515941, -0.398281, -0.758404,
		30.250132, 29.742355, 33.348156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609209, 30.391098, 33.838768>,  <29.888973, 30.021152, 33.879036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609209, 30.391098, 33.838768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532255, 30.231236, 33.480267>,  <30.486084, 30.135317, 33.265167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532255, 30.231236, 33.480267>,  <30.609209, 30.391098, 33.838768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532255, 30.231236, 33.480267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238498, 0.866884, -0.437757,
		0.951897, -0.297970, -0.071456,
		-0.192383, -0.399657, -0.896250,
		30.474541, 30.111338, 33.211391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124498, 30.594767, 33.350582>,  <30.609209, 30.391098, 33.838768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124498, 30.594767, 33.350582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828939, 30.474426, 33.109413>,  <30.651604, 30.402222, 32.964710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828939, 30.474426, 33.109413>,  <31.124498, 30.594767, 33.350582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828939, 30.474426, 33.109413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125502, 0.817686, -0.561817,
		0.662027, -0.490794, -0.566428,
		-0.738897, -0.300850, -0.602926,
		30.607271, 30.384171, 32.928535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347433, 30.628412, 32.687702>,  <31.124498, 30.594767, 33.350582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347433, 30.628412, 32.687702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961128, 30.646069, 32.585445>,  <30.729345, 30.656662, 32.524090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961128, 30.646069, 32.585445>,  <31.347433, 30.628412, 32.687702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961128, 30.646069, 32.585445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228580, 0.610835, -0.758045,
		0.122698, -0.790527, -0.600011,
		-0.965762, 0.044140, -0.255647,
		30.671400, 30.659311, 32.508751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277641, 30.627476, 31.989698>,  <31.347433, 30.628412, 32.687702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277641, 30.627476, 31.989698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928520, 30.791286, 32.095913>,  <30.719048, 30.889572, 32.159641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928520, 30.791286, 32.095913>,  <31.277641, 30.627476, 31.989698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928520, 30.791286, 32.095913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043849, 0.607637, -0.793003,
		-0.486104, -0.680490, -0.548304,
		-0.872800, 0.409525, 0.265536,
		30.666679, 30.914145, 32.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910551, 30.761404, 31.299307>,  <31.277641, 30.627476, 31.989698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910551, 30.761404, 31.299307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.705179, 30.983685, 31.560867>,  <30.581955, 31.117052, 31.717804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.705179, 30.983685, 31.560867>,  <30.910551, 30.761404, 31.299307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705179, 30.983685, 31.560867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120155, 0.707944, -0.695972,
		-0.849677, -0.435903, -0.296710,
		-0.513431, 0.555700, 0.653900,
		30.551149, 31.150394, 31.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345100, 30.844612, 30.954071>,  <30.910551, 30.761404, 31.299307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345100, 30.844612, 30.954071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329290, 31.131920, 31.231926>,  <30.319805, 31.304304, 31.398640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329290, 31.131920, 31.231926>,  <30.345100, 30.844612, 30.954071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329290, 31.131920, 31.231926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133070, 0.685207, -0.716089,
		-0.990318, -0.120739, 0.068498,
		-0.039524, 0.718271, 0.694639,
		30.317432, 31.347401, 31.440317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630512, 31.093832, 31.034088>,  <30.345100, 30.844612, 30.954071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630512, 31.093832, 31.034088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.881609, 31.377766, 31.161888>,  <30.032267, 31.548126, 31.238569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.881609, 31.377766, 31.161888>,  <29.630512, 31.093832, 31.034088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881609, 31.377766, 31.161888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354328, 0.626021, -0.694658,
		-0.693105, 0.322857, 0.644492,
		0.627740, 0.709832, 0.319501,
		30.069931, 31.590715, 31.257738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864660, 31.222752, 31.338240>,  <29.630512, 31.093832, 31.034088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864660, 31.222752, 31.338240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.633018, 31.198288, 31.013058>,  <28.494034, 31.183609, 30.817949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.633018, 31.198288, 31.013058>,  <28.864660, 31.222752, 31.338240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633018, 31.198288, 31.013058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204938, -0.954240, 0.217775,
		-0.789074, 0.292720, 0.540071,
		-0.579105, -0.061160, -0.812955,
		28.459288, 31.179939, 30.769171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173885, 30.964108, 31.582209>,  <28.864660, 31.222752, 31.338240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173885, 30.964108, 31.582209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.217268, 30.891975, 31.191166>,  <28.243298, 30.848696, 30.956539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.217268, 30.891975, 31.191166>,  <28.173885, 30.964108, 31.582209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217268, 30.891975, 31.191166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032767, -0.983523, 0.177787,
		-0.993561, 0.012751, -0.112575,
		0.108453, -0.180331, -0.977608,
		28.249804, 30.837875, 30.897882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577761, 30.465937, 31.288702>,  <28.173885, 30.964108, 31.582209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577761, 30.465937, 31.288702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894213, 30.461082, 31.044090>,  <28.084084, 30.458170, 30.897324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894213, 30.461082, 31.044090>,  <27.577761, 30.465937, 31.288702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894213, 30.461082, 31.044090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058481, -0.993722, 0.095373,
		-0.608846, -0.111215, -0.785454,
		0.791130, -0.012134, -0.611528,
		28.131552, 30.457443, 30.860632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473549, 29.911367, 30.901217>,  <27.577761, 30.465937, 31.288702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473549, 29.911367, 30.901217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.859262, 29.957809, 30.805988>,  <28.090691, 29.985674, 30.748852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.859262, 29.957809, 30.805988>,  <27.473549, 29.911367, 30.901217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859262, 29.957809, 30.805988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144797, -0.983686, 0.106755,
		-0.221792, -0.137414, -0.965363,
		0.964283, 0.116104, -0.238070,
		28.148548, 29.992641, 30.734568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628565, 29.480368, 30.368027>,  <27.473549, 29.911367, 30.901217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628565, 29.480368, 30.368027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.980679, 29.525810, 30.552284>,  <28.191946, 29.553076, 30.662838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.980679, 29.525810, 30.552284>,  <27.628565, 29.480368, 30.368027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980679, 29.525810, 30.552284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002750, -0.969670, 0.244401,
		0.474438, -0.216409, -0.853273,
		0.880285, 0.113606, 0.460644,
		28.244764, 29.559893, 30.690477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122562, 28.942858, 30.001446>,  <27.628565, 29.480368, 30.368027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122562, 28.942858, 30.001446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.260813, 29.052200, 30.360516>,  <28.343763, 29.117805, 30.575958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.260813, 29.052200, 30.360516>,  <28.122562, 28.942858, 30.001446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260813, 29.052200, 30.360516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302313, -0.938061, 0.169258,
		0.888341, 0.212879, -0.406857,
		0.345626, 0.273357, 0.897674,
		28.364500, 29.134207, 30.629818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665279, 28.511349, 30.138309>,  <28.122562, 28.942858, 30.001446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665279, 28.511349, 30.138309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.557947, 28.637100, 30.502544>,  <28.493547, 28.712551, 30.721085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.557947, 28.637100, 30.502544>,  <28.665279, 28.511349, 30.138309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557947, 28.637100, 30.502544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113533, -0.928342, 0.353965,
		0.956613, 0.198361, 0.213410,
		-0.268330, 0.314378, 0.910585,
		28.477448, 28.731413, 30.775721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833538, 28.002981, 30.486742>,  <28.665279, 28.511349, 30.138309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833538, 28.002981, 30.486742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.645145, 28.213417, 30.769981>,  <28.532110, 28.339680, 30.939924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.645145, 28.213417, 30.769981>,  <28.833538, 28.002981, 30.486742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645145, 28.213417, 30.769981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093679, -0.827993, 0.552859,
		0.877155, 0.194052, 0.439253,
		-0.470982, 0.526091, 0.708099,
		28.503851, 28.371244, 30.982410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255196, 27.925495, 31.113750>,  <28.833538, 28.002981, 30.486742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255196, 27.925495, 31.113750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.858603, 27.967899, 31.144005>,  <28.620646, 27.993341, 31.162157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.858603, 27.967899, 31.144005>,  <29.255196, 27.925495, 31.113750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858603, 27.967899, 31.144005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072010, -0.930229, 0.359846,
		0.108507, 0.351335, 0.929941,
		-0.991484, 0.106010, 0.075637,
		28.561157, 27.999702, 31.166697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095451, 27.773851, 31.799189>,  <29.255196, 27.925495, 31.113750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095451, 27.773851, 31.799189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.749474, 27.745796, 31.600410>,  <28.541887, 27.728964, 31.481144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.749474, 27.745796, 31.600410>,  <29.095451, 27.773851, 31.799189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749474, 27.745796, 31.600410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197414, -0.862816, 0.465378,
		-0.461414, 0.500629, 0.732439,
		-0.864942, -0.070138, -0.496946,
		28.489990, 27.724754, 31.451326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589024, 27.717527, 32.291840>,  <29.095451, 27.773851, 31.799189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589024, 27.717527, 32.291840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.414705, 27.567165, 31.964725>,  <28.310114, 27.476948, 31.768456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.414705, 27.567165, 31.964725>,  <28.589024, 27.717527, 32.291840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414705, 27.567165, 31.964725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113505, -0.878400, 0.464252,
		-0.892861, 0.295141, 0.340135,
		-0.435794, -0.375905, -0.817789,
		28.283966, 27.454393, 31.719389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117962, 27.302233, 32.543240>,  <28.589024, 27.717527, 32.291840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117962, 27.302233, 32.543240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083046, 27.186508, 32.161942>,  <28.062096, 27.117073, 31.933163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083046, 27.186508, 32.161942>,  <28.117962, 27.302233, 32.543240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083046, 27.186508, 32.161942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292914, -0.907145, 0.302142,
		-0.952146, 0.305594, -0.005557,
		-0.087292, -0.289311, -0.953247,
		28.056858, 27.099714, 31.875967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495621, 27.066093, 32.501812>,  <28.117962, 27.302233, 32.543240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495621, 27.066093, 32.501812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.681683, 26.875000, 32.203712>,  <27.793320, 26.760344, 32.024853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.681683, 26.875000, 32.203712>,  <27.495621, 27.066093, 32.501812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681683, 26.875000, 32.203712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464218, -0.848473, 0.254155,
		-0.753744, 0.227737, -0.616446,
		0.465157, -0.477733, -0.745251,
		27.821230, 26.731680, 31.980137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999418, 26.722200, 32.208633>,  <27.495621, 27.066093, 32.501812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999418, 26.722200, 32.208633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.349405, 26.547432, 32.125175>,  <27.559397, 26.442570, 32.075100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.349405, 26.547432, 32.125175>,  <26.999418, 26.722200, 32.208633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349405, 26.547432, 32.125175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366570, -0.879293, 0.304090,
		-0.316319, -0.189587, -0.929515,
		0.874967, -0.436922, -0.208640,
		27.611897, 26.416355, 32.062584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.667639, 25.117605, 30.764076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466085, 25.293495, 31.061462>,  <31.345154, 25.399029, 31.239895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466085, 25.293495, 31.061462>,  <31.667639, 25.117605, 30.764076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466085, 25.293495, 31.061462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346591, 0.685467, -0.640320,
		-0.791186, -0.580327, -0.192991,
		-0.503884, 0.439723, 0.743468,
		31.314920, 25.425411, 31.284502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095112, 25.381714, 30.436237>,  <31.667639, 25.117605, 30.764076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095112, 25.381714, 30.436237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105333, 25.594120, 30.775028>,  <31.111465, 25.721563, 30.978302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105333, 25.594120, 30.775028>,  <31.095112, 25.381714, 30.436237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105333, 25.594120, 30.775028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038292, 0.847151, -0.529970,
		-0.998940, -0.018890, 0.041980,
		0.025552, 0.531016, 0.846977,
		31.112999, 25.753426, 31.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534714, 25.762976, 30.409721>,  <31.095112, 25.381714, 30.436237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534714, 25.762976, 30.409721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.771456, 25.959038, 30.665676>,  <30.913500, 26.076675, 30.819248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.771456, 25.959038, 30.665676>,  <30.534714, 25.762976, 30.409721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771456, 25.959038, 30.665676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121581, 0.839064, -0.530273,
		-0.796823, 0.236046, 0.556197,
		0.591853, 0.490157, 0.639887,
		30.949013, 26.106085, 30.857643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179811, 26.347652, 30.518442>,  <30.534714, 25.762976, 30.409721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179811, 26.347652, 30.518442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538885, 26.442177, 30.667206>,  <30.754330, 26.498892, 30.756464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538885, 26.442177, 30.667206>,  <30.179811, 26.347652, 30.518442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538885, 26.442177, 30.667206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026855, 0.871802, -0.489122,
		-0.439817, 0.429090, 0.788950,
		0.897686, 0.236311, 0.371910,
		30.808191, 26.513069, 30.778778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161308, 27.188208, 30.731949>,  <30.179811, 26.347652, 30.518442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161308, 27.188208, 30.731949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532425, 27.067665, 30.643963>,  <30.755095, 26.995338, 30.591171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532425, 27.067665, 30.643963>,  <30.161308, 27.188208, 30.731949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532425, 27.067665, 30.643963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120410, 0.799873, -0.587966,
		0.353132, 0.519025, 0.778403,
		0.927792, -0.301357, -0.219965,
		30.810762, 26.977259, 30.577972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595430, 27.831419, 30.702738>,  <30.161308, 27.188208, 30.731949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595430, 27.831419, 30.702738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814447, 27.553852, 30.515686>,  <30.945858, 27.387312, 30.403454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814447, 27.553852, 30.515686>,  <30.595430, 27.831419, 30.702738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814447, 27.553852, 30.515686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367033, 0.701381, -0.611025,
		0.751987, 0.162926, 0.638726,
		0.547542, -0.693916, -0.467630,
		30.978710, 27.345676, 30.375397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244715, 28.188900, 30.560993>,  <30.595430, 27.831419, 30.702738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244715, 28.188900, 30.560993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215317, 27.867847, 30.324223>,  <31.197678, 27.675215, 30.182159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215317, 27.867847, 30.324223>,  <31.244715, 28.188900, 30.560993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215317, 27.867847, 30.324223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320819, 0.542956, -0.776063,
		0.944285, -0.246939, 0.217595,
		-0.073495, -0.802633, -0.591928,
		31.193268, 27.627058, 30.146645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853451, 28.207836, 30.140045>,  <31.244715, 28.188900, 30.560993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853451, 28.207836, 30.140045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598160, 27.979263, 29.933693>,  <31.444984, 27.842119, 29.809881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598160, 27.979263, 29.933693>,  <31.853451, 28.207836, 30.140045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598160, 27.979263, 29.933693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264928, 0.466154, -0.844105,
		0.722828, -0.675401, -0.146124,
		-0.638226, -0.571431, -0.515882,
		31.406693, 27.807835, 29.778929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164509, 27.973310, 29.533123>,  <31.853451, 28.207836, 30.140045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164509, 27.973310, 29.533123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773268, 27.954483, 29.452034>,  <31.538523, 27.943186, 29.403381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773268, 27.954483, 29.452034>,  <32.164509, 27.973310, 29.533123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773268, 27.954483, 29.452034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172085, 0.364895, -0.915007,
		0.117042, -0.929858, -0.348805,
		-0.978104, -0.047070, -0.202723,
		31.479837, 27.940361, 29.391216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235859, 28.186373, 28.909531>,  <32.164509, 27.973310, 29.533123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235859, 28.186373, 28.909531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847383, 28.129486, 28.986023>,  <31.614298, 28.095354, 29.031918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847383, 28.129486, 28.986023>,  <32.235859, 28.186373, 28.909531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847383, 28.129486, 28.986023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227294, 0.311535, -0.922650,
		0.071642, -0.939532, -0.334884,
		-0.971187, -0.142217, 0.191231,
		31.556026, 28.086821, 29.043392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010509, 27.637732, 28.456026>,  <32.235859, 28.186373, 28.909531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010509, 27.637732, 28.456026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747591, 27.916523, 28.570698>,  <31.589840, 28.083797, 28.639500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747591, 27.916523, 28.570698>,  <32.010509, 27.637732, 28.456026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747591, 27.916523, 28.570698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076608, 0.440217, -0.894617,
		-0.749730, -0.566065, -0.342747,
		-0.657295, 0.696979, 0.286678,
		31.550402, 28.125616, 28.656702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492462, 27.574411, 27.951290>,  <32.010509, 27.637732, 28.456026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492462, 27.574411, 27.951290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462667, 27.938694, 28.113804>,  <31.444790, 28.157263, 28.211311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462667, 27.938694, 28.113804>,  <31.492462, 27.574411, 27.951290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462667, 27.938694, 28.113804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196039, 0.412839, -0.889456,
		-0.977763, 0.013393, -0.209286,
		-0.074489, 0.910706, 0.406284,
		31.440321, 28.211906, 28.235689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285070, 27.952690, 27.431665>,  <31.492462, 27.574411, 27.951290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285070, 27.952690, 27.431665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.379158, 28.242355, 27.690975>,  <31.435610, 28.416155, 27.846561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.379158, 28.242355, 27.690975>,  <31.285070, 27.952690, 27.431665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379158, 28.242355, 27.690975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337050, 0.564827, -0.753239,
		-0.911630, 0.395678, -0.111220,
		0.235220, 0.724162, 0.648276,
		31.449724, 28.459604, 27.885458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965357, 28.565102, 27.241016>,  <31.285070, 27.952690, 27.431665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965357, 28.565102, 27.241016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296577, 28.673016, 27.437607>,  <31.495310, 28.737764, 27.555561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296577, 28.673016, 27.437607>,  <30.965357, 28.565102, 27.241016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296577, 28.673016, 27.437607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194091, 0.684468, -0.702732,
		-0.525987, 0.677288, 0.514411,
		0.828049, 0.269785, 0.491477,
		31.544992, 28.753952, 27.585051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254190, 29.003628, 27.415392>,  <30.965357, 28.565102, 27.241016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254190, 29.003628, 27.415392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914669, 28.914425, 27.223640>,  <29.710957, 28.860903, 27.108589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914669, 28.914425, 27.223640>,  <30.254190, 29.003628, 27.415392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914669, 28.914425, 27.223640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033230, -0.927402, 0.372586,
		-0.527665, 0.300322, 0.794592,
		-0.848802, -0.223005, -0.479378,
		29.660028, 28.847523, 27.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879755, 28.628147, 27.874264>,  <30.254190, 29.003628, 27.415392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879755, 28.628147, 27.874264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729605, 28.515907, 27.520912>,  <29.639515, 28.448563, 27.308901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729605, 28.515907, 27.520912>,  <29.879755, 28.628147, 27.874264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729605, 28.515907, 27.520912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094101, -0.936611, 0.337497,
		-0.922084, 0.209815, 0.325175,
		-0.375375, -0.280601, -0.883378,
		29.616993, 28.431726, 27.255899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217920, 28.283075, 27.993959>,  <29.879755, 28.628147, 27.874264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217920, 28.283075, 27.993959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.343174, 28.169014, 27.631603>,  <29.418325, 28.100576, 27.414190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.343174, 28.169014, 27.631603>,  <29.217920, 28.283075, 27.993959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343174, 28.169014, 27.631603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131759, -0.957679, 0.255911,
		-0.940524, 0.039224, -0.337454,
		0.313135, -0.285153, -0.905888,
		29.437115, 28.083467, 27.359837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821600, 27.783514, 27.867632>,  <29.217920, 28.283075, 27.993959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821600, 27.783514, 27.867632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.122503, 27.690067, 27.621208>,  <29.303045, 27.633999, 27.473354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.122503, 27.690067, 27.621208>,  <28.821600, 27.783514, 27.867632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122503, 27.690067, 27.621208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042456, -0.950273, 0.308509,
		-0.657497, -0.205924, -0.724771,
		0.752260, -0.233615, -0.616060,
		29.348181, 27.619984, 27.436390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567751, 27.111158, 27.485777>,  <28.821600, 27.783514, 27.867632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567751, 27.111158, 27.485777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.964998, 27.145584, 27.454002>,  <29.203346, 27.166239, 27.434938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.964998, 27.145584, 27.454002>,  <28.567751, 27.111158, 27.485777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964998, 27.145584, 27.454002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094385, -0.989687, 0.107753,
		-0.069343, -0.114509, -0.990999,
		0.993118, 0.086064, -0.079436,
		29.262934, 27.171404, 27.430172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665007, 26.670240, 26.922304>,  <28.567751, 27.111158, 27.485777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665007, 26.670240, 26.922304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995070, 26.686878, 27.147652>,  <29.193108, 26.696861, 27.282860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995070, 26.686878, 27.147652>,  <28.665007, 26.670240, 26.922304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995070, 26.686878, 27.147652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164056, -0.936657, 0.309449,
		0.540554, -0.347768, -0.766067,
		0.825159, 0.041596, 0.563367,
		29.242617, 26.699356, 27.316662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840599, 25.970364, 26.878010>,  <28.665007, 26.670240, 26.922304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840599, 25.970364, 26.878010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.052641, 26.117039, 27.183826>,  <29.179867, 26.205044, 27.367317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.052641, 26.117039, 27.183826>,  <28.840599, 25.970364, 26.878010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052641, 26.117039, 27.183826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039812, -0.889900, 0.454414,
		0.846996, -0.271326, -0.457143,
		0.530107, 0.366687, 0.764544,
		29.211674, 26.227045, 27.413189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296062, 25.456884, 27.000805>,  <28.840599, 25.970364, 26.878010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296062, 25.456884, 27.000805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273191, 25.674473, 27.335667>,  <29.259470, 25.805025, 27.536583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273191, 25.674473, 27.335667>,  <29.296062, 25.456884, 27.000805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273191, 25.674473, 27.335667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063778, -0.838804, 0.540685,
		0.996325, -0.022478, 0.082652,
		-0.057175, 0.543969, 0.837155,
		29.256039, 25.837664, 27.586813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795382, 25.137283, 27.521458>,  <29.296062, 25.456884, 27.000805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795382, 25.137283, 27.521458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521812, 25.356186, 27.714439>,  <29.357672, 25.487528, 27.830229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521812, 25.356186, 27.714439>,  <29.795382, 25.137283, 27.521458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521812, 25.356186, 27.714439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097865, -0.724141, 0.682673,
		0.722961, 0.419680, 0.548813,
		-0.683922, 0.547256, 0.482454,
		29.316635, 25.520363, 27.859175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991430, 25.108315, 28.203035>,  <29.795382, 25.137283, 27.521458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991430, 25.108315, 28.203035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.607960, 25.221642, 28.213425>,  <29.377878, 25.289637, 28.219658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.607960, 25.221642, 28.213425>,  <29.991430, 25.108315, 28.203035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607960, 25.221642, 28.213425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157952, -0.605949, 0.779665,
		0.236629, 0.743343, 0.625659,
		-0.958675, 0.283315, 0.025973,
		29.320356, 25.306637, 28.221216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858482, 25.315458, 28.871288>,  <29.991430, 25.108315, 28.203035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858482, 25.315458, 28.871288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492737, 25.256844, 28.720310>,  <29.273289, 25.221676, 28.629723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492737, 25.256844, 28.720310>,  <29.858482, 25.315458, 28.871288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492737, 25.256844, 28.720310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257537, -0.508848, 0.821431,
		-0.312431, 0.848294, 0.427534,
		-0.914364, -0.146534, -0.377447,
		29.218428, 25.212883, 28.607077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324766, 25.427052, 29.378931>,  <29.858482, 25.315458, 28.871288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324766, 25.427052, 29.378931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109028, 25.195930, 29.133900>,  <28.979586, 25.057259, 28.986881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109028, 25.195930, 29.133900>,  <29.324766, 25.427052, 29.378931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109028, 25.195930, 29.133900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294514, -0.552084, 0.780042,
		-0.788904, 0.601124, 0.127593,
		-0.539344, -0.577801, -0.612580,
		28.947226, 25.022591, 28.950125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652962, 25.349569, 29.733000>,  <29.324766, 25.427052, 29.378931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652962, 25.349569, 29.733000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.712044, 25.044331, 29.481327>,  <28.747494, 24.861187, 29.330324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.712044, 25.044331, 29.481327>,  <28.652962, 25.349569, 29.733000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712044, 25.044331, 29.481327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348116, -0.635562, 0.689113,
		-0.925742, 0.117240, -0.359523,
		0.147707, -0.763096, -0.629179,
		28.756355, 24.815401, 29.292574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996853, 24.958796, 29.633572>,  <28.652962, 25.349569, 29.733000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996853, 24.958796, 29.633572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.340107, 24.754215, 29.615582>,  <28.546059, 24.631468, 29.604788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.340107, 24.754215, 29.615582>,  <27.996853, 24.958796, 29.633572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340107, 24.754215, 29.615582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232945, -0.465918, 0.853614,
		-0.457509, -0.722056, -0.518961,
		0.858150, -0.511426, -0.044962,
		28.597548, 24.600780, 29.602089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342873, 24.628979, 29.607908>,  <27.996853, 24.958796, 29.633572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342873, 24.628979, 29.607908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.949757, 24.658634, 29.675587>,  <26.713886, 24.676428, 29.716194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.949757, 24.658634, 29.675587>,  <27.342873, 24.628979, 29.607908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949757, 24.658634, 29.675587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039241, 0.811242, -0.583393,
		-0.180511, -0.579992, -0.794371,
		-0.982790, 0.074137, 0.169198,
		26.654921, 24.680876, 29.726345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967453, 24.671915, 28.923061>,  <27.342873, 24.628979, 29.607908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967453, 24.671915, 28.923061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.731924, 24.854351, 29.189976>,  <26.590607, 24.963812, 29.350124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.731924, 24.854351, 29.189976>,  <26.967453, 24.671915, 28.923061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731924, 24.854351, 29.189976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062000, 0.797662, -0.599909,
		-0.805881, -0.394612, -0.441404,
		-0.588823, 0.456088, 0.667286,
		26.555277, 24.991179, 29.390162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573278, 25.083902, 28.479799>,  <26.967453, 24.671915, 28.923061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573278, 25.083902, 28.479799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.444685, 25.190285, 28.843319>,  <26.367529, 25.254114, 29.061430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.444685, 25.190285, 28.843319>,  <26.573278, 25.083902, 28.479799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444685, 25.190285, 28.843319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355349, 0.855720, -0.376125,
		-0.877709, -0.443860, -0.180595,
		-0.321486, 0.265954, 0.908799,
		26.348240, 25.270071, 29.115959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765894, 25.309805, 28.555202>,  <26.573278, 25.083902, 28.479799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765894, 25.309805, 28.555202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.986080, 25.506245, 28.825256>,  <26.118193, 25.624109, 28.987289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.986080, 25.506245, 28.825256>,  <25.765894, 25.309805, 28.555202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986080, 25.506245, 28.825256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224467, 0.865968, -0.446894,
		-0.804115, 0.094454, 0.586922,
		0.550466, 0.491099, 0.675137,
		26.151220, 25.653574, 29.027798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404585, 25.854362, 28.833872>,  <25.765894, 25.309805, 28.555202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404585, 25.854362, 28.833872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.782305, 25.957405, 28.915787>,  <26.008936, 26.019230, 28.964935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.782305, 25.957405, 28.915787>,  <25.404585, 25.854362, 28.833872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782305, 25.957405, 28.915787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139717, 0.877249, -0.459252,
		-0.297955, 0.405059, 0.864378,
		0.944300, 0.257605, 0.204787,
		26.065596, 26.034687, 28.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337152, 26.550589, 29.058559>,  <25.404585, 25.854362, 28.833872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337152, 26.550589, 29.058559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.718220, 26.513142, 28.942867>,  <25.946861, 26.490673, 28.873451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.718220, 26.513142, 28.942867>,  <25.337152, 26.550589, 29.058559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718220, 26.513142, 28.942867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003768, 0.954966, -0.296691,
		0.303981, 0.281559, 0.910121,
		0.952671, -0.093618, -0.289231,
		26.004021, 26.485056, 28.856098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620729, 27.139233, 29.284313>,  <25.337152, 26.550589, 29.058559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620729, 27.139233, 29.284313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.880821, 27.012581, 29.008068>,  <26.036877, 26.936590, 28.842321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.880821, 27.012581, 29.008068>,  <25.620729, 27.139233, 29.284313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880821, 27.012581, 29.008068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061091, 0.927864, -0.367881,
		0.757278, 0.197016, 0.622668,
		0.650229, -0.316627, -0.690615,
		26.075890, 26.917593, 28.800884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188486, 27.680687, 29.286228>,  <25.620729, 27.139233, 29.284313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188486, 27.680687, 29.286228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.244095, 27.472252, 28.949387>,  <26.277460, 27.347191, 28.747282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.244095, 27.472252, 28.949387>,  <26.188486, 27.680687, 29.286228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244095, 27.472252, 28.949387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127284, 0.852712, -0.506637,
		0.982075, -0.036752, 0.184873,
		0.139024, -0.521087, -0.842105,
		26.285803, 27.315926, 28.696754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848558, 27.916382, 29.049219>,  <26.188486, 27.680687, 29.286228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848558, 27.916382, 29.049219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.615215, 27.790386, 28.749760>,  <26.475208, 27.714788, 28.570084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.615215, 27.790386, 28.749760>,  <26.848558, 27.916382, 29.049219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615215, 27.790386, 28.749760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051937, 0.905384, -0.421405,
		0.810551, -0.284713, -0.511806,
		-0.583361, -0.314989, -0.748647,
		26.440207, 27.695890, 28.525166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198450, 28.114483, 28.419153>,  <26.848558, 27.916382, 29.049219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198450, 28.114483, 28.419153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.831388, 28.028866, 28.285233>,  <26.611151, 27.977495, 28.204880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.831388, 28.028866, 28.285233>,  <27.198450, 28.114483, 28.419153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831388, 28.028866, 28.285233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010222, 0.829539, -0.558355,
		0.397244, -0.515800, -0.759044,
		-0.917656, -0.214044, -0.334802,
		26.556091, 27.964653, 28.184792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220537, 28.300577, 27.760637>,  <27.198450, 28.114483, 28.419153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220537, 28.300577, 27.760637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.822767, 28.291733, 27.801884>,  <26.584106, 28.286427, 27.826632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.822767, 28.291733, 27.801884>,  <27.220537, 28.300577, 27.760637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822767, 28.291733, 27.801884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058075, 0.930979, -0.360425,
		-0.088028, -0.364403, -0.927071,
		-0.994424, -0.022112, 0.103115,
		26.524441, 28.285099, 27.832817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986147, 28.454929, 27.118948>,  <27.220537, 28.300577, 27.760637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986147, 28.454929, 27.118948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.683567, 28.537548, 27.367180>,  <26.502018, 28.587120, 27.516119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.683567, 28.537548, 27.367180>,  <26.986147, 28.454929, 27.118948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683567, 28.537548, 27.367180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092277, 0.905632, -0.413903,
		-0.647508, -0.370362, -0.666007,
		-0.756451, 0.206548, 0.620580,
		26.456631, 28.599512, 27.553354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500700, 28.746897, 26.641691>,  <26.986147, 28.454929, 27.118948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500700, 28.746897, 26.641691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.387220, 28.875790, 27.002953>,  <26.319134, 28.953125, 27.219709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.387220, 28.875790, 27.002953>,  <26.500700, 28.746897, 26.641691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387220, 28.875790, 27.002953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286986, 0.870147, -0.400605,
		-0.914962, -0.372842, -0.154382,
		-0.283697, 0.322233, 0.903151,
		26.302111, 28.972460, 27.273897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785685, 28.928469, 26.618093>,  <26.500700, 28.746897, 26.641691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785685, 28.928469, 26.618093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.923367, 29.111385, 26.946095>,  <26.005976, 29.221136, 27.142895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.923367, 29.111385, 26.946095>,  <25.785685, 28.928469, 26.618093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923367, 29.111385, 26.946095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317009, 0.878687, -0.356951,
		-0.883759, -0.137085, 0.447413,
		0.344203, 0.457293, 0.820005,
		26.026628, 29.248573, 27.192097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.719940, 29.910107, 31.680717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.955185, 29.715218, 31.422497>,  <43.096333, 29.598284, 31.267565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.955185, 29.715218, 31.422497>,  <42.719940, 29.910107, 31.680717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955185, 29.715218, 31.422497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094834, 0.751135, -0.653302,
		0.803200, 0.445435, 0.395546,
		0.588112, -0.487221, -0.645554,
		43.131618, 29.569052, 31.228830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247417, 30.424355, 31.518072>,  <42.719940, 29.910107, 31.680717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247417, 30.424355, 31.518072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263599, 30.145954, 31.231312>,  <43.273308, 29.978914, 31.059256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263599, 30.145954, 31.231312>,  <43.247417, 30.424355, 31.518072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263599, 30.145954, 31.231312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002661, 0.717559, -0.696492,
		0.999178, 0.026267, 0.030879,
		0.040452, -0.696002, -0.716900,
		43.275734, 29.937153, 31.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648815, 30.700214, 30.926268>,  <43.247417, 30.424355, 31.518072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648815, 30.700214, 30.926268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429966, 30.413185, 30.753876>,  <43.298656, 30.240967, 30.650440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429966, 30.413185, 30.753876>,  <43.648815, 30.700214, 30.926268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429966, 30.413185, 30.753876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073445, 0.554046, -0.829240,
		0.833823, -0.422045, -0.355834,
		-0.547125, -0.717574, -0.430979,
		43.265827, 30.197914, 30.624582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959270, 30.575298, 30.372536>,  <43.648815, 30.700214, 30.926268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959270, 30.575298, 30.372536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.580589, 30.469460, 30.299053>,  <43.353382, 30.405956, 30.254963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.580589, 30.469460, 30.299053>,  <43.959270, 30.575298, 30.372536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580589, 30.469460, 30.299053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049985, 0.442729, -0.895261,
		0.318213, -0.856727, -0.405906,
		-0.946701, -0.264594, -0.183706,
		43.296577, 30.390081, 30.243940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956013, 30.459320, 29.645391>,  <43.959270, 30.575298, 30.372536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956013, 30.459320, 29.645391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.569118, 30.484989, 29.743645>,  <43.336983, 30.500391, 29.802597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.569118, 30.484989, 29.743645>,  <43.956013, 30.459320, 29.645391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569118, 30.484989, 29.743645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196952, 0.420849, -0.885492,
		-0.160200, -0.904858, -0.394422,
		-0.967236, 0.064174, 0.245634,
		43.278946, 30.504242, 29.817335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634464, 30.379339, 29.084217>,  <43.956013, 30.459320, 29.645391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634464, 30.379339, 29.084217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323788, 30.535446, 29.281979>,  <43.137383, 30.629110, 29.400637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323788, 30.535446, 29.281979>,  <43.634464, 30.379339, 29.084217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323788, 30.535446, 29.281979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296795, 0.465570, -0.833761,
		-0.555568, -0.794316, -0.245777,
		-0.776696, 0.390266, 0.494405,
		43.090778, 30.652525, 29.430300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985493, 30.316813, 28.706198>,  <43.634464, 30.379339, 29.084217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985493, 30.316813, 28.706198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.912437, 30.620316, 28.956295>,  <42.868603, 30.802418, 29.106354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.912437, 30.620316, 28.956295>,  <42.985493, 30.316813, 28.706198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912437, 30.620316, 28.956295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534081, 0.457362, -0.711040,
		-0.825470, -0.463794, 0.321706,
		-0.182640, 0.758759, 0.625242,
		42.857647, 30.847942, 29.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310486, 30.513208, 28.565773>,  <42.985493, 30.316813, 28.706198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310486, 30.513208, 28.565773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.420834, 30.833916, 28.777836>,  <42.487041, 31.026340, 28.905073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.420834, 30.833916, 28.777836>,  <42.310486, 30.513208, 28.565773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420834, 30.833916, 28.777836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573480, 0.579929, -0.578622,
		-0.771372, -0.144407, 0.619784,
		0.275874, 0.801766, 0.530155,
		42.503597, 31.074446, 28.936882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766197, 30.860012, 28.500069>,  <42.310486, 30.513208, 28.565773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766197, 30.860012, 28.500069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039150, 31.118607, 28.636547>,  <42.202923, 31.273764, 28.718435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039150, 31.118607, 28.636547>,  <41.766197, 30.860012, 28.500069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039150, 31.118607, 28.636547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418761, 0.728292, -0.542430,
		-0.599164, 0.227263, 0.767694,
		0.682379, 0.646485, 0.341197,
		42.243862, 31.312551, 28.738907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474258, 31.398258, 28.853607>,  <41.766197, 30.860012, 28.500069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474258, 31.398258, 28.853607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.816998, 31.542484, 28.706196>,  <42.022640, 31.629019, 28.617748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.816998, 31.542484, 28.706196>,  <41.474258, 31.398258, 28.853607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816998, 31.542484, 28.706196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507150, 0.718139, -0.476524,
		0.092838, 0.595206, 0.798192,
		0.856843, 0.360563, -0.368529,
		42.074051, 31.650654, 28.595636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245132, 32.003319, 28.834232>,  <41.474258, 31.398258, 28.853607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245132, 32.003319, 28.834232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.551434, 31.972961, 28.578773>,  <41.735214, 31.954748, 28.425499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.551434, 31.972961, 28.578773>,  <41.245132, 32.003319, 28.834232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551434, 31.972961, 28.578773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402370, 0.718135, -0.567786,
		0.501722, 0.691754, 0.519376,
		0.765750, -0.075889, -0.638645,
		41.781158, 31.950195, 28.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499935, 32.664505, 28.679295>,  <41.245132, 32.003319, 28.834232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499935, 32.664505, 28.679295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.647743, 32.450649, 28.375290>,  <41.736427, 32.322334, 28.192888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.647743, 32.450649, 28.375290>,  <41.499935, 32.664505, 28.679295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647743, 32.450649, 28.375290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265689, 0.722962, -0.637758,
		0.890430, 0.437590, 0.125100,
		0.369519, -0.534641, -0.760010,
		41.758598, 32.290257, 28.147287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850189, 33.197815, 28.202217>,  <41.499935, 32.664505, 28.679295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850189, 33.197815, 28.202217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793289, 32.862411, 27.991817>,  <41.759148, 32.661171, 27.865578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793289, 32.862411, 27.991817>,  <41.850189, 33.197815, 28.202217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793289, 32.862411, 27.991817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391582, 0.535724, -0.748107,
		0.909081, 0.099550, -0.404551,
		-0.142254, -0.838504, -0.525998,
		41.750614, 32.610859, 27.834019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315140, 33.193672, 27.566629>,  <41.850189, 33.197815, 28.202217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315140, 33.193672, 27.566629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.041466, 32.916462, 27.475758>,  <41.877262, 32.750137, 27.421234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.041466, 32.916462, 27.475758>,  <42.315140, 33.193672, 27.566629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041466, 32.916462, 27.475758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170814, 0.455106, -0.873900,
		0.709024, -0.559103, -0.429754,
		-0.684184, -0.693024, -0.227178,
		41.836212, 32.708553, 27.407604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397118, 32.981422, 26.857985>,  <42.315140, 33.193672, 27.566629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397118, 32.981422, 26.857985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.029289, 32.856743, 26.953674>,  <41.808590, 32.781937, 27.011087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.029289, 32.856743, 26.953674>,  <42.397118, 32.981422, 26.857985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029289, 32.856743, 26.953674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361033, 0.430053, -0.827472,
		0.155040, -0.847290, -0.507998,
		-0.919575, -0.311696, 0.239224,
		41.753418, 32.763233, 27.025442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127182, 32.737408, 26.239407>,  <42.397118, 32.981422, 26.857985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127182, 32.737408, 26.239407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.783249, 32.797981, 26.434444>,  <41.576889, 32.834328, 26.551468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.783249, 32.797981, 26.434444>,  <42.127182, 32.737408, 26.239407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783249, 32.797981, 26.434444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399529, 0.395052, -0.827231,
		-0.317899, -0.906091, -0.279176,
		-0.859835, 0.151437, 0.487596,
		41.525299, 32.843410, 26.580723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652454, 32.278286, 25.907978>,  <42.127182, 32.737408, 26.239407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652454, 32.278286, 25.907978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467339, 32.573051, 26.105068>,  <41.356270, 32.749912, 26.223322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467339, 32.573051, 26.105068>,  <41.652454, 32.278286, 25.907978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467339, 32.573051, 26.105068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602643, 0.146091, -0.784524,
		-0.650112, -0.660008, 0.376489,
		-0.462791, 0.736917, 0.492725,
		41.328503, 32.794125, 26.252886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988098, 32.233635, 25.698488>,  <41.652454, 32.278286, 25.907978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988098, 32.233635, 25.698488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006641, 32.594254, 25.870564>,  <41.017765, 32.810623, 25.973808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006641, 32.594254, 25.870564>,  <40.988098, 32.233635, 25.698488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006641, 32.594254, 25.870564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458292, 0.401848, -0.792771,
		-0.887592, -0.160405, 0.431799,
		0.046353, 0.901548, 0.430190,
		41.020546, 32.864719, 25.999620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355328, 32.490456, 25.624088>,  <40.988098, 32.233635, 25.698488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355328, 32.490456, 25.624088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.550446, 32.821896, 25.733986>,  <40.667515, 33.020760, 25.799925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.550446, 32.821896, 25.733986>,  <40.355328, 32.490456, 25.624088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550446, 32.821896, 25.733986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508360, 0.525482, -0.682231,
		-0.709667, 0.193121, 0.677553,
		0.487795, 0.828597, 0.274742,
		40.696785, 33.070477, 25.816408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888901, 32.994823, 25.775555>,  <40.355328, 32.490456, 25.624088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888901, 32.994823, 25.775555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219017, 33.192020, 25.665382>,  <40.417088, 33.310337, 25.599279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219017, 33.192020, 25.665382>,  <39.888901, 32.994823, 25.775555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219017, 33.192020, 25.665382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535377, 0.527884, -0.659326,
		-0.179648, 0.691590, 0.699592,
		0.825286, 0.492992, -0.275428,
		40.466602, 33.339920, 25.582754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655251, 33.658298, 25.738630>,  <39.888901, 32.994823, 25.775555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655251, 33.658298, 25.738630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.999084, 33.670853, 25.534618>,  <40.205383, 33.678383, 25.412210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.999084, 33.670853, 25.534618>,  <39.655251, 33.658298, 25.738630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999084, 33.670853, 25.534618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373950, 0.718855, -0.586011,
		0.348247, 0.694451, 0.629652,
		0.859584, 0.031382, -0.510029,
		40.256958, 33.680267, 25.381609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200096, 33.468376, 25.155085>,  <39.655251, 33.658298, 25.738630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200096, 33.468376, 25.155085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915226, 33.197327, 25.081722>,  <38.744305, 33.034698, 25.037704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915226, 33.197327, 25.081722>,  <39.200096, 33.468376, 25.155085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915226, 33.197327, 25.081722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127540, -0.381806, 0.915400,
		-0.690324, 0.628530, 0.358335,
		-0.712171, -0.677624, -0.183407,
		38.701576, 32.994038, 25.026701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773075, 33.360710, 25.786264>,  <39.200096, 33.468376, 25.155085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773075, 33.360710, 25.786264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677738, 33.034279, 25.575665>,  <38.620537, 32.838421, 25.449305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677738, 33.034279, 25.575665>,  <38.773075, 33.360710, 25.786264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677738, 33.034279, 25.575665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060763, -0.553592, 0.830569,
		-0.969278, 0.165969, 0.181533,
		-0.238344, -0.816082, -0.526500,
		38.606236, 32.789455, 25.417715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114006, 33.075798, 26.081385>,  <38.773075, 33.360710, 25.786264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114006, 33.075798, 26.081385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291817, 32.767776, 25.898338>,  <38.398502, 32.582962, 25.788509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291817, 32.767776, 25.898338>,  <38.114006, 33.075798, 26.081385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291817, 32.767776, 25.898338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015124, -0.517247, 0.855702,
		-0.895637, -0.373463, -0.241577,
		0.444528, -0.770052, -0.457618,
		38.425175, 32.536762, 25.761053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769508, 32.503468, 26.270788>,  <38.114006, 33.075798, 26.081385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769508, 32.503468, 26.270788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133953, 32.377552, 26.164368>,  <38.352619, 32.302002, 26.100515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133953, 32.377552, 26.164368>,  <37.769508, 32.503468, 26.270788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133953, 32.377552, 26.164368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103728, -0.449595, 0.887189,
		-0.398889, -0.835927, -0.376980,
		0.911114, -0.314787, -0.266047,
		38.407288, 32.283115, 26.084553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735191, 31.694878, 26.358015>,  <37.769508, 32.503468, 26.270788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735191, 31.694878, 26.358015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132366, 31.726456, 26.322605>,  <38.370670, 31.745403, 26.301359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132366, 31.726456, 26.322605>,  <37.735191, 31.694878, 26.358015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132366, 31.726456, 26.322605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117900, -0.575091, 0.809550,
		0.013002, -0.814272, -0.580338,
		0.992940, 0.078947, -0.088526,
		38.430248, 31.750139, 26.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063534, 30.982252, 26.408846>,  <37.735191, 31.694878, 26.358015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063534, 30.982252, 26.408846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.369846, 31.224854, 26.494385>,  <38.553635, 31.370415, 26.545708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.369846, 31.224854, 26.494385>,  <38.063534, 30.982252, 26.408846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369846, 31.224854, 26.494385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289812, -0.622308, 0.727146,
		0.574093, -0.494862, -0.652325,
		0.765784, 0.606502, 0.213846,
		38.599583, 31.406803, 26.558538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533978, 30.520782, 26.546549>,  <38.063534, 30.982252, 26.408846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533978, 30.520782, 26.546549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697029, 30.847984, 26.708885>,  <38.794861, 31.044306, 26.806288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697029, 30.847984, 26.708885>,  <38.533978, 30.520782, 26.546549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697029, 30.847984, 26.708885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472420, -0.569257, 0.672879,
		0.781446, -0.082557, -0.618487,
		0.407628, 0.818004, 0.405842,
		38.819317, 31.093386, 26.830637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269253, 30.494139, 26.606567>,  <38.533978, 30.520782, 26.546549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269253, 30.494139, 26.606567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153812, 30.726818, 26.910763>,  <39.084549, 30.866425, 27.093279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153812, 30.726818, 26.910763>,  <39.269253, 30.494139, 26.606567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153812, 30.726818, 26.910763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496424, -0.588271, 0.638357,
		0.818703, 0.561752, -0.118995,
		-0.288597, 0.581697, 0.760487,
		39.067234, 30.901327, 27.138908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777596, 30.411919, 27.058147>,  <39.269253, 30.494139, 26.606567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777596, 30.411919, 27.058147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504105, 30.603233, 27.278603>,  <39.340008, 30.718021, 27.410875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504105, 30.603233, 27.278603>,  <39.777596, 30.411919, 27.058147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504105, 30.603233, 27.278603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474984, -0.281675, 0.833696,
		0.553987, 0.831806, -0.034588,
		-0.683731, 0.478286, 0.551139,
		39.298985, 30.746719, 27.443945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208836, 30.596310, 27.606922>,  <39.777596, 30.411919, 27.058147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208836, 30.596310, 27.606922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832996, 30.632057, 27.739086>,  <39.607494, 30.653505, 27.818384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832996, 30.632057, 27.739086>,  <40.208836, 30.596310, 27.606922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832996, 30.632057, 27.739086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321287, -0.102617, 0.941406,
		0.118039, 0.990698, 0.067705,
		-0.939596, 0.089370, 0.330411,
		39.551117, 30.658869, 27.838209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321369, 31.046499, 28.146091>,  <40.208836, 30.596310, 27.606922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321369, 31.046499, 28.146091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981792, 30.840538, 28.193722>,  <39.778046, 30.716961, 28.222300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981792, 30.840538, 28.193722>,  <40.321369, 31.046499, 28.146091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981792, 30.840538, 28.193722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277632, -0.242789, 0.929502,
		-0.449694, 0.822148, 0.349067,
		-0.848938, -0.514904, 0.119074,
		39.727112, 30.686068, 28.229445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038475, 31.210415, 28.838799>,  <40.321369, 31.046499, 28.146091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038475, 31.210415, 28.838799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843201, 30.866386, 28.779530>,  <39.726036, 30.659969, 28.743969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843201, 30.866386, 28.779530>,  <40.038475, 31.210415, 28.838799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843201, 30.866386, 28.779530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156590, -0.253342, 0.954619,
		-0.858576, 0.442830, 0.258356,
		-0.488187, -0.860069, -0.148171,
		39.696743, 30.608366, 28.735079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660538, 31.072603, 29.485979>,  <40.038475, 31.210415, 28.838799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660538, 31.072603, 29.485979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668934, 30.712639, 29.311752>,  <39.673969, 30.496660, 29.207216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668934, 30.712639, 29.311752>,  <39.660538, 31.072603, 29.485979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668934, 30.712639, 29.311752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233923, -0.419149, 0.877265,
		-0.972028, -0.120299, 0.201714,
		0.020986, -0.899912, -0.435565,
		39.675228, 30.442665, 29.181082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143810, 30.620449, 29.857491>,  <39.660538, 31.072603, 29.485979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143810, 30.620449, 29.857491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435635, 30.404633, 29.689377>,  <39.610729, 30.275143, 29.588509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435635, 30.404633, 29.689377>,  <39.143810, 30.620449, 29.857491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435635, 30.404633, 29.689377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114299, -0.509694, 0.852730,
		-0.674297, -0.670156, -0.310184,
		0.729561, -0.539540, -0.420283,
		39.654503, 30.242771, 29.563292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972198, 30.016563, 30.120180>,  <39.143810, 30.620449, 29.857491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972198, 30.016563, 30.120180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347607, 29.956181, 29.995995>,  <39.572853, 29.919950, 29.921484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347607, 29.956181, 29.995995>,  <38.972198, 30.016563, 30.120180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347607, 29.956181, 29.995995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159433, -0.608136, 0.777658,
		-0.306195, -0.779348, -0.546682,
		0.938523, -0.150956, -0.310462,
		39.629162, 29.910894, 29.902857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150421, 29.296478, 30.193436>,  <38.972198, 30.016563, 30.120180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150421, 29.296478, 30.193436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527027, 29.426300, 30.157169>,  <39.752991, 29.504192, 30.135410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527027, 29.426300, 30.157169>,  <39.150421, 29.296478, 30.193436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527027, 29.426300, 30.157169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300549, -0.687077, 0.661510,
		0.152402, -0.650068, -0.744436,
		0.941511, 0.324555, -0.090666,
		39.809479, 29.523666, 30.129971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572216, 28.698839, 30.346949>,  <39.150421, 29.296478, 30.193436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572216, 28.698839, 30.346949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827484, 29.003803, 30.389793>,  <39.980644, 29.186781, 30.415501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827484, 29.003803, 30.389793>,  <39.572216, 28.698839, 30.346949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827484, 29.003803, 30.389793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422347, -0.463005, 0.779263,
		0.643711, -0.452062, -0.617476,
		0.638169, 0.762409, 0.107114,
		40.018936, 29.232527, 30.421928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260555, 28.431753, 30.290125>,  <39.572216, 28.698839, 30.346949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260555, 28.431753, 30.290125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279869, 28.782719, 30.481045>,  <40.291458, 28.993298, 30.595596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279869, 28.782719, 30.481045>,  <40.260555, 28.431753, 30.290125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279869, 28.782719, 30.481045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562003, -0.418904, 0.713212,
		0.825724, 0.233806, -0.513336,
		0.048285, 0.877414, 0.477298,
		40.294353, 29.045942, 30.624235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870918, 28.394388, 30.541250>,  <40.260555, 28.431753, 30.290125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870918, 28.394388, 30.541250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697483, 28.687878, 30.750496>,  <40.593422, 28.863972, 30.876043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697483, 28.687878, 30.750496>,  <40.870918, 28.394388, 30.541250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697483, 28.687878, 30.750496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374123, -0.381548, 0.845253,
		0.819775, 0.562203, -0.109067,
		-0.433590, 0.733722, 0.523117,
		40.567406, 28.907995, 30.907431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438351, 28.598923, 30.862959>,  <40.870918, 28.394388, 30.541250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438351, 28.598923, 30.862959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.120468, 28.721558, 31.072510>,  <40.929741, 28.795139, 31.198240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.120468, 28.721558, 31.072510>,  <41.438351, 28.598923, 30.862959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120468, 28.721558, 31.072510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425396, -0.334351, 0.840980,
		0.432994, 0.891187, 0.135289,
		-0.794704, 0.306588, 0.523879,
		40.882057, 28.813534, 31.229673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634228, 29.109070, 31.409449>,  <41.438351, 28.598923, 30.862959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634228, 29.109070, 31.409449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305561, 28.896996, 31.493130>,  <41.108360, 28.769751, 31.543339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305561, 28.896996, 31.493130>,  <41.634228, 29.109070, 31.409449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305561, 28.896996, 31.493130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417244, -0.309467, 0.854481,
		-0.388290, 0.789389, 0.475495,
		-0.821668, -0.530184, 0.209204,
		41.059059, 28.737940, 31.555891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.804651, 25.949099, 32.113762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.203596, 25.936222, 32.139793>,  <27.442963, 25.928495, 32.155411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.203596, 25.936222, 32.139793>,  <26.804651, 25.949099, 32.113762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203596, 25.936222, 32.139793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047298, -0.968127, 0.245952,
		0.055086, -0.248381, -0.967095,
		0.997361, -0.032193, 0.065079,
		27.502804, 25.926563, 32.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086113, 25.413473, 31.593163>,  <26.804651, 25.949099, 32.113762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086113, 25.413473, 31.593163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.332035, 25.476833, 31.902206>,  <27.479589, 25.514849, 32.087631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.332035, 25.476833, 31.902206>,  <27.086113, 25.413473, 31.593163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332035, 25.476833, 31.902206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026349, -0.983202, 0.180607,
		0.788237, -0.090681, -0.608653,
		0.614807, 0.158398, 0.772607,
		27.516478, 25.524353, 32.133987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480234, 24.889769, 31.525713>,  <27.086113, 25.413473, 31.593163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480234, 24.889769, 31.525713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568920, 25.021534, 31.892826>,  <27.622131, 25.100594, 32.113094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568920, 25.021534, 31.892826>,  <27.480234, 24.889769, 31.525713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568920, 25.021534, 31.892826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317506, -0.914306, 0.251465,
		0.921972, 0.235649, -0.307306,
		0.221714, 0.329415, 0.917784,
		27.635435, 25.120359, 32.168163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101362, 24.516745, 31.742292>,  <27.480234, 24.889769, 31.525713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101362, 24.516745, 31.742292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.977112, 24.665852, 32.092049>,  <27.902561, 24.755316, 32.301903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.977112, 24.665852, 32.092049>,  <28.101362, 24.516745, 31.742292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977112, 24.665852, 32.092049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149600, -0.889257, 0.432252,
		0.938686, 0.265077, 0.220460,
		-0.310625, 0.372768, 0.874389,
		27.883924, 24.777681, 32.354366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562052, 24.373928, 32.331898>,  <28.101362, 24.516745, 31.742292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562052, 24.373928, 32.331898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.207415, 24.422165, 32.510517>,  <27.994633, 24.451107, 32.617691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.207415, 24.422165, 32.510517>,  <28.562052, 24.373928, 32.331898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207415, 24.422165, 32.510517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073031, -0.916811, 0.392585,
		0.456746, 0.380676, 0.804033,
		-0.886594, 0.120593, 0.446551,
		27.941437, 24.458344, 32.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570599, 24.122576, 33.035557>,  <28.562052, 24.373928, 32.331898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570599, 24.122576, 33.035557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.189312, 24.127998, 32.914761>,  <27.960541, 24.131252, 32.842285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.189312, 24.127998, 32.914761>,  <28.570599, 24.122576, 33.035557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189312, 24.127998, 32.914761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106572, -0.949921, 0.293755,
		-0.282884, 0.312195, 0.906924,
		-0.953215, 0.013554, -0.301989,
		27.903347, 24.132065, 32.824165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153229, 23.955395, 33.598782>,  <28.570599, 24.122576, 33.035557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153229, 23.955395, 33.598782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.915539, 23.886944, 33.284428>,  <27.772924, 23.845873, 33.095814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.915539, 23.886944, 33.284428>,  <28.153229, 23.955395, 33.598782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915539, 23.886944, 33.284428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150689, -0.936114, 0.317780,
		-0.790058, 0.307256, 0.530474,
		-0.594224, -0.171128, -0.785884,
		27.737272, 23.835606, 33.048664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652203, 23.725666, 33.934624>,  <28.153229, 23.955395, 33.598782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652203, 23.725666, 33.934624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598974, 23.603065, 33.557613>,  <27.567038, 23.529505, 33.331409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598974, 23.603065, 33.557613>,  <27.652203, 23.725666, 33.934624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598974, 23.603065, 33.557613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322382, -0.885880, 0.333597,
		-0.937210, 0.348244, 0.019074,
		-0.133070, -0.306501, -0.942523,
		27.559053, 23.511116, 33.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969723, 23.333933, 33.929531>,  <27.652203, 23.725666, 33.934624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969723, 23.333933, 33.929531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.184692, 23.217133, 33.613071>,  <27.313673, 23.147053, 33.423195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.184692, 23.217133, 33.613071>,  <26.969723, 23.333933, 33.929531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184692, 23.217133, 33.613071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199171, -0.955549, 0.217385,
		-0.819456, 0.040746, -0.571692,
		0.537422, -0.292002, -0.791147,
		27.345919, 23.129532, 33.375729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559917, 22.738443, 33.648155>,  <26.969723, 23.333933, 33.929531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559917, 22.738443, 33.648155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.918949, 22.716011, 33.473244>,  <27.134367, 22.702553, 33.368298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.918949, 22.716011, 33.473244>,  <26.559917, 22.738443, 33.648155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918949, 22.716011, 33.473244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032734, -0.980661, 0.192958,
		-0.439638, -0.187509, -0.878384,
		0.897578, -0.056079, -0.437274,
		27.188223, 22.699188, 33.342060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517385, 22.275915, 33.076443>,  <26.559917, 22.738443, 33.648155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517385, 22.275915, 33.076443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.891460, 22.294003, 33.216942>,  <27.115906, 22.304855, 33.301243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.891460, 22.294003, 33.216942>,  <26.517385, 22.275915, 33.076443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891460, 22.294003, 33.216942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006188, -0.993750, 0.111458,
		0.354094, -0.102061, -0.929624,
		0.935189, 0.045219, 0.351249,
		27.172018, 22.307568, 33.322315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894121, 21.803843, 32.636768>,  <26.517385, 22.275915, 33.076443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894121, 21.803843, 32.636768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.097889, 21.857704, 32.976734>,  <27.220150, 21.890020, 33.180714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.097889, 21.857704, 32.976734>,  <26.894121, 21.803843, 32.636768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097889, 21.857704, 32.976734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019967, -0.985566, 0.168113,
		0.860287, -0.102610, -0.499376,
		0.509418, 0.134654, 0.849918,
		27.250715, 21.898100, 33.231709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672812, 21.235346, 32.950584>,  <26.894121, 21.803843, 32.636768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672812, 21.235346, 32.950584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.011826, 21.303974, 33.151482>,  <27.215235, 21.345150, 33.272018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.011826, 21.303974, 33.151482>,  <26.672812, 21.235346, 32.950584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011826, 21.303974, 33.151482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371382, -0.484315, 0.792158,
		0.379152, -0.857906, -0.346757,
		0.847537, 0.171569, 0.502240,
		27.266087, 21.355444, 33.302155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892288, 20.596796, 33.346050>,  <26.672812, 21.235346, 32.950584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892288, 20.596796, 33.346050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.023214, 20.937351, 33.510002>,  <27.101770, 21.141684, 33.608376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.023214, 20.937351, 33.510002>,  <26.892288, 20.596796, 33.346050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023214, 20.937351, 33.510002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324849, -0.305948, 0.894913,
		0.887321, -0.426067, 0.176431,
		0.327314, 0.851389, 0.409882,
		27.121408, 21.192768, 33.632965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409578, 20.349087, 32.895870>,  <26.892288, 20.596796, 33.346050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409578, 20.349087, 32.895870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.519182, 20.064034, 32.637547>,  <26.584944, 19.893002, 32.482552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.519182, 20.064034, 32.637547>,  <26.409578, 20.349087, 32.895870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519182, 20.064034, 32.637547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082820, 0.686505, -0.722393,
		0.958154, 0.144457, 0.247129,
		0.274010, -0.712631, -0.645814,
		26.601385, 19.850245, 32.443802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021173, 20.528904, 32.578545>,  <26.409578, 20.349087, 32.895870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021173, 20.528904, 32.578545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.822443, 20.295471, 32.321609>,  <26.703205, 20.155413, 32.167450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.822443, 20.295471, 32.321609>,  <27.021173, 20.528904, 32.578545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822443, 20.295471, 32.321609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025970, 0.729819, -0.683147,
		0.867463, -0.356085, -0.347435,
		-0.496823, -0.583582, -0.642339,
		26.673395, 20.120398, 32.128906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238237, 20.808254, 31.992113>,  <27.021173, 20.528904, 32.578545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238237, 20.808254, 31.992113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.912682, 20.617039, 31.860012>,  <26.717348, 20.502310, 31.780752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.912682, 20.617039, 31.860012>,  <27.238237, 20.808254, 31.992113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912682, 20.617039, 31.860012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040216, 0.613385, -0.788759,
		0.579625, -0.628683, -0.518453,
		-0.813891, -0.478034, -0.330250,
		26.668514, 20.473627, 31.760937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396326, 20.791897, 31.301420>,  <27.238237, 20.808254, 31.992113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396326, 20.791897, 31.301420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.004250, 20.721909, 31.338543>,  <26.769005, 20.679914, 31.360817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.004250, 20.721909, 31.338543>,  <27.396326, 20.791897, 31.301420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004250, 20.721909, 31.338543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176690, 0.560748, -0.808914,
		0.089495, -0.809287, -0.580555,
		-0.980189, -0.174972, 0.092809,
		26.710194, 20.669416, 31.366385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123203, 20.720379, 30.517096>,  <27.396326, 20.791897, 31.301420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123203, 20.720379, 30.517096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.794964, 20.791142, 30.734470>,  <26.598021, 20.833599, 30.864895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.794964, 20.791142, 30.734470>,  <27.123203, 20.720379, 30.517096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794964, 20.791142, 30.734470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221623, 0.777974, -0.587911,
		-0.526784, -0.602877, -0.599198,
		-0.820599, 0.176906, 0.543436,
		26.548784, 20.844213, 30.897501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548487, 20.854391, 30.063173>,  <27.123203, 20.720379, 30.517096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548487, 20.854391, 30.063173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.427570, 21.008156, 30.412079>,  <26.355021, 21.100414, 30.621422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.427570, 21.008156, 30.412079>,  <26.548487, 20.854391, 30.063173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427570, 21.008156, 30.412079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227525, 0.859529, -0.457649,
		-0.925663, -0.336806, -0.172366,
		-0.302293, 0.384411, 0.872266,
		26.336882, 21.123480, 30.673758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836641, 21.093380, 30.005230>,  <26.548487, 20.854391, 30.063173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836641, 21.093380, 30.005230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.025003, 21.302746, 30.289284>,  <26.138020, 21.428366, 30.459715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.025003, 21.302746, 30.289284>,  <25.836641, 21.093380, 30.005230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025003, 21.302746, 30.289284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252896, 0.851280, -0.459746,
		-0.845159, 0.036906, 0.533239,
		0.470903, 0.523413, 0.710133,
		26.166275, 21.459770, 30.502323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530430, 21.686989, 29.954536>,  <25.836641, 21.093380, 30.005230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530430, 21.686989, 29.954536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.825533, 21.807369, 30.196243>,  <26.002596, 21.879599, 30.341267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.825533, 21.807369, 30.196243>,  <25.530430, 21.686989, 29.954536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825533, 21.807369, 30.196243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155653, 0.946844, -0.281530,
		-0.656873, 0.113646, 0.745387,
		0.737760, 0.300952, 0.604267,
		26.046862, 21.897655, 30.377523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281834, 22.287754, 30.222090>,  <25.530430, 21.686989, 29.954536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281834, 22.287754, 30.222090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.671541, 22.328766, 30.302380>,  <25.905365, 22.353373, 30.350554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.671541, 22.328766, 30.302380>,  <25.281834, 22.287754, 30.222090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671541, 22.328766, 30.302380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102287, 0.994687, -0.011616,
		-0.200850, -0.009215, 0.979578,
		0.974267, 0.102531, 0.200726,
		25.963821, 22.359526, 30.362597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305069, 22.700033, 30.811962>,  <25.281834, 22.287754, 30.222090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305069, 22.700033, 30.811962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.642374, 22.725056, 30.598423>,  <25.844757, 22.740070, 30.470301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.642374, 22.725056, 30.598423>,  <25.305069, 22.700033, 30.811962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642374, 22.725056, 30.598423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, 0.989962, -0.074099,
		0.523853, 0.126733, 0.842329,
		0.843264, 0.062557, -0.533847,
		25.895353, 22.743822, 30.438269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652348, 23.479668, 31.039724>,  <25.305069, 22.700033, 30.811962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652348, 23.479668, 31.039724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847769, 23.344154, 30.718094>,  <25.965021, 23.262846, 30.525116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847769, 23.344154, 30.718094>,  <25.652348, 23.479668, 31.039724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847769, 23.344154, 30.718094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405522, 0.904129, -0.134546,
		0.772572, -0.260337, 0.579101,
		0.488555, -0.338784, -0.804077,
		25.994335, 23.242519, 30.476871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252081, 23.809942, 31.118795>,  <25.652348, 23.479668, 31.039724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252081, 23.809942, 31.118795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.207466, 23.719257, 30.731773>,  <26.180696, 23.664846, 30.499559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.207466, 23.719257, 30.731773>,  <26.252081, 23.809942, 31.118795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207466, 23.719257, 30.731773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243600, 0.937687, -0.247794,
		0.963441, -0.263334, -0.049361,
		-0.111538, -0.226711, -0.967554,
		26.174006, 23.651245, 30.441507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884085, 24.059143, 30.713308>,  <26.252081, 23.809942, 31.118795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884085, 24.059143, 30.713308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.627729, 23.999104, 30.412182>,  <26.473915, 23.963079, 30.231506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.627729, 23.999104, 30.412182>,  <26.884085, 24.059143, 30.713308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627729, 23.999104, 30.412182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366161, 0.802161, -0.471661,
		0.674675, -0.577934, -0.459136,
		-0.640890, -0.150100, -0.752814,
		26.435463, 23.954073, 30.186338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274515, 24.160578, 30.134626>,  <26.884085, 24.059143, 30.713308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274515, 24.160578, 30.134626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.899099, 24.229172, 30.014801>,  <26.673851, 24.270329, 29.942905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.899099, 24.229172, 30.014801>,  <27.274515, 24.160578, 30.134626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899099, 24.229172, 30.014801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286396, 0.871304, -0.398505,
		0.192673, -0.459806, -0.866865,
		-0.938538, 0.171485, -0.299563,
		26.617538, 24.280617, 29.924932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678633, 23.648611, 29.752132>,  <27.274515, 24.160578, 30.134626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678633, 23.648611, 29.752132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.055670, 23.766441, 29.689205>,  <28.281891, 23.837139, 29.651449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.055670, 23.766441, 29.689205>,  <27.678633, 23.648611, 29.752132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055670, 23.766441, 29.689205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314102, -0.622055, 0.717208,
		0.113412, -0.725447, -0.678870,
		0.942591, 0.294574, -0.157316,
		28.338448, 23.854813, 29.642010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014622, 23.055624, 29.413172>,  <27.678633, 23.648611, 29.752132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014622, 23.055624, 29.413172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.278227, 23.293453, 29.597427>,  <28.436390, 23.436150, 29.707981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.278227, 23.293453, 29.597427>,  <28.014622, 23.055624, 29.413172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278227, 23.293453, 29.597427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347737, -0.783914, 0.514353,
		0.666921, -0.178783, -0.723363,
		0.659011, 0.594572, 0.460639,
		28.475931, 23.471825, 29.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590094, 22.601841, 29.460958>,  <28.014622, 23.055624, 29.413172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590094, 22.601841, 29.460958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.638077, 22.879078, 29.745277>,  <28.666866, 23.045420, 29.915869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.638077, 22.879078, 29.745277>,  <28.590094, 22.601841, 29.460958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638077, 22.879078, 29.745277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432946, -0.680822, 0.590795,
		0.893403, 0.236868, -0.381739,
		0.119956, 0.693091, 0.710800,
		28.674063, 23.087006, 29.958517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298264, 22.539894, 29.688976>,  <28.590094, 22.601841, 29.460958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298264, 22.539894, 29.688976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110987, 22.726814, 29.988956>,  <28.998621, 22.838966, 30.168945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110987, 22.726814, 29.988956>,  <29.298264, 22.539894, 29.688976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110987, 22.726814, 29.988956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275462, -0.729239, 0.626363,
		0.839593, 0.499841, 0.212701,
		-0.468192, 0.467299, 0.749952,
		28.970530, 22.867004, 30.213942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768129, 22.550192, 30.177620>,  <29.298264, 22.539894, 29.688976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768129, 22.550192, 30.177620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432455, 22.605648, 30.387970>,  <29.231050, 22.638922, 30.514181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432455, 22.605648, 30.387970>,  <29.768129, 22.550192, 30.177620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432455, 22.605648, 30.387970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303735, -0.682621, 0.664660,
		0.451125, 0.717500, 0.530735,
		-0.839185, 0.138642, 0.525877,
		29.180700, 22.647242, 30.545732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952087, 22.574469, 30.901052>,  <29.768129, 22.550192, 30.177620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952087, 22.574469, 30.901052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.567730, 22.464317, 30.912739>,  <29.337116, 22.398228, 30.919750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.567730, 22.464317, 30.912739>,  <29.952087, 22.574469, 30.901052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567730, 22.464317, 30.912739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231962, -0.742762, 0.628091,
		-0.151261, 0.610305, 0.777591,
		-0.960892, -0.275377, 0.029216,
		29.279463, 22.381704, 30.921503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817024, 22.484161, 31.625162>,  <29.952087, 22.574469, 30.901052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817024, 22.484161, 31.625162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.536167, 22.295380, 31.411900>,  <29.367653, 22.182112, 31.283941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.536167, 22.295380, 31.411900>,  <29.817024, 22.484161, 31.625162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536167, 22.295380, 31.411900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209169, -0.852456, 0.479132,
		-0.680620, 0.224899, 0.697264,
		-0.702143, -0.471953, -0.533156,
		29.325523, 22.153793, 31.251953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911045, 22.800577, 32.378017>,  <29.817024, 22.484161, 31.625162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911045, 22.800577, 32.378017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309032, 22.840595, 32.380241>,  <30.547825, 22.864605, 32.381577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309032, 22.840595, 32.380241>,  <29.911045, 22.800577, 32.378017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309032, 22.840595, 32.380241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073624, 0.767586, -0.636704,
		-0.067964, 0.633091, 0.771089,
		0.994968, 0.100044, 0.005557,
		30.607523, 22.870609, 32.381908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961340, 23.440683, 32.682552>,  <29.911045, 22.800577, 32.378017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961340, 23.440683, 32.682552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331354, 23.391411, 32.538811>,  <30.553362, 23.361847, 32.452564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331354, 23.391411, 32.538811>,  <29.961340, 23.440683, 32.682552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331354, 23.391411, 32.538811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023436, 0.962672, -0.269654,
		0.379158, 0.241018, 0.893392,
		0.925035, -0.123179, -0.359357,
		30.608864, 23.354458, 32.431004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463505, 23.919344, 33.001045>,  <29.961340, 23.440683, 32.682552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463505, 23.919344, 33.001045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624706, 23.823044, 32.647858>,  <30.721426, 23.765265, 32.435947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624706, 23.823044, 32.647858>,  <30.463505, 23.919344, 33.001045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624706, 23.823044, 32.647858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130166, 0.970050, -0.205084,
		0.905895, -0.032283, 0.422270,
		0.403003, -0.240750, -0.882966,
		30.745607, 23.750818, 32.382969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011992, 24.294905, 32.981968>,  <30.463505, 23.919344, 33.001045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011992, 24.294905, 32.981968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.958549, 24.198891, 32.597359>,  <30.926485, 24.141283, 32.366592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.958549, 24.198891, 32.597359>,  <31.011992, 24.294905, 32.981968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958549, 24.198891, 32.597359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234993, 0.934882, -0.266033,
		0.962771, -0.261495, -0.068497,
		-0.133603, -0.240033, -0.961527,
		30.918468, 24.126881, 32.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683264, 24.422348, 32.599625>,  <31.011992, 24.294905, 32.981968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683264, 24.422348, 32.599625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372061, 24.439888, 32.348934>,  <31.185339, 24.450413, 32.198521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372061, 24.439888, 32.348934>,  <31.683264, 24.422348, 32.599625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372061, 24.439888, 32.348934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307112, 0.896797, -0.318494,
		0.548078, -0.440265, -0.711180,
		-0.778006, 0.043852, -0.626725,
		31.138659, 24.453043, 32.160915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919691, 24.630390, 32.081799>,  <31.683264, 24.422348, 32.599625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919691, 24.630390, 32.081799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.542751, 24.723885, 31.986012>,  <31.316587, 24.779982, 31.928539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.542751, 24.723885, 31.986012>,  <31.919691, 24.630390, 32.081799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542751, 24.723885, 31.986012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333250, 0.720407, -0.608242,
		0.030342, -0.652979, -0.756769,
		-0.942350, 0.233738, -0.239464,
		31.260046, 24.794006, 31.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031803, 24.886219, 31.417120>,  <31.919691, 24.630390, 32.081799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031803, 24.886219, 31.417120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673479, 25.033367, 31.516880>,  <31.458485, 25.121656, 31.576736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673479, 25.033367, 31.516880>,  <32.031803, 24.886219, 31.417120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673479, 25.033367, 31.516880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092418, 0.703066, -0.705093,
		-0.434728, -0.608579, -0.663810,
		-0.895807, 0.367872, 0.249399,
		31.404737, 25.143728, 31.591700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.527977, 22.875677, 35.254612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246641, 22.839306, 34.972607>,  <29.077841, 22.817484, 34.803402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246641, 22.839306, 34.972607>,  <29.527977, 22.875677, 35.254612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246641, 22.839306, 34.972607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130911, 0.958254, -0.254189,
		0.698697, -0.271075, -0.662074,
		-0.703339, -0.090929, -0.705015,
		29.035639, 22.812027, 34.761101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858164, 23.049597, 34.594734>,  <29.527977, 22.875677, 35.254612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858164, 23.049597, 34.594734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.464315, 23.118458, 34.606644>,  <29.228006, 23.159775, 34.613789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.464315, 23.118458, 34.606644>,  <29.858164, 23.049597, 34.594734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464315, 23.118458, 34.606644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, 0.963299, -0.214075,
		-0.065533, -0.205961, -0.976363,
		-0.984621, 0.172150, 0.029772,
		29.168930, 23.170103, 34.615574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730886, 23.490934, 34.064678>,  <29.858164, 23.049597, 34.594734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730886, 23.490934, 34.064678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398668, 23.543217, 34.281239>,  <29.199337, 23.574587, 34.411175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398668, 23.543217, 34.281239>,  <29.730886, 23.490934, 34.064678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398668, 23.543217, 34.281239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101898, 0.991325, -0.083011,
		-0.547551, -0.013777, -0.836659,
		-0.830545, 0.130707, 0.541398,
		29.149506, 23.582428, 34.443657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388067, 24.000103, 33.768265>,  <29.730886, 23.490934, 34.064678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388067, 24.000103, 33.768265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234106, 24.025997, 34.136539>,  <29.141729, 24.041534, 34.357502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234106, 24.025997, 34.136539>,  <29.388067, 24.000103, 33.768265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234106, 24.025997, 34.136539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024373, 0.996476, -0.080254,
		-0.922634, -0.053330, -0.381971,
		-0.384905, 0.064735, 0.920684,
		29.118635, 24.045418, 34.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005680, 24.554188, 33.698399>,  <29.388067, 24.000103, 33.768265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005680, 24.554188, 33.698399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.027824, 24.486309, 34.091976>,  <29.041111, 24.445581, 34.328121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.027824, 24.486309, 34.091976>,  <29.005680, 24.554188, 33.698399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027824, 24.486309, 34.091976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097609, 0.981651, 0.163812,
		-0.993684, 0.086973, 0.070907,
		0.055359, -0.169698, 0.983940,
		29.044432, 24.435400, 34.387157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524504, 25.013186, 34.048565>,  <29.005680, 24.554188, 33.698399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524504, 25.013186, 34.048565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832191, 24.926586, 34.289040>,  <29.016804, 24.874626, 34.433327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832191, 24.926586, 34.289040>,  <28.524504, 25.013186, 34.048565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832191, 24.926586, 34.289040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165905, 0.976255, 0.139290,
		-0.617071, -0.007405, 0.786872,
		0.769220, -0.216498, 0.601190,
		29.062958, 24.861637, 34.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502659, 25.445410, 34.626225>,  <28.524504, 25.013186, 34.048565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502659, 25.445410, 34.626225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885693, 25.332508, 34.603016>,  <29.115513, 25.264767, 34.589092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885693, 25.332508, 34.603016>,  <28.502659, 25.445410, 34.626225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885693, 25.332508, 34.603016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284771, 0.957725, 0.040844,
		0.044040, -0.055635, 0.997479,
		0.957583, -0.282255, -0.058022,
		29.172968, 25.247831, 34.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881649, 26.077866, 34.833569>,  <28.502659, 25.445410, 34.626225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881649, 26.077866, 34.833569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194931, 25.873478, 34.691864>,  <29.382900, 25.750845, 34.606842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194931, 25.873478, 34.691864>,  <28.881649, 26.077866, 34.833569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194931, 25.873478, 34.691864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552814, 0.833049, 0.020620,
		0.284581, -0.211991, 0.934919,
		0.783205, -0.510968, -0.354261,
		29.429893, 25.720188, 34.585587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358732, 26.531233, 35.055275>,  <28.881649, 26.077866, 34.833569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358732, 26.531233, 35.055275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.573284, 26.308025, 34.802006>,  <29.702015, 26.174101, 34.650043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.573284, 26.308025, 34.802006>,  <29.358732, 26.531233, 35.055275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573284, 26.308025, 34.802006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669803, 0.737897, -0.082899,
		0.513478, -0.379638, 0.769556,
		0.536381, -0.558017, -0.633176,
		29.734198, 26.140619, 34.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064293, 26.512104, 35.263435>,  <29.358732, 26.531233, 35.055275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064293, 26.512104, 35.263435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041016, 26.458324, 34.867752>,  <30.027048, 26.426056, 34.630341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041016, 26.458324, 34.867752>,  <30.064293, 26.512104, 35.263435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041016, 26.458324, 34.867752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594710, 0.791206, -0.142524,
		0.801831, -0.596587, 0.033915,
		-0.058194, -0.134450, -0.989210,
		30.023558, 26.417990, 34.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722200, 26.641762, 34.959858>,  <30.064293, 26.512104, 35.263435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722200, 26.641762, 34.959858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520847, 26.679699, 34.616322>,  <30.400036, 26.702461, 34.410198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520847, 26.679699, 34.616322>,  <30.722200, 26.641762, 34.959858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520847, 26.679699, 34.616322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534724, 0.814958, -0.223414,
		0.678732, -0.571707, -0.460949,
		-0.503382, 0.094842, -0.858843,
		30.369833, 26.708151, 34.358669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234047, 26.785534, 34.301846>,  <30.722200, 26.641762, 34.959858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234047, 26.785534, 34.301846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870209, 26.913822, 34.196190>,  <30.651905, 26.990795, 34.132797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870209, 26.913822, 34.196190>,  <31.234047, 26.785534, 34.301846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870209, 26.913822, 34.196190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396311, 0.860638, -0.319748,
		0.124779, -0.395524, -0.909940,
		-0.909598, 0.320721, -0.264140,
		30.597330, 27.010038, 34.116947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704311, 26.381996, 33.936970>,  <31.234047, 26.785534, 34.301846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704311, 26.381996, 33.936970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085510, 26.260826, 33.939083>,  <32.314232, 26.188124, 33.940353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085510, 26.260826, 33.939083>,  <31.704311, 26.381996, 33.936970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085510, 26.260826, 33.939083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264453, -0.823194, 0.502411,
		-0.147843, -0.480195, -0.864613,
		0.952999, -0.302927, 0.005286,
		32.371410, 26.169949, 33.940670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614767, 25.694340, 33.967712>,  <31.704311, 26.381996, 33.936970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614767, 25.694340, 33.967712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002617, 25.729229, 34.059120>,  <32.235325, 25.750162, 34.113964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002617, 25.729229, 34.059120>,  <31.614767, 25.694340, 33.967712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002617, 25.729229, 34.059120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060128, -0.820594, 0.568340,
		0.237097, -0.564817, -0.790422,
		0.969623, 0.087225, 0.228522,
		32.293503, 25.755396, 34.127678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011330, 25.044565, 33.731625>,  <31.614767, 25.694340, 33.967712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011330, 25.044565, 33.731625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.218449, 25.242538, 34.010746>,  <32.342720, 25.361322, 34.178219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.218449, 25.242538, 34.010746>,  <32.011330, 25.044565, 33.731625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218449, 25.242538, 34.010746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176384, -0.859899, 0.479023,
		0.837125, -0.124955, -0.532549,
		0.517794, 0.494935, 0.697802,
		32.373787, 25.391020, 34.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536770, 24.592369, 33.803486>,  <32.011330, 25.044565, 33.731625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536770, 24.592369, 33.803486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541702, 24.818913, 34.133114>,  <32.544662, 24.954838, 34.330891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541702, 24.818913, 34.133114>,  <32.536770, 24.592369, 33.803486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541702, 24.818913, 34.133114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069936, -0.822600, 0.564303,
		0.997475, 0.050675, -0.049749,
		0.012328, 0.566358, 0.824067,
		32.545399, 24.988819, 34.380333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180363, 24.394421, 34.252659>,  <32.536770, 24.592369, 33.803486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180363, 24.394421, 34.252659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904465, 24.568626, 34.484028>,  <32.738926, 24.673151, 34.622849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904465, 24.568626, 34.484028>,  <33.180363, 24.394421, 34.252659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904465, 24.568626, 34.484028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049664, -0.825450, 0.562286,
		0.722346, 0.359107, 0.590980,
		-0.689746, 0.435515, 0.578426,
		32.697540, 24.699282, 34.657555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421913, 24.174772, 34.900101>,  <33.180363, 24.394421, 34.252659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421913, 24.174772, 34.900101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.040798, 24.269669, 34.975906>,  <32.812130, 24.326607, 35.021389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.040798, 24.269669, 34.975906>,  <33.421913, 24.174772, 34.900101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040798, 24.269669, 34.975906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097165, -0.829531, 0.549942,
		0.287672, 0.505564, 0.813418,
		-0.952787, 0.237239, 0.189510,
		32.754963, 24.340839, 35.032761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341766, 24.086191, 35.620796>,  <33.421913, 24.174772, 34.900101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341766, 24.086191, 35.620796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966053, 24.120026, 35.487778>,  <32.740623, 24.140327, 35.407967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966053, 24.120026, 35.487778>,  <33.341766, 24.086191, 35.620796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966053, 24.120026, 35.487778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283677, -0.736673, 0.613873,
		-0.193051, 0.670938, 0.715942,
		-0.939286, 0.084588, -0.332545,
		32.684269, 24.145401, 35.388016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862961, 24.132936, 36.311996>,  <33.341766, 24.086191, 35.620796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862961, 24.132936, 36.311996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656208, 24.017021, 35.989788>,  <32.532158, 23.947472, 35.796463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656208, 24.017021, 35.989788>,  <32.862961, 24.132936, 36.311996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656208, 24.017021, 35.989788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301486, -0.819054, 0.488116,
		-0.801213, 0.495149, 0.335984,
		-0.516879, -0.289790, -0.805517,
		32.501144, 23.930084, 35.748135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320251, 23.900982, 36.523121>,  <32.862961, 24.132936, 36.311996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320251, 23.900982, 36.523121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292057, 23.704784, 36.175686>,  <32.275139, 23.587065, 35.967224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292057, 23.704784, 36.175686>,  <32.320251, 23.900982, 36.523121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292057, 23.704784, 36.175686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338847, -0.807203, 0.483328,
		-0.938197, 0.328386, -0.109306,
		-0.070486, -0.490496, -0.868588,
		32.270912, 23.557636, 35.915108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580744, 23.706533, 36.414665>,  <32.320251, 23.900982, 36.523121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580744, 23.706533, 36.414665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.807898, 23.452721, 36.204948>,  <31.944189, 23.300432, 36.079121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.807898, 23.452721, 36.204948>,  <31.580744, 23.706533, 36.414665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807898, 23.452721, 36.204948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444276, -0.772501, 0.453720,
		-0.692912, -0.024731, -0.720598,
		0.567883, -0.634532, -0.524287,
		31.978262, 23.262362, 36.047661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197420, 23.126127, 36.232960>,  <31.580744, 23.706533, 36.414665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197420, 23.126127, 36.232960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567516, 22.981567, 36.186802>,  <31.789574, 22.894831, 36.159107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567516, 22.981567, 36.186802>,  <31.197420, 23.126127, 36.232960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567516, 22.981567, 36.186802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332512, -0.918967, 0.211977,
		-0.182655, -0.157758, -0.970438,
		0.925242, -0.361401, -0.115398,
		31.845089, 22.873146, 36.152184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005659, 22.660149, 35.822086>,  <31.197420, 23.126127, 36.232960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005659, 22.660149, 35.822086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.378691, 22.562401, 35.928352>,  <31.602510, 22.503752, 35.992111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.378691, 22.562401, 35.928352>,  <31.005659, 22.660149, 35.822086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378691, 22.562401, 35.928352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304633, -0.927630, 0.216105,
		0.193631, -0.282466, -0.939532,
		0.932580, -0.244367, 0.265667,
		31.658464, 22.489090, 36.008053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101305, 22.086933, 35.555183>,  <31.005659, 22.660149, 35.822086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101305, 22.086933, 35.555183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385536, 22.092201, 35.836582>,  <31.556074, 22.095362, 36.005421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385536, 22.092201, 35.836582>,  <31.101305, 22.086933, 35.555183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385536, 22.092201, 35.836582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266615, -0.920228, 0.286525,
		0.651150, -0.391161, -0.650382,
		0.710577, 0.013170, 0.703496,
		31.598709, 22.096151, 36.047630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352591, 21.442806, 35.502312>,  <31.101305, 22.086933, 35.555183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352591, 21.442806, 35.502312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467432, 21.547157, 35.870987>,  <31.536337, 21.609768, 36.092194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467432, 21.547157, 35.870987>,  <31.352591, 21.442806, 35.502312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467432, 21.547157, 35.870987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294362, -0.891614, 0.344058,
		0.911550, -0.370091, -0.179193,
		0.287103, 0.260878, 0.921691,
		31.553562, 21.625422, 36.147495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629093, 21.646952, 34.852673>,  <31.352591, 21.442806, 35.502312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629093, 21.646952, 34.852673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.472380, 21.343544, 34.644382>,  <31.378351, 21.161499, 34.519409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.472380, 21.343544, 34.644382>,  <31.629093, 21.646952, 34.852673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472380, 21.343544, 34.644382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014629, 0.560765, -0.827846,
		0.919942, -0.331953, -0.208601,
		-0.391782, -0.758518, -0.520728,
		31.354845, 21.115988, 34.488163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109104, 21.665871, 34.317566>,  <31.629093, 21.646952, 34.852673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109104, 21.665871, 34.317566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775202, 21.470226, 34.216404>,  <31.574862, 21.352839, 34.155708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775202, 21.470226, 34.216404>,  <32.109104, 21.665871, 34.317566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775202, 21.470226, 34.216404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115093, 0.604141, -0.788522,
		0.538462, -0.629114, -0.560602,
		-0.834753, -0.489111, -0.252900,
		31.524776, 21.323492, 34.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136940, 21.531237, 33.610432>,  <32.109104, 21.665871, 34.317566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136940, 21.531237, 33.610432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.744539, 21.526035, 33.687855>,  <31.509098, 21.522915, 33.734310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.744539, 21.526035, 33.687855>,  <32.136940, 21.531237, 33.610432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744539, 21.526035, 33.687855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165008, 0.580595, -0.797296,
		-0.102013, -0.814089, -0.571711,
		-0.981002, -0.013003, 0.193559,
		31.450239, 21.522135, 33.745922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906101, 21.692808, 32.995033>,  <32.136940, 21.531237, 33.610432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906101, 21.692808, 32.995033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.565905, 21.723404, 33.203190>,  <31.361786, 21.741762, 33.328083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.565905, 21.723404, 33.203190>,  <31.906101, 21.692808, 32.995033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565905, 21.723404, 33.203190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383212, 0.587590, -0.712662,
		-0.360290, -0.805535, -0.470429,
		-0.850494, 0.076491, 0.520394,
		31.310757, 21.746351, 33.359306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455931, 21.560467, 32.501019>,  <31.906101, 21.692808, 32.995033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455931, 21.560467, 32.501019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268299, 21.756947, 32.794598>,  <31.155720, 21.874834, 32.970745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268299, 21.756947, 32.794598>,  <31.455931, 21.560467, 32.501019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268299, 21.756947, 32.794598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428917, 0.599756, -0.675517,
		-0.772007, -0.631675, -0.070648,
		-0.469079, 0.491202, 0.733952,
		31.127575, 21.904306, 33.014782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803520, 21.676231, 32.275902>,  <31.455931, 21.560467, 32.501019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803520, 21.676231, 32.275902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843218, 21.964600, 32.550251>,  <30.867037, 22.137621, 32.714863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843218, 21.964600, 32.550251>,  <30.803520, 21.676231, 32.275902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843218, 21.964600, 32.550251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542503, 0.617028, -0.570058,
		-0.834171, -0.315516, 0.452337,
		0.099242, 0.720920, 0.685876,
		30.872990, 22.180876, 32.756012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154209, 22.051611, 32.386707>,  <30.803520, 21.676231, 32.275902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154209, 22.051611, 32.386707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427948, 22.319103, 32.502960>,  <30.592192, 22.479599, 32.572712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427948, 22.319103, 32.502960>,  <30.154209, 22.051611, 32.386707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427948, 22.319103, 32.502960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479382, 0.712975, -0.511723,
		-0.549422, 0.210869, 0.808499,
		0.684346, 0.668731, 0.290637,
		30.633251, 22.519722, 32.590153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478542, 22.089769, 32.128311>,  <30.154209, 22.051611, 32.386707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478542, 22.089769, 32.128311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.323738, 21.936043, 31.793045>,  <29.230856, 21.843807, 31.591885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.323738, 21.936043, 31.793045>,  <29.478542, 22.089769, 32.128311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323738, 21.936043, 31.793045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065177, -0.918128, 0.390887,
		-0.919768, 0.096649, 0.380375,
		-0.387012, -0.384317, -0.838166,
		29.207634, 21.820747, 31.541595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863449, 21.628639, 32.266464>,  <29.478542, 22.089769, 32.128311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863449, 21.628639, 32.266464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.023335, 21.519279, 31.916496>,  <29.119267, 21.453663, 31.706516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.023335, 21.519279, 31.916496>,  <28.863449, 21.628639, 32.266464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023335, 21.519279, 31.916496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014242, -0.956221, 0.292299,
		-0.916529, -0.104376, -0.386109,
		0.399714, -0.273399, -0.874918,
		29.143248, 21.437260, 31.654020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320900, 21.120789, 31.972292>,  <28.863449, 21.628639, 32.266464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320900, 21.120789, 31.972292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.673006, 21.059589, 31.792637>,  <28.884270, 21.022869, 31.684843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.673006, 21.059589, 31.792637>,  <28.320900, 21.120789, 31.972292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673006, 21.059589, 31.792637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042818, -0.968338, 0.245942,
		-0.472547, -0.197263, -0.858945,
		0.880265, -0.152998, -0.449139,
		28.937086, 21.013691, 31.657896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208906, 20.500948, 31.726059>,  <28.320900, 21.120789, 31.972292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208906, 20.500948, 31.726059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.607569, 20.524757, 31.703667>,  <28.846766, 20.539043, 31.690231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.607569, 20.524757, 31.703667>,  <28.208906, 20.500948, 31.726059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607569, 20.524757, 31.703667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076034, -0.926482, 0.368579,
		-0.029928, -0.371603, -0.927909,
		0.996656, 0.059522, -0.055982,
		28.906565, 20.542614, 31.686872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374548, 19.872263, 31.388405>,  <28.208906, 20.500948, 31.726059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374548, 19.872263, 31.388405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.691048, 19.986824, 31.604515>,  <28.880947, 20.055561, 31.734182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.691048, 19.986824, 31.604515>,  <28.374548, 19.872263, 31.388405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691048, 19.986824, 31.604515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019898, -0.895125, 0.445370,
		0.611172, -0.341647, -0.713965,
		0.791248, 0.286404, 0.540277,
		28.928423, 20.072746, 31.766598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588999, 19.281269, 31.423195>,  <28.374548, 19.872263, 31.388405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588999, 19.281269, 31.423195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.795919, 19.496059, 31.689747>,  <28.920071, 19.624933, 31.849678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.795919, 19.496059, 31.689747>,  <28.588999, 19.281269, 31.423195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795919, 19.496059, 31.689747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111948, -0.729509, 0.674748,
		0.848451, -0.423646, -0.317261,
		0.517299, 0.536974, 0.666379,
		28.951109, 19.657152, 31.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754795, 18.726387, 31.876949>,  <28.588999, 19.281269, 31.423195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754795, 18.726387, 31.876949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894014, 19.036152, 32.088287>,  <28.977547, 19.222010, 32.215092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894014, 19.036152, 32.088287>,  <28.754795, 18.726387, 31.876949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894014, 19.036152, 32.088287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050586, -0.578277, 0.814271,
		0.936111, -0.256678, -0.240442,
		0.348048, 0.774410, 0.528347,
		28.998428, 19.268475, 32.246792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293077, 18.423309, 32.222237>,  <28.754795, 18.726387, 31.876949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293077, 18.423309, 32.222237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147659, 18.744484, 32.411182>,  <29.060408, 18.937189, 32.524551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147659, 18.744484, 32.411182>,  <29.293077, 18.423309, 32.222237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147659, 18.744484, 32.411182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169733, -0.555665, 0.813896,
		0.915984, 0.215712, 0.338293,
		-0.363545, 0.802935, 0.472367,
		29.038595, 18.985365, 32.552891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721020, 18.659578, 32.898769>,  <29.293077, 18.423309, 32.222237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721020, 18.659578, 32.898769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.344551, 18.785107, 32.948902>,  <29.118670, 18.860424, 32.978981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.344551, 18.785107, 32.948902>,  <29.721020, 18.659578, 32.898769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344551, 18.785107, 32.948902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040398, -0.472713, 0.880290,
		0.335499, 0.823443, 0.457583,
		-0.941174, 0.313822, 0.125329,
		29.062199, 18.879253, 32.986500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.373541, 33.355125, 25.289108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050432, 33.399872, 25.520622>,  <28.856567, 33.426720, 25.659531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050432, 33.399872, 25.520622>,  <29.373541, 33.355125, 25.289108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050432, 33.399872, 25.520622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169360, -0.896398, 0.409618,
		0.564646, 0.428901, 0.705138,
		-0.807770, 0.111867, 0.578786,
		28.808102, 33.433434, 25.694258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567842, 33.279385, 26.034334>,  <29.373541, 33.355125, 25.289108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567842, 33.279385, 26.034334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180241, 33.189251, 25.993828>,  <28.947680, 33.135170, 25.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180241, 33.189251, 25.993828>,  <29.567842, 33.279385, 26.034334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180241, 33.189251, 25.993828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193086, -0.946517, 0.258504,
		-0.154099, 0.230939, 0.960688,
		-0.969005, -0.225330, -0.101266,
		28.889540, 33.121651, 25.963448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536736, 32.832245, 26.657072>,  <29.567842, 33.279385, 26.034334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536736, 32.832245, 26.657072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210751, 32.778133, 26.431671>,  <29.015160, 32.745667, 26.296431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210751, 32.778133, 26.431671>,  <29.536736, 32.832245, 26.657072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210751, 32.778133, 26.431671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001593, -0.971847, 0.235609,
		-0.579509, 0.192911, 0.791805,
		-0.814964, -0.135277, -0.563501,
		28.966261, 32.737549, 26.262621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032722, 32.396317, 27.038563>,  <29.536736, 32.832245, 26.657072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032722, 32.396317, 27.038563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929947, 32.354382, 26.654274>,  <28.868282, 32.329220, 26.423700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929947, 32.354382, 26.654274>,  <29.032722, 32.396317, 27.038563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929947, 32.354382, 26.654274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024571, -0.994486, 0.101953,
		-0.966115, 0.002590, 0.258098,
		-0.256939, -0.104841, -0.960724,
		28.852865, 32.322929, 26.366056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575535, 31.868910, 27.045555>,  <29.032722, 32.396317, 27.038563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575535, 31.868910, 27.045555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694452, 31.870052, 26.663643>,  <28.765802, 31.870739, 26.434496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694452, 31.870052, 26.663643>,  <28.575535, 31.868910, 27.045555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694452, 31.870052, 26.663643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060326, -0.998054, 0.015797,
		-0.952879, -0.062295, -0.296886,
		0.297292, 0.002858, -0.954782,
		28.783640, 31.870909, 26.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134636, 31.387106, 26.676371>,  <28.575535, 31.868910, 27.045555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134636, 31.387106, 26.676371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493149, 31.429634, 26.504150>,  <28.708256, 31.455151, 26.400818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493149, 31.429634, 26.504150>,  <28.134636, 31.387106, 26.676371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493149, 31.429634, 26.504150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105937, -0.994060, -0.024942,
		-0.430644, -0.023256, -0.902222,
		0.896283, 0.106319, -0.430550,
		28.762033, 31.461531, 26.374985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012318, 30.843281, 26.235420>,  <28.134636, 31.387106, 26.676371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012318, 30.843281, 26.235420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408028, 30.894272, 26.263943>,  <28.645454, 30.924866, 26.281057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408028, 30.894272, 26.263943>,  <28.012318, 30.843281, 26.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408028, 30.894272, 26.263943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122732, -0.990148, 0.067400,
		0.079197, -0.057926, -0.995175,
		0.989275, 0.127478, 0.071307,
		28.704809, 30.932516, 26.285336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365652, 30.329098, 25.857222>,  <28.012318, 30.843281, 26.235420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365652, 30.329098, 25.857222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642067, 30.472656, 26.108192>,  <28.807915, 30.558790, 26.258776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642067, 30.472656, 26.108192>,  <28.365652, 30.329098, 25.857222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642067, 30.472656, 26.108192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283250, -0.933057, 0.221753,
		0.665011, 0.024479, -0.746432,
		0.691036, 0.358895, 0.627427,
		28.849377, 30.580324, 26.296421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034399, 30.139355, 25.532148>,  <28.365652, 30.329098, 25.857222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034399, 30.139355, 25.532148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079067, 30.216019, 25.922184>,  <29.105867, 30.262018, 26.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079067, 30.216019, 25.922184>,  <29.034399, 30.139355, 25.532148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079067, 30.216019, 25.922184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380710, -0.914612, 0.136175,
		0.917927, 0.356019, -0.175101,
		0.111668, 0.191661, 0.975088,
		29.112568, 30.273518, 26.214710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628956, 29.682989, 25.659590>,  <29.034399, 30.139355, 25.532148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628956, 29.682989, 25.659590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530415, 29.803158, 26.028168>,  <29.471291, 29.875259, 26.249313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530415, 29.803158, 26.028168>,  <29.628956, 29.682989, 25.659590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530415, 29.803158, 26.028168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249260, -0.899124, 0.359786,
		0.936578, 0.318314, 0.146619,
		-0.246354, 0.300421, 0.921443,
		29.456509, 29.893284, 26.304600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197756, 29.532713, 26.077026>,  <29.628956, 29.682989, 25.659590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197756, 29.532713, 26.077026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890303, 29.564728, 26.330891>,  <29.705830, 29.583937, 26.483210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890303, 29.564728, 26.330891>,  <30.197756, 29.532713, 26.077026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890303, 29.564728, 26.330891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280197, -0.849775, 0.446511,
		0.575057, 0.521033, 0.630741,
		-0.768635, 0.080037, 0.634661,
		29.659712, 29.588739, 26.521290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432266, 29.295626, 26.760376>,  <30.197756, 29.532713, 26.077026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432266, 29.295626, 26.760376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038471, 29.230846, 26.787369>,  <29.802195, 29.191978, 26.803564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038471, 29.230846, 26.787369>,  <30.432266, 29.295626, 26.760376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038471, 29.230846, 26.787369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175012, -0.933471, 0.313055,
		0.012292, 0.320009, 0.947335,
		-0.984490, -0.161946, 0.067480,
		29.743124, 29.182262, 26.807613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130962, 29.356707, 27.059034>,  <30.432266, 29.295626, 26.760376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130962, 29.356707, 27.059034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473852, 29.240810, 27.229313>,  <31.679586, 29.171272, 27.331480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473852, 29.240810, 27.229313>,  <31.130962, 29.356707, 27.059034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473852, 29.240810, 27.229313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510059, 0.591356, -0.624610,
		-0.070762, 0.752560, 0.654710,
		0.857224, -0.289743, 0.425696,
		31.731020, 29.153887, 27.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562235, 29.899590, 27.168291>,  <31.130962, 29.356707, 27.059034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562235, 29.899590, 27.168291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817698, 29.591827, 27.172894>,  <31.970976, 29.407169, 27.175655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817698, 29.591827, 27.172894>,  <31.562235, 29.899590, 27.168291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817698, 29.591827, 27.172894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628540, 0.512988, -0.584621,
		0.443907, 0.380605, 0.811225,
		0.638658, -0.769404, 0.011507,
		32.009296, 29.361006, 27.176346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191818, 30.269384, 27.384222>,  <31.562235, 29.899590, 27.168291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191818, 30.269384, 27.384222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311783, 29.921574, 27.227264>,  <32.383762, 29.712887, 27.133089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311783, 29.921574, 27.227264>,  <32.191818, 30.269384, 27.384222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311783, 29.921574, 27.227264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658643, 0.486295, -0.574201,
		0.690104, -0.086239, 0.718554,
		0.299911, -0.869528, -0.392395,
		32.401756, 29.660715, 27.109547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982613, 30.110302, 27.524757>,  <32.191818, 30.269384, 27.384222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982613, 30.110302, 27.524757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867592, 29.927521, 27.188065>,  <32.798580, 29.817852, 26.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867592, 29.927521, 27.188065>,  <32.982613, 30.110302, 27.524757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867592, 29.927521, 27.188065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482281, 0.690214, -0.539453,
		0.827478, -0.561071, 0.021908,
		-0.287550, -0.456951, -0.841731,
		32.781326, 29.790436, 26.935545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527653, 30.193090, 27.059938>,  <32.982613, 30.110302, 27.524757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527653, 30.193090, 27.059938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275475, 30.026672, 26.797810>,  <33.124168, 29.926821, 26.640532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275475, 30.026672, 26.797810>,  <33.527653, 30.193090, 27.059938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275475, 30.026672, 26.797810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392781, 0.557194, -0.731613,
		0.669528, -0.718638, -0.187862,
		-0.630441, -0.416047, -0.655324,
		33.086342, 29.901859, 26.601212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955769, 30.059761, 26.563610>,  <33.527653, 30.193090, 27.059938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955769, 30.059761, 26.563610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582611, 30.059921, 26.419548>,  <33.358715, 30.060017, 26.333111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582611, 30.059921, 26.419548>,  <33.955769, 30.059761, 26.563610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582611, 30.059921, 26.419548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285102, 0.611846, -0.737809,
		0.220064, -0.790977, -0.570901,
		-0.932893, 0.000400, -0.360154,
		33.302742, 30.060041, 26.311502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045879, 30.021503, 25.885094>,  <33.955769, 30.059761, 26.563610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045879, 30.021503, 25.885094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668262, 30.153324, 25.890491>,  <33.441692, 30.232416, 25.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668262, 30.153324, 25.890491>,  <34.045879, 30.021503, 25.885094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668262, 30.153324, 25.890491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214567, 0.644696, -0.733709,
		-0.250496, -0.689755, -0.679330,
		-0.944041, 0.329552, 0.013495,
		33.385052, 30.252190, 25.894541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910259, 29.937595, 25.215693>,  <34.045879, 30.021503, 25.885094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910259, 29.937595, 25.215693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679794, 30.214382, 25.389690>,  <33.541515, 30.380455, 25.494089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679794, 30.214382, 25.389690>,  <33.910259, 29.937595, 25.215693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679794, 30.214382, 25.389690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202829, 0.636610, -0.744035,
		-0.791770, -0.340454, -0.507140,
		-0.576160, 0.691967, 0.434995,
		33.506947, 30.421972, 25.520189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518261, 30.206381, 24.669603>,  <33.910259, 29.937595, 25.215693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518261, 30.206381, 24.669603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540585, 30.466343, 24.972790>,  <33.553978, 30.622320, 25.154701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540585, 30.466343, 24.972790>,  <33.518261, 30.206381, 24.669603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540585, 30.466343, 24.972790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196426, 0.737164, -0.646533,
		-0.978929, 0.184967, -0.086517,
		0.055810, 0.649905, 0.757964,
		33.557327, 30.661314, 25.200178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301033, 30.867840, 24.301636>,  <33.518261, 30.206381, 24.669603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301033, 30.867840, 24.301636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469727, 30.948589, 24.655220>,  <33.570942, 30.997040, 24.867371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469727, 30.948589, 24.655220>,  <33.301033, 30.867840, 24.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469727, 30.948589, 24.655220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626305, 0.640101, -0.444986,
		-0.655657, 0.741294, 0.143515,
		0.421730, 0.201874, 0.883963,
		33.596245, 31.009151, 24.920408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299248, 31.562347, 24.359608>,  <33.301033, 30.867840, 24.301636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299248, 31.562347, 24.359608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585426, 31.485325, 24.628250>,  <33.757133, 31.439112, 24.789436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585426, 31.485325, 24.628250>,  <33.299248, 31.562347, 24.359608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585426, 31.485325, 24.628250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548766, 0.749831, -0.369606,
		-0.432421, 0.632989, 0.642135,
		0.715449, -0.192556, 0.671606,
		33.800060, 31.427559, 24.829731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456245, 32.203327, 24.739733>,  <33.299248, 31.562347, 24.359608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456245, 32.203327, 24.739733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771481, 31.964260, 24.798664>,  <33.960625, 31.820820, 24.834023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771481, 31.964260, 24.798664>,  <33.456245, 32.203327, 24.739733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771481, 31.964260, 24.798664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611148, 0.731113, -0.303269,
		0.073540, 0.329043, 0.941447,
		0.788093, -0.597666, 0.147328,
		34.007908, 31.784960, 24.842863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929680, 32.599232, 25.124294>,  <33.456245, 32.203327, 24.739733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929680, 32.599232, 25.124294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144924, 32.322754, 24.931347>,  <34.274071, 32.156868, 24.815578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144924, 32.322754, 24.931347>,  <33.929680, 32.599232, 25.124294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144924, 32.322754, 24.931347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638403, 0.707902, -0.302187,
		0.550340, -0.145333, 0.822195,
		0.538115, -0.691197, -0.482368,
		34.306358, 32.115395, 24.786636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517784, 32.691765, 25.367954>,  <33.929680, 32.599232, 25.124294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517784, 32.691765, 25.367954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609520, 32.489044, 25.035557>,  <34.664562, 32.367413, 24.836119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609520, 32.489044, 25.035557>,  <34.517784, 32.691765, 25.367954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609520, 32.489044, 25.035557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828146, 0.550204, -0.107004,
		0.511447, -0.663644, 0.545893,
		0.229340, -0.506806, -0.830994,
		34.678322, 32.337002, 24.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077309, 33.188286, 25.789326>,  <34.517784, 32.691765, 25.367954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077309, 33.188286, 25.789326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169430, 33.392113, 26.120941>,  <34.224701, 33.514408, 26.319910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169430, 33.392113, 26.120941>,  <34.077309, 33.188286, 25.789326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169430, 33.392113, 26.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004512, -0.851370, 0.524546,
		0.973110, -0.124543, -0.193770,
		0.230298, 0.509566, 0.829038,
		34.238518, 33.544983, 26.369652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611523, 32.866776, 26.161621>,  <34.077309, 33.188286, 25.789326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611523, 32.866776, 26.161621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467579, 33.105938, 26.448120>,  <34.381214, 33.249435, 26.620020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467579, 33.105938, 26.448120>,  <34.611523, 32.866776, 26.161621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467579, 33.105938, 26.448120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135215, -0.792993, 0.594036,
		0.923158, 0.116920, 0.366210,
		-0.359857, 0.597906, 0.716248,
		34.359623, 33.285309, 26.662994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818752, 32.652573, 26.799763>,  <34.611523, 32.866776, 26.161621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818752, 32.652573, 26.799763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474937, 32.841171, 26.878635>,  <34.268646, 32.954330, 26.925959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474937, 32.841171, 26.878635>,  <34.818752, 32.652573, 26.799763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474937, 32.841171, 26.878635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212187, -0.680232, 0.701613,
		0.464940, 0.561224, 0.684732,
		-0.859539, 0.471499, 0.197183,
		34.217075, 32.982620, 26.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883591, 33.021873, 27.546907>,  <34.818752, 32.652573, 26.799763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883591, 33.021873, 27.546907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502522, 32.947071, 27.451042>,  <34.273880, 32.902191, 27.393524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502522, 32.947071, 27.451042>,  <34.883591, 33.021873, 27.546907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502522, 32.947071, 27.451042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069677, -0.633071, 0.770952,
		-0.295896, 0.751166, 0.590081,
		-0.952676, -0.187006, -0.239662,
		34.216721, 32.890968, 27.379143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618603, 33.028980, 28.140474>,  <34.883591, 33.021873, 27.546907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618603, 33.028980, 28.140474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339970, 32.845009, 27.920204>,  <34.172791, 32.734627, 27.788042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339970, 32.845009, 27.920204>,  <34.618603, 33.028980, 28.140474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339970, 32.845009, 27.920204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308832, -0.500571, 0.808734,
		-0.647611, 0.733415, 0.206647,
		-0.696579, -0.459926, -0.550678,
		34.130997, 32.707031, 27.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930626, 33.085529, 28.515522>,  <34.618603, 33.028980, 28.140474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930626, 33.085529, 28.515522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909718, 32.782402, 28.255375>,  <33.897171, 32.600525, 28.099287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909718, 32.782402, 28.255375>,  <33.930626, 33.085529, 28.515522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909718, 32.782402, 28.255375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313278, -0.605937, 0.731230,
		-0.948222, 0.241968, -0.205735,
		-0.052272, -0.757820, -0.650366,
		33.894035, 32.555058, 28.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402599, 32.810493, 28.748705>,  <33.930626, 33.085529, 28.515522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402599, 32.810493, 28.748705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556629, 32.538788, 28.498802>,  <33.649048, 32.375767, 28.348860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556629, 32.538788, 28.498802>,  <33.402599, 32.810493, 28.748705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556629, 32.538788, 28.498802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202855, -0.722704, 0.660718,
		-0.900315, -0.127691, -0.416087,
		0.385076, -0.679260, -0.624758,
		33.672153, 32.335011, 28.311375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875252, 32.278934, 28.572683>,  <33.402599, 32.810493, 28.748705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875252, 32.278934, 28.572683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229568, 32.108219, 28.499763>,  <33.442158, 32.005791, 28.456013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229568, 32.108219, 28.499763>,  <32.875252, 32.278934, 28.572683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229568, 32.108219, 28.499763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261277, -0.783247, 0.564144,
		-0.383553, -0.452082, -0.805300,
		0.885788, -0.426786, -0.182297,
		33.495304, 31.980183, 28.445074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646248, 31.621391, 28.484369>,  <32.875252, 32.278934, 28.572683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646248, 31.621391, 28.484369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036995, 31.626583, 28.569740>,  <33.271446, 31.629698, 28.620964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036995, 31.626583, 28.569740>,  <32.646248, 31.621391, 28.484369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036995, 31.626583, 28.569740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151665, -0.661542, 0.734411,
		0.150725, -0.749796, -0.644274,
		0.976873, 0.012981, 0.213429,
		33.330055, 31.630478, 28.633768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948849, 30.899555, 28.674192>,  <32.646248, 31.621391, 28.484369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948849, 30.899555, 28.674192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221725, 31.137814, 28.843811>,  <33.385452, 31.280767, 28.945583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221725, 31.137814, 28.843811>,  <32.948849, 30.899555, 28.674192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221725, 31.137814, 28.843811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010140, -0.572196, 0.820054,
		0.731099, -0.563737, -0.384310,
		0.682196, 0.595644, 0.424049,
		33.426384, 31.316507, 28.971025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402000, 30.487370, 28.999838>,  <32.948849, 30.899555, 28.674192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402000, 30.487370, 28.999838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500069, 30.828617, 29.184048>,  <33.558910, 31.033365, 29.294573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500069, 30.828617, 29.184048>,  <33.402000, 30.487370, 28.999838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500069, 30.828617, 29.184048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008323, -0.476854, 0.878943,
		0.969445, -0.211656, -0.124011,
		0.245169, 0.853119, 0.460522,
		33.573620, 31.084553, 29.322205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054344, 30.387304, 29.400000>,  <33.402000, 30.487370, 28.999838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054344, 30.387304, 29.400000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885632, 30.712250, 29.561081>,  <33.784405, 30.907217, 29.657730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885632, 30.712250, 29.561081>,  <34.054344, 30.387304, 29.400000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885632, 30.712250, 29.561081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131591, -0.384593, 0.913659,
		0.897098, 0.438356, 0.055315,
		-0.421781, 0.812362, 0.402701,
		33.759098, 30.955959, 29.681890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448063, 30.609327, 29.827055>,  <34.054344, 30.387304, 29.400000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448063, 30.609327, 29.827055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110935, 30.774471, 29.965157>,  <33.908657, 30.873558, 30.048018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110935, 30.774471, 29.965157>,  <34.448063, 30.609327, 29.827055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110935, 30.774471, 29.965157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181867, -0.385286, 0.904698,
		0.506535, 0.825289, 0.249641,
		-0.842820, 0.412860, 0.345254,
		33.858089, 30.898329, 30.068733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631271, 30.973278, 30.416195>,  <34.448063, 30.609327, 29.827055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631271, 30.973278, 30.416195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242397, 30.884182, 30.445141>,  <34.009071, 30.830725, 30.462507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242397, 30.884182, 30.445141>,  <34.631271, 30.973278, 30.416195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242397, 30.884182, 30.445141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141053, -0.310216, 0.940144,
		-0.186962, 0.924203, 0.333007,
		-0.972188, -0.222742, 0.072363,
		33.950741, 30.817360, 30.466850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456940, 30.884897, 31.117128>,  <34.631271, 30.973278, 30.416195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456940, 30.884897, 31.117128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119255, 30.722660, 30.976959>,  <33.916645, 30.625319, 30.892859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119255, 30.722660, 30.976959>,  <34.456940, 30.884897, 31.117128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119255, 30.722660, 30.976959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012577, -0.638597, 0.769438,
		-0.535856, 0.653979, 0.534013,
		-0.844216, -0.405592, -0.350421,
		33.865990, 30.600983, 30.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922150, 30.794334, 31.693958>,  <34.456940, 30.884897, 31.117128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922150, 30.794334, 31.693958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803967, 30.552429, 31.398129>,  <33.733059, 30.407286, 31.220631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803967, 30.552429, 31.398129>,  <33.922150, 30.794334, 31.693958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803967, 30.552429, 31.398129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098137, -0.750825, 0.653170,
		-0.950303, 0.265562, 0.162484,
		-0.295454, -0.604764, -0.739573,
		33.715332, 30.371000, 31.176256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411572, 30.513340, 32.045460>,  <33.922150, 30.794334, 31.693958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411572, 30.513340, 32.045460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470577, 30.269585, 31.733849>,  <33.505981, 30.123331, 31.546883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470577, 30.269585, 31.733849>,  <33.411572, 30.513340, 32.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470577, 30.269585, 31.733849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298401, -0.778364, 0.552365,
		-0.942972, 0.150980, -0.296664,
		0.147517, -0.609389, -0.779028,
		33.514832, 30.086767, 31.500141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818676, 30.089983, 32.003120>,  <33.411572, 30.513340, 32.045460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818676, 30.089983, 32.003120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112103, 29.887390, 31.821854>,  <33.288158, 29.765835, 31.713095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112103, 29.887390, 31.821854>,  <32.818676, 30.089983, 32.003120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112103, 29.887390, 31.821854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303986, -0.840898, 0.447753,
		-0.607845, -0.190700, -0.770817,
		0.733565, -0.506482, -0.453166,
		33.332172, 29.735445, 31.685904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529594, 29.422560, 31.786030>,  <32.818676, 30.089983, 32.003120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529594, 29.422560, 31.786030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926601, 29.374660, 31.795551>,  <33.164806, 29.345921, 31.801264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926601, 29.374660, 31.795551>,  <32.529594, 29.422560, 31.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926601, 29.374660, 31.795551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119501, -0.912865, 0.390381,
		-0.025017, -0.390305, -0.920346,
		0.992519, -0.119749, 0.023805,
		33.224358, 29.338736, 31.802692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568455, 28.749449, 31.582153>,  <32.529594, 29.422560, 31.786030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568455, 28.749449, 31.582153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906246, 28.830029, 31.780655>,  <33.108921, 28.878376, 31.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906246, 28.830029, 31.780655>,  <32.568455, 28.749449, 31.582153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906246, 28.830029, 31.780655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132215, -0.819479, 0.557649,
		0.519010, -0.536537, -0.665399,
		0.844481, 0.201450, 0.496257,
		33.159592, 28.890463, 31.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961117, 28.111206, 31.656221>,  <32.568455, 28.749449, 31.582153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961117, 28.111206, 31.656221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150330, 28.339733, 31.924503>,  <33.263855, 28.476849, 32.085472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150330, 28.339733, 31.924503>,  <32.961117, 28.111206, 31.656221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150330, 28.339733, 31.924503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014790, -0.756000, 0.654404,
		0.880923, -0.319471, -0.349159,
		0.473028, 0.571316, 0.670703,
		33.292236, 28.511127, 32.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438480, 27.702702, 31.937283>,  <32.961117, 28.111206, 31.656221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438480, 27.702702, 31.937283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377239, 27.996254, 32.202003>,  <33.340492, 28.172384, 32.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377239, 27.996254, 32.202003>,  <33.438480, 27.702702, 31.937283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377239, 27.996254, 32.202003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164822, -0.679280, 0.715131,
		0.974368, 0.000411, 0.224961,
		-0.153105, 0.733879, 0.661801,
		33.331306, 28.216417, 32.400543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967033, 27.690004, 32.534054>,  <33.438480, 27.702702, 31.937283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967033, 27.690004, 32.534054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632084, 27.859146, 32.672619>,  <33.431114, 27.960630, 32.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632084, 27.859146, 32.672619>,  <33.967033, 27.690004, 32.534054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632084, 27.859146, 32.672619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032586, -0.671213, 0.740548,
		0.545662, 0.608825, 0.575834,
		-0.837372, 0.422853, 0.346417,
		33.380871, 27.986002, 32.776543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075958, 27.534832, 33.137562>,  <33.967033, 27.690004, 32.534054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075958, 27.534832, 33.137562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696957, 27.660923, 33.116131>,  <33.469555, 27.736578, 33.103271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696957, 27.660923, 33.116131>,  <34.075958, 27.534832, 33.137562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696957, 27.660923, 33.116131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248631, -0.620996, 0.743335,
		0.201052, 0.717632, 0.666771,
		-0.947502, 0.315229, -0.053574,
		33.412704, 27.755491, 33.100060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875366, 27.693718, 33.825417>,  <34.075958, 27.534832, 33.137562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875366, 27.693718, 33.825417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559654, 27.599720, 33.598499>,  <33.370228, 27.543322, 33.462349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559654, 27.599720, 33.598499>,  <33.875366, 27.693718, 33.825417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559654, 27.599720, 33.598499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172826, -0.801502, 0.572474,
		-0.589212, 0.549883, 0.591995,
		-0.789278, -0.234997, -0.567289,
		33.322872, 27.529221, 33.428314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347210, 27.439856, 34.318100>,  <33.875366, 27.693718, 33.825417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347210, 27.439856, 34.318100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183647, 27.331562, 33.969501>,  <33.085510, 27.266586, 33.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183647, 27.331562, 33.969501>,  <33.347210, 27.439856, 34.318100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183647, 27.331562, 33.969501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407569, -0.800268, 0.439840,
		-0.816506, 0.535048, 0.216894,
		-0.408908, -0.270732, -0.871492,
		33.060974, 27.250341, 33.708054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698994, 27.223881, 34.506927>,  <33.347210, 27.439856, 34.318100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698994, 27.223881, 34.506927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748314, 27.086143, 34.134644>,  <32.777908, 27.003500, 33.911274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748314, 27.086143, 34.134644>,  <32.698994, 27.223881, 34.506927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748314, 27.086143, 34.134644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492866, -0.835269, 0.243737,
		-0.861324, 0.428662, -0.272709,
		0.123305, -0.344345, -0.930711,
		32.785305, 26.982840, 33.855431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022842, 26.996428, 34.199215>,  <32.698994, 27.223881, 34.506927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022842, 26.996428, 34.199215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336906, 26.788349, 34.064800>,  <32.525345, 26.663502, 33.984150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336906, 26.788349, 34.064800>,  <32.022842, 26.996428, 34.199215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336906, 26.788349, 34.064800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453064, -0.852422, 0.260978,
		-0.422206, -0.052663, -0.904969,
		0.785159, -0.520196, -0.336038,
		32.572453, 26.632290, 33.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421944, 27.238779, 33.704037>,  <32.022842, 26.996428, 34.199215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421944, 27.238779, 33.704037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039755, 27.298992, 33.805561>,  <30.810442, 27.335119, 33.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039755, 27.298992, 33.805561>,  <31.421944, 27.238779, 33.704037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039755, 27.298992, 33.805561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009470, 0.875298, -0.483491,
		-0.294937, -0.459557, -0.837747,
		-0.955470, 0.150533, 0.253806,
		30.753115, 27.344152, 33.881702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143320, 27.587566, 33.123501>,  <31.421944, 27.238779, 33.704037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143320, 27.587566, 33.123501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904457, 27.687836, 33.428280>,  <30.761139, 27.747997, 33.611149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904457, 27.687836, 33.428280>,  <31.143320, 27.587566, 33.123501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904457, 27.687836, 33.428280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, 0.957775, -0.284932,
		-0.801199, -0.140821, -0.581593,
		-0.597159, 0.250673, 0.761947,
		30.725309, 27.763039, 33.656864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474949, 27.797180, 32.842979>,  <31.143320, 27.587566, 33.123501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474949, 27.797180, 32.842979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522036, 27.947807, 33.210529>,  <30.550287, 28.038183, 33.431061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522036, 27.947807, 33.210529>,  <30.474949, 27.797180, 32.842979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522036, 27.947807, 33.210529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035740, 0.923106, -0.382880,
		-0.992404, 0.077912, 0.095207,
		0.117717, 0.376569, 0.918879,
		30.557350, 28.060778, 33.486195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822329, 28.197296, 32.927502>,  <30.474949, 27.797180, 32.842979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822329, 28.197296, 32.927502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101694, 28.348526, 33.170574>,  <30.269314, 28.439264, 33.316418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101694, 28.348526, 33.170574>,  <29.822329, 28.197296, 32.927502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101694, 28.348526, 33.170574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235729, 0.923224, -0.303463,
		-0.675759, 0.068694, 0.733915,
		0.698414, 0.378073, 0.607683,
		30.311218, 28.461948, 33.352879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512207, 28.750603, 33.224281>,  <29.822329, 28.197296, 32.927502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512207, 28.750603, 33.224281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906223, 28.798065, 33.274269>,  <30.142633, 28.826542, 33.304264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906223, 28.798065, 33.274269>,  <29.512207, 28.750603, 33.224281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906223, 28.798065, 33.274269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069321, 0.936765, -0.343026,
		-0.157773, 0.329230, 0.930976,
		0.985039, 0.118657, 0.124973,
		30.201735, 28.833662, 33.311760>
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
