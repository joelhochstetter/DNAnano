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
	<1.031031, 3.183855, 1.578200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.382767, 2.994678, 1.600422>,  <1.593808, 2.881172, 1.613755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.382767, 2.994678, 1.600422>,  <1.031031, 3.183855, 1.578200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.382767, 2.994678, 1.600422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452216, 0.865913, 0.213766,
		-0.149204, -0.162851, 0.975304,
		0.879340, -0.472942, 0.055554,
		1.646569, 2.852796, 1.617088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.417165, 3.418476, 2.238453>,  <1.031031, 3.183855, 1.578200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.417165, 3.418476, 2.238453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.665199, 3.279842, 1.956922>,  <1.814020, 3.196662, 1.788003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.665199, 3.279842, 1.956922>,  <1.417165, 3.418476, 2.238453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.665199, 3.279842, 1.956922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580411, 0.806258, 0.114330,
		0.527842, -0.479404, 0.701110,
		0.620086, -0.346583, -0.703828,
		1.851225, 3.175867, 1.745773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.067387, 3.344256, 2.477892>,  <1.417165, 3.418476, 2.238453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.067387, 3.344256, 2.477892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.157417, 3.386339, 2.090434>,  <2.211435, 3.411589, 1.857959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.157417, 3.386339, 2.090434>,  <2.067387, 3.344256, 2.477892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.157417, 3.386339, 2.090434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586586, 0.779171, 0.220928,
		0.777980, -0.617920, 0.113671,
		0.225085, 0.105200, -0.968643,
		2.224940, 3.417902, 1.799841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.786524, 3.436804, 2.384119>,  <2.067387, 3.344256, 2.477892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.786524, 3.436804, 2.384119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.618839, 3.606337, 2.062964>,  <2.518228, 3.708056, 1.870272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.618839, 3.606337, 2.062964>,  <2.786524, 3.436804, 2.384119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.618839, 3.606337, 2.062964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675536, 0.736446, 0.036041,
		0.606557, -0.527270, -0.595042,
		-0.419213, 0.423833, -0.802886,
		2.493075, 3.733486, 1.822098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.353822, 3.612453, 1.893847>,  <2.786524, 3.436804, 2.384119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.353822, 3.612453, 1.893847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023821, 3.828753, 1.828171>,  <2.825820, 3.958533, 1.788765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023821, 3.828753, 1.828171>,  <3.353822, 3.612453, 1.893847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.023821, 3.828753, 1.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554237, 0.830967, -0.048125,
		0.110414, -0.130704, -0.985254,
		-0.825003, 0.540750, -0.164191,
		2.776320, 3.990978, 1.778913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435416, 4.104354, 1.244984>,  <3.353822, 3.612453, 1.893847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435416, 4.104354, 1.244984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134439, 4.271671, 1.448500>,  <2.953854, 4.372062, 1.570609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134439, 4.271671, 1.448500>,  <3.435416, 4.104354, 1.244984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134439, 4.271671, 1.448500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430844, 0.896850, -0.100163,
		-0.498204, 0.143842, -0.855045,
		-0.752440, 0.418293, 0.508788,
		2.908708, 4.397159, 1.601136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.160988, 4.619615, 0.752282>,  <3.435416, 4.104354, 1.244984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.160988, 4.619615, 0.752282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046902, 4.722593, 1.121578>,  <2.978450, 4.784380, 1.343156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046902, 4.722593, 1.121578>,  <3.160988, 4.619615, 0.752282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046902, 4.722593, 1.121578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393494, 0.909782, -0.132131,
		-0.873965, 0.325605, -0.360787,
		-0.285215, 0.257446, 0.923241,
		2.961337, 4.799827, 1.398551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.830573, 5.337474, 0.728391>,  <3.160988, 4.619615, 0.752282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.830573, 5.337474, 0.728391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.928551, 5.283651, 1.112453>,  <2.987337, 5.251358, 1.342890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.928551, 5.283651, 1.112453>,  <2.830573, 5.337474, 0.728391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.928551, 5.283651, 1.112453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379326, 0.924681, 0.032817,
		-0.892252, 0.356174, 0.277536,
		0.244943, -0.134558, 0.960155,
		3.002034, 5.243284, 1.400499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.913305, 1.274284, 1.268463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.913204, 1.180647, 1.657349>,  <3.913144, 1.124465, 1.890680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.913204, 1.180647, 1.657349>,  <3.913305, 1.274284, 1.268463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.913204, 1.180647, 1.657349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780176, -0.608133, -0.146629,
		0.625560, -0.758535, -0.182480,
		-0.000251, -0.234092, 0.972215,
		3.913129, 1.110419, 1.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.036302, 0.496298, 1.367188>,  <3.913305, 1.274284, 1.268463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.036302, 0.496298, 1.367188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815853, 0.672255, 1.650810>,  <3.683584, 0.777829, 1.820984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815853, 0.672255, 1.650810>,  <4.036302, 0.496298, 1.367188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.815853, 0.672255, 1.650810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756440, -0.622082, -0.202019,
		0.352224, -0.647695, 0.675595,
		-0.551122, 0.439891, 0.709055,
		3.650517, 0.804222, 1.863527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.827164, 0.011100, 1.997026>,  <4.036302, 0.496298, 1.367188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.827164, 0.011100, 1.997026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.556561, 0.295524, 1.920368>,  <3.394198, 0.466179, 1.874373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.556561, 0.295524, 1.920368>,  <3.827164, 0.011100, 1.997026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.556561, 0.295524, 1.920368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710412, -0.698686, -0.084574,
		-0.194037, 0.078931, 0.977814,
		-0.676509, 0.711061, -0.191645,
		3.353608, 0.508842, 1.862875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.302465, 0.104770, 2.668800>,  <3.827164, 0.011100, 1.997026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.302465, 0.104770, 2.668800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212059, 0.153244, 2.282177>,  <3.157815, 0.182328, 2.050203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.212059, 0.153244, 2.282177>,  <3.302465, 0.104770, 2.668800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212059, 0.153244, 2.282177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581253, -0.813013, 0.033985,
		-0.781705, 0.569495, 0.254192,
		-0.226016, 0.121184, -0.966556,
		3.144254, 0.189599, 1.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.641035, 0.081873, 2.676646>,  <3.302465, 0.104770, 2.668800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.641035, 0.081873, 2.676646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744808, 0.008555, 2.297363>,  <2.807072, -0.035436, 2.069793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744808, 0.008555, 2.297363>,  <2.641035, 0.081873, 2.676646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.744808, 0.008555, 2.297363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600029, -0.799921, -0.009540,
		-0.756743, 0.571427, -0.317508,
		0.259433, -0.183294, -0.948208,
		2.822638, -0.046433, 2.012901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.008170, 0.021686, 2.268014>,  <2.641035, 0.081873, 2.676646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.008170, 0.021686, 2.268014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.287228, -0.173626, 2.058300>,  <2.454663, -0.290813, 1.932472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.287228, -0.173626, 2.058300>,  <2.008170, 0.021686, 2.268014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287228, -0.173626, 2.058300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592308, -0.804784, -0.038647,
		-0.403066, 0.337501, -0.850665,
		0.697645, -0.488279, -0.524285,
		2.496521, -0.320110, 1.901014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.633199, -0.330557, 1.788121>,  <2.008170, 0.021686, 2.268014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.633199, -0.330557, 1.788121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.985710, -0.519266, 1.799290>,  <2.197217, -0.632492, 1.805991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.985710, -0.519266, 1.799290>,  <1.633199, -0.330557, 1.788121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.985710, -0.519266, 1.799290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472088, -0.881533, 0.005593,
		0.021975, -0.018110, -0.999594,
		0.881277, -0.471774, 0.027921,
		2.250093, -0.660798, 1.807666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.513146, -0.861143, 1.262020>,  <1.633199, -0.330557, 1.788121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.513146, -0.861143, 1.262020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810894, -0.944261, 1.515865>,  <1.989543, -0.994131, 1.668172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810894, -0.944261, 1.515865>,  <1.513146, -0.861143, 1.262020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810894, -0.944261, 1.515865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325254, -0.942821, 0.072796,
		0.583200, -0.260598, -0.769394,
		0.744371, -0.207793, 0.634613,
		2.034205, -1.006599, 1.706249>
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
