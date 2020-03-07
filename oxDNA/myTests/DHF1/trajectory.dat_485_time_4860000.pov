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
	<1.801156, 1.892247, -0.031585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192722, 1.967155, -0.064217>,  <2.427662, 2.012100, -0.083796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192722, 1.967155, -0.064217>,  <1.801156, 1.892247, -0.031585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.192722, 1.967155, -0.064217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110764, 0.822205, 0.558311,
		0.171630, -0.537503, 0.825611,
		0.978915, 0.187271, -0.081579,
		2.486397, 2.023337, -0.088690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301064, 1.847639, 0.612110>,  <1.801156, 1.892247, -0.031585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301064, 1.847639, 0.612110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.399124, 2.122581, 0.338631>,  <2.457959, 2.287547, 0.174543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.399124, 2.122581, 0.338631>,  <2.301064, 1.847639, 0.612110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.399124, 2.122581, 0.338631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092874, 0.718624, 0.689168,
		0.965027, -0.105451, 0.240008,
		0.245148, 0.687357, -0.683698,
		2.472668, 2.328789, 0.133521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.903495, 2.177243, 0.787903>,  <2.301064, 1.847639, 0.612110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.903495, 2.177243, 0.787903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723529, 2.457478, 0.566360>,  <2.615550, 2.625618, 0.433435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723529, 2.457478, 0.566360>,  <2.903495, 2.177243, 0.787903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723529, 2.457478, 0.566360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181893, 0.679056, 0.711195,
		0.874352, 0.219234, -0.432948,
		-0.449914, 0.700585, -0.553857,
		2.588555, 2.667653, 0.400203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.360021, 2.834098, 0.612588>,  <2.903495, 2.177243, 0.787903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.360021, 2.834098, 0.612588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.967673, 2.907402, 0.638847>,  <2.732264, 2.951384, 0.654603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.967673, 2.907402, 0.638847>,  <3.360021, 2.834098, 0.612588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967673, 2.907402, 0.638847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167959, 0.626260, 0.761307,
		0.098404, 0.757770, -0.645060,
		-0.980870, 0.183259, 0.065648,
		2.673412, 2.962380, 0.658542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248818, 3.563411, 0.509271>,  <3.360021, 2.834098, 0.612588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248818, 3.563411, 0.509271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974951, 3.387135, 0.741486>,  <2.810631, 3.281369, 0.880814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974951, 3.387135, 0.741486>,  <3.248818, 3.563411, 0.509271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974951, 3.387135, 0.741486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188507, 0.662335, 0.725105,
		-0.704057, 0.605891, -0.370405,
		-0.684667, -0.440691, 0.580537,
		2.769551, 3.254927, 0.915647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.017332, 4.137897, 0.853200>,  <3.248818, 3.563411, 0.509271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.017332, 4.137897, 0.853200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858442, 3.838951, 1.066238>,  <2.763108, 3.659584, 1.194061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858442, 3.838951, 1.066238>,  <3.017332, 4.137897, 0.853200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858442, 3.838951, 1.066238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126388, 0.530266, 0.838358,
		-0.908976, 0.400331, -0.116177,
		-0.397226, -0.747364, 0.532596,
		2.739274, 3.614742, 1.226017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.506906, 4.432591, 1.328831>,  <3.017332, 4.137897, 0.853200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.506906, 4.432591, 1.328831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627255, 4.084312, 1.484451>,  <2.699465, 3.875345, 1.577823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627255, 4.084312, 1.484451>,  <2.506906, 4.432591, 1.328831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.627255, 4.084312, 1.484451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204085, 0.457289, 0.865584,
		-0.931571, -0.181032, 0.315283,
		0.300874, -0.870698, 0.389051,
		2.717518, 3.823103, 1.601166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.213094, 4.320897, 2.097346>,  <2.506906, 4.432591, 1.328831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.213094, 4.320897, 2.097346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.545732, 4.104782, 2.045906>,  <2.745315, 3.975113, 2.015042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.545732, 4.104782, 2.045906>,  <2.213094, 4.320897, 2.097346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.545732, 4.104782, 2.045906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358793, 0.345889, 0.866965,
		-0.423929, -0.767105, 0.481491,
		0.831596, -0.540287, -0.128600,
		2.795211, 3.942696, 2.007326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.203334, 4.925473, 2.162279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510128, 4.739143, 2.338799>,  <3.694204, 4.627346, 2.444710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510128, 4.739143, 2.338799>,  <3.203334, 4.925473, 2.162279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510128, 4.739143, 2.338799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148859, -0.798146, -0.583784,
		0.624161, 0.382062, -0.681507,
		0.766984, -0.465824, 0.441298,
		3.740223, 4.599396, 2.471188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629416, 4.617358, 1.557186>,  <3.203334, 4.925473, 2.162279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629416, 4.617358, 1.557186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.630508, 4.444679, 1.917992>,  <3.631164, 4.341072, 2.134475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.630508, 4.444679, 1.917992>,  <3.629416, 4.617358, 1.557186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.630508, 4.444679, 1.917992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344707, -0.847139, -0.404391,
		0.938706, -0.309827, -0.151122,
		0.002730, -0.431697, 0.902014,
		3.631327, 4.315170, 2.188596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.911985, 3.908422, 1.426211>,  <3.629416, 4.617358, 1.557186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.911985, 3.908422, 1.426211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.665932, 3.913528, 1.741539>,  <3.518300, 3.916593, 1.930736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.665932, 3.913528, 1.741539>,  <3.911985, 3.908422, 1.426211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665932, 3.913528, 1.741539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580051, -0.684535, -0.441534,
		0.533995, -0.728868, 0.428486,
		-0.615133, 0.012767, 0.788319,
		3.481392, 3.917359, 1.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830520, 3.227168, 1.604213>,  <3.911985, 3.908422, 1.426211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830520, 3.227168, 1.604213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514256, 3.440125, 1.725151>,  <3.324497, 3.567898, 1.797714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514256, 3.440125, 1.725151>,  <3.830520, 3.227168, 1.604213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.514256, 3.440125, 1.725151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608228, -0.626487, -0.487413,
		-0.070078, -0.569275, 0.819155,
		-0.790662, 0.532390, 0.302347,
		3.277057, 3.599842, 1.815855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.331572, 2.747444, 2.001456>,  <3.830520, 3.227168, 1.604213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.331572, 2.747444, 2.001456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132729, 3.065620, 1.862801>,  <3.013423, 3.256526, 1.779607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132729, 3.065620, 1.862801>,  <3.331572, 2.747444, 2.001456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132729, 3.065620, 1.862801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523761, -0.593588, -0.611005,
		-0.691779, -0.122178, 0.711698,
		-0.497107, 0.795441, -0.346640,
		2.983596, 3.304253, 1.758809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.583178, 2.562162, 1.921912>,  <3.331572, 2.747444, 2.001456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.583178, 2.562162, 1.921912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.594059, 2.885475, 1.686646>,  <2.600588, 3.079463, 1.545485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.594059, 2.885475, 1.686646>,  <2.583178, 2.562162, 1.921912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.594059, 2.885475, 1.686646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493444, -0.500845, -0.711103,
		-0.869352, 0.309571, 0.385217,
		0.027203, 0.808282, -0.588167,
		2.602220, 3.127960, 1.510195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.846148, 2.701075, 1.655680>,  <2.583178, 2.562162, 1.921912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.846148, 2.701075, 1.655680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.143116, 2.831329, 1.421494>,  <2.321297, 2.909482, 1.280982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.143116, 2.831329, 1.421494>,  <1.846148, 2.701075, 1.655680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.143116, 2.831329, 1.421494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342093, -0.567117, -0.749233,
		-0.576006, 0.756531, -0.309641,
		0.742421, 0.325637, -0.585467,
		2.365842, 2.929020, 1.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.621615, 2.622608, 0.877331>,  <1.846148, 2.701075, 1.655680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.621615, 2.622608, 0.877331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.019897, 2.651505, 0.854179>,  <2.258867, 2.668842, 0.840289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.019897, 2.651505, 0.854179>,  <1.621615, 2.622608, 0.877331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019897, 2.651505, 0.854179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001250, -0.635693, -0.771941,
		-0.092558, 0.768554, -0.633054,
		0.995707, 0.072241, -0.057878,
		2.318609, 2.673177, 0.836816>
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
