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
	<24.516323, 35.544037, 35.159351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460276, 35.217045, 34.935890>,  <24.426647, 35.020851, 34.801811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460276, 35.217045, 34.935890>,  <24.516323, 35.544037, 35.159351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460276, 35.217045, 34.935890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925578, 0.092253, -0.367144,
		0.351669, -0.568524, 0.743713,
		-0.140120, -0.817478, -0.558655,
		24.418240, 34.971802, 34.768295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061354, 35.160446, 35.315033>,  <24.516323, 35.544037, 35.159351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061354, 35.160446, 35.315033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932720, 35.079720, 34.944984>,  <24.855541, 35.031284, 34.722954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932720, 35.079720, 34.944984>,  <25.061354, 35.160446, 35.315033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932720, 35.079720, 34.944984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914758, 0.186114, -0.358580,
		0.244547, -0.961577, 0.124767,
		-0.321581, -0.201821, -0.925123,
		24.836246, 35.019173, 34.667446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567938, 34.748188, 34.911133>,  <25.061354, 35.160446, 35.315033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567938, 34.748188, 34.911133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328184, 34.965439, 34.675930>,  <25.184332, 35.095791, 34.534809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328184, 34.965439, 34.675930>,  <25.567938, 34.748188, 34.911133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328184, 34.965439, 34.675930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799586, 0.440588, -0.408098,
		0.037420, -0.714770, -0.698358,
		-0.599385, 0.543127, -0.588006,
		25.148369, 35.128376, 34.499527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823233, 34.710655, 34.310459>,  <25.567938, 34.748188, 34.911133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823233, 34.710655, 34.310459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662514, 35.073967, 34.357079>,  <25.566082, 35.291954, 34.385048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662514, 35.073967, 34.357079>,  <25.823233, 34.710655, 34.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662514, 35.073967, 34.357079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834893, 0.415630, -0.360839,
		-0.376183, -0.047681, -0.925318,
		-0.401795, 0.908283, 0.116545,
		25.541975, 35.346451, 34.392040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736111, 34.991070, 33.626450>,  <25.823233, 34.710655, 34.310459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736111, 34.991070, 33.626450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791998, 35.272087, 33.905567>,  <25.825531, 35.440697, 34.073036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791998, 35.272087, 33.905567>,  <25.736111, 34.991070, 33.626450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791998, 35.272087, 33.905567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798406, 0.336891, -0.499050,
		-0.585684, 0.626849, -0.513843,
		0.139720, 0.702541, 0.697792,
		25.833914, 35.482849, 34.114906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592024, 35.765400, 33.537403>,  <25.736111, 34.991070, 33.626450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592024, 35.765400, 33.537403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908474, 35.650272, 33.753284>,  <26.098343, 35.581196, 33.882812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908474, 35.650272, 33.753284>,  <25.592024, 35.765400, 33.537403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908474, 35.650272, 33.753284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611152, 0.336155, -0.716584,
		0.024818, 0.896751, 0.441839,
		0.791124, -0.287815, 0.539708,
		26.145811, 35.563927, 33.915195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987303, 36.345104, 33.484482>,  <25.592024, 35.765400, 33.537403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987303, 36.345104, 33.484482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238567, 36.053524, 33.593327>,  <26.389326, 35.878574, 33.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238567, 36.053524, 33.593327>,  <25.987303, 36.345104, 33.484482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238567, 36.053524, 33.593327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679704, 0.343872, -0.647885,
		0.378703, 0.591933, 0.711477,
		0.628162, -0.728949, 0.272114,
		26.427015, 35.834839, 33.674961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601128, 36.610348, 33.402172>,  <25.987303, 36.345104, 33.484482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601128, 36.610348, 33.402172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693888, 36.221699, 33.420776>,  <26.749544, 35.988510, 33.431938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693888, 36.221699, 33.420776>,  <26.601128, 36.610348, 33.402172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693888, 36.221699, 33.420776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798384, 0.162801, -0.579723,
		0.555703, 0.171571, 0.813485,
		0.231900, -0.971627, 0.046511,
		26.763458, 35.930210, 33.434731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326982, 36.541050, 33.591785>,  <26.601128, 36.610348, 33.402172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326982, 36.541050, 33.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213722, 36.217339, 33.385914>,  <27.145765, 36.023113, 33.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213722, 36.217339, 33.385914>,  <27.326982, 36.541050, 33.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213722, 36.217339, 33.385914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880094, -0.005996, -0.474762,
		0.381129, -0.587393, 0.713940,
		-0.283152, -0.809280, -0.514675,
		27.128777, 35.974556, 33.231510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954102, 36.137241, 33.554718>,  <27.326982, 36.541050, 33.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954102, 36.137241, 33.554718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727589, 35.999809, 33.255043>,  <27.591681, 35.917351, 33.075237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727589, 35.999809, 33.255043>,  <27.954102, 36.137241, 33.554718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727589, 35.999809, 33.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801763, -0.018930, -0.597342,
		0.191052, -0.938933, 0.286188,
		-0.566282, -0.343578, -0.749186,
		27.557705, 35.896736, 33.030289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353842, 35.728394, 33.203007>,  <27.954102, 36.137241, 33.554718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353842, 35.728394, 33.203007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060913, 35.795036, 32.938904>,  <27.885155, 35.835022, 32.780441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060913, 35.795036, 32.938904>,  <28.353842, 35.728394, 33.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060913, 35.795036, 32.938904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680772, 0.201770, -0.704158,
		0.015904, -0.965159, -0.261182,
		-0.732323, 0.166606, -0.660262,
		27.841217, 35.845016, 32.740826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488815, 35.237282, 32.601444>,  <28.353842, 35.728394, 33.203007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488815, 35.237282, 32.601444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262465, 35.535946, 32.461571>,  <28.126654, 35.715145, 32.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262465, 35.535946, 32.461571>,  <28.488815, 35.237282, 32.601444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262465, 35.535946, 32.461571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672805, 0.173036, -0.719299,
		-0.476565, -0.642306, -0.600274,
		-0.565879, 0.746661, -0.349684,
		28.092701, 35.759945, 32.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451122, 35.117371, 31.821199>,  <28.488815, 35.237282, 32.601444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451122, 35.117371, 31.821199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362963, 35.497063, 31.910984>,  <28.310066, 35.724876, 31.964855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362963, 35.497063, 31.910984>,  <28.451122, 35.117371, 31.821199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362963, 35.497063, 31.910984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609236, 0.313679, -0.728311,
		-0.761745, -0.023769, -0.647441,
		-0.220400, 0.949232, 0.224463,
		28.296843, 35.781834, 31.978323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522373, 35.370995, 31.246941>,  <28.451122, 35.117371, 31.821199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522373, 35.370995, 31.246941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504093, 35.715736, 31.448977>,  <28.493126, 35.922581, 31.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504093, 35.715736, 31.448977>,  <28.522373, 35.370995, 31.246941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504093, 35.715736, 31.448977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523445, 0.451307, -0.722723,
		-0.850833, 0.231357, -0.471759,
		-0.045701, 0.861856, 0.505089,
		28.490383, 35.974293, 31.600504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135168, 35.915020, 30.865768>,  <28.522373, 35.370995, 31.246941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135168, 35.915020, 30.865768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404121, 36.066910, 31.119921>,  <28.565493, 36.158043, 31.272413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404121, 36.066910, 31.119921>,  <28.135168, 35.915020, 30.865768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404121, 36.066910, 31.119921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417386, 0.514405, -0.749117,
		-0.611303, 0.768892, 0.187385,
		0.672382, 0.379726, 0.635382,
		28.605837, 36.180828, 31.310535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131746, 36.642014, 30.547768>,  <28.135168, 35.915020, 30.865768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131746, 36.642014, 30.547768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441284, 36.585808, 30.794806>,  <28.627007, 36.552086, 30.943027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441284, 36.585808, 30.794806>,  <28.131746, 36.642014, 30.547768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441284, 36.585808, 30.794806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609837, 0.428658, -0.666596,
		-0.171071, 0.892473, 0.417405,
		0.773843, -0.140514, 0.617594,
		28.673437, 36.543655, 30.980083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501642, 37.316357, 30.578592>,  <28.131746, 36.642014, 30.547768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501642, 37.316357, 30.578592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776257, 37.060776, 30.717390>,  <28.941025, 36.907425, 30.800669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776257, 37.060776, 30.717390>,  <28.501642, 37.316357, 30.578592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776257, 37.060776, 30.717390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723232, 0.550965, -0.416382,
		0.074869, 0.536818, 0.840370,
		0.686535, -0.638956, 0.346993,
		28.982218, 36.869087, 30.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892883, 37.719990, 30.827158>,  <28.501642, 37.316357, 30.578592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892883, 37.719990, 30.827158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097994, 37.379242, 30.784489>,  <29.221062, 37.174793, 30.758886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097994, 37.379242, 30.784489>,  <28.892883, 37.719990, 30.827158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097994, 37.379242, 30.784489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787441, 0.516183, -0.336887,
		0.342046, 0.088750, 0.935483,
		0.512779, -0.851868, -0.106673,
		29.251827, 37.123680, 30.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426867, 37.895416, 31.171152>,  <28.892883, 37.719990, 30.827158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426867, 37.895416, 31.171152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542757, 37.574509, 30.962378>,  <29.612291, 37.381962, 30.837112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542757, 37.574509, 30.962378>,  <29.426867, 37.895416, 31.171152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542757, 37.574509, 30.962378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703392, 0.548296, -0.452340,
		0.649075, -0.236070, 0.723168,
		0.289726, -0.802273, -0.521935,
		29.629675, 37.333828, 30.805798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187187, 37.838776, 31.162525>,  <29.426867, 37.895416, 31.171152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187187, 37.838776, 31.162525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077984, 37.633892, 30.836800>,  <30.012461, 37.510963, 30.641363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077984, 37.633892, 30.836800>,  <30.187187, 37.838776, 31.162525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077984, 37.633892, 30.836800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741135, 0.427690, -0.517494,
		0.613339, -0.744798, 0.262852,
		-0.273009, -0.512208, -0.814315,
		29.996080, 37.480228, 30.592505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731428, 37.398109, 30.910336>,  <30.187187, 37.838776, 31.162525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731428, 37.398109, 30.910336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492111, 37.454433, 30.594812>,  <30.348520, 37.488228, 30.405499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492111, 37.454433, 30.594812>,  <30.731428, 37.398109, 30.910336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492111, 37.454433, 30.594812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773979, 0.356323, -0.523441,
		0.207365, -0.923692, -0.322170,
		-0.598294, 0.140810, -0.788807,
		30.312622, 37.496677, 30.358170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100237, 37.131248, 30.485056>,  <30.731428, 37.398109, 30.910336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100237, 37.131248, 30.485056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847216, 37.366405, 30.283358>,  <30.695402, 37.507500, 30.162338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847216, 37.366405, 30.283358>,  <31.100237, 37.131248, 30.485056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847216, 37.366405, 30.283358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764465, 0.369346, -0.528372,
		-0.124384, -0.719701, -0.683052,
		-0.632553, 0.587890, -0.504245,
		30.657450, 37.542774, 30.132084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384706, 37.097961, 29.822256>,  <31.100237, 37.131248, 30.485056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384706, 37.097961, 29.822256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138414, 37.413132, 29.819355>,  <30.990639, 37.602234, 29.817614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138414, 37.413132, 29.819355>,  <31.384706, 37.097961, 29.822256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138414, 37.413132, 29.819355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650501, 0.503101, -0.568980,
		-0.444664, -0.355056, -0.822320,
		-0.615729, 0.787925, -0.007254,
		30.953695, 37.649509, 29.817179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314287, 37.301102, 29.134611>,  <31.384706, 37.097961, 29.822256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314287, 37.301102, 29.134611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232208, 37.620354, 29.361195>,  <31.182961, 37.811905, 29.497145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232208, 37.620354, 29.361195>,  <31.314287, 37.301102, 29.134611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232208, 37.620354, 29.361195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415953, 0.595023, -0.687699,
		-0.885933, 0.094506, -0.454084,
		-0.205198, 0.798133, 0.566460,
		31.170649, 37.859795, 29.531134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152138, 37.825836, 28.746908>,  <31.314287, 37.301102, 29.134611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152138, 37.825836, 28.746908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289333, 38.012009, 29.073278>,  <31.371651, 38.123711, 29.269100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289333, 38.012009, 29.073278>,  <31.152138, 37.825836, 28.746908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289333, 38.012009, 29.073278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470689, 0.666543, -0.578077,
		-0.812902, 0.582322, 0.009546,
		0.342990, 0.465427, 0.815926,
		31.392231, 38.151638, 29.318056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131165, 38.589478, 28.668016>,  <31.152138, 37.825836, 28.746908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131165, 38.589478, 28.668016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429165, 38.488499, 28.914995>,  <31.607965, 38.427910, 29.063183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429165, 38.488499, 28.914995>,  <31.131165, 38.589478, 28.668016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429165, 38.488499, 28.914995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528122, 0.788677, -0.314763,
		-0.407504, 0.560586, 0.720891,
		0.745002, -0.252451, 0.617447,
		31.652666, 38.412762, 29.100229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264545, 39.204380, 29.048092>,  <31.131165, 38.589478, 28.668016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264545, 39.204380, 29.048092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589533, 38.973576, 29.014759>,  <31.784527, 38.835091, 28.994759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589533, 38.973576, 29.014759>,  <31.264545, 39.204380, 29.048092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589533, 38.973576, 29.014759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536527, 0.795951, -0.280360,
		0.228101, 0.183073, 0.956271,
		0.812471, -0.577015, -0.083333,
		31.833275, 38.800472, 28.989759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906307, 39.431061, 29.439375>,  <31.264545, 39.204380, 29.048092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906307, 39.431061, 29.439375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060314, 39.196423, 29.154371>,  <32.152718, 39.055641, 28.983370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060314, 39.196423, 29.154371>,  <31.906307, 39.431061, 29.439375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060314, 39.196423, 29.154371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669983, 0.708610, -0.221346,
		0.634731, -0.392147, 0.665835,
		0.385017, -0.586593, -0.712510,
		32.175819, 39.020443, 28.940619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672539, 39.248936, 29.615812>,  <31.906307, 39.431061, 29.439375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672539, 39.248936, 29.615812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516563, 39.361553, 29.265114>,  <32.422977, 39.429123, 29.054695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516563, 39.361553, 29.265114>,  <32.672539, 39.248936, 29.615812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516563, 39.361553, 29.265114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768749, 0.623671, -0.141628,
		0.506925, -0.729223, -0.459631,
		-0.389937, 0.281546, -0.876744,
		32.399582, 39.446018, 29.002090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070827, 39.897446, 29.623999>,  <32.672539, 39.248936, 29.615812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070827, 39.897446, 29.623999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163414, 40.116348, 29.945726>,  <33.218967, 40.247692, 30.138763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163414, 40.116348, 29.945726>,  <33.070827, 39.897446, 29.623999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163414, 40.116348, 29.945726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931229, -0.114579, 0.345953,
		0.281484, -0.829084, 0.483102,
		0.231471, 0.547259, 0.804319,
		33.232857, 40.280525, 30.187021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782791, 39.569630, 30.317173>,  <33.070827, 39.897446, 29.623999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782791, 39.569630, 30.317173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851269, 39.957558, 30.386610>,  <32.892353, 40.190315, 30.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851269, 39.957558, 30.386610>,  <32.782791, 39.569630, 30.317173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851269, 39.957558, 30.386610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959120, 0.123744, 0.254513,
		0.225352, -0.210068, 0.951361,
		0.171190, 0.969824, 0.173594,
		32.902626, 40.248505, 30.438688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610298, 39.766411, 31.093262>,  <32.782791, 39.569630, 30.317173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610298, 39.766411, 31.093262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585880, 40.069172, 30.832993>,  <32.571228, 40.250828, 30.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585880, 40.069172, 30.832993>,  <32.610298, 39.766411, 31.093262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585880, 40.069172, 30.832993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956241, 0.142530, 0.255516,
		0.286141, 0.637799, 0.715078,
		-0.061048, 0.756901, -0.650673,
		32.567566, 40.296242, 30.637791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329151, 40.477448, 31.292881>,  <32.610298, 39.766411, 31.093262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329151, 40.477448, 31.292881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257835, 40.457504, 30.899796>,  <32.215046, 40.445538, 30.663944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257835, 40.457504, 30.899796>,  <32.329151, 40.477448, 31.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257835, 40.457504, 30.899796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959455, 0.230387, 0.162383,
		0.218309, 0.971821, -0.088910,
		-0.178291, -0.049855, -0.982714,
		32.204350, 40.442547, 30.604980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863211, 41.152054, 31.192366>,  <32.329151, 40.477448, 31.292881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863211, 41.152054, 31.192366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832581, 40.931793, 30.859879>,  <31.814203, 40.799637, 30.660387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832581, 40.931793, 30.859879>,  <31.863211, 41.152054, 31.192366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832581, 40.931793, 30.859879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988522, 0.150817, -0.008843,
		0.130231, 0.821000, -0.555876,
		-0.076575, -0.550647, -0.831218,
		31.809608, 40.766598, 30.610514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125767, 41.750546, 30.953962>,  <31.863211, 41.152054, 31.192366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125767, 41.750546, 30.953962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843193, 42.033592, 30.959948>,  <31.673649, 42.203423, 30.963539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843193, 42.033592, 30.959948>,  <32.125767, 41.750546, 30.953962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843193, 42.033592, 30.959948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528668, -0.541605, 0.653586,
		0.470596, 0.453804, 0.756705,
		-0.706435, 0.707620, 0.014965,
		31.631262, 42.245876, 30.964437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882746, 41.960831, 31.622049>,  <32.125767, 41.750546, 30.953962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882746, 41.960831, 31.622049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572424, 42.079891, 31.399506>,  <31.386230, 42.151325, 31.265980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572424, 42.079891, 31.399506>,  <31.882746, 41.960831, 31.622049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572424, 42.079891, 31.399506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629697, -0.421328, 0.652660,
		-0.040147, 0.856673, 0.514295,
		-0.775803, 0.297647, -0.556359,
		31.339684, 42.169186, 31.232597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431997, 42.391373, 32.054058>,  <31.882746, 41.960831, 31.622049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431997, 42.391373, 32.054058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211676, 42.230938, 31.761278>,  <31.079483, 42.134678, 31.585611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211676, 42.230938, 31.761278>,  <31.431997, 42.391373, 32.054058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211676, 42.230938, 31.761278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663652, -0.321346, 0.675502,
		-0.506143, 0.857826, -0.089185,
		-0.550804, -0.401088, -0.731945,
		31.046434, 42.110611, 31.541695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820105, 42.519314, 32.239239>,  <31.431997, 42.391373, 32.054058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820105, 42.519314, 32.239239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811533, 42.201054, 31.997087>,  <30.806391, 42.010098, 31.851795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811533, 42.201054, 31.997087>,  <30.820105, 42.519314, 32.239239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811533, 42.201054, 31.997087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795991, -0.352802, 0.491862,
		-0.604928, 0.492419, -0.625768,
		-0.021430, -0.795647, -0.605381,
		30.805103, 41.962360, 31.815474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105669, 42.361015, 32.163380>,  <30.820105, 42.519314, 32.239239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105669, 42.361015, 32.163380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289320, 42.035461, 32.020943>,  <30.399509, 41.840130, 31.935480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289320, 42.035461, 32.020943>,  <30.105669, 42.361015, 32.163380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289320, 42.035461, 32.020943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676564, -0.580115, 0.453572,
		-0.575724, 0.032665, -0.816991,
		0.459133, -0.813879, -0.356086,
		30.427057, 41.791298, 31.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652996, 41.863728, 31.967150>,  <30.105669, 42.361015, 32.163380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652996, 41.863728, 31.967150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968666, 41.622059, 32.011292>,  <30.158068, 41.477058, 32.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968666, 41.622059, 32.011292>,  <29.652996, 41.863728, 31.967150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968666, 41.622059, 32.011292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525677, -0.571558, 0.630067,
		-0.317595, -0.555244, -0.768659,
		0.789175, -0.604173, 0.110355,
		30.205418, 41.440807, 32.044399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499151, 41.126774, 31.750555>,  <29.652996, 41.863728, 31.967150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499151, 41.126774, 31.750555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812775, 41.111641, 31.998369>,  <30.000948, 41.102562, 32.147057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812775, 41.111641, 31.998369>,  <29.499151, 41.126774, 31.750555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812775, 41.111641, 31.998369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467359, -0.692816, 0.549164,
		0.408447, -0.720121, -0.560889,
		0.784057, -0.037832, 0.619534,
		30.047993, 41.100292, 32.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730959, 40.354389, 31.789473>,  <29.499151, 41.126774, 31.750555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730959, 40.354389, 31.789473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863911, 40.538692, 32.118649>,  <29.943682, 40.649273, 32.316154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863911, 40.538692, 32.118649>,  <29.730959, 40.354389, 31.789473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863911, 40.538692, 32.118649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450281, -0.689161, 0.567718,
		0.828717, -0.559251, -0.021592,
		0.332378, 0.460755, 0.822940,
		29.963623, 40.676918, 32.365532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042391, 39.822445, 32.118744>,  <29.730959, 40.354389, 31.789473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042391, 39.822445, 32.118744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985285, 40.097439, 32.403553>,  <29.951021, 40.262436, 32.574440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985285, 40.097439, 32.403553>,  <30.042391, 39.822445, 32.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985285, 40.097439, 32.403553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403141, -0.697405, 0.592540,
		0.903933, -0.202451, 0.376721,
		-0.142766, 0.687488, 0.712024,
		29.942455, 40.303684, 32.617161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320597, 39.560150, 32.606575>,  <30.042391, 39.822445, 32.118744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320597, 39.560150, 32.606575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096725, 39.839314, 32.785320>,  <29.962402, 40.006809, 32.892567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096725, 39.839314, 32.785320>,  <30.320597, 39.560150, 32.606575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096725, 39.839314, 32.785320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306808, -0.675414, 0.670586,
		0.769823, 0.238212, 0.592138,
		-0.559680, 0.697905, 0.446864,
		29.928822, 40.048683, 32.919380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566525, 39.725269, 33.282108>,  <30.320597, 39.560150, 32.606575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566525, 39.725269, 33.282108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174025, 39.797615, 33.308758>,  <29.938524, 39.841022, 33.324749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174025, 39.797615, 33.308758>,  <30.566525, 39.725269, 33.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174025, 39.797615, 33.308758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062251, -0.624500, 0.778540,
		0.182419, 0.759794, 0.624049,
		-0.981248, 0.180868, 0.066623,
		29.879650, 39.851875, 33.328743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377584, 39.716713, 33.986820>,  <30.566525, 39.725269, 33.282108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377584, 39.716713, 33.986820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020332, 39.686543, 33.809448>,  <29.805981, 39.668442, 33.703026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020332, 39.686543, 33.809448>,  <30.377584, 39.716713, 33.986820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020332, 39.686543, 33.809448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271213, -0.696174, 0.664669,
		-0.358838, 0.713900, 0.601317,
		-0.893129, -0.075424, -0.443433,
		29.752394, 39.663914, 33.676418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967169, 39.598423, 34.573486>,  <30.377584, 39.716713, 33.986820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967169, 39.598423, 34.573486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735226, 39.517361, 34.257843>,  <29.596060, 39.468723, 34.068455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735226, 39.517361, 34.257843>,  <29.967169, 39.598423, 34.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735226, 39.517361, 34.257843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470863, -0.707066, 0.527584,
		-0.664871, 0.677487, 0.314575,
		-0.579858, -0.202653, -0.789111,
		29.561268, 39.456566, 34.021111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301102, 39.501720, 34.773891>,  <29.967169, 39.598423, 34.573486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301102, 39.501720, 34.773891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331591, 39.295990, 34.432213>,  <29.349884, 39.172550, 34.227203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331591, 39.295990, 34.432213>,  <29.301102, 39.501720, 34.773891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331591, 39.295990, 34.432213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348715, -0.816341, 0.460418,
		-0.934124, 0.262779, -0.241576,
		0.076220, -0.514329, -0.854199,
		29.354456, 39.141693, 34.175953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635357, 39.197254, 34.718159>,  <29.301102, 39.501720, 34.773891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635357, 39.197254, 34.718159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859373, 38.990921, 34.458843>,  <28.993782, 38.867123, 34.303253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859373, 38.990921, 34.458843>,  <28.635357, 39.197254, 34.718159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859373, 38.990921, 34.458843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437623, -0.848627, 0.297184,
		-0.703449, 0.117270, -0.701004,
		0.560040, -0.515830, -0.648286,
		29.027386, 38.836170, 34.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208670, 38.664124, 34.326633>,  <28.635357, 39.197254, 34.718159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208670, 38.664124, 34.326633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586109, 38.532612, 34.311012>,  <28.812572, 38.453705, 34.301640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586109, 38.532612, 34.311012>,  <28.208670, 38.664124, 34.326633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586109, 38.532612, 34.311012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295262, -0.888981, 0.350047,
		-0.149809, -0.318772, -0.935917,
		0.943598, -0.328782, -0.039056,
		28.869188, 38.433979, 34.299294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015335, 38.143684, 33.987637>,  <28.208670, 38.664124, 34.326633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015335, 38.143684, 33.987637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388496, 38.069309, 34.111000>,  <28.612394, 38.024685, 34.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388496, 38.069309, 34.111000>,  <28.015335, 38.143684, 33.987637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388496, 38.069309, 34.111000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246956, -0.953623, 0.172090,
		0.262109, -0.236707, -0.935558,
		0.932905, -0.185935, 0.308409,
		28.668367, 38.013527, 34.203522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265852, 37.456997, 33.661289>,  <28.015335, 38.143684, 33.987637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265852, 37.456997, 33.661289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473444, 37.523640, 33.996647>,  <28.598000, 37.563625, 34.197861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473444, 37.523640, 33.996647>,  <28.265852, 37.456997, 33.661289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473444, 37.523640, 33.996647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240331, -0.912816, 0.330163,
		0.820306, -0.372839, -0.433692,
		0.518979, 0.166605, 0.838394,
		28.629137, 37.573620, 34.248165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478527, 36.816669, 33.793564>,  <28.265852, 37.456997, 33.661289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478527, 36.816669, 33.793564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497255, 37.020550, 34.137196>,  <28.508492, 37.142876, 34.343376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497255, 37.020550, 34.137196>,  <28.478527, 36.816669, 33.793564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497255, 37.020550, 34.137196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191822, -0.839428, 0.508492,
		0.980312, -0.188598, 0.058469,
		0.046820, 0.509697, 0.859079,
		28.511301, 37.173458, 34.394920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937317, 36.464928, 34.191570>,  <28.478527, 36.816669, 33.793564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937317, 36.464928, 34.191570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723185, 36.668594, 34.461140>,  <28.594706, 36.790794, 34.622879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723185, 36.668594, 34.461140>,  <28.937317, 36.464928, 34.191570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723185, 36.668594, 34.461140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082262, -0.825512, 0.558357,
		0.840626, 0.243468, 0.483809,
		-0.535332, 0.509169, 0.673919,
		28.562586, 36.821346, 34.663315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034660, 36.245171, 34.878212>,  <28.937317, 36.464928, 34.191570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034660, 36.245171, 34.878212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688391, 36.436733, 34.936531>,  <28.480629, 36.551670, 34.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688391, 36.436733, 34.936531>,  <29.034660, 36.245171, 34.878212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688391, 36.436733, 34.936531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314250, -0.746569, 0.586414,
		0.389683, 0.461828, 0.796782,
		-0.865676, 0.478904, 0.145796,
		28.428688, 36.580406, 34.980270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884960, 36.045406, 35.553333>,  <29.034660, 36.245171, 34.878212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884960, 36.045406, 35.553333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545904, 36.174290, 35.384720>,  <28.342470, 36.251621, 35.283554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545904, 36.174290, 35.384720>,  <28.884960, 36.045406, 35.553333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545904, 36.174290, 35.384720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525853, -0.615912, 0.586626,
		-0.070608, 0.718911, 0.691507,
		-0.847640, 0.322210, -0.421530,
		28.291613, 36.270954, 35.258263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431633, 36.145248, 36.066277>,  <28.884960, 36.045406, 35.553333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431633, 36.145248, 36.066277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185806, 36.105415, 35.753254>,  <28.038311, 36.081516, 35.565441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185806, 36.105415, 35.753254>,  <28.431633, 36.145248, 36.066277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185806, 36.105415, 35.753254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571440, -0.627687, 0.528645,
		-0.543841, 0.772071, 0.328852,
		-0.614568, -0.099579, -0.782554,
		28.001436, 36.075542, 35.518486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574816, 35.604099, 36.569187>,  <28.431633, 36.145248, 36.066277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574816, 35.604099, 36.569187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967913, 35.609810, 36.495411>,  <29.203770, 35.613235, 36.451145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967913, 35.609810, 36.495411>,  <28.574816, 35.604099, 36.569187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967913, 35.609810, 36.495411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147106, -0.664831, 0.732366,
		-0.112162, -0.746858, -0.655457,
		0.982741, 0.014278, -0.184436,
		29.262735, 35.614094, 36.440079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853487, 34.882423, 36.617470>,  <28.574816, 35.604099, 36.569187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853487, 34.882423, 36.617470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187984, 35.101761, 36.619164>,  <29.388683, 35.233364, 36.620178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187984, 35.101761, 36.619164>,  <28.853487, 34.882423, 36.617470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187984, 35.101761, 36.619164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481761, -0.738348, 0.471962,
		0.261920, -0.392637, -0.881609,
		0.836244, 0.548341, 0.004231,
		29.438858, 35.266262, 36.620434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462154, 34.514362, 36.324360>,  <28.853487, 34.882423, 36.617470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462154, 34.514362, 36.324360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626705, 34.786667, 36.566788>,  <29.725435, 34.950050, 36.712246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626705, 34.786667, 36.566788>,  <29.462154, 34.514362, 36.324360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626705, 34.786667, 36.566788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503440, -0.724021, 0.471532,
		0.759813, 0.111143, -0.640571,
		0.411379, 0.680765, 0.606074,
		29.750118, 34.990898, 36.748611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208431, 34.284534, 36.326435>,  <29.462154, 34.514362, 36.324360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208431, 34.284534, 36.326435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120251, 34.503777, 36.649170>,  <30.067343, 34.635323, 36.842812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120251, 34.503777, 36.649170>,  <30.208431, 34.284534, 36.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120251, 34.503777, 36.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516829, -0.635883, 0.573185,
		0.827217, 0.543356, -0.143094,
		-0.220453, 0.548104, 0.806835,
		30.054115, 34.668209, 36.891220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782116, 34.409969, 36.731251>,  <30.208431, 34.284534, 36.326435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782116, 34.409969, 36.731251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487543, 34.417156, 37.001759>,  <30.310799, 34.421467, 37.164062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487543, 34.417156, 37.001759>,  <30.782116, 34.409969, 36.731251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487543, 34.417156, 37.001759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614229, -0.401196, 0.679532,
		0.283526, 0.915816, 0.284419,
		-0.736434, 0.017967, 0.676270,
		30.266613, 34.422546, 37.204639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144754, 34.606995, 37.334549>,  <30.782116, 34.409969, 36.731251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144754, 34.606995, 37.334549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813358, 34.455494, 37.499546>,  <30.614521, 34.364594, 37.598545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813358, 34.455494, 37.499546>,  <31.144754, 34.606995, 37.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813358, 34.455494, 37.499546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556806, -0.478579, 0.678918,
		-0.059732, 0.792156, 0.607389,
		-0.828492, -0.378751, 0.412490,
		30.564810, 34.341869, 37.623295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137075, 34.823582, 38.093739>,  <31.144754, 34.606995, 37.334549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137075, 34.823582, 38.093739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952787, 34.475197, 38.025436>,  <30.842215, 34.266167, 37.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952787, 34.475197, 38.025436>,  <31.137075, 34.823582, 38.093739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952787, 34.475197, 38.025436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606195, -0.449319, 0.656232,
		-0.648278, 0.198829, 0.734985,
		-0.460720, -0.870965, -0.170754,
		30.814571, 34.213909, 37.974209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729435, 34.492268, 38.706459>,  <31.137075, 34.823582, 38.093739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729435, 34.492268, 38.706459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898422, 34.256130, 38.431355>,  <30.999815, 34.114449, 38.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898422, 34.256130, 38.431355>,  <30.729435, 34.492268, 38.706459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898422, 34.256130, 38.431355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608149, -0.378015, 0.698040,
		-0.672070, -0.713158, 0.199321,
		0.422466, -0.590348, -0.687758,
		31.025162, 34.079025, 38.225025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852123, 33.827198, 38.890533>,  <30.729435, 34.492268, 38.706459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852123, 33.827198, 38.890533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134897, 33.864826, 38.610134>,  <31.304562, 33.887402, 38.441895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134897, 33.864826, 38.610134>,  <30.852123, 33.827198, 38.890533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134897, 33.864826, 38.610134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703146, -0.200481, 0.682198,
		-0.076361, -0.975171, -0.207873,
		0.706934, 0.094072, -0.700996,
		31.346977, 33.893047, 38.399834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303040, 33.338154, 39.081394>,  <30.852123, 33.827198, 38.890533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303040, 33.338154, 39.081394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501986, 33.620106, 38.879101>,  <31.621353, 33.789276, 38.757725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501986, 33.620106, 38.879101>,  <31.303040, 33.338154, 39.081394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501986, 33.620106, 38.879101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681123, 0.043771, 0.730859,
		0.537307, -0.707972, -0.458342,
		0.497366, 0.704883, -0.505735,
		31.651196, 33.831570, 38.727379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976770, 33.068871, 39.079952>,  <31.303040, 33.338154, 39.081394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976770, 33.068871, 39.079952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993814, 33.464008, 39.020157>,  <32.004040, 33.701092, 38.984280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993814, 33.464008, 39.020157>,  <31.976770, 33.068871, 39.079952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993814, 33.464008, 39.020157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775620, 0.061603, 0.628187,
		0.629760, -0.142710, -0.763568,
		0.042611, 0.987846, -0.149484,
		32.006599, 33.760361, 38.975311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730061, 33.195717, 39.116013>,  <31.976770, 33.068871, 39.079952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730061, 33.195717, 39.116013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568233, 33.554573, 39.186962>,  <32.471138, 33.769886, 39.229534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568233, 33.554573, 39.186962>,  <32.730061, 33.195717, 39.116013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568233, 33.554573, 39.186962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586600, 0.105778, 0.802939,
		0.701587, 0.428893, -0.569057,
		-0.404569, 0.897141, 0.177377,
		32.446861, 33.823715, 39.240173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260609, 33.623955, 39.102505>,  <32.730061, 33.195717, 39.116013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260609, 33.623955, 39.102505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959518, 33.788177, 39.308361>,  <32.778866, 33.886711, 39.431877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959518, 33.788177, 39.308361>,  <33.260609, 33.623955, 39.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959518, 33.788177, 39.308361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576086, 0.032391, 0.816747,
		0.318647, 0.911262, -0.260895,
		-0.752721, 0.410552, 0.514644,
		32.733704, 33.911343, 39.462753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524628, 34.171341, 39.520241>,  <33.260609, 33.623955, 39.102505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524628, 34.171341, 39.520241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176208, 34.102982, 39.704445>,  <32.967155, 34.061966, 39.814968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176208, 34.102982, 39.704445>,  <33.524628, 34.171341, 39.520241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176208, 34.102982, 39.704445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454403, 0.075655, 0.887578,
		-0.186528, 0.982379, 0.011759,
		-0.871049, -0.170901, 0.460508,
		32.914894, 34.051712, 39.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631493, 34.520454, 40.172729>,  <33.524628, 34.171341, 39.520241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631493, 34.520454, 40.172729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291904, 34.322838, 40.247753>,  <33.088154, 34.204269, 40.292767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291904, 34.322838, 40.247753>,  <33.631493, 34.520454, 40.172729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291904, 34.322838, 40.247753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149006, 0.116718, 0.981924,
		-0.507002, 0.861569, -0.025475,
		-0.848968, -0.494041, 0.187555,
		33.037212, 34.174625, 40.304020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427689, 34.787003, 40.703239>,  <33.631493, 34.520454, 40.172729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427689, 34.787003, 40.703239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203060, 34.456055, 40.707207>,  <33.068283, 34.257484, 40.709587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203060, 34.456055, 40.707207>,  <33.427689, 34.787003, 40.703239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203060, 34.456055, 40.707207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104512, -0.059037, 0.992770,
		-0.820801, 0.558548, 0.119623,
		-0.561572, -0.827368, 0.009918,
		33.034588, 34.207844, 40.710182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095009, 34.828518, 41.301392>,  <33.427689, 34.787003, 40.703239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095009, 34.828518, 41.301392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085018, 34.437305, 41.218601>,  <33.079025, 34.202579, 41.168926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085018, 34.437305, 41.218601>,  <33.095009, 34.828518, 41.301392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085018, 34.437305, 41.218601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074810, -0.208284, 0.975203,
		-0.996885, 0.008870, 0.078368,
		-0.024973, -0.978028, -0.206971,
		33.077526, 34.143898, 41.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532864, 34.552120, 41.709946>,  <33.095009, 34.828518, 41.301392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532864, 34.552120, 41.709946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807732, 34.273369, 41.627815>,  <32.972652, 34.106117, 41.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807732, 34.273369, 41.627815>,  <32.532864, 34.552120, 41.709946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807732, 34.273369, 41.627815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135717, -0.154519, 0.978624,
		-0.713711, -0.700344, -0.011602,
		0.687166, -0.696880, -0.205331,
		33.013882, 34.064304, 41.566216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302963, 33.995941, 42.170681>,  <32.532864, 34.552120, 41.709946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302963, 33.995941, 42.170681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682266, 33.894573, 42.094177>,  <32.909847, 33.833752, 42.048275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682266, 33.894573, 42.094177>,  <32.302963, 33.995941, 42.170681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682266, 33.894573, 42.094177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155408, -0.154804, 0.975646,
		-0.276858, -0.954889, -0.107411,
		0.948260, -0.253423, -0.191256,
		32.966743, 33.818546, 42.036800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443371, 33.428383, 42.513203>,  <32.302963, 33.995941, 42.170681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443371, 33.428383, 42.513203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808918, 33.580902, 42.457413>,  <33.028248, 33.672413, 42.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808918, 33.580902, 42.457413>,  <32.443371, 33.428383, 42.513203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808918, 33.580902, 42.457413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232380, -0.209535, 0.949787,
		0.332926, -0.900393, -0.280093,
		0.913871, 0.381297, -0.139474,
		33.083080, 33.695290, 42.415569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941700, 32.882202, 42.660183>,  <32.443371, 33.428383, 42.513203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941700, 32.882202, 42.660183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137814, 33.230331, 42.678810>,  <33.255482, 33.439209, 42.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137814, 33.230331, 42.678810>,  <32.941700, 32.882202, 42.660183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137814, 33.230331, 42.678810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236957, -0.184523, 0.953836,
		0.838736, -0.456611, -0.296697,
		0.490279, 0.870320, 0.046569,
		33.284897, 33.491428, 42.692780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511753, 32.789768, 43.000504>,  <32.941700, 32.882202, 42.660183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511753, 32.789768, 43.000504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483089, 33.183701, 43.063721>,  <33.465893, 33.420059, 43.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483089, 33.183701, 43.063721>,  <33.511753, 32.789768, 43.000504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483089, 33.183701, 43.063721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429864, -0.112487, 0.895859,
		0.900045, 0.132135, -0.415282,
		-0.071660, 0.984828, 0.158044,
		33.461590, 33.479149, 43.111134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189377, 32.871620, 43.305725>,  <33.511753, 32.789768, 43.000504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189377, 32.871620, 43.305725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921150, 33.150032, 43.408390>,  <33.760212, 33.317081, 43.469990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921150, 33.150032, 43.408390>,  <34.189377, 32.871620, 43.305725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921150, 33.150032, 43.408390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376583, 0.021292, 0.926138,
		0.639157, 0.717695, -0.276391,
		-0.670570, 0.696032, 0.256663,
		33.719978, 33.358841, 43.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374989, 33.134224, 43.957554>,  <34.189377, 32.871620, 43.305725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374989, 33.134224, 43.957554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028267, 33.332142, 43.932777>,  <33.820236, 33.450893, 43.917912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028267, 33.332142, 43.932777>,  <34.374989, 33.134224, 43.957554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028267, 33.332142, 43.932777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014240, 0.148729, 0.988775,
		0.498450, 0.856190, -0.135964,
		-0.866801, 0.494791, -0.061941,
		33.768227, 33.480579, 43.914196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433205, 33.830196, 44.245384>,  <34.374989, 33.134224, 43.957554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433205, 33.830196, 44.245384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046173, 33.735271, 44.279949>,  <33.813953, 33.678318, 44.300690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046173, 33.735271, 44.279949>,  <34.433205, 33.830196, 44.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046173, 33.735271, 44.279949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050651, 0.152863, 0.986948,
		-0.247421, 0.959332, -0.135888,
		-0.967583, -0.237309, 0.086413,
		33.755898, 33.664078, 44.305874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232407, 34.210453, 44.737602>,  <34.433205, 33.830196, 44.245384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232407, 34.210453, 44.737602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941929, 33.935467, 44.739857>,  <33.767643, 33.770477, 44.741211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941929, 33.935467, 44.739857>,  <34.232407, 34.210453, 44.737602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941929, 33.935467, 44.739857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111497, 0.125864, 0.985762,
		-0.678384, 0.715230, -0.168053,
		-0.726198, -0.687463, 0.005638,
		33.724068, 33.729229, 44.741547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671413, 34.430439, 45.180561>,  <34.232407, 34.210453, 44.737602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671413, 34.430439, 45.180561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628548, 34.032845, 45.171589>,  <33.602829, 33.794289, 45.166206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628548, 34.032845, 45.171589>,  <33.671413, 34.430439, 45.180561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628548, 34.032845, 45.171589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154029, -0.005694, 0.988050,
		-0.982238, 0.109339, -0.152493,
		-0.107164, -0.993988, -0.022434,
		33.596397, 33.734650, 45.164860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155155, 34.352341, 45.549423>,  <33.671413, 34.430439, 45.180561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155155, 34.352341, 45.549423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295151, 33.978970, 45.580959>,  <33.379147, 33.754948, 45.599880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295151, 33.978970, 45.580959>,  <33.155155, 34.352341, 45.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295151, 33.978970, 45.580959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288628, -0.027383, 0.957050,
		-0.891180, -0.357712, -0.278998,
		0.349988, -0.933430, 0.078842,
		33.400146, 33.698940, 45.604610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598621, 34.001953, 45.869091>,  <33.155155, 34.352341, 45.549423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598621, 34.001953, 45.869091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909611, 33.752998, 45.905228>,  <33.096207, 33.603626, 45.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909611, 33.752998, 45.905228>,  <32.598621, 34.001953, 45.869091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909611, 33.752998, 45.905228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188043, -0.092970, 0.977751,
		-0.600142, -0.777166, -0.189318,
		0.777476, -0.622390, 0.090346,
		33.142853, 33.566280, 45.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228340, 33.459988, 46.256554>,  <32.598621, 34.001953, 45.869091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228340, 33.459988, 46.256554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627922, 33.446384, 46.268833>,  <32.867672, 33.438221, 46.276199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627922, 33.446384, 46.268833>,  <32.228340, 33.459988, 46.256554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627922, 33.446384, 46.268833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039861, -0.315002, 0.948254,
		-0.022580, -0.948481, -0.316027,
		0.998950, -0.034009, 0.030695,
		32.927608, 33.436180, 46.278042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264160, 32.977970, 46.706219>,  <32.228340, 33.459988, 46.256554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264160, 32.977970, 46.706219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634811, 33.128075, 46.696983>,  <32.857204, 33.218136, 46.691441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634811, 33.128075, 46.696983>,  <32.264160, 32.977970, 46.706219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634811, 33.128075, 46.696983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048634, -0.058746, 0.997088,
		0.372813, -0.925055, -0.072686,
		0.926631, 0.375262, -0.023088,
		32.912800, 33.240654, 46.690056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765572, 32.542831, 47.030136>,  <32.264160, 32.977970, 46.706219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765572, 32.542831, 47.030136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961830, 32.889023, 47.070572>,  <33.079586, 33.096737, 47.094833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961830, 32.889023, 47.070572>,  <32.765572, 32.542831, 47.030136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961830, 32.889023, 47.070572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072933, -0.156401, 0.984997,
		0.868302, -0.475910, -0.139858,
		0.490644, 0.865476, 0.101094,
		33.109024, 33.148666, 47.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455711, 32.352901, 47.448830>,  <32.765572, 32.542831, 47.030136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455711, 32.352901, 47.448830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394924, 32.746868, 47.481918>,  <33.358452, 32.983250, 47.501770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394924, 32.746868, 47.481918>,  <33.455711, 32.352901, 47.448830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394924, 32.746868, 47.481918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007482, -0.082544, 0.996559,
		0.988357, 0.152065, 0.005175,
		-0.151969, 0.984918, 0.082721,
		33.349335, 33.042343, 47.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883915, 32.707150, 47.954571>,  <33.455711, 32.352901, 47.448830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883915, 32.707150, 47.954571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594803, 32.982433, 47.929440>,  <33.421333, 33.147606, 47.914360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594803, 32.982433, 47.929440>,  <33.883915, 32.707150, 47.954571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594803, 32.982433, 47.929440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012439, 0.103848, 0.994515,
		0.690963, 0.718037, -0.083620,
		-0.722783, 0.688214, -0.062824,
		33.377968, 33.188896, 47.910591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178238, 33.211853, 48.361679>,  <33.883915, 32.707150, 47.954571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178238, 33.211853, 48.361679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789936, 33.286621, 48.301422>,  <33.556953, 33.331482, 48.265270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789936, 33.286621, 48.301422>,  <34.178238, 33.211853, 48.361679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789936, 33.286621, 48.301422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093195, 0.284851, 0.954031,
		0.221235, 0.940171, -0.259101,
		-0.970757, 0.186918, -0.150638,
		33.498711, 33.342697, 48.256229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023464, 33.862453, 48.759789>,  <34.178238, 33.211853, 48.361679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023464, 33.862453, 48.759789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685959, 33.660851, 48.685982>,  <33.483456, 33.539890, 48.641697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685959, 33.660851, 48.685982>,  <34.023464, 33.862453, 48.759789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685959, 33.660851, 48.685982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245979, 0.057563, 0.967564,
		-0.477037, 0.861780, -0.172545,
		-0.843759, -0.504006, -0.184520,
		33.432831, 33.509647, 48.630627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424442, 34.268238, 49.089260>,  <34.023464, 33.862453, 48.759789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424442, 34.268238, 49.089260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354958, 33.878975, 49.028866>,  <33.313267, 33.645416, 48.992630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354958, 33.878975, 49.028866>,  <33.424442, 34.268238, 49.089260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354958, 33.878975, 49.028866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064078, -0.141822, 0.987816,
		-0.982710, 0.181267, -0.037722,
		-0.173708, -0.973154, -0.150985,
		33.302845, 33.587029, 48.983570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781384, 34.030399, 49.506390>,  <33.424442, 34.268238, 49.089260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781384, 34.030399, 49.506390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025284, 33.722866, 49.429337>,  <33.171623, 33.538345, 49.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025284, 33.722866, 49.429337>,  <32.781384, 34.030399, 49.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025284, 33.722866, 49.429337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045921, -0.276900, 0.959801,
		-0.791262, -0.576393, -0.204146,
		0.609750, -0.768829, -0.192632,
		33.208210, 33.492218, 49.371548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456226, 33.552502, 49.947479>,  <32.781384, 34.030399, 49.506390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456226, 33.552502, 49.947479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800209, 33.376339, 49.844322>,  <33.006599, 33.270641, 49.782429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800209, 33.376339, 49.844322>,  <32.456226, 33.552502, 49.947479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800209, 33.376339, 49.844322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150178, -0.264581, 0.952598,
		-0.487767, -0.857926, -0.161390,
		0.859959, -0.440409, -0.257895,
		33.058197, 33.244217, 49.766953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432636, 32.980721, 50.222752>,  <32.456226, 33.552502, 49.947479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432636, 32.980721, 50.222752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821754, 32.994350, 50.131096>,  <33.055225, 33.002529, 50.076103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821754, 32.994350, 50.131096>,  <32.432636, 32.980721, 50.222752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821754, 32.994350, 50.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221356, -0.428435, 0.876039,
		-0.068320, -0.902930, -0.424323,
		0.972797, 0.034075, -0.229140,
		33.113594, 33.004574, 50.062355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704426, 32.337299, 50.210720>,  <32.432636, 32.980721, 50.222752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704426, 32.337299, 50.210720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027119, 32.556461, 50.299259>,  <33.220734, 32.687958, 50.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027119, 32.556461, 50.299259>,  <32.704426, 32.337299, 50.210720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027119, 32.556461, 50.299259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164034, -0.567492, 0.806874,
		0.567699, -0.614620, -0.547687,
		0.806728, 0.547901, 0.221346,
		33.269138, 32.720833, 50.365662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232265, 31.837027, 50.351467>,  <32.704426, 32.337299, 50.210720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232265, 31.837027, 50.351467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348038, 32.182114, 50.517334>,  <33.417500, 32.389168, 50.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348038, 32.182114, 50.517334>,  <33.232265, 31.837027, 50.351467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348038, 32.182114, 50.517334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231249, -0.483396, 0.844306,
		0.928845, -0.148478, -0.339413,
		0.289432, 0.862718, 0.414664,
		33.434868, 32.440929, 50.641735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922302, 31.802006, 50.503986>,  <33.232265, 31.837027, 50.351467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922302, 31.802006, 50.503986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780266, 32.088184, 50.744667>,  <33.695042, 32.259892, 50.889076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780266, 32.088184, 50.744667>,  <33.922302, 31.802006, 50.503986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780266, 32.088184, 50.744667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360902, -0.488831, 0.794226,
		0.862356, 0.499179, -0.084625,
		-0.355094, 0.715447, 0.601701,
		33.673737, 32.302818, 50.925179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547474, 31.879486, 51.003883>,  <33.922302, 31.802006, 50.503986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547474, 31.879486, 51.003883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220806, 32.046753, 51.162975>,  <34.024807, 32.147114, 51.258430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220806, 32.046753, 51.162975>,  <34.547474, 31.879486, 51.003883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220806, 32.046753, 51.162975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178539, -0.472303, 0.863165,
		0.548799, 0.775928, 0.311054,
		-0.816666, 0.418169, 0.397734,
		33.975807, 32.172203, 51.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681664, 32.115704, 51.726345>,  <34.547474, 31.879486, 51.003883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681664, 32.115704, 51.726345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 32.073090, 51.709972>,  <34.045841, 32.047523, 51.700150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 32.073090, 51.709972>,  <34.681664, 32.115704, 51.726345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284275, 32.073090, 51.709972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026181, -0.561844, 0.826829,
		-0.111080, 0.820355, 0.560962,
		-0.993466, -0.106531, -0.040932,
		33.986237, 32.041130, 51.697693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473118, 32.202229, 52.372746>,  <34.681664, 32.115704, 51.726345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473118, 32.202229, 52.372746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161457, 32.028252, 52.192192>,  <33.974461, 31.923866, 52.083862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161457, 32.028252, 52.192192>,  <34.473118, 32.202229, 52.372746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161457, 32.028252, 52.192192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202327, -0.507050, 0.837833,
		-0.593278, 0.744130, 0.307072,
		-0.779157, -0.434939, -0.451379,
		33.927711, 31.897770, 52.056778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962975, 32.175224, 52.802483>,  <34.473118, 32.202229, 52.372746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962975, 32.175224, 52.802483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849770, 31.880043, 52.557426>,  <33.781845, 31.702934, 52.410393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849770, 31.880043, 52.557426>,  <33.962975, 32.175224, 52.802483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849770, 31.880043, 52.557426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205569, -0.577236, 0.790278,
		-0.936827, 0.349598, 0.011665,
		-0.283013, -0.737956, -0.612637,
		33.764866, 31.658657, 52.373634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177212, 31.920633, 52.859589>,  <33.962975, 32.175224, 52.802483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177212, 31.920633, 52.859589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473095, 31.664165, 52.777870>,  <33.650623, 31.510284, 52.728840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473095, 31.664165, 52.777870>,  <33.177212, 31.920633, 52.859589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473095, 31.664165, 52.777870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119946, -0.424349, 0.897520,
		-0.662155, -0.639395, -0.390799,
		0.739705, -0.641172, -0.204292,
		33.695007, 31.471813, 52.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880779, 31.215250, 52.863113>,  <33.177212, 31.920633, 52.859589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880779, 31.215250, 52.863113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264359, 31.237226, 52.974403>,  <33.494507, 31.250412, 53.041176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264359, 31.237226, 52.974403>,  <32.880779, 31.215250, 52.863113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264359, 31.237226, 52.974403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225719, -0.446079, 0.866063,
		0.171692, -0.893306, -0.415363,
		0.958944, 0.054941, 0.278225,
		33.552040, 31.253708, 53.057869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060608, 30.558014, 53.248466>,  <32.880779, 31.215250, 52.863113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060608, 30.558014, 53.248466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283913, 30.870764, 53.359470>,  <33.417896, 31.058414, 53.426071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283913, 30.870764, 53.359470>,  <33.060608, 30.558014, 53.248466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283913, 30.870764, 53.359470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295286, -0.125330, 0.947153,
		0.775336, -0.610706, 0.160910,
		0.558265, 0.781876, 0.277506,
		33.451393, 31.105328, 53.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074146, 30.311401, 53.881985>,  <33.060608, 30.558014, 53.248466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074146, 30.311401, 53.881985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234402, 30.674816, 53.834564>,  <33.330555, 30.892864, 53.806110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234402, 30.674816, 53.834564>,  <33.074146, 30.311401, 53.881985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234402, 30.674816, 53.834564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270640, 0.240962, 0.932036,
		0.875354, -0.341323, 0.342424,
		0.400636, 0.908535, -0.118552,
		33.354591, 30.947376, 53.799000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290356, 30.438381, 54.519894>,  <33.074146, 30.311401, 53.881985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290356, 30.438381, 54.519894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251923, 30.799244, 54.351665>,  <33.228863, 31.015762, 54.250729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251923, 30.799244, 54.351665>,  <33.290356, 30.438381, 54.519894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251923, 30.799244, 54.351665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342154, 0.366845, 0.865075,
		0.934719, 0.227017, 0.273431,
		-0.096080, 0.902157, -0.420571,
		33.223099, 31.069891, 54.225494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543327, 31.037344, 54.952019>,  <33.290356, 30.438381, 54.519894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543327, 31.037344, 54.952019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241665, 31.144579, 54.712227>,  <33.060665, 31.208920, 54.568352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241665, 31.144579, 54.712227>,  <33.543327, 31.037344, 54.952019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241665, 31.144579, 54.712227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461219, 0.433591, 0.774129,
		0.467463, 0.860307, -0.203349,
		-0.754158, 0.268088, -0.599478,
		33.015419, 31.225006, 54.532383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152645, 31.072657, 54.537533>,  <33.543327, 31.037344, 54.952019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152645, 31.072657, 54.537533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479004, 30.900867, 54.382687>,  <34.674820, 30.797794, 54.289780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479004, 30.900867, 54.382687>,  <34.152645, 31.072657, 54.537533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479004, 30.900867, 54.382687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562523, -0.744428, -0.359714,
		-0.133696, 0.511255, -0.848966,
		0.815900, -0.429471, -0.387120,
		34.723774, 30.772026, 54.266552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983654, 30.804531, 53.828194>,  <34.152645, 31.072657, 54.537533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983654, 30.804531, 53.828194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312061, 30.614746, 53.955200>,  <34.509106, 30.500875, 54.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312061, 30.614746, 53.955200>,  <33.983654, 30.804531, 53.828194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312061, 30.614746, 53.955200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333449, -0.849965, -0.407887,
		0.463403, 0.229007, -0.856045,
		0.821017, -0.474464, 0.317514,
		34.558365, 30.472406, 54.050453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430328, 30.643419, 53.285980>,  <33.983654, 30.804531, 53.828194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430328, 30.643419, 53.285980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447823, 30.385708, 53.591396>,  <34.458321, 30.231081, 53.774647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447823, 30.385708, 53.591396>,  <34.430328, 30.643419, 53.285980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447823, 30.385708, 53.591396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431727, -0.701415, -0.567123,
		0.900943, -0.304835, -0.308831,
		0.043740, -0.644276, 0.763541,
		34.460945, 30.192425, 53.820457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722672, 30.040285, 53.051987>,  <34.430328, 30.643419, 53.285980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722672, 30.040285, 53.051987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468174, 30.012299, 53.359310>,  <34.315475, 29.995506, 53.543705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468174, 30.012299, 53.359310>,  <34.722672, 30.040285, 53.051987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468174, 30.012299, 53.359310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570534, -0.627689, -0.529621,
		0.519316, -0.775314, 0.359443,
		-0.636241, -0.069966, 0.768311,
		34.277302, 29.991308, 53.589802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798317, 29.429892, 53.329636>,  <34.722672, 30.040285, 53.051987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798317, 29.429892, 53.329636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432030, 29.588964, 53.306622>,  <34.212257, 29.684408, 53.292812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432030, 29.588964, 53.306622>,  <34.798317, 29.429892, 53.329636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432030, 29.588964, 53.306622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255697, -0.687162, -0.680020,
		-0.309967, -0.607995, 0.730933,
		-0.915718, 0.397681, -0.057535,
		34.157314, 29.708269, 53.289360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290371, 28.889610, 53.218834>,  <34.798317, 29.429892, 53.329636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290371, 28.889610, 53.218834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157700, 29.231119, 53.058304>,  <34.078094, 29.436024, 52.961987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157700, 29.231119, 53.058304>,  <34.290371, 28.889610, 53.218834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157700, 29.231119, 53.058304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266671, -0.492909, -0.828207,
		-0.904916, -0.167680, 0.391165,
		-0.331683, 0.853770, -0.401326,
		34.058193, 29.487249, 52.937904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653893, 28.817926, 52.836735>,  <34.290371, 28.889610, 53.218834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653893, 28.817926, 52.836735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861771, 29.112757, 52.663933>,  <33.986496, 29.289656, 52.560249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861771, 29.112757, 52.663933>,  <33.653893, 28.817926, 52.836735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861771, 29.112757, 52.663933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194344, -0.390410, -0.899894,
		-0.831953, 0.551630, -0.059648,
		0.519696, 0.737078, -0.432009,
		34.017681, 29.333879, 52.534328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164310, 29.234985, 52.442135>,  <33.653893, 28.817926, 52.836735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164310, 29.234985, 52.442135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535057, 29.178844, 52.302868>,  <33.757504, 29.145159, 52.219307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535057, 29.178844, 52.302868>,  <33.164310, 29.234985, 52.442135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535057, 29.178844, 52.302868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374559, -0.283934, -0.882659,
		0.025027, 0.948516, -0.315739,
		0.926865, -0.140353, -0.348169,
		33.813118, 29.136738, 52.198418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257179, 29.490742, 51.702911>,  <33.164310, 29.234985, 52.442135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257179, 29.490742, 51.702911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566971, 29.240309, 51.739155>,  <33.752846, 29.090050, 51.760899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566971, 29.240309, 51.739155>,  <33.257179, 29.490742, 51.702911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566971, 29.240309, 51.739155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098251, -0.260534, -0.960452,
		0.624927, 0.734945, -0.263290,
		0.774475, -0.626082, 0.090606,
		33.799313, 29.052485, 51.766338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701954, 29.711115, 51.141140>,  <33.257179, 29.490742, 51.702911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701954, 29.711115, 51.141140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787361, 29.342201, 51.270016>,  <33.838608, 29.120853, 51.347340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787361, 29.342201, 51.270016>,  <33.701954, 29.711115, 51.141140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787361, 29.342201, 51.270016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064048, -0.315868, -0.946639,
		0.974837, 0.222763, -0.008374,
		0.213522, -0.922282, 0.322187,
		33.851418, 29.065517, 51.366673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278976, 29.511797, 50.795292>,  <33.701954, 29.711115, 51.141140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278976, 29.511797, 50.795292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120930, 29.150425, 50.861858>,  <34.026100, 28.933601, 50.901798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120930, 29.150425, 50.861858>,  <34.278976, 29.511797, 50.795292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120930, 29.150425, 50.861858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000427, -0.181334, -0.983422,
		0.918630, -0.388497, 0.072034,
		-0.395118, -0.903431, 0.166413,
		34.002396, 28.879396, 50.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588921, 29.120695, 50.298893>,  <34.278976, 29.511797, 50.795292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588921, 29.120695, 50.298893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302139, 28.864494, 50.408970>,  <34.130070, 28.710773, 50.475018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302139, 28.864494, 50.408970>,  <34.588921, 29.120695, 50.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302139, 28.864494, 50.408970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174220, -0.217610, -0.960361,
		0.675001, -0.736478, 0.044428,
		-0.716952, -0.640504, 0.275196,
		34.087055, 28.672342, 50.491528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675282, 28.487276, 49.905502>,  <34.588921, 29.120695, 50.298893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675282, 28.487276, 49.905502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301315, 28.469858, 50.046383>,  <34.076935, 28.459408, 50.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301315, 28.469858, 50.046383>,  <34.675282, 28.487276, 49.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301315, 28.469858, 50.046383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304436, -0.411600, -0.859014,
		0.182370, -0.910324, 0.371553,
		-0.934912, -0.043544, 0.352198,
		34.020844, 28.456795, 50.152042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553234, 27.765350, 49.901009>,  <34.675282, 28.487276, 49.905502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553234, 27.765350, 49.901009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211781, 27.973700, 49.901833>,  <34.006908, 28.098709, 49.902328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211781, 27.973700, 49.901833>,  <34.553234, 27.765350, 49.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211781, 27.973700, 49.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232625, -0.377688, -0.896235,
		-0.466046, -0.765534, 0.443575,
		-0.853631, 0.520873, 0.002062,
		33.955692, 28.129961, 49.902451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121292, 27.360359, 49.578762>,  <34.553234, 27.765350, 49.901009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121292, 27.360359, 49.578762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892162, 27.685909, 49.539825>,  <33.754684, 27.881239, 49.516464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892162, 27.685909, 49.539825>,  <34.121292, 27.360359, 49.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892162, 27.685909, 49.539825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481421, -0.430175, -0.763664,
		-0.663403, -0.390585, 0.638233,
		-0.572827, 0.813875, -0.097344,
		33.720314, 27.930071, 49.510624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489220, 27.093407, 49.310410>,  <34.121292, 27.360359, 49.578762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489220, 27.093407, 49.310410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506649, 27.481035, 49.213249>,  <33.517109, 27.713612, 49.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506649, 27.481035, 49.213249>,  <33.489220, 27.093407, 49.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506649, 27.481035, 49.213249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205769, -0.229214, -0.951378,
		-0.977630, 0.091438, 0.189417,
		0.043575, 0.969072, -0.242902,
		33.519722, 27.771757, 49.140377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036293, 27.128494, 48.752968>,  <33.489220, 27.093407, 49.310410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036293, 27.128494, 48.752968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201485, 27.491995, 48.728901>,  <33.300598, 27.710094, 48.714462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201485, 27.491995, 48.728901>,  <33.036293, 27.128494, 48.752968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201485, 27.491995, 48.728901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386674, 0.115145, -0.915000,
		-0.824581, 0.401138, 0.398943,
		0.412977, 0.908752, -0.060163,
		33.325378, 27.764620, 48.710854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596039, 27.532713, 48.377640>,  <33.036293, 27.128494, 48.752968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596039, 27.532713, 48.377640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918114, 27.768631, 48.352955>,  <33.111359, 27.910181, 48.338142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918114, 27.768631, 48.352955>,  <32.596039, 27.532713, 48.377640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918114, 27.768631, 48.352955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186486, 0.153047, -0.970464,
		-0.562929, 0.792918, 0.233220,
		0.805192, 0.589794, -0.061714,
		33.159672, 27.945570, 48.334442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358200, 28.136497, 48.064236>,  <32.596039, 27.532713, 48.377640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358200, 28.136497, 48.064236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750927, 28.109268, 47.993359>,  <32.986565, 28.092930, 47.950832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750927, 28.109268, 47.993359>,  <32.358200, 28.136497, 48.064236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750927, 28.109268, 47.993359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124086, 0.476221, -0.870527,
		0.143641, 0.876687, 0.459116,
		0.981820, -0.068073, -0.177189,
		33.045471, 28.088846, 47.940201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558811, 28.735727, 47.820427>,  <32.358200, 28.136497, 48.064236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558811, 28.735727, 47.820427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854630, 28.500183, 47.690006>,  <33.032120, 28.358856, 47.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854630, 28.500183, 47.690006>,  <32.558811, 28.735727, 47.820427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854630, 28.500183, 47.690006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110088, 0.372062, -0.921656,
		0.664040, 0.717504, 0.210331,
		0.739548, -0.588862, -0.326053,
		33.076492, 28.323524, 47.592190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084114, 29.132481, 47.253525>,  <32.558811, 28.735727, 47.820427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084114, 29.132481, 47.253525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135494, 28.740078, 47.195381>,  <33.166321, 28.504637, 47.160496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135494, 28.740078, 47.195381>,  <33.084114, 29.132481, 47.253525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135494, 28.740078, 47.195381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215941, 0.115387, -0.969565,
		0.967921, 0.155928, -0.197018,
		0.128449, -0.981006, -0.145357,
		33.174030, 28.445776, 47.151775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523129, 29.103231, 46.623486>,  <33.084114, 29.132481, 47.253525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523129, 29.103231, 46.623486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379543, 28.733320, 46.673969>,  <33.293392, 28.511374, 46.704262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379543, 28.733320, 46.673969>,  <33.523129, 29.103231, 46.623486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379543, 28.733320, 46.673969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335869, 0.001821, -0.941907,
		0.870827, -0.380498, -0.311259,
		-0.358960, -0.924780, 0.126212,
		33.271854, 28.455887, 46.711834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853092, 28.776844, 46.079510>,  <33.523129, 29.103231, 46.623486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853092, 28.776844, 46.079510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519032, 28.583288, 46.184101>,  <33.318596, 28.467154, 46.246857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519032, 28.583288, 46.184101>,  <33.853092, 28.776844, 46.079510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519032, 28.583288, 46.184101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275221, -0.043958, -0.960376,
		0.476212, -0.874023, -0.096466,
		-0.835150, -0.483892, 0.261483,
		33.268486, 28.438120, 46.262547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883202, 28.183580, 45.680676>,  <33.853092, 28.776844, 46.079510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883202, 28.183580, 45.680676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505066, 28.256710, 45.788685>,  <33.278183, 28.300587, 45.853489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505066, 28.256710, 45.788685>,  <33.883202, 28.183580, 45.680676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505066, 28.256710, 45.788685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286061, -0.067427, -0.955836,
		-0.156545, -0.980830, 0.116041,
		-0.945337, 0.182826, 0.270022,
		33.221466, 28.311556, 45.869690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497124, 27.761351, 45.253693>,  <33.883202, 28.183580, 45.680676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497124, 27.761351, 45.253693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264023, 28.061710, 45.377979>,  <33.124161, 28.241926, 45.452553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264023, 28.061710, 45.377979>,  <33.497124, 27.761351, 45.253693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264023, 28.061710, 45.377979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243451, 0.203479, -0.948329,
		-0.775323, -0.628290, 0.064228,
		-0.582757, 0.750898, 0.310720,
		33.089195, 28.286980, 45.471195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956196, 27.747036, 44.791119>,  <33.497124, 27.761351, 45.253693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956196, 27.747036, 44.791119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898819, 28.105463, 44.959160>,  <32.864391, 28.320518, 45.059986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898819, 28.105463, 44.959160>,  <32.956196, 27.747036, 44.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898819, 28.105463, 44.959160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502447, 0.299780, -0.810974,
		-0.852626, -0.327409, 0.407224,
		-0.143442, 0.896067, 0.420106,
		32.855785, 28.374283, 45.085190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281654, 27.817385, 44.714005>,  <32.956196, 27.747036, 44.791119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281654, 27.817385, 44.714005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420151, 28.190659, 44.752552>,  <32.503250, 28.414623, 44.775681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420151, 28.190659, 44.752552>,  <32.281654, 27.817385, 44.714005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420151, 28.190659, 44.752552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454066, 0.256584, -0.853222,
		-0.820939, 0.251663, 0.512567,
		0.346241, 0.933183, 0.096368,
		32.524021, 28.470613, 44.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758215, 28.182234, 44.404026>,  <32.281654, 27.817385, 44.714005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758215, 28.182234, 44.404026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051872, 28.452663, 44.429180>,  <32.228065, 28.614922, 44.444275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051872, 28.452663, 44.429180>,  <31.758215, 28.182234, 44.404026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051872, 28.452663, 44.429180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343809, 0.450006, -0.824191,
		-0.585514, 0.583454, 0.562810,
		0.734145, 0.676074, 0.062888,
		32.272118, 28.655485, 44.448048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456543, 28.893608, 44.468338>,  <31.758215, 28.182234, 44.404026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456543, 28.893608, 44.468338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828873, 28.926247, 44.325840>,  <32.052269, 28.945829, 44.240341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828873, 28.926247, 44.325840>,  <31.456543, 28.893608, 44.468338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828873, 28.926247, 44.325840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347462, 0.499796, -0.793394,
		0.113312, 0.862291, 0.493573,
		0.930822, 0.081597, -0.356247,
		32.108120, 28.950726, 44.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452047, 29.540598, 44.269779>,  <31.456543, 28.893608, 44.468338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452047, 29.540598, 44.269779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771288, 29.394894, 44.077801>,  <31.962831, 29.307470, 43.962612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771288, 29.394894, 44.077801>,  <31.452047, 29.540598, 44.269779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771288, 29.394894, 44.077801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230851, 0.550912, -0.802000,
		0.556547, 0.750872, 0.355592,
		0.798100, -0.364262, -0.479948,
		32.010719, 29.285616, 43.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736279, 30.096363, 44.058666>,  <31.452047, 29.540598, 44.269779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736279, 30.096363, 44.058666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862272, 29.800312, 43.821011>,  <31.937868, 29.622683, 43.678417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862272, 29.800312, 43.821011>,  <31.736279, 30.096363, 44.058666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862272, 29.800312, 43.821011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190765, 0.563856, -0.803540,
		0.929727, 0.366445, 0.036416,
		0.314987, -0.740125, -0.594136,
		31.956768, 29.578274, 43.642769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055508, 30.423128, 43.586742>,  <31.736279, 30.096363, 44.058666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055508, 30.423128, 43.586742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981470, 30.070696, 43.412647>,  <31.937048, 29.859236, 43.308189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981470, 30.070696, 43.412647>,  <32.055508, 30.423128, 43.586742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981470, 30.070696, 43.412647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239290, 0.469970, -0.849628,
		0.953143, -0.053111, -0.297823,
		-0.185093, -0.881083, -0.435240,
		31.925941, 29.806372, 43.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482281, 30.525911, 42.996037>,  <32.055508, 30.423128, 43.586742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482281, 30.525911, 42.996037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204132, 30.245058, 42.934750>,  <32.037243, 30.076546, 42.897980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204132, 30.245058, 42.934750>,  <32.482281, 30.525911, 42.996037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204132, 30.245058, 42.934750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250408, 0.436557, -0.864126,
		0.673617, -0.562519, -0.479387,
		-0.695367, -0.702133, -0.153213,
		31.995522, 30.034418, 42.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622429, 30.307796, 42.342667>,  <32.482281, 30.525911, 42.996037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622429, 30.307796, 42.342667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250256, 30.169994, 42.392632>,  <32.026951, 30.087313, 42.422611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250256, 30.169994, 42.392632>,  <32.622429, 30.307796, 42.342667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250256, 30.169994, 42.392632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226087, 0.271398, -0.935536,
		0.288393, -0.898700, -0.330406,
		-0.930438, -0.344502, 0.124915,
		31.971125, 30.066643, 42.430107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546673, 30.049473, 41.759182>,  <32.622429, 30.307796, 42.342667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546673, 30.049473, 41.759182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163803, 30.061861, 41.874317>,  <31.934080, 30.069294, 41.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163803, 30.061861, 41.874317>,  <32.546673, 30.049473, 41.759182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163803, 30.061861, 41.874317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273229, 0.231959, -0.933563,
		-0.095679, -0.972232, -0.213565,
		-0.957179, 0.030970, 0.287836,
		31.876650, 30.071152, 41.960667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126865, 29.596273, 41.324497>,  <32.546673, 30.049473, 41.759182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126865, 29.596273, 41.324497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888664, 29.882385, 41.470787>,  <31.745745, 30.054052, 41.558559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888664, 29.882385, 41.470787>,  <32.126865, 29.596273, 41.324497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888664, 29.882385, 41.470787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205615, 0.304376, -0.930096,
		-0.776597, -0.629070, -0.034183,
		-0.595500, 0.715281, 0.365723,
		31.710014, 30.096970, 41.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542755, 29.614573, 40.904388>,  <32.126865, 29.596273, 41.324497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542755, 29.614573, 40.904388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480303, 29.962778, 41.091080>,  <31.442831, 30.171701, 41.203094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480303, 29.962778, 41.091080>,  <31.542755, 29.614573, 40.904388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480303, 29.962778, 41.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369764, 0.386649, -0.844853,
		-0.915914, -0.304484, 0.261518,
		-0.156129, 0.870513, 0.466724,
		31.433464, 30.223932, 41.231098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944841, 29.798439, 40.681122>,  <31.542755, 29.614573, 40.904388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944841, 29.798439, 40.681122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090639, 30.153614, 40.793346>,  <31.178118, 30.366718, 40.860680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090639, 30.153614, 40.793346>,  <30.944841, 29.798439, 40.681122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090639, 30.153614, 40.793346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307332, 0.399112, -0.863861,
		-0.879028, 0.228647, 0.418366,
		0.364495, 0.887936, 0.280560,
		31.199987, 30.419994, 40.877514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439814, 30.353115, 40.608685>,  <30.944841, 29.798439, 40.681122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439814, 30.353115, 40.608685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793287, 30.540209, 40.601440>,  <31.005371, 30.652466, 40.597092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793287, 30.540209, 40.601440>,  <30.439814, 30.353115, 40.608685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793287, 30.540209, 40.601440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200022, 0.342346, -0.918036,
		-0.423195, 0.814877, 0.396083,
		0.883684, 0.467734, -0.018114,
		31.058392, 30.680529, 40.596004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311193, 31.133181, 40.316479>,  <30.439814, 30.353115, 40.608685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311193, 31.133181, 40.316479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691923, 31.026028, 40.256790>,  <30.920361, 30.961737, 40.220978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691923, 31.026028, 40.256790>,  <30.311193, 31.133181, 40.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691923, 31.026028, 40.256790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064870, 0.299698, -0.951826,
		0.299698, 0.915653, 0.267883,
		0.951826, -0.267883, -0.149217,
		30.977470, 30.945663, 40.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606550, 31.652798, 40.028244>,  <30.311193, 31.133181, 40.316479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606550, 31.652798, 40.028244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863539, 31.364765, 39.923393>,  <31.017733, 31.191946, 39.860481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863539, 31.364765, 39.923393>,  <30.606550, 31.652798, 40.028244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863539, 31.364765, 39.923393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046975, 0.378433, -0.924436,
		0.764868, 0.581611, 0.276959,
		0.642472, -0.720082, -0.262130,
		31.056280, 31.148741, 39.844753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087608, 32.096317, 39.923096>,  <30.606550, 31.652798, 40.028244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087608, 32.096317, 39.923096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173544, 31.752941, 39.736794>,  <31.225105, 31.546915, 39.625011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173544, 31.752941, 39.736794>,  <31.087608, 32.096317, 39.923096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173544, 31.752941, 39.736794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249719, 0.509320, -0.823550,
		0.944185, 0.060624, 0.323790,
		0.214839, -0.858439, -0.465753,
		31.237995, 31.495409, 39.597069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650639, 32.279736, 39.462734>,  <31.087608, 32.096317, 39.923096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650639, 32.279736, 39.462734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492332, 31.933920, 39.338833>,  <31.397348, 31.726431, 39.264492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492332, 31.933920, 39.338833>,  <31.650639, 32.279736, 39.462734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492332, 31.933920, 39.338833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162433, 0.266077, -0.950168,
		0.903872, -0.426358, 0.035125,
		-0.395766, -0.864535, -0.309754,
		31.373602, 31.674559, 39.245907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165478, 31.998596, 39.021542>,  <31.650639, 32.279736, 39.462734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165478, 31.998596, 39.021542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813856, 31.819727, 38.955452>,  <31.602882, 31.712406, 38.915798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813856, 31.819727, 38.955452>,  <32.165478, 31.998596, 39.021542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813856, 31.819727, 38.955452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155760, 0.058150, -0.986082,
		0.450556, -0.892556, 0.018534,
		-0.879056, -0.447172, -0.165224,
		31.550140, 31.685575, 38.905884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372105, 31.556898, 38.461555>,  <32.165478, 31.998596, 39.021542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372105, 31.556898, 38.461555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974773, 31.602934, 38.464306>,  <31.736374, 31.630556, 38.465958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974773, 31.602934, 38.464306>,  <32.372105, 31.556898, 38.461555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974773, 31.602934, 38.464306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037845, 0.381817, -0.923463,
		-0.108909, -0.917044, -0.383626,
		-0.993331, 0.115092, 0.006878,
		31.676775, 31.637461, 38.466370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444366, 31.032375, 37.940361>,  <32.372105, 31.556898, 38.461555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444366, 31.032375, 37.940361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837051, 31.107517, 37.928082>,  <33.072662, 31.152603, 37.920712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837051, 31.107517, 37.928082>,  <32.444366, 31.032375, 37.940361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837051, 31.107517, 37.928082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154033, -0.689264, 0.707947,
		0.111830, -0.699733, -0.705598,
		0.981717, 0.187855, -0.030702,
		33.131565, 31.163874, 37.918869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769291, 30.435707, 37.959007>,  <32.444366, 31.032375, 37.940361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769291, 30.435707, 37.959007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072105, 30.668755, 38.077297>,  <33.253796, 30.808584, 38.148270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072105, 30.668755, 38.077297>,  <32.769291, 30.435707, 37.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072105, 30.668755, 38.077297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272389, -0.692827, 0.667679,
		0.593888, -0.424905, -0.683194,
		0.757035, 0.582620, 0.295722,
		33.299217, 30.843540, 38.166016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407436, 30.019106, 38.215595>,  <32.769291, 30.435707, 37.959007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407436, 30.019106, 38.215595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497578, 30.367290, 38.390644>,  <33.551662, 30.576202, 38.495674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497578, 30.367290, 38.390644>,  <33.407436, 30.019106, 38.215595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497578, 30.367290, 38.390644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355220, -0.491663, 0.795039,
		0.907214, -0.023710, -0.420001,
		0.225349, 0.870463, 0.437621,
		33.565182, 30.628429, 38.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133244, 30.040493, 38.481030>,  <33.407436, 30.019106, 38.215595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133244, 30.040493, 38.481030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961349, 30.318634, 38.711441>,  <33.858212, 30.485518, 38.849689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961349, 30.318634, 38.711441>,  <34.133244, 30.040493, 38.481030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961349, 30.318634, 38.711441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417605, -0.412563, 0.809566,
		0.800582, 0.588455, -0.113088,
		-0.429738, 0.695350, 0.576032,
		33.832428, 30.527239, 38.884251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662350, 30.244471, 38.905174>,  <34.133244, 30.040493, 38.481030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662350, 30.244471, 38.905174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332718, 30.383970, 39.083729>,  <34.134937, 30.467670, 39.190861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332718, 30.383970, 39.083729>,  <34.662350, 30.244471, 38.905174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332718, 30.383970, 39.083729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327051, -0.350500, 0.877603,
		0.462521, 0.869210, 0.174782,
		-0.824082, 0.348747, 0.446390,
		34.085495, 30.488594, 39.217648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905663, 30.544214, 39.467567>,  <34.662350, 30.244471, 38.905174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905663, 30.544214, 39.467567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521542, 30.464979, 39.546127>,  <34.291069, 30.417439, 39.593262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521542, 30.464979, 39.546127>,  <34.905663, 30.544214, 39.467567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521542, 30.464979, 39.546127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259854, -0.379256, 0.888054,
		-0.101426, 0.903840, 0.415676,
		-0.960307, -0.198087, 0.196399,
		34.233448, 30.405554, 39.605045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838951, 30.856773, 40.058811>,  <34.905663, 30.544214, 39.467567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838951, 30.856773, 40.058811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550251, 30.584309, 40.009682>,  <34.377029, 30.420830, 39.980202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550251, 30.584309, 40.009682>,  <34.838951, 30.856773, 40.058811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550251, 30.584309, 40.009682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195873, -0.371214, 0.907653,
		-0.663856, 0.631044, 0.401346,
		-0.721754, -0.681164, -0.122828,
		34.333725, 30.379959, 39.972832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493008, 30.801641, 40.715889>,  <34.838951, 30.856773, 40.058811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493008, 30.801641, 40.715889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440254, 30.470903, 40.497192>,  <34.408604, 30.272461, 40.365974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440254, 30.470903, 40.497192>,  <34.493008, 30.801641, 40.715889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440254, 30.470903, 40.497192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056739, -0.544362, 0.836929,
		-0.989640, 0.141399, 0.024878,
		-0.131884, -0.826847, -0.546745,
		34.400688, 30.222849, 40.333168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046600, 30.423992, 41.109169>,  <34.493008, 30.801641, 40.715889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046600, 30.423992, 41.109169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219120, 30.150793, 40.873375>,  <34.322632, 29.986874, 40.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219120, 30.150793, 40.873375>,  <34.046600, 30.423992, 41.109169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219120, 30.150793, 40.873375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082649, -0.680544, 0.728032,
		-0.898416, -0.265279, -0.349967,
		0.431299, -0.682999, -0.589486,
		34.348511, 29.945894, 40.696529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669281, 29.836908, 41.194908>,  <34.046600, 30.423992, 41.109169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669281, 29.836908, 41.194908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016705, 29.707724, 41.044548>,  <34.225159, 29.630213, 40.954330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016705, 29.707724, 41.044548>,  <33.669281, 29.836908, 41.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016705, 29.707724, 41.044548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056396, -0.689160, 0.722411,
		-0.492368, -0.648655, -0.580362,
		0.868558, -0.322962, -0.375902,
		34.277271, 29.610834, 40.931778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603016, 29.182436, 41.325954>,  <33.669281, 29.836908, 41.194908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603016, 29.182436, 41.325954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990761, 29.190788, 41.228058>,  <34.223408, 29.195799, 41.169319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990761, 29.190788, 41.228058>,  <33.603016, 29.182436, 41.325954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990761, 29.190788, 41.228058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184459, -0.719823, 0.669201,
		-0.162195, -0.693843, -0.701623,
		0.969365, 0.020879, -0.244737,
		34.281570, 29.197052, 41.154636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773064, 28.498348, 41.126022>,  <33.603016, 29.182436, 41.325954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773064, 28.498348, 41.126022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109367, 28.682819, 41.239471>,  <34.311150, 28.793503, 41.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109367, 28.682819, 41.239471>,  <33.773064, 28.498348, 41.126022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109367, 28.682819, 41.239471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099448, -0.646486, 0.756417,
		0.532199, -0.607758, -0.589401,
		0.840758, 0.461179, 0.283619,
		34.361595, 28.821173, 41.324558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017696, 27.924267, 41.520947>,  <33.773064, 28.498348, 41.126022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017696, 27.924267, 41.520947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263695, 28.226305, 41.611813>,  <34.411293, 28.407528, 41.666332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263695, 28.226305, 41.611813>,  <34.017696, 27.924267, 41.520947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263695, 28.226305, 41.611813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291843, -0.485603, 0.824025,
		0.732532, -0.440478, -0.519015,
		0.615000, 0.755095, 0.227169,
		34.448196, 28.452833, 41.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588909, 27.620699, 41.707973>,  <34.017696, 27.924267, 41.520947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588909, 27.620699, 41.707973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589298, 27.976318, 41.891098>,  <34.589531, 28.189690, 42.000973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589298, 27.976318, 41.891098>,  <34.588909, 27.620699, 41.707973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589298, 27.976318, 41.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182338, -0.450294, 0.874064,
		0.983236, 0.082628, -0.162544,
		0.000971, 0.889049, 0.457811,
		34.589588, 28.243032, 42.028442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245583, 27.580769, 41.969822>,  <34.588909, 27.620699, 41.707973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245583, 27.580769, 41.969822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029034, 27.858490, 42.159496>,  <34.899105, 28.025124, 42.273300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029034, 27.858490, 42.159496>,  <35.245583, 27.580769, 41.969822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029034, 27.858490, 42.159496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374023, -0.306235, 0.875401,
		0.753009, 0.651276, -0.093899,
		-0.541373, 0.694305, 0.474190,
		34.866623, 28.066782, 42.301754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695103, 27.912222, 42.375107>,  <35.245583, 27.580769, 41.969822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695103, 27.912222, 42.375107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342625, 27.979849, 42.551704>,  <35.131138, 28.020424, 42.657665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342625, 27.979849, 42.551704>,  <35.695103, 27.912222, 42.375107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342625, 27.979849, 42.551704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346261, -0.405021, 0.846204,
		0.321880, 0.898540, 0.298360,
		-0.881190, 0.169066, 0.441497,
		35.078266, 28.030569, 42.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858238, 28.126255, 43.135651>,  <35.695103, 27.912222, 42.375107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858238, 28.126255, 43.135651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463921, 28.060942, 43.151405>,  <35.227329, 28.021753, 43.160858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463921, 28.060942, 43.151405>,  <35.858238, 28.126255, 43.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463921, 28.060942, 43.151405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106148, -0.423899, 0.899468,
		-0.130173, 0.890869, 0.435209,
		-0.985793, -0.163283, 0.039383,
		35.168182, 28.011957, 43.163219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619934, 28.519699, 43.684586>,  <35.858238, 28.126255, 43.135651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619934, 28.519699, 43.684586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370667, 28.208237, 43.655296>,  <35.221107, 28.021360, 43.637722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370667, 28.208237, 43.655296>,  <35.619934, 28.519699, 43.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370667, 28.208237, 43.655296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214553, -0.260241, 0.941404,
		-0.752085, 0.570939, 0.329236,
		-0.623165, -0.778655, -0.073227,
		35.183716, 27.974640, 43.633327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185650, 28.578449, 44.285168>,  <35.619934, 28.519699, 43.684586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185650, 28.578449, 44.285168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174515, 28.196463, 44.167004>,  <35.167831, 27.967272, 44.096104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174515, 28.196463, 44.167004>,  <35.185650, 28.578449, 44.285168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174515, 28.196463, 44.167004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081114, -0.292392, 0.952852,
		-0.996316, 0.050491, -0.069321,
		-0.027841, -0.954964, -0.295410,
		35.166161, 27.909973, 44.078381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731773, 28.289299, 44.739521>,  <35.185650, 28.578449, 44.285168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731773, 28.289299, 44.739521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908985, 27.958487, 44.601109>,  <35.015312, 27.759998, 44.518063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908985, 27.958487, 44.601109>,  <34.731773, 28.289299, 44.739521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908985, 27.958487, 44.601109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018639, -0.377398, 0.925864,
		-0.896311, -0.416639, -0.151785,
		0.443034, -0.827033, -0.346031,
		35.041897, 27.710377, 44.497299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406429, 27.814091, 45.121078>,  <34.731773, 28.289299, 44.739521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406429, 27.814091, 45.121078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722061, 27.607882, 44.987457>,  <34.911442, 27.484156, 44.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722061, 27.607882, 44.987457>,  <34.406429, 27.814091, 45.121078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722061, 27.607882, 44.987457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073633, -0.460500, 0.884601,
		-0.609863, -0.722617, -0.325411,
		0.789079, -0.515524, -0.334050,
		34.958786, 27.453224, 44.887241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144550, 27.155308, 45.275429>,  <34.406429, 27.814091, 45.121078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144550, 27.155308, 45.275429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543625, 27.167238, 45.250973>,  <34.783070, 27.174397, 45.236298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543625, 27.167238, 45.250973>,  <34.144550, 27.155308, 45.275429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543625, 27.167238, 45.250973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068002, -0.463813, 0.883320,
		-0.002012, -0.885431, -0.464766,
		0.997683, 0.029828, -0.061145,
		34.842930, 27.176186, 45.232628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360031, 26.639008, 45.726761>,  <34.144550, 27.155308, 45.275429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360031, 26.639008, 45.726761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680431, 26.870907, 45.667034>,  <34.872669, 27.010046, 45.631199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680431, 26.870907, 45.667034>,  <34.360031, 26.639008, 45.726761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680431, 26.870907, 45.667034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225781, -0.061549, 0.972232,
		0.554461, -0.812467, -0.180197,
		0.800997, 0.579749, -0.149313,
		34.920731, 27.044832, 45.622242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994003, 26.347036, 45.999832>,  <34.360031, 26.639008, 45.726761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994003, 26.347036, 45.999832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047138, 26.742914, 45.978455>,  <35.079018, 26.980442, 45.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047138, 26.742914, 45.978455>,  <34.994003, 26.347036, 45.999832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047138, 26.742914, 45.978455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259201, 0.017360, 0.965667,
		0.956645, -0.142130, -0.254224,
		0.132837, 0.989696, -0.053447,
		35.086990, 27.039824, 45.962421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687660, 26.490168, 46.212791>,  <34.994003, 26.347036, 45.999832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687660, 26.490168, 46.212791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496246, 26.834892, 46.280064>,  <35.381397, 27.041727, 46.320427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496246, 26.834892, 46.280064>,  <35.687660, 26.490168, 46.212791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496246, 26.834892, 46.280064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422110, 0.057831, 0.904698,
		0.769952, 0.503923, -0.391453,
		-0.478536, 0.861811, 0.168183,
		35.352684, 27.093435, 46.330517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151592, 26.785006, 46.582367>,  <35.687660, 26.490168, 46.212791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151592, 26.785006, 46.582367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846062, 27.038515, 46.631184>,  <35.662743, 27.190620, 46.660473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846062, 27.038515, 46.631184>,  <36.151592, 26.785006, 46.582367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846062, 27.038515, 46.631184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309859, 0.194224, 0.930733,
		0.566171, 0.748738, -0.344734,
		-0.763831, 0.633773, 0.122039,
		35.616913, 27.228647, 46.667797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445618, 27.484615, 46.848186>,  <36.151592, 26.785006, 46.582367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445618, 27.484615, 46.848186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061825, 27.440790, 46.952026>,  <35.831551, 27.414495, 47.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061825, 27.440790, 46.952026>,  <36.445618, 27.484615, 46.848186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061825, 27.440790, 46.952026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172181, 0.501313, 0.847962,
		-0.223046, 0.858301, -0.462136,
		-0.959481, -0.109563, 0.259599,
		35.773979, 27.407921, 47.029907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280903, 28.111897, 47.050613>,  <36.445618, 27.484615, 46.848186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280903, 28.111897, 47.050613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018581, 27.870424, 47.231941>,  <35.861191, 27.725540, 47.340736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018581, 27.870424, 47.231941>,  <36.280903, 28.111897, 47.050613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018581, 27.870424, 47.231941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223766, 0.418051, 0.880433,
		-0.721009, 0.678825, -0.139075,
		-0.655800, -0.603680, 0.453317,
		35.821842, 27.689320, 47.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953796, 28.539639, 47.590302>,  <36.280903, 28.111897, 47.050613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953796, 28.539639, 47.590302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899437, 28.159927, 47.703724>,  <35.866821, 27.932100, 47.771778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899437, 28.159927, 47.703724>,  <35.953796, 28.539639, 47.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899437, 28.159927, 47.703724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045650, 0.279911, 0.958940,
		-0.989670, 0.143265, 0.005294,
		-0.135901, -0.949276, 0.283560,
		35.858665, 27.875145, 47.788792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664688, 28.594669, 48.248035>,  <35.953796, 28.539639, 47.590302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664688, 28.594669, 48.248035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760445, 28.206781, 48.228687>,  <35.817898, 27.974049, 48.217079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760445, 28.206781, 48.228687>,  <35.664688, 28.594669, 48.248035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760445, 28.206781, 48.228687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012223, -0.052820, 0.998529,
		-0.970847, -0.238445, -0.024498,
		0.239388, -0.969719, -0.048366,
		35.832260, 27.915865, 48.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 28.125250, 48.620285>,  <35.664688, 28.594669, 48.248035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136467, 28.125250, 48.620285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499435, 27.957239, 48.615150>,  <35.717216, 27.856434, 48.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499435, 27.957239, 48.615150>,  <35.136467, 28.125250, 48.620285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499435, 27.957239, 48.615150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005256, -0.041885, 0.999109,
		-0.420189, -0.906545, -0.040215,
		0.907421, -0.420026, -0.012835,
		35.771664, 27.831232, 48.611301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057510, 27.656384, 49.130104>,  <35.136467, 28.125250, 48.620285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057510, 27.656384, 49.130104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452736, 27.707457, 49.095646>,  <35.689873, 27.738100, 49.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452736, 27.707457, 49.095646>,  <35.057510, 27.656384, 49.130104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452736, 27.707457, 49.095646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061140, 0.188238, 0.980219,
		0.141370, -0.973789, 0.178185,
		0.988067, 0.127679, -0.086149,
		35.749157, 27.745762, 49.069801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285202, 27.146851, 49.634476>,  <35.057510, 27.656384, 49.130104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285202, 27.146851, 49.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601410, 27.375446, 49.546398>,  <35.791134, 27.512604, 49.493553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601410, 27.375446, 49.546398>,  <35.285202, 27.146851, 49.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601410, 27.375446, 49.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196282, 0.104152, 0.975000,
		0.580134, -0.813974, -0.029840,
		0.790517, 0.571488, -0.220191,
		35.838566, 27.546892, 49.480339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766296, 26.931015, 49.999798>,  <35.285202, 27.146851, 49.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766296, 26.931015, 49.999798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925816, 27.293564, 49.944019>,  <36.021526, 27.511093, 49.910553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925816, 27.293564, 49.944019>,  <35.766296, 26.931015, 49.999798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925816, 27.293564, 49.944019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341106, -0.005464, 0.940009,
		0.851237, -0.422443, -0.311348,
		0.398801, 0.906373, -0.139447,
		36.045456, 27.565475, 49.902184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606640, 26.979019, 50.276150>,  <35.766296, 26.931015, 49.999798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606640, 26.979019, 50.276150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427689, 27.335827, 50.250366>,  <36.320316, 27.549911, 50.234894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427689, 27.335827, 50.250366>,  <36.606640, 26.979019, 50.276150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427689, 27.335827, 50.250366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272840, 0.204771, 0.940014,
		0.851709, 0.402957, -0.334989,
		-0.447381, 0.892017, -0.064462,
		36.293476, 27.603432, 50.231030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034565, 27.421465, 50.557705>,  <36.606640, 26.979019, 50.276150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034565, 27.421465, 50.557705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704346, 27.645407, 50.586060>,  <36.506214, 27.779772, 50.603073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704346, 27.645407, 50.586060>,  <37.034565, 27.421465, 50.557705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704346, 27.645407, 50.586060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298332, 0.326345, 0.896937,
		0.479021, 0.761617, -0.436438,
		-0.825553, 0.559855, 0.070889,
		36.456680, 27.813364, 50.607327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236855, 28.142998, 50.890327>,  <37.034565, 27.421465, 50.557705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236855, 28.142998, 50.890327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840549, 28.113121, 50.935589>,  <36.602764, 28.095196, 50.962746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840549, 28.113121, 50.935589>,  <37.236855, 28.142998, 50.890327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840549, 28.113121, 50.935589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074031, 0.401157, 0.913013,
		-0.113584, 0.912959, -0.391923,
		-0.990766, -0.074690, 0.113152,
		36.543320, 28.090714, 50.969536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977661, 28.789106, 51.169819>,  <37.236855, 28.142998, 50.890327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977661, 28.789106, 51.169819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770428, 28.508652, 51.365776>,  <36.646088, 28.340380, 51.483349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770428, 28.508652, 51.365776>,  <36.977661, 28.789106, 51.169819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770428, 28.508652, 51.365776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264290, 0.413497, 0.871304,
		-0.813471, 0.580886, -0.028925,
		-0.518088, -0.701136, 0.489891,
		36.615002, 28.298311, 51.512745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317516, 29.308672, 51.473129>,  <36.977661, 28.789106, 51.169819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317516, 29.308672, 51.473129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519112, 29.653391, 51.496105>,  <37.640068, 29.860222, 51.509892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519112, 29.653391, 51.496105>,  <37.317516, 29.308672, 51.473129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519112, 29.653391, 51.496105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266444, 0.218388, -0.938783,
		-0.821585, 0.457833, 0.339687,
		0.503990, 0.861797, 0.057437,
		37.670307, 29.911930, 51.513336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773445, 29.846731, 51.291481>,  <37.317516, 29.308672, 51.473129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773445, 29.846731, 51.291481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124882, 30.024065, 51.220448>,  <37.335743, 30.130465, 51.177830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124882, 30.024065, 51.220448>,  <36.773445, 29.846731, 51.291481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124882, 30.024065, 51.220448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358514, 0.366609, -0.858525,
		-0.315510, 0.817957, 0.481040,
		0.878591, 0.443333, -0.177580,
		37.388458, 30.157064, 51.167175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634083, 30.529549, 51.099201>,  <36.773445, 29.846731, 51.291481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634083, 30.529549, 51.099201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995415, 30.441856, 50.951721>,  <37.212212, 30.389240, 50.863235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995415, 30.441856, 50.951721>,  <36.634083, 30.529549, 51.099201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995415, 30.441856, 50.951721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329841, 0.194502, -0.923782,
		0.274233, 0.956089, 0.103388,
		0.903328, -0.219230, -0.368697,
		37.266415, 30.376087, 50.841114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924179, 31.200708, 50.828438>,  <36.634083, 30.529549, 51.099201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924179, 31.200708, 50.828438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085152, 30.881710, 50.648640>,  <37.181736, 30.690311, 50.540760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085152, 30.881710, 50.648640>,  <36.924179, 31.200708, 50.828438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085152, 30.881710, 50.648640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287313, 0.356173, -0.889153,
		0.869195, 0.486969, -0.085796,
		0.402432, -0.797498, -0.449496,
		37.205879, 30.642460, 50.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242886, 31.540794, 50.274151>,  <36.924179, 31.200708, 50.828438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242886, 31.540794, 50.274151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234062, 31.160398, 50.150780>,  <37.228767, 30.932161, 50.076756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234062, 31.160398, 50.150780>,  <37.242886, 31.540794, 50.274151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234062, 31.160398, 50.150780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156889, 0.307977, -0.938368,
		0.987370, 0.027691, -0.155994,
		-0.022058, -0.950991, -0.308432,
		37.227444, 30.875101, 50.058250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575863, 31.645039, 49.655914>,  <37.242886, 31.540794, 50.274151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575863, 31.645039, 49.655914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393562, 31.290468, 49.623577>,  <37.284184, 31.077726, 49.604176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393562, 31.290468, 49.623577>,  <37.575863, 31.645039, 49.655914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393562, 31.290468, 49.623577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226104, 0.203139, -0.952687,
		0.860911, -0.415909, -0.293006,
		-0.455752, -0.886428, -0.080846,
		37.256836, 31.024540, 49.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914501, 31.320026, 49.011921>,  <37.575863, 31.645039, 49.655914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914501, 31.320026, 49.011921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568497, 31.145466, 49.110966>,  <37.360893, 31.040730, 49.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568497, 31.145466, 49.110966>,  <37.914501, 31.320026, 49.011921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568497, 31.145466, 49.110966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236529, -0.080558, -0.968279,
		0.442506, -0.896138, -0.033538,
		-0.865010, -0.436402, 0.247610,
		37.308994, 31.014545, 49.185249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810589, 30.821705, 48.529949>,  <37.914501, 31.320026, 49.011921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810589, 30.821705, 48.529949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440670, 30.874077, 48.672840>,  <37.218719, 30.905500, 48.758575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440670, 30.874077, 48.672840>,  <37.810589, 30.821705, 48.529949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440670, 30.874077, 48.672840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376077, -0.172354, -0.910418,
		-0.057628, -0.976295, 0.208630,
		-0.924794, 0.130927, 0.357229,
		37.163231, 30.913357, 48.780010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428757, 30.326969, 48.213806>,  <37.810589, 30.821705, 48.529949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428757, 30.326969, 48.213806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145432, 30.593109, 48.308128>,  <36.975437, 30.752794, 48.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145432, 30.593109, 48.308128>,  <37.428757, 30.326969, 48.213806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145432, 30.593109, 48.308128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512552, -0.255060, -0.819899,
		-0.485376, -0.701606, 0.521689,
		-0.708308, 0.665352, 0.235809,
		36.932938, 30.792715, 48.378872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720482, 29.985949, 48.184093>,  <37.428757, 30.326969, 48.213806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720482, 29.985949, 48.184093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634777, 30.376509, 48.173283>,  <36.583355, 30.610846, 48.166798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634777, 30.376509, 48.173283>,  <36.720482, 29.985949, 48.184093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634777, 30.376509, 48.173283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635813, -0.160422, -0.754987,
		-0.741507, -0.144583, 0.655182,
		-0.214264, 0.976402, -0.027027,
		36.570499, 30.669430, 48.165176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045135, 29.958839, 48.096134>,  <36.720482, 29.985949, 48.184093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045135, 29.958839, 48.096134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173386, 30.321060, 47.985016>,  <36.250336, 30.538393, 47.918343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173386, 30.321060, 47.985016>,  <36.045135, 29.958839, 48.096134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173386, 30.321060, 47.985016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669121, 0.008951, -0.743099,
		-0.670429, 0.424138, 0.608795,
		0.320626, 0.905553, -0.277798,
		36.269573, 30.592726, 47.901676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422272, 30.349968, 47.915188>,  <36.045135, 29.958839, 48.096134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422272, 30.349968, 47.915188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714226, 30.550283, 47.729076>,  <35.889397, 30.670473, 47.617409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714226, 30.550283, 47.729076>,  <35.422272, 30.349968, 47.915188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714226, 30.550283, 47.729076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646387, 0.284202, -0.708105,
		-0.222379, 0.817582, 0.531137,
		0.729885, 0.500788, -0.465274,
		35.933189, 30.700520, 47.589493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145180, 30.985020, 47.789703>,  <35.422272, 30.349968, 47.915188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145180, 30.985020, 47.789703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449070, 30.945385, 47.532646>,  <35.631405, 30.921604, 47.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449070, 30.945385, 47.532646>,  <35.145180, 30.985020, 47.789703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449070, 30.945385, 47.532646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591399, 0.305535, -0.746254,
		0.270295, 0.947011, 0.173523,
		0.759728, -0.099087, -0.642646,
		35.676987, 30.915659, 47.339851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191227, 31.560434, 47.224979>,  <35.145180, 30.985020, 47.789703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191227, 31.560434, 47.224979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446655, 31.305696, 47.052166>,  <35.599915, 31.152853, 46.948479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446655, 31.305696, 47.052166>,  <35.191227, 31.560434, 47.224979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446655, 31.305696, 47.052166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225944, 0.381503, -0.896329,
		0.735645, 0.669986, 0.099726,
		0.638574, -0.636847, -0.432030,
		35.638226, 31.114643, 46.922558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447605, 31.924431, 46.645744>,  <35.191227, 31.560434, 47.224979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447605, 31.924431, 46.645744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530403, 31.541178, 46.566620>,  <35.580082, 31.311226, 46.519146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530403, 31.541178, 46.566620>,  <35.447605, 31.924431, 46.645744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530403, 31.541178, 46.566620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265555, 0.139575, -0.953939,
		0.941612, 0.249993, -0.225545,
		0.206997, -0.958135, -0.197812,
		35.592503, 31.253736, 46.507275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710278, 31.950306, 45.921654>,  <35.447605, 31.924431, 46.645744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710278, 31.950306, 45.921654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596886, 31.570295, 45.973934>,  <35.528851, 31.342289, 46.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596886, 31.570295, 45.973934>,  <35.710278, 31.950306, 45.921654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596886, 31.570295, 45.973934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141922, -0.093233, -0.985477,
		0.948418, -0.297916, -0.108400,
		-0.283483, -0.950028, 0.130704,
		35.511841, 31.285286, 46.013145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259338, 31.471529, 45.574673>,  <35.710278, 31.950306, 45.921654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259338, 31.471529, 45.574673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896431, 31.303814, 45.587669>,  <35.678684, 31.203184, 45.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896431, 31.303814, 45.587669>,  <36.259338, 31.471529, 45.574673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896431, 31.303814, 45.587669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012317, -0.103712, -0.994531,
		0.420366, -0.901909, 0.099259,
		-0.907271, -0.419290, 0.032488,
		35.624249, 31.178028, 45.597416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299549, 30.740311, 45.202480>,  <36.259338, 31.471529, 45.574673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299549, 30.740311, 45.202480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907482, 30.817474, 45.220650>,  <35.672241, 30.863771, 45.231552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907482, 30.817474, 45.220650>,  <36.299549, 30.740311, 45.202480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907482, 30.817474, 45.220650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068688, -0.115664, -0.990911,
		-0.185901, -0.974376, 0.126621,
		-0.980164, 0.192909, 0.045426,
		35.613434, 30.875347, 45.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948425, 30.161003, 44.838921>,  <36.299549, 30.740311, 45.202480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948425, 30.161003, 44.838921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681927, 30.459280, 44.842052>,  <35.522030, 30.638247, 44.843933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681927, 30.459280, 44.842052>,  <35.948425, 30.161003, 44.838921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681927, 30.459280, 44.842052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131740, -0.107358, -0.985454,
		-0.734007, -0.657582, 0.169764,
		-0.666242, 0.745694, 0.007829,
		35.482056, 30.682989, 44.844402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363121, 29.995401, 44.263618>,  <35.948425, 30.161003, 44.838921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363121, 29.995401, 44.263618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355247, 30.390919, 44.322815>,  <35.350521, 30.628229, 44.358334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355247, 30.390919, 44.322815>,  <35.363121, 29.995401, 44.263618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355247, 30.390919, 44.322815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009697, 0.148203, -0.988909,
		-0.999759, -0.018033, -0.012506,
		-0.019686, 0.988793, 0.147993,
		35.349342, 30.687557, 44.367214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769238, 30.389025, 43.896904>,  <35.363121, 29.995401, 44.263618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769238, 30.389025, 43.896904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064758, 30.650482, 43.962532>,  <35.242069, 30.807358, 44.001907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064758, 30.650482, 43.962532>,  <34.769238, 30.389025, 43.896904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064758, 30.650482, 43.962532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139580, 0.089763, -0.986134,
		-0.659309, 0.751459, -0.024918,
		0.738802, 0.653646, 0.164070,
		35.286400, 30.846577, 44.011753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662476, 30.994665, 43.471195>,  <34.769238, 30.389025, 43.896904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662476, 30.994665, 43.471195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051434, 30.993212, 43.564526>,  <35.284809, 30.992340, 43.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051434, 30.993212, 43.564526>,  <34.662476, 30.994665, 43.471195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051434, 30.993212, 43.564526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219796, 0.350142, -0.910544,
		-0.078387, 0.936690, 0.341274,
		0.972391, -0.003636, 0.233327,
		35.343151, 30.992121, 43.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831463, 31.424137, 42.954433>,  <34.662476, 30.994665, 43.471195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831463, 31.424137, 42.954433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183430, 31.315754, 43.110546>,  <35.394611, 31.250725, 43.204212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183430, 31.315754, 43.110546>,  <34.831463, 31.424137, 42.954433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183430, 31.315754, 43.110546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447727, 0.197994, -0.871974,
		0.158995, 0.942008, 0.295534,
		0.879921, -0.270958, 0.390282,
		35.447407, 31.234467, 43.227631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352673, 31.933176, 42.740776>,  <34.831463, 31.424137, 42.954433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352673, 31.933176, 42.740776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558830, 31.596436, 42.804844>,  <35.682526, 31.394392, 42.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558830, 31.596436, 42.804844>,  <35.352673, 31.933176, 42.740776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558830, 31.596436, 42.804844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484626, 0.132181, -0.864677,
		0.706757, 0.523274, 0.476108,
		0.515395, -0.841851, 0.160172,
		35.713448, 31.343880, 42.852894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061874, 32.000496, 42.432404>,  <35.352673, 31.933176, 42.740776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061874, 32.000496, 42.432404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019295, 31.604210, 42.466209>,  <35.993748, 31.366438, 42.486492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019295, 31.604210, 42.466209>,  <36.061874, 32.000496, 42.432404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019295, 31.604210, 42.466209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567568, -0.130336, -0.812945,
		0.816416, -0.038567, 0.576175,
		-0.106449, -0.990720, 0.084519,
		35.987358, 31.306993, 42.491566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655647, 31.775084, 42.321636>,  <36.061874, 32.000496, 42.432404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655647, 31.775084, 42.321636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469810, 31.420885, 42.324631>,  <36.358307, 31.208366, 42.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469810, 31.420885, 42.324631>,  <36.655647, 31.775084, 42.321636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469810, 31.420885, 42.324631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676243, -0.360239, -0.642591,
		0.571709, -0.293476, 0.766173,
		-0.464591, -0.885494, 0.007491,
		36.330433, 31.155237, 42.326878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113407, 31.210524, 42.368225>,  <36.655647, 31.775084, 42.321636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113407, 31.210524, 42.368225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802399, 31.038078, 42.185097>,  <36.615795, 30.934612, 42.075218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802399, 31.038078, 42.185097>,  <37.113407, 31.210524, 42.368225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802399, 31.038078, 42.185097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573301, -0.186755, -0.797777,
		0.258431, -0.882760, 0.392363,
		-0.777521, -0.431113, -0.457824,
		36.569141, 30.908745, 42.047749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242477, 30.518032, 42.212589>,  <37.113407, 31.210524, 42.368225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242477, 30.518032, 42.212589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956150, 30.606260, 41.947578>,  <36.784351, 30.659197, 41.788570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956150, 30.606260, 41.947578>,  <37.242477, 30.518032, 42.212589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956150, 30.606260, 41.947578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577276, -0.346896, -0.739199,
		-0.392875, -0.911599, 0.120986,
		-0.715822, 0.220570, -0.662531,
		36.741402, 30.672432, 41.748817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313953, 30.099989, 41.613232>,  <37.242477, 30.518032, 42.212589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313953, 30.099989, 41.613232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092518, 30.386280, 41.442928>,  <36.959656, 30.558056, 41.340744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092518, 30.386280, 41.442928>,  <37.313953, 30.099989, 41.613232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092518, 30.386280, 41.442928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447595, -0.175420, -0.876862,
		-0.702284, -0.675987, -0.223247,
		-0.553585, 0.715730, -0.425763,
		36.926441, 30.601000, 41.315201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364902, 29.909906, 40.989090>,  <37.313953, 30.099989, 41.613232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364902, 29.909906, 40.989090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238934, 30.288643, 40.962803>,  <37.163353, 30.515884, 40.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238934, 30.288643, 40.962803>,  <37.364902, 29.909906, 40.989090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238934, 30.288643, 40.962803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458922, 0.091293, -0.883774,
		-0.830793, -0.308477, -0.463276,
		-0.314918, 0.946841, -0.065722,
		37.144459, 30.572695, 40.943085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241737, 29.987715, 40.320068>,  <37.364902, 29.909906, 40.989090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241737, 29.987715, 40.320068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228874, 30.373598, 40.424610>,  <37.221157, 30.605127, 40.487335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228874, 30.373598, 40.424610>,  <37.241737, 29.987715, 40.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228874, 30.373598, 40.424610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271769, 0.260076, -0.926554,
		-0.961825, 0.041233, -0.270541,
		-0.032156, 0.964707, 0.261353,
		37.219227, 30.663010, 40.503017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954842, 30.254795, 39.762936>,  <37.241737, 29.987715, 40.320068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954842, 30.254795, 39.762936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150375, 30.547476, 39.952946>,  <37.267696, 30.723085, 40.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150375, 30.547476, 39.952946>,  <36.954842, 30.254795, 39.762936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150375, 30.547476, 39.952946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273780, 0.388331, -0.879911,
		-0.828300, 0.560186, -0.010495,
		0.488838, 0.731704, 0.475022,
		37.297028, 30.766987, 40.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799984, 30.925583, 39.369167>,  <36.954842, 30.254795, 39.762936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799984, 30.925583, 39.369167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133148, 30.988705, 39.581341>,  <37.333046, 31.026577, 39.708645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133148, 30.988705, 39.581341>,  <36.799984, 30.925583, 39.369167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133148, 30.988705, 39.581341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348706, 0.594615, -0.724456,
		-0.429726, 0.788372, 0.440234,
		0.832911, 0.157805, 0.530432,
		37.383022, 31.036047, 39.740471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003891, 31.612328, 39.320404>,  <36.799984, 30.925583, 39.369167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003891, 31.612328, 39.320404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336830, 31.427868, 39.443390>,  <37.536594, 31.317192, 39.517181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336830, 31.427868, 39.443390>,  <37.003891, 31.612328, 39.320404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336830, 31.427868, 39.443390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541919, 0.560771, -0.625987,
		0.116260, 0.687659, 0.716665,
		0.832351, -0.461151, 0.307461,
		37.586536, 31.289522, 39.535629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460014, 32.163445, 39.334766>,  <37.003891, 31.612328, 39.320404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460014, 32.163445, 39.334766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694920, 31.839798, 39.326321>,  <37.835861, 31.645609, 39.321255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694920, 31.839798, 39.326321>,  <37.460014, 32.163445, 39.334766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694920, 31.839798, 39.326321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587797, 0.444268, -0.676107,
		0.556433, 0.384641, 0.736501,
		0.587263, -0.809121, -0.021114,
		37.871098, 31.597061, 39.319984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137627, 32.306965, 39.570614>,  <37.460014, 32.163445, 39.334766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137627, 32.306965, 39.570614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175743, 31.995193, 39.322933>,  <38.198612, 31.808132, 39.174324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175743, 31.995193, 39.322933>,  <38.137627, 32.306965, 39.570614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175743, 31.995193, 39.322933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736409, 0.473736, -0.482987,
		0.669792, -0.409964, 0.619119,
		0.095291, -0.779425, -0.619206,
		38.204330, 31.761366, 39.137173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810791, 32.272144, 39.426453>,  <38.137627, 32.306965, 39.570614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810791, 32.272144, 39.426453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655399, 32.045334, 39.135918>,  <38.562164, 31.909246, 38.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655399, 32.045334, 39.135918>,  <38.810791, 32.272144, 39.426453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655399, 32.045334, 39.135918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736153, 0.283122, -0.614753,
		0.554224, -0.773512, 0.307434,
		-0.388477, -0.567029, -0.726336,
		38.538857, 31.875225, 38.918018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273872, 31.817165, 39.236187>,  <38.810791, 32.272144, 39.426453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273872, 31.817165, 39.236187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041622, 31.839380, 38.911278>,  <38.902271, 31.852709, 38.716331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041622, 31.839380, 38.911278>,  <39.273872, 31.817165, 39.236187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041622, 31.839380, 38.911278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767474, 0.370353, -0.523280,
		0.271767, -0.927229, -0.257661,
		-0.580625, 0.055538, -0.812274,
		38.867435, 31.856041, 38.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720909, 32.027164, 38.701172>,  <39.273872, 31.817165, 39.236187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720909, 32.027164, 38.701172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376938, 32.065563, 38.500648>,  <39.170555, 32.088604, 38.380337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376938, 32.065563, 38.500648>,  <39.720909, 32.027164, 38.701172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376938, 32.065563, 38.500648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506052, 0.288502, -0.812821,
		0.066595, -0.952654, -0.296674,
		-0.859928, 0.096002, -0.501305,
		39.118958, 32.094364, 38.350258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873955, 31.712757, 38.021324>,  <39.720909, 32.027164, 38.701172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873955, 31.712757, 38.021324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572906, 31.975843, 38.008884>,  <39.392277, 32.133694, 38.001419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572906, 31.975843, 38.008884>,  <39.873955, 31.712757, 38.021324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572906, 31.975843, 38.008884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472371, 0.506424, -0.721388,
		-0.458718, -0.557624, -0.691833,
		-0.752624, 0.657716, -0.031100,
		39.347118, 32.173157, 37.999554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739971, 31.725626, 37.313763>,  <39.873955, 31.712757, 38.021324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739971, 31.725626, 37.313763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651939, 32.071011, 37.495312>,  <39.599121, 32.278240, 37.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651939, 32.071011, 37.495312>,  <39.739971, 31.725626, 37.313763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651939, 32.071011, 37.495312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522146, 0.497288, -0.692869,
		-0.823970, 0.084500, -0.560297,
		-0.220081, 0.863460, 0.453873,
		39.585915, 32.330048, 37.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502220, 32.229916, 36.786160>,  <39.739971, 31.725626, 37.313763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502220, 32.229916, 36.786160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620625, 32.427940, 37.112911>,  <39.691666, 32.546757, 37.308960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620625, 32.427940, 37.112911>,  <39.502220, 32.229916, 36.786160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620625, 32.427940, 37.112911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431458, 0.693685, -0.576754,
		-0.852186, 0.523174, -0.008260,
		0.296012, 0.495066, 0.816876,
		39.709427, 32.576462, 37.357975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268284, 32.917118, 36.633526>,  <39.502220, 32.229916, 36.786160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268284, 32.917118, 36.633526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565624, 32.882648, 36.898853>,  <39.744030, 32.861965, 37.058052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565624, 32.882648, 36.898853>,  <39.268284, 32.917118, 36.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565624, 32.882648, 36.898853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478339, 0.761666, -0.437101,
		-0.467562, 0.642214, 0.607410,
		0.743356, -0.086176, 0.663322,
		39.788631, 32.856796, 37.097851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474426, 33.579655, 36.808456>,  <39.268284, 32.917118, 36.633526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474426, 33.579655, 36.808456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780533, 33.326908, 36.857624>,  <39.964195, 33.175259, 36.887127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780533, 33.326908, 36.857624>,  <39.474426, 33.579655, 36.808456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780533, 33.326908, 36.857624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642261, 0.736666, -0.211718,
		0.043226, 0.240968, 0.969570,
		0.765266, -0.631869, 0.122921,
		40.010113, 33.137348, 36.894501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135799, 33.943867, 36.993084>,  <39.474426, 33.579655, 36.808456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135799, 33.943867, 36.993084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268219, 33.580219, 36.891960>,  <40.347672, 33.362030, 36.831284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268219, 33.580219, 36.891960>,  <40.135799, 33.943867, 36.993084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268219, 33.580219, 36.891960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909104, 0.379078, -0.172710,
		0.252849, -0.172656, 0.951976,
		0.331054, -0.909115, -0.252812,
		40.367535, 33.307484, 36.816116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756107, 33.838490, 37.375553>,  <40.135799, 33.943867, 36.993084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756107, 33.838490, 37.375553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747978, 33.627350, 37.035915>,  <40.743099, 33.500668, 36.832134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747978, 33.627350, 37.035915>,  <40.756107, 33.838490, 37.375553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747978, 33.627350, 37.035915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814704, 0.483528, -0.320090,
		0.579521, -0.698266, 0.420214,
		-0.020323, -0.527849, -0.849095,
		40.741882, 33.468994, 36.781185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236462, 33.878742, 36.705173>,  <40.756107, 33.838490, 37.375553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236462, 33.878742, 36.705173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127285, 33.898262, 36.320858>,  <41.061779, 33.909973, 36.090267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127285, 33.898262, 36.320858>,  <41.236462, 33.878742, 36.705173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127285, 33.898262, 36.320858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270045, 0.954672, 0.125205,
		0.923352, 0.293630, -0.247391,
		-0.272941, 0.048801, -0.960792,
		41.045403, 33.912903, 36.032619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651379, 33.616756, 36.113510>,  <41.236462, 33.878742, 36.705173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651379, 33.616756, 36.113510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016048, 33.537613, 35.969452>,  <42.234852, 33.490128, 35.883018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016048, 33.537613, 35.969452>,  <41.651379, 33.616756, 36.113510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016048, 33.537613, 35.969452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127374, 0.697200, -0.705470,
		0.390673, 0.689031, 0.610418,
		0.911675, -0.197857, -0.360142,
		42.289551, 33.478256, 35.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908611, 34.220032, 35.871403>,  <41.651379, 33.616756, 36.113510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908611, 34.220032, 35.871403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128468, 33.958942, 35.662849>,  <42.260380, 33.802288, 35.537716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128468, 33.958942, 35.662849>,  <41.908611, 34.220032, 35.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128468, 33.958942, 35.662849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091764, 0.573166, -0.814285,
		0.830346, 0.495409, 0.255139,
		0.549641, -0.652725, -0.521387,
		42.293362, 33.763126, 35.506432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431126, 34.656971, 35.715027>,  <41.908611, 34.220032, 35.871403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431126, 34.656971, 35.715027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403759, 34.334206, 35.480347>,  <42.387341, 34.140545, 35.339539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403759, 34.334206, 35.480347>,  <42.431126, 34.656971, 35.715027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403759, 34.334206, 35.480347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009879, 0.587497, -0.809166,
		0.997608, -0.061155, -0.032223,
		-0.068415, -0.806912, -0.586696,
		42.383236, 34.092133, 35.304337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954990, 34.767883, 35.152618>,  <42.431126, 34.656971, 35.715027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954990, 34.767883, 35.152618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689873, 34.492210, 35.035492>,  <42.530804, 34.326805, 34.965218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689873, 34.492210, 35.035492>,  <42.954990, 34.767883, 35.152618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689873, 34.492210, 35.035492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011065, 0.381983, -0.924103,
		0.748724, -0.615726, -0.245548,
		-0.662790, -0.689181, -0.292813,
		42.491035, 34.285458, 34.947647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045063, 34.891674, 34.408138>,  <42.954990, 34.767883, 35.152618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045063, 34.891674, 34.408138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722710, 34.658745, 34.450939>,  <42.529297, 34.518986, 34.476620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722710, 34.658745, 34.450939>,  <43.045063, 34.891674, 34.408138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722710, 34.658745, 34.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325879, 0.285364, -0.901316,
		0.494324, -0.761226, -0.419737,
		-0.805883, -0.582326, 0.107005,
		42.480946, 34.484047, 34.483040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936871, 34.541725, 33.795979>,  <43.045063, 34.891674, 34.408138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936871, 34.541725, 33.795979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585403, 34.542656, 33.986954>,  <42.374523, 34.543213, 34.101540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585403, 34.542656, 33.986954>,  <42.936871, 34.541725, 33.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585403, 34.542656, 33.986954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422812, 0.460696, -0.780378,
		-0.221766, -0.887555, -0.403814,
		-0.878664, 0.002325, 0.477436,
		42.321804, 34.543354, 34.130184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444889, 34.419109, 33.276066>,  <42.936871, 34.541725, 33.795979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444889, 34.419109, 33.276066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245007, 34.596718, 33.573559>,  <42.125076, 34.703285, 33.752056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245007, 34.596718, 33.573559>,  <42.444889, 34.419109, 33.276066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245007, 34.596718, 33.573559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607266, 0.432692, -0.666337,
		-0.617677, -0.784615, 0.053423,
		-0.499702, 0.444023, 0.743734,
		42.095097, 34.729923, 33.796680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700603, 34.304947, 33.204048>,  <42.444889, 34.419109, 33.276066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700603, 34.304947, 33.204048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731411, 34.640755, 33.419182>,  <41.749897, 34.842239, 33.548264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731411, 34.640755, 33.419182>,  <41.700603, 34.304947, 33.204048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731411, 34.640755, 33.419182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414041, 0.517658, -0.748733,
		-0.906994, -0.165020, 0.387466,
		0.077019, 0.839523, 0.537837,
		41.754517, 34.892612, 33.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071278, 34.617306, 33.105900>,  <41.700603, 34.304947, 33.204048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071278, 34.617306, 33.105900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282688, 34.910233, 33.277649>,  <41.409534, 35.085991, 33.380699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282688, 34.910233, 33.277649>,  <41.071278, 34.617306, 33.105900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282688, 34.910233, 33.277649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534779, 0.680036, -0.501560,
		-0.659292, 0.035470, 0.751050,
		0.528530, 0.732321, 0.429374,
		41.441246, 35.129929, 33.406460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559357, 35.173634, 33.213760>,  <41.071278, 34.617306, 33.105900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559357, 35.173634, 33.213760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927284, 35.330528, 33.210335>,  <41.148041, 35.424667, 33.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927284, 35.330528, 33.210335>,  <40.559357, 35.173634, 33.213760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927284, 35.330528, 33.210335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308915, 0.710624, -0.632127,
		-0.241863, 0.584089, 0.774818,
		0.919823, 0.392241, -0.008561,
		41.203232, 35.448200, 33.207767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410480, 35.825283, 33.362926>,  <40.559357, 35.173634, 33.213760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410480, 35.825283, 33.362926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763500, 35.808487, 33.175591>,  <40.975311, 35.798409, 33.063190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763500, 35.808487, 33.175591>,  <40.410480, 35.825283, 33.362926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763500, 35.808487, 33.175591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282941, 0.748096, -0.600248,
		0.375567, 0.662261, 0.648352,
		0.882550, -0.041988, -0.468341,
		41.028267, 35.795891, 33.035088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566582, 36.501736, 33.313358>,  <40.410480, 35.825283, 33.362926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566582, 36.501736, 33.313358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787914, 36.332294, 33.026478>,  <40.920715, 36.230629, 32.854347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787914, 36.332294, 33.026478>,  <40.566582, 36.501736, 33.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787914, 36.332294, 33.026478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361959, 0.653207, -0.665060,
		0.750206, 0.627598, 0.208113,
		0.553332, -0.423604, -0.717206,
		40.953915, 36.205212, 32.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751995, 37.049397, 32.890652>,  <40.566582, 36.501736, 33.313358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751995, 37.049397, 32.890652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859589, 36.769688, 32.625725>,  <40.924145, 36.601864, 32.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859589, 36.769688, 32.625725>,  <40.751995, 37.049397, 32.890652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859589, 36.769688, 32.625725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093842, 0.665363, -0.740599,
		0.958562, 0.261364, 0.113352,
		0.268986, -0.699272, -0.662318,
		40.940285, 36.559906, 32.427029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182346, 37.437183, 32.454876>,  <40.751995, 37.049397, 32.890652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182346, 37.437183, 32.454876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050076, 37.107494, 32.271000>,  <40.970715, 36.909683, 32.160675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050076, 37.107494, 32.271000>,  <41.182346, 37.437183, 32.454876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050076, 37.107494, 32.271000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127276, 0.521590, -0.843650,
		0.935124, -0.220465, -0.277379,
		-0.330674, -0.824221, -0.459691,
		40.950874, 36.860229, 32.133091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493679, 37.477585, 31.687376>,  <41.182346, 37.437183, 32.454876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493679, 37.477585, 31.687376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190804, 37.219490, 31.646715>,  <41.009079, 37.064632, 31.622318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190804, 37.219490, 31.646715>,  <41.493679, 37.477585, 31.687376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190804, 37.219490, 31.646715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222419, 0.401010, -0.888662,
		0.614165, -0.650274, -0.447153,
		-0.757186, -0.645240, -0.101653,
		40.963646, 37.025917, 31.616219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525330, 37.361080, 30.971304>,  <41.493679, 37.477585, 31.687376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525330, 37.361080, 30.971304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171467, 37.229244, 31.103210>,  <40.959148, 37.150143, 31.182354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171467, 37.229244, 31.103210>,  <41.525330, 37.361080, 30.971304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171467, 37.229244, 31.103210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398122, 0.165933, -0.902200,
		0.242643, -0.929426, -0.278014,
		-0.884660, -0.329596, 0.329763,
		40.906067, 37.130367, 31.202139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264015, 37.117912, 30.413103>,  <41.525330, 37.361080, 30.971304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264015, 37.117912, 30.413103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941395, 37.135872, 30.648886>,  <40.747822, 37.146648, 30.790356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941395, 37.135872, 30.648886>,  <41.264015, 37.117912, 30.413103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941395, 37.135872, 30.648886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583048, 0.104245, -0.805722,
		-0.097622, -0.993538, -0.057902,
		-0.806552, 0.044897, 0.589456,
		40.699429, 37.149342, 30.825722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737896, 36.626564, 30.213158>,  <41.264015, 37.117912, 30.413103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737896, 36.626564, 30.213158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559826, 36.933369, 30.397989>,  <40.452984, 37.117451, 30.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559826, 36.933369, 30.397989>,  <40.737896, 36.626564, 30.213158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559826, 36.933369, 30.397989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543606, 0.178569, -0.820126,
		-0.711558, -0.616286, 0.337458,
		-0.445172, 0.767011, 0.462078,
		40.426273, 37.163471, 30.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984406, 36.550060, 30.062788>,  <40.737896, 36.626564, 30.213158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984406, 36.550060, 30.062788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054062, 36.928810, 30.170933>,  <40.095856, 37.156059, 30.235821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054062, 36.928810, 30.170933>,  <39.984406, 36.550060, 30.062788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054062, 36.928810, 30.170933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544518, 0.321354, -0.774746,
		-0.820473, -0.012306, 0.571552,
		0.174137, 0.946879, 0.270363,
		40.106304, 37.212875, 30.252041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317200, 36.843220, 29.922461>,  <39.984406, 36.550060, 30.062788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317200, 36.843220, 29.922461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563126, 37.152340, 29.985422>,  <39.710682, 37.337814, 30.023199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563126, 37.152340, 29.985422>,  <39.317200, 36.843220, 29.922461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563126, 37.152340, 29.985422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439390, 0.501377, -0.745358,
		-0.654934, 0.389096, 0.647816,
		0.614816, 0.772804, 0.157404,
		39.747570, 37.384182, 30.032644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848042, 37.456516, 29.834604>,  <39.317200, 36.843220, 29.922461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848042, 37.456516, 29.834604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227943, 37.493370, 29.714958>,  <39.455887, 37.515484, 29.643171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227943, 37.493370, 29.714958>,  <38.848042, 37.456516, 29.834604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227943, 37.493370, 29.714958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311996, 0.202879, -0.928169,
		-0.024832, 0.974860, 0.221431,
		0.949759, 0.092134, -0.299115,
		39.512871, 37.521011, 29.625223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894516, 38.182533, 29.424137>,  <38.848042, 37.456516, 29.834604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894516, 38.182533, 29.424137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139874, 37.878071, 29.339867>,  <39.287090, 37.695393, 29.289305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139874, 37.878071, 29.339867>,  <38.894516, 38.182533, 29.424137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139874, 37.878071, 29.339867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354844, -0.027300, -0.934527,
		0.705571, 0.647992, -0.286838,
		0.613396, -0.761158, -0.210674,
		39.323891, 37.649723, 29.276665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276554, 38.281277, 28.766506>,  <38.894516, 38.182533, 29.424137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276554, 38.281277, 28.766506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211407, 37.899197, 28.865358>,  <39.172318, 37.669949, 28.924669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211407, 37.899197, 28.865358>,  <39.276554, 38.281277, 28.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211407, 37.899197, 28.865358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188489, -0.215741, -0.958085,
		0.968476, -0.202621, -0.144908,
		-0.162866, -0.955197, 0.247132,
		39.162548, 37.612637, 28.939499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702885, 37.840710, 28.336775>,  <39.276554, 38.281277, 28.766506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702885, 37.840710, 28.336775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375488, 37.641907, 28.452055>,  <39.179050, 37.522625, 28.521223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375488, 37.641907, 28.452055>,  <39.702885, 37.840710, 28.336775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375488, 37.641907, 28.452055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243656, -0.153998, -0.957558,
		0.520299, -0.853970, 0.004946,
		-0.818487, -0.497012, 0.288200,
		39.129944, 37.492802, 28.538515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134556, 37.504330, 27.875097>,  <39.702885, 37.840710, 28.336775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134556, 37.504330, 27.875097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318562, 37.219070, 28.086683>,  <40.428967, 37.047916, 28.213634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318562, 37.219070, 28.086683>,  <40.134556, 37.504330, 27.875097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318562, 37.219070, 28.086683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873013, 0.254607, -0.415962,
		0.161965, 0.653142, 0.739712,
		0.460018, -0.713149, 0.528963,
		40.456566, 37.005127, 28.245373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623734, 37.745327, 28.198833>,  <40.134556, 37.504330, 27.875097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623734, 37.745327, 28.198833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754089, 37.370125, 28.151617>,  <40.832302, 37.145004, 28.123287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754089, 37.370125, 28.151617>,  <40.623734, 37.745327, 28.198833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754089, 37.370125, 28.151617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853861, 0.345632, -0.389178,
		0.405852, 0.026039, 0.913568,
		0.325892, -0.938009, -0.118042,
		40.851856, 37.088722, 28.116205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361118, 37.752972, 28.410101>,  <40.623734, 37.745327, 28.198833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361118, 37.752972, 28.410101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296852, 37.451748, 28.154886>,  <41.258293, 37.271015, 28.001757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296852, 37.451748, 28.154886>,  <41.361118, 37.752972, 28.410101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296852, 37.451748, 28.154886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843962, 0.230371, -0.484414,
		0.511777, -0.616307, 0.598540,
		-0.160662, -0.753057, -0.638038,
		41.248653, 37.225830, 27.963474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924385, 37.257492, 28.342489>,  <41.361118, 37.752972, 28.410101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924385, 37.257492, 28.342489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723854, 37.275631, 27.996861>,  <41.603535, 37.286514, 27.789484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723854, 37.275631, 27.996861>,  <41.924385, 37.257492, 28.342489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723854, 37.275631, 27.996861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854355, 0.183990, -0.486030,
		0.136942, -0.981881, -0.130979,
		-0.501323, 0.045345, -0.864071,
		41.573456, 37.289234, 27.737638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983524, 36.755516, 27.780851>,  <41.924385, 37.257492, 28.342489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983524, 36.755516, 27.780851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916553, 37.119839, 27.629906>,  <41.876373, 37.338432, 27.539339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916553, 37.119839, 27.629906>,  <41.983524, 36.755516, 27.780851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916553, 37.119839, 27.629906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841490, -0.067411, -0.536051,
		-0.513676, -0.407295, -0.755147,
		-0.167425, 0.910805, -0.377362,
		41.866325, 37.393082, 27.516697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550739, 36.045349, 27.679234>,  <41.983524, 36.755516, 27.780851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550739, 36.045349, 27.679234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785748, 35.892712, 27.964668>,  <41.926750, 35.801128, 28.135929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785748, 35.892712, 27.964668>,  <41.550739, 36.045349, 27.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785748, 35.892712, 27.964668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661458, -0.734448, 0.151851,
		0.466149, -0.561224, -0.683910,
		0.587519, -0.381592, 0.713589,
		41.962002, 35.778233, 28.178745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043156, 35.574909, 28.165909>,  <41.550739, 36.045349, 27.679234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043156, 35.574909, 28.165909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740692, 35.564220, 28.427444>,  <40.559212, 35.557808, 28.584366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740692, 35.564220, 28.427444>,  <41.043156, 35.574909, 28.165909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740692, 35.564220, 28.427444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612646, -0.380034, 0.692993,
		0.229962, 0.924586, 0.303739,
		-0.756163, -0.026722, 0.653838,
		40.513844, 35.556202, 28.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223766, 35.876945, 28.817482>,  <41.043156, 35.574909, 28.165909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223766, 35.876945, 28.817482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965164, 35.582378, 28.897194>,  <40.810001, 35.405636, 28.945021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965164, 35.582378, 28.897194>,  <41.223766, 35.876945, 28.817482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965164, 35.582378, 28.897194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715935, -0.495393, 0.491958,
		-0.263566, 0.460726, 0.847505,
		-0.646506, -0.736422, 0.199281,
		40.771214, 35.361450, 28.956978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135967, 35.766232, 29.513325>,  <41.223766, 35.876945, 28.817482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135967, 35.766232, 29.513325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982357, 35.420010, 29.384735>,  <40.890190, 35.212276, 29.307581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982357, 35.420010, 29.384735>,  <41.135967, 35.766232, 29.513325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982357, 35.420010, 29.384735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590780, -0.497912, 0.634872,
		-0.709580, 0.053887, 0.702561,
		-0.384025, -0.865552, -0.321473,
		40.867149, 35.160343, 29.288294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832829, 35.355770, 30.121996>,  <41.135967, 35.766232, 29.513325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832829, 35.355770, 30.121996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934837, 35.109196, 29.824009>,  <40.996040, 34.961250, 29.645216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934837, 35.109196, 29.824009>,  <40.832829, 35.355770, 30.121996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934837, 35.109196, 29.824009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610443, -0.494859, 0.618445,
		-0.749883, -0.612476, 0.250098,
		0.255019, -0.616432, -0.744968,
		41.011345, 34.924267, 29.600519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890873, 34.690197, 30.503061>,  <40.832829, 35.355770, 30.121996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890873, 34.690197, 30.503061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065826, 34.637749, 30.147196>,  <41.170799, 34.606277, 29.933676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065826, 34.637749, 30.147196>,  <40.890873, 34.690197, 30.503061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065826, 34.637749, 30.147196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679352, -0.600033, 0.422423,
		-0.589217, -0.789156, -0.173365,
		0.437383, -0.131123, -0.889665,
		41.197041, 34.598412, 29.880297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107162, 33.996960, 30.433434>,  <40.890873, 34.690197, 30.503061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107162, 33.996960, 30.433434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330254, 34.132244, 30.130236>,  <41.464108, 34.213413, 29.948317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330254, 34.132244, 30.130236>,  <41.107162, 33.996960, 30.433434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330254, 34.132244, 30.130236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798057, -0.469499, 0.377723,
		-0.228129, -0.815590, -0.531762,
		0.557729, 0.338207, -0.757994,
		41.497574, 34.233707, 29.902838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502224, 33.409122, 29.986044>,  <41.107162, 33.996960, 30.433434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502224, 33.409122, 29.986044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667488, 33.770111, 30.034769>,  <41.766647, 33.986706, 30.064003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667488, 33.770111, 30.034769>,  <41.502224, 33.409122, 29.986044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667488, 33.770111, 30.034769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782912, -0.420332, 0.458660,
		0.465130, -0.094133, -0.880223,
		0.413161, 0.902474, 0.121811,
		41.791435, 34.040852, 30.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195675, 33.234318, 30.006817>,  <41.502224, 33.409122, 29.986044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195675, 33.234318, 30.006817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230618, 33.622913, 30.094975>,  <42.251583, 33.856071, 30.147869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230618, 33.622913, 30.094975>,  <42.195675, 33.234318, 30.006817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230618, 33.622913, 30.094975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843272, -0.189900, 0.502822,
		0.530340, 0.141927, -0.835821,
		0.087359, 0.971491, 0.220394,
		42.256824, 33.914360, 30.161093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973091, 33.447880, 29.948675>,  <42.195675, 33.234318, 30.006817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973091, 33.447880, 29.948675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801304, 33.726372, 30.178741>,  <42.698231, 33.893467, 30.316782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801304, 33.726372, 30.178741>,  <42.973091, 33.447880, 29.948675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801304, 33.726372, 30.178741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697202, -0.149183, 0.701180,
		0.573988, 0.702145, -0.421343,
		-0.429473, 0.696231, 0.575166,
		42.672462, 33.935242, 30.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549294, 33.797192, 30.191973>,  <42.973091, 33.447880, 29.948675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549294, 33.797192, 30.191973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246983, 33.894852, 30.435019>,  <43.065598, 33.953445, 30.580847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246983, 33.894852, 30.435019>,  <43.549294, 33.797192, 30.191973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246983, 33.894852, 30.435019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612037, -0.066572, 0.788022,
		0.232843, 0.967451, -0.099113,
		-0.755774, 0.244146, 0.607616,
		43.020248, 33.968094, 30.617304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824200, 34.244350, 30.724615>,  <43.549294, 33.797192, 30.191973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824200, 34.244350, 30.724615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479191, 34.128704, 30.890734>,  <43.272186, 34.059315, 30.990406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479191, 34.128704, 30.890734>,  <43.824200, 34.244350, 30.724615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479191, 34.128704, 30.890734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469998, -0.153585, 0.869203,
		-0.187515, 0.944894, 0.268353,
		-0.862519, -0.289114, 0.415299,
		43.220436, 34.041969, 31.015324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647018, 34.655136, 31.354761>,  <43.824200, 34.244350, 30.724615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647018, 34.655136, 31.354761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458458, 34.304214, 31.390791>,  <43.345322, 34.093662, 31.412409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458458, 34.304214, 31.390791>,  <43.647018, 34.655136, 31.354761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458458, 34.304214, 31.390791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380604, -0.110240, 0.918144,
		-0.795563, 0.467099, 0.385873,
		-0.471403, -0.877306, 0.090076,
		43.317036, 34.041023, 31.417814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485489, 34.610226, 32.031414>,  <43.647018, 34.655136, 31.354761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485489, 34.610226, 32.031414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424538, 34.227741, 31.931452>,  <43.387966, 33.998253, 31.871475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424538, 34.227741, 31.931452>,  <43.485489, 34.610226, 32.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424538, 34.227741, 31.931452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235675, -0.280714, 0.930407,
		-0.959812, 0.082876, 0.268128,
		-0.152376, -0.956207, -0.249901,
		43.378826, 33.940880, 31.856482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142590, 34.305138, 32.548859>,  <43.485489, 34.610226, 32.031414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142590, 34.305138, 32.548859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298546, 33.978607, 32.378407>,  <43.392120, 33.782688, 32.276134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298546, 33.978607, 32.378407>,  <43.142590, 34.305138, 32.548859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298546, 33.978607, 32.378407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332712, -0.306612, 0.891791,
		-0.858653, -0.489483, 0.152057,
		0.389895, -0.816330, -0.426131,
		43.415516, 33.733707, 32.250568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978851, 33.774773, 32.930923>,  <43.142590, 34.305138, 32.548859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978851, 33.774773, 32.930923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302368, 33.652981, 32.729668>,  <43.496479, 33.579906, 32.608913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302368, 33.652981, 32.729668>,  <42.978851, 33.774773, 32.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302368, 33.652981, 32.729668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378777, -0.384756, 0.841719,
		-0.449874, -0.871352, -0.195856,
		0.808790, -0.304482, -0.503140,
		43.545006, 33.561638, 32.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118462, 33.174194, 33.256065>,  <42.978851, 33.774773, 32.930923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118462, 33.174194, 33.256065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447903, 33.241783, 33.039497>,  <43.645565, 33.282337, 32.909557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447903, 33.241783, 33.039497>,  <43.118462, 33.174194, 33.256065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447903, 33.241783, 33.039497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565724, -0.176536, 0.805476,
		0.040525, -0.969682, -0.240988,
		0.823598, 0.168975, -0.541418,
		43.694981, 33.292477, 32.877071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538338, 32.567825, 33.330746>,  <43.118462, 33.174194, 33.256065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538338, 32.567825, 33.330746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789608, 32.862663, 33.231071>,  <43.940369, 33.039566, 33.171268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789608, 32.862663, 33.231071>,  <43.538338, 32.567825, 33.330746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789608, 32.862663, 33.231071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560376, -0.206413, 0.802105,
		0.539790, -0.643499, -0.542712,
		0.628176, 0.737091, -0.249181,
		43.978062, 33.083790, 33.156319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172428, 32.279133, 33.556850>,  <43.538338, 32.567825, 33.330746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172428, 32.279133, 33.556850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242455, 32.668404, 33.497139>,  <44.284470, 32.901966, 33.461311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242455, 32.668404, 33.497139>,  <44.172428, 32.279133, 33.556850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242455, 32.668404, 33.497139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811280, -0.056679, 0.581904,
		0.557833, -0.222979, -0.799439,
		0.175064, 0.973174, -0.149281,
		44.294975, 32.960358, 33.452354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836704, 32.335037, 33.265102>,  <44.172428, 32.279133, 33.556850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836704, 32.335037, 33.265102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764900, 32.704021, 33.401833>,  <44.721817, 32.925411, 33.483871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764900, 32.704021, 33.401833>,  <44.836704, 32.335037, 33.265102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764900, 32.704021, 33.401833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808409, -0.059682, 0.585588,
		0.560582, 0.381453, -0.735011,
		-0.179507, 0.922460, 0.341827,
		44.711048, 32.980759, 33.504379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558296, 32.610912, 33.335384>,  <44.836704, 32.335037, 33.265102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558296, 32.610912, 33.335384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305592, 32.815228, 33.568611>,  <45.153969, 32.937817, 33.708549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305592, 32.815228, 33.568611>,  <45.558296, 32.610912, 33.335384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305592, 32.815228, 33.568611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561161, -0.217551, 0.798605,
		0.534768, 0.831723, -0.149196,
		-0.631760, 0.510791, 0.583071,
		45.116062, 32.968464, 33.743534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025005, 32.780987, 33.859863>,  <45.558296, 32.610912, 33.335384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025005, 32.780987, 33.859863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657982, 32.846981, 34.004566>,  <45.437767, 32.886578, 34.091389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657982, 32.846981, 34.004566>,  <46.025005, 32.780987, 33.859863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657982, 32.846981, 34.004566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328152, -0.199529, 0.923312,
		0.224512, 0.965903, 0.128939,
		-0.917557, 0.164983, 0.361760,
		45.382713, 32.896477, 34.113094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107601, 33.250011, 34.428917>,  <46.025005, 32.780987, 33.859863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107601, 33.250011, 34.428917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789738, 33.011082, 34.472206>,  <45.599018, 32.867722, 34.498180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789738, 33.011082, 34.472206>,  <46.107601, 33.250011, 34.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789738, 33.011082, 34.472206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405740, -0.390024, 0.826593,
		-0.451539, 0.700772, 0.552297,
		-0.794662, -0.597328, 0.108220,
		45.551338, 32.831882, 34.504673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831955, 33.506771, 34.385551>,  <46.107601, 33.250011, 34.428917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831955, 33.506771, 34.385551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818573, 33.828491, 34.622864>,  <46.810543, 34.021523, 34.765251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818573, 33.828491, 34.622864>,  <46.831955, 33.506771, 34.385551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818573, 33.828491, 34.622864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993609, 0.090795, -0.067069,
		-0.107811, 0.587241, -0.802200,
		-0.033450, 0.804303, 0.593277,
		46.808537, 34.069782, 34.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023357, 33.953190, 33.925774>,  <46.831955, 33.506771, 34.385551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023357, 33.953190, 33.925774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104332, 34.048977, 34.305599>,  <47.152916, 34.106449, 34.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104332, 34.048977, 34.305599>,  <47.023357, 33.953190, 33.925774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104332, 34.048977, 34.305599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968872, 0.092125, -0.229784,
		-0.142505, 0.966523, -0.213368,
		0.202435, 0.239472, 0.949565,
		47.165062, 34.120819, 34.590469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.523857, 34.531437, 34.065605>,  <47.023357, 33.953190, 33.925774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.523857, 34.531437, 34.065605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541718, 34.296570, 34.388901>,  <47.552433, 34.155651, 34.582878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541718, 34.296570, 34.388901>,  <47.523857, 34.531437, 34.065605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.541718, 34.296570, 34.388901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985644, -0.105975, -0.131437,
		0.162828, 0.802501, 0.574003,
		0.044649, -0.587164, 0.808236,
		47.555111, 34.120422, 34.631371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796162, 34.853497, 34.633369>,  <47.523857, 34.531437, 34.065605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796162, 34.853497, 34.633369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813313, 35.005226, 35.003078>,  <47.823605, 35.096264, 35.224903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813313, 35.005226, 35.003078>,  <47.796162, 34.853497, 34.633369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813313, 35.005226, 35.003078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968912, 0.209835, -0.131067,
		-0.243661, 0.901157, -0.358531,
		0.042879, 0.379321, 0.924271,
		47.826176, 35.119022, 35.280361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.673870, 35.004658, 46.311062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293861, 35.017647, 46.435261>,  <36.065857, 35.025440, 46.509781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293861, 35.017647, 46.435261>,  <36.673870, 35.004658, 46.311062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293861, 35.017647, 46.435261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289426, 0.281257, -0.914947,
		-0.117040, -0.959083, -0.257801,
		-0.950018, 0.032471, 0.310501,
		36.008858, 35.027390, 46.528412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346504, 34.626240, 45.897518>,  <36.673870, 35.004658, 46.311062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346504, 34.626240, 45.897518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045216, 34.852688, 46.031479>,  <35.864441, 34.988556, 46.111855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045216, 34.852688, 46.031479>,  <36.346504, 34.626240, 45.897518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045216, 34.852688, 46.031479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353266, 0.081322, -0.931982,
		-0.554847, -0.820303, 0.138737,
		-0.753225, 0.566118, 0.334906,
		35.819248, 35.022522, 46.131950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710457, 34.314823, 45.725582>,  <36.346504, 34.626240, 45.897518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710457, 34.314823, 45.725582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656250, 34.709923, 45.756546>,  <35.623726, 34.946983, 45.775124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656250, 34.709923, 45.756546>,  <35.710457, 34.314823, 45.725582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656250, 34.709923, 45.756546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269261, 0.038477, -0.962298,
		-0.953485, -0.151254, 0.260747,
		-0.135518, 0.987746, 0.077414,
		35.615593, 35.006245, 45.779770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184834, 34.373451, 45.426941>,  <35.710457, 34.314823, 45.725582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184834, 34.373451, 45.426941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345802, 34.739037, 45.406067>,  <35.442383, 34.958389, 45.393543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345802, 34.739037, 45.406067>,  <35.184834, 34.373451, 45.426941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345802, 34.739037, 45.406067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193014, 0.028986, -0.980768,
		-0.894874, 0.404758, 0.188072,
		0.402425, 0.913964, -0.052185,
		35.466530, 35.013226, 45.390411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812805, 34.725155, 44.841919>,  <35.184834, 34.373451, 45.426941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812805, 34.725155, 44.841919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122261, 34.975155, 44.883606>,  <35.307934, 35.125153, 44.908619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122261, 34.975155, 44.883606>,  <34.812805, 34.725155, 44.841919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122261, 34.975155, 44.883606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005313, 0.158080, -0.987412,
		-0.633604, 0.764455, 0.118976,
		0.773640, 0.624996, 0.104222,
		35.354351, 35.162655, 44.914871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595455, 35.306816, 44.421558>,  <34.812805, 34.725155, 44.841919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595455, 35.306816, 44.421558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994247, 35.311695, 44.452209>,  <35.233524, 35.314621, 44.470600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994247, 35.311695, 44.452209>,  <34.595455, 35.306816, 44.421558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994247, 35.311695, 44.452209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076197, 0.032599, -0.996560,
		-0.014650, 0.999394, 0.031572,
		0.996985, 0.012194, 0.076629,
		35.293343, 35.315353, 44.475197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815666, 35.819168, 43.965202>,  <34.595455, 35.306816, 44.421558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815666, 35.819168, 43.965202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133553, 35.587082, 44.036495>,  <35.324287, 35.447830, 44.079273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133553, 35.587082, 44.036495>,  <34.815666, 35.819168, 43.965202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133553, 35.587082, 44.036495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148223, -0.099242, -0.983962,
		0.588599, 0.808394, 0.007132,
		0.794721, -0.580216, 0.178237,
		35.371967, 35.413017, 44.089966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200203, 36.101147, 43.463612>,  <34.815666, 35.819168, 43.965202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200203, 36.101147, 43.463612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345837, 35.743488, 43.567879>,  <35.433216, 35.528893, 43.630440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345837, 35.743488, 43.567879>,  <35.200203, 36.101147, 43.463612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345837, 35.743488, 43.567879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067951, -0.253627, -0.964912,
		0.928883, 0.369025, -0.031584,
		0.364088, -0.894144, 0.260666,
		35.455063, 35.475246, 43.646080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668907, 36.100094, 43.060925>,  <35.200203, 36.101147, 43.463612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668907, 36.100094, 43.060925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632111, 35.718971, 43.176640>,  <35.610031, 35.490295, 43.246071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632111, 35.718971, 43.176640>,  <35.668907, 36.100094, 43.060925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632111, 35.718971, 43.176640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253466, -0.303359, -0.918547,
		0.962960, -0.011176, 0.269413,
		-0.091995, -0.952811, 0.289290,
		35.604511, 35.433128, 43.263428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315754, 35.750927, 42.846252>,  <35.668907, 36.100094, 43.060925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315754, 35.750927, 42.846252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035378, 35.466202, 42.864170>,  <35.867153, 35.295368, 42.874920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035378, 35.466202, 42.864170>,  <36.315754, 35.750927, 42.846252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035378, 35.466202, 42.864170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337087, -0.385972, -0.858719,
		0.628535, -0.586811, 0.510486,
		-0.700939, -0.711813, 0.044791,
		35.825096, 35.252659, 42.877605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667423, 35.168278, 42.741943>,  <36.315754, 35.750927, 42.846252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667423, 35.168278, 42.741943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294846, 35.052372, 42.653904>,  <36.071297, 34.982830, 42.601082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294846, 35.052372, 42.653904>,  <36.667423, 35.168278, 42.741943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294846, 35.052372, 42.653904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326568, -0.398911, -0.856868,
		0.160489, -0.870005, 0.466192,
		-0.931449, -0.289761, -0.220095,
		36.015411, 34.965443, 42.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818375, 34.532585, 42.386654>,  <36.667423, 35.168278, 42.741943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818375, 34.532585, 42.386654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441193, 34.624279, 42.290077>,  <36.214886, 34.679295, 42.232132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441193, 34.624279, 42.290077>,  <36.818375, 34.532585, 42.386654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441193, 34.624279, 42.290077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157948, -0.330385, -0.930537,
		-0.293077, -0.915587, 0.275330,
		-0.942952, 0.229231, -0.241443,
		36.158306, 34.693050, 42.217644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537724, 34.006332, 41.897091>,  <36.818375, 34.532585, 42.386654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537724, 34.006332, 41.897091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286659, 34.308247, 41.820839>,  <36.136021, 34.489395, 41.775089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286659, 34.308247, 41.820839>,  <36.537724, 34.006332, 41.897091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286659, 34.308247, 41.820839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089303, -0.173444, -0.980787,
		-0.773344, -0.632629, 0.041460,
		-0.627665, 0.754783, -0.190628,
		36.098358, 34.534683, 41.763649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148968, 33.746304, 41.425896>,  <36.537724, 34.006332, 41.897091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148968, 33.746304, 41.425896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092545, 34.138695, 41.372562>,  <36.058689, 34.374130, 41.340561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092545, 34.138695, 41.372562>,  <36.148968, 33.746304, 41.425896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092545, 34.138695, 41.372562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057597, -0.142588, -0.988105,
		-0.988324, -0.131701, 0.076615,
		-0.141059, 0.980981, -0.133337,
		36.050228, 34.432987, 41.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553505, 33.882481, 40.881630>,  <36.148968, 33.746304, 41.425896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553505, 33.882481, 40.881630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758888, 34.225471, 40.894844>,  <35.882118, 34.431267, 40.902771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758888, 34.225471, 40.894844>,  <35.553505, 33.882481, 40.881630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758888, 34.225471, 40.894844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033109, 0.058260, -0.997752,
		-0.857476, 0.511209, 0.058305,
		0.513457, 0.857479, 0.033031,
		35.912926, 34.482716, 40.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203156, 34.490807, 40.406715>,  <35.553505, 33.882481, 40.881630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203156, 34.490807, 40.406715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587246, 34.589127, 40.459709>,  <35.817699, 34.648121, 40.491505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587246, 34.589127, 40.459709>,  <35.203156, 34.490807, 40.406715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587246, 34.589127, 40.459709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101322, 0.135395, -0.985597,
		-0.260201, 0.959817, 0.105104,
		0.960224, 0.245804, 0.132480,
		35.875313, 34.662868, 40.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256805, 35.074081, 40.027691>,  <35.203156, 34.490807, 40.406715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256805, 35.074081, 40.027691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633827, 34.953362, 40.084969>,  <35.860043, 34.880932, 40.119335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633827, 34.953362, 40.084969>,  <35.256805, 35.074081, 40.027691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633827, 34.953362, 40.084969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158072, 0.025343, -0.987102,
		0.294276, 0.953035, 0.071593,
		0.942557, -0.301798, 0.143190,
		35.916595, 34.862823, 40.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688984, 35.461582, 39.701244>,  <35.256805, 35.074081, 40.027691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688984, 35.461582, 39.701244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944241, 35.155972, 39.739258>,  <36.097393, 34.972603, 39.762066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944241, 35.155972, 39.739258>,  <35.688984, 35.461582, 39.701244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944241, 35.155972, 39.739258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400308, 0.223819, -0.888627,
		0.657668, 0.605114, 0.448676,
		0.638143, -0.764030, 0.095034,
		36.135685, 34.926762, 39.767769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291489, 35.837299, 39.480145>,  <35.688984, 35.461582, 39.701244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291489, 35.837299, 39.480145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343273, 35.441967, 39.448040>,  <36.374344, 35.204769, 39.428776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343273, 35.441967, 39.448040>,  <36.291489, 35.837299, 39.480145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343273, 35.441967, 39.448040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359518, 0.122221, -0.925099,
		0.924113, 0.090913, 0.371146,
		0.129465, -0.988330, -0.080261,
		36.382114, 35.145470, 39.423962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922325, 35.719627, 39.162155>,  <36.291489, 35.837299, 39.480145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922325, 35.719627, 39.162155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702850, 35.390224, 39.104500>,  <36.571167, 35.192581, 39.069904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702850, 35.390224, 39.104500>,  <36.922325, 35.719627, 39.162155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702850, 35.390224, 39.104500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169417, 0.059311, -0.983758,
		0.818682, -0.564195, 0.106973,
		-0.548686, -0.823508, -0.144141,
		36.538246, 35.143173, 39.061256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301449, 35.446484, 38.625702>,  <36.922325, 35.719627, 39.162155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301449, 35.446484, 38.625702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947456, 35.263325, 38.591934>,  <36.735062, 35.153427, 38.571674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947456, 35.263325, 38.591934>,  <37.301449, 35.446484, 38.625702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947456, 35.263325, 38.591934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076044, 0.036739, -0.996427,
		0.459367, -0.888244, 0.002307,
		-0.884986, -0.457901, -0.084422,
		36.681961, 35.125954, 38.566608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315445, 34.904327, 38.207726>,  <37.301449, 35.446484, 38.625702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315445, 34.904327, 38.207726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936337, 35.031334, 38.195713>,  <36.708870, 35.107540, 38.188503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936337, 35.031334, 38.195713>,  <37.315445, 34.904327, 38.207726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936337, 35.031334, 38.195713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052345, 0.061971, -0.996704,
		-0.314614, -0.946224, -0.075355,
		-0.947776, 0.317521, -0.030033,
		36.652004, 35.126591, 38.186703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533390, 34.338963, 38.572872>,  <37.315445, 34.904327, 38.207726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533390, 34.338963, 38.572872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922916, 34.405182, 38.510551>,  <38.156631, 34.444912, 38.473160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922916, 34.405182, 38.510551>,  <37.533390, 34.338963, 38.572872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922916, 34.405182, 38.510551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226162, -0.774881, 0.590262,
		-0.023012, -0.610044, -0.792033,
		0.973818, 0.165545, -0.155800,
		38.215061, 34.454845, 38.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813957, 33.752407, 38.743084>,  <37.533390, 34.338963, 38.572872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813957, 33.752407, 38.743084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138161, 33.986507, 38.733616>,  <38.332684, 34.126968, 38.727936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138161, 33.986507, 38.733616>,  <37.813957, 33.752407, 38.743084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138161, 33.986507, 38.733616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415242, -0.545613, 0.727929,
		0.413106, -0.599820, -0.685244,
		0.810504, 0.585254, -0.023674,
		38.381313, 34.162083, 38.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422001, 33.253967, 38.854950>,  <37.813957, 33.752407, 38.743084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422001, 33.253967, 38.854950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570881, 33.618538, 38.925121>,  <38.660210, 33.837280, 38.967224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570881, 33.618538, 38.925121>,  <38.422001, 33.253967, 38.854950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570881, 33.618538, 38.925121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435368, -0.338364, 0.834245,
		0.819710, -0.234127, -0.522743,
		0.372197, 0.911424, 0.175429,
		38.682541, 33.891964, 38.977749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159607, 33.175777, 39.081635>,  <38.422001, 33.253967, 38.854950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159607, 33.175777, 39.081635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049904, 33.534046, 39.221672>,  <38.984081, 33.749008, 39.305695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049904, 33.534046, 39.221672>,  <39.159607, 33.175777, 39.081635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049904, 33.534046, 39.221672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361427, -0.241356, 0.900621,
		0.891154, 0.373532, -0.257526,
		-0.274255, 0.895668, 0.350090,
		38.967628, 33.802746, 39.326698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621628, 33.321278, 39.528015>,  <39.159607, 33.175777, 39.081635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621628, 33.321278, 39.528015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331787, 33.579273, 39.625126>,  <39.157883, 33.734070, 39.683392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331787, 33.579273, 39.625126>,  <39.621628, 33.321278, 39.528015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331787, 33.579273, 39.625126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159150, -0.186140, 0.969548,
		0.670540, 0.741173, 0.032226,
		-0.724601, 0.644992, 0.242772,
		39.114407, 33.772770, 39.697956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828510, 33.721973, 40.011703>,  <39.621628, 33.321278, 39.528015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828510, 33.721973, 40.011703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435246, 33.744560, 40.081211>,  <39.199287, 33.758114, 40.122917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435246, 33.744560, 40.081211>,  <39.828510, 33.721973, 40.011703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435246, 33.744560, 40.081211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157862, -0.216344, 0.963470,
		0.092001, 0.974683, 0.203787,
		-0.983166, 0.056470, 0.173769,
		39.140297, 33.761501, 40.133343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837173, 34.050629, 40.622879>,  <39.828510, 33.721973, 40.011703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837173, 34.050629, 40.622879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470623, 33.890533, 40.619476>,  <39.250694, 33.794476, 40.617435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470623, 33.890533, 40.619476>,  <39.837173, 34.050629, 40.622879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470623, 33.890533, 40.619476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023973, -0.076068, 0.996814,
		-0.399608, 0.913250, 0.079302,
		-0.916373, -0.400236, -0.008504,
		39.195713, 33.770462, 40.616924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449368, 34.498714, 41.081207>,  <39.837173, 34.050629, 40.622879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449368, 34.498714, 41.081207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257801, 34.148800, 41.051857>,  <39.142860, 33.938850, 41.034248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257801, 34.148800, 41.051857>,  <39.449368, 34.498714, 41.081207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257801, 34.148800, 41.051857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031283, -0.066523, 0.997294,
		-0.877302, 0.479917, 0.004493,
		-0.478917, -0.874788, -0.073375,
		39.114124, 33.886364, 41.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852535, 34.618408, 41.517937>,  <39.449368, 34.498714, 41.081207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852535, 34.618408, 41.517937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882366, 34.222324, 41.470734>,  <38.900265, 33.984673, 41.442413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882366, 34.222324, 41.470734>,  <38.852535, 34.618408, 41.517937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882366, 34.222324, 41.470734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150569, -0.128158, 0.980257,
		-0.985783, -0.055334, -0.158652,
		0.074574, -0.990209, -0.118005,
		38.904739, 33.925262, 41.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264477, 34.371414, 41.814430>,  <38.852535, 34.618408, 41.517937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264477, 34.371414, 41.814430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547222, 34.088493, 41.811214>,  <38.716869, 33.918739, 41.809284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547222, 34.088493, 41.811214>,  <38.264477, 34.371414, 41.814430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547222, 34.088493, 41.811214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218977, -0.229614, 0.948328,
		-0.672604, -0.668577, -0.317189,
		0.706862, -0.707306, -0.008036,
		38.759281, 33.876301, 41.808804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942696, 33.779076, 42.076244>,  <38.264477, 34.371414, 41.814430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942696, 33.779076, 42.076244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337414, 33.745407, 42.131611>,  <38.574245, 33.725204, 42.164829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337414, 33.745407, 42.131611>,  <37.942696, 33.779076, 42.076244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337414, 33.745407, 42.131611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156125, -0.266120, 0.951212,
		-0.043230, -0.960258, -0.275746,
		0.986791, -0.084172, 0.138416,
		38.633450, 33.720154, 42.173134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950813, 33.259750, 42.539501>,  <37.942696, 33.779076, 42.076244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950813, 33.259750, 42.539501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315929, 33.419941, 42.571568>,  <38.535000, 33.516056, 42.590809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315929, 33.419941, 42.571568>,  <37.950813, 33.259750, 42.539501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315929, 33.419941, 42.571568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023859, -0.143660, 0.989339,
		0.407728, -0.904974, -0.121576,
		0.912792, 0.400480, 0.080165,
		38.589767, 33.540085, 42.595615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395519, 32.895615, 43.025902>,  <37.950813, 33.259750, 42.539501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395519, 32.895615, 43.025902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560806, 33.259861, 43.023880>,  <38.659977, 33.478409, 43.022667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560806, 33.259861, 43.023880>,  <38.395519, 32.895615, 43.025902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560806, 33.259861, 43.023880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059815, 0.032675, 0.997675,
		0.908668, -0.411951, 0.067971,
		0.413214, 0.910620, -0.005050,
		38.684769, 33.533047, 43.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875999, 32.763809, 43.452332>,  <38.395519, 32.895615, 43.025902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875999, 32.763809, 43.452332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861557, 33.163334, 43.439182>,  <38.852894, 33.403049, 43.431293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861557, 33.163334, 43.439182>,  <38.875999, 32.763809, 43.452332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861557, 33.163334, 43.439182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053979, 0.034794, 0.997936,
		0.997889, 0.034255, -0.055171,
		-0.036104, 0.998807, -0.032871,
		38.850727, 33.462975, 43.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373016, 32.906334, 43.941517>,  <38.875999, 32.763809, 43.452332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373016, 32.906334, 43.941517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150326, 33.234955, 43.892349>,  <39.016712, 33.432129, 43.862846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150326, 33.234955, 43.892349>,  <39.373016, 32.906334, 43.941517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150326, 33.234955, 43.892349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019146, 0.135246, 0.990627,
		0.830477, 0.553859, -0.059565,
		-0.556723, 0.821553, -0.122923,
		38.983307, 33.481422, 43.855473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573845, 33.361843, 44.496002>,  <39.373016, 32.906334, 43.941517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573845, 33.361843, 44.496002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235645, 33.540100, 44.378338>,  <39.032726, 33.647053, 44.307739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235645, 33.540100, 44.378338>,  <39.573845, 33.361843, 44.496002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235645, 33.540100, 44.378338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227268, 0.198165, 0.953457,
		0.483191, 0.873003, -0.066270,
		-0.845503, 0.445641, -0.294157,
		38.981995, 33.673794, 44.290092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445461, 34.155968, 44.855167>,  <39.573845, 33.361843, 44.496002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445461, 34.155968, 44.855167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112114, 33.978912, 44.722763>,  <38.912106, 33.872681, 44.643322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112114, 33.978912, 44.722763>,  <39.445461, 34.155968, 44.855167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112114, 33.978912, 44.722763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392122, 0.051419, 0.918475,
		-0.389528, 0.895227, -0.216418,
		-0.833372, -0.442634, -0.331009,
		38.862103, 33.846123, 44.623459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790257, 34.490425, 45.163445>,  <39.445461, 34.155968, 44.855167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790257, 34.490425, 45.163445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669044, 34.129337, 45.041290>,  <38.596317, 33.912685, 44.967999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669044, 34.129337, 45.041290>,  <38.790257, 34.490425, 45.163445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669044, 34.129337, 45.041290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472285, -0.136075, 0.870879,
		-0.827719, 0.408134, -0.385108,
		-0.303033, -0.902724, -0.305387,
		38.578136, 33.858521, 44.949673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.024658, 34.523918, 45.095325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118732, 34.144245, 45.178986>,  <38.175179, 33.916443, 45.229183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118732, 34.144245, 45.178986>,  <38.024658, 34.523918, 45.095325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118732, 34.144245, 45.178986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431816, 0.090744, 0.897385,
		-0.870759, -0.301368, -0.388530,
		0.235186, -0.949180, 0.209152,
		38.189289, 33.859489, 45.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526520, 34.428707, 45.541031>,  <38.024658, 34.523918, 45.095325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526520, 34.428707, 45.541031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794510, 34.139141, 45.606861>,  <37.955303, 33.965401, 45.646358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794510, 34.139141, 45.606861>,  <37.526520, 34.428707, 45.541031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794510, 34.139141, 45.606861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145612, 0.089240, 0.985309,
		-0.727963, -0.684097, -0.045621,
		0.669975, -0.723912, 0.164576,
		37.995502, 33.921967, 45.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198627, 33.959507, 45.857281>,  <37.526520, 34.428707, 45.541031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198627, 33.959507, 45.857281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583839, 33.922539, 45.958500>,  <37.814968, 33.900360, 46.019234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583839, 33.922539, 45.958500>,  <37.198627, 33.959507, 45.857281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583839, 33.922539, 45.958500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251345, 0.029855, 0.967437,
		-0.096967, -0.995272, 0.005521,
		0.963028, -0.092421, 0.253051,
		37.872749, 33.894814, 46.034416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150902, 33.572769, 46.460068>,  <37.198627, 33.959507, 45.857281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150902, 33.572769, 46.460068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526802, 33.709442, 46.464401>,  <37.752342, 33.791447, 46.467003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526802, 33.709442, 46.464401>,  <37.150902, 33.572769, 46.460068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526802, 33.709442, 46.464401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025099, -0.100575, 0.994613,
		0.340932, -0.934418, -0.103091,
		0.939753, 0.341683, 0.010836,
		37.808727, 33.811947, 46.467651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458035, 33.094032, 46.748390>,  <37.150902, 33.572769, 46.460068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458035, 33.094032, 46.748390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684162, 33.419243, 46.804096>,  <37.819839, 33.614368, 46.837521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684162, 33.419243, 46.804096>,  <37.458035, 33.094032, 46.748390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684162, 33.419243, 46.804096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115405, -0.245134, 0.962596,
		0.816759, -0.528103, -0.232407,
		0.565320, 0.813029, 0.139269,
		37.853760, 33.663151, 46.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944382, 32.800056, 47.053928>,  <37.458035, 33.094032, 46.748390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944382, 32.800056, 47.053928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017693, 33.187309, 47.122204>,  <38.061680, 33.419659, 47.163170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017693, 33.187309, 47.122204>,  <37.944382, 32.800056, 47.053928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017693, 33.187309, 47.122204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243514, -0.212925, 0.946237,
		0.952424, -0.131860, -0.274777,
		0.183277, 0.968130, 0.170685,
		38.072678, 33.477749, 47.173409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647823, 32.816364, 47.428764>,  <37.944382, 32.800056, 47.053928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647823, 32.816364, 47.428764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463829, 33.166817, 47.486469>,  <38.353432, 33.377087, 47.521091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463829, 33.166817, 47.486469>,  <38.647823, 32.816364, 47.428764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463829, 33.166817, 47.486469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189426, -0.061900, 0.979942,
		0.867485, 0.478088, -0.137488,
		-0.459987, 0.876128, 0.144260,
		38.325832, 33.429657, 47.529747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967285, 33.263477, 47.970383>,  <38.647823, 32.816364, 47.428764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967285, 33.263477, 47.970383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613998, 33.451027, 47.966755>,  <38.402027, 33.563557, 47.964577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613998, 33.451027, 47.966755>,  <38.967285, 33.263477, 47.970383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613998, 33.451027, 47.966755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036909, 0.088780, 0.995367,
		0.467510, 0.878790, -0.095717,
		-0.883217, 0.468877, -0.009070,
		38.349033, 33.591690, 47.964035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970749, 33.876991, 48.401127>,  <38.967285, 33.263477, 47.970383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970749, 33.876991, 48.401127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590340, 33.755699, 48.377121>,  <38.362095, 33.682926, 48.362717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590340, 33.755699, 48.377121>,  <38.970749, 33.876991, 48.401127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590340, 33.755699, 48.377121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083032, 0.063574, 0.994517,
		-0.297750, 0.950795, -0.085638,
		-0.951026, -0.303228, -0.060017,
		38.305031, 33.664730, 48.359116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674751, 34.295067, 48.887005>,  <38.970749, 33.876991, 48.401127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674751, 34.295067, 48.887005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392532, 34.019226, 48.821697>,  <38.223202, 33.853722, 48.782513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392532, 34.019226, 48.821697>,  <38.674751, 34.295067, 48.887005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392532, 34.019226, 48.821697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199595, -0.027688, 0.979487,
		-0.679976, 0.723660, -0.118106,
		-0.705546, -0.689601, -0.163267,
		38.180870, 33.812347, 48.772717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236443, 34.415630, 49.397675>,  <38.674751, 34.295067, 48.887005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236443, 34.415630, 49.397675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128387, 34.047691, 49.283901>,  <38.063553, 33.826927, 49.215637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128387, 34.047691, 49.283901>,  <38.236443, 34.415630, 49.397675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128387, 34.047691, 49.283901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270154, -0.211134, 0.939382,
		-0.924144, 0.330603, -0.191466,
		-0.270138, -0.919850, -0.284432,
		38.047348, 33.771736, 49.198570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634899, 34.321079, 49.830215>,  <38.236443, 34.415630, 49.397675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634899, 34.321079, 49.830215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772732, 33.977821, 49.677979>,  <37.855431, 33.771866, 49.586636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772732, 33.977821, 49.677979>,  <37.634899, 34.321079, 49.830215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772732, 33.977821, 49.677979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186348, -0.459879, 0.868208,
		-0.920076, -0.228244, -0.318379,
		0.344579, -0.858147, -0.380590,
		37.876106, 33.720379, 49.563801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132996, 33.823807, 49.961727>,  <37.634899, 34.321079, 49.830215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132996, 33.823807, 49.961727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490692, 33.646637, 49.935978>,  <37.705311, 33.540333, 49.920528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490692, 33.646637, 49.935978>,  <37.132996, 33.823807, 49.961727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490692, 33.646637, 49.935978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170727, -0.470512, 0.865720,
		-0.413737, -0.763175, -0.496372,
		0.894245, -0.442924, -0.064373,
		37.758965, 33.513760, 49.916664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024590, 33.135784, 50.164276>,  <37.132996, 33.823807, 49.961727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024590, 33.135784, 50.164276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422142, 33.151081, 50.205708>,  <37.660675, 33.160259, 50.230568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422142, 33.151081, 50.205708>,  <37.024590, 33.135784, 50.164276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422142, 33.151081, 50.205708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081880, -0.374089, 0.923771,
		0.074075, -0.926604, -0.368671,
		0.993886, 0.038242, 0.103581,
		37.720306, 33.162552, 50.236782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236225, 32.459442, 50.297249>,  <37.024590, 33.135784, 50.164276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236225, 32.459442, 50.297249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546402, 32.679211, 50.421719>,  <37.732506, 32.811069, 50.496403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546402, 32.679211, 50.421719>,  <37.236225, 32.459442, 50.297249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546402, 32.679211, 50.421719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051735, -0.435879, 0.898517,
		0.629299, -0.712844, -0.309574,
		0.775440, 0.549420, 0.311177,
		37.779034, 32.844036, 50.515072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750603, 32.026421, 50.487717>,  <37.236225, 32.459442, 50.297249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750603, 32.026421, 50.487717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820980, 32.375309, 50.670265>,  <37.863205, 32.584641, 50.779793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820980, 32.375309, 50.670265>,  <37.750603, 32.026421, 50.487717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820980, 32.375309, 50.670265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035013, -0.468853, 0.882582,
		0.983777, -0.139306, -0.113031,
		0.175944, 0.872221, 0.456370,
		37.873764, 32.636974, 50.807175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077091, 31.820236, 51.124413>,  <37.750603, 32.026421, 50.487717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077091, 31.820236, 51.124413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965012, 32.197674, 51.194981>,  <37.897766, 32.424137, 51.237320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965012, 32.197674, 51.194981>,  <38.077091, 31.820236, 51.124413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965012, 32.197674, 51.194981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155235, -0.225903, 0.961702,
		0.947308, 0.242079, 0.209776,
		-0.280197, 0.943592, 0.176420,
		37.880951, 32.480751, 51.247906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521328, 32.155930, 51.593258>,  <38.077091, 31.820236, 51.124413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521328, 32.155930, 51.593258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.170197, 32.343174, 51.633835>,  <37.959518, 32.455521, 51.658180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.170197, 32.343174, 51.633835>,  <38.521328, 32.155930, 51.593258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170197, 32.343174, 51.633835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021063, -0.249305, 0.968196,
		0.478508, 0.847775, 0.228707,
		-0.877831, 0.468107, 0.101438,
		37.906849, 32.483604, 51.664265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473011, 32.432384, 52.300751>,  <38.521328, 32.155930, 51.593258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473011, 32.432384, 52.300751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091442, 32.451347, 52.182236>,  <37.862499, 32.462727, 52.111126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091442, 32.451347, 52.182236>,  <38.473011, 32.432384, 52.300751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091442, 32.451347, 52.182236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299354, -0.082813, 0.950542,
		0.020529, 0.995437, 0.093190,
		-0.953921, 0.047411, -0.296288,
		37.805267, 32.465572, 52.093349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191669, 32.806034, 52.909039>,  <38.473011, 32.432384, 52.300751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191669, 32.806034, 52.909039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884563, 32.640316, 52.713531>,  <37.700298, 32.540886, 52.596226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884563, 32.640316, 52.713531>,  <38.191669, 32.806034, 52.909039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884563, 32.640316, 52.713531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410360, -0.267901, 0.871685,
		-0.492072, 0.869823, 0.035678,
		-0.767770, -0.414291, -0.488767,
		37.654232, 32.516029, 52.566902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640396, 32.907001, 53.375458>,  <38.191669, 32.806034, 52.909039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640396, 32.907001, 53.375458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525478, 32.617867, 53.124073>,  <37.456528, 32.444386, 52.973244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525478, 32.617867, 53.124073>,  <37.640396, 32.907001, 53.375458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525478, 32.617867, 53.124073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521685, -0.432182, 0.735570,
		-0.803310, 0.539183, -0.252933,
		-0.287293, -0.722842, -0.628460,
		37.439289, 32.401012, 52.935535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917366, 32.891453, 53.401096>,  <37.640396, 32.907001, 53.375458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917366, 32.891453, 53.401096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065830, 32.533253, 53.302860>,  <37.154907, 32.318333, 53.243919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065830, 32.533253, 53.302860>,  <36.917366, 32.891453, 53.401096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065830, 32.533253, 53.302860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432281, -0.400713, 0.807813,
		-0.821812, -0.193661, -0.535837,
		0.371159, -0.895502, -0.245595,
		37.177177, 32.264603, 53.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067013, 33.370842, 53.993618>,  <36.917366, 32.891453, 53.401096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067013, 33.370842, 53.993618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439438, 33.376144, 54.139462>,  <37.662895, 33.379326, 54.226967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439438, 33.376144, 54.139462>,  <37.067013, 33.370842, 53.993618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439438, 33.376144, 54.139462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302700, 0.529834, -0.792242,
		-0.203681, 0.847998, 0.489300,
		0.931067, 0.013254, 0.364607,
		37.718758, 33.380119, 54.248844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957256, 34.014008, 54.259159>,  <37.067013, 33.370842, 53.993618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957256, 34.014008, 54.259159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615398, 34.220387, 54.235882>,  <36.410286, 34.344215, 54.221916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615398, 34.220387, 54.235882>,  <36.957256, 34.014008, 54.259159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615398, 34.220387, 54.235882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040926, 0.178661, 0.983059,
		0.517604, 0.837781, -0.173807,
		-0.854641, 0.515949, -0.058189,
		36.359005, 34.375172, 54.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443928, 33.561653, 54.463314>,  <36.957256, 34.014008, 54.259159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443928, 33.561653, 54.463314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187172, 33.866032, 54.501122>,  <36.033119, 34.048660, 54.523808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187172, 33.866032, 54.501122>,  <36.443928, 33.561653, 54.463314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187172, 33.866032, 54.501122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410593, -0.236981, -0.880485,
		-0.647603, -0.603985, 0.464556,
		-0.641891, 0.760948, 0.094522,
		35.994606, 34.094315, 54.529480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764091, 33.259434, 54.228046>,  <36.443928, 33.561653, 54.463314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764091, 33.259434, 54.228046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714645, 33.655766, 54.206207>,  <35.684978, 33.893562, 54.193104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714645, 33.655766, 54.206207>,  <35.764091, 33.259434, 54.228046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714645, 33.655766, 54.206207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282332, -0.087862, -0.955285,
		-0.951320, -0.102669, 0.290603,
		-0.123611, 0.990827, -0.054598,
		35.677563, 33.953014, 54.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101402, 33.313820, 54.075184>,  <35.764091, 33.259434, 54.228046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101402, 33.313820, 54.075184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267212, 33.654339, 53.946514>,  <35.366695, 33.858650, 53.869312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267212, 33.654339, 53.946514>,  <35.101402, 33.313820, 54.075184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267212, 33.654339, 53.946514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311968, -0.199124, -0.928992,
		-0.854897, 0.485437, 0.183035,
		0.414521, 0.851293, -0.321671,
		35.391567, 33.909725, 53.850014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633827, 33.506958, 53.603249>,  <35.101402, 33.313820, 54.075184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633827, 33.506958, 53.603249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952572, 33.732441, 53.516312>,  <35.143818, 33.867733, 53.464149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952572, 33.732441, 53.516312>,  <34.633827, 33.506958, 53.603249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952572, 33.732441, 53.516312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262672, -0.000700, -0.964885,
		-0.544068, 0.825972, 0.147513,
		0.796865, 0.563711, -0.217340,
		35.191631, 33.901554, 53.451111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428780, 34.186508, 53.160694>,  <34.633827, 33.506958, 53.603249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428780, 34.186508, 53.160694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814491, 34.109261, 53.088173>,  <35.045918, 34.062912, 53.044662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814491, 34.109261, 53.088173>,  <34.428780, 34.186508, 53.160694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814491, 34.109261, 53.088173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140800, 0.206057, -0.968357,
		0.224369, 0.959294, 0.171505,
		0.964279, -0.193121, -0.181301,
		35.103775, 34.051323, 53.033783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637344, 34.704990, 52.701141>,  <34.428780, 34.186508, 53.160694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637344, 34.704990, 52.701141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924076, 34.432159, 52.643280>,  <35.096115, 34.268459, 52.608562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924076, 34.432159, 52.643280>,  <34.637344, 34.704990, 52.701141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924076, 34.432159, 52.643280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095067, 0.109909, -0.989385,
		0.690737, 0.722972, 0.013942,
		0.716830, -0.682079, -0.144649,
		35.139126, 34.227535, 52.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065281, 35.081207, 52.313381>,  <34.637344, 34.704990, 52.701141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065281, 35.081207, 52.313381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152065, 34.693005, 52.271362>,  <35.204136, 34.460083, 52.246151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152065, 34.693005, 52.271362>,  <35.065281, 35.081207, 52.313381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152065, 34.693005, 52.271362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033609, 0.114972, -0.992800,
		0.975601, 0.211871, 0.057563,
		0.216964, -0.970511, -0.105046,
		35.217155, 34.401852, 52.239849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566418, 35.114254, 51.901638>,  <35.065281, 35.081207, 52.313381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566418, 35.114254, 51.901638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481838, 34.726482, 51.851849>,  <35.431091, 34.493820, 51.821976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481838, 34.726482, 51.851849>,  <35.566418, 35.114254, 51.901638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481838, 34.726482, 51.851849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248122, 0.069942, -0.966201,
		0.945370, -0.235188, 0.225747,
		-0.211450, -0.969430, -0.124477,
		35.418404, 34.435654, 51.814507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182896, 34.682495, 51.628143>,  <35.566418, 35.114254, 51.901638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182896, 34.682495, 51.628143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865139, 34.475376, 51.501129>,  <35.674484, 34.351105, 51.424919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865139, 34.475376, 51.501129>,  <36.182896, 34.682495, 51.628143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865139, 34.475376, 51.501129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339218, 0.055457, -0.939072,
		0.503859, -0.853704, 0.131591,
		-0.794392, -0.517798, -0.317534,
		35.626820, 34.320038, 51.405869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432625, 34.257271, 51.118401>,  <36.182896, 34.682495, 51.628143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432625, 34.257271, 51.118401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038628, 34.254429, 51.049431>,  <35.802227, 34.252724, 51.008049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038628, 34.254429, 51.049431>,  <36.432625, 34.257271, 51.118401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038628, 34.254429, 51.049431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170931, -0.177679, -0.969130,
		-0.023752, -0.984063, 0.176228,
		-0.984997, -0.007104, -0.172427,
		35.743130, 34.252296, 50.997704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262421, 33.652939, 50.685551>,  <36.432625, 34.257271, 51.118401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262421, 33.652939, 50.685551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936256, 33.873127, 50.613888>,  <35.740559, 34.005238, 50.570892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936256, 33.873127, 50.613888>,  <36.262421, 33.652939, 50.685551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936256, 33.873127, 50.613888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119340, -0.142988, -0.982503,
		-0.566452, -0.822521, 0.050901,
		-0.815408, 0.550466, -0.179156,
		35.691635, 34.038265, 50.560143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902428, 33.376141, 50.128067>,  <36.262421, 33.652939, 50.685551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902428, 33.376141, 50.128067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749725, 33.745712, 50.118076>,  <35.658104, 33.967453, 50.112080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749725, 33.745712, 50.118076>,  <35.902428, 33.376141, 50.128067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749725, 33.745712, 50.118076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054761, -0.004369, -0.998490,
		-0.922639, -0.382547, -0.048928,
		-0.381756, 0.923926, -0.024980,
		35.635197, 34.022888, 50.110584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374508, 33.355980, 49.548737>,  <35.902428, 33.376141, 50.128067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374508, 33.355980, 49.548737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467651, 33.741077, 49.603733>,  <35.523537, 33.972134, 49.636730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467651, 33.741077, 49.603733>,  <35.374508, 33.355980, 49.548737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467651, 33.741077, 49.603733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056944, 0.127636, -0.990185,
		-0.970841, 0.238405, -0.025101,
		0.232862, 0.962742, 0.137490,
		35.537510, 34.029900, 49.644981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966660, 33.691051, 49.175285>,  <35.374508, 33.355980, 49.548737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966660, 33.691051, 49.175285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271816, 33.946289, 49.216915>,  <35.454910, 34.099430, 49.241894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271816, 33.946289, 49.216915>,  <34.966660, 33.691051, 49.175285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271816, 33.946289, 49.216915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109323, 0.285970, -0.951982,
		-0.637216, 0.714882, 0.287923,
		0.762892, 0.638094, 0.104072,
		35.500683, 34.137718, 49.248138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753757, 34.235691, 48.812424>,  <34.966660, 33.691051, 49.175285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753757, 34.235691, 48.812424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146202, 34.307411, 48.841457>,  <35.381668, 34.350445, 48.858875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146202, 34.307411, 48.841457>,  <34.753757, 34.235691, 48.812424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146202, 34.307411, 48.841457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012161, 0.317309, -0.948244,
		-0.193053, 0.931217, 0.309136,
		0.981113, 0.179302, 0.072582,
		35.440536, 34.361202, 48.863232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832245, 34.856091, 48.439865>,  <34.753757, 34.235691, 48.812424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832245, 34.856091, 48.439865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214329, 34.741505, 48.469582>,  <35.443577, 34.672752, 48.487411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214329, 34.741505, 48.469582>,  <34.832245, 34.856091, 48.439865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214329, 34.741505, 48.469582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160960, 0.292251, -0.942699,
		0.248337, 0.912430, 0.325270,
		0.955207, -0.286463, 0.074288,
		35.500893, 34.655567, 48.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193306, 35.419613, 48.210934>,  <34.832245, 34.856091, 48.439865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193306, 35.419613, 48.210934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435913, 35.106056, 48.157803>,  <35.581478, 34.917923, 48.125923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435913, 35.106056, 48.157803>,  <35.193306, 35.419613, 48.210934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435913, 35.106056, 48.157803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170809, 0.291630, -0.941157,
		0.776504, 0.548142, 0.310776,
		0.606519, -0.783895, -0.132825,
		35.617870, 34.870888, 48.117954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796936, 35.711281, 47.976395>,  <35.193306, 35.419613, 48.210934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796936, 35.711281, 47.976395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813919, 35.326351, 47.868969>,  <35.824108, 35.095394, 47.804512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813919, 35.326351, 47.868969>,  <35.796936, 35.711281, 47.976395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813919, 35.326351, 47.868969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125198, 0.271813, -0.954171,
		0.991223, 0.006886, 0.132021,
		0.042456, -0.962325, -0.268566,
		35.826656, 35.037655, 47.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414017, 35.592564, 47.614166>,  <35.796936, 35.711281, 47.976395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414017, 35.592564, 47.614166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147560, 35.311123, 47.515205>,  <35.987686, 35.142258, 47.455830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147560, 35.311123, 47.515205>,  <36.414017, 35.592564, 47.614166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147560, 35.311123, 47.515205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213929, 0.137526, -0.967120,
		0.714489, -0.697162, 0.058909,
		-0.666138, -0.703599, -0.247404,
		35.947720, 35.100044, 47.440983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654640, 35.451954, 47.020741>,  <36.414017, 35.592564, 47.614166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654640, 35.451954, 47.020741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303764, 35.260284, 47.008465>,  <36.093239, 35.145283, 47.001099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303764, 35.260284, 47.008465>,  <36.654640, 35.451954, 47.020741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303764, 35.260284, 47.008465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055031, 0.163817, -0.984955,
		0.476987, -0.862299, -0.170067,
		-0.877186, -0.479170, -0.030685,
		36.040607, 35.116535, 46.999260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.762913, 37.848625, 29.624098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366096, 37.888699, 29.654621>,  <40.128006, 37.912743, 29.672935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366096, 37.888699, 29.654621>,  <40.762913, 37.848625, 29.624098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366096, 37.888699, 29.654621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056479, -0.187648, 0.980611,
		0.112559, 0.977114, 0.180496,
		-0.992039, 0.100183, 0.076307,
		40.068485, 37.918755, 29.677513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663620, 38.318939, 30.143139>,  <40.762913, 37.848625, 29.624098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663620, 38.318939, 30.143139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387329, 38.034801, 30.089008>,  <40.221554, 37.864319, 30.056530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387329, 38.034801, 30.089008>,  <40.663620, 38.318939, 30.143139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387329, 38.034801, 30.089008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106980, -0.285464, 0.952400,
		-0.715162, 0.643368, 0.273169,
		-0.690723, -0.710344, -0.135326,
		40.180111, 37.821697, 30.048410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116730, 38.424332, 30.625751>,  <40.663620, 38.318939, 30.143139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116730, 38.424332, 30.625751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123096, 38.042084, 30.508083>,  <40.126915, 37.812737, 30.437483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123096, 38.042084, 30.508083>,  <40.116730, 38.424332, 30.625751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123096, 38.042084, 30.508083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148952, -0.288658, 0.945775,
		-0.988716, -0.058872, 0.137747,
		0.015918, -0.955621, -0.294170,
		40.127872, 37.755398, 30.419832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880444, 38.130924, 31.195290>,  <40.116730, 38.424332, 30.625751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880444, 38.130924, 31.195290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029709, 37.830265, 30.977749>,  <40.119270, 37.649872, 30.847223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029709, 37.830265, 30.977749>,  <39.880444, 38.130924, 31.195290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029709, 37.830265, 30.977749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293197, -0.460613, 0.837778,
		-0.880217, -0.472086, 0.048495,
		0.373166, -0.751645, -0.543854,
		40.141659, 37.604771, 30.814592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675869, 37.443691, 31.618742>,  <39.880444, 38.130924, 31.195290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675869, 37.443691, 31.618742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960548, 37.323097, 31.364943>,  <40.131355, 37.250740, 31.212662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960548, 37.323097, 31.364943>,  <39.675869, 37.443691, 31.618742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960548, 37.323097, 31.364943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478712, -0.452888, 0.752149,
		-0.514120, -0.839046, -0.177995,
		0.711699, -0.301486, -0.634500,
		40.174057, 37.232651, 31.174593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719456, 36.760548, 31.725365>,  <39.675869, 37.443691, 31.618742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719456, 36.760548, 31.725365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068398, 36.848141, 31.550528>,  <40.277763, 36.900696, 31.445625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068398, 36.848141, 31.550528>,  <39.719456, 36.760548, 31.725365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068398, 36.848141, 31.550528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488559, -0.423011, 0.763134,
		-0.017780, -0.879265, -0.476001,
		0.872350, 0.218986, -0.437094,
		40.330101, 36.913837, 31.419399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037884, 36.154358, 31.576040>,  <39.719456, 36.760548, 31.725365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037884, 36.154358, 31.576040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314316, 36.440018, 31.620567>,  <40.480175, 36.611416, 31.647284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314316, 36.440018, 31.620567>,  <40.037884, 36.154358, 31.576040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314316, 36.440018, 31.620567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487410, -0.574200, 0.657819,
		0.533703, -0.400348, -0.744904,
		0.691081, 0.714154, 0.111318,
		40.521641, 36.654263, 31.653963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542587, 35.801422, 31.495722>,  <40.037884, 36.154358, 31.576040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542587, 35.801422, 31.495722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.675140, 36.125477, 31.689157>,  <40.754673, 36.319908, 31.805220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.675140, 36.125477, 31.689157>,  <40.542587, 35.801422, 31.495722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675140, 36.125477, 31.689157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578623, -0.579355, 0.574059,
		0.745237, 0.089581, -0.660755,
		0.331387, 0.810138, 0.483590,
		40.774555, 36.368519, 31.834234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116573, 35.557545, 31.699396>,  <40.542587, 35.801422, 31.495722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116573, 35.557545, 31.699396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088043, 35.888569, 31.922129>,  <41.070927, 36.087181, 32.055767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088043, 35.888569, 31.922129>,  <41.116573, 35.557545, 31.699396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088043, 35.888569, 31.922129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487612, -0.458074, 0.743238,
		0.870142, 0.324528, -0.370855,
		-0.071323, 0.827556, 0.556833,
		41.066647, 36.136837, 32.089180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747162, 35.772186, 31.896784>,  <41.116573, 35.557545, 31.699396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747162, 35.772186, 31.896784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493324, 35.899834, 32.178337>,  <41.341022, 35.976421, 32.347267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493324, 35.899834, 32.178337>,  <41.747162, 35.772186, 31.896784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493324, 35.899834, 32.178337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552203, -0.449972, 0.701853,
		0.540702, 0.834079, 0.109332,
		-0.634597, 0.319120, 0.703881,
		41.302944, 35.995571, 32.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163746, 35.988800, 32.434990>,  <41.747162, 35.772186, 31.896784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163746, 35.988800, 32.434990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813591, 35.909851, 32.611511>,  <41.603500, 35.862484, 32.717422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813591, 35.909851, 32.611511>,  <42.163746, 35.988800, 32.434990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813591, 35.909851, 32.611511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473291, -0.535855, 0.699182,
		0.098478, 0.820917, 0.562492,
		-0.875385, -0.197368, 0.441303,
		41.550976, 35.850639, 32.743900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350338, 36.044033, 33.080162>,  <42.163746, 35.988800, 32.434990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350338, 36.044033, 33.080162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999634, 35.856258, 33.121952>,  <41.789211, 35.743595, 33.147026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999634, 35.856258, 33.121952>,  <42.350338, 36.044033, 33.080162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999634, 35.856258, 33.121952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378855, -0.540384, 0.751302,
		-0.296230, 0.698295, 0.651637,
		-0.876765, -0.469435, 0.104475,
		41.736603, 35.715427, 33.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327713, 35.971848, 33.756592>,  <42.350338, 36.044033, 33.080162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327713, 35.971848, 33.756592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022434, 35.735287, 33.652451>,  <41.839268, 35.593349, 33.589966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022434, 35.735287, 33.652451>,  <42.327713, 35.971848, 33.756592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022434, 35.735287, 33.652451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184048, -0.585180, 0.789741,
		-0.619406, 0.554807, 0.555451,
		-0.763193, -0.591400, -0.260353,
		41.793476, 35.557865, 33.574345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961887, 35.907875, 34.336716>,  <42.327713, 35.971848, 33.756592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961887, 35.907875, 34.336716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897827, 35.588142, 34.105053>,  <41.859390, 35.396305, 33.966053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897827, 35.588142, 34.105053>,  <41.961887, 35.907875, 34.336716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897827, 35.588142, 34.105053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112715, -0.597705, 0.793753,
		-0.980637, 0.061836, 0.185817,
		-0.160146, -0.799328, -0.579162,
		41.849785, 35.348343, 33.931305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498882, 35.387817, 34.719234>,  <41.961887, 35.907875, 34.336716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498882, 35.387817, 34.719234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.697140, 35.185265, 34.436981>,  <41.816093, 35.063732, 34.267628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.697140, 35.185265, 34.436981>,  <41.498882, 35.387817, 34.719234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697140, 35.185265, 34.436981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166997, -0.741723, 0.649583,
		-0.852323, -0.439798, -0.283063,
		0.495640, -0.506384, -0.705632,
		41.845833, 35.033348, 34.225292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201923, 34.680347, 34.788921>,  <41.498882, 35.387817, 34.719234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201923, 34.680347, 34.788921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539894, 34.643661, 34.578136>,  <41.742676, 34.621651, 34.451668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539894, 34.643661, 34.578136>,  <41.201923, 34.680347, 34.788921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539894, 34.643661, 34.578136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219087, -0.839415, 0.497377,
		-0.487952, -0.535697, -0.689153,
		0.844928, -0.091712, -0.526958,
		41.793373, 34.616146, 34.420048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291306, 33.982616, 34.632385>,  <41.201923, 34.680347, 34.788921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291306, 33.982616, 34.632385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657036, 34.143742, 34.615673>,  <41.876476, 34.240417, 34.605648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657036, 34.143742, 34.615673>,  <41.291306, 33.982616, 34.632385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657036, 34.143742, 34.615673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372002, -0.794634, 0.479761,
		0.160056, -0.454201, -0.876404,
		0.914328, 0.402813, -0.041778,
		41.931335, 34.264584, 34.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752705, 33.362217, 34.456749>,  <41.291306, 33.982616, 34.632385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752705, 33.362217, 34.456749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975327, 33.655910, 34.612263>,  <42.108898, 33.832127, 34.705570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975327, 33.655910, 34.612263>,  <41.752705, 33.362217, 34.456749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975327, 33.655910, 34.612263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339733, -0.628173, 0.699986,
		0.758176, -0.257495, -0.599053,
		0.556552, 0.734231, 0.388786,
		42.142292, 33.876179, 34.728897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267250, 32.911255, 34.762268>,  <41.752705, 33.362217, 34.456749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267250, 32.911255, 34.762268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343533, 33.287796, 34.873619>,  <42.389301, 33.513721, 34.940430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343533, 33.287796, 34.873619>,  <42.267250, 32.911255, 34.762268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343533, 33.287796, 34.873619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414492, -0.334281, 0.846435,
		0.889847, -0.046034, -0.453930,
		0.190705, 0.941349, 0.278378,
		42.400745, 33.570202, 34.957134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042000, 32.937954, 34.945087>,  <42.267250, 32.911255, 34.762268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042000, 32.937954, 34.945087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784256, 33.189705, 35.118843>,  <42.629612, 33.340755, 35.223095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784256, 33.189705, 35.118843>,  <43.042000, 32.937954, 34.945087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784256, 33.189705, 35.118843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348897, -0.263520, 0.899349,
		0.680498, 0.731057, -0.049786,
		-0.644355, 0.629375, 0.434388,
		42.590950, 33.378517, 35.249161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493782, 33.439621, 35.311226>,  <43.042000, 32.937954, 34.945087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493782, 33.439621, 35.311226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123417, 33.412361, 35.459843>,  <42.901199, 33.396004, 35.549011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123417, 33.412361, 35.459843>,  <43.493782, 33.439621, 35.311226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123417, 33.412361, 35.459843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376899, -0.232286, 0.896655,
		0.025196, 0.970257, 0.240762,
		-0.925911, -0.068151, 0.371542,
		42.845642, 33.391914, 35.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773491, 32.803928, 35.356113>,  <43.493782, 33.439621, 35.311226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773491, 32.803928, 35.356113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992222, 33.138634, 35.367481>,  <44.123463, 33.339455, 35.374302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992222, 33.138634, 35.367481>,  <43.773491, 32.803928, 35.356113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992222, 33.138634, 35.367481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423085, 0.246880, 0.871808,
		0.722478, -0.488756, 0.489023,
		0.546831, 0.836760, 0.028420,
		44.156273, 33.389664, 35.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225945, 32.983582, 34.772133>,  <43.773491, 32.803928, 35.356113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225945, 32.983582, 34.772133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573311, 33.012825, 34.575966>,  <44.781731, 33.030373, 34.458267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573311, 33.012825, 34.575966>,  <44.225945, 32.983582, 34.772133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573311, 33.012825, 34.575966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492888, 0.019601, -0.869872,
		-0.053984, 0.997131, 0.053057,
		0.868417, 0.073110, -0.490416,
		44.833836, 33.034760, 34.428841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373241, 33.632805, 34.559166>,  <44.225945, 32.983582, 34.772133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373241, 33.632805, 34.559166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588646, 33.418736, 34.298828>,  <44.717888, 33.290295, 34.142624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588646, 33.418736, 34.298828>,  <44.373241, 33.632805, 34.559166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588646, 33.418736, 34.298828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461822, 0.458604, -0.759212,
		0.704789, 0.709417, -0.000192,
		0.538510, -0.535173, -0.650844,
		44.750198, 33.258183, 34.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622417, 34.133003, 34.102005>,  <44.373241, 33.632805, 34.559166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622417, 34.133003, 34.102005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596142, 33.770695, 33.934544>,  <44.580376, 33.553310, 33.834068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596142, 33.770695, 33.934544>,  <44.622417, 34.133003, 34.102005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596142, 33.770695, 33.934544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477509, 0.396934, -0.783855,
		0.876168, 0.148419, -0.458587,
		-0.065690, -0.905768, -0.418652,
		44.576435, 33.498966, 33.808949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574203, 34.289928, 33.405228>,  <44.622417, 34.133003, 34.102005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574203, 34.289928, 33.405228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502842, 33.896446, 33.396317>,  <44.460026, 33.660358, 33.390968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502842, 33.896446, 33.396317>,  <44.574203, 34.289928, 33.405228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502842, 33.896446, 33.396317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503695, 0.110756, -0.856753,
		0.845259, -0.141628, -0.515247,
		-0.178406, -0.983705, -0.022280,
		44.449322, 33.601334, 33.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817719, 34.043289, 32.846939>,  <44.574203, 34.289928, 33.405228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817719, 34.043289, 32.846939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568535, 33.740028, 32.924019>,  <44.419025, 33.558071, 32.970264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568535, 33.740028, 32.924019>,  <44.817719, 34.043289, 32.846939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568535, 33.740028, 32.924019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430715, 0.126806, -0.893535,
		0.652999, -0.639632, -0.405542,
		-0.622958, -0.758150, 0.192695,
		44.381649, 33.512585, 32.981827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808704, 33.614902, 32.209801>,  <44.817719, 34.043289, 32.846939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808704, 33.614902, 32.209801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480572, 33.510956, 32.413574>,  <44.283691, 33.448589, 32.535839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480572, 33.510956, 32.413574>,  <44.808704, 33.614902, 32.209801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480572, 33.510956, 32.413574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558778, 0.174616, -0.810726,
		0.121726, -0.949726, -0.288451,
		-0.820335, -0.259866, 0.509430,
		44.234470, 33.432995, 32.566402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537903, 33.083687, 31.895958>,  <44.808704, 33.614902, 32.209801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537903, 33.083687, 31.895958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231400, 33.241714, 32.098648>,  <44.047497, 33.336529, 32.220261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231400, 33.241714, 32.098648>,  <44.537903, 33.083687, 31.895958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231400, 33.241714, 32.098648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550928, 0.001863, -0.834551,
		-0.330648, -0.918650, 0.216226,
		-0.766258, 0.395068, 0.506726,
		44.001522, 33.360233, 32.250668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906418, 32.652451, 31.737295>,  <44.537903, 33.083687, 31.895958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906418, 32.652451, 31.737295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780449, 33.009796, 31.865496>,  <43.704868, 33.224205, 31.942415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780449, 33.009796, 31.865496>,  <43.906418, 32.652451, 31.737295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780449, 33.009796, 31.865496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707689, 0.003996, -0.706513,
		-0.632455, -0.449312, 0.630966,
		-0.314924, 0.893366, 0.320500,
		43.685970, 33.277805, 31.961645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241692, 32.739086, 31.450773>,  <43.906418, 32.652451, 31.737295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241692, 32.739086, 31.450773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276299, 33.110886, 31.594187>,  <43.297062, 33.333965, 31.680235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276299, 33.110886, 31.594187>,  <43.241692, 32.739086, 31.450773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276299, 33.110886, 31.594187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608119, 0.334333, -0.720009,
		-0.789117, -0.155734, 0.594173,
		0.086522, 0.929500, 0.358532,
		43.302254, 33.389736, 31.701746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567383, 33.024361, 31.465548>,  <43.241692, 32.739086, 31.450773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567383, 33.024361, 31.465548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799774, 33.349384, 31.446762>,  <42.939209, 33.544399, 31.435492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799774, 33.349384, 31.446762>,  <42.567383, 33.024361, 31.465548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799774, 33.349384, 31.446762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659591, 0.436228, -0.612082,
		-0.476868, 0.386583, 0.789399,
		0.580979, 0.812563, -0.046964,
		42.974068, 33.593155, 31.432673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143353, 33.637424, 31.618124>,  <42.567383, 33.024361, 31.465548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143353, 33.637424, 31.618124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466560, 33.727734, 31.400452>,  <42.660484, 33.781918, 31.269848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466560, 33.727734, 31.400452>,  <42.143353, 33.637424, 31.618124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466560, 33.727734, 31.400452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585016, 0.416800, -0.695726,
		0.069739, 0.880514, 0.468862,
		0.808018, 0.225773, -0.544182,
		42.708965, 33.795464, 31.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102051, 34.346577, 31.421471>,  <42.143353, 33.637424, 31.618124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102051, 34.346577, 31.421471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367634, 34.206451, 31.157215>,  <42.526985, 34.122375, 30.998663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367634, 34.206451, 31.157215>,  <42.102051, 34.346577, 31.421471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367634, 34.206451, 31.157215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490844, 0.462325, -0.738464,
		0.564120, 0.814579, 0.135017,
		0.663959, -0.350310, -0.660637,
		42.566822, 34.101357, 30.959024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256916, 34.922993, 31.118155>,  <42.102051, 34.346577, 31.421471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256916, 34.922993, 31.118155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359066, 34.617374, 30.881166>,  <42.420357, 34.434006, 30.738974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359066, 34.617374, 30.881166>,  <42.256916, 34.922993, 31.118155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359066, 34.617374, 30.881166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373484, 0.487267, -0.789355,
		0.891793, 0.422858, -0.160924,
		0.255372, -0.764043, -0.592472,
		42.435677, 34.388161, 30.703424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399609, 35.200161, 30.478170>,  <42.256916, 34.922993, 31.118155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399609, 35.200161, 30.478170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343731, 34.818604, 30.371916>,  <42.310204, 34.589668, 30.308163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343731, 34.818604, 30.371916>,  <42.399609, 35.200161, 30.478170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343731, 34.818604, 30.371916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561286, 0.297291, -0.772384,
		0.815747, 0.041199, -0.576940,
		-0.139697, -0.953898, -0.265639,
		42.301823, 34.532433, 30.292225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470818, 35.081524, 29.683153>,  <42.399609, 35.200161, 30.478170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470818, 35.081524, 29.683153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239319, 34.792015, 29.833464>,  <42.100418, 34.618309, 29.923651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239319, 34.792015, 29.833464>,  <42.470818, 35.081524, 29.683153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239319, 34.792015, 29.833464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716251, 0.230810, -0.658568,
		0.389920, -0.650293, -0.651983,
		-0.578746, -0.723772, 0.375775,
		42.065697, 34.574883, 29.946196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228523, 34.844753, 29.050261>,  <42.470818, 35.081524, 29.683153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228523, 34.844753, 29.050261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998451, 34.641602, 29.306768>,  <41.860409, 34.519711, 29.460672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998451, 34.641602, 29.306768>,  <42.228523, 34.844753, 29.050261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998451, 34.641602, 29.306768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813806, 0.434809, -0.385567,
		-0.083006, -0.743637, -0.663411,
		-0.575179, -0.507883, 0.641268,
		41.825897, 34.489235, 29.499149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687099, 34.454540, 28.710047>,  <42.228523, 34.844753, 29.050261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687099, 34.454540, 28.710047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538147, 34.503178, 29.078079>,  <41.448776, 34.532360, 29.298899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538147, 34.503178, 29.078079>,  <41.687099, 34.454540, 28.710047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538147, 34.503178, 29.078079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856931, 0.335631, -0.391178,
		-0.356373, -0.934113, -0.020785,
		-0.372380, 0.121594, 0.920080,
		41.426434, 34.539658, 29.354103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076805, 34.017483, 28.700569>,  <41.687099, 34.454540, 28.710047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076805, 34.017483, 28.700569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053371, 34.296688, 28.986042>,  <41.039310, 34.464211, 29.157326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053371, 34.296688, 28.986042>,  <41.076805, 34.017483, 28.700569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053371, 34.296688, 28.986042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820348, 0.373722, -0.432852,
		-0.568856, -0.610825, 0.550723,
		-0.058579, 0.698015, 0.713683,
		41.035797, 34.506092, 29.200148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415058, 34.023628, 28.954544>,  <41.076805, 34.017483, 28.700569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415058, 34.023628, 28.954544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574284, 34.379295, 29.044819>,  <40.669819, 34.592693, 29.098984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574284, 34.379295, 29.044819>,  <40.415058, 34.023628, 28.954544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574284, 34.379295, 29.044819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806456, 0.456442, -0.375886,
		-0.437236, -0.032379, 0.898764,
		0.398062, 0.889164, 0.225685,
		40.693703, 34.646046, 29.112524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838818, 34.463745, 29.179316>,  <40.415058, 34.023628, 28.954544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838818, 34.463745, 29.179316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133640, 34.712872, 29.074364>,  <40.310535, 34.862347, 29.011393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133640, 34.712872, 29.074364>,  <39.838818, 34.463745, 29.179316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133640, 34.712872, 29.074364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657903, 0.572418, -0.489387,
		-0.154608, 0.533328, 0.831659,
		0.737061, 0.622815, -0.262378,
		40.354759, 34.899715, 28.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.819004, 34.000355, 42.770443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441696, 33.874275, 42.728710>,  <39.215309, 33.798630, 42.703671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441696, 33.874275, 42.728710>,  <39.819004, 34.000355, 42.770443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441696, 33.874275, 42.728710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174478, -0.203229, -0.963460,
		0.282475, -0.927011, 0.246696,
		-0.943274, -0.315196, -0.104336,
		39.158714, 33.779716, 42.697411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824913, 33.295395, 42.383774>,  <39.819004, 34.000355, 42.770443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824913, 33.295395, 42.383774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469578, 33.467384, 42.319294>,  <39.256378, 33.570580, 42.280605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469578, 33.467384, 42.319294>,  <39.824913, 33.295395, 42.383774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469578, 33.467384, 42.319294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098146, -0.165143, -0.981374,
		-0.448586, -0.887609, 0.104502,
		-0.888334, 0.429974, -0.161196,
		39.203079, 33.596378, 42.270935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506481, 32.879299, 41.867695>,  <39.824913, 33.295395, 42.383774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506481, 32.879299, 41.867695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265293, 33.195435, 41.824276>,  <39.120579, 33.385117, 41.798225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265293, 33.195435, 41.824276>,  <39.506481, 32.879299, 41.867695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265293, 33.195435, 41.824276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044988, -0.102163, -0.993750,
		-0.796492, -0.604087, 0.026046,
		-0.602973, 0.790342, -0.108549,
		39.084400, 33.432537, 41.791710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023769, 32.651268, 41.308807>,  <39.506481, 32.879299, 41.867695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023769, 32.651268, 41.308807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012417, 33.049267, 41.347126>,  <39.005604, 33.288067, 41.370117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012417, 33.049267, 41.347126>,  <39.023769, 32.651268, 41.308807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012417, 33.049267, 41.347126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118399, 0.091819, -0.988712,
		-0.992560, -0.039406, 0.115200,
		-0.028384, 0.994996, 0.095801,
		39.003902, 33.347767, 41.375866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461376, 32.757023, 40.935020>,  <39.023769, 32.651268, 41.308807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461376, 32.757023, 40.935020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642700, 33.112011, 40.968250>,  <38.751495, 33.325005, 40.988190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642700, 33.112011, 40.968250>,  <38.461376, 32.757023, 40.935020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642700, 33.112011, 40.968250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157632, 0.171551, -0.972483,
		-0.877302, 0.427744, 0.217660,
		0.453313, 0.887471, 0.083076,
		38.778694, 33.378254, 40.993172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078777, 33.173046, 40.464943>,  <38.461376, 32.757023, 40.935020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078777, 33.173046, 40.464943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419147, 33.372280, 40.531681>,  <38.623371, 33.491821, 40.571724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419147, 33.372280, 40.531681>,  <38.078777, 33.173046, 40.464943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419147, 33.372280, 40.531681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027340, 0.359190, -0.932864,
		-0.524575, 0.789236, 0.319261,
		0.850925, 0.498086, 0.166844,
		38.674423, 33.521706, 40.581734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859753, 33.875214, 40.278950>,  <38.078777, 33.173046, 40.464943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859753, 33.875214, 40.278950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255180, 33.822308, 40.250015>,  <38.492439, 33.790565, 40.232655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255180, 33.822308, 40.250015>,  <37.859753, 33.875214, 40.278950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255180, 33.822308, 40.250015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033544, 0.274811, -0.960913,
		0.146970, 0.952358, 0.267233,
		0.988572, -0.132262, -0.072335,
		38.551750, 33.782631, 40.228313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074028, 34.429913, 40.044048>,  <37.859753, 33.875214, 40.278950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074028, 34.429913, 40.044048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380199, 34.189693, 39.951553>,  <38.563900, 34.045563, 39.896057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380199, 34.189693, 39.951553>,  <38.074028, 34.429913, 40.044048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380199, 34.189693, 39.951553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020166, 0.381537, -0.924134,
		0.643208, 0.702693, 0.304149,
		0.765426, -0.600544, -0.231237,
		38.609829, 34.009529, 39.882183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509079, 34.870911, 39.915634>,  <38.074028, 34.429913, 40.044048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509079, 34.870911, 39.915634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633137, 34.533253, 39.740719>,  <38.707569, 34.330658, 39.635769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633137, 34.533253, 39.740719>,  <38.509079, 34.870911, 39.915634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633137, 34.533253, 39.740719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042606, 0.471854, -0.880647,
		0.949735, 0.254495, 0.182308,
		0.310143, -0.844148, -0.437293,
		38.726181, 34.280006, 39.609531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031582, 35.053181, 39.525089>,  <38.509079, 34.870911, 39.915634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031582, 35.053181, 39.525089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888527, 34.718693, 39.358803>,  <38.802692, 34.517998, 39.259029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888527, 34.718693, 39.358803>,  <39.031582, 35.053181, 39.525089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888527, 34.718693, 39.358803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037898, 0.431801, -0.901172,
		0.933089, -0.338052, -0.122739,
		-0.357642, -0.836223, -0.415721,
		38.781235, 34.467827, 39.234085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463112, 34.837814, 38.916386>,  <39.031582, 35.053181, 39.525089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463112, 34.837814, 38.916386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107941, 34.664207, 38.855434>,  <38.894840, 34.560043, 38.818863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107941, 34.664207, 38.855434>,  <39.463112, 34.837814, 38.916386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107941, 34.664207, 38.855434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087889, 0.485228, -0.869960,
		0.451512, -0.759068, -0.468992,
		-0.887926, -0.434016, -0.152372,
		38.841564, 34.534000, 38.809723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517525, 34.665829, 38.177303>,  <39.463112, 34.837814, 38.916386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517525, 34.665829, 38.177303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136971, 34.603088, 38.283333>,  <38.908638, 34.565445, 38.346951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136971, 34.603088, 38.283333>,  <39.517525, 34.665829, 38.177303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136971, 34.603088, 38.283333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306015, 0.383679, -0.871289,
		0.034963, -0.910048, -0.413026,
		-0.951384, -0.156855, 0.265074,
		38.851555, 34.556030, 38.362854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107796, 34.182999, 37.676003>,  <39.517525, 34.665829, 38.177303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107796, 34.182999, 37.676003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884224, 34.442238, 37.882908>,  <38.750080, 34.597782, 38.007050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884224, 34.442238, 37.882908>,  <39.107796, 34.182999, 37.676003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884224, 34.442238, 37.882908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289586, 0.431957, -0.854139,
		-0.777002, -0.627199, -0.053755,
		-0.558934, 0.648101, 0.517260,
		38.716545, 34.636669, 38.038086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078773, 33.380672, 37.788559>,  <39.107796, 34.182999, 37.676003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078773, 33.380672, 37.788559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102459, 32.998993, 37.671253>,  <39.116669, 32.769985, 37.600868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102459, 32.998993, 37.671253>,  <39.078773, 33.380672, 37.788559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102459, 32.998993, 37.671253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539415, -0.277782, 0.794902,
		-0.839955, 0.111122, -0.531156,
		0.059214, -0.954196, -0.293265,
		39.120224, 32.712734, 37.583275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386539, 33.049042, 37.797909>,  <39.078773, 33.380672, 37.788559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386539, 33.049042, 37.797909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659531, 32.759243, 37.836536>,  <38.823326, 32.585361, 37.859715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659531, 32.759243, 37.836536>,  <38.386539, 33.049042, 37.797909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659531, 32.759243, 37.836536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647550, -0.538063, 0.539599,
		-0.338979, -0.430797, -0.836366,
		0.682475, -0.724501, 0.096570,
		38.864273, 32.541893, 37.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087677, 32.404736, 37.634861>,  <38.386539, 33.049042, 37.797909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087677, 32.404736, 37.634861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398937, 32.276546, 37.850929>,  <38.585693, 32.199631, 37.980572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398937, 32.276546, 37.850929>,  <38.087677, 32.404736, 37.634861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398937, 32.276546, 37.850929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607029, -0.604546, 0.515791,
		0.161259, -0.729260, -0.664963,
		0.778146, -0.320476, 0.540170,
		38.632381, 32.180405, 38.012981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011494, 31.727064, 37.732243>,  <38.087677, 32.404736, 37.634861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011494, 31.727064, 37.732243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296425, 31.770374, 38.009621>,  <38.467384, 31.796360, 38.176048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296425, 31.770374, 38.009621>,  <38.011494, 31.727064, 37.732243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296425, 31.770374, 38.009621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444408, -0.695147, 0.565042,
		0.543228, -0.710667, -0.447051,
		0.712323, 0.108274, 0.693450,
		38.510120, 31.802856, 38.217655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160946, 31.056150, 37.979828>,  <38.011494, 31.727064, 37.732243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160946, 31.056150, 37.979828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257504, 31.318241, 38.266159>,  <38.315437, 31.475496, 38.437958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257504, 31.318241, 38.266159>,  <38.160946, 31.056150, 37.979828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257504, 31.318241, 38.266159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566944, -0.503443, 0.652012,
		0.787593, -0.563225, 0.249948,
		0.241395, 0.655227, 0.715825,
		38.329922, 31.514809, 38.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367775, 30.649305, 38.562012>,  <38.160946, 31.056150, 37.979828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367775, 30.649305, 38.562012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325703, 31.003231, 38.743580>,  <38.300457, 31.215586, 38.852520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325703, 31.003231, 38.743580>,  <38.367775, 30.649305, 38.562012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325703, 31.003231, 38.743580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389058, -0.456681, 0.800048,
		0.915189, -0.092447, 0.392280,
		-0.105185, 0.884814, 0.453917,
		38.294147, 31.268675, 38.879753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633858, 30.524014, 39.287132>,  <38.367775, 30.649305, 38.562012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633858, 30.524014, 39.287132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385502, 30.837265, 39.300995>,  <38.236488, 31.025217, 39.309315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385502, 30.837265, 39.300995>,  <38.633858, 30.524014, 39.287132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385502, 30.837265, 39.300995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382066, -0.340930, 0.858948,
		0.684486, 0.520070, 0.510888,
		-0.620890, 0.783131, 0.034660,
		38.199234, 31.072205, 39.311394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653374, 30.830093, 40.055180>,  <38.633858, 30.524014, 39.287132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653374, 30.830093, 40.055180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319595, 30.981234, 39.894714>,  <38.119328, 31.071917, 39.798435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319595, 30.981234, 39.894714>,  <38.653374, 30.830093, 40.055180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319595, 30.981234, 39.894714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487657, -0.167201, 0.856875,
		0.256694, 0.910645, 0.323781,
		-0.834445, 0.377849, -0.401163,
		38.069263, 31.094587, 39.774364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393894, 31.191246, 40.590611>,  <38.653374, 30.830093, 40.055180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393894, 31.191246, 40.590611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096458, 31.148766, 40.326553>,  <37.917995, 31.123278, 40.168118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096458, 31.148766, 40.326553>,  <38.393894, 31.191246, 40.590611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096458, 31.148766, 40.326553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651611, -0.106259, 0.751074,
		-0.149913, 0.988651, 0.009810,
		-0.743592, -0.106203, -0.660146,
		37.873383, 31.116905, 40.128510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932922, 31.663212, 40.845425>,  <38.393894, 31.191246, 40.590611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932922, 31.663212, 40.845425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741085, 31.399584, 40.613697>,  <37.625980, 31.241407, 40.474659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741085, 31.399584, 40.613697>,  <37.932922, 31.663212, 40.845425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741085, 31.399584, 40.613697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743310, -0.045731, 0.667382,
		-0.466345, 0.750689, -0.467961,
		-0.479596, -0.659071, -0.579321,
		37.597206, 31.201862, 40.439899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249157, 31.918049, 40.816284>,  <37.932922, 31.663212, 40.845425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249157, 31.918049, 40.816284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246563, 31.525146, 40.741306>,  <37.245007, 31.289406, 40.696320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246563, 31.525146, 40.741306>,  <37.249157, 31.918049, 40.816284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246563, 31.525146, 40.741306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664422, -0.135854, 0.734906,
		-0.747329, 0.129311, -0.651750,
		-0.006489, -0.982254, -0.187445,
		37.244617, 31.230471, 40.685074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546337, 31.710501, 40.881184>,  <37.249157, 31.918049, 40.816284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546337, 31.710501, 40.881184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743961, 31.363205, 40.899364>,  <36.862537, 31.154827, 40.910275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743961, 31.363205, 40.899364>,  <36.546337, 31.710501, 40.881184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743961, 31.363205, 40.899364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696598, -0.364025, 0.618253,
		-0.520246, -0.337117, -0.784663,
		0.494061, -0.868238, 0.045452,
		36.892181, 31.102734, 40.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943649, 31.229269, 40.773327>,  <36.546337, 31.710501, 40.881184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943649, 31.229269, 40.773327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249962, 31.054489, 40.962074>,  <36.433750, 30.949621, 41.075321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249962, 31.054489, 40.962074>,  <35.943649, 31.229269, 40.773327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249962, 31.054489, 40.962074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618913, -0.301387, 0.725336,
		-0.174720, -0.847492, -0.501229,
		0.765780, -0.436948, 0.471865,
		36.479694, 30.923405, 41.103634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623859, 30.736420, 41.036320>,  <35.943649, 31.229269, 40.773327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623859, 30.736420, 41.036320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967648, 30.715916, 41.239765>,  <36.173920, 30.703613, 41.361832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967648, 30.715916, 41.239765>,  <35.623859, 30.736420, 41.036320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967648, 30.715916, 41.239765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487836, -0.379550, 0.786103,
		0.152752, -0.923750, -0.351216,
		0.859467, -0.051257, 0.508616,
		36.225487, 30.700539, 41.392349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652546, 30.233536, 41.458984>,  <35.623859, 30.736420, 41.036320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652546, 30.233536, 41.458984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922489, 30.453018, 41.656361>,  <36.084457, 30.584707, 41.774788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922489, 30.453018, 41.656361>,  <35.652546, 30.233536, 41.458984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922489, 30.453018, 41.656361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586521, -0.006963, 0.809904,
		0.447836, -0.835986, 0.317129,
		0.674860, 0.548706, 0.493442,
		36.124947, 30.617630, 41.804394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452614, 29.554218, 41.617615>,  <35.652546, 30.233536, 41.458984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452614, 29.554218, 41.617615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119305, 29.346819, 41.540859>,  <34.919319, 29.222380, 41.494808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119305, 29.346819, 41.540859>,  <35.452614, 29.554218, 41.617615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119305, 29.346819, 41.540859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007240, 0.336811, -0.941544,
		0.552819, -0.785950, -0.276901,
		-0.833269, -0.518499, -0.191886,
		34.869324, 29.191269, 41.483292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538239, 29.432068, 40.933331>,  <35.452614, 29.554218, 41.617615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538239, 29.432068, 40.933331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153877, 29.338531, 40.992649>,  <34.923260, 29.282410, 41.028240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153877, 29.338531, 40.992649>,  <35.538239, 29.432068, 40.933331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153877, 29.338531, 40.992649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234191, 0.400553, -0.885840,
		0.147742, -0.885933, -0.439654,
		-0.960899, -0.233839, 0.148299,
		34.865608, 29.268379, 41.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362846, 29.197613, 40.359837>,  <35.538239, 29.432068, 40.933331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362846, 29.197613, 40.359837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019066, 29.316439, 40.526260>,  <34.812798, 29.387735, 40.626114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019066, 29.316439, 40.526260>,  <35.362846, 29.197613, 40.359837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019066, 29.316439, 40.526260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227892, 0.505879, -0.831957,
		-0.457620, -0.809838, -0.367077,
		-0.859447, 0.297067, 0.416056,
		34.761230, 29.405560, 40.651077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815315, 29.108408, 39.822014>,  <35.362846, 29.197613, 40.359837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815315, 29.108408, 39.822014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688488, 29.367525, 40.099094>,  <34.612392, 29.522995, 40.265343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688488, 29.367525, 40.099094>,  <34.815315, 29.108408, 39.822014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688488, 29.367525, 40.099094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368912, 0.588625, -0.719322,
		-0.873712, -0.483619, 0.052345,
		-0.317066, 0.647791, 0.692702,
		34.593369, 29.561863, 40.306904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060154, 29.146191, 39.718090>,  <34.815315, 29.108408, 39.822014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060154, 29.146191, 39.718090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149773, 29.467136, 39.939365>,  <34.203545, 29.659704, 40.072128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149773, 29.467136, 39.939365>,  <34.060154, 29.146191, 39.718090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149773, 29.467136, 39.939365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567797, 0.568798, -0.595042,
		-0.792091, -0.180777, 0.583019,
		0.224050, 0.802364, 0.553184,
		34.216988, 29.707846, 40.105320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395908, 29.531416, 39.992451>,  <34.060154, 29.146191, 39.718090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395908, 29.531416, 39.992451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686310, 29.804310, 39.957851>,  <33.860550, 29.968046, 39.937092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686310, 29.804310, 39.957851>,  <33.395908, 29.531416, 39.992451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686310, 29.804310, 39.957851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562628, 0.516927, -0.645164,
		-0.395440, 0.517054, 0.759132,
		0.726001, 0.682233, -0.086495,
		33.904110, 30.008980, 39.931904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015789, 30.126997, 39.873535>,  <33.395908, 29.531416, 39.992451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015789, 30.126997, 39.873535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395924, 30.209972, 39.780735>,  <33.624004, 30.259758, 39.725056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395924, 30.209972, 39.780735>,  <33.015789, 30.126997, 39.873535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395924, 30.209972, 39.780735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305826, 0.484291, -0.819715,
		-0.057682, 0.849960, 0.523680,
		0.950339, 0.207438, -0.232005,
		33.681026, 30.272203, 39.711132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890244, 30.849697, 39.724857>,  <33.015789, 30.126997, 39.873535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890244, 30.849697, 39.724857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237610, 30.721304, 39.573685>,  <33.446030, 30.644268, 39.482983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237610, 30.721304, 39.573685>,  <32.890244, 30.849697, 39.724857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237610, 30.721304, 39.573685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209327, 0.453623, -0.866261,
		0.449491, 0.831383, 0.326742,
		0.868412, -0.320981, -0.377930,
		33.498135, 30.625010, 39.460304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218430, 31.445372, 39.512604>,  <32.890244, 30.849697, 39.724857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218430, 31.445372, 39.512604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380516, 31.132620, 39.323093>,  <33.477768, 30.944969, 39.209389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380516, 31.132620, 39.323093>,  <33.218430, 31.445372, 39.512604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380516, 31.132620, 39.323093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129428, 0.463946, -0.876358,
		0.905011, 0.416437, 0.086803,
		0.405220, -0.781879, -0.473775,
		33.502083, 30.898056, 39.180962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690872, 31.739695, 39.038910>,  <33.218430, 31.445372, 39.512604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690872, 31.739695, 39.038910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647026, 31.379311, 38.870975>,  <33.620716, 31.163080, 38.770214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647026, 31.379311, 38.870975>,  <33.690872, 31.739695, 39.038910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647026, 31.379311, 38.870975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040643, 0.426087, -0.903769,
		0.993143, -0.082006, -0.083324,
		-0.109617, -0.900958, -0.419832,
		33.614140, 31.109024, 38.745026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208275, 31.688238, 38.619484>,  <33.690872, 31.739695, 39.038910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208275, 31.688238, 38.619484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943764, 31.422405, 38.480324>,  <33.785057, 31.262905, 38.396828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943764, 31.422405, 38.480324>,  <34.208275, 31.688238, 38.619484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943764, 31.422405, 38.480324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029097, 0.440713, -0.897176,
		0.749576, -0.603407, -0.272097,
		-0.661279, -0.664584, -0.347905,
		33.745380, 31.223030, 38.375954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428349, 31.469883, 38.011566>,  <34.208275, 31.688238, 38.619484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428349, 31.469883, 38.011566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031071, 31.426107, 37.995586>,  <33.792706, 31.399841, 37.985996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031071, 31.426107, 37.995586>,  <34.428349, 31.469883, 38.011566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031071, 31.426107, 37.995586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025411, 0.538150, -0.842466,
		0.113700, -0.835714, -0.537266,
		-0.993190, -0.109441, -0.039951,
		33.733112, 31.393274, 37.983601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.971680, 26.751310, 44.516552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654499, 26.969769, 44.624592>,  <35.464191, 27.100843, 44.689415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654499, 26.969769, 44.624592>,  <35.971680, 26.751310, 44.516552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654499, 26.969769, 44.624592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174513, 0.221153, -0.959498,
		-0.583758, -0.807971, -0.080054,
		-0.792951, 0.546145, 0.270102,
		35.416615, 27.133612, 44.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626541, 26.643532, 44.039669>,  <35.971680, 26.751310, 44.516552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626541, 26.643532, 44.039669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438679, 26.966827, 44.181755>,  <35.325962, 27.160805, 44.267006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438679, 26.966827, 44.181755>,  <35.626541, 26.643532, 44.039669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438679, 26.966827, 44.181755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218951, 0.283147, -0.933750,
		-0.855271, -0.516311, 0.043984,
		-0.469652, 0.808239, 0.355214,
		35.297783, 27.209299, 44.288319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037674, 26.670437, 43.718067>,  <35.626541, 26.643532, 44.039669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037674, 26.670437, 43.718067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076668, 27.051565, 43.833046>,  <35.100063, 27.280243, 43.902035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076668, 27.051565, 43.833046>,  <35.037674, 26.670437, 43.718067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076668, 27.051565, 43.833046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461609, 0.299167, -0.835115,
		-0.881711, -0.051279, 0.468995,
		0.097483, 0.952822, 0.287450,
		35.105911, 27.337412, 43.919281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402271, 26.960255, 43.385227>,  <35.037674, 26.670437, 43.718067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402271, 26.960255, 43.385227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629246, 27.276560, 43.477058>,  <34.765430, 27.466343, 43.532158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629246, 27.276560, 43.477058>,  <34.402271, 26.960255, 43.385227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629246, 27.276560, 43.477058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225805, 0.417559, -0.880146,
		-0.791849, 0.447589, 0.415498,
		0.567439, 0.790764, 0.229576,
		34.799477, 27.513788, 43.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973717, 27.606359, 43.329781>,  <34.402271, 26.960255, 43.385227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973717, 27.606359, 43.329781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347099, 27.745749, 43.295784>,  <34.571129, 27.829382, 43.275387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347099, 27.745749, 43.295784>,  <33.973717, 27.606359, 43.329781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347099, 27.745749, 43.295784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292589, 0.602687, -0.742401,
		-0.207479, 0.717869, 0.664542,
		0.933458, 0.348470, -0.084995,
		34.627136, 27.850290, 43.270287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950115, 28.305346, 43.258080>,  <33.973717, 27.606359, 43.329781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950115, 28.305346, 43.258080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305470, 28.238684, 43.086971>,  <34.518684, 28.198687, 42.984306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305470, 28.238684, 43.086971>,  <33.950115, 28.305346, 43.258080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305470, 28.238684, 43.086971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273390, 0.556503, -0.784578,
		0.368810, 0.813960, 0.448831,
		0.888390, -0.166654, -0.427772,
		34.571987, 28.188688, 42.958641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106564, 28.929380, 42.941803>,  <33.950115, 28.305346, 43.258080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106564, 28.929380, 42.941803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376431, 28.704502, 42.750488>,  <34.538353, 28.569574, 42.635700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376431, 28.704502, 42.750488>,  <34.106564, 28.929380, 42.941803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376431, 28.704502, 42.750488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110379, 0.563844, -0.818472,
		0.729820, 0.604991, 0.318354,
		0.674670, -0.562197, -0.478283,
		34.578831, 28.535843, 42.607002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689690, 29.308468, 42.734093>,  <34.106564, 28.929380, 42.941803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689690, 29.308468, 42.734093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680149, 28.992064, 42.489559>,  <34.674423, 28.802221, 42.342838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680149, 28.992064, 42.489559>,  <34.689690, 29.308468, 42.734093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680149, 28.992064, 42.489559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067924, 0.608816, -0.790398,
		0.997405, -0.060379, 0.039205,
		-0.023855, -0.791010, -0.611338,
		34.672993, 28.754761, 42.306156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930786, 29.600620, 42.098248>,  <34.689690, 29.308468, 42.734093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930786, 29.600620, 42.098248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.792709, 29.246645, 41.973206>,  <34.709862, 29.034260, 41.898178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.792709, 29.246645, 41.973206>,  <34.930786, 29.600620, 42.098248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792709, 29.246645, 41.973206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028349, 0.342762, -0.938994,
		0.938103, -0.315273, -0.143407,
		-0.345194, -0.884939, -0.312609,
		34.689152, 28.981163, 41.879421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547985, 30.058777, 42.161289>,  <34.930786, 29.600620, 42.098248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547985, 30.058777, 42.161289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.788605, 30.376373, 42.196442>,  <35.932976, 30.566931, 42.217533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.788605, 30.376373, 42.196442>,  <35.547985, 30.058777, 42.161289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788605, 30.376373, 42.196442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370869, 0.180136, 0.911048,
		0.707531, -0.580630, 0.402826,
		0.601545, 0.793990, 0.087886,
		35.969067, 30.614571, 42.222809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086777, 30.006439, 42.705582>,  <35.547985, 30.058777, 42.161289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086777, 30.006439, 42.705582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022057, 30.395634, 42.639713>,  <35.983223, 30.629150, 42.600193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022057, 30.395634, 42.639713>,  <36.086777, 30.006439, 42.705582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022057, 30.395634, 42.639713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241927, 0.122670, 0.962509,
		0.956709, 0.195573, 0.215544,
		-0.161800, 0.972987, -0.164674,
		35.973518, 30.687531, 42.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440144, 30.366121, 43.294872>,  <36.086777, 30.006439, 42.705582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440144, 30.366121, 43.294872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227062, 30.666834, 43.139408>,  <36.099213, 30.847261, 43.046131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227062, 30.666834, 43.139408>,  <36.440144, 30.366121, 43.294872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227062, 30.666834, 43.139408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426236, 0.158417, 0.890633,
		0.731129, 0.640103, 0.236046,
		-0.532703, 0.751779, -0.388659,
		36.067253, 30.892368, 43.022812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726341, 30.958920, 43.599213>,  <36.440144, 30.366121, 43.294872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726341, 30.958920, 43.599213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343185, 31.010721, 43.496708>,  <36.113293, 31.041801, 43.435204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343185, 31.010721, 43.496708>,  <36.726341, 30.958920, 43.599213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343185, 31.010721, 43.496708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219195, 0.246658, 0.943988,
		0.185457, 0.960411, -0.207886,
		-0.957893, 0.129502, -0.256262,
		36.055817, 31.049572, 43.419830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454590, 31.387220, 44.148659>,  <36.726341, 30.958920, 43.599213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454590, 31.387220, 44.148659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118965, 31.254114, 43.976501>,  <35.917591, 31.174250, 43.873207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118965, 31.254114, 43.976501>,  <36.454590, 31.387220, 44.148659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118965, 31.254114, 43.976501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492017, 0.126560, 0.861337,
		-0.232152, 0.934478, -0.269918,
		-0.839062, -0.332766, -0.430398,
		35.867249, 31.154284, 43.847382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950546, 31.836622, 44.458752>,  <36.454590, 31.387220, 44.148659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950546, 31.836622, 44.458752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746513, 31.535255, 44.292774>,  <35.624092, 31.354435, 44.193188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746513, 31.535255, 44.292774>,  <35.950546, 31.836622, 44.458752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746513, 31.535255, 44.292774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540324, -0.094676, 0.836114,
		-0.669225, 0.650694, -0.358796,
		-0.510085, -0.753415, -0.414945,
		35.593487, 31.309231, 44.168289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303482, 32.007626, 44.616177>,  <35.950546, 31.836622, 44.458752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303482, 32.007626, 44.616177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353191, 31.614969, 44.558304>,  <35.383018, 31.379375, 44.523582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353191, 31.614969, 44.558304>,  <35.303482, 32.007626, 44.616177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353191, 31.614969, 44.558304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496707, -0.187769, 0.847364,
		-0.858975, -0.033441, -0.510924,
		0.124273, -0.981644, -0.144679,
		35.390472, 31.320477, 44.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672977, 31.741785, 44.817677>,  <35.303482, 32.007626, 44.616177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672977, 31.741785, 44.817677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930798, 31.435970, 44.820221>,  <35.085491, 31.252481, 44.821747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930798, 31.435970, 44.820221>,  <34.672977, 31.741785, 44.817677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930798, 31.435970, 44.820221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198907, -0.159642, 0.966928,
		-0.738235, -0.624499, -0.254969,
		0.644550, -0.764536, 0.006364,
		35.124161, 31.206610, 44.822132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367310, 31.220415, 45.275749>,  <34.672977, 31.741785, 44.817677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367310, 31.220415, 45.275749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750172, 31.106709, 45.253643>,  <34.979889, 31.038485, 45.240379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750172, 31.106709, 45.253643>,  <34.367310, 31.220415, 45.275749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750172, 31.106709, 45.253643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025699, -0.273474, 0.961536,
		-0.288458, -0.918912, -0.269061,
		0.957148, -0.284277, -0.055270,
		35.037315, 31.021429, 45.237064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457165, 30.572472, 45.701347>,  <34.367310, 31.220415, 45.275749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457165, 30.572472, 45.701347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823563, 30.727852, 45.661213>,  <35.043400, 30.821079, 45.637131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823563, 30.727852, 45.661213>,  <34.457165, 30.572472, 45.701347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823563, 30.727852, 45.661213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226693, -0.294774, 0.928288,
		0.331015, -0.873050, -0.358069,
		0.915991, 0.388449, -0.100339,
		35.098358, 30.844387, 45.631111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072308, 30.096092, 46.026604>,  <34.457165, 30.572472, 45.701347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072308, 30.096092, 46.026604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184021, 30.479935, 46.040199>,  <35.251049, 30.710239, 46.048355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184021, 30.479935, 46.040199>,  <35.072308, 30.096092, 46.026604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184021, 30.479935, 46.040199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344617, -0.133208, 0.929244,
		0.896235, -0.247815, -0.367900,
		0.279288, 0.959606, 0.033984,
		35.267807, 30.767817, 46.050396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796669, 29.973248, 46.225254>,  <35.072308, 30.096092, 46.026604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796669, 29.973248, 46.225254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713196, 30.356083, 46.305687>,  <35.663113, 30.585785, 46.353947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713196, 30.356083, 46.305687>,  <35.796669, 29.973248, 46.225254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713196, 30.356083, 46.305687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464042, -0.084084, 0.881813,
		0.860881, 0.277329, -0.426583,
		-0.208684, 0.957088, 0.201079,
		35.650589, 30.643209, 46.366009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420410, 30.213921, 46.430004>,  <35.796669, 29.973248, 46.225254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420410, 30.213921, 46.430004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157814, 30.472553, 46.585419>,  <36.000256, 30.627731, 46.678665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157814, 30.472553, 46.585419>,  <36.420410, 30.213921, 46.430004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157814, 30.472553, 46.585419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553568, 0.063051, 0.830414,
		0.512431, 0.760237, -0.399317,
		-0.656489, 0.646579, 0.388533,
		35.960869, 30.666527, 46.701977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742168, 30.841801, 46.547333>,  <36.420410, 30.213921, 46.430004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742168, 30.841801, 46.547333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419994, 30.859718, 46.783730>,  <36.226692, 30.870468, 46.925568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419994, 30.859718, 46.783730>,  <36.742168, 30.841801, 46.547333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419994, 30.859718, 46.783730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568902, 0.338076, 0.749703,
		-0.166218, 0.940052, -0.297781,
		-0.805433, 0.044794, 0.590992,
		36.178364, 30.873156, 46.961029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.472778, 34.070724, 47.828342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761990, 33.795589, 47.853989>,  <32.935516, 33.630508, 47.869377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761990, 33.795589, 47.853989>,  <32.472778, 34.070724, 47.828342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761990, 33.795589, 47.853989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273110, 0.199355, -0.941099,
		0.634541, 0.697952, 0.331995,
		0.723027, -0.687837, 0.064119,
		32.978897, 33.589237, 47.873226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971653, 34.342930, 47.542274>,  <32.472778, 34.070724, 47.828342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971653, 34.342930, 47.542274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090691, 33.961201, 47.531708>,  <33.162113, 33.732162, 47.525368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090691, 33.961201, 47.531708>,  <32.971653, 34.342930, 47.542274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090691, 33.961201, 47.531708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326071, 0.127606, -0.936693,
		0.897282, 0.270144, 0.349153,
		0.297596, -0.954326, -0.026413,
		33.179970, 33.674904, 47.523785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652565, 34.279575, 47.221004>,  <32.971653, 34.342930, 47.542274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652565, 34.279575, 47.221004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511108, 33.908405, 47.173870>,  <33.426235, 33.685703, 47.145592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511108, 33.908405, 47.173870>,  <33.652565, 34.279575, 47.221004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511108, 33.908405, 47.173870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268873, 0.019813, -0.962972,
		0.895903, -0.372233, 0.242487,
		-0.353645, -0.927928, -0.117834,
		33.405014, 33.630028, 47.138519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075199, 33.839787, 46.798824>,  <33.652565, 34.279575, 47.221004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075199, 33.839787, 46.798824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736069, 33.631153, 46.760578>,  <33.532589, 33.505974, 46.737633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736069, 33.631153, 46.760578>,  <34.075199, 33.839787, 46.798824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736069, 33.631153, 46.760578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111355, 0.001167, -0.993780,
		0.518453, -0.853198, 0.057092,
		-0.847825, -0.521586, -0.095612,
		33.481720, 33.474678, 46.731895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266087, 33.351463, 46.424831>,  <34.075199, 33.839787, 46.798824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266087, 33.351463, 46.424831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870342, 33.374222, 46.371262>,  <33.632896, 33.387875, 46.339119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870342, 33.374222, 46.371262>,  <34.266087, 33.351463, 46.424831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870342, 33.374222, 46.371262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125691, -0.129536, -0.983576,
		-0.073306, -0.989941, 0.121007,
		-0.989357, 0.056892, -0.133923,
		33.573536, 33.391289, 46.331085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047249, 32.675362, 46.057476>,  <34.266087, 33.351463, 46.424831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047249, 32.675362, 46.057476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750080, 32.938255, 46.006699>,  <33.571777, 33.095989, 45.976234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750080, 32.938255, 46.006699>,  <34.047249, 32.675362, 46.057476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750080, 32.938255, 46.006699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027632, -0.159367, -0.986833,
		-0.668809, -0.736646, 0.100236,
		-0.742921, 0.657233, -0.126942,
		33.527203, 33.135426, 45.968616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751022, 32.427078, 45.516174>,  <34.047249, 32.675362, 46.057476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751022, 32.427078, 45.516174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648186, 32.813236, 45.533722>,  <33.586483, 33.044930, 45.544250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648186, 32.813236, 45.533722>,  <33.751022, 32.427078, 45.516174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648186, 32.813236, 45.533722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043600, 0.056936, -0.997425,
		-0.965403, -0.254518, -0.056729,
		-0.257092, 0.965391, 0.043870,
		33.571056, 33.102852, 45.546883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282043, 32.441994, 45.077534>,  <33.751022, 32.427078, 45.516174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282043, 32.441994, 45.077534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385757, 32.826714, 45.112675>,  <33.447987, 33.057545, 45.133759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385757, 32.826714, 45.112675>,  <33.282043, 32.441994, 45.077534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385757, 32.826714, 45.112675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139950, 0.127418, -0.981926,
		-0.955607, 0.242303, 0.167641,
		0.259284, 0.961797, 0.087851,
		33.463543, 33.115253, 45.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780594, 32.850422, 44.698143>,  <33.282043, 32.441994, 45.077534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780594, 32.850422, 44.698143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085907, 33.108711, 44.706573>,  <33.269093, 33.263687, 44.711632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085907, 33.108711, 44.706573>,  <32.780594, 32.850422, 44.698143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085907, 33.108711, 44.706573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089430, 0.137907, -0.986400,
		-0.639850, 0.751013, 0.163009,
		0.763279, 0.645725, 0.021077,
		33.314892, 33.302429, 44.712898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489426, 33.351097, 44.347481>,  <32.780594, 32.850422, 44.698143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489426, 33.351097, 44.347481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873150, 33.463161, 44.333382>,  <33.103382, 33.530399, 44.324924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873150, 33.463161, 44.333382>,  <32.489426, 33.351097, 44.347481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873150, 33.463161, 44.333382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078612, 0.145105, -0.986288,
		-0.271204, 0.948923, 0.161225,
		0.959306, 0.280160, -0.035244,
		33.160942, 33.547211, 44.322807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581085, 34.002731, 43.868900>,  <32.489426, 33.351097, 44.347481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581085, 34.002731, 43.868900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942322, 33.832970, 43.895157>,  <33.159065, 33.731113, 43.910912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942322, 33.832970, 43.895157>,  <32.581085, 34.002731, 43.868900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942322, 33.832970, 43.895157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215214, 0.314992, -0.924372,
		0.371633, 0.848917, 0.375804,
		0.903090, -0.424405, 0.065638,
		33.213249, 33.705647, 43.914848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992516, 34.484234, 43.442425>,  <32.581085, 34.002731, 43.868900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992516, 34.484234, 43.442425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209515, 34.149422, 43.470909>,  <33.339714, 33.948536, 43.487999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209515, 34.149422, 43.470909>,  <32.992516, 34.484234, 43.442425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209515, 34.149422, 43.470909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183458, 0.035329, -0.982393,
		0.819778, 0.546013, 0.172726,
		0.542501, -0.837031, 0.071209,
		33.372265, 33.898312, 43.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602421, 34.694904, 43.101475>,  <32.992516, 34.484234, 43.442425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602421, 34.694904, 43.101475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 34.295105, 43.099670>,  <33.582359, 34.055225, 43.098587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 34.295105, 43.099670>,  <33.602421, 34.694904, 43.101475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589882, 34.295105, 43.099670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121844, 0.000658, -0.992549,
		0.992054, -0.031664, 0.121763,
		-0.031348, -0.999498, -0.004511,
		33.580479, 33.995255, 43.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207561, 34.418667, 42.809689>,  <33.602421, 34.694904, 43.101475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207561, 34.418667, 42.809689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907047, 34.161701, 42.749191>,  <33.726738, 34.007523, 42.712894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907047, 34.161701, 42.749191>,  <34.207561, 34.418667, 42.809689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907047, 34.161701, 42.749191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089487, 0.127885, -0.987743,
		0.653883, -0.755611, -0.038590,
		-0.751285, -0.642416, -0.151239,
		33.681664, 33.968975, 42.703819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991158, 34.308903, 43.018639>,  <34.207561, 34.418667, 42.809689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991158, 34.308903, 43.018639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255493, 34.608280, 42.996277>,  <35.414093, 34.787907, 42.982861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255493, 34.608280, 42.996277>,  <34.991158, 34.308903, 43.018639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255493, 34.608280, 42.996277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103666, 0.164796, 0.980865,
		0.743335, -0.642397, 0.186491,
		0.660838, 0.748444, -0.055904,
		35.453743, 34.832813, 42.979507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464031, 34.185272, 43.640770>,  <34.991158, 34.308903, 43.018639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464031, 34.185272, 43.640770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511105, 34.561958, 43.514709>,  <35.539349, 34.787971, 43.439072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511105, 34.561958, 43.514709>,  <35.464031, 34.185272, 43.640770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511105, 34.561958, 43.514709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123475, 0.301017, 0.945591,
		0.985345, -0.150191, -0.080855,
		0.117680, 0.941717, -0.315150,
		35.546410, 34.844475, 43.420166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085316, 34.333698, 43.957878>,  <35.464031, 34.185272, 43.640770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085316, 34.333698, 43.957878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902626, 34.677277, 43.865253>,  <35.793015, 34.883423, 43.809677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902626, 34.677277, 43.865253>,  <36.085316, 34.333698, 43.957878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902626, 34.677277, 43.865253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196230, 0.351161, 0.915522,
		0.867697, 0.372699, -0.328933,
		-0.456722, 0.858942, -0.231566,
		35.765610, 34.934959, 43.795784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441032, 34.752949, 44.305592>,  <36.085316, 34.333698, 43.957878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441032, 34.752949, 44.305592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106339, 34.956379, 44.224373>,  <35.905521, 35.078438, 44.175640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106339, 34.956379, 44.224373>,  <36.441032, 34.752949, 44.305592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106339, 34.956379, 44.224373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074135, 0.472575, 0.878167,
		0.542573, 0.719736, -0.433122,
		-0.836731, 0.508579, -0.203049,
		35.855320, 35.108952, 44.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553005, 35.429493, 44.654160>,  <36.441032, 34.752949, 44.305592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553005, 35.429493, 44.654160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155548, 35.415451, 44.611370>,  <35.917072, 35.407024, 44.585697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155548, 35.415451, 44.611370>,  <36.553005, 35.429493, 44.654160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155548, 35.415451, 44.611370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110001, 0.100276, 0.988860,
		-0.023990, 0.994340, -0.103500,
		-0.993642, -0.035108, -0.106973,
		35.857456, 35.404919, 44.579277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366848, 35.979340, 44.976727>,  <36.553005, 35.429493, 44.654160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366848, 35.979340, 44.976727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051239, 35.734104, 44.960930>,  <35.861874, 35.586960, 44.951454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051239, 35.734104, 44.960930>,  <36.366848, 35.979340, 44.976727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051239, 35.734104, 44.960930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089192, 0.050720, 0.994722,
		-0.607855, 0.788381, -0.094702,
		-0.789023, -0.613093, -0.039487,
		35.814533, 35.550175, 44.949085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920826, 36.232147, 45.513672>,  <36.366848, 35.979340, 44.976727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920826, 36.232147, 45.513672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783428, 35.859760, 45.464184>,  <35.700989, 35.636326, 45.434490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783428, 35.859760, 45.464184>,  <35.920826, 36.232147, 45.513672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783428, 35.859760, 45.464184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012325, -0.127260, 0.991793,
		-0.939075, 0.342198, 0.032239,
		-0.343493, -0.930970, -0.123724,
		35.680382, 35.580471, 45.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303123, 36.263496, 45.877895>,  <35.920826, 36.232147, 45.513672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303123, 36.263496, 45.877895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407974, 35.878998, 45.843731>,  <35.470886, 35.648300, 45.823235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407974, 35.878998, 45.843731>,  <35.303123, 36.263496, 45.877895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407974, 35.878998, 45.843731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037264, -0.098520, 0.994437,
		-0.964313, -0.257489, -0.061645,
		0.262130, -0.961246, -0.085409,
		35.486614, 35.590626, 45.818108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008324, 35.922089, 46.501423>,  <35.303123, 36.263496, 45.877895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008324, 35.922089, 46.501423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277901, 35.645386, 46.397671>,  <35.439648, 35.479362, 46.335419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277901, 35.645386, 46.397671>,  <35.008324, 35.922089, 46.501423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277901, 35.645386, 46.397671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084662, -0.421088, 0.903060,
		-0.733921, -0.586647, -0.342353,
		0.673938, -0.691759, -0.259378,
		35.480083, 35.437859, 46.319859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754486, 35.246395, 46.833752>,  <35.008324, 35.922089, 46.501423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754486, 35.246395, 46.833752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141811, 35.197426, 46.746689>,  <35.374207, 35.168045, 46.694450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141811, 35.197426, 46.746689>,  <34.754486, 35.246395, 46.833752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141811, 35.197426, 46.746689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128745, -0.502097, 0.855175,
		-0.213981, -0.856102, -0.470427,
		0.968317, -0.122426, -0.217658,
		35.432308, 35.160698, 46.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884838, 34.579861, 46.924805>,  <34.754486, 35.246395, 46.833752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884838, 34.579861, 46.924805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238094, 34.764122, 46.960262>,  <35.450047, 34.874680, 46.981537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238094, 34.764122, 46.960262>,  <34.884838, 34.579861, 46.924805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238094, 34.764122, 46.960262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194252, -0.531111, 0.824734,
		0.426999, -0.711137, -0.558530,
		0.883141, 0.460656, 0.088644,
		35.503036, 34.902317, 46.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340164, 34.002594, 46.994503>,  <34.884838, 34.579861, 46.924805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340164, 34.002594, 46.994503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505058, 34.338470, 47.135914>,  <35.603992, 34.539997, 47.220760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505058, 34.338470, 47.135914>,  <35.340164, 34.002594, 46.994503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505058, 34.338470, 47.135914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155376, -0.447139, 0.880866,
		0.897732, -0.308192, -0.314794,
		0.412233, 0.839693, 0.353525,
		35.628727, 34.590378, 47.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819344, 33.778027, 47.383045>,  <35.340164, 34.002594, 46.994503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819344, 33.778027, 47.383045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810390, 34.159172, 47.504074>,  <35.805019, 34.387859, 47.576691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810390, 34.159172, 47.504074>,  <35.819344, 33.778027, 47.383045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810390, 34.159172, 47.504074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176653, -0.294111, 0.939304,
		0.984019, 0.074478, -0.161742,
		-0.022387, 0.952865, 0.302568,
		35.803673, 34.445030, 47.594845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386608, 33.897442, 47.792305>,  <35.819344, 33.778027, 47.383045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386608, 33.897442, 47.792305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111900, 34.160954, 47.915173>,  <35.947075, 34.319061, 47.988892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111900, 34.160954, 47.915173>,  <36.386608, 33.897442, 47.792305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111900, 34.160954, 47.915173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059992, -0.369771, 0.927184,
		0.724391, 0.655193, 0.214427,
		-0.686774, 0.658780, 0.307165,
		35.905869, 34.358589, 48.007320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180588, 34.059723, 47.919395>,  <36.386608, 33.897442, 47.792305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180588, 34.059723, 47.919395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555859, 33.921291, 47.922409>,  <37.781021, 33.838234, 47.924217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555859, 33.921291, 47.922409>,  <37.180588, 34.059723, 47.919395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555859, 33.921291, 47.922409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076685, 0.186554, -0.979447,
		0.337561, 0.919471, 0.201560,
		0.938175, -0.346080, 0.007537,
		37.837311, 33.817467, 47.924671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593796, 34.521885, 47.642509>,  <37.180588, 34.059723, 47.919395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593796, 34.521885, 47.642509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830112, 34.199619, 47.625217>,  <37.971901, 34.006260, 47.614841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830112, 34.199619, 47.625217>,  <37.593796, 34.521885, 47.642509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830112, 34.199619, 47.625217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223812, 0.215122, -0.950595,
		0.775160, 0.551929, 0.307410,
		0.590792, -0.805665, -0.043226,
		38.007351, 33.957920, 47.612251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262611, 34.750977, 47.381840>,  <37.593796, 34.521885, 47.642509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262611, 34.750977, 47.381840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187920, 34.368057, 47.293552>,  <38.143105, 34.138306, 47.240582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187920, 34.368057, 47.293552>,  <38.262611, 34.750977, 47.381840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187920, 34.368057, 47.293552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045821, 0.215940, -0.975331,
		0.981343, -0.192235, 0.003542,
		-0.186727, -0.957296, -0.220720,
		38.131901, 34.080868, 47.227337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624252, 34.675713, 46.860538>,  <38.262611, 34.750977, 47.381840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624252, 34.675713, 46.860538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.390995, 34.350765, 46.860252>,  <38.251041, 34.155796, 46.860081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.390995, 34.350765, 46.860252>,  <38.624252, 34.675713, 46.860538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390995, 34.350765, 46.860252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084186, -0.059552, -0.994669,
		0.807994, -0.580097, 0.103117,
		-0.583145, -0.812368, -0.000718,
		38.216053, 34.107056, 46.860035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987499, 34.245953, 46.555508>,  <38.624252, 34.675713, 46.860538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987499, 34.245953, 46.555508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635036, 34.058479, 46.530510>,  <38.423561, 33.945995, 46.515511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635036, 34.058479, 46.530510>,  <38.987499, 34.245953, 46.555508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635036, 34.058479, 46.530510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191140, -0.232181, -0.953707,
		0.432476, -0.852307, 0.294171,
		-0.881152, -0.468684, -0.062497,
		38.370689, 33.917873, 46.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144241, 33.551052, 46.228554>,  <38.987499, 34.245953, 46.555508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144241, 33.551052, 46.228554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759285, 33.646355, 46.176327>,  <38.528313, 33.703537, 46.144993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759285, 33.646355, 46.176327>,  <39.144241, 33.551052, 46.228554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759285, 33.646355, 46.176327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062917, -0.272061, -0.960221,
		-0.264272, -0.932325, 0.246841,
		-0.962394, 0.238229, -0.130557,
		38.470570, 33.717831, 46.137157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825485, 32.944614, 45.847641>,  <39.144241, 33.551052, 46.228554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825485, 32.944614, 45.847641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566380, 33.246971, 45.809635>,  <38.410915, 33.428383, 45.786831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566380, 33.246971, 45.809635>,  <38.825485, 32.944614, 45.847641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566380, 33.246971, 45.809635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148653, -0.247724, -0.957358,
		-0.747195, -0.606022, 0.272833,
		-0.647768, 0.755891, -0.095011,
		38.372047, 33.473740, 45.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549488, 32.655262, 45.324867>,  <38.825485, 32.944614, 45.847641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549488, 32.655262, 45.324867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.421101, 33.033478, 45.303223>,  <38.344067, 33.260406, 45.290237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.421101, 33.033478, 45.303223>,  <38.549488, 32.655262, 45.324867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421101, 33.033478, 45.303223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063628, -0.035477, -0.997343,
		-0.944950, -0.323559, -0.048776,
		-0.320969, 0.945543, -0.054111,
		38.324810, 33.317139, 45.286991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170593, 32.743362, 44.712891>,  <38.549488, 32.655262, 45.324867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170593, 32.743362, 44.712891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250156, 33.124481, 44.804642>,  <38.297894, 33.353153, 44.859692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250156, 33.124481, 44.804642>,  <38.170593, 32.743362, 44.712891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250156, 33.124481, 44.804642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103174, 0.212391, -0.971723,
		-0.974573, 0.216946, -0.056058,
		0.198905, 0.952798, 0.229373,
		38.309830, 33.410320, 44.873455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734966, 33.288593, 44.274807>,  <38.170593, 32.743362, 44.712891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734966, 33.288593, 44.274807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066948, 33.482613, 44.385006>,  <38.266136, 33.599026, 44.451126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066948, 33.482613, 44.385006>,  <37.734966, 33.288593, 44.274807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066948, 33.482613, 44.385006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307225, 0.014760, -0.951523,
		-0.465599, 0.874364, -0.136768,
		0.829958, 0.485047, 0.275498,
		38.315937, 33.628128, 44.467655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775845, 33.978649, 43.902359>,  <37.734966, 33.288593, 44.274807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775845, 33.978649, 43.902359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148197, 33.883858, 44.013565>,  <38.371609, 33.826981, 44.080288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148197, 33.883858, 44.013565>,  <37.775845, 33.978649, 43.902359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148197, 33.883858, 44.013565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313556, 0.127831, -0.940926,
		0.187445, 0.963067, 0.193303,
		0.930885, -0.236983, 0.278014,
		38.427464, 33.812763, 44.096970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259502, 34.517120, 43.641735>,  <37.775845, 33.978649, 43.902359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259502, 34.517120, 43.641735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460838, 34.178604, 43.711525>,  <38.581638, 33.975494, 43.753399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460838, 34.178604, 43.711525>,  <38.259502, 34.517120, 43.641735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460838, 34.178604, 43.711525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287835, -0.026177, -0.957322,
		0.814740, 0.532079, 0.230416,
		0.503339, -0.846290, 0.174478,
		38.611839, 33.924717, 43.763870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799885, 34.784210, 43.350704>,  <38.259502, 34.517120, 43.641735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799885, 34.784210, 43.350704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866756, 34.391663, 43.388577>,  <38.906879, 34.156136, 43.411301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866756, 34.391663, 43.388577>,  <38.799885, 34.784210, 43.350704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866756, 34.391663, 43.388577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379611, -0.024556, -0.924820,
		0.909915, 0.190555, 0.368433,
		0.167182, -0.981369, 0.094680,
		38.916912, 34.097252, 43.416981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435905, 34.588902, 43.013309>,  <38.799885, 34.784210, 43.350704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435905, 34.588902, 43.013309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211258, 34.258179, 43.025845>,  <39.076469, 34.059746, 43.033363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211258, 34.258179, 43.025845>,  <39.435905, 34.588902, 43.013309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211258, 34.258179, 43.025845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236627, -0.196792, -0.951463,
		0.792839, -0.526943, 0.306166,
		-0.561618, -0.826803, 0.031336,
		39.042774, 34.010139, 43.035244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.670731, 38.635986, 30.458151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598642, 38.490135, 30.092731>,  <31.555389, 38.402626, 29.873480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598642, 38.490135, 30.092731>,  <31.670731, 38.635986, 30.458151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598642, 38.490135, 30.092731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808427, -0.474162, 0.348736,
		-0.560327, 0.801386, -0.209317,
		-0.180222, -0.364623, -0.913548,
		31.544577, 38.380749, 29.818666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904093, 38.871490, 30.331896>,  <31.670731, 38.635986, 30.458151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904093, 38.871490, 30.331896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996042, 38.575783, 30.078712>,  <31.051212, 38.398357, 29.926802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996042, 38.575783, 30.078712>,  <30.904093, 38.871490, 30.331896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996042, 38.575783, 30.078712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830432, -0.488133, 0.268531,
		-0.507485, 0.463902, -0.726122,
		0.229872, -0.739271, -0.632959,
		31.065004, 38.354000, 29.888824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260599, 38.686253, 29.927486>,  <30.904093, 38.871490, 30.331896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260599, 38.686253, 29.927486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488430, 38.365658, 29.854612>,  <30.625130, 38.173302, 29.810888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488430, 38.365658, 29.854612>,  <30.260599, 38.686253, 29.927486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488430, 38.365658, 29.854612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815195, -0.579187, -0.000573,
		-0.105062, 0.148844, -0.983264,
		0.569578, -0.801491, -0.182187,
		30.659304, 38.125210, 29.799955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786694, 38.223557, 29.474453>,  <30.260599, 38.686253, 29.927486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786694, 38.223557, 29.474453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071333, 38.029774, 29.677996>,  <30.242117, 37.913506, 29.800121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071333, 38.029774, 29.677996>,  <29.786694, 38.223557, 29.474453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071333, 38.029774, 29.677996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665012, -0.698108, 0.265340,
		0.226690, -0.527209, -0.818940,
		0.711597, -0.484455, 0.508855,
		30.284813, 37.884438, 29.830652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498226, 37.493938, 29.377922>,  <29.786694, 38.223557, 29.474453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498226, 37.493938, 29.377922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752678, 37.517273, 29.685673>,  <29.905350, 37.531273, 29.870323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752678, 37.517273, 29.685673>,  <29.498226, 37.493938, 29.377922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752678, 37.517273, 29.685673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581702, -0.618844, 0.527878,
		0.506915, -0.783345, -0.359732,
		0.636129, 0.058332, 0.769375,
		29.943516, 37.534771, 29.916485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702723, 36.876690, 29.476574>,  <29.498226, 37.493938, 29.377922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702723, 36.876690, 29.476574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777323, 37.055393, 29.826574>,  <29.822083, 37.162617, 30.036573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777323, 37.055393, 29.826574>,  <29.702723, 36.876690, 29.476574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777323, 37.055393, 29.826574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524098, -0.708074, 0.473237,
		0.830987, -0.546843, 0.102090,
		0.186499, 0.446759, 0.874999,
		29.833273, 37.189423, 30.089075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907806, 36.328819, 29.979069>,  <29.702723, 36.876690, 29.476574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907806, 36.328819, 29.979069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832241, 36.629097, 30.232294>,  <29.786901, 36.809265, 30.384230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832241, 36.629097, 30.232294>,  <29.907806, 36.328819, 29.979069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832241, 36.629097, 30.232294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427146, -0.643306, 0.635377,
		0.884228, -0.150380, 0.442184,
		-0.188912, 0.750695, 0.633063,
		29.775568, 36.854305, 30.422213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005459, 36.091022, 30.668230>,  <29.907806, 36.328819, 29.979069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005459, 36.091022, 30.668230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775494, 36.414951, 30.714994>,  <29.637514, 36.609306, 30.743053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775494, 36.414951, 30.714994>,  <30.005459, 36.091022, 30.668230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775494, 36.414951, 30.714994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580594, -0.504444, 0.639098,
		0.576528, 0.299548, 0.760188,
		-0.574913, 0.809819, 0.116910,
		29.603020, 36.657898, 30.750067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910374, 36.193287, 31.405672>,  <30.005459, 36.091022, 30.668230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910374, 36.193287, 31.405672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615789, 36.378128, 31.208054>,  <29.439039, 36.489033, 31.089483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615789, 36.378128, 31.208054>,  <29.910374, 36.193287, 31.405672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615789, 36.378128, 31.208054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656255, -0.310802, 0.687555,
		0.164172, 0.830579, 0.532153,
		-0.736462, 0.462105, -0.494047,
		29.394850, 36.516758, 31.059839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582922, 36.487431, 31.926186>,  <29.910374, 36.193287, 31.405672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582922, 36.487431, 31.926186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324223, 36.487976, 31.621105>,  <29.169003, 36.488304, 31.438057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324223, 36.487976, 31.621105>,  <29.582922, 36.487431, 31.926186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324223, 36.487976, 31.621105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739191, -0.247496, 0.626373,
		-0.187912, 0.968888, 0.161075,
		-0.646751, 0.001363, -0.762700,
		29.130198, 36.488384, 31.392296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124908, 37.054184, 32.031857>,  <29.582922, 36.487431, 31.926186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124908, 37.054184, 32.031857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951389, 36.756958, 31.828022>,  <28.847279, 36.578621, 31.705723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951389, 36.756958, 31.828022>,  <29.124908, 37.054184, 32.031857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951389, 36.756958, 31.828022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669461, -0.112707, 0.734247,
		-0.603027, 0.659660, -0.448562,
		-0.433797, -0.743065, -0.509582,
		28.821251, 36.534039, 31.675148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513298, 37.120426, 32.300838>,  <29.124908, 37.054184, 32.031857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513298, 37.120426, 32.300838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503748, 36.779469, 32.091896>,  <28.498018, 36.574894, 31.966532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503748, 36.779469, 32.091896>,  <28.513298, 37.120426, 32.300838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503748, 36.779469, 32.091896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760979, -0.323359, 0.562451,
		-0.648337, 0.410927, -0.640935,
		-0.023874, -0.852396, -0.522352,
		28.496586, 36.523750, 31.935190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875086, 37.057220, 32.026466>,  <28.513298, 37.120426, 32.300838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875086, 37.057220, 32.026466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989132, 36.673828, 32.024441>,  <28.057560, 36.443794, 32.023228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989132, 36.673828, 32.024441>,  <27.875086, 37.057220, 32.026466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989132, 36.673828, 32.024441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831868, -0.250066, 0.495441,
		-0.476136, -0.137047, -0.868627,
		0.285113, -0.958480, -0.005060,
		28.074665, 36.386284, 32.022923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270609, 36.677780, 31.978825>,  <27.875086, 37.057220, 32.026466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270609, 36.677780, 31.978825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536350, 36.400539, 32.090710>,  <27.695795, 36.234196, 32.157841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536350, 36.400539, 32.090710>,  <27.270609, 36.677780, 31.978825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536350, 36.400539, 32.090710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713900, -0.477634, 0.512067,
		-0.221316, -0.539880, -0.812126,
		0.664354, -0.693105, 0.279712,
		27.735657, 36.192608, 32.174622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882505, 36.049690, 31.823982>,  <27.270609, 36.677780, 31.978825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882505, 36.049690, 31.823982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160711, 35.991482, 32.105431>,  <27.327635, 35.956558, 32.274300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160711, 35.991482, 32.105431>,  <26.882505, 36.049690, 31.823982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160711, 35.991482, 32.105431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696138, -0.378940, 0.609751,
		0.177901, -0.913909, -0.364859,
		0.695516, -0.145517, 0.703621,
		27.369366, 35.947826, 32.316517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870256, 35.286686, 32.101761>,  <26.882505, 36.049690, 31.823982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870256, 35.286686, 32.101761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016674, 35.512337, 32.397808>,  <27.104525, 35.647728, 32.575436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016674, 35.512337, 32.397808>,  <26.870256, 35.286686, 32.101761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016674, 35.512337, 32.397808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610396, -0.454784, 0.648527,
		0.702445, -0.689154, 0.177870,
		0.366043, 0.564126, 0.740118,
		27.126488, 35.681576, 32.619843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770561, 34.850014, 32.709732>,  <26.870256, 35.286686, 32.101761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770561, 34.850014, 32.709732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889124, 35.199020, 32.865093>,  <26.960262, 35.408424, 32.958309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889124, 35.199020, 32.865093>,  <26.770561, 34.850014, 32.709732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889124, 35.199020, 32.865093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431067, -0.240678, 0.869629,
		0.852246, -0.425194, 0.304774,
		0.296409, 0.872516, 0.388404,
		26.978046, 35.460773, 32.981613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009350, 34.640053, 33.405167>,  <26.770561, 34.850014, 32.709732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009350, 34.640053, 33.405167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932119, 35.032440, 33.413357>,  <26.885780, 35.267872, 33.418270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932119, 35.032440, 33.413357>,  <27.009350, 34.640053, 33.405167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932119, 35.032440, 33.413357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387785, -0.095465, 0.916793,
		0.901301, 0.169069, 0.398838,
		-0.193076, 0.980970, 0.020480,
		26.874197, 35.326733, 33.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217426, 34.830059, 34.043556>,  <27.009350, 34.640053, 33.405167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217426, 34.830059, 34.043556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977495, 35.128746, 33.928585>,  <26.833536, 35.307961, 33.859600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977495, 35.128746, 33.928585>,  <27.217426, 34.830059, 34.043556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977495, 35.128746, 33.928585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415474, 0.016329, 0.909459,
		0.683805, 0.664937, 0.300449,
		-0.599827, 0.746721, -0.287430,
		26.797546, 35.352764, 33.842358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231474, 35.281609, 34.589993>,  <27.217426, 34.830059, 34.043556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231474, 35.281609, 34.589993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896475, 35.374012, 34.391907>,  <26.695475, 35.429455, 34.273056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896475, 35.374012, 34.391907>,  <27.231474, 35.281609, 34.589993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896475, 35.374012, 34.391907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484999, 0.103258, 0.868397,
		0.251740, 0.967457, 0.025560,
		-0.837498, 0.231007, -0.495210,
		26.645226, 35.443314, 34.243343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174276, 36.033718, 34.549118>,  <27.231474, 35.281609, 34.589993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174276, 36.033718, 34.549118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440424, 36.029625, 34.847698>,  <27.600113, 36.027168, 35.026844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440424, 36.029625, 34.847698>,  <27.174276, 36.033718, 34.549118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440424, 36.029625, 34.847698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286722, 0.926717, -0.242871,
		-0.689258, 0.375621, 0.619542,
		0.665367, -0.010236, 0.746446,
		27.640034, 36.026554, 35.071632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086761, 36.656734, 35.047314>,  <27.174276, 36.033718, 34.549118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086761, 36.656734, 35.047314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467690, 36.539021, 35.079533>,  <27.696245, 36.468391, 35.098862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467690, 36.539021, 35.079533>,  <27.086761, 36.656734, 35.047314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467690, 36.539021, 35.079533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303650, 0.939895, -0.156185,
		-0.029740, 0.173195, 0.984439,
		0.952319, -0.294280, 0.080543,
		27.753386, 36.450737, 35.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334908, 37.228294, 35.259392>,  <27.086761, 36.656734, 35.047314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334908, 37.228294, 35.259392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660471, 37.021709, 35.152943>,  <27.855808, 36.897758, 35.089073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660471, 37.021709, 35.152943>,  <27.334908, 37.228294, 35.259392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660471, 37.021709, 35.152943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508308, 0.854829, -0.104354,
		0.281388, -0.050340, 0.958273,
		0.813907, -0.516462, -0.266127,
		27.904642, 36.866772, 35.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933371, 37.562168, 35.521481>,  <27.334908, 37.228294, 35.259392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933371, 37.562168, 35.521481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122536, 37.326767, 35.259174>,  <28.236034, 37.185528, 35.101791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122536, 37.326767, 35.259174>,  <27.933371, 37.562168, 35.521481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122536, 37.326767, 35.259174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695631, 0.706156, -0.132063,
		0.540789, -0.393714, 0.743328,
		0.472911, -0.588500, -0.655761,
		28.264408, 37.150215, 35.062447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643064, 37.639286, 35.566929>,  <27.933371, 37.562168, 35.521481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643064, 37.639286, 35.566929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613810, 37.508430, 35.190071>,  <28.596256, 37.429916, 34.963959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613810, 37.508430, 35.190071>,  <28.643064, 37.639286, 35.566929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613810, 37.508430, 35.190071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669682, 0.683913, -0.289464,
		0.739038, -0.652105, 0.169063,
		-0.073137, -0.327143, -0.942140,
		28.591869, 37.410286, 34.907429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277702, 37.860119, 35.349976>,  <28.643064, 37.639286, 35.566929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277702, 37.860119, 35.349976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081657, 37.759167, 35.016247>,  <28.964029, 37.698597, 34.816010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081657, 37.759167, 35.016247>,  <29.277702, 37.860119, 35.349976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081657, 37.759167, 35.016247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526692, 0.676928, -0.514164,
		0.694542, -0.691429, -0.198842,
		-0.490109, -0.252380, -0.834324,
		28.934624, 37.683453, 34.765949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830034, 37.765713, 34.861439>,  <29.277702, 37.860119, 35.349976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830034, 37.765713, 34.861439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496054, 37.856380, 34.660847>,  <29.295666, 37.910782, 34.540493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496054, 37.856380, 34.660847>,  <29.830034, 37.765713, 34.861439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496054, 37.856380, 34.660847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470706, 0.766250, -0.437375,
		0.285119, -0.601236, -0.746474,
		-0.834951, 0.226666, -0.501478,
		29.245569, 37.924381, 34.510403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029404, 37.909958, 34.096210>,  <29.830034, 37.765713, 34.861439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029404, 37.909958, 34.096210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676250, 38.086491, 34.160393>,  <29.464359, 38.192410, 34.198902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676250, 38.086491, 34.160393>,  <30.029404, 37.909958, 34.096210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676250, 38.086491, 34.160393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289200, 0.780205, -0.554656,
		-0.369978, -0.443290, -0.816462,
		-0.882881, 0.441332, 0.160459,
		29.411386, 38.218891, 34.208530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844576, 38.228642, 33.401264>,  <30.029404, 37.909958, 34.096210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844576, 38.228642, 33.401264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594101, 38.388584, 33.668995>,  <29.443815, 38.484550, 33.829636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594101, 38.388584, 33.668995>,  <29.844576, 38.228642, 33.401264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594101, 38.388584, 33.668995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116111, 0.896728, -0.427080,
		-0.770979, -0.189715, -0.607947,
		-0.626187, 0.399859, 0.669330,
		29.406244, 38.508541, 33.869793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308935, 38.484303, 33.072575>,  <29.844576, 38.228642, 33.401264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308935, 38.484303, 33.072575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322237, 38.691349, 33.414562>,  <29.330217, 38.815575, 33.619755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322237, 38.691349, 33.414562>,  <29.308935, 38.484303, 33.072575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322237, 38.691349, 33.414562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075588, 0.851689, -0.518567,
		-0.996584, 0.081870, -0.010803,
		0.033255, 0.517612, 0.854969,
		29.332214, 38.846634, 33.671051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922302, 39.051426, 32.945633>,  <29.308935, 38.484303, 33.072575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922302, 39.051426, 32.945633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098783, 39.187077, 33.277977>,  <29.204672, 39.268467, 33.477383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098783, 39.187077, 33.277977>,  <28.922302, 39.051426, 32.945633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098783, 39.187077, 33.277977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164287, 0.879677, -0.446294,
		-0.882240, 0.333407, 0.332403,
		0.441205, 0.339129, 0.830861,
		29.231146, 39.288815, 33.527237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665112, 39.671444, 32.995384>,  <28.922302, 39.051426, 32.945633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665112, 39.671444, 32.995384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995501, 39.675823, 33.220825>,  <29.193733, 39.678452, 33.356091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995501, 39.675823, 33.220825>,  <28.665112, 39.671444, 32.995384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995501, 39.675823, 33.220825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297829, 0.840401, -0.452797,
		-0.478610, 0.541855, 0.690888,
		0.825973, 0.010946, 0.563604,
		29.243292, 39.679108, 33.389908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745747, 40.371441, 33.215126>,  <28.665112, 39.671444, 32.995384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745747, 40.371441, 33.215126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102863, 40.194374, 33.248531>,  <29.317133, 40.088135, 33.268574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102863, 40.194374, 33.248531>,  <28.745747, 40.371441, 33.215126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102863, 40.194374, 33.248531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446296, 0.844000, -0.297462,
		0.061191, 0.302842, 0.951074,
		0.892791, -0.442663, 0.083512,
		29.370701, 40.061577, 33.273586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215561, 40.942554, 33.545174>,  <28.745747, 40.371441, 33.215126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215561, 40.942554, 33.545174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451160, 40.670666, 33.370331>,  <29.592520, 40.507534, 33.265423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451160, 40.670666, 33.370331>,  <29.215561, 40.942554, 33.545174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451160, 40.670666, 33.370331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540900, 0.733449, -0.411680,
		0.600425, 0.006046, 0.799659,
		0.588998, -0.679718, -0.437111,
		29.627859, 40.466751, 33.239197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789633, 41.266808, 33.547276>,  <29.215561, 40.942554, 33.545174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789633, 41.266808, 33.547276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.849907, 40.974342, 33.281132>,  <29.886072, 40.798862, 33.121445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.849907, 40.974342, 33.281132>,  <29.789633, 41.266808, 33.547276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849907, 40.974342, 33.281132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487495, 0.640474, -0.593415,
		0.860024, -0.234938, 0.452948,
		0.150686, -0.731161, -0.665355,
		29.895113, 40.754993, 33.081524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492723, 41.190186, 33.447788>,  <29.789633, 41.266808, 33.547276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492723, 41.190186, 33.447788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298782, 41.074802, 33.117527>,  <30.182417, 41.005573, 32.919369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298782, 41.074802, 33.117527>,  <30.492723, 41.190186, 33.447788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298782, 41.074802, 33.117527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571963, 0.609602, -0.548856,
		0.661645, -0.738360, -0.130579,
		-0.484854, -0.288462, -0.825655,
		30.153326, 40.988262, 32.869831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066584, 40.928768, 32.985661>,  <30.492723, 41.190186, 33.447788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066584, 40.928768, 32.985661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748112, 40.991512, 32.751911>,  <30.557028, 41.029160, 32.611664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748112, 40.991512, 32.751911>,  <31.066584, 40.928768, 32.985661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748112, 40.991512, 32.751911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579111, 0.477354, -0.660881,
		0.175286, -0.864597, -0.470899,
		-0.796182, 0.156859, -0.584371,
		30.509256, 41.038570, 32.576599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320038, 40.804962, 32.327797>,  <31.066584, 40.928768, 32.985661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320038, 40.804962, 32.327797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.972288, 40.972275, 32.222546>,  <30.763639, 41.072662, 32.159393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.972288, 40.972275, 32.222546>,  <31.320038, 40.804962, 32.327797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972288, 40.972275, 32.222546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449890, 0.449672, -0.771618,
		-0.204429, -0.789201, -0.579111,
		-0.869372, 0.418278, -0.263127,
		30.711477, 41.097759, 32.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136604, 40.686676, 31.595036>,  <31.320038, 40.804962, 32.327797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136604, 40.686676, 31.595036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.927889, 41.012569, 31.696190>,  <30.802660, 41.208103, 31.756884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.927889, 41.012569, 31.696190>,  <31.136604, 40.686676, 31.595036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927889, 41.012569, 31.696190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346595, 0.473340, -0.809828,
		-0.779493, -0.334908, -0.529364,
		-0.521787, 0.814731, 0.252888,
		30.771353, 41.256989, 31.772057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630901, 40.860455, 31.042654>,  <31.136604, 40.686676, 31.595036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630901, 40.860455, 31.042654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697149, 41.207783, 31.229670>,  <30.736898, 41.416180, 31.341879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697149, 41.207783, 31.229670>,  <30.630901, 40.860455, 31.042654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697149, 41.207783, 31.229670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244210, 0.423210, -0.872499,
		-0.955474, 0.258682, -0.141959,
		0.165621, 0.868319, 0.467539,
		30.746836, 41.468277, 31.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412786, 41.453697, 30.629852>,  <30.630901, 40.860455, 31.042654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412786, 41.453697, 30.629852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638855, 41.643761, 30.899611>,  <30.774496, 41.757797, 31.061466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638855, 41.643761, 30.899611>,  <30.412786, 41.453697, 30.629852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638855, 41.643761, 30.899611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417420, 0.540404, -0.730564,
		-0.711579, 0.694399, 0.107080,
		0.565169, 0.475156, 0.674396,
		30.808405, 41.786308, 31.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317459, 42.187759, 30.492910>,  <30.412786, 41.453697, 30.629852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317459, 42.187759, 30.492910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662140, 42.118912, 30.683842>,  <30.868948, 42.077602, 30.798401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662140, 42.118912, 30.683842>,  <30.317459, 42.187759, 30.492910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662140, 42.118912, 30.683842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468123, 0.632623, -0.616968,
		-0.195774, 0.755091, 0.625708,
		0.861704, -0.172122, 0.477326,
		30.920650, 42.067276, 30.827040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.863327, 31.453642, 46.995296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587574, 31.227940, 47.177006>,  <36.422123, 31.092518, 47.286034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587574, 31.227940, 47.177006>,  <36.863327, 31.453642, 46.995296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587574, 31.227940, 47.177006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467766, 0.132094, 0.873926,
		-0.553126, 0.814963, 0.172877,
		-0.689381, -0.564257, 0.454277,
		36.380760, 31.058662, 47.313290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782230, 31.785673, 47.635330>,  <36.863327, 31.453642, 46.995296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782230, 31.785673, 47.635330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590218, 31.438335, 47.685207>,  <36.475010, 31.229933, 47.715134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590218, 31.438335, 47.685207>,  <36.782230, 31.785673, 47.635330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590218, 31.438335, 47.685207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425760, -0.106330, 0.898567,
		-0.767007, 0.484429, 0.420748,
		-0.480030, -0.868345, 0.124695,
		36.446209, 31.177832, 47.722614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326256, 31.912630, 48.153072>,  <36.782230, 31.785673, 47.635330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326256, 31.912630, 48.153072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393555, 31.518574, 48.139248>,  <36.433933, 31.282141, 48.130951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393555, 31.518574, 48.139248>,  <36.326256, 31.912630, 48.153072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393555, 31.518574, 48.139248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343454, 0.025716, 0.938817,
		-0.923977, -0.169822, 0.342676,
		0.168244, -0.985139, -0.034565,
		36.444027, 31.223032, 48.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132370, 31.675014, 48.827747>,  <36.326256, 31.912630, 48.153072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132370, 31.675014, 48.827747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.351543, 31.365999, 48.699398>,  <36.483047, 31.180590, 48.622391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.351543, 31.365999, 48.699398>,  <36.132370, 31.675014, 48.827747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351543, 31.365999, 48.699398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285439, -0.187889, 0.939799,
		-0.786317, -0.606535, 0.117561,
		0.547933, -0.772537, -0.320869,
		36.515923, 31.134237, 48.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964962, 31.095369, 49.197891>,  <36.132370, 31.675014, 48.827747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964962, 31.095369, 49.197891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341320, 31.047348, 49.071205>,  <36.567135, 31.018536, 48.995193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341320, 31.047348, 49.071205>,  <35.964962, 31.095369, 49.197891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341320, 31.047348, 49.071205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298046, -0.150752, 0.942572,
		-0.160929, -0.981252, -0.106052,
		0.940888, -0.120078, -0.316719,
		36.623589, 31.011332, 48.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241337, 30.396292, 49.517467>,  <35.964962, 31.095369, 49.197891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241337, 30.396292, 49.517467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566032, 30.607147, 49.416908>,  <36.760849, 30.733662, 49.356575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566032, 30.607147, 49.416908>,  <36.241337, 30.396292, 49.517467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566032, 30.607147, 49.416908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461542, -0.315278, 0.829204,
		0.357848, -0.789128, -0.499221,
		0.811741, 0.527140, -0.251394,
		36.809555, 30.765289, 49.341492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748280, 29.883459, 49.546417>,  <36.241337, 30.396292, 49.517467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748280, 29.883459, 49.546417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919117, 30.244932, 49.558693>,  <37.021622, 30.461817, 49.566059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919117, 30.244932, 49.558693>,  <36.748280, 29.883459, 49.546417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919117, 30.244932, 49.558693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573865, -0.297138, 0.763143,
		0.698762, -0.308322, -0.645499,
		0.427096, 0.903685, 0.030694,
		37.047245, 30.516037, 49.567902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353226, 29.639473, 49.700596>,  <36.748280, 29.883459, 49.546417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353226, 29.639473, 49.700596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322598, 30.020079, 49.819767>,  <37.304222, 30.248442, 49.891270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322598, 30.020079, 49.819767>,  <37.353226, 29.639473, 49.700596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322598, 30.020079, 49.819767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456525, -0.232184, 0.858880,
		0.886410, 0.201772, -0.416612,
		-0.076568, 0.951514, 0.297924,
		37.299625, 30.305532, 49.909145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990314, 29.797678, 49.898487>,  <37.353226, 29.639473, 49.700596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990314, 29.797678, 49.898487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751789, 30.062033, 50.080757>,  <37.608673, 30.220646, 50.190121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751789, 30.062033, 50.080757>,  <37.990314, 29.797678, 49.898487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751789, 30.062033, 50.080757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467561, -0.175476, 0.866369,
		0.652531, 0.729683, -0.204366,
		-0.596314, 0.660886, 0.455675,
		37.572895, 30.260298, 50.217461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468388, 30.200798, 50.350033>,  <37.990314, 29.797678, 49.898487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468388, 30.200798, 50.350033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107464, 30.287380, 50.499153>,  <37.890907, 30.339329, 50.588623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107464, 30.287380, 50.499153>,  <38.468388, 30.200798, 50.350033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107464, 30.287380, 50.499153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375575, -0.029760, 0.926314,
		0.211599, 0.975839, -0.054442,
		-0.902313, 0.216454, 0.372798,
		37.836769, 30.352316, 50.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474930, 30.793812, 50.782867>,  <38.468388, 30.200798, 50.350033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474930, 30.793812, 50.782867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170921, 30.571808, 50.918121>,  <37.988518, 30.438604, 50.999275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170921, 30.571808, 50.918121>,  <38.474930, 30.793812, 50.782867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170921, 30.571808, 50.918121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433229, -0.044828, 0.900168,
		-0.484445, 0.830634, 0.274517,
		-0.760017, -0.555011, 0.338138,
		37.942917, 30.405304, 51.019562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409744, 30.977440, 51.431053>,  <38.474930, 30.793812, 50.782867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409744, 30.977440, 51.431053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159813, 30.667831, 51.472004>,  <38.009853, 30.482067, 51.496574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159813, 30.667831, 51.472004>,  <38.409744, 30.977440, 51.431053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159813, 30.667831, 51.472004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310349, -0.125900, 0.942249,
		-0.716431, 0.620516, 0.318883,
		-0.624828, -0.774022, 0.102377,
		37.972366, 30.435625, 51.502716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923420, 30.993065, 52.051952>,  <38.409744, 30.977440, 51.431053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923420, 30.993065, 52.051952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001366, 30.616074, 51.943314>,  <38.048134, 30.389879, 51.878132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001366, 30.616074, 51.943314>,  <37.923420, 30.993065, 52.051952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001366, 30.616074, 51.943314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413254, -0.172231, 0.894180,
		-0.889521, -0.286483, 0.355921,
		0.194866, -0.942478, -0.271594,
		38.059826, 30.333330, 51.861835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625813, 30.513668, 52.477001>,  <37.923420, 30.993065, 52.051952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625813, 30.513668, 52.477001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937656, 30.322895, 52.314648>,  <38.124763, 30.208431, 52.217236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937656, 30.322895, 52.314648>,  <37.625813, 30.513668, 52.477001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937656, 30.322895, 52.314648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408301, -0.104355, 0.906863,
		-0.474870, -0.872723, 0.113376,
		0.779608, -0.476933, -0.405888,
		38.171539, 30.179815, 52.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349472, 31.092718, 52.794495>,  <37.625813, 30.513668, 52.477001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349472, 31.092718, 52.794495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271645, 31.468266, 52.908104>,  <37.224949, 31.693594, 52.976269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271645, 31.468266, 52.908104>,  <37.349472, 31.092718, 52.794495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271645, 31.468266, 52.908104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275969, 0.330254, -0.902648,
		-0.941267, -0.097249, -0.323356,
		-0.194571, 0.938869, 0.284019,
		37.213272, 31.749926, 52.993309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168697, 31.379383, 52.191750>,  <37.349472, 31.092718, 52.794495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168697, 31.379383, 52.191750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250793, 31.690918, 52.428829>,  <37.300049, 31.877838, 52.571075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250793, 31.690918, 52.428829>,  <37.168697, 31.379383, 52.191750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250793, 31.690918, 52.428829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248196, 0.544373, -0.801284,
		-0.946718, 0.311559, -0.081578,
		0.205239, 0.778838, 0.592696,
		37.312366, 31.924570, 52.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659859, 31.928198, 52.011234>,  <37.168697, 31.379383, 52.191750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659859, 31.928198, 52.011234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965847, 32.129002, 52.172630>,  <37.149441, 32.249485, 52.269470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965847, 32.129002, 52.172630>,  <36.659859, 31.928198, 52.011234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965847, 32.129002, 52.172630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184416, 0.429525, -0.884024,
		-0.617099, 0.750663, 0.235995,
		0.764970, 0.502010, 0.403494,
		37.195339, 32.279606, 52.293678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550518, 32.596153, 51.828899>,  <36.659859, 31.928198, 52.011234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550518, 32.596153, 51.828899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938812, 32.566463, 51.920254>,  <37.171787, 32.548649, 51.975067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938812, 32.566463, 51.920254>,  <36.550518, 32.596153, 51.828899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938812, 32.566463, 51.920254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233614, 0.512226, -0.826468,
		-0.055640, 0.855637, 0.514577,
		0.970736, -0.074227, 0.228389,
		37.230034, 32.544197, 51.988770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823238, 33.234943, 51.652977>,  <36.550518, 32.596153, 51.828899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823238, 33.234943, 51.652977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146931, 33.001438, 51.679401>,  <37.341148, 32.861336, 51.695255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146931, 33.001438, 51.679401>,  <36.823238, 33.234943, 51.652977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146931, 33.001438, 51.679401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443790, 0.533737, -0.719844,
		0.384955, 0.611840, 0.690985,
		0.809234, -0.583760, 0.066064,
		37.389702, 32.826309, 51.699219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368420, 33.660545, 51.452240>,  <36.823238, 33.234943, 51.652977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368420, 33.660545, 51.452240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513592, 33.291569, 51.399506>,  <37.600697, 33.070183, 51.367867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513592, 33.291569, 51.399506>,  <37.368420, 33.660545, 51.452240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513592, 33.291569, 51.399506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495921, 0.310996, -0.810768,
		0.788886, 0.228875, 0.570329,
		0.362934, -0.922441, -0.131837,
		37.622471, 33.014835, 51.359955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094299, 33.718735, 51.457962>,  <37.368420, 33.660545, 51.452240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094299, 33.718735, 51.457962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998718, 33.384212, 51.260582>,  <37.941368, 33.183498, 51.142155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998718, 33.384212, 51.260582>,  <38.094299, 33.718735, 51.457962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998718, 33.384212, 51.260582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444098, 0.357792, -0.821439,
		0.863527, -0.415427, 0.285906,
		-0.238953, -0.836305, -0.493453,
		37.927032, 33.133320, 51.112545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699020, 33.626583, 50.959515>,  <38.094299, 33.718735, 51.457962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699020, 33.626583, 50.959515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408714, 33.388329, 50.821831>,  <38.234531, 33.245377, 50.739220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408714, 33.388329, 50.821831>,  <38.699020, 33.626583, 50.959515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408714, 33.388329, 50.821831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205765, 0.289490, -0.934803,
		0.656446, -0.749276, -0.087542,
		-0.725768, -0.595635, -0.344209,
		38.190983, 33.209637, 50.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988403, 33.335819, 50.319191>,  <38.699020, 33.626583, 50.959515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988403, 33.335819, 50.319191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590076, 33.301945, 50.305424>,  <38.351082, 33.281620, 50.297161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590076, 33.301945, 50.305424>,  <38.988403, 33.335819, 50.319191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590076, 33.301945, 50.305424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014470, 0.225755, -0.974077,
		0.090263, -0.970496, -0.223584,
		-0.995813, -0.084688, -0.034421,
		38.291332, 33.276539, 50.295097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775253, 32.810833, 49.809742>,  <38.988403, 33.335819, 50.319191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775253, 32.810833, 49.809742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447777, 33.037685, 49.845764>,  <38.251293, 33.173798, 49.867378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447777, 33.037685, 49.845764>,  <38.775253, 32.810833, 49.809742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447777, 33.037685, 49.845764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053925, 0.080211, -0.995318,
		-0.571700, -0.819713, -0.035085,
		-0.818689, 0.567131, 0.090060,
		38.202171, 33.207825, 49.872784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359886, 32.524204, 49.355671>,  <38.775253, 32.810833, 49.809742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359886, 32.524204, 49.355671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229225, 32.896164, 49.423298>,  <38.150829, 33.119339, 49.463875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229225, 32.896164, 49.423298>,  <38.359886, 32.524204, 49.355671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229225, 32.896164, 49.423298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123365, 0.135397, -0.983081,
		-0.937059, -0.341982, 0.070490,
		-0.326652, 0.929901, 0.169064,
		38.131229, 33.175133, 49.474018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763981, 32.525242, 48.979836>,  <38.359886, 32.524204, 49.355671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763981, 32.525242, 48.979836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826847, 32.916267, 49.035942>,  <37.864567, 33.150883, 49.069607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826847, 32.916267, 49.035942>,  <37.763981, 32.525242, 48.979836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826847, 32.916267, 49.035942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186749, 0.168888, -0.967782,
		-0.969754, 0.125911, 0.209102,
		0.157170, 0.977560, 0.140266,
		37.873997, 33.209534, 49.078022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306446, 32.884781, 48.536472>,  <37.763981, 32.525242, 48.979836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306446, 32.884781, 48.536472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594208, 33.152298, 48.611492>,  <37.766865, 33.312809, 48.656502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594208, 33.152298, 48.611492>,  <37.306446, 32.884781, 48.536472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594208, 33.152298, 48.611492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028643, 0.298344, -0.954028,
		-0.693997, 0.680963, 0.233788,
		0.719408, 0.668790, 0.187545,
		37.810032, 33.352936, 48.667755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039974, 33.401329, 48.260578>,  <37.306446, 32.884781, 48.536472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039974, 33.401329, 48.260578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434002, 33.466602, 48.282547>,  <37.670418, 33.505768, 48.295727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434002, 33.466602, 48.282547>,  <37.039974, 33.401329, 48.260578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434002, 33.466602, 48.282547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024877, 0.180740, -0.983216,
		-0.170374, 0.969898, 0.173981,
		0.985065, 0.163187, 0.054921,
		37.729523, 33.515560, 48.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633419, 34.036629, 48.561752>,  <37.039974, 33.401329, 48.260578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633419, 34.036629, 48.561752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295033, 34.248856, 48.540424>,  <36.092003, 34.376194, 48.527626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295033, 34.248856, 48.540424>,  <36.633419, 34.036629, 48.561752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295033, 34.248856, 48.540424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087529, -0.039525, 0.995377,
		0.526010, 0.846719, 0.079878,
		-0.845963, 0.530570, -0.053322,
		36.041245, 34.408028, 48.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741711, 34.644485, 48.983128>,  <36.633419, 34.036629, 48.561752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741711, 34.644485, 48.983128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352936, 34.560608, 48.940472>,  <36.119671, 34.510281, 48.914879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352936, 34.560608, 48.940472>,  <36.741711, 34.644485, 48.983128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352936, 34.560608, 48.940472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116678, 0.036050, 0.992515,
		-0.204284, 0.977101, -0.059506,
		-0.971933, -0.209698, -0.106641,
		36.061356, 34.497700, 48.908478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369282, 35.106968, 49.415699>,  <36.741711, 34.644485, 48.983128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369282, 35.106968, 49.415699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109650, 34.806923, 49.365067>,  <35.953869, 34.626896, 49.334686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109650, 34.806923, 49.365067>,  <36.369282, 35.106968, 49.415699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109650, 34.806923, 49.365067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314832, 0.113406, 0.942348,
		-0.692514, 0.651512, -0.309770,
		-0.649081, -0.750114, -0.126582,
		35.914925, 34.581890, 49.327091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822807, 35.280540, 49.898067>,  <36.369282, 35.106968, 49.415699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822807, 35.280540, 49.898067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755959, 34.892456, 49.827911>,  <35.715851, 34.659607, 49.785816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755959, 34.892456, 49.827911>,  <35.822807, 35.280540, 49.898067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755959, 34.892456, 49.827911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460420, -0.080508, 0.884043,
		-0.871829, 0.228493, -0.433250,
		-0.167118, -0.970211, -0.175392,
		35.705822, 34.601395, 49.775295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076805, 35.148598, 50.058254>,  <35.822807, 35.280540, 49.898067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076805, 35.148598, 50.058254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280750, 34.806561, 50.095913>,  <35.403118, 34.601337, 50.118507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280750, 34.806561, 50.095913>,  <35.076805, 35.148598, 50.058254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280750, 34.806561, 50.095913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333919, -0.095861, 0.937714,
		-0.792806, -0.509540, -0.334407,
		0.509860, -0.855090, 0.094146,
		35.433708, 34.550034, 50.124157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582298, 34.710972, 50.347904>,  <35.076805, 35.148598, 50.058254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582298, 34.710972, 50.347904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938839, 34.544460, 50.419689>,  <35.152763, 34.444553, 50.462761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938839, 34.544460, 50.419689>,  <34.582298, 34.710972, 50.347904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938839, 34.544460, 50.419689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277755, -0.188648, 0.941947,
		-0.358260, -0.889450, -0.283776,
		0.891348, -0.416282, 0.179464,
		35.206245, 34.419575, 50.473530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462467, 34.257683, 50.772099>,  <34.582298, 34.710972, 50.347904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462467, 34.257683, 50.772099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853561, 34.268917, 50.855274>,  <35.088219, 34.275658, 50.905178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853561, 34.268917, 50.855274>,  <34.462467, 34.257683, 50.772099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853561, 34.268917, 50.855274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205615, -0.069278, 0.976178,
		0.041823, -0.997202, -0.061961,
		0.977739, 0.028087, 0.207937,
		35.146885, 34.277344, 50.917656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230179, 33.600231, 50.453617>,  <34.462467, 34.257683, 50.772099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230179, 33.600231, 50.453617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969097, 33.302242, 50.398487>,  <33.812447, 33.123447, 50.365410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969097, 33.302242, 50.398487>,  <34.230179, 33.600231, 50.453617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969097, 33.302242, 50.398487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001295, 0.183019, -0.983108,
		0.757613, -0.641500, -0.120422,
		-0.652703, -0.744971, -0.137827,
		33.773285, 33.078751, 50.357140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355709, 33.039368, 49.947182>,  <34.230179, 33.600231, 50.453617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355709, 33.039368, 49.947182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956188, 33.031498, 49.965141>,  <33.716476, 33.026775, 49.975918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956188, 33.031498, 49.965141>,  <34.355709, 33.039368, 49.947182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956188, 33.031498, 49.965141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046656, 0.100494, -0.993843,
		0.015043, -0.994743, -0.101291,
		-0.998798, -0.019677, 0.044899,
		33.656548, 33.025593, 49.978611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140759, 32.706726, 49.398998>,  <34.355709, 33.039368, 49.947182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140759, 32.706726, 49.398998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782173, 32.839119, 49.516850>,  <33.567020, 32.918552, 49.587563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782173, 32.839119, 49.516850>,  <34.140759, 32.706726, 49.398998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782173, 32.839119, 49.516850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279752, 0.092913, -0.955566,
		-0.343647, -0.939053, 0.009299,
		-0.896463, 0.330979, 0.294631,
		33.513233, 32.938412, 49.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611420, 32.264584, 49.070820>,  <34.140759, 32.706726, 49.398998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611420, 32.264584, 49.070820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486401, 32.637306, 49.144638>,  <33.411388, 32.860939, 49.188927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486401, 32.637306, 49.144638>,  <33.611420, 32.264584, 49.070820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486401, 32.637306, 49.144638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181454, 0.132130, -0.974482,
		-0.932410, -0.338059, 0.127782,
		-0.312548, 0.931803, 0.184542,
		33.392635, 32.916847, 49.200001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983646, 32.387688, 48.732597>,  <33.611420, 32.264584, 49.070820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983646, 32.387688, 48.732597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092564, 32.766548, 48.800430>,  <33.157913, 32.993866, 48.841129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092564, 32.766548, 48.800430>,  <32.983646, 32.387688, 48.732597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092564, 32.766548, 48.800430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318947, 0.255127, -0.912789,
		-0.907816, 0.194457, 0.371560,
		0.272293, 0.947152, 0.169587,
		33.174252, 33.050694, 48.851307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317883, 32.886951, 48.639397>,  <32.983646, 32.387688, 48.732597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317883, 32.886951, 48.639397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669472, 33.073887, 48.601437>,  <32.880424, 33.186050, 48.578663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669472, 33.073887, 48.601437>,  <32.317883, 32.886951, 48.639397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669472, 33.073887, 48.601437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253828, 0.290028, -0.922743,
		-0.403715, 0.835149, 0.373550,
		0.878969, 0.467343, -0.094895,
		32.933163, 33.214088, 48.572968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169788, 33.407852, 48.188004>,  <32.317883, 32.886951, 48.639397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169788, 33.407852, 48.188004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568890, 33.383923, 48.175961>,  <32.808350, 33.369564, 48.168736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568890, 33.383923, 48.175961>,  <32.169788, 33.407852, 48.188004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568890, 33.383923, 48.175961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016076, 0.222453, -0.974811,
		0.065019, 0.973106, 0.220991,
		0.997755, -0.059828, -0.030108,
		32.868217, 33.365974, 48.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.688721, 27.618530, 51.649437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898697, 27.939920, 51.537109>,  <36.024685, 28.132755, 51.469711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898697, 27.939920, 51.537109>,  <35.688721, 27.618530, 51.649437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898697, 27.939920, 51.537109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241281, -0.175925, -0.954376,
		-0.816222, 0.568751, 0.101513,
		0.524943, 0.803476, -0.280823,
		36.056179, 28.180964, 51.452862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278786, 28.196398, 51.222771>,  <35.688721, 27.618530, 51.649437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278786, 28.196398, 51.222771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668289, 28.150488, 51.144154>,  <35.901989, 28.122942, 51.096985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668289, 28.150488, 51.144154>,  <35.278786, 28.196398, 51.222771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668289, 28.150488, 51.144154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209382, -0.113201, -0.971259,
		0.089229, 0.986920, -0.134262,
		0.973754, -0.114777, -0.196542,
		35.960415, 28.116055, 51.085190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319824, 28.496515, 50.530193>,  <35.278786, 28.196398, 51.222771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319824, 28.496515, 50.530193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.664757, 28.296635, 50.562912>,  <35.871716, 28.176706, 50.582542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.664757, 28.296635, 50.562912>,  <35.319824, 28.496515, 50.530193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664757, 28.296635, 50.562912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003253, -0.156078, -0.987739,
		0.506341, 0.852021, -0.132964,
		0.862327, -0.499701, 0.081801,
		35.923454, 28.146725, 50.587452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735775, 28.870752, 50.112782>,  <35.319824, 28.496515, 50.530193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735775, 28.870752, 50.112782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894993, 28.505051, 50.142971>,  <35.990524, 28.285629, 50.161083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894993, 28.505051, 50.142971>,  <35.735775, 28.870752, 50.112782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894993, 28.505051, 50.142971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060809, -0.055797, -0.996589,
		0.915349, 0.401276, 0.033385,
		0.398044, -0.914256, 0.075475,
		36.014404, 28.230774, 50.165615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370171, 28.828499, 49.764439>,  <35.735775, 28.870752, 50.112782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370171, 28.828499, 49.764439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.270065, 28.441921, 49.787590>,  <36.210003, 28.209974, 49.801479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.270065, 28.441921, 49.787590>,  <36.370171, 28.828499, 49.764439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270065, 28.441921, 49.787590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111638, -0.088187, -0.989828,
		0.961720, -0.241257, 0.129962,
		-0.250264, -0.966446, 0.057878,
		36.194984, 28.151987, 49.804955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864319, 28.414864, 49.325748>,  <36.370171, 28.828499, 49.764439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864319, 28.414864, 49.325748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552856, 28.165689, 49.355793>,  <36.365978, 28.016186, 49.373821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552856, 28.165689, 49.355793>,  <36.864319, 28.414864, 49.325748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552856, 28.165689, 49.355793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121930, -0.267654, -0.955769,
		0.615486, -0.735060, 0.284366,
		-0.778659, -0.622935, 0.075112,
		36.319260, 27.978809, 49.378326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007812, 27.838577, 48.843594>,  <36.864319, 28.414864, 49.325748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007812, 27.838577, 48.843594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614960, 27.801567, 48.909149>,  <36.379250, 27.779362, 48.948483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614960, 27.801567, 48.909149>,  <37.007812, 27.838577, 48.843594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614960, 27.801567, 48.909149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116665, -0.383994, -0.915936,
		0.147678, -0.918688, 0.366337,
		-0.982131, -0.092525, 0.163886,
		36.320320, 27.773809, 48.958317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892029, 27.113132, 48.588982>,  <37.007812, 27.838577, 48.843594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892029, 27.113132, 48.588982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548840, 27.317772, 48.607529>,  <36.342926, 27.440556, 48.618656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548840, 27.317772, 48.607529>,  <36.892029, 27.113132, 48.588982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548840, 27.317772, 48.607529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286770, -0.402116, -0.869520,
		-0.426198, -0.759323, 0.491715,
		-0.857974, 0.511597, 0.046370,
		36.291447, 27.471251, 48.621441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329044, 26.706387, 48.248211>,  <36.892029, 27.113132, 48.588982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329044, 26.706387, 48.248211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.165291, 27.071316, 48.244923>,  <36.067039, 27.290274, 48.242950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.165291, 27.071316, 48.244923>,  <36.329044, 26.706387, 48.248211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165291, 27.071316, 48.244923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334065, -0.158275, -0.929166,
		-0.849002, -0.377641, 0.369571,
		-0.409385, 0.912325, -0.008219,
		36.042477, 27.345013, 48.242458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677158, 26.633852, 48.179642>,  <36.329044, 26.706387, 48.248211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677158, 26.633852, 48.179642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.749653, 27.003399, 48.044811>,  <35.793152, 27.225128, 47.963913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.749653, 27.003399, 48.044811>,  <35.677158, 26.633852, 48.179642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749653, 27.003399, 48.044811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408582, -0.241032, -0.880321,
		-0.894546, 0.297271, 0.333792,
		0.181239, 0.923869, -0.337074,
		35.804024, 27.280560, 47.943687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076950, 26.717484, 47.881725>,  <35.677158, 26.633852, 48.179642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076950, 26.717484, 47.881725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292114, 27.019657, 47.732071>,  <35.421211, 27.200962, 47.642277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292114, 27.019657, 47.732071>,  <35.076950, 26.717484, 47.881725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292114, 27.019657, 47.732071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421880, -0.143007, -0.895302,
		-0.729845, 0.639429, 0.241778,
		0.537906, 0.755433, -0.374136,
		35.453487, 27.246286, 47.619831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618656, 27.251120, 47.525276>,  <35.076950, 26.717484, 47.881725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618656, 27.251120, 47.525276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982616, 27.264183, 47.359859>,  <35.200993, 27.272020, 47.260609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982616, 27.264183, 47.359859>,  <34.618656, 27.251120, 47.525276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982616, 27.264183, 47.359859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400469, -0.190859, -0.896213,
		-0.108197, 0.981074, -0.160584,
		0.909900, 0.032659, -0.413540,
		35.255585, 27.273981, 47.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318069, 27.901852, 47.791142>,  <34.618656, 27.251120, 47.525276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318069, 27.901852, 47.791142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929249, 27.991182, 47.820084>,  <33.695957, 28.044781, 47.837448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929249, 27.991182, 47.820084>,  <34.318069, 27.901852, 47.791142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929249, 27.991182, 47.820084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090185, 0.070686, 0.993413,
		0.216743, 0.972177, -0.088851,
		-0.972054, 0.223328, 0.072356,
		33.637634, 28.058180, 47.841789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294971, 28.501610, 48.143509>,  <34.318069, 27.901852, 47.791142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294971, 28.501610, 48.143509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937725, 28.329189, 48.194946>,  <33.723377, 28.225737, 48.225807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937725, 28.329189, 48.194946>,  <34.294971, 28.501610, 48.143509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937725, 28.329189, 48.194946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147795, -0.011203, 0.988955,
		-0.424849, 0.902258, 0.073712,
		-0.893118, -0.431050, 0.128590,
		33.669788, 28.199875, 48.233524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084873, 28.857729, 48.797264>,  <34.294971, 28.501610, 48.143509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084873, 28.857729, 48.797264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852634, 28.536894, 48.741310>,  <33.713291, 28.344393, 48.707737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852634, 28.536894, 48.741310>,  <34.084873, 28.857729, 48.797264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852634, 28.536894, 48.741310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290724, 0.043747, 0.955806,
		-0.760519, 0.595605, -0.258585,
		-0.580595, -0.802086, -0.139886,
		33.678455, 28.296268, 48.699345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450367, 29.029902, 48.925995>,  <34.084873, 28.857729, 48.797264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450367, 29.029902, 48.925995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485352, 28.637751, 48.996666>,  <33.506344, 28.402460, 49.039070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485352, 28.637751, 48.996666>,  <33.450367, 29.029902, 48.925995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485352, 28.637751, 48.996666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208185, 0.155453, 0.965657,
		-0.974171, -0.121239, -0.190503,
		0.087461, -0.980375, 0.176678,
		33.511589, 28.343637, 49.049671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961445, 28.941860, 49.388565>,  <33.450367, 29.029902, 48.925995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961445, 28.941860, 49.388565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215729, 28.635162, 49.424294>,  <33.368298, 28.451143, 49.445732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215729, 28.635162, 49.424294>,  <32.961445, 28.941860, 49.388565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215729, 28.635162, 49.424294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033094, 0.088537, 0.995523,
		-0.771221, -0.635817, 0.030910,
		0.635707, -0.766746, 0.089323,
		33.406441, 28.405138, 49.451092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720905, 28.549610, 49.918625>,  <32.961445, 28.941860, 49.388565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720905, 28.549610, 49.918625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108112, 28.451384, 49.898075>,  <33.340435, 28.392448, 49.885746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108112, 28.451384, 49.898075>,  <32.720905, 28.549610, 49.918625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108112, 28.451384, 49.898075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056377, 0.013388, 0.998320,
		-0.244465, -0.969288, 0.026804,
		0.968018, -0.245565, -0.051373,
		33.398518, 28.377714, 49.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762863, 28.347355, 50.498680>,  <32.720905, 28.549610, 49.918625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762863, 28.347355, 50.498680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150089, 28.362450, 50.399551>,  <33.382427, 28.371506, 50.340073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150089, 28.362450, 50.399551>,  <32.762863, 28.347355, 50.498680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150089, 28.362450, 50.399551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249456, -0.047380, 0.967227,
		0.024759, -0.998164, -0.055281,
		0.968069, 0.037738, -0.247824,
		33.440510, 28.373770, 50.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089867, 27.973606, 50.950573>,  <32.762863, 28.347355, 50.498680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089867, 27.973606, 50.950573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416481, 28.164549, 50.820713>,  <33.612450, 28.279114, 50.742798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416481, 28.164549, 50.820713>,  <33.089867, 27.973606, 50.950573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416481, 28.164549, 50.820713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353262, 0.031621, 0.934990,
		0.456590, -0.878140, -0.142813,
		0.816536, 0.477358, -0.324651,
		33.661442, 28.307756, 50.723316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650894, 27.742119, 51.385902>,  <33.089867, 27.973606, 50.950573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650894, 27.742119, 51.385902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.772072, 28.094196, 51.239761>,  <33.844780, 28.305443, 51.152077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.772072, 28.094196, 51.239761>,  <33.650894, 27.742119, 51.385902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772072, 28.094196, 51.239761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404152, 0.228526, 0.885684,
		0.863067, -0.415971, -0.286502,
		0.302946, 0.880195, -0.365349,
		33.862957, 28.358255, 51.130157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161194, 27.862707, 51.801994>,  <33.650894, 27.742119, 51.385902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161194, 27.862707, 51.801994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.075127, 28.210354, 51.623856>,  <34.023487, 28.418941, 51.516972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.075127, 28.210354, 51.623856>,  <34.161194, 27.862707, 51.801994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075127, 28.210354, 51.623856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445302, 0.493179, 0.747316,
		0.869142, -0.037514, -0.493138,
		-0.215171, 0.869119, -0.445347,
		34.010574, 28.471090, 51.490250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796108, 28.272688, 51.860546>,  <34.161194, 27.862707, 51.801994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796108, 28.272688, 51.860546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477402, 28.509983, 51.814545>,  <34.286179, 28.652361, 51.786945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477402, 28.509983, 51.814545>,  <34.796108, 28.272688, 51.860546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477402, 28.509983, 51.814545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291549, 0.544090, 0.786743,
		0.529297, 0.593325, -0.606473,
		-0.796771, 0.593238, -0.115002,
		34.238369, 28.687954, 51.780045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031048, 28.961145, 51.708702>,  <34.796108, 28.272688, 51.860546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031048, 28.961145, 51.708702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663651, 28.987404, 51.864677>,  <34.443211, 29.003159, 51.958263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663651, 28.987404, 51.864677>,  <35.031048, 28.961145, 51.708702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663651, 28.987404, 51.864677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315083, 0.717345, 0.621401,
		-0.238931, 0.693619, -0.679563,
		-0.918496, 0.065646, 0.389943,
		34.388103, 29.007097, 51.981659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772896, 29.671871, 51.573681>,  <35.031048, 28.961145, 51.708702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772896, 29.671871, 51.573681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654598, 29.453911, 51.887527>,  <34.583618, 29.323135, 52.075836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654598, 29.453911, 51.887527>,  <34.772896, 29.671871, 51.573681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654598, 29.453911, 51.887527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358572, 0.697973, 0.619887,
		-0.885415, 0.464670, -0.011038,
		-0.295747, -0.544900, 0.784613,
		34.565876, 29.290442, 52.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391918, 30.213915, 51.214302>,  <34.772896, 29.671871, 51.573681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391918, 30.213915, 51.214302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576340, 30.449301, 50.948627>,  <34.686993, 30.590532, 50.789223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576340, 30.449301, 50.948627>,  <34.391918, 30.213915, 51.214302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576340, 30.449301, 50.948627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064857, 0.724134, 0.686602,
		0.884998, -0.359639, 0.295699,
		0.461055, 0.588464, -0.664183,
		34.714657, 30.625839, 50.749374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894764, 30.626896, 51.712574>,  <34.391918, 30.213915, 51.214302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894764, 30.626896, 51.712574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.692509, 30.836098, 51.987030>,  <33.571156, 30.961618, 52.151703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.692509, 30.836098, 51.987030>,  <33.894764, 30.626896, 51.712574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692509, 30.836098, 51.987030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227402, 0.847973, -0.478780,
		-0.832237, -0.086059, -0.547701,
		-0.505639, 0.523006, 0.686144,
		33.540817, 30.993000, 52.192875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192268, 30.908897, 51.501457>,  <33.894764, 30.626896, 51.712574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192268, 30.908897, 51.501457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367065, 31.136673, 51.779961>,  <33.471943, 31.273338, 51.947063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367065, 31.136673, 51.779961>,  <33.192268, 30.908897, 51.501457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367065, 31.136673, 51.779961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011566, 0.770461, -0.637382,
		-0.899393, 0.286582, 0.330097,
		0.436989, 0.569439, 0.696262,
		33.498161, 31.307505, 51.988838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907379, 31.510456, 51.376099>,  <33.192268, 30.908897, 51.501457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907379, 31.510456, 51.376099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.197830, 31.609728, 51.632580>,  <33.372101, 31.669291, 51.786469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.197830, 31.609728, 51.632580>,  <32.907379, 31.510456, 51.376099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197830, 31.609728, 51.632580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089233, 0.890680, -0.445788,
		-0.681744, 0.380916, 0.624602,
		0.726128, 0.248178, 0.641206,
		33.415668, 31.684181, 51.824940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726288, 32.166668, 51.469463>,  <32.907379, 31.510456, 51.376099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726288, 32.166668, 51.469463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114441, 32.132786, 51.559952>,  <33.347332, 32.112457, 51.614246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114441, 32.132786, 51.559952>,  <32.726288, 32.166668, 51.469463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114441, 32.132786, 51.559952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187055, 0.856053, -0.481854,
		-0.152842, 0.509900, 0.846547,
		0.970386, -0.084703, 0.226220,
		33.405556, 32.107376, 51.627819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863373, 32.768681, 51.731987>,  <32.726288, 32.166668, 51.469463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863373, 32.768681, 51.731987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208599, 32.599880, 51.620968>,  <33.415733, 32.498600, 51.554356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208599, 32.599880, 51.620968>,  <32.863373, 32.768681, 51.731987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208599, 32.599880, 51.620968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020187, 0.577875, -0.815875,
		0.504688, 0.698551, 0.507263,
		0.863066, -0.422002, -0.277545,
		33.467518, 32.473278, 51.537704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366486, 33.313107, 51.669437>,  <32.863373, 32.768681, 51.731987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366486, 33.313107, 51.669437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481987, 33.007977, 51.438019>,  <33.551289, 32.824898, 51.299168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481987, 33.007977, 51.438019>,  <33.366486, 33.313107, 51.669437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481987, 33.007977, 51.438019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000960, 0.604060, -0.796938,
		0.957404, 0.230671, 0.173690,
		0.288750, -0.762825, -0.578551,
		33.568611, 32.779129, 51.264454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830173, 33.575878, 51.126923>,  <33.366486, 33.313107, 51.669437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830173, 33.575878, 51.126923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708889, 33.226265, 50.975063>,  <33.636116, 33.016499, 50.883949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708889, 33.226265, 50.975063>,  <33.830173, 33.575878, 51.126923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708889, 33.226265, 50.975063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055745, 0.413989, -0.908573,
		0.951290, -0.254329, -0.174251,
		-0.303215, -0.874031, -0.379646,
		33.617924, 32.964054, 50.861168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570087, 33.659370, 51.149906>,  <33.830173, 33.575878, 51.126923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570087, 33.659370, 51.149906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897789, 33.874821, 51.228603>,  <35.094410, 34.004093, 51.275822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897789, 33.874821, 51.228603>,  <34.570087, 33.659370, 51.149906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897789, 33.874821, 51.228603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063108, -0.256321, 0.964529,
		0.569952, -0.802607, -0.176000,
		0.819251, 0.538628, 0.196742,
		35.143566, 34.036407, 51.287624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928143, 33.285400, 51.649605>,  <34.570087, 33.659370, 51.149906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928143, 33.285400, 51.649605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105835, 33.642082, 51.684315>,  <35.212452, 33.856091, 51.705139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105835, 33.642082, 51.684315>,  <34.928143, 33.285400, 51.649605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105835, 33.642082, 51.684315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034180, -0.113650, 0.992933,
		0.895261, -0.438124, -0.080965,
		0.444229, 0.891701, 0.086772,
		35.239105, 33.909592, 51.710346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530148, 33.109425, 52.029053>,  <34.928143, 33.285400, 51.649605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530148, 33.109425, 52.029053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423664, 33.490349, 52.088711>,  <35.359776, 33.718903, 52.124508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423664, 33.490349, 52.088711>,  <35.530148, 33.109425, 52.029053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423664, 33.490349, 52.088711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174625, -0.104525, 0.979071,
		0.947966, 0.286681, -0.138471,
		-0.266208, 0.952307, 0.149147,
		35.343803, 33.776039, 52.133453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055977, 33.348816, 52.490002>,  <35.530148, 33.109425, 52.029053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055977, 33.348816, 52.490002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754059, 33.609768, 52.517380>,  <35.572906, 33.766338, 52.533806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754059, 33.609768, 52.517380>,  <36.055977, 33.348816, 52.490002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754059, 33.609768, 52.517380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146776, 0.066269, 0.986947,
		0.639325, 0.754993, -0.145773,
		-0.754798, 0.652376, 0.068447,
		35.527618, 33.805481, 52.537914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356995, 33.932182, 52.790462>,  <36.055977, 33.348816, 52.490002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356995, 33.932182, 52.790462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965782, 33.957069, 52.870052>,  <35.731056, 33.972000, 52.917805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965782, 33.957069, 52.870052>,  <36.356995, 33.932182, 52.790462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965782, 33.957069, 52.870052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205492, 0.126900, 0.970397,
		0.035124, 0.989963, -0.136896,
		-0.978028, 0.062216, 0.198972,
		35.672375, 33.975735, 52.929745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332714, 34.539776, 53.096016>,  <36.356995, 33.932182, 52.790462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332714, 34.539776, 53.096016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997204, 34.347439, 53.198181>,  <35.795898, 34.232037, 53.259480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997204, 34.347439, 53.198181>,  <36.332714, 34.539776, 53.096016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997204, 34.347439, 53.198181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159450, 0.231608, 0.959653,
		-0.520600, 0.845663, -0.117598,
		-0.838780, -0.480844, 0.255416,
		35.745571, 34.203186, 53.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915627, 35.028374, 53.426903>,  <36.332714, 34.539776, 53.096016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915627, 35.028374, 53.426903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.782070, 34.673672, 53.554764>,  <35.701935, 34.460850, 53.631481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.782070, 34.673672, 53.554764>,  <35.915627, 35.028374, 53.426903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782070, 34.673672, 53.554764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092282, 0.306730, 0.947312,
		-0.938082, 0.345800, -0.020583,
		-0.333895, -0.886757, 0.319649,
		35.681900, 34.407646, 53.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785767, 35.227287, 54.091644>,  <35.915627, 35.028374, 53.426903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785767, 35.227287, 54.091644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718681, 34.833561, 54.113503>,  <35.678429, 34.597324, 54.126617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718681, 34.833561, 54.113503>,  <35.785767, 35.227287, 54.091644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718681, 34.833561, 54.113503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000592, 0.055527, 0.998457,
		-0.985835, 0.167424, -0.009896,
		-0.167715, -0.984320, 0.054641,
		35.668365, 34.538265, 54.129894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166222, 35.054695, 54.560047>,  <35.785767, 35.227287, 54.091644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166222, 35.054695, 54.560047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447067, 34.770008, 54.551136>,  <35.615574, 34.599197, 54.545788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447067, 34.770008, 54.551136>,  <35.166222, 35.054695, 54.560047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447067, 34.770008, 54.551136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135664, 0.102983, 0.985388,
		-0.699020, -0.694879, 0.168860,
		0.702115, -0.711714, -0.022283,
		35.657703, 34.556492, 54.544453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.549568, 35.305801, 38.568024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804466, 35.127003, 38.316910>,  <35.957405, 35.019726, 38.166241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804466, 35.127003, 38.316910>,  <35.549568, 35.305801, 38.568024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804466, 35.127003, 38.316910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421446, -0.479883, 0.769478,
		-0.645216, -0.754923, -0.117420,
		0.637244, -0.446993, -0.627787,
		35.995640, 34.992905, 38.128574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528645, 34.585758, 38.585320>,  <35.549568, 35.305801, 38.568024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528645, 34.585758, 38.585320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893192, 34.750397, 38.585510>,  <36.111919, 34.849178, 38.585625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893192, 34.750397, 38.585510>,  <35.528645, 34.585758, 38.585320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893192, 34.750397, 38.585510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206339, -0.457884, 0.864735,
		0.356141, -0.787992, -0.502228,
		0.911366, 0.411597, 0.000478,
		36.166603, 34.873875, 38.585655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927628, 33.977451, 38.875610>,  <35.528645, 34.585758, 38.585320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927628, 33.977451, 38.875610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115227, 34.325199, 38.937897>,  <36.227787, 34.533848, 38.975269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115227, 34.325199, 38.937897>,  <35.927628, 33.977451, 38.875610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115227, 34.325199, 38.937897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120456, -0.237623, 0.963860,
		0.874948, -0.433289, -0.216164,
		0.468995, 0.869365, 0.155715,
		36.255924, 34.586010, 38.984612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374866, 33.800991, 39.309597>,  <35.927628, 33.977451, 38.875610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374866, 33.800991, 39.309597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405449, 34.199177, 39.332272>,  <36.423798, 34.438087, 39.345875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405449, 34.199177, 39.332272>,  <36.374866, 33.800991, 39.309597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405449, 34.199177, 39.332272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060388, -0.052127, 0.996813,
		0.995242, -0.079636, 0.056128,
		0.076457, 0.995460, 0.056688,
		36.428387, 34.497814, 39.349277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935822, 33.925076, 39.849907>,  <36.374866, 33.800991, 39.309597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935822, 33.925076, 39.849907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676514, 34.228710, 39.826141>,  <36.520927, 34.410892, 39.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676514, 34.228710, 39.826141>,  <36.935822, 33.925076, 39.849907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676514, 34.228710, 39.826141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081915, 0.008042, 0.996607,
		0.756990, 0.650939, 0.056967,
		-0.648272, 0.759088, -0.059410,
		36.482033, 34.456436, 39.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107342, 34.409111, 40.363400>,  <36.935822, 33.925076, 39.849907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107342, 34.409111, 40.363400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737705, 34.534153, 40.275455>,  <36.515923, 34.609177, 40.222691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737705, 34.534153, 40.275455>,  <37.107342, 34.409111, 40.363400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737705, 34.534153, 40.275455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186781, 0.132488, 0.973427,
		0.333427, 0.940598, -0.064042,
		-0.924088, 0.312604, -0.219861,
		36.460480, 34.627934, 40.209496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111931, 35.046761, 40.712711>,  <37.107342, 34.409111, 40.363400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111931, 35.046761, 40.712711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736141, 34.924706, 40.650375>,  <36.510670, 34.851471, 40.612976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736141, 34.924706, 40.650375>,  <37.111931, 35.046761, 40.712711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736141, 34.924706, 40.650375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201833, 0.125322, 0.971369,
		-0.276874, 0.944026, -0.179324,
		-0.939470, -0.305140, -0.155837,
		36.454300, 34.833164, 40.603622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684452, 35.520973, 41.023281>,  <37.111931, 35.046761, 40.712711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684452, 35.520973, 41.023281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438484, 35.207405, 40.989021>,  <36.290901, 35.019264, 40.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438484, 35.207405, 40.989021>,  <36.684452, 35.520973, 41.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438484, 35.207405, 40.989021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217215, 0.063964, 0.974026,
		-0.758081, 0.617557, -0.209612,
		-0.614924, -0.783921, -0.085653,
		36.254005, 34.972229, 40.963326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938473, 35.707870, 41.236965>,  <36.684452, 35.520973, 41.023281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938473, 35.707870, 41.236965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978474, 35.310734, 41.263100>,  <36.002472, 35.072453, 41.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978474, 35.310734, 41.263100>,  <35.938473, 35.707870, 41.236965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978474, 35.310734, 41.263100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384615, 0.021990, 0.922815,
		-0.917645, -0.117409, -0.379662,
		0.099998, -0.992840, 0.065336,
		36.008472, 35.012882, 41.282700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293514, 35.494343, 41.534897>,  <35.938473, 35.707870, 41.236965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293514, 35.494343, 41.534897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534649, 35.183029, 41.605164>,  <35.679329, 34.996243, 41.647324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534649, 35.183029, 41.605164>,  <35.293514, 35.494343, 41.534897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534649, 35.183029, 41.605164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358143, -0.067219, 0.931244,
		-0.712963, -0.624306, -0.319259,
		0.602841, -0.778283, 0.175666,
		35.715500, 34.949543, 41.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914665, 35.060871, 41.884789>,  <35.293514, 35.494343, 41.534897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914665, 35.060871, 41.884789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289703, 34.958199, 41.978626>,  <35.514725, 34.896595, 42.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289703, 34.958199, 41.978626>,  <34.914665, 35.060871, 41.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289703, 34.958199, 41.978626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254968, -0.048693, 0.965723,
		-0.236463, -0.965268, -0.111101,
		0.937591, -0.256685, 0.234598,
		35.570980, 34.881191, 42.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838585, 34.496998, 42.302116>,  <34.914665, 35.060871, 41.884789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838585, 34.496998, 42.302116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192085, 34.657387, 42.398617>,  <35.404186, 34.753620, 42.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192085, 34.657387, 42.398617>,  <34.838585, 34.496998, 42.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192085, 34.657387, 42.398617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210898, -0.118944, 0.970245,
		0.417737, -0.908335, -0.020553,
		0.883752, 0.400973, 0.241253,
		35.457211, 34.777679, 42.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277786, 33.937504, 42.102230>,  <34.838585, 34.496998, 42.302116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277786, 33.937504, 42.102230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900623, 33.891071, 42.227097>,  <33.674324, 33.863213, 42.302017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900623, 33.891071, 42.227097>,  <34.277786, 33.937504, 42.102230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900623, 33.891071, 42.227097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305272, -0.073537, -0.949422,
		0.133171, -0.990513, 0.033901,
		-0.942908, -0.116086, 0.312169,
		33.617752, 33.856247, 42.320747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149185, 33.432640, 41.562336>,  <34.277786, 33.937504, 42.102230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149185, 33.432640, 41.562336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791817, 33.515209, 41.721931>,  <33.577396, 33.564751, 41.817688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791817, 33.515209, 41.721931>,  <34.149185, 33.432640, 41.562336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791817, 33.515209, 41.721931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407040, 0.003796, -0.913403,
		-0.190061, -0.978456, 0.080631,
		-0.893418, 0.206422, 0.398992,
		33.523792, 33.577137, 41.841629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554745, 32.864075, 41.465797>,  <34.149185, 33.432640, 41.562336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554745, 32.864075, 41.465797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417542, 33.238800, 41.493301>,  <33.335220, 33.463634, 41.509804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417542, 33.238800, 41.493301>,  <33.554745, 32.864075, 41.465797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417542, 33.238800, 41.493301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318414, -0.047091, -0.946781,
		-0.883718, -0.346648, 0.314447,
		-0.343008, 0.936813, 0.068762,
		33.314640, 33.519844, 41.513931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086628, 32.921616, 41.038273>,  <33.554745, 32.864075, 41.465797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086628, 32.921616, 41.038273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000168, 33.308716, 41.090015>,  <32.948292, 33.540977, 41.121059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000168, 33.308716, 41.090015>,  <33.086628, 32.921616, 41.038273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000168, 33.308716, 41.090015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396245, 0.034140, -0.917510,
		-0.892340, -0.249574, 0.376088,
		-0.216147, 0.967754, 0.129357,
		32.935322, 33.599041, 41.128822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424225, 33.045311, 40.962116>,  <33.086628, 32.921616, 41.038273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424225, 33.045311, 40.962116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604332, 33.392570, 40.878620>,  <32.712395, 33.600925, 40.828522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604332, 33.392570, 40.878620>,  <32.424225, 33.045311, 40.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604332, 33.392570, 40.878620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416045, -0.002858, -0.909340,
		-0.790042, 0.496289, 0.359904,
		0.450267, 0.868153, -0.208736,
		32.739410, 33.653015, 40.815998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020367, 33.391933, 40.496048>,  <32.424225, 33.045311, 40.962116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020367, 33.391933, 40.496048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352909, 33.609947, 40.452629>,  <32.552433, 33.740757, 40.426579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352909, 33.609947, 40.452629>,  <32.020367, 33.391933, 40.496048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352909, 33.609947, 40.452629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309881, 0.292496, -0.904666,
		-0.461324, 0.785737, 0.412065,
		0.831357, 0.545035, -0.108549,
		32.602318, 33.773457, 40.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790783, 34.044090, 40.489906>,  <32.020367, 33.391933, 40.496048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790783, 34.044090, 40.489906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130260, 34.009907, 40.281132>,  <32.333946, 33.989395, 40.155869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130260, 34.009907, 40.281132>,  <31.790783, 34.044090, 40.489906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130260, 34.009907, 40.281132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458694, 0.372341, -0.806822,
		0.263288, 0.924153, 0.276804,
		0.848693, -0.085458, -0.521936,
		32.384869, 33.984268, 40.124550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944273, 34.744942, 40.168400>,  <31.790783, 34.044090, 40.489906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944273, 34.744942, 40.168400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095253, 34.448097, 39.946842>,  <32.185841, 34.269989, 39.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095253, 34.448097, 39.946842>,  <31.944273, 34.744942, 40.168400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095253, 34.448097, 39.946842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531934, 0.315855, -0.785673,
		0.758009, 0.591186, -0.275537,
		0.377449, -0.742115, -0.553893,
		32.208488, 34.225464, 39.780674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724009, 34.916252, 39.509396>,  <31.944273, 34.744942, 40.168400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724009, 34.916252, 39.509396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921682, 34.576183, 39.436737>,  <32.040287, 34.372143, 39.393143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921682, 34.576183, 39.436737>,  <31.724009, 34.916252, 39.509396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921682, 34.576183, 39.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458245, -0.077182, -0.885468,
		0.738777, 0.520823, -0.427728,
		0.494185, -0.850168, -0.181644,
		32.069939, 34.321133, 39.382244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116913, 35.005264, 38.839947>,  <31.724009, 34.916252, 39.509396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116913, 35.005264, 38.839947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070255, 34.611446, 38.892197>,  <32.042259, 34.375156, 38.923546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070255, 34.611446, 38.892197>,  <32.116913, 35.005264, 38.839947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070255, 34.611446, 38.892197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207346, -0.104489, -0.972672,
		0.971289, -0.140541, -0.191953,
		-0.116643, -0.984546, 0.130629,
		32.035263, 34.316082, 38.931385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499138, 34.716625, 38.219826>,  <32.116913, 35.005264, 38.839947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499138, 34.716625, 38.219826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233822, 34.457760, 38.370148>,  <32.074631, 34.302441, 38.460342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233822, 34.457760, 38.370148>,  <32.499138, 34.716625, 38.219826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233822, 34.457760, 38.370148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457585, -0.046634, -0.887942,
		0.592165, -0.760927, -0.265198,
		-0.663292, -0.647159, 0.375803,
		32.034836, 34.263611, 38.482887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618248, 34.027008, 37.778244>,  <32.499138, 34.716625, 38.219826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618248, 34.027008, 37.778244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258099, 34.098389, 37.936981>,  <32.042007, 34.141216, 38.032223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258099, 34.098389, 37.936981>,  <32.618248, 34.027008, 37.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258099, 34.098389, 37.936981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418423, -0.104866, -0.902178,
		-0.119399, -0.978341, 0.169095,
		-0.900370, 0.178472, 0.396840,
		31.987988, 34.151924, 38.056034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591076, 33.240517, 38.069958>,  <32.618248, 34.027008, 37.778244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591076, 33.240517, 38.069958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934738, 33.139858, 38.248180>,  <33.140938, 33.079464, 38.355114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934738, 33.139858, 38.248180>,  <32.591076, 33.240517, 38.069958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934738, 33.139858, 38.248180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507996, -0.524164, 0.683515,
		0.061542, -0.813589, -0.578174,
		0.859158, -0.251645, 0.445558,
		33.192486, 33.064365, 38.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041962, 32.718327, 37.902298>,  <32.591076, 33.240517, 38.069958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041962, 32.718327, 37.902298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817001, 32.487030, 37.665874>,  <31.682024, 32.348251, 37.524021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817001, 32.487030, 37.665874>,  <32.041962, 32.718327, 37.902298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817001, 32.487030, 37.665874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319919, -0.506976, 0.800392,
		-0.762467, 0.639232, 0.100135,
		-0.562402, -0.578238, -0.591055,
		31.648281, 32.313560, 37.488560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367006, 32.744507, 38.086365>,  <32.041962, 32.718327, 37.902298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367006, 32.744507, 38.086365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356749, 32.398407, 37.886089>,  <31.350594, 32.190746, 37.765926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356749, 32.398407, 37.886089>,  <31.367006, 32.744507, 38.086365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356749, 32.398407, 37.886089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416436, -0.446078, 0.792209,
		-0.908803, 0.228821, -0.348881,
		-0.025646, -0.865249, -0.500686,
		31.349054, 32.138832, 37.735882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723959, 32.366741, 38.173958>,  <31.367006, 32.744507, 38.086365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723959, 32.366741, 38.173958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984734, 32.072239, 38.101395>,  <31.141199, 31.895538, 38.057858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984734, 32.072239, 38.101395>,  <30.723959, 32.366741, 38.173958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984734, 32.072239, 38.101395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279623, -0.455805, 0.845017,
		-0.704832, -0.500173, -0.503029,
		0.651938, -0.736253, -0.181406,
		31.180315, 31.851362, 38.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375645, 31.829313, 38.468014>,  <30.723959, 32.366741, 38.173958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375645, 31.829313, 38.468014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764946, 31.738623, 38.453201>,  <30.998528, 31.684208, 38.444313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764946, 31.738623, 38.453201>,  <30.375645, 31.829313, 38.468014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764946, 31.738623, 38.453201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063321, -0.419706, 0.905449,
		-0.220832, -0.878887, -0.422837,
		0.973254, -0.226726, -0.037033,
		31.056923, 31.670605, 38.442093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503103, 31.039452, 38.634575>,  <30.375645, 31.829313, 38.468014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503103, 31.039452, 38.634575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847940, 31.220045, 38.726627>,  <31.054842, 31.328402, 38.781857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847940, 31.220045, 38.726627>,  <30.503103, 31.039452, 38.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847940, 31.220045, 38.726627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002118, -0.450910, 0.892567,
		0.506748, -0.769962, -0.387770,
		0.862092, 0.451485, 0.230128,
		31.106567, 31.355490, 38.795666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929707, 30.486164, 38.841297>,  <30.503103, 31.039452, 38.634575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929707, 30.486164, 38.841297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108910, 30.826859, 38.949986>,  <31.216433, 31.031275, 39.015198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108910, 30.826859, 38.949986>,  <30.929707, 30.486164, 38.841297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108910, 30.826859, 38.949986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331822, -0.440635, 0.834107,
		0.830170, -0.283524, -0.480034,
		0.448009, 0.851736, 0.271723,
		31.243313, 31.082380, 39.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552290, 30.305389, 39.078094>,  <30.929707, 30.486164, 38.841297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552290, 30.305389, 39.078094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508181, 30.672438, 39.230835>,  <31.481714, 30.892666, 39.322479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508181, 30.672438, 39.230835>,  <31.552290, 30.305389, 39.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508181, 30.672438, 39.230835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172970, -0.360615, 0.916536,
		0.978734, 0.167119, -0.118955,
		-0.110274, 0.917621, 0.381853,
		31.475098, 30.947723, 39.345390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978817, 30.306273, 39.541599>,  <31.552290, 30.305389, 39.078094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978817, 30.306273, 39.541599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717581, 30.584099, 39.662300>,  <31.560839, 30.750795, 39.734718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717581, 30.584099, 39.662300>,  <31.978817, 30.306273, 39.541599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717581, 30.584099, 39.662300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028693, -0.375479, 0.926386,
		0.756738, 0.613670, 0.225292,
		-0.653088, 0.694567, 0.301747,
		31.521654, 30.792469, 39.752823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272327, 30.676031, 40.159126>,  <31.978817, 30.306273, 39.541599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272327, 30.676031, 40.159126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879108, 30.749334, 40.156635>,  <31.643177, 30.793316, 40.155140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879108, 30.749334, 40.156635>,  <32.272327, 30.676031, 40.159126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879108, 30.749334, 40.156635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043303, -0.199001, 0.979042,
		0.178178, 0.962712, 0.203563,
		-0.983045, 0.183259, -0.006231,
		31.584194, 30.804312, 40.154766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239811, 31.170425, 40.697876>,  <32.272327, 30.676031, 40.159126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239811, 31.170425, 40.697876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856672, 31.061420, 40.661488>,  <31.626791, 30.996017, 40.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856672, 31.061420, 40.661488>,  <32.239811, 31.170425, 40.697876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856672, 31.061420, 40.661488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057574, -0.128135, 0.990084,
		-0.281468, 0.953582, 0.107043,
		-0.957842, -0.272514, -0.090967,
		31.569319, 30.979666, 40.634197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844395, 31.510094, 41.182785>,  <32.239811, 31.170425, 40.697876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844395, 31.510094, 41.182785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633472, 31.178110, 41.109993>,  <31.506918, 30.978920, 41.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633472, 31.178110, 41.109993>,  <31.844395, 31.510094, 41.182785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633472, 31.178110, 41.109993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130702, -0.290855, 0.947798,
		-0.839562, 0.475995, 0.261847,
		-0.527307, -0.829959, -0.181977,
		31.475281, 30.929123, 41.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354927, 31.424870, 41.713982>,  <31.844395, 31.510094, 41.182785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354927, 31.424870, 41.713982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383621, 31.054560, 41.565495>,  <31.400837, 30.832375, 41.476402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383621, 31.054560, 41.565495>,  <31.354927, 31.424870, 41.713982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383621, 31.054560, 41.565495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130058, -0.360313, 0.923720,
		-0.988908, -0.114541, 0.094558,
		0.071733, -0.925773, -0.371213,
		31.405142, 30.776829, 41.454132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980438, 30.984997, 42.163910>,  <31.354927, 31.424870, 41.713982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980438, 30.984997, 42.163910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195383, 30.707571, 41.971989>,  <31.324350, 30.541115, 41.856834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195383, 30.707571, 41.971989>,  <30.980438, 30.984997, 42.163910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195383, 30.707571, 41.971989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072645, -0.528742, 0.845668,
		-0.840218, -0.489284, -0.233741,
		0.537361, -0.693565, -0.479803,
		31.356592, 30.499502, 41.828049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662619, 30.344191, 42.353233>,  <30.980438, 30.984997, 42.163910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662619, 30.344191, 42.353233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037354, 30.260315, 42.241257>,  <31.262194, 30.209990, 42.174068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037354, 30.260315, 42.241257>,  <30.662619, 30.344191, 42.353233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037354, 30.260315, 42.241257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116621, -0.567307, 0.815207,
		-0.329754, -0.796363, -0.507019,
		0.936836, -0.209688, -0.279944,
		31.318405, 30.197409, 42.157272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732233, 29.672754, 42.456429>,  <30.662619, 30.344191, 42.353233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732233, 29.672754, 42.456429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109261, 29.806358, 42.457348>,  <31.335476, 29.886520, 42.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109261, 29.806358, 42.457348>,  <30.732233, 29.672754, 42.456429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109261, 29.806358, 42.457348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204695, -0.583056, 0.786222,
		0.263946, -0.740597, -0.617939,
		0.942567, 0.334009, 0.002299,
		31.392031, 29.906561, 42.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082394, 29.099558, 42.684689>,  <30.732233, 29.672754, 42.456429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082394, 29.099558, 42.684689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374157, 29.369188, 42.731308>,  <31.549215, 29.530968, 42.759281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374157, 29.369188, 42.731308>,  <31.082394, 29.099558, 42.684689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374157, 29.369188, 42.731308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415109, -0.571562, 0.707815,
		0.543737, -0.467905, -0.696717,
		0.729407, 0.674078, 0.116548,
		31.592979, 29.571411, 42.766273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668688, 28.669252, 42.679295>,  <31.082394, 29.099558, 42.684689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668688, 28.669252, 42.679295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758387, 29.014957, 42.859409>,  <31.812206, 29.222382, 42.967480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758387, 29.014957, 42.859409>,  <31.668688, 28.669252, 42.679295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758387, 29.014957, 42.859409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534606, -0.495424, 0.684655,
		0.814807, 0.087196, -0.573137,
		0.224247, 0.864264, 0.450290,
		31.825661, 29.274237, 42.994495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377991, 28.662748, 42.845654>,  <31.668688, 28.669252, 42.679295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377991, 28.662748, 42.845654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247128, 28.943720, 43.098499>,  <32.168610, 29.112303, 43.250206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247128, 28.943720, 43.098499>,  <32.377991, 28.662748, 42.845654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247128, 28.943720, 43.098499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548440, -0.403595, 0.732342,
		0.769535, 0.586263, -0.253202,
		-0.327154, 0.702429, 0.632110,
		32.148983, 29.154449, 43.288132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959576, 28.761065, 43.206982>,  <32.377991, 28.662748, 42.845654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959576, 28.761065, 43.206982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677937, 28.934576, 43.431870>,  <32.508953, 29.038683, 43.566803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677937, 28.934576, 43.431870>,  <32.959576, 28.761065, 43.206982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677937, 28.934576, 43.431870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463804, -0.318606, 0.826666,
		0.537715, 0.842809, 0.023141,
		-0.704094, 0.433777, 0.562217,
		32.466709, 29.064709, 43.600536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303589, 29.023001, 43.748230>,  <32.959576, 28.761065, 43.206982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303589, 29.023001, 43.748230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927132, 29.001366, 43.881695>,  <32.701260, 28.988384, 43.961773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927132, 29.001366, 43.881695>,  <33.303589, 29.023001, 43.748230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927132, 29.001366, 43.881695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336630, -0.060760, 0.939675,
		-0.030553, 0.996686, 0.075392,
		-0.941141, -0.054089, 0.333658,
		32.644791, 28.985140, 43.981792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255692, 29.469183, 44.308086>,  <33.303589, 29.023001, 43.748230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255692, 29.469183, 44.308086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957474, 29.206301, 44.352341>,  <32.778542, 29.048571, 44.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957474, 29.206301, 44.352341>,  <33.255692, 29.469183, 44.308086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957474, 29.206301, 44.352341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234577, -0.103393, 0.966583,
		-0.623805, 0.746587, 0.231250,
		-0.745548, -0.657205, 0.110635,
		32.733810, 29.009140, 44.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875000, 29.692242, 44.980694>,  <33.255692, 29.469183, 44.308086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875000, 29.692242, 44.980694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795734, 29.307034, 44.907681>,  <32.748173, 29.075909, 44.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795734, 29.307034, 44.907681>,  <32.875000, 29.692242, 44.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795734, 29.307034, 44.907681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316970, -0.239184, 0.917780,
		-0.927502, 0.124015, 0.352647,
		-0.198166, -0.963022, -0.182535,
		32.736286, 29.018127, 44.852921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605034, 29.477444, 45.609055>,  <32.875000, 29.692242, 44.980694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605034, 29.477444, 45.609055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646809, 29.116993, 45.440739>,  <32.671875, 28.900723, 45.339748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646809, 29.116993, 45.440739>,  <32.605034, 29.477444, 45.609055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646809, 29.116993, 45.440739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165301, -0.401490, 0.900823,
		-0.980698, -0.163639, 0.107026,
		0.104440, -0.901126, -0.420790,
		32.678139, 28.846655, 45.314503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257317, 29.072050, 46.044361>,  <32.605034, 29.477444, 45.609055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257317, 29.072050, 46.044361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486435, 28.813023, 45.843342>,  <32.623905, 28.657606, 45.722729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486435, 28.813023, 45.843342>,  <32.257317, 29.072050, 46.044361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486435, 28.813023, 45.843342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141938, -0.525474, 0.838887,
		-0.807314, -0.551844, -0.209076,
		0.572799, -0.647569, -0.502550,
		32.658276, 28.618752, 45.692577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974176, 28.428616, 46.180218>,  <32.257317, 29.072050, 46.044361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974176, 28.428616, 46.180218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362679, 28.392693, 46.092037>,  <32.595779, 28.371140, 46.039127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362679, 28.392693, 46.092037>,  <31.974176, 28.428616, 46.180218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362679, 28.392693, 46.092037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165934, -0.408588, 0.897509,
		-0.170677, -0.908290, -0.381941,
		0.971254, -0.089808, -0.220453,
		32.654057, 28.365749, 46.025902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129749, 27.875517, 46.548374>,  <31.974176, 28.428616, 46.180218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129749, 27.875517, 46.548374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 28.048723, 46.469601>,  <32.692699, 28.152647, 46.422337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 28.048723, 46.469601>,  <32.129749, 27.875517, 46.548374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481594, 28.048723, 46.469601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367164, -0.354794, 0.859832,
		0.302448, -0.828626, -0.471068,
		0.879611, 0.433014, -0.196935,
		32.745476, 28.178627, 46.410519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554523, 27.409878, 46.685596>,  <32.129749, 27.875517, 46.548374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554523, 27.409878, 46.685596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766541, 27.747311, 46.720078>,  <32.893749, 27.949770, 46.740768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766541, 27.747311, 46.720078>,  <32.554523, 27.409878, 46.685596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766541, 27.747311, 46.720078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348873, -0.309595, 0.884556,
		0.772883, -0.438774, -0.458399,
		0.530038, 0.843581, 0.086204,
		32.925552, 28.000385, 46.745937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269852, 27.213287, 46.861744>,  <32.554523, 27.409878, 46.685596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269852, 27.213287, 46.861744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203465, 27.590870, 46.975864>,  <33.163631, 27.817419, 47.044338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203465, 27.590870, 46.975864>,  <33.269852, 27.213287, 46.861744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203465, 27.590870, 46.975864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464177, -0.180482, 0.867160,
		0.870054, 0.276353, -0.408209,
		-0.165968, 0.943957, 0.285305,
		33.153675, 27.874058, 47.061455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970829, 27.478834, 47.195721>,  <33.269852, 27.213287, 46.861744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970829, 27.478834, 47.195721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677803, 27.715960, 47.329536>,  <33.501987, 27.858234, 47.409824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677803, 27.715960, 47.329536>,  <33.970829, 27.478834, 47.195721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677803, 27.715960, 47.329536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316463, -0.138513, 0.938438,
		0.602658, 0.793338, -0.086134,
		-0.732567, 0.592815, 0.334538,
		33.458035, 27.893805, 47.429897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553493, 27.905895, 46.852810>,  <33.970829, 27.478834, 47.195721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553493, 27.905895, 46.852810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890392, 27.699097, 46.791710>,  <35.092533, 27.575018, 46.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890392, 27.699097, 46.791710>,  <34.553493, 27.905895, 46.852810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890392, 27.699097, 46.791710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173896, 0.007654, -0.984734,
		0.510273, 0.855954, -0.083457,
		0.842248, -0.516996, -0.152752,
		35.143066, 27.543999, 46.745884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897312, 28.283407, 46.336971>,  <34.553493, 27.905895, 46.852810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897312, 28.283407, 46.336971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022377, 27.903461, 46.337349>,  <35.097416, 27.675495, 46.337574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022377, 27.903461, 46.337349>,  <34.897312, 28.283407, 46.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022377, 27.903461, 46.337349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162627, 0.052554, -0.985287,
		0.935839, 0.308217, 0.170905,
		0.312664, -0.949863, 0.000943,
		35.116177, 27.618502, 46.337631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372738, 28.282406, 45.733566>,  <34.897312, 28.283407, 46.336971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372738, 28.282406, 45.733566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272434, 27.902794, 45.809948>,  <35.212250, 27.675028, 45.855778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272434, 27.902794, 45.809948>,  <35.372738, 28.282406, 45.733566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272434, 27.902794, 45.809948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126443, -0.227674, -0.965493,
		0.959755, -0.217965, 0.177090,
		-0.250763, -0.949029, 0.190952,
		35.197205, 27.618086, 45.867233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937160, 27.904379, 45.523552>,  <35.372738, 28.282406, 45.733566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937160, 27.904379, 45.523552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634186, 27.643429, 45.534100>,  <35.452400, 27.486858, 45.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634186, 27.643429, 45.534100>,  <35.937160, 27.904379, 45.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634186, 27.643429, 45.534100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272654, -0.352744, -0.895115,
		0.593255, -0.670802, 0.445055,
		-0.757435, -0.652377, 0.026370,
		35.406956, 27.447716, 45.542011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169598, 27.231287, 45.230286>,  <35.937160, 27.904379, 45.523552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169598, 27.231287, 45.230286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771282, 27.195021, 45.224964>,  <35.532291, 27.173262, 45.221771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771282, 27.195021, 45.224964>,  <36.169598, 27.231287, 45.230286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771282, 27.195021, 45.224964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042968, -0.333702, -0.941699,
		0.080937, -0.938309, 0.336193,
		-0.995793, -0.090664, -0.013308,
		35.472546, 27.167822, 45.220970>
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
