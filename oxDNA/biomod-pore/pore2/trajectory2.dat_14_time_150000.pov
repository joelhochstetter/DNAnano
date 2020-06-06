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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<23.381933, 16.256731, -1.175602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143944, 16.453373, -1.429949>,  <23.001150, 16.571358, -1.582557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143944, 16.453373, -1.429949>,  <23.381933, 16.256731, -1.175602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143944, 16.453373, -1.429949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354292, 0.549709, 0.756503,
		0.721444, 0.675384, -0.152892,
		-0.594976, 0.491606, -0.635867,
		22.965450, 16.600855, -1.620709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.419415, 16.975349, -1.011542>,  <23.381933, 16.256731, -1.175602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.419415, 16.975349, -1.011542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074883, 16.909206, -1.203694>,  <22.868162, 16.869520, -1.318986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074883, 16.909206, -1.203694>,  <23.419415, 16.975349, -1.011542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.074883, 16.909206, -1.203694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475175, 0.596788, 0.646570,
		0.179771, 0.785176, -0.592605,
		-0.861331, -0.165356, -0.480381,
		22.816483, 16.859600, -1.347809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171124, 17.639359, -1.053311>,  <23.419415, 16.975349, -1.011542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171124, 17.639359, -1.053311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870392, 17.376938, -1.079704>,  <22.689953, 17.219486, -1.095540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870392, 17.376938, -1.079704>,  <23.171124, 17.639359, -1.053311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870392, 17.376938, -1.079704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547071, 0.564799, 0.617831,
		-0.368061, 0.500600, -0.783537,
		-0.751827, -0.656050, -0.065983,
		22.644844, 17.180122, -1.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.513865, 17.931839, -1.399967>,  <23.171124, 17.639359, -1.053311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.513865, 17.931839, -1.399967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481518, 17.671013, -1.098432>,  <22.462111, 17.514517, -0.917510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481518, 17.671013, -1.098432>,  <22.513865, 17.931839, -1.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481518, 17.671013, -1.098432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583867, 0.643958, 0.494386,
		-0.807812, -0.400163, -0.432792,
		-0.080865, -0.652064, 0.753839,
		22.457258, 17.475393, -0.872280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816490, 17.670347, -1.287610>,  <22.513865, 17.931839, -1.399967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816490, 17.670347, -1.287610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.023857, 17.711155, -0.948002>,  <22.148277, 17.735640, -0.744237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.023857, 17.711155, -0.948002>,  <21.816490, 17.670347, -1.287610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.023857, 17.711155, -0.948002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750397, 0.530378, 0.394467,
		-0.410058, -0.841601, 0.351512,
		0.518418, 0.102019, 0.849020,
		22.179382, 17.741760, -0.693296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507364, 17.532084, -0.566167>,  <21.816490, 17.670347, -1.287610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507364, 17.532084, -0.566167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785892, 17.819176, -0.566059>,  <21.953011, 17.991430, -0.565995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785892, 17.819176, -0.566059>,  <21.507364, 17.532084, -0.566167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785892, 17.819176, -0.566059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714240, 0.692899, 0.098753,
		0.070692, -0.068956, 0.995112,
		0.696322, 0.717730, 0.000269,
		21.994789, 18.034494, -0.565979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362823, 17.997448, -0.019951>,  <21.507364, 17.532084, -0.566167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362823, 17.997448, -0.019951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.592304, 18.220505, -0.259918>,  <21.729992, 18.354340, -0.403899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.592304, 18.220505, -0.259918>,  <21.362823, 17.997448, -0.019951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.592304, 18.220505, -0.259918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625651, 0.771063, 0.118420,
		0.528610, 0.307401, 0.791250,
		0.573701, 0.557643, -0.599918,
		21.764414, 18.387798, -0.439894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.519300, 18.628414, 0.307523>,  <21.362823, 17.997448, -0.019951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.519300, 18.628414, 0.307523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.555996, 18.714661, -0.081341>,  <21.578014, 18.766409, -0.314659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.555996, 18.714661, -0.081341>,  <21.519300, 18.628414, 0.307523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555996, 18.714661, -0.081341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489829, 0.859766, 0.144464,
		0.866978, 0.462939, 0.184492,
		0.091742, 0.215616, -0.972159,
		21.583517, 18.779345, -0.372989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568922, 19.321188, 0.025220>,  <21.519300, 18.628414, 0.307523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568922, 19.321188, 0.025220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.389370, 19.211014, -0.314814>,  <21.281639, 19.144909, -0.518834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.389370, 19.211014, -0.314814>,  <21.568922, 19.321188, 0.025220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389370, 19.211014, -0.314814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490290, 0.871245, -0.023399,
		0.747076, 0.406285, -0.526128,
		-0.448879, -0.275437, -0.850084,
		21.254705, 19.128384, -0.569839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638973, 19.692066, -0.630470>,  <21.568922, 19.321188, 0.025220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638973, 19.692066, -0.630470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279423, 19.527225, -0.690064>,  <21.063692, 19.428320, -0.725820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279423, 19.527225, -0.690064>,  <21.638973, 19.692066, -0.630470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279423, 19.527225, -0.690064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356887, 0.885740, -0.296812,
		0.254279, -0.213626, -0.943242,
		-0.898874, -0.412104, -0.148985,
		21.009760, 19.403595, -0.734760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262846, 19.927593, -1.250358>,  <21.638973, 19.692066, -0.630470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262846, 19.927593, -1.250358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.990047, 19.822765, -0.977241>,  <20.826368, 19.759869, -0.813371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.990047, 19.822765, -0.977241>,  <21.262846, 19.927593, -1.250358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.990047, 19.822765, -0.977241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526897, 0.823527, -0.210197,
		-0.507212, -0.503114, -0.699723,
		-0.681994, -0.262068, 0.682792,
		20.785450, 19.744144, -0.772404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604677, 20.014881, -1.536094>,  <21.262846, 19.927593, -1.250358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604677, 20.014881, -1.536094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536465, 20.016396, -1.141956>,  <20.495537, 20.017303, -0.905473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536465, 20.016396, -1.141956>,  <20.604677, 20.014881, -1.536094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536465, 20.016396, -1.141956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605868, 0.788217, -0.107885,
		-0.777074, -0.615386, -0.132121,
		-0.170531, 0.003787, 0.985345,
		20.485306, 20.017532, -0.846352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911329, 20.037642, -1.389784>,  <20.604677, 20.014881, -1.536094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911329, 20.037642, -1.389784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.104794, 20.259575, -1.119012>,  <20.220871, 20.392735, -0.956549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.104794, 20.259575, -1.119012>,  <19.911329, 20.037642, -1.389784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104794, 20.259575, -1.119012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537961, 0.798518, -0.270125,
		-0.690415, -0.233514, 0.684689,
		0.483658, 0.554834, 0.676929,
		20.249891, 20.426025, -0.915933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112593, 20.781105, -1.548776>,  <19.911329, 20.037642, -1.389784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112593, 20.781105, -1.548776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002880, 21.062935, -1.810569>,  <19.937054, 21.232033, -1.967645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002880, 21.062935, -1.810569>,  <20.112593, 20.781105, -1.548776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002880, 21.062935, -1.810569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489245, 0.483683, 0.725734,
		0.827895, 0.519257, 0.212044,
		-0.274280, 0.704573, -0.654482,
		19.920595, 21.274307, -2.006914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230953, 21.488552, -1.347229>,  <20.112593, 20.781105, -1.548776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230953, 21.488552, -1.347229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897060, 21.392200, -1.545298>,  <19.696724, 21.334389, -1.664140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897060, 21.392200, -1.545298>,  <20.230953, 21.488552, -1.347229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897060, 21.392200, -1.545298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544404, 0.496106, 0.676389,
		0.082731, 0.834179, -0.545252,
		-0.834733, -0.240879, -0.495174,
		19.646641, 21.319937, -1.693851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813980, 22.001415, -1.645193>,  <20.230953, 21.488552, -1.347229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813980, 22.001415, -1.645193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598091, 21.702003, -1.491100>,  <19.468557, 21.522356, -1.398644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598091, 21.702003, -1.491100>,  <19.813980, 22.001415, -1.645193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598091, 21.702003, -1.491100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338518, 0.611953, 0.714786,
		-0.770782, 0.255378, -0.583675,
		-0.539722, -0.748529, 0.385232,
		19.436174, 21.477446, -1.375530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101765, 22.252319, -1.773111>,  <19.813980, 22.001415, -1.645193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101765, 22.252319, -1.773111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.168869, 22.007950, -1.463627>,  <19.209131, 21.861328, -1.277937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.168869, 22.007950, -1.463627>,  <19.101765, 22.252319, -1.773111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.168869, 22.007950, -1.463627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480878, 0.634417, 0.605204,
		-0.860589, -0.473590, -0.187349,
		0.167761, -0.610924, 0.773710,
		19.219198, 21.824673, -1.231514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458496, 21.937790, -1.347114>,  <19.101765, 22.252319, -1.773111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458496, 21.937790, -1.347114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.784344, 21.969696, -1.117318>,  <18.979853, 21.988840, -0.979441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.784344, 21.969696, -1.117318>,  <18.458496, 21.937790, -1.347114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784344, 21.969696, -1.117318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567099, 0.317283, 0.760086,
		-0.121649, -0.944971, 0.303697,
		0.814617, 0.079762, 0.574489,
		19.028728, 21.993626, -0.944972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498857, 21.394680, -0.703553>,  <18.458496, 21.937790, -1.347114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498857, 21.394680, -0.703553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665829, 21.754665, -0.653245>,  <18.766010, 21.970657, -0.623061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665829, 21.754665, -0.653245>,  <18.498857, 21.394680, -0.703553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665829, 21.754665, -0.653245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637180, 0.191201, 0.746622,
		0.647887, -0.391797, 0.653252,
		0.417427, 0.899965, 0.125769,
		18.791058, 22.024654, -0.615515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813116, 21.499319, -0.067468>,  <18.498857, 21.394680, -0.703553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813116, 21.499319, -0.067468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660595, 21.850075, -0.184547>,  <18.569082, 22.060528, -0.254794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660595, 21.850075, -0.184547>,  <18.813116, 21.499319, -0.067468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660595, 21.850075, -0.184547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567818, 0.027696, 0.822688,
		0.729514, 0.479892, 0.487353,
		-0.381304, 0.876890, -0.292696,
		18.546204, 22.113142, -0.272356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775789, 21.922968, 0.560651>,  <18.813116, 21.499319, -0.067468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775789, 21.922968, 0.560651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.495888, 22.028965, 0.295285>,  <18.327946, 22.092564, 0.136065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.495888, 22.028965, 0.295285>,  <18.775789, 21.922968, 0.560651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495888, 22.028965, 0.295285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705610, -0.111297, 0.699805,
		0.111608, 0.957805, 0.264864,
		-0.699755, 0.264995, -0.663416,
		18.285961, 22.108463, 0.096260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238752, 22.391291, 0.862297>,  <18.775789, 21.922968, 0.560651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238752, 22.391291, 0.862297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.060886, 22.169491, 0.580928>,  <17.954166, 22.036411, 0.412107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.060886, 22.169491, 0.580928>,  <18.238752, 22.391291, 0.862297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060886, 22.169491, 0.580928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683835, -0.297039, 0.666436,
		-0.578481, 0.777367, -0.247102,
		-0.444667, -0.554498, -0.703423,
		17.927486, 22.003141, 0.369901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655348, 22.639450, 0.673411>,  <18.238752, 22.391291, 0.862297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.655348, 22.639450, 0.673411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629166, 22.241791, 0.707787>,  <17.613457, 22.003195, 0.728412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629166, 22.241791, 0.707787>,  <17.655348, 22.639450, 0.673411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.629166, 22.241791, 0.707787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582400, 0.107995, 0.805696,
		-0.810262, 0.002687, -0.586061,
		-0.065456, -0.994147, 0.085940,
		17.609529, 21.943546, 0.733569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125643, 22.209513, 0.918934>,  <17.655348, 22.639450, 0.673411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125643, 22.209513, 0.918934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007603, 21.835964, 0.838140>,  <16.936779, 21.611835, 0.789663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007603, 21.835964, 0.838140>,  <17.125643, 22.209513, 0.918934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007603, 21.835964, 0.838140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241194, -0.277364, 0.929997,
		-0.924523, 0.225722, 0.307094,
		-0.295098, -0.933873, -0.201987,
		16.919073, 21.555803, 0.777543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421421, 21.910549, 1.122437>,  <17.125643, 22.209513, 0.918934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421421, 21.910549, 1.122437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710182, 21.633888, 1.131142>,  <16.883438, 21.467892, 1.136365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710182, 21.633888, 1.131142>,  <16.421421, 21.910549, 1.122437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710182, 21.633888, 1.131142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074304, -0.046209, 0.996164,
		-0.687995, -0.720750, -0.084751,
		0.721901, -0.691654, 0.021763,
		16.926752, 21.426392, 1.137671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241938, 21.313072, 1.499071>,  <16.421421, 21.910549, 1.122437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241938, 21.313072, 1.499071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.631760, 21.371624, 1.566977>,  <16.865652, 21.406755, 1.607720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.631760, 21.371624, 1.566977>,  <16.241938, 21.313072, 1.499071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631760, 21.371624, 1.566977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167661, -0.026684, 0.985483,
		0.148785, -0.988868, -0.001463,
		0.974553, 0.146380, 0.169765,
		16.924126, 21.415537, 1.617906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396442, 20.851202, 2.060169>,  <16.241938, 21.313072, 1.499071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396442, 20.851202, 2.060169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.682373, 21.130535, 2.045452>,  <16.853931, 21.298136, 2.036622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.682373, 21.130535, 2.045452>,  <16.396442, 20.851202, 2.060169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682373, 21.130535, 2.045452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059981, 0.113646, 0.991709,
		0.696725, -0.706693, 0.123124,
		0.714826, 0.698334, -0.036792,
		16.896820, 21.340034, 2.034414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977425, 20.764879, 2.597452>,  <16.396442, 20.851202, 2.060169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977425, 20.764879, 2.597452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932308, 21.150501, 2.501224>,  <16.905239, 21.381874, 2.443487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932308, 21.150501, 2.501224>,  <16.977425, 20.764879, 2.597452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932308, 21.150501, 2.501224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157183, 0.256379, 0.953710,
		0.981108, 0.069756, -0.180450,
		-0.112790, 0.964056, -0.240571,
		16.898472, 21.439718, 2.429053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568022, 21.159267, 2.709676>,  <16.977425, 20.764879, 2.597452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568022, 21.159267, 2.709676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241295, 21.380013, 2.776916>,  <17.045259, 21.512459, 2.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241295, 21.380013, 2.776916>,  <17.568022, 21.159267, 2.709676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241295, 21.380013, 2.776916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203085, 0.002330, 0.979158,
		0.539969, 0.833932, -0.113979,
		-0.816817, 0.551863, 0.168101,
		16.996250, 21.545570, 2.827347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685131, 21.823345, 3.015349>,  <17.568022, 21.159267, 2.709676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685131, 21.823345, 3.015349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347935, 21.644726, 3.135324>,  <17.145617, 21.537554, 3.207309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347935, 21.644726, 3.135324>,  <17.685131, 21.823345, 3.015349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347935, 21.644726, 3.135324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353637, -0.039888, 0.934532,
		-0.405349, 0.893870, 0.191541,
		-0.842990, -0.446547, 0.299938,
		17.095037, 21.510761, 3.225305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502951, 22.138247, 3.654327>,  <17.685131, 21.823345, 3.015349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502951, 22.138247, 3.654327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.337944, 21.773998, 3.664079>,  <17.238939, 21.555449, 3.669930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.337944, 21.773998, 3.664079>,  <17.502951, 22.138247, 3.654327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337944, 21.773998, 3.664079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291644, -0.106668, 0.950561,
		-0.863002, 0.399234, 0.309580,
		-0.412519, -0.910623, 0.024379,
		17.214188, 21.500811, 3.671393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946505, 22.059902, 4.044009>,  <17.502951, 22.138247, 3.654327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946505, 22.059902, 4.044009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.198105, 21.750675, 4.011194>,  <17.349064, 21.565140, 3.991506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.198105, 21.750675, 4.011194>,  <16.946505, 22.059902, 4.044009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198105, 21.750675, 4.011194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160983, 0.026286, 0.986607,
		-0.760556, -0.633781, 0.140984,
		0.628999, -0.773066, -0.082036,
		17.386805, 21.518755, 3.986583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880564, 21.468740, 4.503573>,  <16.946505, 22.059902, 4.044009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880564, 21.468740, 4.503573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270271, 21.515129, 4.426270>,  <17.504097, 21.542961, 4.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270271, 21.515129, 4.426270>,  <16.880564, 21.468740, 4.503573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270271, 21.515129, 4.426270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199397, -0.043776, 0.978941,
		0.105069, -0.992287, -0.065774,
		0.974269, 0.115971, -0.193259,
		17.562551, 21.549921, 4.368292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264341, 21.069963, 4.932611>,  <16.880564, 21.468740, 4.503573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264341, 21.069963, 4.932611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564892, 21.315498, 4.835752>,  <17.745222, 21.462820, 4.777636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564892, 21.315498, 4.835752>,  <17.264341, 21.069963, 4.932611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564892, 21.315498, 4.835752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417015, -0.157317, 0.895181,
		0.511403, -0.773598, -0.374185,
		0.751376, 0.613839, -0.242150,
		17.790304, 21.499649, 4.763107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860443, 20.668283, 5.062278>,  <17.264341, 21.069963, 4.932611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860443, 20.668283, 5.062278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931240, 21.061577, 5.079846>,  <17.973719, 21.297552, 5.090387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931240, 21.061577, 5.079846>,  <17.860443, 20.668283, 5.062278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.931240, 21.061577, 5.079846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545555, -0.135153, 0.827105,
		0.819172, -0.122432, -0.560328,
		0.176994, 0.983231, 0.043920,
		17.984339, 21.356546, 5.093022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607435, 20.745110, 5.201205>,  <17.860443, 20.668283, 5.062278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607435, 20.745110, 5.201205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.378700, 21.045918, 5.332334>,  <18.241459, 21.226402, 5.411011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.378700, 21.045918, 5.332334>,  <18.607435, 20.745110, 5.201205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378700, 21.045918, 5.332334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541290, 0.045597, 0.839598,
		0.616448, 0.657560, -0.433136,
		-0.571836, 0.752021, 0.327822,
		18.207150, 21.271524, 5.430680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051554, 21.291983, 5.352191>,  <18.607435, 20.745110, 5.201205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051554, 21.291983, 5.352191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716534, 21.339500, 5.565507>,  <18.515522, 21.368011, 5.693496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716534, 21.339500, 5.565507>,  <19.051554, 21.291983, 5.352191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716534, 21.339500, 5.565507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545683, 0.133292, 0.827323,
		0.027197, 0.983932, -0.176462,
		-0.837550, 0.118793, 0.533290,
		18.465269, 21.375137, 5.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193586, 21.894686, 5.697767>,  <19.051554, 21.291983, 5.352191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193586, 21.894686, 5.697767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899746, 21.717636, 5.903464>,  <18.723442, 21.611406, 6.026883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899746, 21.717636, 5.903464>,  <19.193586, 21.894686, 5.697767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899746, 21.717636, 5.903464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456977, 0.237470, 0.857193,
		-0.501530, 0.864692, 0.027823,
		-0.734601, -0.442623, 0.514243,
		18.679365, 21.584848, 6.057737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045603, 22.416723, 6.179627>,  <19.193586, 21.894686, 5.697767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045603, 22.416723, 6.179627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876770, 22.079144, 6.312047>,  <18.775471, 21.876595, 6.391499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876770, 22.079144, 6.312047>,  <19.045603, 22.416723, 6.179627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876770, 22.079144, 6.312047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355053, 0.182109, 0.916937,
		-0.834137, 0.504562, 0.222783,
		-0.422081, -0.843951, 0.331051,
		18.750145, 21.825958, 6.411362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682905, 22.585901, 6.813828>,  <19.045603, 22.416723, 6.179627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682905, 22.585901, 6.813828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748848, 22.191784, 6.795861>,  <18.788414, 21.955313, 6.785081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748848, 22.191784, 6.795861>,  <18.682905, 22.585901, 6.813828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748848, 22.191784, 6.795861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233495, -0.005257, 0.972344,
		-0.958281, -0.170786, 0.229195,
		0.164858, -0.985294, -0.044916,
		18.798306, 21.896196, 6.782386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275486, 22.388891, 7.481161>,  <18.682905, 22.585901, 6.813828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275486, 22.388891, 7.481161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488243, 22.074261, 7.355690>,  <18.615896, 21.885483, 7.280407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488243, 22.074261, 7.355690>,  <18.275486, 22.388891, 7.481161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488243, 22.074261, 7.355690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082540, -0.320501, 0.943645,
		-0.842781, -0.527807, -0.105548,
		0.531890, -0.786574, -0.313677,
		18.647810, 21.838289, 7.261587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945469, 21.752825, 7.648502>,  <18.275486, 22.388891, 7.481161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945469, 21.752825, 7.648502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342972, 21.708611, 7.642482>,  <18.581474, 21.682081, 7.638870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342972, 21.708611, 7.642482>,  <17.945469, 21.752825, 7.648502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342972, 21.708611, 7.642482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002645, -0.111524, 0.993758,
		-0.111524, -0.987595, -0.110536,
		-0.993758, 0.110536, 0.015050,
		18.641100, 21.675449, 7.637967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020987, 21.197220, 7.915942>,  <17.945469, 21.752825, 7.648502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020987, 21.197220, 7.915942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380466, 21.368641, 7.953217>,  <18.596155, 21.471493, 7.975581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380466, 21.368641, 7.953217>,  <18.020987, 21.197220, 7.915942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380466, 21.368641, 7.953217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090118, -0.027494, 0.995552,
		0.429207, -0.903099, 0.013911,
		0.898700, 0.428551, 0.093186,
		18.650076, 21.497206, 7.981172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411413, 20.780249, 8.446737>,  <18.020987, 21.197220, 7.915942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411413, 20.780249, 8.446737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539791, 21.158478, 8.425238>,  <18.616817, 21.385414, 8.412338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539791, 21.158478, 8.425238>,  <18.411413, 20.780249, 8.446737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.539791, 21.158478, 8.425238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180981, -0.005525, 0.983471,
		0.929645, -0.325369, -0.172904,
		0.320946, 0.945571, -0.053749,
		18.636074, 21.442148, 8.409113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842834, 20.809490, 9.007481>,  <18.411413, 20.780249, 8.446737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842834, 20.809490, 9.007481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850182, 21.193153, 8.894570>,  <18.854589, 21.423351, 8.826824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850182, 21.193153, 8.894570>,  <18.842834, 20.809490, 9.007481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850182, 21.193153, 8.894570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158937, 0.275932, 0.947945,
		0.987118, -0.062274, -0.147378,
		0.018366, 0.959158, -0.282275,
		18.855692, 21.480900, 8.809888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560925, 21.050230, 9.083192>,  <18.842834, 20.809490, 9.007481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560925, 21.050230, 9.083192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.310638, 21.362247, 9.084778>,  <19.160467, 21.549458, 9.085730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.310638, 21.362247, 9.084778>,  <19.560925, 21.050230, 9.083192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310638, 21.362247, 9.084778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356798, 0.281681, 0.890703,
		0.693669, 0.558740, -0.454569,
		-0.625714, 0.780042, 0.003964,
		19.122925, 21.596260, 9.085967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939293, 21.567432, 9.279222>,  <19.560925, 21.050230, 9.083192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939293, 21.567432, 9.279222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561859, 21.676128, 9.354914>,  <19.335400, 21.741346, 9.400329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561859, 21.676128, 9.354914>,  <19.939293, 21.567432, 9.279222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561859, 21.676128, 9.354914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274497, 0.322275, 0.905975,
		0.185208, 0.906805, -0.378686,
		-0.943583, 0.271742, 0.189227,
		19.278784, 21.757650, 9.411682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.064219, 22.159477, 9.642924>,  <19.939293, 21.567432, 9.279222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.064219, 22.159477, 9.642924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688847, 22.048080, 9.724698>,  <19.463623, 21.981243, 9.773763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688847, 22.048080, 9.724698>,  <20.064219, 22.159477, 9.642924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688847, 22.048080, 9.724698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107863, 0.325984, 0.939202,
		-0.328201, 0.903426, -0.275874,
		-0.938429, -0.278490, 0.204435,
		19.407318, 21.964533, 9.786029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788536, 22.777857, 9.914994>,  <20.064219, 22.159477, 9.642924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788536, 22.777857, 9.914994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566414, 22.475182, 10.053014>,  <19.433142, 22.293575, 10.135826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566414, 22.475182, 10.053014>,  <19.788536, 22.777857, 9.914994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566414, 22.475182, 10.053014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013475, 0.423031, 0.906015,
		-0.831538, 0.498465, -0.245107,
		-0.555304, -0.756689, 0.345049,
		19.399822, 22.248175, 10.156528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259302, 23.048717, 10.388030>,  <19.788536, 22.777857, 9.914994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259302, 23.048717, 10.388030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.298904, 22.671268, 10.514380>,  <19.322666, 22.444799, 10.590189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.298904, 22.671268, 10.514380>,  <19.259302, 23.048717, 10.388030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.298904, 22.671268, 10.514380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024705, 0.315005, 0.948768,
		-0.994780, -0.101736, 0.007875,
		0.099004, -0.943621, 0.315874,
		19.328606, 22.388182, 10.609141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.230726, 23.208342, 11.066020>,  <19.259302, 23.048717, 10.388030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.230726, 23.208342, 11.066020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.315262, 22.817619, 11.052239>,  <19.365984, 22.583185, 11.043971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.315262, 22.817619, 11.052239>,  <19.230726, 23.208342, 11.066020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315262, 22.817619, 11.052239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382982, 0.050329, 0.922384,
		-0.899255, -0.208131, 0.384736,
		0.211340, -0.976805, -0.034452,
		19.378664, 22.524578, 11.041903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.992039, 22.950590, 11.672345>,  <19.230726, 23.208342, 11.066020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.992039, 22.950590, 11.672345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290287, 22.713196, 11.551133>,  <19.469236, 22.570759, 11.478406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290287, 22.713196, 11.551133>,  <18.992039, 22.950590, 11.672345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290287, 22.713196, 11.551133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458627, 0.127129, 0.879488,
		-0.483440, -0.794741, 0.366978,
		0.745619, -0.593486, -0.303030,
		19.513973, 22.535151, 11.460224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202715, 22.532749, 12.251733>,  <18.992039, 22.950590, 11.672345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202715, 22.532749, 12.251733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529633, 22.502842, 12.023194>,  <19.725784, 22.484898, 11.886071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529633, 22.502842, 12.023194>,  <19.202715, 22.532749, 12.251733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529633, 22.502842, 12.023194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575093, 0.043888, 0.816910,
		-0.036003, -0.996235, 0.078868,
		0.817296, -0.074768, -0.571347,
		19.774822, 22.480412, 11.851790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633883, 22.240776, 12.608899>,  <19.202715, 22.532749, 12.251733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633883, 22.240776, 12.608899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896610, 22.393005, 12.348514>,  <20.054247, 22.484343, 12.192283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896610, 22.393005, 12.348514>,  <19.633883, 22.240776, 12.608899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.896610, 22.393005, 12.348514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691857, 0.039156, 0.720973,
		0.299872, -0.923921, -0.237585,
		0.656819, 0.380574, -0.650962,
		20.093657, 22.507177, 12.153225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288031, 21.928509, 12.849883>,  <19.633883, 22.240776, 12.608899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288031, 21.928509, 12.849883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386810, 22.256260, 12.642948>,  <20.446077, 22.452911, 12.518787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386810, 22.256260, 12.642948>,  <20.288031, 21.928509, 12.849883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.386810, 22.256260, 12.642948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677240, 0.235908, 0.696917,
		0.693082, -0.522463, -0.496659,
		0.246947, 0.819378, -0.517337,
		20.460896, 22.502073, 12.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056711, 22.019339, 12.800529>,  <20.288031, 21.928509, 12.849883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056711, 22.019339, 12.800529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950642, 22.389854, 12.693444>,  <20.887001, 22.612164, 12.629193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950642, 22.389854, 12.693444>,  <21.056711, 22.019339, 12.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950642, 22.389854, 12.693444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727372, 0.374438, 0.575088,
		0.632940, -0.042230, -0.773048,
		-0.265173, 0.926290, -0.267713,
		20.871090, 22.667742, 12.613131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619251, 22.389652, 12.808838>,  <21.056711, 22.019339, 12.800529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619251, 22.389652, 12.808838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348156, 22.682602, 12.835059>,  <21.185499, 22.858372, 12.850792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348156, 22.682602, 12.835059>,  <21.619251, 22.389652, 12.808838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.348156, 22.682602, 12.835059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625170, 0.526999, 0.575703,
		0.387085, 0.431158, -0.815027,
		-0.677737, 0.732376, 0.065554,
		21.144835, 22.902315, 12.854725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039455, 23.019384, 12.967313>,  <21.619251, 22.389652, 12.808838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039455, 23.019384, 12.967313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659683, 23.090382, 13.070912>,  <21.431820, 23.132980, 13.133072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659683, 23.090382, 13.070912>,  <22.039455, 23.019384, 12.967313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659683, 23.090382, 13.070912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313897, 0.555534, 0.769968,
		-0.007221, 0.812329, -0.583154,
		-0.949430, 0.177491, 0.259000,
		21.374855, 23.143629, 13.148612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114611, 23.716574, 13.275233>,  <22.039455, 23.019384, 12.967313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114611, 23.716574, 13.275233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754627, 23.564266, 13.360173>,  <21.538637, 23.472881, 13.411137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754627, 23.564266, 13.360173>,  <22.114611, 23.716574, 13.275233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754627, 23.564266, 13.360173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050256, 0.574421, 0.817015,
		-0.433070, 0.724608, -0.536091,
		-0.899958, -0.380767, 0.212349,
		21.484640, 23.450037, 13.423878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715031, 24.350618, 13.538114>,  <22.114611, 23.716574, 13.275233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715031, 24.350618, 13.538114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562351, 24.011444, 13.685250>,  <21.470743, 23.807940, 13.773532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562351, 24.011444, 13.685250>,  <21.715031, 24.350618, 13.538114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562351, 24.011444, 13.685250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009983, 0.401732, 0.915703,
		-0.924232, 0.345852, -0.161806,
		-0.381701, -0.847937, 0.367841,
		21.447842, 23.757063, 13.795603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157187, 24.576702, 14.063524>,  <21.715031, 24.350618, 13.538114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157187, 24.576702, 14.063524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294472, 24.210087, 14.145659>,  <21.376842, 23.990118, 14.194941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294472, 24.210087, 14.145659>,  <21.157187, 24.576702, 14.063524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.294472, 24.210087, 14.145659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235042, 0.295471, 0.925987,
		-0.909373, -0.269548, 0.316834,
		0.343213, -0.916537, 0.205338,
		21.397436, 23.935125, 14.207261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800482, 24.455261, 14.701300>,  <21.157187, 24.576702, 14.063524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800482, 24.455261, 14.701300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126389, 24.225357, 14.670815>,  <21.321932, 24.087416, 14.652525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126389, 24.225357, 14.670815>,  <20.800482, 24.455261, 14.701300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126389, 24.225357, 14.670815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227656, 0.196255, 0.953759,
		-0.533226, -0.794440, 0.290749,
		0.814766, -0.574760, -0.076211,
		21.370819, 24.052929, 14.647952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769253, 24.095884, 15.318503>,  <20.800482, 24.455261, 14.701300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769253, 24.095884, 15.318503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135082, 24.006252, 15.183839>,  <21.354580, 23.952473, 15.103040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135082, 24.006252, 15.183839>,  <20.769253, 24.095884, 15.318503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135082, 24.006252, 15.183839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362695, 0.086217, 0.927911,
		-0.178901, -0.970750, 0.160125,
		0.914575, -0.224080, -0.336662,
		21.409454, 23.939028, 15.082840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041939, 23.749323, 15.795634>,  <20.769253, 24.095884, 15.318503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041939, 23.749323, 15.795634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368237, 23.887672, 15.610190>,  <21.564014, 23.970682, 15.498924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368237, 23.887672, 15.610190>,  <21.041939, 23.749323, 15.795634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.368237, 23.887672, 15.610190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492306, 0.005588, 0.870405,
		0.303643, -0.938264, -0.165719,
		0.815743, 0.345876, -0.463609,
		21.612959, 23.991436, 15.471107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594315, 23.381985, 16.157833>,  <21.041939, 23.749323, 15.795634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594315, 23.381985, 16.157833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705105, 23.722088, 15.978793>,  <21.771580, 23.926149, 15.871368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705105, 23.722088, 15.978793>,  <21.594315, 23.381985, 16.157833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.705105, 23.722088, 15.978793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388061, 0.327165, 0.861610,
		0.879029, -0.412342, -0.239335,
		0.276976, 0.850257, -0.447602,
		21.788198, 23.977165, 15.844513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291281, 23.397694, 16.339453>,  <21.594315, 23.381985, 16.157833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291281, 23.397694, 16.339453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147900, 23.754807, 16.230310>,  <22.061871, 23.969074, 16.164825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147900, 23.754807, 16.230310>,  <22.291281, 23.397694, 16.339453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147900, 23.754807, 16.230310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289818, 0.384258, 0.876557,
		0.887422, 0.235124, -0.396483,
		-0.358451, 0.892784, -0.272856,
		22.040363, 24.022642, 16.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.823009, 23.907822, 16.565947>,  <22.291281, 23.397694, 16.339453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.823009, 23.907822, 16.565947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488968, 24.122643, 16.518316>,  <22.288544, 24.251535, 16.489738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488968, 24.122643, 16.518316>,  <22.823009, 23.907822, 16.565947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488968, 24.122643, 16.518316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231958, 0.540067, 0.809026,
		0.498796, 0.648000, -0.575585,
		-0.835103, 0.537051, -0.119075,
		22.238438, 24.283758, 16.482594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927015, 24.597254, 16.874857>,  <22.823009, 23.907822, 16.565947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927015, 24.597254, 16.874857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531643, 24.536701, 16.878525>,  <22.294418, 24.500370, 16.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531643, 24.536701, 16.878525>,  <22.927015, 24.597254, 16.874857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531643, 24.536701, 16.878525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065369, 0.479817, 0.874930,
		-0.136851, 0.864210, -0.484163,
		-0.988433, -0.151384, 0.009171,
		22.235113, 24.491285, 16.881275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749701, 25.219557, 17.037281>,  <22.927015, 24.597254, 16.874857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749701, 25.219557, 17.037281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407932, 25.016369, 17.080965>,  <22.202871, 24.894455, 17.107176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407932, 25.016369, 17.080965>,  <22.749701, 25.219557, 17.037281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407932, 25.016369, 17.080965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256647, 0.595377, 0.761353,
		-0.451768, 0.622488, -0.639073,
		-0.854423, -0.507971, 0.109212,
		22.151606, 24.863977, 17.113729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220509, 25.759554, 17.128275>,  <22.749701, 25.219557, 17.037281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220509, 25.759554, 17.128275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074856, 25.424854, 17.291866>,  <21.987465, 25.224035, 17.390022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074856, 25.424854, 17.291866>,  <22.220509, 25.759554, 17.128275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074856, 25.424854, 17.291866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390628, 0.535846, 0.748518,
		-0.845470, 0.112799, -0.521974,
		-0.364130, -0.836747, 0.408979,
		21.965616, 25.173830, 17.414560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.516531, 26.027491, 17.322618>,  <22.220509, 25.759554, 17.128275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.516531, 26.027491, 17.322618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633926, 25.707649, 17.532188>,  <21.704365, 25.515745, 17.657930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633926, 25.707649, 17.532188>,  <21.516531, 26.027491, 17.322618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.633926, 25.707649, 17.532188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303865, 0.441607, 0.844186,
		-0.906383, -0.406963, -0.113364,
		0.293490, -0.799603, 0.523927,
		21.721973, 25.467768, 17.689367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.220413, 26.146973, 17.881269>,  <21.516531, 26.027491, 17.322618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.220413, 26.146973, 17.881269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420918, 25.824482, 18.006960>,  <21.541220, 25.630987, 18.082375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420918, 25.824482, 18.006960>,  <21.220413, 26.146973, 17.881269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420918, 25.824482, 18.006960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160230, 0.270379, 0.949327,
		-0.850332, -0.526209, 0.006349,
		0.501261, -0.806225, 0.314226,
		21.571297, 25.582615, 18.101229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790403, 25.757875, 18.378746>,  <21.220413, 26.146973, 17.881269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790403, 25.757875, 18.378746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162720, 25.645061, 18.471771>,  <21.386110, 25.577374, 18.527586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162720, 25.645061, 18.471771>,  <20.790403, 25.757875, 18.378746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162720, 25.645061, 18.471771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179156, 0.202594, 0.962735,
		-0.318639, -0.937770, 0.138044,
		0.930791, -0.282033, 0.232562,
		21.441957, 25.560452, 18.541540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649498, 25.415888, 19.003361>,  <20.790403, 25.757875, 18.378746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649498, 25.415888, 19.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042931, 25.487946, 19.007586>,  <21.278990, 25.531179, 19.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042931, 25.487946, 19.007586>,  <20.649498, 25.415888, 19.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042931, 25.487946, 19.007586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056242, 0.250411, 0.966505,
		0.171461, -0.951233, 0.256432,
		0.983585, 0.180140, 0.010563,
		21.338005, 25.541988, 19.010754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896343, 25.153416, 19.641302>,  <20.649498, 25.415888, 19.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896343, 25.153416, 19.641302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.173038, 25.424740, 19.542191>,  <21.339056, 25.587534, 19.482723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.173038, 25.424740, 19.542191>,  <20.896343, 25.153416, 19.641302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173038, 25.424740, 19.542191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068773, 0.403429, 0.912423,
		0.718868, -0.614116, 0.325716,
		0.691736, 0.678312, -0.247777,
		21.380560, 25.628233, 19.467857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399887, 25.206446, 20.258600>,  <20.896343, 25.153416, 19.641302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399887, 25.206446, 20.258600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405399, 25.538963, 20.036335>,  <21.408707, 25.738474, 19.902975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405399, 25.538963, 20.036335>,  <21.399887, 25.206446, 20.258600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405399, 25.538963, 20.036335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107892, 0.553707, 0.825692,
		0.994067, 0.048575, 0.097320,
		0.013779, 0.831293, -0.555663,
		21.409533, 25.788351, 19.869637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830153, 25.581137, 20.646664>,  <21.399887, 25.206446, 20.258600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830153, 25.581137, 20.646664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.611137, 25.824970, 20.417366>,  <21.479729, 25.971272, 20.279787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.611137, 25.824970, 20.417366>,  <21.830153, 25.581137, 20.646664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.611137, 25.824970, 20.417366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079635, 0.719908, 0.689486,
		0.832984, 0.331869, -0.442720,
		-0.547537, 0.609586, -0.573244,
		21.446877, 26.007847, 20.245394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.121311, 26.236641, 20.768587>,  <21.830153, 25.581137, 20.646664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.121311, 26.236641, 20.768587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747620, 26.284950, 20.634348>,  <21.523405, 26.313936, 20.553804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747620, 26.284950, 20.634348>,  <22.121311, 26.236641, 20.768587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747620, 26.284950, 20.634348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153459, 0.713269, 0.683884,
		0.321969, 0.690406, -0.647824,
		-0.934230, 0.120775, -0.335599,
		21.467350, 26.321182, 20.533669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998554, 26.942089, 20.769503>,  <22.121311, 26.236641, 20.768587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998554, 26.942089, 20.769503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.670647, 26.728539, 20.852409>,  <21.473902, 26.600409, 20.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.670647, 26.728539, 20.852409>,  <21.998554, 26.942089, 20.769503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.670647, 26.728539, 20.852409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055877, 0.434749, 0.898817,
		-0.569966, 0.725239, -0.386224,
		-0.819767, -0.533876, 0.207268,
		21.424717, 26.568377, 20.914589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573992, 27.394972, 20.952461>,  <21.998554, 26.942089, 20.769503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573992, 27.394972, 20.952461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539455, 27.025078, 21.100737>,  <21.518734, 26.803141, 21.189703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539455, 27.025078, 21.100737>,  <21.573992, 27.394972, 20.952461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539455, 27.025078, 21.100737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185757, 0.350611, 0.917914,
		-0.978795, 0.148111, 0.141503,
		-0.086341, -0.924735, 0.370689,
		21.513554, 26.747658, 21.211943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102552, 27.377913, 21.511663>,  <21.573992, 27.394972, 20.952461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102552, 27.377913, 21.511663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415348, 27.130737, 21.544277>,  <21.603025, 26.982433, 21.563845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415348, 27.130737, 21.544277>,  <21.102552, 27.377913, 21.511663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415348, 27.130737, 21.544277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193721, 0.365286, 0.910515,
		-0.592423, -0.696219, 0.405357,
		0.781989, -0.617937, 0.081532,
		21.649944, 26.945356, 21.568737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027380, 27.216621, 22.189569>,  <21.102552, 27.377913, 21.511663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027380, 27.216621, 22.189569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395206, 27.121223, 22.064659>,  <21.615902, 27.063984, 21.989714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395206, 27.121223, 22.064659>,  <21.027380, 27.216621, 22.189569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395206, 27.121223, 22.064659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322572, 0.004391, 0.946535,
		-0.224372, -0.971134, 0.080970,
		0.919567, -0.238495, -0.312275,
		21.671076, 27.049675, 21.970976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.593788, 26.876801, 22.710075>,  <21.027380, 27.216621, 22.189569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.593788, 26.876801, 22.710075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223515, 26.726936, 22.730993>,  <21.001350, 26.637018, 22.743544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223515, 26.726936, 22.730993>,  <21.593788, 26.876801, 22.710075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223515, 26.726936, 22.730993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103210, 0.117136, -0.987738,
		0.363943, -0.919732, -0.147099,
		-0.925685, -0.374663, 0.052295,
		20.945808, 26.614538, 22.746681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.458164, 26.411144, 22.190630>,  <21.593788, 26.876801, 22.710075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.458164, 26.411144, 22.190630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087540, 26.516327, 22.298212>,  <20.865166, 26.579437, 22.362762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087540, 26.516327, 22.298212>,  <21.458164, 26.411144, 22.190630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087540, 26.516327, 22.298212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196411, 0.271578, -0.942161,
		-0.320793, -0.925795, -0.199985,
		-0.926561, 0.262960, 0.268957,
		20.809572, 26.595215, 22.378899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996962, 26.218782, 21.586784>,  <21.458164, 26.411144, 22.190630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996962, 26.218782, 21.586784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787029, 26.482086, 21.802652>,  <20.661070, 26.640068, 21.932173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787029, 26.482086, 21.802652>,  <20.996962, 26.218782, 21.586784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787029, 26.482086, 21.802652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545579, 0.226514, -0.806868,
		-0.653373, -0.717902, 0.240252,
		-0.524832, 0.658261, 0.539670,
		20.629580, 26.679565, 21.964554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339512, 26.074331, 21.546440>,  <20.996962, 26.218782, 21.586784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339512, 26.074331, 21.546440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356018, 26.467522, 21.618053>,  <20.365921, 26.703436, 21.661020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356018, 26.467522, 21.618053>,  <20.339512, 26.074331, 21.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356018, 26.467522, 21.618053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626885, 0.164998, -0.761440,
		-0.778018, -0.080812, 0.623023,
		0.041264, 0.982978, 0.179031,
		20.368397, 26.762415, 21.671762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745064, 26.438778, 21.738716>,  <20.339512, 26.074331, 21.546440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745064, 26.438778, 21.738716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.000889, 26.651955, 21.517109>,  <20.154383, 26.779860, 21.384144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.000889, 26.651955, 21.517109>,  <19.745064, 26.438778, 21.738716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000889, 26.651955, 21.517109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632301, -0.045191, -0.773404,
		-0.437215, 0.844945, 0.308076,
		0.639561, 0.532940, -0.554018,
		20.192757, 26.811836, 21.350904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.421928, 26.979778, 21.571159>,  <19.745064, 26.438778, 21.738716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.421928, 26.979778, 21.571159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708252, 26.920860, 21.298126>,  <19.880047, 26.885509, 21.134306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708252, 26.920860, 21.298126>,  <19.421928, 26.979778, 21.571159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708252, 26.920860, 21.298126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685549, 0.037679, -0.727051,
		0.132810, 0.988375, -0.074006,
		0.715811, -0.147295, -0.682583,
		19.922995, 26.876673, 21.093351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446640, 27.525728, 21.003115>,  <19.421928, 26.979778, 21.571159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446640, 27.525728, 21.003115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609268, 27.202217, 20.833138>,  <19.706846, 27.008110, 20.731152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609268, 27.202217, 20.833138>,  <19.446640, 27.525728, 21.003115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609268, 27.202217, 20.833138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683299, 0.039568, -0.729065,
		0.606466, 0.586781, -0.536550,
		0.406572, -0.808778, -0.424944,
		19.731239, 26.959583, 20.705654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663979, 27.678356, 20.283028>,  <19.446640, 27.525728, 21.003115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663979, 27.678356, 20.283028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615456, 27.281494, 20.295105>,  <19.586342, 27.043377, 20.302351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615456, 27.281494, 20.295105>,  <19.663979, 27.678356, 20.283028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.615456, 27.281494, 20.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535704, 0.039828, -0.843466,
		0.835647, -0.118493, -0.536333,
		-0.121306, -0.992156, 0.030196,
		19.579063, 26.983847, 20.304163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737000, 27.332882, 19.630835>,  <19.663979, 27.678356, 20.283028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737000, 27.332882, 19.630835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550800, 27.025475, 19.806419>,  <19.439081, 26.841030, 19.911770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550800, 27.025475, 19.806419>,  <19.737000, 27.332882, 19.630835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550800, 27.025475, 19.806419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501634, -0.179518, -0.846248,
		0.729160, -0.614126, -0.301951,
		-0.465498, -0.768520, 0.438964,
		19.411152, 26.794918, 19.938108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915613, 26.679750, 19.276249>,  <19.737000, 27.332882, 19.630835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915613, 26.679750, 19.276249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569912, 26.600197, 19.461079>,  <19.362492, 26.552465, 19.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569912, 26.600197, 19.461079>,  <19.915613, 26.679750, 19.276249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569912, 26.600197, 19.461079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418517, -0.225392, -0.879796,
		0.279124, -0.953753, 0.111560,
		-0.864253, -0.198883, 0.462074,
		19.310637, 26.540533, 19.599701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823013, 26.016464, 19.084036>,  <19.915613, 26.679750, 19.276249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823013, 26.016464, 19.084036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472225, 26.164825, 19.206251>,  <19.261753, 26.253843, 19.279581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472225, 26.164825, 19.206251>,  <19.823013, 26.016464, 19.084036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472225, 26.164825, 19.206251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406963, -0.235112, -0.882669,
		-0.255545, -0.898419, 0.357129,
		-0.876971, 0.370900, 0.305541,
		19.209135, 26.276096, 19.297913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335073, 25.488230, 18.906620>,  <19.823013, 26.016464, 19.084036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335073, 25.488230, 18.906620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117878, 25.818203, 18.969419>,  <18.987560, 26.016188, 19.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117878, 25.818203, 18.969419>,  <19.335073, 25.488230, 18.906620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117878, 25.818203, 18.969419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535623, -0.196243, -0.821338,
		-0.646739, -0.530070, 0.548411,
		-0.542989, 0.824933, 0.157000,
		18.954981, 26.065683, 19.016520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726645, 25.290466, 18.722694>,  <19.335073, 25.488230, 18.906620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726645, 25.290466, 18.722694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699959, 25.688885, 18.699224>,  <18.683947, 25.927937, 18.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699959, 25.688885, 18.699224>,  <18.726645, 25.290466, 18.722694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699959, 25.688885, 18.699224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555512, -0.085928, -0.827056,
		-0.828828, -0.022582, 0.559048,
		-0.066715, 0.996045, -0.058675,
		18.679945, 25.987698, 18.681622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.952673, 25.462664, 18.508188>,  <18.726645, 25.290466, 18.722694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.952673, 25.462664, 18.508188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186886, 25.778503, 18.434776>,  <18.327414, 25.968008, 18.390728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186886, 25.778503, 18.434776>,  <17.952673, 25.462664, 18.508188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186886, 25.778503, 18.434776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403956, 0.087913, -0.910544,
		-0.702831, 0.607291, 0.370440,
		0.585532, 0.789600, -0.183531,
		18.362545, 26.015383, 18.379717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.535658, 25.999523, 18.223135>,  <17.952673, 25.462664, 18.508188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.535658, 25.999523, 18.223135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903820, 26.105232, 18.107887>,  <18.124718, 26.168657, 18.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903820, 26.105232, 18.107887>,  <17.535658, 25.999523, 18.223135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903820, 26.105232, 18.107887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336958, 0.162485, -0.927393,
		-0.198269, 0.950663, 0.238601,
		0.920407, 0.264272, -0.288118,
		18.179941, 26.184513, 18.021452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355158, 26.568949, 17.814802>,  <17.535658, 25.999523, 18.223135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355158, 26.568949, 17.814802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725113, 26.453682, 17.715572>,  <17.947086, 26.384521, 17.656034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725113, 26.453682, 17.715572>,  <17.355158, 26.568949, 17.814802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725113, 26.453682, 17.715572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219696, 0.127509, -0.967200,
		0.310348, 0.949052, 0.054622,
		0.924888, -0.288168, -0.248075,
		18.002579, 26.367231, 17.641150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649776, 27.120132, 17.305563>,  <17.355158, 26.568949, 17.814802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649776, 27.120132, 17.305563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850140, 26.776337, 17.264835>,  <17.970358, 26.570059, 17.240398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850140, 26.776337, 17.264835>,  <17.649776, 27.120132, 17.305563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850140, 26.776337, 17.264835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182935, 0.009844, -0.983076,
		0.845947, 0.511055, -0.152300,
		0.500907, -0.859491, -0.101817,
		18.000412, 26.518490, 17.234291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012873, 27.161613, 16.747044>,  <17.649776, 27.120132, 17.305563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012873, 27.161613, 16.747044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018364, 26.762482, 16.772814>,  <18.021658, 26.523003, 16.788277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018364, 26.762482, 16.772814>,  <18.012873, 27.161613, 16.747044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018364, 26.762482, 16.772814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120179, -0.065611, -0.990582,
		0.992657, 0.005855, -0.120818,
		0.013727, -0.997828, 0.064426,
		18.022482, 26.463133, 16.792141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365509, 26.896151, 16.163521>,  <18.012873, 27.161613, 16.747044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365509, 26.896151, 16.163521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.139805, 26.596130, 16.301525>,  <18.004381, 26.416119, 16.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.139805, 26.596130, 16.301525>,  <18.365509, 26.896151, 16.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139805, 26.596130, 16.301525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327050, -0.180631, -0.927583,
		0.758055, -0.636235, -0.143382,
		-0.564262, -0.750052, 0.345008,
		17.970526, 26.371115, 16.405027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603811, 26.301479, 15.813031>,  <18.365509, 26.896151, 16.163521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603811, 26.301479, 15.813031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221195, 26.255711, 15.920318>,  <17.991625, 26.228251, 15.984690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221195, 26.255711, 15.920318>,  <18.603811, 26.301479, 15.813031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221195, 26.255711, 15.920318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225763, -0.291580, -0.929523,
		0.184564, -0.949678, 0.253076,
		-0.956539, -0.114421, 0.268217,
		17.934233, 26.221384, 16.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518238, 25.775887, 15.440361>,  <18.603811, 26.301479, 15.813031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518238, 25.775887, 15.440361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158714, 25.925297, 15.532113>,  <17.942999, 26.014944, 15.587165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158714, 25.925297, 15.532113>,  <18.518238, 25.775887, 15.440361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158714, 25.925297, 15.532113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279779, -0.086029, -0.956202,
		-0.337434, -0.923621, 0.181829,
		-0.898811, 0.373527, 0.229381,
		17.889071, 26.037355, 15.600927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102221, 25.260313, 15.213089>,  <18.518238, 25.775887, 15.440361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102221, 25.260313, 15.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871094, 25.586330, 15.230189>,  <17.732418, 25.781940, 15.240449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871094, 25.586330, 15.230189>,  <18.102221, 25.260313, 15.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871094, 25.586330, 15.230189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314365, -0.173917, -0.933235,
		-0.753194, -0.552679, 0.356714,
		-0.577818, 0.815045, 0.042750,
		17.697748, 25.830845, 15.243014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326550, 25.078093, 15.101221>,  <18.102221, 25.260313, 15.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326550, 25.078093, 15.101221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455765, 25.442371, 14.998244>,  <17.533293, 25.660938, 14.936459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455765, 25.442371, 14.998244>,  <17.326550, 25.078093, 15.101221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455765, 25.442371, 14.998244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326549, -0.148060, -0.933512,
		-0.888264, 0.385627, 0.249559,
		0.323037, 0.910698, -0.257442,
		17.552675, 25.715580, 14.921012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829613, 25.325294, 14.684219>,  <17.326550, 25.078093, 15.101221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829613, 25.325294, 14.684219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.105190, 25.605377, 14.609315>,  <17.270536, 25.773428, 14.564372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.105190, 25.605377, 14.609315>,  <16.829613, 25.325294, 14.684219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105190, 25.605377, 14.609315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382397, 0.131656, -0.914571,
		-0.615736, 0.701695, 0.358461,
		0.688943, 0.700208, -0.187261,
		17.311872, 25.815439, 14.553137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461367, 25.753357, 14.240058>,  <16.829613, 25.325294, 14.684219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461367, 25.753357, 14.240058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836826, 25.872730, 14.170917>,  <17.062101, 25.944353, 14.129432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836826, 25.872730, 14.170917>,  <16.461367, 25.753357, 14.240058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836826, 25.872730, 14.170917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238796, 0.200782, -0.950086,
		-0.248830, 0.933073, 0.259728,
		0.938648, 0.298432, -0.172853,
		17.118422, 25.962259, 14.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382662, 26.283810, 13.862340>,  <16.461367, 25.753357, 14.240058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382662, 26.283810, 13.862340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762997, 26.191486, 13.779746>,  <16.991198, 26.136093, 13.730190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762997, 26.191486, 13.779746>,  <16.382662, 26.283810, 13.862340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762997, 26.191486, 13.779746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206827, 0.022984, -0.978108,
		0.230500, 0.972728, -0.025883,
		0.950838, -0.230807, -0.206484,
		17.048248, 26.122244, 13.717801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646458, 26.715059, 13.266009>,  <16.382662, 26.283810, 13.862340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646458, 26.715059, 13.266009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909016, 26.413399, 13.258002>,  <17.066551, 26.232403, 13.253199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909016, 26.413399, 13.258002>,  <16.646458, 26.715059, 13.266009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909016, 26.413399, 13.258002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102761, -0.063092, -0.992703,
		0.747385, 0.653663, -0.118911,
		0.656396, -0.754151, -0.020017,
		17.105934, 26.187153, 13.251997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175436, 26.804008, 12.679688>,  <16.646458, 26.715059, 13.266009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175436, 26.804008, 12.679688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192356, 26.416737, 12.778353>,  <17.202507, 26.184374, 12.837551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192356, 26.416737, 12.778353>,  <17.175436, 26.804008, 12.679688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192356, 26.416737, 12.778353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069304, -0.249130, -0.965987,
		0.996698, 0.023766, -0.077636,
		0.042299, -0.968178, 0.246660,
		17.205046, 26.126284, 12.852351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542688, 26.567713, 12.158875>,  <17.175436, 26.804008, 12.679688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542688, 26.567713, 12.158875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.359730, 26.246082, 12.310795>,  <17.249954, 26.053104, 12.401947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.359730, 26.246082, 12.310795>,  <17.542688, 26.567713, 12.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.359730, 26.246082, 12.310795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145007, -0.353940, -0.923958,
		0.877359, -0.477691, 0.045295,
		-0.457398, -0.804076, 0.379801,
		17.222509, 26.004860, 12.424735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871853, 25.999681, 11.886340>,  <17.542688, 26.567713, 12.158875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871853, 25.999681, 11.886340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527985, 25.844872, 12.019713>,  <17.321663, 25.751986, 12.099737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527985, 25.844872, 12.019713>,  <17.871853, 25.999681, 11.886340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527985, 25.844872, 12.019713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154189, -0.425683, -0.891639,
		0.487025, -0.817927, 0.306272,
		-0.859670, -0.387026, 0.333434,
		17.270084, 25.728764, 12.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839638, 25.305323, 11.821907>,  <17.871853, 25.999681, 11.886340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839638, 25.305323, 11.821907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454258, 25.412365, 11.816961>,  <17.223030, 25.476589, 11.813993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454258, 25.412365, 11.816961>,  <17.839638, 25.305323, 11.821907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454258, 25.412365, 11.816961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130529, -0.509245, -0.850665,
		-0.233938, -0.817959, 0.525562,
		-0.963450, 0.267604, -0.012364,
		17.165222, 25.492645, 11.813252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480671, 24.714457, 11.654491>,  <17.839638, 25.305323, 11.821907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480671, 24.714457, 11.654491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.217896, 25.002842, 11.566267>,  <17.060230, 25.175873, 11.513332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.217896, 25.002842, 11.566267>,  <17.480671, 24.714457, 11.654491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217896, 25.002842, 11.566267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352084, -0.552046, -0.755832,
		-0.666686, -0.418878, 0.616498,
		-0.656937, 0.720962, -0.220561,
		17.020815, 25.219131, 11.500098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768963, 24.434961, 11.670479>,  <17.480671, 24.714457, 11.654491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768963, 24.434961, 11.670479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742386, 24.772415, 11.457363>,  <16.726440, 24.974888, 11.329494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742386, 24.772415, 11.457363>,  <16.768963, 24.434961, 11.670479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742386, 24.772415, 11.457363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412920, -0.509347, -0.755025,
		-0.908340, 0.169834, 0.382196,
		-0.066442, 0.843636, -0.532789,
		16.722454, 25.025505, 11.297526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217304, 24.364922, 11.270037>,  <16.768963, 24.434961, 11.670479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217304, 24.364922, 11.270037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384514, 24.680046, 11.089101>,  <16.484840, 24.869120, 10.980539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384514, 24.680046, 11.089101>,  <16.217304, 24.364922, 11.270037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384514, 24.680046, 11.089101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479045, -0.231909, -0.846601,
		-0.771863, 0.570591, 0.280453,
		0.418023, 0.787810, -0.452340,
		16.509920, 24.916389, 10.953399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684422, 24.653318, 10.915564>,  <16.217304, 24.364922, 11.270037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684422, 24.653318, 10.915564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006294, 24.798634, 10.727730>,  <16.199417, 24.885822, 10.615029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006294, 24.798634, 10.727730>,  <15.684422, 24.653318, 10.915564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006294, 24.798634, 10.727730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384926, -0.282945, -0.878507,
		-0.452019, 0.887673, -0.087841,
		0.804681, 0.363289, -0.469585,
		16.247698, 24.907619, 10.586854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.434854, 24.879267, 10.288020>,  <15.684422, 24.653318, 10.915564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.434854, 24.879267, 10.288020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828900, 24.881824, 10.219316>,  <16.065329, 24.883358, 10.178093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828900, 24.881824, 10.219316>,  <15.434854, 24.879267, 10.288020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828900, 24.881824, 10.219316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167480, -0.188993, -0.967591,
		-0.038648, 0.981958, -0.185110,
		0.985118, 0.006393, -0.171762,
		16.124435, 24.883743, 10.167787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551286, 25.312082, 9.668940>,  <15.434854, 24.879267, 10.288020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551286, 25.312082, 9.668940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845078, 25.046352, 9.724382>,  <16.021355, 24.886915, 9.757648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845078, 25.046352, 9.724382>,  <15.551286, 25.312082, 9.668940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845078, 25.046352, 9.724382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089852, -0.297645, -0.950439,
		0.672655, 0.685625, -0.278305,
		0.734481, -0.664324, 0.138608,
		16.065422, 24.847055, 9.765965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023876, 25.431889, 9.136303>,  <15.551286, 25.312082, 9.668940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023876, 25.431889, 9.136303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087132, 25.056892, 9.260304>,  <16.125084, 24.831894, 9.334705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087132, 25.056892, 9.260304>,  <16.023876, 25.431889, 9.136303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087132, 25.056892, 9.260304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066852, -0.303069, -0.950621,
		0.985151, 0.171055, 0.014746,
		0.158139, -0.937491, 0.310004,
		16.134573, 24.775644, 9.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500086, 25.190304, 8.590999>,  <16.023876, 25.431889, 9.136303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500086, 25.190304, 8.590999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380981, 24.859673, 8.782040>,  <16.309519, 24.661293, 8.896665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380981, 24.859673, 8.782040>,  <16.500086, 25.190304, 8.590999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380981, 24.859673, 8.782040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037849, -0.510124, -0.859268,
		0.953890, -0.237780, 0.183181,
		-0.297761, -0.826580, 0.477602,
		16.291653, 24.611698, 8.925321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014660, 24.632292, 8.408954>,  <16.500086, 25.190304, 8.590999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014660, 24.632292, 8.408954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691273, 24.437725, 8.541482>,  <16.497240, 24.320984, 8.620999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691273, 24.437725, 8.541482>,  <17.014660, 24.632292, 8.408954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691273, 24.437725, 8.541482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047028, -0.614550, -0.787475,
		0.586656, -0.621068, 0.519720,
		-0.808469, -0.486418, 0.331322,
		16.448732, 24.291800, 8.640879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224258, 23.992022, 8.475036>,  <17.014660, 24.632292, 8.408954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224258, 23.992022, 8.475036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827187, 23.943733, 8.476401>,  <16.588943, 23.914761, 8.477221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827187, 23.943733, 8.476401>,  <17.224258, 23.992022, 8.475036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827187, 23.943733, 8.476401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077493, -0.658393, -0.748674,
		0.092628, -0.742930, 0.662929,
		-0.992680, -0.120721, 0.003414,
		16.529383, 23.907516, 8.477426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095184, 23.309702, 8.289392>,  <17.224258, 23.992022, 8.475036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095184, 23.309702, 8.289392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753056, 23.486595, 8.181422>,  <16.547779, 23.592731, 8.116640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753056, 23.486595, 8.181422>,  <17.095184, 23.309702, 8.289392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753056, 23.486595, 8.181422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029772, -0.478176, -0.877759,
		-0.517247, -0.758800, 0.395826,
		-0.855318, 0.442233, -0.269926,
		16.496460, 23.619265, 8.100445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670771, 22.802513, 8.017718>,  <17.095184, 23.309702, 8.289392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670771, 22.802513, 8.017718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545967, 23.150509, 7.864999>,  <16.471085, 23.359306, 7.773367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545967, 23.150509, 7.864999>,  <16.670771, 22.802513, 8.017718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545967, 23.150509, 7.864999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141417, -0.439911, -0.886837,
		-0.939495, -0.222709, 0.260287,
		-0.312010, 0.869988, -0.381799,
		16.452364, 23.411505, 7.750459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056398, 22.576485, 7.597930>,  <16.670771, 22.802513, 8.017718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056398, 22.576485, 7.597930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139996, 22.943897, 7.463691>,  <16.190153, 23.164345, 7.383147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139996, 22.943897, 7.463691>,  <16.056398, 22.576485, 7.597930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139996, 22.943897, 7.463691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381852, -0.239282, -0.892711,
		-0.900284, 0.314719, 0.300734,
		0.208993, 0.918529, -0.335597,
		16.202694, 23.219456, 7.363011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.436705, 22.842113, 7.246239>,  <16.056398, 22.576485, 7.597930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.436705, 22.842113, 7.246239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744630, 23.059982, 7.113139>,  <15.929385, 23.190702, 7.033279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744630, 23.059982, 7.113139>,  <15.436705, 22.842113, 7.246239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744630, 23.059982, 7.113139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381594, -0.025155, -0.923988,
		-0.511638, 0.838273, 0.188478,
		0.769813, 0.544670, -0.332750,
		15.975574, 23.223383, 7.013314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686837, 22.979176, 7.636995>,  <15.436705, 22.842113, 7.246239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.686837, 22.979176, 7.636995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439792, 22.667282, 7.678111>,  <14.291564, 22.480146, 7.702781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439792, 22.667282, 7.678111>,  <14.686837, 22.979176, 7.636995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439792, 22.667282, 7.678111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089299, 0.199374, 0.975846,
		-0.781395, 0.593517, -0.192766,
		-0.617614, -0.779735, 0.102789,
		14.254507, 22.433361, 7.708948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262184, 23.158800, 8.175154>,  <14.686837, 22.979176, 7.636995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262184, 23.158800, 8.175154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236037, 22.759941, 8.160082>,  <14.220349, 22.520626, 8.151038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236037, 22.759941, 8.160082>,  <14.262184, 23.158800, 8.175154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236037, 22.759941, 8.160082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110024, -0.044733, 0.992922,
		-0.991777, 0.060760, 0.112635,
		-0.065368, -0.997150, -0.037680,
		14.216427, 22.460796, 8.148778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705112, 22.945932, 8.653808>,  <14.262184, 23.158800, 8.175154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705112, 22.945932, 8.653808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907647, 22.604046, 8.608054>,  <14.029169, 22.398914, 8.580602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907647, 22.604046, 8.608054>,  <13.705112, 22.945932, 8.653808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907647, 22.604046, 8.608054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046453, -0.105416, 0.993342,
		-0.861082, -0.508282, -0.013673,
		0.506340, -0.854714, -0.114383,
		14.059549, 22.347631, 8.573739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358894, 22.382267, 9.037827>,  <13.705112, 22.945932, 8.653808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358894, 22.382267, 9.037827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737723, 22.261497, 8.994202>,  <13.965021, 22.189035, 8.968026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737723, 22.261497, 8.994202>,  <13.358894, 22.382267, 9.037827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737723, 22.261497, 8.994202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004403, -0.327498, 0.944842,
		-0.320979, -0.895317, -0.308836,
		0.947076, -0.301914, -0.109062,
		14.021846, 22.170921, 8.961482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.360747, 21.822710, 9.450416>,  <13.358894, 22.382267, 9.037827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.360747, 21.822710, 9.450416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747605, 21.899509, 9.383764>,  <13.979720, 21.945589, 9.343773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747605, 21.899509, 9.383764>,  <13.360747, 21.822710, 9.450416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747605, 21.899509, 9.383764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198359, -0.159972, 0.966986,
		0.159004, -0.968269, -0.192801,
		0.967146, 0.191999, -0.166629,
		14.037749, 21.957109, 9.333776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608622, 21.248772, 9.832060>,  <13.360747, 21.822710, 9.450416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608622, 21.248772, 9.832060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873942, 21.542068, 9.772215>,  <14.033134, 21.718046, 9.736308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873942, 21.542068, 9.772215>,  <13.608622, 21.248772, 9.832060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873942, 21.542068, 9.772215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286669, -0.064287, 0.955870,
		0.691268, -0.676920, -0.252840,
		0.663302, 0.733244, -0.149612,
		14.072933, 21.762041, 9.727331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243318, 21.053669, 10.233586>,  <13.608622, 21.248772, 9.832060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243318, 21.053669, 10.233586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262687, 21.447422, 10.165891>,  <14.274308, 21.683674, 10.125274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262687, 21.447422, 10.165891>,  <14.243318, 21.053669, 10.233586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262687, 21.447422, 10.165891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312905, 0.145959, 0.938503,
		0.948550, -0.098400, -0.300951,
		0.048422, 0.984385, -0.169239,
		14.277213, 21.742737, 10.115119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.771962, 21.164387, 10.543667>,  <14.243318, 21.053669, 10.233586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.771962, 21.164387, 10.543667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.629092, 21.538002, 10.544317>,  <14.543370, 21.762171, 10.544707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.629092, 21.538002, 10.544317>,  <14.771962, 21.164387, 10.543667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.629092, 21.538002, 10.544317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342085, 0.129192, 0.930746,
		0.869140, 0.332996, -0.365664,
		-0.357176, 0.934036, 0.001627,
		14.521939, 21.818213, 10.544806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220674, 21.592466, 10.920704>,  <14.771962, 21.164387, 10.543667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220674, 21.592466, 10.920704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.887013, 21.813080, 10.921561>,  <14.686817, 21.945448, 10.922075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.887013, 21.813080, 10.921561>,  <15.220674, 21.592466, 10.920704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887013, 21.813080, 10.921561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234563, 0.351237, 0.906429,
		0.499172, 0.756601, -0.422354,
		-0.834151, 0.551532, 0.002143,
		14.636768, 21.978539, 10.922204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372762, 22.285603, 11.115324>,  <15.220674, 21.592466, 10.920704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372762, 22.285603, 11.115324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980418, 22.259502, 11.188711>,  <14.745012, 22.243843, 11.232743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980418, 22.259502, 11.188711>,  <15.372762, 22.285603, 11.115324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980418, 22.259502, 11.188711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130200, 0.480837, 0.867089,
		-0.144797, 0.874379, -0.463137,
		-0.980858, -0.065251, 0.183468,
		14.686161, 22.239927, 11.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100533, 22.951683, 11.337677>,  <15.372762, 22.285603, 11.115324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100533, 22.951683, 11.337677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.795196, 22.733154, 11.475572>,  <14.611994, 22.602037, 11.558309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.795196, 22.733154, 11.475572>,  <15.100533, 22.951683, 11.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795196, 22.733154, 11.475572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091247, 0.437117, 0.894764,
		-0.639518, 0.714467, -0.283820,
		-0.763342, -0.546320, 0.344737,
		14.566193, 22.569258, 11.578993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852615, 23.323029, 11.876484>,  <15.100533, 22.951683, 11.337677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.852615, 23.323029, 11.876484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644427, 22.991329, 11.957927>,  <14.519514, 22.792309, 12.006792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644427, 22.991329, 11.957927>,  <14.852615, 23.323029, 11.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644427, 22.991329, 11.957927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103037, 0.297700, 0.949083,
		-0.847640, 0.472990, -0.240388,
		-0.520470, -0.829250, 0.203607,
		14.488286, 22.742554, 12.019009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.173943, 23.526606, 12.160585>,  <14.852615, 23.323029, 11.876484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.173943, 23.526606, 12.160585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219321, 23.155128, 12.301816>,  <14.246549, 22.932243, 12.386555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219321, 23.155128, 12.301816>,  <14.173943, 23.526606, 12.160585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219321, 23.155128, 12.301816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021748, 0.352964, 0.935384,
		-0.993306, -0.113795, 0.019845,
		0.113446, -0.928691, 0.353077,
		14.253355, 22.876522, 12.407739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742826, 23.504753, 12.748592>,  <14.173943, 23.526606, 12.160585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742826, 23.504753, 12.748592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022218, 23.221977, 12.793063>,  <14.189854, 23.052311, 12.819745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022218, 23.221977, 12.793063>,  <13.742826, 23.504753, 12.748592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022218, 23.221977, 12.793063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158352, 0.304184, 0.939360,
		-0.697889, -0.638520, 0.324412,
		0.698481, -0.706940, 0.111176,
		14.231762, 23.009895, 12.826416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689480, 23.199898, 13.464561>,  <13.742826, 23.504753, 12.748592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689480, 23.199898, 13.464561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062779, 23.124924, 13.341979>,  <14.286759, 23.079939, 13.268430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062779, 23.124924, 13.341979>,  <13.689480, 23.199898, 13.464561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062779, 23.124924, 13.341979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354999, 0.350640, 0.866618,
		-0.054979, -0.917562, 0.393774,
		0.933249, -0.187435, -0.306456,
		14.342754, 23.068693, 13.250042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005964, 22.885645, 14.131708>,  <13.689480, 23.199898, 13.464561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005964, 22.885645, 14.131708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289145, 22.974129, 13.863420>,  <14.459054, 23.027218, 13.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289145, 22.974129, 13.863420>,  <14.005964, 22.885645, 14.131708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289145, 22.974129, 13.863420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618175, 0.265197, 0.739953,
		0.341559, -0.938476, 0.050999,
		0.707953, 0.221211, -0.670723,
		14.501532, 23.040491, 13.662203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576610, 22.521955, 14.299241>,  <14.005964, 22.885645, 14.131708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576610, 22.521955, 14.299241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682586, 22.856747, 14.107709>,  <14.746171, 23.057621, 13.992790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682586, 22.856747, 14.107709>,  <14.576610, 22.521955, 14.299241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.682586, 22.856747, 14.107709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537465, 0.284104, 0.793987,
		0.800586, -0.467713, -0.374575,
		0.264940, 0.836976, -0.478829,
		14.762068, 23.107840, 13.964060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223508, 22.699833, 14.643665>,  <14.576610, 22.521955, 14.299241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223508, 22.699833, 14.643665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134278, 23.024311, 14.427444>,  <15.080740, 23.218998, 14.297710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134278, 23.024311, 14.427444>,  <15.223508, 22.699833, 14.643665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.134278, 23.024311, 14.427444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562899, 0.559925, 0.607971,
		0.795853, -0.168654, -0.581527,
		-0.223075, 0.811197, -0.540553,
		15.067356, 23.267670, 14.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.789495, 23.053669, 14.719097>,  <15.223508, 22.699833, 14.643665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.789495, 23.053669, 14.719097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528752, 23.327629, 14.588870>,  <15.372307, 23.492006, 14.510734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528752, 23.327629, 14.588870>,  <15.789495, 23.053669, 14.719097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528752, 23.327629, 14.588870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428167, 0.686737, 0.587422,
		0.625906, 0.243517, -0.740906,
		-0.651855, 0.684903, -0.325567,
		15.333196, 23.533100, 14.491200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193520, 23.613373, 14.574512>,  <15.789495, 23.053669, 14.719097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193520, 23.613373, 14.574512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820695, 23.740906, 14.643342>,  <15.597000, 23.817425, 14.684640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820695, 23.740906, 14.643342>,  <16.193520, 23.613373, 14.574512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820695, 23.740906, 14.643342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346051, 0.642792, 0.683423,
		0.107289, 0.696538, -0.709453,
		-0.932061, 0.318831, 0.172074,
		15.541077, 23.836555, 14.694964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253923, 24.321938, 14.622197>,  <16.193520, 23.613373, 14.574512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253923, 24.321938, 14.622197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893661, 24.264320, 14.786180>,  <15.677503, 24.229750, 14.884569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893661, 24.264320, 14.786180>,  <16.253923, 24.321938, 14.622197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893661, 24.264320, 14.786180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258176, 0.581478, 0.771511,
		-0.349511, 0.800709, -0.486525,
		-0.900659, -0.144043, 0.409957,
		15.623463, 24.221107, 14.909166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.037884, 24.923248, 14.901721>,  <16.253923, 24.321938, 14.622197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.037884, 24.923248, 14.901721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784226, 24.684669, 15.098542>,  <15.632032, 24.541523, 15.216635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784226, 24.684669, 15.098542>,  <16.037884, 24.923248, 14.901721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784226, 24.684669, 15.098542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167261, 0.515490, 0.840413,
		-0.754909, 0.615243, -0.227132,
		-0.634142, -0.596445, 0.492054,
		15.593984, 24.505735, 15.246159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561943, 25.399267, 15.396993>,  <16.037884, 24.923248, 14.901721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561943, 25.399267, 15.396993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.512378, 25.030693, 15.544288>,  <15.482638, 24.809547, 15.632665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.512378, 25.030693, 15.544288>,  <15.561943, 25.399267, 15.396993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512378, 25.030693, 15.544288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172848, 0.345381, 0.922407,
		-0.977123, 0.177948, 0.116471,
		-0.123913, -0.921437, 0.368238,
		15.475204, 24.754261, 15.654759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308816, 25.463562, 16.131332>,  <15.561943, 25.399267, 15.396993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308816, 25.463562, 16.131332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.454091, 25.092152, 16.100523>,  <15.541256, 24.869305, 16.082037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.454091, 25.092152, 16.100523>,  <15.308816, 25.463562, 16.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454091, 25.092152, 16.100523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107074, -0.040528, 0.993425,
		-0.925543, -0.369048, 0.084701,
		0.363188, -0.928527, -0.077026,
		15.563047, 24.813593, 16.077415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792524, 24.965445, 16.540672>,  <15.308816, 25.463562, 16.131332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792524, 24.965445, 16.540672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179614, 24.866402, 16.521896>,  <15.411868, 24.806976, 16.510632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179614, 24.866402, 16.521896>,  <14.792524, 24.965445, 16.540672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179614, 24.866402, 16.521896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085840, 0.148733, 0.985145,
		-0.236947, -0.957376, 0.165187,
		0.967723, -0.247606, -0.046940,
		15.469931, 24.792120, 16.507814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931180, 24.458263, 17.066761>,  <14.792524, 24.965445, 16.540672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931180, 24.458263, 17.066761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289701, 24.610912, 16.976419>,  <15.504812, 24.702501, 16.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289701, 24.610912, 16.976419>,  <14.931180, 24.458263, 17.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289701, 24.610912, 16.976419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263681, -0.049163, 0.963356,
		0.356536, -0.923010, -0.144692,
		0.896301, 0.381623, -0.225852,
		15.558591, 24.725399, 16.908665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338425, 24.112511, 17.548031>,  <14.931180, 24.458263, 17.066761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338425, 24.112511, 17.548031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580577, 24.404186, 17.420408>,  <15.725868, 24.579191, 17.343834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580577, 24.404186, 17.420408>,  <15.338425, 24.112511, 17.548031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580577, 24.404186, 17.420408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666933, -0.245937, 0.703361,
		0.434415, -0.638591, -0.635205,
		0.605380, 0.729189, -0.319059,
		15.762191, 24.622944, 17.324690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052067, 23.825212, 17.608229>,  <15.338425, 24.112511, 17.548031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052067, 23.825212, 17.608229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080372, 24.224209, 17.607555>,  <16.097355, 24.463608, 17.607151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080372, 24.224209, 17.607555>,  <16.052067, 23.825212, 17.608229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080372, 24.224209, 17.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616905, -0.042436, 0.785893,
		0.783850, -0.056652, -0.618361,
		0.070763, 0.997492, -0.001685,
		16.101601, 24.523457, 17.607050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726482, 24.115698, 17.687374>,  <16.052067, 23.825212, 17.608229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726482, 24.115698, 17.687374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500908, 24.409290, 17.838766>,  <16.365562, 24.585445, 17.929602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500908, 24.409290, 17.838766>,  <16.726482, 24.115698, 17.687374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500908, 24.409290, 17.838766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475838, -0.085773, 0.875341,
		0.674948, 0.673731, -0.300886,
		-0.563936, 0.733982, 0.378479,
		16.331728, 24.629484, 17.952311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190331, 24.528168, 18.047098>,  <16.726482, 24.115698, 17.687374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190331, 24.528168, 18.047098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855129, 24.669899, 18.213089>,  <16.654009, 24.754938, 18.312683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855129, 24.669899, 18.213089>,  <17.190331, 24.528168, 18.047098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855129, 24.669899, 18.213089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438256, -0.016043, 0.898707,
		0.325094, 0.934984, -0.141842,
		-0.838001, 0.354327, 0.414978,
		16.603729, 24.776197, 18.337582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406216, 25.015694, 18.562435>,  <17.190331, 24.528168, 18.047098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406216, 25.015694, 18.562435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034710, 24.923492, 18.678547>,  <16.811806, 24.868172, 18.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034710, 24.923492, 18.678547>,  <17.406216, 25.015694, 18.562435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034710, 24.923492, 18.678547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297821, 0.002177, 0.954619,
		-0.220673, 0.973070, 0.066626,
		-0.928766, -0.230501, 0.290281,
		16.756081, 24.854342, 18.765631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389427, 25.360544, 19.182478>,  <17.406216, 25.015694, 18.562435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389427, 25.360544, 19.182478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.062218, 25.132301, 19.211439>,  <16.865892, 24.995356, 19.228815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.062218, 25.132301, 19.211439>,  <17.389427, 25.360544, 19.182478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.062218, 25.132301, 19.211439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187065, -0.144897, 0.971603,
		-0.543913, 0.808339, 0.225270,
		-0.818025, -0.570608, 0.072401,
		16.816811, 24.961119, 19.233160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989988, 25.640644, 19.766832>,  <17.389427, 25.360544, 19.182478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989988, 25.640644, 19.766832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845612, 25.271114, 19.715807>,  <16.758986, 25.049397, 19.685192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845612, 25.271114, 19.715807>,  <16.989988, 25.640644, 19.766832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845612, 25.271114, 19.715807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066193, -0.161815, 0.984598,
		-0.930237, 0.346938, 0.119557,
		-0.360940, -0.923823, -0.127562,
		16.737329, 24.993967, 19.677538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435217, 25.504179, 20.271564>,  <16.989988, 25.640644, 19.766832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435217, 25.504179, 20.271564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574726, 25.143772, 20.168392>,  <16.658432, 24.927528, 20.106489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574726, 25.143772, 20.168392>,  <16.435217, 25.504179, 20.271564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574726, 25.143772, 20.168392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302976, -0.152039, 0.940792,
		-0.886884, -0.406269, 0.219960,
		0.348772, -0.901016, -0.257930,
		16.679358, 24.873466, 20.091013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246080, 25.133768, 20.810831>,  <16.435217, 25.504179, 20.271564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246080, 25.133768, 20.810831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529121, 24.900043, 20.651896>,  <16.698946, 24.759809, 20.556534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529121, 24.900043, 20.651896>,  <16.246080, 25.133768, 20.810831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529121, 24.900043, 20.651896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373020, -0.168690, 0.912359,
		-0.600128, -0.793805, 0.098593,
		0.707603, -0.584310, -0.397341,
		16.741402, 24.724751, 20.532694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312090, 24.480799, 21.222349>,  <16.246080, 25.133768, 20.810831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312090, 24.480799, 21.222349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661415, 24.549511, 21.040001>,  <16.871010, 24.590738, 20.930592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661415, 24.549511, 21.040001>,  <16.312090, 24.480799, 21.222349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661415, 24.549511, 21.040001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474060, -0.084097, 0.876467,
		0.112222, -0.981539, -0.154877,
		0.873312, 0.171780, -0.455871,
		16.923409, 24.601046, 20.903240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775761, 24.046984, 21.511822>,  <16.312090, 24.480799, 21.222349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775761, 24.046984, 21.511822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012962, 24.335457, 21.368582>,  <17.155283, 24.508541, 21.282639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012962, 24.335457, 21.368582>,  <16.775761, 24.046984, 21.511822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012962, 24.335457, 21.368582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629736, -0.138248, 0.764408,
		0.501773, -0.678807, -0.536138,
		0.593006, 0.721185, -0.358100,
		17.190865, 24.551813, 21.261152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563850, 23.847420, 21.629230>,  <16.775761, 24.046984, 21.511822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563850, 23.847420, 21.629230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592075, 24.235607, 21.536959>,  <17.609011, 24.468519, 21.481596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592075, 24.235607, 21.536959>,  <17.563850, 23.847420, 21.629230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592075, 24.235607, 21.536959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720377, 0.110385, 0.684743,
		0.689984, -0.214492, -0.691314,
		0.070561, 0.970468, -0.230678,
		17.613243, 24.526747, 21.467754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737333, 23.257690, 21.943474>,  <17.563850, 23.847420, 21.629230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737333, 23.257690, 21.943474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878208, 22.883480, 21.932457>,  <17.962732, 22.658955, 21.925846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878208, 22.883480, 21.932457>,  <17.737333, 23.257690, 21.943474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878208, 22.883480, 21.932457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197290, -0.045441, -0.979292,
		0.914900, 0.350326, -0.200573,
		0.352185, -0.935525, -0.027542,
		17.983864, 22.602823, 21.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177521, 23.193100, 21.331043>,  <17.737333, 23.257690, 21.943474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177521, 23.193100, 21.331043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074055, 22.814762, 21.409502>,  <18.011974, 22.587759, 21.456577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074055, 22.814762, 21.409502>,  <18.177521, 23.193100, 21.331043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074055, 22.814762, 21.409502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259417, -0.127578, -0.957302,
		0.930480, -0.298506, -0.212367,
		-0.258667, -0.945842, 0.196147,
		17.996454, 22.531010, 21.468346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325258, 22.778196, 20.595444>,  <18.177521, 23.193100, 21.331043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325258, 22.778196, 20.595444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070808, 22.570374, 20.823620>,  <17.918139, 22.445679, 20.960526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070808, 22.570374, 20.823620>,  <18.325258, 22.778196, 20.595444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070808, 22.570374, 20.823620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480734, -0.311400, -0.819710,
		0.603523, -0.795669, -0.051680,
		-0.636125, -0.519559, 0.570442,
		17.879971, 22.414507, 20.994753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296209, 22.085554, 20.367222>,  <18.325258, 22.778196, 20.595444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296209, 22.085554, 20.367222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946465, 22.175266, 20.539354>,  <17.736618, 22.229094, 20.642633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946465, 22.175266, 20.539354>,  <18.296209, 22.085554, 20.367222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946465, 22.175266, 20.539354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483875, -0.335756, -0.808166,
		-0.036766, -0.914859, 0.402096,
		-0.874364, 0.224278, 0.430333,
		17.684155, 22.242550, 20.668455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834534, 21.569080, 20.115791>,  <18.296209, 22.085554, 20.367222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834534, 21.569080, 20.115791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.567886, 21.802776, 20.300953>,  <17.407898, 21.942995, 20.412050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.567886, 21.802776, 20.300953>,  <17.834534, 21.569080, 20.115791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567886, 21.802776, 20.300953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726919, -0.372115, -0.577164,
		-0.164949, -0.721244, 0.672755,
		-0.666618, 0.584241, 0.462906,
		17.367901, 21.978048, 20.439825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306044, 21.132418, 20.251459>,  <17.834534, 21.569080, 20.115791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306044, 21.132418, 20.251459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156380, 21.502056, 20.220350>,  <17.066582, 21.723839, 20.201685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156380, 21.502056, 20.220350>,  <17.306044, 21.132418, 20.251459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156380, 21.502056, 20.220350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672543, -0.328133, -0.663336,
		-0.638507, -0.195887, 0.744269,
		-0.374158, 0.924098, -0.077773,
		17.044132, 21.779285, 20.197018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610096, 20.985737, 20.137623>,  <17.306044, 21.132418, 20.251459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610096, 20.985737, 20.137623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694309, 21.358280, 20.018797>,  <16.744837, 21.581806, 19.947500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694309, 21.358280, 20.018797>,  <16.610096, 20.985737, 20.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694309, 21.358280, 20.018797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592124, -0.120304, -0.796816,
		-0.777860, 0.343655, 0.526152,
		0.210531, 0.931358, -0.297066,
		16.757469, 21.637688, 19.929678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985209, 21.390251, 19.975096>,  <16.610096, 20.985737, 20.137623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985209, 21.390251, 19.975096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285538, 21.569042, 19.780579>,  <16.465734, 21.676317, 19.663868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285538, 21.569042, 19.780579>,  <15.985209, 21.390251, 19.975096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285538, 21.569042, 19.780579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521505, -0.050650, -0.851744,
		-0.405340, 0.893110, 0.195071,
		0.750821, 0.446977, -0.486292,
		16.510784, 21.703135, 19.634691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597368, 21.691830, 19.510527>,  <15.985209, 21.390251, 19.975096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597368, 21.691830, 19.510527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976306, 21.728844, 19.387907>,  <16.203669, 21.751053, 19.314335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976306, 21.728844, 19.387907>,  <15.597368, 21.691830, 19.510527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976306, 21.728844, 19.387907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290539, -0.154084, -0.944375,
		-0.134623, 0.983715, -0.119086,
		0.947345, 0.092536, -0.306551,
		16.260509, 21.756605, 19.295942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562746, 21.973511, 18.829027>,  <15.597368, 21.691830, 19.510527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562746, 21.973511, 18.829027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933896, 21.829895, 18.869305>,  <16.156586, 21.743725, 18.893471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933896, 21.829895, 18.869305>,  <15.562746, 21.973511, 18.829027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933896, 21.829895, 18.869305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062283, -0.415460, -0.907477,
		0.367656, 0.835752, -0.407857,
		0.927874, -0.359041, 0.100693,
		16.212257, 21.722183, 18.899513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977471, 22.329159, 18.323439>,  <15.562746, 21.973511, 18.829027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977471, 22.329159, 18.323439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.160027, 21.985233, 18.415031>,  <16.269560, 21.778879, 18.469988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.160027, 21.985233, 18.415031>,  <15.977471, 22.329159, 18.323439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160027, 21.985233, 18.415031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082212, -0.296994, -0.951334,
		0.885975, 0.415353, -0.206231,
		0.456388, -0.859812, 0.228982,
		16.296944, 21.727289, 18.483727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399794, 22.185049, 17.697212>,  <15.977471, 22.329159, 18.323439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399794, 22.185049, 17.697212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346897, 21.848427, 17.906706>,  <16.315159, 21.646454, 18.032402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346897, 21.848427, 17.906706>,  <16.399794, 22.185049, 17.697212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346897, 21.848427, 17.906706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195578, -0.495833, -0.846108,
		0.971731, -0.214322, -0.099019,
		-0.132242, -0.841555, 0.523733,
		16.307224, 21.595961, 18.063826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805479, 21.625359, 17.410114>,  <16.399794, 22.185049, 17.697212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805479, 21.625359, 17.410114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512398, 21.461407, 17.627422>,  <16.336550, 21.363035, 17.757807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512398, 21.461407, 17.627422>,  <16.805479, 21.625359, 17.410114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512398, 21.461407, 17.627422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297871, -0.524606, -0.797534,
		0.611897, -0.746181, 0.262289,
		-0.732704, -0.409881, 0.543271,
		16.292587, 21.338442, 17.790403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817919, 20.997875, 17.134861>,  <16.805479, 21.625359, 17.410114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817919, 20.997875, 17.134861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463367, 21.028530, 17.317492>,  <16.250637, 21.046923, 17.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463367, 21.028530, 17.317492>,  <16.817919, 20.997875, 17.134861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463367, 21.028530, 17.317492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434346, -0.479016, -0.762816,
		0.160247, -0.874455, 0.457876,
		-0.886377, 0.076638, 0.456576,
		16.197454, 21.051521, 17.454464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591038, 20.337685, 17.142567>,  <16.817919, 20.997875, 17.134861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591038, 20.337685, 17.142567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288277, 20.598797, 17.155075>,  <16.106621, 20.755465, 17.162580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288277, 20.598797, 17.155075>,  <16.591038, 20.337685, 17.142567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288277, 20.598797, 17.155075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447329, -0.482601, -0.752990,
		-0.476439, -0.583933, 0.657289,
		-0.756903, 0.652778, 0.031280,
		16.061207, 20.794632, 17.164455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969787, 19.918180, 17.076767>,  <16.591038, 20.337685, 17.142567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969787, 19.918180, 17.076767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844895, 20.285019, 16.977612>,  <15.769960, 20.505121, 16.918119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844895, 20.285019, 16.977612>,  <15.969787, 19.918180, 17.076767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844895, 20.285019, 16.977612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661591, -0.397162, -0.636050,
		-0.681771, -0.034592, 0.730747,
		-0.312227, 0.917096, -0.247887,
		15.751227, 20.560148, 16.903246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267722, 19.815701, 16.991352>,  <15.969787, 19.918180, 17.076767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267722, 19.815701, 16.991352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308690, 20.175541, 16.821541>,  <15.333271, 20.391445, 16.719654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308690, 20.175541, 16.821541>,  <15.267722, 19.815701, 16.991352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308690, 20.175541, 16.821541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643132, -0.265697, -0.718183,
		-0.758875, 0.346585, 0.551350,
		0.102419, 0.899602, -0.424530,
		15.339416, 20.445421, 16.694181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577353, 19.852688, 16.633945>,  <15.267722, 19.815701, 16.991352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577353, 19.852688, 16.633945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815045, 20.131817, 16.473982>,  <14.957662, 20.299295, 16.378004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815045, 20.131817, 16.473982>,  <14.577353, 19.852688, 16.633945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815045, 20.131817, 16.473982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411169, -0.163768, -0.896727,
		-0.691250, 0.697296, 0.189608,
		0.594233, 0.697824, -0.399911,
		14.993315, 20.341164, 16.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.189222, 20.386427, 16.140699>,  <14.577353, 19.852688, 16.633945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.189222, 20.386427, 16.140699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568938, 20.412136, 16.017593>,  <14.796768, 20.427563, 15.943730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568938, 20.412136, 16.017593>,  <14.189222, 20.386427, 16.140699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568938, 20.412136, 16.017593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309028, 0.010524, -0.950995,
		-0.057886, 0.997877, 0.029853,
		0.949290, 0.064275, -0.307763,
		14.853725, 20.431419, 15.925264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195257, 21.023849, 15.658628>,  <14.189222, 20.386427, 16.140699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195257, 21.023849, 15.658628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504430, 20.781372, 15.583684>,  <14.689934, 20.635885, 15.538718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504430, 20.781372, 15.583684>,  <14.195257, 21.023849, 15.658628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504430, 20.781372, 15.583684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264311, -0.039175, -0.963642,
		0.576815, 0.794351, -0.190504,
		0.772933, -0.606195, -0.187359,
		14.736310, 20.599514, 15.527476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629031, 21.378300, 15.151734>,  <14.195257, 21.023849, 15.658628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629031, 21.378300, 15.151734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736680, 20.993092, 15.146640>,  <14.801270, 20.761967, 15.143583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736680, 20.993092, 15.146640>,  <14.629031, 21.378300, 15.151734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736680, 20.993092, 15.146640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290868, -0.068663, -0.954296,
		0.918134, 0.260526, -0.298591,
		0.269121, -0.963022, -0.012737,
		14.817416, 20.704185, 15.142818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106272, 21.314344, 14.578960>,  <14.629031, 21.378300, 15.151734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106272, 21.314344, 14.578960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979472, 20.943989, 14.661174>,  <14.903393, 20.721775, 14.710502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979472, 20.943989, 14.661174>,  <15.106272, 21.314344, 14.578960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979472, 20.943989, 14.661174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152181, -0.164246, -0.974610,
		0.936137, -0.340229, -0.088837,
		-0.316999, -0.925887, 0.205533,
		14.884373, 20.666222, 14.722834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542779, 20.963728, 14.154693>,  <15.106272, 21.314344, 14.578960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542779, 20.963728, 14.154693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255071, 20.695587, 14.227664>,  <15.082446, 20.534702, 14.271446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255071, 20.695587, 14.227664>,  <15.542779, 20.963728, 14.154693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255071, 20.695587, 14.227664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202700, -0.048666, -0.978031,
		0.664503, -0.740446, -0.100877,
		-0.719270, -0.670352, 0.182427,
		15.039289, 20.494482, 14.282393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721820, 20.368410, 13.826316>,  <15.542779, 20.963728, 14.154693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721820, 20.368410, 13.826316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323937, 20.376335, 13.866649>,  <15.085208, 20.381090, 13.890848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323937, 20.376335, 13.866649>,  <15.721820, 20.368410, 13.826316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323937, 20.376335, 13.866649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102637, -0.239808, -0.965380,
		0.005053, -0.970618, 0.240572,
		-0.994706, 0.019813, 0.100833,
		15.025526, 20.382280, 13.896898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474335, 19.802662, 13.439209>,  <15.721820, 20.368410, 13.826316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474335, 19.802662, 13.439209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124013, 19.992317, 13.475339>,  <14.913820, 20.106112, 13.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124013, 19.992317, 13.475339>,  <15.474335, 19.802662, 13.439209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124013, 19.992317, 13.475339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215428, -0.216525, -0.952212,
		-0.431924, -0.853410, 0.291777,
		-0.875804, 0.474140, 0.090326,
		14.861272, 20.134560, 13.502437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926167, 19.370178, 13.274167>,  <15.474335, 19.802662, 13.439209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.926167, 19.370178, 13.274167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738091, 19.721874, 13.243548>,  <14.625247, 19.932892, 13.225177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738091, 19.721874, 13.243548>,  <14.926167, 19.370178, 13.274167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738091, 19.721874, 13.243548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385390, -0.282568, -0.878424,
		-0.793977, -0.383523, 0.471711,
		-0.470186, 0.879241, -0.076547,
		14.597035, 19.985647, 13.220584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265586, 19.228458, 13.131792>,  <14.926167, 19.370178, 13.274167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265586, 19.228458, 13.131792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314490, 19.600246, 12.992571>,  <14.343833, 19.823318, 12.909039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314490, 19.600246, 12.992571>,  <14.265586, 19.228458, 13.131792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314490, 19.600246, 12.992571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355222, -0.286474, -0.889803,
		-0.926752, 0.232424, 0.295143,
		0.122261, 0.929469, -0.348053,
		14.351169, 19.879087, 12.888155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593803, 19.390574, 12.756434>,  <14.265586, 19.228458, 13.131792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593803, 19.390574, 12.756434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883973, 19.629875, 12.620288>,  <14.058075, 19.773457, 12.538600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883973, 19.629875, 12.620288>,  <13.593803, 19.390574, 12.756434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883973, 19.629875, 12.620288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168164, -0.325468, -0.930479,
		-0.667443, 0.732230, -0.135498,
		0.725425, 0.598256, -0.340366,
		14.101601, 19.809353, 12.518178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283101, 19.848867, 12.406596>,  <13.593803, 19.390574, 12.756434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283101, 19.848867, 12.406596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662877, 19.852974, 12.281082>,  <13.890742, 19.855438, 12.205774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662877, 19.852974, 12.281082>,  <13.283101, 19.848867, 12.406596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662877, 19.852974, 12.281082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310267, -0.121997, -0.942789,
		-0.047958, 0.992477, -0.112645,
		0.949439, 0.010264, -0.313784,
		13.947709, 19.856052, 12.186947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250440, 20.083761, 11.668350>,  <13.283101, 19.848867, 12.406596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250440, 20.083761, 11.668350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621329, 19.937073, 11.698741>,  <13.843863, 19.849060, 11.716975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621329, 19.937073, 11.698741>,  <13.250440, 20.083761, 11.668350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621329, 19.937073, 11.698741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071017, -0.371358, -0.925770,
		0.367715, 0.853000, -0.370376,
		0.927223, -0.366722, 0.075976,
		13.899496, 19.827057, 11.721534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703229, 20.405041, 11.238275>,  <13.250440, 20.083761, 11.668350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703229, 20.405041, 11.238275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892451, 20.055393, 11.282341>,  <14.005984, 19.845606, 11.308781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892451, 20.055393, 11.282341>,  <13.703229, 20.405041, 11.238275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892451, 20.055393, 11.282341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021819, -0.136627, -0.990382,
		0.880762, 0.466103, -0.083705,
		0.473056, -0.874117, 0.110166,
		14.034369, 19.793158, 11.315391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175939, 20.471390, 10.783296>,  <13.703229, 20.405041, 11.238275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.175939, 20.471390, 10.783296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174054, 20.075874, 10.842999>,  <14.172924, 19.838566, 10.878821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174054, 20.075874, 10.842999>,  <14.175939, 20.471390, 10.783296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174054, 20.075874, 10.842999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044585, -0.149320, -0.987783,
		0.998995, 0.002002, 0.044789,
		-0.004710, -0.988787, 0.149259,
		14.172641, 19.779238, 10.887777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748811, 20.110674, 10.403180>,  <14.175939, 20.471390, 10.783296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748811, 20.110674, 10.403180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496331, 19.804550, 10.453606>,  <14.344844, 19.620876, 10.483861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496331, 19.804550, 10.453606>,  <14.748811, 20.110674, 10.403180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496331, 19.804550, 10.453606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071654, -0.219374, -0.973006,
		0.772305, -0.605127, 0.193306,
		-0.631199, -0.765308, 0.126064,
		14.306972, 19.574959, 10.491425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980453, 19.613628, 9.924073>,  <14.748811, 20.110674, 10.403180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980453, 19.613628, 9.924073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614985, 19.484501, 10.022861>,  <14.395704, 19.407024, 10.082133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614985, 19.484501, 10.022861>,  <14.980453, 19.613628, 9.924073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614985, 19.484501, 10.022861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136584, -0.328430, -0.934601,
		0.382820, -0.887649, 0.255985,
		-0.913670, -0.322820, 0.246968,
		14.340884, 19.387655, 10.096951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831039, 18.907154, 9.723902>,  <14.980453, 19.613628, 9.924073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831039, 18.907154, 9.723902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.479442, 19.097359, 9.738088>,  <14.268483, 19.211481, 9.746599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.479442, 19.097359, 9.738088>,  <14.831039, 18.907154, 9.723902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.479442, 19.097359, 9.738088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253834, -0.403657, -0.878993,
		-0.403657, -0.781632, 0.475513,
		0.878993, -0.475513, -0.035466,
		14.215744, 19.240013, 9.748728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362019, 18.482702, 9.533267>,  <14.831039, 18.907154, 9.723902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362019, 18.482702, 9.533267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117345, 18.790108, 9.458190>,  <13.970541, 18.974550, 9.413144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117345, 18.790108, 9.458190>,  <14.362019, 18.482702, 9.533267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.117345, 18.790108, 9.458190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144488, -0.341793, -0.928602,
		-0.777795, -0.540891, 0.320111,
		-0.611684, 0.768514, -0.187693,
		13.933840, 19.020662, 9.401882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735905, 18.279350, 9.282828>,  <14.362019, 18.482702, 9.533267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735905, 18.279350, 9.282828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738774, 18.644020, 9.118487>,  <13.740496, 18.862822, 9.019883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738774, 18.644020, 9.118487>,  <13.735905, 18.279350, 9.282828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738774, 18.644020, 9.118487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381269, -0.377333, -0.843952,
		-0.924437, 0.162699, 0.344886,
		0.007173, 0.911674, -0.410852,
		13.740926, 18.917522, 8.995232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208204, 18.224474, 8.905088>,  <13.735905, 18.279350, 9.282828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208204, 18.224474, 8.905088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410895, 18.543644, 8.774527>,  <13.532510, 18.735146, 8.696190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410895, 18.543644, 8.774527>,  <13.208204, 18.224474, 8.905088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410895, 18.543644, 8.774527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249174, -0.226897, -0.941504,
		-0.825312, 0.558417, 0.083848,
		0.506728, 0.797927, -0.326404,
		13.562914, 18.783022, 8.676605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781208, 18.507788, 8.391493>,  <13.208204, 18.224474, 8.905088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781208, 18.507788, 8.391493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146228, 18.644562, 8.301752>,  <13.365240, 18.726625, 8.247908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146228, 18.644562, 8.301752>,  <12.781208, 18.507788, 8.391493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.146228, 18.644562, 8.301752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153281, -0.222632, -0.962777,
		-0.379153, 0.912971, -0.150750,
		0.912550, 0.341933, -0.224353,
		13.419992, 18.747141, 8.234447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696923, 19.073910, 7.879791>,  <12.781208, 18.507788, 8.391493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696923, 19.073910, 7.879791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076549, 18.951775, 7.848683>,  <13.304324, 18.878494, 7.830019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076549, 18.951775, 7.848683>,  <12.696923, 19.073910, 7.879791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076549, 18.951775, 7.848683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127242, -0.145611, -0.981125,
		0.288250, 0.941045, -0.177046,
		0.949063, -0.305337, -0.077768,
		13.361268, 18.860174, 7.825353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164241, 19.398870, 7.480009>,  <12.696923, 19.073910, 7.879791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164241, 19.398870, 7.480009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263528, 19.011391, 7.481157>,  <13.323100, 18.778902, 7.481846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263528, 19.011391, 7.481157>,  <13.164241, 19.398870, 7.480009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263528, 19.011391, 7.481157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184917, -0.050293, -0.981467,
		0.950891, 0.243087, -0.191613,
		0.248219, -0.968700, 0.002872,
		13.337994, 18.720781, 7.482019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751328, 19.300526, 7.042899>,  <13.164241, 19.398870, 7.480009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751328, 19.300526, 7.042899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.453231, 19.034054, 7.031429>,  <13.274373, 18.874170, 7.024547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.453231, 19.034054, 7.031429>,  <13.751328, 19.300526, 7.042899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.453231, 19.034054, 7.031429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013115, 0.057640, -0.998251,
		0.666666, -0.743562, -0.051693,
		-0.745241, -0.666178, -0.028675,
		13.229658, 18.834200, 7.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923666, 18.802544, 6.467791>,  <13.751328, 19.300526, 7.042899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923666, 18.802544, 6.467791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526481, 18.805603, 6.515064>,  <13.288170, 18.807440, 6.543428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526481, 18.805603, 6.515064>,  <13.923666, 18.802544, 6.467791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526481, 18.805603, 6.515064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113103, 0.234720, -0.965461,
		-0.035126, -0.972033, -0.232203,
		-0.992962, 0.007650, 0.118184,
		13.228592, 18.807898, 6.550519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607139, 18.363501, 5.954007>,  <13.923666, 18.802544, 6.467791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607139, 18.363501, 5.954007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389039, 18.683678, 6.053605>,  <13.258180, 18.875784, 6.113364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389039, 18.683678, 6.053605>,  <13.607139, 18.363501, 5.954007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389039, 18.683678, 6.053605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025400, 0.312673, -0.949521,
		-0.837889, -0.511401, -0.190816,
		-0.545249, 0.800441, 0.248995,
		13.225465, 18.923809, 6.128304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051253, 18.404648, 5.525052>,  <13.607139, 18.363501, 5.954007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051253, 18.404648, 5.525052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153489, 18.772446, 5.644521>,  <13.214830, 18.993124, 5.716202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153489, 18.772446, 5.644521>,  <13.051253, 18.404648, 5.525052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.153489, 18.772446, 5.644521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027004, 0.315602, -0.948507,
		-0.966408, 0.234363, 0.105494,
		0.255590, 0.919494, 0.298672,
		13.230165, 19.048294, 5.734122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.492168, 18.062305, 5.857881>,  <13.051253, 18.404648, 5.525052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.492168, 18.062305, 5.857881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.591107, 17.983807, 6.237418>,  <12.650471, 17.936707, 6.465141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.591107, 17.983807, 6.237418>,  <12.492168, 18.062305, 5.857881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.591107, 17.983807, 6.237418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763896, 0.562923, 0.315563,
		-0.596055, -0.802872, -0.010676,
		0.247348, -0.196248, 0.948844,
		12.665312, 17.924932, 6.522071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920242, 17.783724, 6.218860>,  <12.492168, 18.062305, 5.857881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920242, 17.783724, 6.218860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.163533, 17.952614, 6.487720>,  <12.309507, 18.053947, 6.649035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.163533, 17.952614, 6.487720>,  <11.920242, 17.783724, 6.218860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.163533, 17.952614, 6.487720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762910, 0.544752, 0.348156,
		-0.219154, -0.724547, 0.653454,
		0.608227, 0.422227, 0.672149,
		12.346002, 18.079283, 6.689364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496406, 17.279560, 5.928766>,  <11.920242, 17.783724, 6.218860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.496406, 17.279560, 5.928766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797675, 17.477322, 6.102338>,  <12.978436, 17.595978, 6.206481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797675, 17.477322, 6.102338>,  <12.496406, 17.279560, 5.928766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797675, 17.477322, 6.102338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028918, -0.683892, 0.729010,
		0.657187, -0.536522, -0.529386,
		0.753173, 0.494404, 0.433930,
		13.023627, 17.625643, 6.232517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002844, 16.784691, 6.073946>,  <12.496406, 17.279560, 5.928766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002844, 16.784691, 6.073946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056237, 17.101551, 6.312166>,  <13.088273, 17.291668, 6.455098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056237, 17.101551, 6.312166>,  <13.002844, 16.784691, 6.073946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056237, 17.101551, 6.312166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133377, -0.609819, 0.781237,
		0.982035, -0.024850, -0.187055,
		0.133484, 0.792151, 0.595549,
		13.096282, 17.339197, 6.490831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655029, 16.723644, 6.540429>,  <13.002844, 16.784691, 6.073946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655029, 16.723644, 6.540429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399920, 16.963604, 6.733660>,  <13.246855, 17.107580, 6.849598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399920, 16.963604, 6.733660>,  <13.655029, 16.723644, 6.540429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399920, 16.963604, 6.733660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039550, -0.651870, 0.757298,
		0.769208, 0.463879, 0.439472,
		-0.637773, 0.599901, 0.483077,
		13.208589, 17.143574, 6.878583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145232, 17.263069, 6.421464>,  <13.655029, 16.723644, 6.540429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145232, 17.263069, 6.421464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229728, 16.887127, 6.314095>,  <14.280425, 16.661562, 6.249673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229728, 16.887127, 6.314095>,  <14.145232, 17.263069, 6.421464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229728, 16.887127, 6.314095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076192, 0.257952, -0.963149,
		0.974460, 0.223907, -0.017119,
		0.211240, -0.939854, -0.268424,
		14.293099, 16.605171, 6.233567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321222, 17.531382, 5.713265>,  <14.145232, 17.263069, 6.421464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321222, 17.531382, 5.713265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507644, 17.881413, 5.661057>,  <14.619496, 18.091431, 5.629731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507644, 17.881413, 5.661057>,  <14.321222, 17.531382, 5.713265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507644, 17.881413, 5.661057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191806, -0.044084, -0.980442,
		-0.863715, 0.481973, 0.147299,
		0.466054, 0.875076, -0.130522,
		14.647460, 18.143936, 5.621900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919621, 17.982227, 5.282602>,  <14.321222, 17.531382, 5.713265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919621, 17.982227, 5.282602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303338, 18.086857, 5.240022>,  <14.533568, 18.149635, 5.214473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303338, 18.086857, 5.240022>,  <13.919621, 17.982227, 5.282602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303338, 18.086857, 5.240022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154160, 0.169205, -0.973450,
		-0.236618, 0.950236, 0.202642,
		0.959295, 0.261576, -0.106452,
		14.591126, 18.165329, 5.208086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997722, 18.763226, 5.057360>,  <13.919621, 17.982227, 5.282602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997722, 18.763226, 5.057360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268586, 18.492748, 4.941279>,  <14.431105, 18.330462, 4.871631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268586, 18.492748, 4.941279>,  <13.997722, 18.763226, 5.057360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268586, 18.492748, 4.941279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211781, 0.198599, -0.956926,
		0.704699, 0.709452, -0.008721,
		0.677161, -0.676192, -0.290201,
		14.471735, 18.289890, 4.854219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376829, 19.060085, 4.506557>,  <13.997722, 18.763226, 5.057360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376829, 19.060085, 4.506557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401528, 18.665657, 4.444784>,  <14.416348, 18.428999, 4.407720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401528, 18.665657, 4.444784>,  <14.376829, 19.060085, 4.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401528, 18.665657, 4.444784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076653, 0.149586, -0.985773,
		0.995144, 0.072707, -0.066349,
		0.061747, -0.986072, -0.154433,
		14.420053, 18.369835, 4.398454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892413, 19.020102, 4.048042>,  <14.376829, 19.060085, 4.506557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892413, 19.020102, 4.048042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637324, 18.713840, 4.014375>,  <14.484271, 18.530083, 3.994174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637324, 18.713840, 4.014375>,  <14.892413, 19.020102, 4.048042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637324, 18.713840, 4.014375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088024, 0.180996, -0.979537,
		0.765221, -0.617263, -0.182821,
		-0.637721, -0.765655, -0.084168,
		14.446008, 18.484144, 3.989125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156084, 18.668503, 3.534200>,  <14.892413, 19.020102, 4.048042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156084, 18.668503, 3.534200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765559, 18.584450, 3.554826>,  <14.531244, 18.534018, 3.567201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765559, 18.584450, 3.554826>,  <15.156084, 18.668503, 3.534200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.765559, 18.584450, 3.554826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077529, 0.117255, -0.990071,
		0.201999, -0.970616, -0.130769,
		-0.976312, -0.210132, 0.051565,
		14.472666, 18.521410, 3.570295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873442, 18.050570, 3.168687>,  <15.156084, 18.668503, 3.534200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873442, 18.050570, 3.168687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595124, 18.337704, 3.159039>,  <14.428134, 18.509985, 3.153251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595124, 18.337704, 3.159039>,  <14.873442, 18.050570, 3.168687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595124, 18.337704, 3.159039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017699, -0.050705, -0.998557,
		-0.718024, -0.694362, 0.047985,
		-0.695793, 0.717837, -0.024118,
		14.386386, 18.553055, 3.151804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301084, 17.746170, 2.901269>,  <14.873442, 18.050570, 3.168687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301084, 17.746170, 2.901269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298570, 18.139225, 2.827101>,  <14.297061, 18.375059, 2.782599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298570, 18.139225, 2.827101>,  <14.301084, 17.746170, 2.901269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.298570, 18.139225, 2.827101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048650, -0.185506, -0.981438,
		-0.998796, 0.002853, 0.048971,
		-0.006285, 0.982639, -0.185421,
		14.296684, 18.434017, 2.771474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719340, 17.898090, 2.374717>,  <14.301084, 17.746170, 2.901269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719340, 17.898090, 2.374717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028928, 18.151264, 2.367032>,  <14.214681, 18.303167, 2.362422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028928, 18.151264, 2.367032>,  <13.719340, 17.898090, 2.374717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028928, 18.151264, 2.367032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035332, -0.073458, -0.996672,
		-0.632238, 0.770714, -0.079218,
		0.773968, 0.632933, -0.019212,
		14.261118, 18.341145, 2.361269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.753275, 18.126078, 1.707938>,  <13.719340, 17.898090, 2.374717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.753275, 18.126078, 1.707938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113484, 18.196053, 1.867162>,  <14.329610, 18.238037, 1.962697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113484, 18.196053, 1.867162>,  <13.753275, 18.126078, 1.707938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113484, 18.196053, 1.867162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420462, -0.117148, -0.899715,
		-0.110762, 0.977585, -0.179050,
		0.900524, 0.174938, 0.398062,
		14.383641, 18.248533, 1.986581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025584, 18.799562, 1.430544>,  <13.753275, 18.126078, 1.707938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025584, 18.799562, 1.430544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.279410, 18.506325, 1.528443>,  <14.431706, 18.330383, 1.587182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.279410, 18.506325, 1.528443>,  <14.025584, 18.799562, 1.430544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.279410, 18.506325, 1.528443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229563, -0.123599, -0.965414,
		0.737989, 0.668803, 0.089859,
		0.634565, -0.733093, 0.244747,
		14.469780, 18.286396, 1.601867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739515, 18.930431, 1.212795>,  <14.025584, 18.799562, 1.430544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739515, 18.930431, 1.212795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723542, 18.532810, 1.253329>,  <14.713959, 18.294237, 1.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723542, 18.532810, 1.253329>,  <14.739515, 18.930431, 1.212795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723542, 18.532810, 1.253329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524558, -0.107171, -0.844603,
		0.850438, 0.019429, 0.525717,
		-0.039932, -0.994051, 0.101334,
		14.711563, 18.234594, 1.283729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425774, 18.691387, 1.062486>,  <14.739515, 18.930431, 1.212795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425774, 18.691387, 1.062486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179112, 18.384129, 0.993563>,  <15.031116, 18.199774, 0.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179112, 18.384129, 0.993563>,  <15.425774, 18.691387, 1.062486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179112, 18.384129, 0.993563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296362, -0.023742, -0.954781,
		0.729321, -0.639834, 0.242290,
		-0.616653, -0.768147, -0.172307,
		14.994117, 18.153685, 0.941871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852382, 18.150171, 0.857617>,  <15.425774, 18.691387, 1.062486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.852382, 18.150171, 0.857617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490224, 18.126377, 0.689463>,  <15.272929, 18.112101, 0.588571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490224, 18.126377, 0.689463>,  <15.852382, 18.150171, 0.857617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490224, 18.126377, 0.689463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424414, -0.099891, -0.899942,
		0.011541, -0.993218, 0.115688,
		-0.905395, -0.059486, -0.420382,
		15.218605, 18.108532, 0.563349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777112, 17.665972, 0.417243>,  <15.852382, 18.150171, 0.857617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777112, 17.665972, 0.417243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526092, 17.946957, 0.282945>,  <15.375480, 18.115547, 0.202367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526092, 17.946957, 0.282945>,  <15.777112, 17.665972, 0.417243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526092, 17.946957, 0.282945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363016, -0.117492, -0.924346,
		-0.688766, -0.701955, -0.181273,
		-0.627551, 0.702463, -0.335745,
		15.337826, 18.157696, 0.182222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156386, 17.278404, 0.084954>,  <15.777112, 17.665972, 0.417243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156386, 17.278404, 0.084954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866397, 17.553375, 0.102171>,  <14.692403, 17.718359, 0.112501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866397, 17.553375, 0.102171>,  <15.156386, 17.278404, 0.084954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866397, 17.553375, 0.102171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499404, 0.567661, -0.654490,
		-0.474350, -0.452992, -0.754845,
		-0.724974, 0.687429, 0.043044,
		14.648905, 17.759604, 0.115084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997290, 17.563923, -0.621371>,  <15.156386, 17.278404, 0.084953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997290, 17.563923, -0.621371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915221, 17.850773, -0.354946>,  <14.865980, 18.022882, -0.195092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915221, 17.850773, -0.354946>,  <14.997290, 17.563923, -0.621371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915221, 17.850773, -0.354946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447959, 0.673879, -0.587554,
		-0.870194, 0.177820, -0.459503,
		-0.205171, 0.717124, 0.666061,
		14.853670, 18.065910, -0.155128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618635, 18.062738, -1.009648>,  <14.997290, 17.563923, -0.621371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618635, 18.062738, -1.009648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827931, 18.205540, -0.700128>,  <14.953509, 18.291222, -0.514416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827931, 18.205540, -0.700128>,  <14.618635, 18.062738, -1.009648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827931, 18.205540, -0.700128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499498, 0.607206, -0.617902,
		-0.690451, 0.709823, 0.139390,
		0.523239, 0.357005, 0.773801,
		14.984903, 18.312641, -0.467988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663923, 18.841373, -0.855389>,  <14.618635, 18.062738, -1.009648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663923, 18.841373, -0.855389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985185, 18.632416, -0.740811>,  <15.177941, 18.507042, -0.672064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985185, 18.632416, -0.740811>,  <14.663923, 18.841373, -0.855389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985185, 18.632416, -0.740811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552443, 0.473007, -0.686346,
		0.223052, 0.709486, 0.668489,
		0.803153, -0.522393, 0.286445,
		15.226130, 18.475698, -0.654877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080773, 19.363714, -0.724732>,  <14.663923, 18.841373, -0.855389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080773, 19.363714, -0.724732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272790, 19.027828, -0.826269>,  <15.388000, 18.826296, -0.887191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272790, 19.027828, -0.826269>,  <15.080773, 19.363714, -0.724732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272790, 19.027828, -0.826269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625386, 0.530501, -0.572241,
		0.615185, 0.115950, 0.779810,
		0.480042, -0.839716, -0.253843,
		15.416802, 18.775913, -0.902422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780593, 19.291700, -0.473390>,  <15.080773, 19.363714, -0.724732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780593, 19.291700, -0.473390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.756169, 19.110691, -0.829254>,  <15.741515, 19.002085, -1.042772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.756169, 19.110691, -0.829254>,  <15.780593, 19.291700, -0.473390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756169, 19.110691, -0.829254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614536, 0.685312, -0.390759,
		0.786522, -0.570587, 0.236249,
		-0.061058, -0.452524, -0.889659,
		15.737852, 18.974934, -1.096151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837091, 19.444479, -1.275120>,  <15.780593, 19.291700, -0.473390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837091, 19.444479, -1.275120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.769662, 19.650124, -1.611518>,  <15.729204, 19.773510, -1.813357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.769662, 19.650124, -1.611518>,  <15.837091, 19.444479, -1.275120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769662, 19.650124, -1.611518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979285, -0.184453, 0.083535,
		-0.112178, 0.837656, 0.534555,
		-0.168574, 0.514111, -0.840995,
		15.719090, 19.804358, -1.863817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379473, 19.988188, -1.188041>,  <15.837091, 19.444479, -1.275120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379473, 19.988188, -1.188041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341195, 19.847340, -1.560462>,  <15.318229, 19.762831, -1.783914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341195, 19.847340, -1.560462>,  <15.379473, 19.988188, -1.188041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341195, 19.847340, -1.560462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949175, -0.249476, 0.191908,
		-0.299849, 0.902094, -0.310348,
		-0.095695, -0.352118, -0.931050,
		15.312487, 19.741705, -1.839777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.765710, 20.325626, -1.559717>,  <15.379473, 19.988188, -1.188041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.765710, 20.325626, -1.559717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875855, 19.975170, -1.717984>,  <14.941943, 19.764896, -1.812945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875855, 19.975170, -1.717984>,  <14.765710, 20.325626, -1.559717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875855, 19.975170, -1.717984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882621, -0.393524, 0.257138,
		-0.380991, 0.278412, -0.881664,
		0.275366, -0.876142, -0.395662,
		14.958465, 19.712328, -1.836685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.636930, 20.053864, 14.844345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.783024, 20.382568, 14.669389>,  <19.870680, 20.579792, 14.564415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.783024, 20.382568, 14.669389>,  <19.636930, 20.053864, 14.844345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783024, 20.382568, 14.669389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636170, -0.122690, -0.761732,
		-0.679626, 0.556466, 0.477969,
		0.365236, 0.821762, -0.437390,
		19.892595, 20.629097, 14.538172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068878, 20.387615, 14.592154>,  <19.636930, 20.053864, 14.844345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068878, 20.387615, 14.592154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.372696, 20.529388, 14.373988>,  <19.554985, 20.614452, 14.243089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.372696, 20.529388, 14.373988>,  <19.068878, 20.387615, 14.592154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372696, 20.529388, 14.373988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556386, -0.080339, -0.827031,
		-0.336943, 0.931625, 0.136180,
		0.759542, 0.354431, -0.545412,
		19.600559, 20.635717, 14.210364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743158, 20.865917, 14.127086>,  <19.068878, 20.387615, 14.592154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.743158, 20.865917, 14.127086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.099728, 20.787678, 13.963571>,  <19.313669, 20.740734, 13.865461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.099728, 20.787678, 13.963571>,  <18.743158, 20.865917, 14.127086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099728, 20.787678, 13.963571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427590, -0.064234, -0.901688,
		0.150111, 0.978578, -0.140896,
		0.891422, -0.195599, -0.408788,
		19.367155, 20.728998, 13.840934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686272, 21.174309, 13.476057>,  <18.743158, 20.865917, 14.127086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686272, 21.174309, 13.476057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.998280, 20.934608, 13.403984>,  <19.185484, 20.790789, 13.360741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.998280, 20.934608, 13.403984>,  <18.686272, 21.174309, 13.476057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998280, 20.934608, 13.403984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431775, -0.307012, -0.848124,
		0.452920, 0.739353, -0.498217,
		0.780022, -0.599250, -0.180182,
		19.232286, 20.754833, 13.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930815, 21.310167, 12.785608>,  <18.686272, 21.174309, 13.476057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930815, 21.310167, 12.785608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.070210, 20.938164, 12.832334>,  <19.153847, 20.714962, 12.860369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.070210, 20.938164, 12.832334>,  <18.930815, 21.310167, 12.785608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070210, 20.938164, 12.832334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167539, -0.184421, -0.968462,
		0.922220, 0.317924, -0.220081,
		0.348485, -0.930007, 0.116812,
		19.174755, 20.659163, 12.867377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292063, 21.132561, 12.155920>,  <18.930815, 21.310167, 12.785608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.292063, 21.132561, 12.155920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.233963, 20.777996, 12.331729>,  <19.199102, 20.565258, 12.437214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.233963, 20.777996, 12.331729>,  <19.292063, 21.132561, 12.155920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233963, 20.777996, 12.331729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137263, -0.421884, -0.896199,
		0.979827, -0.190504, -0.060392,
		-0.145251, -0.886410, 0.439522,
		19.190388, 20.512074, 12.463586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781324, 20.632936, 11.826215>,  <19.292063, 21.132561, 12.155920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781324, 20.632936, 11.826215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.465710, 20.451160, 11.991579>,  <19.276340, 20.342094, 12.090797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.465710, 20.451160, 11.991579>,  <19.781324, 20.632936, 11.826215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465710, 20.451160, 11.991579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233730, -0.400270, -0.886089,
		0.568149, -0.795783, 0.209612,
		-0.789035, -0.454438, 0.413411,
		19.228998, 20.314829, 12.115602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835003, 19.899347, 11.501876>,  <19.781324, 20.632936, 11.826215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835003, 19.899347, 11.501876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.471653, 19.953503, 11.660131>,  <19.253643, 19.985996, 11.755085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.471653, 19.953503, 11.660131>,  <19.835003, 19.899347, 11.501876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.471653, 19.953503, 11.660131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417212, -0.357172, -0.835680,
		0.028169, -0.924174, 0.380931,
		-0.908372, 0.135389, 0.395638,
		19.199141, 19.994120, 11.778823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518764, 19.342216, 11.296992>,  <19.835003, 19.899347, 11.501876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518764, 19.342216, 11.296992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.239216, 19.613220, 11.388696>,  <19.071487, 19.775822, 11.443718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.239216, 19.613220, 11.388696>,  <19.518764, 19.342216, 11.296992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239216, 19.613220, 11.388696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432638, -0.145186, -0.889801,
		-0.569564, -0.721042, 0.394582,
		-0.698872, 0.677510, 0.229258,
		19.029554, 19.816473, 11.457473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027020, 19.056244, 10.960385>,  <19.518764, 19.342216, 11.296992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027020, 19.056244, 10.960385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.905468, 19.434113, 11.009786>,  <18.832537, 19.660833, 11.039426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.905468, 19.434113, 11.009786>,  <19.027020, 19.056244, 10.960385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905468, 19.434113, 11.009786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562569, -0.073305, -0.823494,
		-0.768879, -0.319718, 0.553719,
		-0.303877, 0.944673, 0.123500,
		18.814304, 19.717514, 11.046836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250385, 19.056820, 10.954891>,  <19.027020, 19.056244, 10.960385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250385, 19.056820, 10.954891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.359135, 19.432098, 10.869215>,  <18.424383, 19.657265, 10.817809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.359135, 19.432098, 10.869215>,  <18.250385, 19.056820, 10.954891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359135, 19.432098, 10.869215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647095, 0.013486, -0.762290,
		-0.712287, 0.345847, 0.610768,
		0.271872, 0.938194, -0.214190,
		18.440697, 19.713556, 10.804958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631285, 19.498335, 10.996902>,  <18.250385, 19.056820, 10.954891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631285, 19.498335, 10.996902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.908611, 19.674686, 10.768888>,  <18.075006, 19.780499, 10.632080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.908611, 19.674686, 10.768888>,  <17.631285, 19.498335, 10.996902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908611, 19.674686, 10.768888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676887, 0.127008, -0.725047,
		-0.247260, 0.888535, 0.386483,
		0.693315, 0.440880, -0.570034,
		18.116606, 19.806950, 10.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247526, 20.074038, 10.628261>,  <17.631285, 19.498335, 10.996902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247526, 20.074038, 10.628261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.555790, 19.945808, 10.407964>,  <17.740749, 19.868872, 10.275785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.555790, 19.945808, 10.407964>,  <17.247526, 20.074038, 10.628261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555790, 19.945808, 10.407964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567209, 0.048825, -0.822125,
		0.290439, 0.945966, -0.144203,
		0.770661, -0.320571, -0.550741,
		17.786989, 19.849638, 10.242742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018639, 20.275837, 9.989869>,  <17.247526, 20.074038, 10.628261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018639, 20.275837, 9.989869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.328732, 20.043118, 9.891459>,  <17.514788, 19.903486, 9.832412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.328732, 20.043118, 9.891459>,  <17.018639, 20.275837, 9.989869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328732, 20.043118, 9.891459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390170, -0.134724, -0.910833,
		0.496775, 0.802098, -0.331442,
		0.775230, -0.581798, -0.246027,
		17.561300, 19.868578, 9.817651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.000164, 20.325201, 9.259995>,  <17.018639, 20.275837, 9.989869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.000164, 20.325201, 9.259995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.213631, 19.997036, 9.342093>,  <17.341711, 19.800137, 9.391352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.213631, 19.997036, 9.342093>,  <17.000164, 20.325201, 9.259995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213631, 19.997036, 9.342093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182625, -0.348766, -0.919244,
		0.825742, 0.453086, -0.335952,
		0.533665, -0.820412, 0.205246,
		17.373730, 19.750912, 9.403666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481422, 20.230227, 8.739438>,  <17.000164, 20.325201, 9.259995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481422, 20.230227, 8.739438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452732, 19.862072, 8.893187>,  <17.435518, 19.641178, 8.985435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452732, 19.862072, 8.893187>,  <17.481422, 20.230227, 8.739438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452732, 19.862072, 8.893187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442230, -0.316072, -0.839364,
		0.894029, -0.230183, -0.384353,
		-0.071724, -0.920388, 0.384371,
		17.431215, 19.585955, 9.008498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605236, 19.827497, 8.232025>,  <17.481422, 20.230227, 8.739438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605236, 19.827497, 8.232025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.414059, 19.578300, 8.479718>,  <17.299353, 19.428782, 8.628334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.414059, 19.578300, 8.479718>,  <17.605236, 19.827497, 8.232025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414059, 19.578300, 8.479718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392854, -0.478921, -0.785048,
		0.785643, -0.618476, -0.015849,
		-0.477943, -0.622994, 0.619232,
		17.270676, 19.391403, 8.665488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589333, 19.222225, 7.876981>,  <17.605236, 19.827497, 8.232025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589333, 19.222225, 7.876981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.333691, 19.135185, 8.172060>,  <17.180305, 19.082962, 8.349108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.333691, 19.135185, 8.172060>,  <17.589333, 19.222225, 7.876981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333691, 19.135185, 8.172060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463297, -0.656687, -0.595078,
		0.613924, -0.722090, 0.318878,
		-0.639103, -0.217597, 0.737698,
		17.141960, 19.069906, 8.393370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638607, 18.573629, 7.936278>,  <17.589333, 19.222225, 7.876981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638607, 18.573629, 7.936278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.279839, 18.658592, 8.091411>,  <17.064577, 18.709570, 8.184490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.279839, 18.658592, 8.091411>,  <17.638607, 18.573629, 7.936278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279839, 18.658592, 8.091411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417240, -0.696966, -0.583222,
		0.146426, -0.684924, 0.713749,
		-0.896923, 0.212406, 0.387832,
		17.010761, 18.722315, 8.207760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278507, 17.927835, 7.932782>,  <17.638607, 18.573629, 7.936278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278507, 17.927835, 7.932782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.991104, 18.204987, 7.956993>,  <16.818663, 18.371277, 7.971519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.991104, 18.204987, 7.956993>,  <17.278507, 17.927835, 7.932782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991104, 18.204987, 7.956993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616085, -0.593652, -0.517703,
		-0.322772, -0.409265, 0.853417,
		-0.718510, 0.692878, 0.060528,
		16.775551, 18.412849, 7.975151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659529, 17.585510, 8.191276>,  <17.278507, 17.927835, 7.932782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659529, 17.585510, 8.191276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.549488, 17.915192, 7.993284>,  <16.483463, 18.113001, 7.874489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.549488, 17.915192, 7.993284>,  <16.659529, 17.585510, 8.191276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549488, 17.915192, 7.993284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575952, -0.553519, -0.601578,
		-0.769804, 0.119589, 0.626977,
		-0.275102, 0.824206, -0.494979,
		16.466957, 18.162453, 7.844790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006994, 17.583509, 8.274532>,  <16.659529, 17.585510, 8.191276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006994, 17.583509, 8.274532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.068405, 17.810993, 7.951300>,  <16.105251, 17.947483, 7.757360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.068405, 17.810993, 7.951300>,  <16.006994, 17.583509, 8.274532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068405, 17.810993, 7.951300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727199, -0.488661, -0.482070,
		-0.669037, 0.661647, 0.338544,
		0.153527, 0.568711, -0.808082,
		16.114464, 17.981607, 7.708875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567209, 18.176392, 8.206461>,  <16.006994, 17.583509, 8.274532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567209, 18.176392, 8.206461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.434316, 17.810577, 8.298759>,  <15.354579, 17.591089, 8.354137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.434316, 17.810577, 8.298759>,  <15.567209, 18.176392, 8.206461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434316, 17.810577, 8.298759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502637, 0.035338, 0.863775,
		-0.798108, 0.402956, 0.447940,
		-0.332235, -0.914537, 0.230744,
		15.334645, 17.536217, 8.367982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692302, 18.233767, 8.877297>,  <15.567209, 18.176392, 8.206461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692302, 18.233767, 8.877297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.571923, 17.852512, 8.864883>,  <15.499696, 17.623760, 8.857435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.571923, 17.852512, 8.864883>,  <15.692302, 18.233767, 8.877297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571923, 17.852512, 8.864883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290818, -0.122721, 0.948875,
		-0.908215, 0.276536, 0.314122,
		-0.300947, -0.953136, -0.031035,
		15.481639, 17.566572, 8.855573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059265, 18.143057, 9.401464>,  <15.692302, 18.233767, 8.877297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059265, 18.143057, 9.401464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.274739, 17.812420, 9.336268>,  <15.404024, 17.614038, 9.297152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.274739, 17.812420, 9.336268>,  <15.059265, 18.143057, 9.401464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274739, 17.812420, 9.336268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093711, -0.133469, 0.986613,
		-0.837279, -0.546748, 0.005563,
		0.538686, -0.826591, -0.162987,
		15.436345, 17.564442, 9.287373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.709970, 17.704435, 9.764640>,  <15.059265, 18.143057, 9.401464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.709970, 17.704435, 9.764640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.060630, 17.520611, 9.707664>,  <15.271026, 17.410316, 9.673478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.060630, 17.520611, 9.707664>,  <14.709970, 17.704435, 9.764640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060630, 17.520611, 9.707664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075319, -0.161322, 0.984024,
		-0.475199, -0.873372, -0.106809,
		0.876649, -0.459562, -0.142441,
		15.323625, 17.382742, 9.664931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833608, 17.361282, 10.411570>,  <14.709970, 17.704435, 9.764640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833608, 17.361282, 10.411570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.188437, 17.308899, 10.234505>,  <15.401336, 17.277470, 10.128266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.188437, 17.308899, 10.234505>,  <14.833608, 17.361282, 10.411570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188437, 17.308899, 10.234505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438814, -0.058501, 0.896671,
		-0.143324, -0.989660, 0.005572,
		0.887074, -0.130960, -0.442662,
		15.454559, 17.269611, 10.101707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136483, 16.807888, 10.730152>,  <14.833608, 17.361282, 10.411570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136483, 16.807888, 10.730152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.433906, 17.024784, 10.573639>,  <15.612359, 17.154921, 10.479731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.433906, 17.024784, 10.573639>,  <15.136483, 16.807888, 10.730152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433906, 17.024784, 10.573639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522563, -0.106116, 0.845971,
		0.417196, -0.833497, -0.362257,
		0.743556, 0.542238, -0.391283,
		15.656972, 17.187456, 10.456254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698863, 16.398489, 10.777333>,  <15.136483, 16.807888, 10.730152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698863, 16.398489, 10.777333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.814052, 16.781525, 10.773380>,  <15.883164, 17.011345, 10.771008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.814052, 16.781525, 10.773380>,  <15.698863, 16.398489, 10.777333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814052, 16.781525, 10.773380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490850, -0.138734, 0.860127,
		0.822277, -0.252542, -0.509984,
		0.287970, 0.957588, -0.009882,
		15.900443, 17.068802, 10.770415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418968, 16.388723, 11.040334>,  <15.698863, 16.398489, 10.777333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418968, 16.388723, 11.040334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.281315, 16.761200, 11.088418>,  <16.198723, 16.984686, 11.117269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.281315, 16.761200, 11.088418>,  <16.418968, 16.388723, 11.040334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281315, 16.761200, 11.088418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398898, 0.029099, 0.916534,
		0.849972, 0.363363, -0.381465,
		-0.344135, 0.931193, 0.120211,
		16.178074, 17.040558, 11.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913200, 16.660248, 11.320796>,  <16.418968, 16.388723, 11.040334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913200, 16.660248, 11.320796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.669468, 16.975975, 11.350977>,  <16.523228, 17.165411, 11.369085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.669468, 16.975975, 11.350977>,  <16.913200, 16.660248, 11.320796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669468, 16.975975, 11.350977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437217, 0.255080, 0.862424,
		0.661479, 0.558493, -0.500531,
		-0.609333, 0.789316, 0.075452,
		16.486668, 17.212770, 11.373612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283688, 17.322525, 11.317765>,  <16.913200, 16.660248, 11.320796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283688, 17.322525, 11.317765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.933380, 17.414883, 11.487336>,  <16.723196, 17.470297, 11.589079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.933380, 17.414883, 11.487336>,  <17.283688, 17.322525, 11.317765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933380, 17.414883, 11.487336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478859, 0.304566, 0.823367,
		0.060998, 0.924082, -0.377296,
		-0.875770, 0.230895, 0.423927,
		16.670649, 17.484152, 11.614514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344402, 17.998821, 11.494593>,  <17.283688, 17.322525, 11.317765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344402, 17.998821, 11.494593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.077015, 17.827572, 11.737858>,  <16.916582, 17.724823, 11.883817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.077015, 17.827572, 11.737858>,  <17.344402, 17.998821, 11.494593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077015, 17.827572, 11.737858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470756, 0.389501, 0.791630,
		-0.575795, 0.815475, -0.058828,
		-0.668468, -0.428123, 0.608162,
		16.876474, 17.699135, 11.920306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403214, 18.372272, 12.144361>,  <17.344402, 17.998821, 11.494593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403214, 18.372272, 12.144361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167103, 18.076382, 12.273592>,  <17.025436, 17.898848, 12.351131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167103, 18.076382, 12.273592>,  <17.403214, 18.372272, 12.144361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167103, 18.076382, 12.273592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287723, 0.181144, 0.940427,
		-0.754183, 0.648067, 0.105911,
		-0.590275, -0.739727, 0.323080,
		16.990021, 17.854464, 12.370516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804461, 18.589073, 12.518959>,  <17.403214, 18.372272, 12.144361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804461, 18.589073, 12.518959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.918816, 18.228172, 12.648087>,  <16.987429, 18.011633, 12.725563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.918816, 18.228172, 12.648087>,  <16.804461, 18.589073, 12.518959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.918816, 18.228172, 12.648087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248612, 0.395180, 0.884322,
		-0.925452, -0.172559, 0.337287,
		0.285886, -0.902251, 0.322820,
		17.004581, 17.957497, 12.744932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667707, 18.717720, 13.117560>,  <16.804461, 18.589073, 12.518959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667707, 18.717720, 13.117560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.820019, 18.352707, 13.177280>,  <16.911406, 18.133699, 13.213112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.820019, 18.352707, 13.177280>,  <16.667707, 18.717720, 13.117560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820019, 18.352707, 13.177280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276150, 0.266321, 0.923479,
		-0.882467, -0.310413, 0.353406,
		0.380779, -0.912533, 0.149299,
		16.934252, 18.078947, 13.222070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507494, 18.542086, 13.772752>,  <16.667707, 18.717720, 13.117560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507494, 18.542086, 13.772752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.847652, 18.356834, 13.672881>,  <17.051748, 18.245684, 13.612959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.847652, 18.356834, 13.672881>,  <16.507494, 18.542086, 13.772752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847652, 18.356834, 13.672881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424694, 0.324095, 0.845338,
		-0.310581, -0.824909, 0.472297,
		0.850397, -0.463128, -0.249676,
		17.102772, 18.217896, 13.597979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699402, 18.184423, 14.350355>,  <16.507494, 18.542086, 13.772752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699402, 18.184423, 14.350355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.036800, 18.224022, 14.139180>,  <17.239239, 18.247780, 14.012475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.036800, 18.224022, 14.139180>,  <16.699402, 18.184423, 14.350355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036800, 18.224022, 14.139180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492565, 0.249462, 0.833756,
		0.214230, -0.963312, 0.161663,
		0.843496, 0.098986, -0.527936,
		17.289848, 18.253719, 13.980799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231781, 17.888296, 14.809490>,  <16.699402, 18.184423, 14.350355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231781, 17.888296, 14.809490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.425098, 18.105934, 14.535151>,  <17.541090, 18.236517, 14.370548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.425098, 18.105934, 14.535151>,  <17.231781, 17.888296, 14.809490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425098, 18.105934, 14.535151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602942, 0.361134, 0.711368,
		0.634735, -0.757326, -0.153525,
		0.483294, 0.544096, -0.685847,
		17.570087, 18.269163, 14.329397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871241, 17.731689, 14.891004>,  <17.231781, 17.888296, 14.809490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871241, 17.731689, 14.891004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902229, 18.087105, 14.710116>,  <17.920822, 18.300354, 14.601584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902229, 18.087105, 14.710116>,  <17.871241, 17.731689, 14.891004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902229, 18.087105, 14.710116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677670, 0.285761, 0.677572,
		0.731273, -0.358948, -0.579996,
		0.077473, 0.888536, -0.452218,
		17.925470, 18.353666, 14.574451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.682474, 17.939157, 14.847133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.492783, 18.282272, 14.767827>,  <18.378967, 18.488142, 14.720243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.492783, 18.282272, 14.767827>,  <18.682474, 17.939157, 14.847133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492783, 18.282272, 14.767827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292042, 0.365714, 0.883722,
		0.830554, 0.361183, -0.423941,
		-0.474227, 0.857788, -0.198265,
		18.350515, 18.539608, 14.708347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102629, 18.546370, 14.802511>,  <18.682474, 17.939157, 14.847133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102629, 18.546370, 14.802511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.742584, 18.667263, 14.928023>,  <18.526558, 18.739799, 15.003330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.742584, 18.667263, 14.928023>,  <19.102629, 18.546370, 14.802511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.742584, 18.667263, 14.928023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421772, 0.424091, 0.801408,
		0.109143, 0.853698, -0.509202,
		-0.900109, 0.302235, 0.313780,
		18.472551, 18.757935, 15.022158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156675, 19.416716, 14.818158>,  <19.102629, 18.546370, 14.802511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156675, 19.416716, 14.818158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860390, 19.297939, 15.059213>,  <18.682619, 19.226673, 15.203846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860390, 19.297939, 15.059213>,  <19.156675, 19.416716, 14.818158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860390, 19.297939, 15.059213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464678, 0.421396, 0.778781,
		-0.485201, 0.856884, -0.174151,
		-0.740712, -0.296941, 0.602637,
		18.638176, 19.208857, 15.240004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727394, 20.031572, 15.133481>,  <19.156675, 19.416716, 14.818158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727394, 20.031572, 15.133481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632626, 19.739494, 15.389819>,  <18.575766, 19.564247, 15.543622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632626, 19.739494, 15.389819>,  <18.727394, 20.031572, 15.133481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632626, 19.739494, 15.389819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316491, 0.565634, 0.761506,
		-0.918533, 0.383238, 0.097091,
		-0.236920, -0.730196, 0.640845,
		18.561550, 19.520435, 15.582072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388151, 20.374920, 15.658356>,  <18.727394, 20.031572, 15.133481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388151, 20.374920, 15.658356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.504055, 20.033306, 15.831174>,  <18.573597, 19.828337, 15.934865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.504055, 20.033306, 15.831174>,  <18.388151, 20.374920, 15.658356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504055, 20.033306, 15.831174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159403, 0.488168, 0.858069,
		-0.943733, -0.179762, 0.277586,
		0.289757, -0.854036, 0.432045,
		18.590982, 19.777096, 15.960788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112848, 20.458424, 16.252089>,  <18.388151, 20.374920, 15.658356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112848, 20.458424, 16.252089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.380688, 20.165363, 16.300854>,  <18.541391, 19.989527, 16.330112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.380688, 20.165363, 16.300854>,  <18.112848, 20.458424, 16.252089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380688, 20.165363, 16.300854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109816, 0.260000, 0.959344,
		-0.734561, -0.628986, 0.254552,
		0.669597, -0.732651, 0.121913,
		18.581568, 19.945568, 16.337427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009323, 20.247316, 16.940256>,  <18.112848, 20.458424, 16.252089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.009323, 20.247316, 16.940256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.373425, 20.095177, 16.874805>,  <18.591885, 20.003893, 16.835535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.373425, 20.095177, 16.874805>,  <18.009323, 20.247316, 16.940256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373425, 20.095177, 16.874805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300335, 0.334481, 0.893264,
		-0.285021, -0.862240, 0.418694,
		0.910254, -0.380347, -0.163627,
		18.646502, 19.981073, 16.825718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223410, 19.834959, 17.468758>,  <18.009323, 20.247316, 16.940256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223410, 19.834959, 17.468758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.572063, 19.956989, 17.315302>,  <18.781256, 20.030207, 17.223228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.572063, 19.956989, 17.315302>,  <18.223410, 19.834959, 17.468758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572063, 19.956989, 17.315302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347368, 0.167731, 0.922606,
		0.345812, -0.937441, 0.040227,
		0.871636, 0.305075, -0.383640,
		18.833555, 20.048512, 17.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.596247, 19.494102, 17.864494>,  <18.223410, 19.834959, 17.468758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.596247, 19.494102, 17.864494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.855431, 19.760471, 17.716606>,  <19.010941, 19.920294, 17.627874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.855431, 19.760471, 17.716606>,  <18.596247, 19.494102, 17.864494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855431, 19.760471, 17.716606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389066, 0.127927, 0.912284,
		0.654809, -0.734970, -0.176197,
		0.647961, 0.665923, -0.369719,
		19.049818, 19.960249, 17.605690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107771, 19.366182, 18.111971>,  <18.596247, 19.494102, 17.864494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.107771, 19.366182, 18.111971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.174667, 19.745201, 18.003019>,  <19.214806, 19.972612, 17.937649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.174667, 19.745201, 18.003019>,  <19.107771, 19.366182, 18.111971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174667, 19.745201, 18.003019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142197, 0.250199, 0.957695,
		0.975608, -0.198896, -0.092895,
		0.167240, 0.947545, -0.272378,
		19.224840, 20.029465, 17.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632444, 19.473352, 18.593229>,  <19.107771, 19.366182, 18.111971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632444, 19.473352, 18.593229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.503117, 19.818481, 18.437794>,  <19.425520, 20.025558, 18.344532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.503117, 19.818481, 18.437794>,  <19.632444, 19.473352, 18.593229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503117, 19.818481, 18.437794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217028, 0.467312, 0.857040,
		0.921066, 0.192763, -0.338348,
		-0.323320, 0.862822, -0.388590,
		19.406120, 20.077328, 18.321217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171846, 20.124441, 18.734161>,  <19.632444, 19.473352, 18.593229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171846, 20.124441, 18.734161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.811832, 20.291161, 18.683224>,  <19.595823, 20.391193, 18.652662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.811832, 20.291161, 18.683224>,  <20.171846, 20.124441, 18.734161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811832, 20.291161, 18.683224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189926, 0.638095, 0.746165,
		0.392258, 0.647389, -0.653469,
		-0.900034, 0.416800, -0.127342,
		19.541822, 20.416201, 18.645021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306772, 20.731968, 18.946939>,  <20.171846, 20.124441, 18.734161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306772, 20.731968, 18.946939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.908920, 20.761707, 18.918135>,  <19.670210, 20.779551, 18.900852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.908920, 20.761707, 18.918135>,  <20.306772, 20.731968, 18.946939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908920, 20.761707, 18.918135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001823, 0.683021, 0.730397,
		0.103490, 0.726605, -0.679217,
		-0.994629, 0.074351, -0.072010,
		19.610531, 20.784012, 18.896532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983606, 21.466295, 18.870848>,  <20.306772, 20.731968, 18.946939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983606, 21.466295, 18.870848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739769, 21.211021, 19.058941>,  <19.593466, 21.057858, 19.171797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739769, 21.211021, 19.058941>,  <19.983606, 21.466295, 18.870848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739769, 21.211021, 19.058941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022899, 0.578767, 0.815172,
		-0.792384, 0.507690, -0.338198,
		-0.609593, -0.638185, 0.470231,
		19.556890, 21.019566, 19.200010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706198, 21.914181, 19.287720>,  <19.983606, 21.466295, 18.870848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706198, 21.914181, 19.287720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.617935, 21.554455, 19.438738>,  <19.564978, 21.338619, 19.529348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.617935, 21.554455, 19.438738>,  <19.706198, 21.914181, 19.287720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617935, 21.554455, 19.438738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170429, 0.345580, 0.922783,
		-0.960346, 0.267961, 0.077016,
		-0.220655, -0.899317, 0.377545,
		19.551739, 21.284660, 19.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304783, 22.085772, 19.897251>,  <19.706198, 21.914181, 19.287720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304783, 22.085772, 19.897251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.439163, 21.712173, 19.945892>,  <19.519793, 21.488014, 19.975077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.439163, 21.712173, 19.945892>,  <19.304783, 22.085772, 19.897251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.439163, 21.712173, 19.945892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380679, 0.252738, 0.889498,
		-0.861522, -0.252537, 0.440460,
		0.335952, -0.933996, 0.121603,
		19.539949, 21.431974, 19.982374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985334, 21.820608, 20.605701>,  <19.304783, 22.085772, 19.897251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.985334, 21.820608, 20.605701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.304272, 21.598232, 20.511745>,  <19.495634, 21.464806, 20.455372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.304272, 21.598232, 20.511745>,  <18.985334, 21.820608, 20.605701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304272, 21.598232, 20.511745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324895, 0.067403, 0.943345,
		-0.508612, -0.828485, 0.234366,
		0.797344, -0.555941, -0.234888,
		19.543474, 21.431450, 20.441278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998878, 21.319775, 21.147156>,  <18.985334, 21.820608, 20.605701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998878, 21.319775, 21.147156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.354317, 21.299328, 20.964823>,  <19.567579, 21.287060, 20.855423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.354317, 21.299328, 20.964823>,  <18.998878, 21.319775, 21.147156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354317, 21.299328, 20.964823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451534, -0.077353, 0.888895,
		-0.080745, -0.995690, -0.045630,
		0.888593, -0.051170, -0.455834,
		19.620895, 21.283993, 20.828074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456451, 20.818941, 21.429142>,  <18.998878, 21.319775, 21.147156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456451, 20.818941, 21.429142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.719398, 21.061340, 21.249971>,  <19.877167, 21.206779, 21.142469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.719398, 21.061340, 21.249971>,  <19.456451, 20.818941, 21.429142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.719398, 21.061340, 21.249971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535386, 0.042728, 0.843526,
		0.530314, -0.794318, -0.296354,
		0.657366, 0.605997, -0.447926,
		19.916609, 21.243139, 21.115593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078791, 20.569132, 21.610542>,  <19.456451, 20.818941, 21.429142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078791, 20.569132, 21.610542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.182693, 20.935204, 21.487272>,  <20.245035, 21.154846, 21.413311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.182693, 20.935204, 21.487272>,  <20.078791, 20.569132, 21.610542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182693, 20.935204, 21.487272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493015, 0.148723, 0.857215,
		0.830339, -0.374601, -0.412566,
		0.259756, 0.915181, -0.308174,
		20.260620, 21.209757, 21.394819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836687, 20.659206, 21.824236>,  <20.078791, 20.569132, 21.610542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836687, 20.659206, 21.824236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.713043, 21.034168, 21.760086>,  <20.638857, 21.259146, 21.721596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.713043, 21.034168, 21.760086>,  <20.836687, 20.659206, 21.824236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.713043, 21.034168, 21.760086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482688, 0.299938, 0.822830,
		0.819428, 0.176937, -0.545189,
		-0.309112, 0.937406, -0.160373,
		20.620310, 21.315390, 21.711975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418753, 21.071585, 21.856701>,  <20.836687, 20.659206, 21.824236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418753, 21.071585, 21.856701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.108448, 21.317005, 21.915693>,  <20.922266, 21.464258, 21.951088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.108448, 21.317005, 21.915693>,  <21.418753, 21.071585, 21.856701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108448, 21.317005, 21.915693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493645, 0.444474, 0.747501,
		0.393081, 0.652683, -0.647682,
		-0.775759, 0.613553, 0.147479,
		20.875721, 21.501072, 21.959936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.607965, 21.727415, 21.818262>,  <21.418753, 21.071585, 21.856701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.607965, 21.727415, 21.818262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.288303, 21.686638, 22.055229>,  <21.096506, 21.662172, 22.197409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.288303, 21.686638, 22.055229>,  <21.607965, 21.727415, 21.818262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288303, 21.686638, 22.055229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409961, 0.628339, 0.661152,
		-0.439638, 0.771231, -0.460349,
		-0.799156, -0.101942, 0.592417,
		21.048557, 21.656055, 22.232954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245487, 22.334377, 21.932346>,  <21.607965, 21.727415, 21.818262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.245487, 22.334377, 21.932346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.232529, 22.088505, 22.247591>,  <21.224754, 21.940981, 22.436737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.232529, 22.088505, 22.247591>,  <21.245487, 22.334377, 21.932346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.232529, 22.088505, 22.247591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464235, 0.689051, 0.556502,
		-0.885119, 0.383897, 0.263034,
		-0.032396, -0.614680, 0.788111,
		21.222811, 21.904100, 22.484024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937775, 23.055277, 21.843414>,  <21.245487, 22.334377, 21.932346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937775, 23.055277, 21.843414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.321445, 23.168362, 21.846460>,  <21.551647, 23.236212, 21.848288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.321445, 23.168362, 21.846460>,  <20.937775, 23.055277, 21.843414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321445, 23.168362, 21.846460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015369, -0.025221, -0.999564,
		-0.282395, 0.958874, -0.028537,
		0.959175, 0.282711, 0.007615,
		21.609198, 23.253176, 21.848745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021235, 23.232145, 21.250916>,  <20.937775, 23.055277, 21.843414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021235, 23.232145, 21.250916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.409470, 23.270840, 21.339096>,  <21.642410, 23.294056, 21.392004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.409470, 23.270840, 21.339096>,  <21.021235, 23.232145, 21.250916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409470, 23.270840, 21.339096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215427, 0.059774, -0.974689,
		-0.107464, 0.993514, 0.037177,
		0.970589, 0.096736, 0.220453,
		21.700645, 23.299860, 21.405231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311638, 23.774891, 20.859894>,  <21.021235, 23.232145, 21.250916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311638, 23.774891, 20.859894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.619736, 23.540230, 20.959940>,  <21.804594, 23.399433, 21.019968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.619736, 23.540230, 20.959940>,  <21.311638, 23.774891, 20.859894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619736, 23.540230, 20.959940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269102, -0.056587, -0.961448,
		0.578190, 0.807859, 0.114283,
		0.770247, -0.586653, 0.250115,
		21.850809, 23.364233, 21.034975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.826803, 24.050026, 20.456800>,  <21.311638, 23.774891, 20.859894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.826803, 24.050026, 20.456800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.940655, 23.676506, 20.543520>,  <22.008966, 23.452394, 20.595552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.940655, 23.676506, 20.543520>,  <21.826803, 24.050026, 20.456800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940655, 23.676506, 20.543520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227627, -0.153852, -0.961517,
		0.931221, 0.323026, 0.168768,
		0.284630, -0.933801, 0.216800,
		22.026043, 23.396366, 20.608561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422546, 23.951969, 20.030544>,  <21.826803, 24.050026, 20.456800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422546, 23.951969, 20.030544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.337013, 23.573349, 20.127142>,  <22.285694, 23.346178, 20.185101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.337013, 23.573349, 20.127142>,  <22.422546, 23.951969, 20.030544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337013, 23.573349, 20.127142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179714, -0.281112, -0.942698,
		0.960198, -0.158178, 0.230219,
		-0.213832, -0.946549, 0.241497,
		22.272863, 23.289385, 20.199591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099981, 23.579491, 19.909079>,  <22.422546, 23.951969, 20.030544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099981, 23.579491, 19.909079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.778488, 23.344193, 19.873348>,  <22.585592, 23.203014, 19.851910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.778488, 23.344193, 19.873348>,  <23.099981, 23.579491, 19.909079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778488, 23.344193, 19.873348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245777, -0.191517, -0.950218,
		0.541854, -0.785677, 0.298506,
		-0.803734, -0.588245, -0.089327,
		22.537369, 23.167719, 19.846550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.279995, 23.018608, 19.407759>,  <23.099981, 23.579491, 19.909079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.279995, 23.018608, 19.407759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.881824, 22.983463, 19.422766>,  <22.642921, 22.962376, 19.431770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.881824, 22.983463, 19.422766>,  <23.279995, 23.018608, 19.407759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881824, 22.983463, 19.422766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003795, -0.356003, -0.934477,
		0.095463, -0.930345, 0.354042,
		-0.995426, -0.087864, 0.037516,
		22.583197, 22.957104, 19.434021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190861, 22.544069, 18.889915>,  <23.279995, 23.018608, 19.407759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190861, 22.544069, 18.889915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.822372, 22.684345, 18.957294>,  <22.601280, 22.768511, 18.997721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.822372, 22.684345, 18.957294>,  <23.190861, 22.544069, 18.889915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.822372, 22.684345, 18.957294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265038, -0.248751, -0.931600,
		-0.284808, -0.902848, 0.322101,
		-0.921216, 0.350696, 0.168443,
		22.546007, 22.789553, 19.007828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.763653, 21.970835, 18.889454>,  <23.190861, 22.544069, 18.889915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.763653, 21.970835, 18.889454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.563583, 22.302719, 18.790337>,  <22.443542, 22.501850, 18.730865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.563583, 22.302719, 18.790337>,  <22.763653, 21.970835, 18.889454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563583, 22.302719, 18.790337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309053, -0.438364, -0.843992,
		-0.808896, -0.345561, 0.475684,
		-0.500174, 0.829713, -0.247794,
		22.413530, 22.551634, 18.715998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.096834, 21.709072, 18.670805>,  <22.763653, 21.970835, 18.889454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.096834, 21.709072, 18.670805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.050686, 22.079079, 18.526012>,  <22.022997, 22.301083, 18.439137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.050686, 22.079079, 18.526012>,  <22.096834, 21.709072, 18.670805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050686, 22.079079, 18.526012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593613, -0.356392, -0.721532,
		-0.796438, 0.131633, 0.590220,
		-0.115372, 0.925018, -0.361982,
		22.016073, 22.356585, 18.417418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400223, 21.751762, 18.366385>,  <22.096834, 21.709072, 18.670805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400223, 21.751762, 18.366385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.556847, 22.071392, 18.183886>,  <21.650820, 22.263170, 18.074387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.556847, 22.071392, 18.183886>,  <21.400223, 21.751762, 18.366385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556847, 22.071392, 18.183886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405870, -0.295012, -0.865007,
		-0.825804, 0.523878, 0.208806,
		0.391558, 0.799075, -0.456248,
		21.674314, 22.311115, 18.047010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837072, 22.112528, 18.179258>,  <21.400223, 21.751762, 18.366385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837072, 22.112528, 18.179258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.148125, 22.222778, 17.953224>,  <21.334757, 22.288929, 17.817604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.148125, 22.222778, 17.953224>,  <20.837072, 22.112528, 18.179258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148125, 22.222778, 17.953224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533457, -0.186407, -0.825031,
		-0.332737, 0.943017, 0.002080,
		0.777631, 0.275628, -0.565083,
		21.381414, 22.305468, 17.783699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554110, 22.504374, 17.707718>,  <20.837072, 22.112528, 18.179258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554110, 22.504374, 17.707718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.895828, 22.358978, 17.559095>,  <21.100859, 22.271740, 17.469921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.895828, 22.358978, 17.559095>,  <20.554110, 22.504374, 17.707718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895828, 22.358978, 17.559095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492226, -0.336051, -0.802984,
		0.167014, 0.868876, -0.466005,
		0.854295, -0.363489, -0.371558,
		21.152117, 22.249931, 17.447628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.614935, 22.792685, 17.029877>,  <20.554110, 22.504374, 17.707718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.614935, 22.792685, 17.029877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.825500, 22.453671, 17.002823>,  <20.951839, 22.250263, 16.986589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.825500, 22.453671, 17.002823>,  <20.614935, 22.792685, 17.029877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825500, 22.453671, 17.002823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327615, -0.128790, -0.935992,
		0.784574, 0.514878, -0.345462,
		0.526414, -0.847534, -0.067636,
		20.983425, 22.199409, 16.982533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958317, 22.737804, 16.320433>,  <20.614935, 22.792685, 17.029877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958317, 22.737804, 16.320433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962833, 22.365807, 16.467394>,  <20.965544, 22.142609, 16.555571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962833, 22.365807, 16.467394>,  <20.958317, 22.737804, 16.320433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962833, 22.365807, 16.467394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188356, -0.362825, -0.912622,
		0.982036, -0.058899, -0.179266,
		0.011290, -0.929994, 0.367402,
		20.966221, 22.086809, 16.577614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183313, 22.383183, 15.709929>,  <20.958317, 22.737804, 16.320433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.183313, 22.383183, 15.709929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.087704, 22.061859, 15.928128>,  <21.030338, 21.869066, 16.059048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.087704, 22.061859, 15.928128>,  <21.183313, 22.383183, 15.709929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087704, 22.061859, 15.928128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211999, -0.505057, -0.836645,
		0.947589, -0.315622, -0.049581,
		-0.239022, -0.803306, 0.545497,
		21.015997, 21.820868, 16.091778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556747, 21.672882, 15.443093>,  <21.183313, 22.383183, 15.709929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556747, 21.672882, 15.443093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.206486, 21.577820, 15.611260>,  <20.996328, 21.520782, 15.712161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.206486, 21.577820, 15.611260>,  <21.556747, 21.672882, 15.443093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206486, 21.577820, 15.611260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175030, -0.655183, -0.734915,
		0.450106, -0.717117, 0.532116,
		-0.875653, -0.237654, 0.420419,
		20.943790, 21.506523, 15.737386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461950, 21.010099, 15.163020>,  <21.556747, 21.672882, 15.443093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461950, 21.010099, 15.163020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.093563, 21.073524, 15.305385>,  <20.872530, 21.111580, 15.390803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.093563, 21.073524, 15.305385>,  <21.461950, 21.010099, 15.163020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093563, 21.073524, 15.305385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388770, -0.434783, -0.812294,
		0.025945, -0.886466, 0.462066,
		-0.920970, 0.158563, 0.355912,
		20.817272, 21.121094, 15.412158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041866, 20.330244, 14.959265>,  <21.461950, 21.010099, 15.163020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041866, 20.330244, 14.959265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.793716, 20.627678, 15.059039>,  <20.644827, 20.806139, 15.118904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.793716, 20.627678, 15.059039>,  <21.041866, 20.330244, 14.959265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793716, 20.627678, 15.059039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667344, -0.333363, -0.665973,
		-0.412059, -0.579607, 0.703038,
		-0.620370, 0.743589, 0.249432,
		20.607605, 20.850754, 15.133870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.341265, 19.984314, 14.847477>,  <21.041866, 20.330244, 14.959265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.341265, 19.984314, 14.847477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.296597, 20.381489, 14.831445>,  <20.269796, 20.619793, 14.821825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.296597, 20.381489, 14.831445>,  <20.341265, 19.984314, 14.847477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296597, 20.381489, 14.831445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698779, -0.107138, -0.707269,
		-0.706567, -0.050973, 0.705808,
		-0.111670, 0.992937, -0.040082,
		20.263096, 20.679369, 14.819420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.584410, 16.674166, 12.733892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.654530, 17.053692, 12.628809>,  <16.696602, 17.281408, 12.565759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.654530, 17.053692, 12.628809>,  <16.584410, 16.674166, 12.733892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654530, 17.053692, 12.628809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646428, -0.090334, -0.757608,
		-0.742563, 0.302631, 0.597507,
		0.175301, 0.948817, -0.262708,
		16.707119, 17.338337, 12.549996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960606, 17.187281, 12.712044>,  <16.584410, 16.674166, 12.733892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960606, 17.187281, 12.712044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.234619, 17.326439, 12.456014>,  <16.399027, 17.409933, 12.302396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.234619, 17.326439, 12.456014>,  <15.960606, 17.187281, 12.712044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234619, 17.326439, 12.456014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711140, 0.128612, -0.691186,
		-0.158138, 0.928670, 0.335505,
		0.685034, 0.347894, -0.640076,
		16.440130, 17.430807, 12.263990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566076, 17.471294, 12.195469>,  <15.960606, 17.187281, 12.712044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.566076, 17.471294, 12.195469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.923421, 17.524063, 12.023654>,  <16.137827, 17.555723, 11.920566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.923421, 17.524063, 12.023654>,  <15.566076, 17.471294, 12.195469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923421, 17.524063, 12.023654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447373, 0.171825, -0.877687,
		-0.041980, 0.976255, 0.212519,
		0.893362, 0.131920, -0.429537,
		16.191429, 17.563639, 11.894793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519474, 17.985449, 11.676075>,  <15.566076, 17.471294, 12.195469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519474, 17.985449, 11.676075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.850024, 17.780052, 11.583614>,  <16.048353, 17.656815, 11.528138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.850024, 17.780052, 11.583614>,  <15.519474, 17.985449, 11.676075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850024, 17.780052, 11.583614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240579, 0.049203, -0.969382,
		0.509143, 0.856682, -0.082875,
		0.826374, -0.513492, -0.231152,
		16.097937, 17.626005, 11.514269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730635, 18.257383, 11.062017>,  <15.519474, 17.985449, 11.676075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.730635, 18.257383, 11.062017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.897122, 17.895302, 11.096353>,  <15.997015, 17.678053, 11.116954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.897122, 17.895302, 11.096353>,  <15.730635, 18.257383, 11.062017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897122, 17.895302, 11.096353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175068, -0.172418, -0.969342,
		0.892251, 0.388431, -0.230236,
		0.416219, -0.905203, 0.085838,
		16.021988, 17.623741, 11.122104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335587, 18.302261, 10.581184>,  <15.730635, 18.257383, 11.062017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335587, 18.302261, 10.581184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.223831, 17.922756, 10.640231>,  <16.156778, 17.695053, 10.675659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.223831, 17.922756, 10.640231>,  <16.335587, 18.302261, 10.581184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.223831, 17.922756, 10.640231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063946, -0.135012, -0.988778,
		0.958047, -0.285692, -0.022949,
		-0.279388, -0.948763, 0.147616,
		16.140015, 17.638126, 10.684516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732887, 17.872749, 10.079225>,  <16.335587, 18.302261, 10.581184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732887, 17.872749, 10.079225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.414001, 17.656288, 10.186257>,  <16.222670, 17.526411, 10.250477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.414001, 17.656288, 10.186257>,  <16.732887, 17.872749, 10.079225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414001, 17.656288, 10.186257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252595, -0.103567, -0.962013,
		0.548308, -0.834523, -0.054127,
		-0.797217, -0.541152, 0.267583,
		16.174837, 17.493942, 10.266532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666719, 17.315029, 9.598150>,  <16.732887, 17.872749, 10.079225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666719, 17.315029, 9.598150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.300110, 17.309925, 9.758061>,  <16.080145, 17.306864, 9.854009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.300110, 17.309925, 9.758061>,  <16.666719, 17.315029, 9.598150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300110, 17.309925, 9.758061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380484, -0.280449, -0.881238,
		0.123361, -0.959784, 0.252183,
		-0.916523, -0.012759, 0.399779,
		16.025152, 17.306097, 9.877995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423044, 16.661100, 9.375537>,  <16.666719, 17.315029, 9.598150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423044, 16.661100, 9.375537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.118839, 16.904778, 9.465430>,  <15.936316, 17.050983, 9.519366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.118839, 16.904778, 9.465430>,  <16.423044, 16.661100, 9.375537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118839, 16.904778, 9.465430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453432, -0.250517, -0.855360,
		-0.464780, -0.752413, 0.466748,
		-0.760512, 0.609193, 0.224733,
		15.890686, 17.087536, 9.532850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977204, 16.452364, 8.911137>,  <16.423044, 16.661100, 9.375537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977204, 16.452364, 8.911137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.773381, 16.767353, 9.049837>,  <15.651088, 16.956347, 9.133058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.773381, 16.767353, 9.049837>,  <15.977204, 16.452364, 8.911137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773381, 16.767353, 9.049837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479332, 0.074877, -0.874434,
		-0.714557, -0.611783, 0.339307,
		-0.509557, 0.787474, 0.346751,
		15.620514, 17.003595, 9.153862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271049, 16.240549, 8.806039>,  <15.977204, 16.452364, 8.911137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271049, 16.240549, 8.806039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.347142, 16.632858, 8.823458>,  <15.392798, 16.868244, 8.833909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.347142, 16.632858, 8.823458>,  <15.271049, 16.240549, 8.806039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347142, 16.632858, 8.823458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466857, 0.129396, -0.874815,
		-0.863630, 0.146089, 0.482496,
		0.190233, 0.980773, 0.043547,
		15.404212, 16.927090, 8.836522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.810266, 16.548027, 8.375924>,  <15.271049, 16.240549, 8.806039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.810266, 16.548027, 8.375924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.081655, 16.834606, 8.440888>,  <15.244488, 17.006554, 8.479867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.081655, 16.834606, 8.440888>,  <14.810266, 16.548027, 8.375924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081655, 16.834606, 8.440888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119084, 0.325414, -0.938043,
		-0.724910, 0.617096, 0.306102,
		0.678472, 0.716449, 0.162410,
		15.285196, 17.049541, 8.489612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533742, 17.241426, 8.342042>,  <14.810266, 16.548027, 8.375924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.533742, 17.241426, 8.342042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.908969, 17.169437, 8.223626>,  <15.134105, 17.126244, 8.152576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.908969, 17.169437, 8.223626>,  <14.533742, 17.241426, 8.342042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908969, 17.169437, 8.223626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244245, 0.262473, -0.933516,
		0.245710, 0.948007, 0.202259,
		0.938068, -0.179973, -0.296039,
		15.190390, 17.115446, 8.134814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697474, 17.888231, 7.882279>,  <14.533742, 17.241426, 8.342042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697474, 17.888231, 7.882279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.069041, 17.801819, 7.761984>,  <15.291982, 17.749971, 7.689807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.069041, 17.801819, 7.761984>,  <14.697474, 17.888231, 7.882279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069041, 17.801819, 7.761984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368799, 0.612517, 0.699149,
		0.033168, -0.760364, 0.648650,
		0.928917, -0.216032, -0.300738,
		15.347716, 17.737009, 7.671762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599959, 18.589838, 7.743110>,  <14.697474, 17.888231, 7.882279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599959, 18.589838, 7.743110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.206813, 18.662285, 7.756804>,  <13.970925, 18.705753, 7.765020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.206813, 18.662285, 7.756804>,  <14.599959, 18.589838, 7.743110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206813, 18.662285, 7.756804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107354, 0.411510, 0.905061,
		0.149832, 0.893228, -0.423902,
		-0.982866, 0.181115, 0.034234,
		13.911953, 18.716619, 7.767074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552614, 19.324966, 7.963968>,  <14.599959, 18.589838, 7.743110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552614, 19.324966, 7.963968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.205667, 19.150284, 8.059430>,  <13.997498, 19.045475, 8.116707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.205667, 19.150284, 8.059430>,  <14.552614, 19.324966, 7.963968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205667, 19.150284, 8.059430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001354, 0.477477, 0.878643,
		-0.497662, 0.762432, -0.413558,
		-0.867370, -0.436707, 0.238654,
		13.945456, 19.019272, 8.131026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145309, 19.845619, 8.208333>,  <14.552614, 19.324966, 7.963968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145309, 19.845619, 8.208333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.972390, 19.512211, 8.345948>,  <13.868639, 19.312166, 8.428517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.972390, 19.512211, 8.345948>,  <14.145309, 19.845619, 8.208333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972390, 19.512211, 8.345948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026489, 0.369626, 0.928803,
		-0.901342, 0.410632, -0.137709,
		-0.432297, -0.833521, 0.344037,
		13.842701, 19.262154, 8.449160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.677390, 20.127924, 8.598138>,  <14.145309, 19.845619, 8.208333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.677390, 20.127924, 8.598138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.711389, 19.747829, 8.718019>,  <13.731788, 19.519772, 8.789948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.711389, 19.747829, 8.718019>,  <13.677390, 20.127924, 8.598138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.711389, 19.747829, 8.718019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057660, 0.304980, 0.950612,
		-0.994712, -0.063517, 0.080713,
		0.084996, -0.950238, 0.299705,
		13.736887, 19.462757, 8.807931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273661, 20.121613, 9.232416>,  <13.677390, 20.127924, 8.598138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273661, 20.121613, 9.232416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485837, 19.784828, 9.271891>,  <13.613143, 19.582758, 9.295575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485837, 19.784828, 9.271891>,  <13.273661, 20.121613, 9.232416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485837, 19.784828, 9.271891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085699, 0.169076, 0.981870,
		-0.843380, -0.512366, 0.161840,
		0.530440, -0.841959, 0.098686,
		13.644969, 19.532240, 9.301497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123426, 19.877110, 9.871192>,  <13.273661, 20.121613, 9.232416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123426, 19.877110, 9.871192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.454844, 19.657482, 9.827310>,  <13.653695, 19.525705, 9.800980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.454844, 19.657482, 9.827310>,  <13.123426, 19.877110, 9.871192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454844, 19.657482, 9.827310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165399, 0.052816, 0.984812,
		-0.534937, -0.834106, 0.134575,
		0.828545, -0.549070, -0.109707,
		13.703408, 19.492762, 9.794397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060970, 19.233381, 10.346984>,  <13.123426, 19.877110, 9.871192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060970, 19.233381, 10.346984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.448356, 19.300743, 10.273537>,  <13.680787, 19.341160, 10.229468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.448356, 19.300743, 10.273537>,  <13.060970, 19.233381, 10.346984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448356, 19.300743, 10.273537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196435, -0.062748, 0.978507,
		0.153267, -0.983718, -0.093850,
		0.968465, 0.168408, -0.183619,
		13.738895, 19.351265, 10.218451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442232, 18.675575, 10.700628>,  <13.060970, 19.233381, 10.346984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442232, 18.675575, 10.700628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.703715, 18.972637, 10.642485>,  <13.860605, 19.150875, 10.607598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.703715, 18.972637, 10.642485>,  <13.442232, 18.675575, 10.700628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703715, 18.972637, 10.642485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417633, -0.193868, 0.887692,
		0.631068, -0.640998, -0.436891,
		0.653708, 0.742655, -0.145358,
		13.899828, 19.195433, 10.598877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038389, 18.486422, 11.103559>,  <13.442232, 18.675575, 10.700628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038389, 18.486422, 11.103559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068660, 18.880184, 11.040045>,  <14.086823, 19.116442, 11.001936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068660, 18.880184, 11.040045>,  <14.038389, 18.486422, 11.103559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068660, 18.880184, 11.040045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349012, 0.123018, 0.929009,
		0.934058, -0.125723, -0.334260,
		0.075677, 0.984409, -0.158785,
		14.091363, 19.175507, 10.992410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581720, 18.655180, 11.565525>,  <14.038389, 18.486422, 11.103559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.581720, 18.655180, 11.565525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.428514, 19.015179, 11.482288>,  <14.336589, 19.231178, 11.432346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.428514, 19.015179, 11.482288>,  <14.581720, 18.655180, 11.565525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428514, 19.015179, 11.482288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329384, 0.343527, 0.879486,
		0.863020, 0.268317, -0.428022,
		-0.383018, 0.899997, -0.208091,
		14.313608, 19.285177, 11.419861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073666, 19.281862, 11.739775>,  <14.581720, 18.655180, 11.565525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073666, 19.281862, 11.739775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.711736, 19.452175, 11.739220>,  <14.494577, 19.554363, 11.738887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.711736, 19.452175, 11.739220>,  <15.073666, 19.281862, 11.739775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711736, 19.452175, 11.739220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172637, 0.369843, 0.912914,
		0.389215, 0.825788, -0.408149,
		-0.904825, 0.425781, -0.001387,
		14.440289, 19.579910, 11.738804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228800, 20.020803, 11.930944>,  <15.073666, 19.281862, 11.739775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228800, 20.020803, 11.930944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.836415, 19.975327, 11.993924>,  <14.600985, 19.948040, 12.031712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.836415, 19.975327, 11.993924>,  <15.228800, 20.020803, 11.930944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836415, 19.975327, 11.993924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096502, 0.418195, 0.903217,
		-0.168535, 0.901214, -0.399261,
		-0.980961, -0.113694, 0.157449,
		14.542128, 19.941217, 12.041159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986369, 20.704565, 12.166780>,  <15.228800, 20.020803, 11.930944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.986369, 20.704565, 12.166780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723199, 20.423100, 12.274102>,  <14.565297, 20.254219, 12.338496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723199, 20.423100, 12.274102>,  <14.986369, 20.704565, 12.166780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723199, 20.423100, 12.274102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018150, 0.341359, 0.939758,
		-0.752864, 0.623161, -0.211817,
		-0.657926, -0.703665, 0.268307,
		14.525822, 20.212000, 12.354594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540452, 21.082537, 12.548507>,  <14.986369, 20.704565, 12.166780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.540452, 21.082537, 12.548507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.480426, 20.701851, 12.655626>,  <14.444410, 20.473438, 12.719898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.480426, 20.701851, 12.655626>,  <14.540452, 21.082537, 12.548507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480426, 20.701851, 12.655626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049541, 0.277764, 0.959371,
		-0.987434, 0.130702, -0.088832,
		-0.150066, -0.951716, 0.267799,
		14.435406, 20.416336, 12.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020890, 21.576698, 12.309633>,  <14.540452, 21.082537, 12.548507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020890, 21.576698, 12.309633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.143174, 21.945545, 12.214772>,  <14.216544, 22.166853, 12.157856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.143174, 21.945545, 12.214772>,  <14.020890, 21.576698, 12.309633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143174, 21.945545, 12.214772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188540, -0.185516, -0.964384,
		-0.933271, 0.339534, 0.117142,
		0.305709, 0.922117, -0.237152,
		14.234887, 22.222181, 12.143626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513998, 21.977188, 11.963647>,  <14.020890, 21.576698, 12.309633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513998, 21.977188, 11.963647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.856370, 22.145329, 11.843190>,  <14.061793, 22.246214, 11.770916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.856370, 22.145329, 11.843190>,  <13.513998, 21.977188, 11.963647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856370, 22.145329, 11.843190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236171, -0.200292, -0.950845,
		-0.460006, 0.884979, -0.072161,
		0.855931, 0.420352, -0.301142,
		14.113150, 22.271435, 11.752848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397549, 22.256165, 11.410835>,  <13.513998, 21.977188, 11.963647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397549, 22.256165, 11.410835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.795455, 22.240463, 11.373095>,  <14.034199, 22.231043, 11.350451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.795455, 22.240463, 11.373095>,  <13.397549, 22.256165, 11.410835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795455, 22.240463, 11.373095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099162, -0.147646, -0.984057,
		0.024699, 0.988261, -0.150765,
		0.994765, -0.039255, -0.094351,
		14.093884, 22.228687, 11.344790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510231, 22.677855, 10.873038>,  <13.397549, 22.256165, 11.410835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510231, 22.677855, 10.873038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.856364, 22.478527, 10.894493>,  <14.064044, 22.358931, 10.907366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.856364, 22.478527, 10.894493>,  <13.510231, 22.677855, 10.873038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856364, 22.478527, 10.894493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066550, 0.008173, -0.997750,
		0.496760, 0.866954, 0.040236,
		0.865332, -0.498320, 0.053636,
		14.115964, 22.329031, 10.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020553, 23.048309, 10.556028>,  <13.510231, 22.677855, 10.873038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020553, 23.048309, 10.556028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.180549, 22.683731, 10.517507>,  <14.276546, 22.464985, 10.494393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.180549, 22.683731, 10.517507>,  <14.020553, 23.048309, 10.556028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180549, 22.683731, 10.517507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065041, 0.076582, -0.994939,
		0.914209, 0.404229, -0.028649,
		0.399990, -0.911446, -0.096304,
		14.300546, 22.410297, 10.488615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425460, 22.997501, 9.978455>,  <14.020553, 23.048309, 10.556028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425460, 22.997501, 9.978455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.384032, 22.601688, 10.018657>,  <14.359176, 22.364201, 10.042778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.384032, 22.601688, 10.018657>,  <14.425460, 22.997501, 9.978455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384032, 22.601688, 10.018657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057230, -0.106811, -0.992631,
		0.992975, -0.097054, 0.067693,
		-0.103569, -0.989531, 0.100507,
		14.352962, 22.304829, 10.048809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978342, 22.722282, 9.640340>,  <14.425460, 22.997501, 9.978455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978342, 22.722282, 9.640340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.701510, 22.434765, 9.666759>,  <14.535412, 22.262255, 9.682610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.701510, 22.434765, 9.666759>,  <14.978342, 22.722282, 9.640340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701510, 22.434765, 9.666759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063388, -0.151668, -0.986397,
		0.719033, -0.678478, 0.150529,
		-0.692079, -0.718794, 0.066047,
		14.493887, 22.219126, 9.686572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307185, 22.132814, 9.268765>,  <14.978342, 22.722282, 9.640340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307185, 22.132814, 9.268765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.908093, 22.110668, 9.284100>,  <14.668638, 22.097380, 9.293301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.908093, 22.110668, 9.284100>,  <15.307185, 22.132814, 9.268765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908093, 22.110668, 9.284100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026644, -0.198275, -0.979784,
		0.061848, -0.978581, 0.196350,
		-0.997730, -0.055366, 0.038336,
		14.608774, 22.094059, 9.295600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200995, 21.676626, 8.767297>,  <15.307185, 22.132814, 9.268765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200995, 21.676626, 8.767297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.835021, 21.830143, 8.817254>,  <14.615437, 21.922253, 8.847228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.835021, 21.830143, 8.817254>,  <15.200995, 21.676626, 8.767297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835021, 21.830143, 8.817254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157603, -0.054862, -0.985977,
		-0.371559, -0.921788, 0.110682,
		-0.914934, 0.383792, 0.124893,
		14.560540, 21.945280, 8.854722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747066, 21.244926, 8.391813>,  <15.200995, 21.676626, 8.767297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747066, 21.244926, 8.391813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.527656, 21.574215, 8.450366>,  <14.396009, 21.771788, 8.485497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.527656, 21.574215, 8.450366>,  <14.747066, 21.244926, 8.391813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527656, 21.574215, 8.450366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159838, 0.068602, -0.984756,
		-0.820714, -0.563562, 0.093952,
		-0.548526, 0.823220, 0.146382,
		14.363098, 21.821180, 8.494281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107236, 21.140774, 8.060712>,  <14.747066, 21.244926, 8.391813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107236, 21.140774, 8.060712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.158504, 21.536865, 8.082705>,  <14.189264, 21.774519, 8.095901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.158504, 21.536865, 8.082705>,  <14.107236, 21.140774, 8.060712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158504, 21.536865, 8.082705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315417, 0.093261, -0.944359,
		-0.940258, 0.103696, 0.324288,
		0.128169, 0.990227, 0.054982,
		14.196955, 21.833933, 8.099199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552880, 21.403322, 7.804431>,  <14.107236, 21.140774, 8.060712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552880, 21.403322, 7.804431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.811233, 21.706638, 7.769032>,  <13.966244, 21.888628, 7.747793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.811233, 21.706638, 7.769032>,  <13.552880, 21.403322, 7.804431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.811233, 21.706638, 7.769032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367580, 0.207283, -0.906597,
		-0.669121, 0.618084, 0.412613,
		0.645881, 0.758292, -0.088498,
		14.004996, 21.934126, 7.742483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.454267, 24.072887, 15.449112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820731, 24.114086, 15.294173>,  <15.040610, 24.138805, 15.201210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820731, 24.114086, 15.294173>,  <14.454267, 24.072887, 15.449112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820731, 24.114086, 15.294173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336192, -0.328701, -0.882570,
		-0.218222, 0.938801, -0.266518,
		0.916163, 0.102995, -0.387348,
		15.095580, 24.144985, 15.177969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349886, 24.386602, 14.829080>,  <14.454267, 24.072887, 15.449112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349886, 24.386602, 14.829080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711619, 24.223637, 14.778172>,  <14.928659, 24.125858, 14.747628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711619, 24.223637, 14.778172>,  <14.349886, 24.386602, 14.829080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711619, 24.223637, 14.778172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337539, -0.500124, -0.797461,
		0.261246, 0.764128, -0.589796,
		0.904333, -0.407413, -0.127268,
		14.982920, 24.101414, 14.739992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377901, 24.427380, 14.178567>,  <14.349886, 24.386602, 14.829080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377901, 24.427380, 14.178567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675536, 24.172699, 14.259503>,  <14.854117, 24.019890, 14.308065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675536, 24.172699, 14.259503>,  <14.377901, 24.427380, 14.178567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675536, 24.172699, 14.259503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155793, -0.459886, -0.874204,
		0.649662, 0.618962, -0.441390,
		0.744089, -0.636703, 0.202341,
		14.898763, 23.981688, 14.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850054, 24.351425, 13.573587>,  <14.377901, 24.427380, 14.178567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850054, 24.351425, 13.573587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915217, 24.021805, 13.790624>,  <14.954315, 23.824034, 13.920845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915217, 24.021805, 13.790624>,  <14.850054, 24.351425, 13.573587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915217, 24.021805, 13.790624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050607, -0.556192, -0.829512,
		0.985342, 0.107676, -0.132311,
		0.162909, -0.824049, 0.542590,
		14.964090, 23.774590, 13.953401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286983, 23.940144, 13.230082>,  <14.850054, 24.351425, 13.573587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286983, 23.940144, 13.230082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133264, 23.656143, 13.466120>,  <15.041032, 23.485743, 13.607742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133264, 23.656143, 13.466120>,  <15.286983, 23.940144, 13.230082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133264, 23.656143, 13.466120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204919, -0.557633, -0.804396,
		0.900179, -0.430051, 0.068805,
		-0.384299, -0.710001, 0.590096,
		15.017974, 23.443144, 13.643148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596622, 23.274557, 13.047274>,  <15.286983, 23.940144, 13.230082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596622, 23.274557, 13.047274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247115, 23.195553, 13.225046>,  <15.037411, 23.148151, 13.331710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247115, 23.195553, 13.225046>,  <15.596622, 23.274557, 13.047274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247115, 23.195553, 13.225046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278387, -0.546189, -0.790050,
		0.398785, -0.814044, 0.422259,
		-0.873768, -0.197509, 0.444431,
		14.984984, 23.136301, 13.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478310, 22.643776, 12.829144>,  <15.596622, 23.274557, 13.047274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478310, 22.643776, 12.829144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132100, 22.788956, 12.967210>,  <14.924375, 22.876062, 13.050049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132100, 22.788956, 12.967210>,  <15.478310, 22.643776, 12.829144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132100, 22.788956, 12.967210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494054, -0.505369, -0.707469,
		-0.082339, -0.782861, 0.616725,
		-0.865524, 0.362947, 0.345164,
		14.872443, 22.897840, 13.070759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132559, 22.119499, 12.891023>,  <15.478310, 22.643776, 12.829144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132559, 22.119499, 12.891023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846974, 22.399391, 12.880932>,  <14.675624, 22.567326, 12.874877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846974, 22.399391, 12.880932>,  <15.132559, 22.119499, 12.891023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846974, 22.399391, 12.880932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494867, -0.529767, -0.688807,
		-0.495341, -0.479300, 0.724506,
		-0.713964, 0.699728, -0.025225,
		14.632786, 22.609310, 12.873363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488910, 21.714705, 12.847826>,  <15.132559, 22.119499, 12.891023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488910, 21.714705, 12.847826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437022, 22.084618, 12.704746>,  <14.405890, 22.306566, 12.618898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437022, 22.084618, 12.704746>,  <14.488910, 21.714705, 12.847826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437022, 22.084618, 12.704746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344617, -0.380306, -0.858258,
		-0.929738, 0.011937, 0.368028,
		-0.129718, 0.924784, -0.357699,
		14.398107, 22.362053, 12.597437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048513, 21.161627, 13.126064>,  <14.488910, 21.714705, 12.847826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048513, 21.161627, 13.126064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221114, 20.802303, 13.159160>,  <14.324675, 20.586708, 13.179017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221114, 20.802303, 13.159160>,  <14.048513, 21.161627, 13.126064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221114, 20.802303, 13.159160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134152, 0.154595, 0.978828,
		-0.892082, -0.411265, 0.187218,
		0.431501, -0.898310, 0.082740,
		14.350565, 20.532810, 13.183982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781533, 20.858488, 13.681911>,  <14.048513, 21.161627, 13.126064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781533, 20.858488, 13.681911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105138, 20.630093, 13.626096>,  <14.299300, 20.493055, 13.592607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105138, 20.630093, 13.626096>,  <13.781533, 20.858488, 13.681911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105138, 20.630093, 13.626096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149480, -0.029732, 0.988318,
		-0.568469, -0.820418, 0.061299,
		0.809011, -0.570991, -0.139538,
		14.347841, 20.458796, 13.584234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689315, 20.210672, 13.993342>,  <13.781533, 20.858488, 13.681911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689315, 20.210672, 13.993342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076167, 20.309986, 13.971385>,  <14.308278, 20.369574, 13.958210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076167, 20.309986, 13.971385>,  <13.689315, 20.210672, 13.993342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076167, 20.309986, 13.971385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044297, 0.048074, 0.997861,
		0.250393, -0.967493, 0.035496,
		0.967130, 0.248285, -0.054895,
		14.366306, 20.384472, 13.954917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.953626, 19.836637, 14.571436>,  <13.689315, 20.210672, 13.993342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.953626, 19.836637, 14.571436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296918, 20.009190, 14.460189>,  <14.502893, 20.112720, 14.393440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296918, 20.009190, 14.460189>,  <13.953626, 19.836637, 14.571436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296918, 20.009190, 14.460189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285842, 0.048347, 0.957056,
		0.426303, -0.900873, -0.081815,
		0.858231, 0.431382, -0.278118,
		14.554387, 20.138603, 14.376754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469920, 19.449738, 14.828229>,  <13.953626, 19.836637, 14.571436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469920, 19.449738, 14.828229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611691, 19.822655, 14.799354>,  <14.696754, 20.046406, 14.782028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611691, 19.822655, 14.799354>,  <14.469920, 19.449738, 14.828229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611691, 19.822655, 14.799354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368805, -0.068431, 0.926984,
		0.859281, -0.355172, -0.368089,
		0.354428, 0.932293, -0.072188,
		14.718019, 20.102343, 14.777698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208341, 19.473295, 15.180641>,  <14.469920, 19.449738, 14.828229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208341, 19.473295, 15.180641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105243, 19.859013, 15.156287>,  <15.043384, 20.090443, 15.141675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105243, 19.859013, 15.156287>,  <15.208341, 19.473295, 15.180641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105243, 19.859013, 15.156287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455349, 0.176803, 0.872581,
		0.852188, 0.197180, -0.484660,
		-0.257745, 0.964293, -0.060884,
		15.027920, 20.148300, 15.138022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781899, 19.833546, 15.323750>,  <15.208341, 19.473295, 15.180641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781899, 19.833546, 15.323750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478271, 20.086281, 15.386472>,  <15.296093, 20.237923, 15.424105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478271, 20.086281, 15.386472>,  <15.781899, 19.833546, 15.323750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478271, 20.086281, 15.386472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435920, 0.314424, 0.843274,
		0.483510, 0.708461, -0.514102,
		-0.759073, 0.631839, 0.156805,
		15.250548, 20.275833, 15.433514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085384, 20.385237, 15.587991>,  <15.781899, 19.833546, 15.323750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085384, 20.385237, 15.587991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698998, 20.420349, 15.685317>,  <15.467167, 20.441418, 15.743712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698998, 20.420349, 15.685317>,  <16.085384, 20.385237, 15.587991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698998, 20.420349, 15.685317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258223, 0.382277, 0.887235,
		-0.015131, 0.919869, -0.391934,
		-0.965967, 0.087782, 0.243316,
		15.409208, 20.446684, 15.758312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737349, 21.059864, 15.612857>,  <16.085384, 20.385237, 15.587991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.737349, 21.059864, 15.612857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482141, 20.868488, 15.854196>,  <15.329016, 20.753664, 15.998999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482141, 20.868488, 15.854196>,  <15.737349, 21.059864, 15.612857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482141, 20.868488, 15.854196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357940, 0.509473, 0.782507,
		-0.681769, 0.715217, -0.153802,
		-0.638020, -0.478437, 0.603347,
		15.290734, 20.724957, 16.035200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581369, 21.564381, 16.141476>,  <15.737349, 21.059864, 15.612857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581369, 21.564381, 16.141476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494073, 21.212971, 16.311445>,  <15.441695, 21.002125, 16.413427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494073, 21.212971, 16.311445>,  <15.581369, 21.564381, 16.141476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494073, 21.212971, 16.311445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382890, 0.323425, 0.865327,
		-0.897645, 0.351550, 0.265795,
		-0.218241, -0.878527, 0.424926,
		15.428600, 20.949413, 16.438923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337357, 21.747536, 16.699430>,  <15.581369, 21.564381, 16.141476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337357, 21.747536, 16.699430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450795, 21.370293, 16.768847>,  <15.518859, 21.143946, 16.810495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450795, 21.370293, 16.768847>,  <15.337357, 21.747536, 16.699430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450795, 21.370293, 16.768847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284263, 0.255516, 0.924070,
		-0.915842, -0.212733, 0.340555,
		0.283598, -0.943110, 0.173540,
		15.535874, 21.087360, 16.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980584, 21.440004, 17.340479>,  <15.337357, 21.747536, 16.699430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980584, 21.440004, 17.340479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326648, 21.249065, 17.278978>,  <15.534286, 21.134502, 17.242077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326648, 21.249065, 17.278978>,  <14.980584, 21.440004, 17.340479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326648, 21.249065, 17.278978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273130, 0.191372, 0.942750,
		-0.420596, -0.857622, 0.295945,
		0.865158, -0.477349, -0.153752,
		15.586195, 21.105862, 17.232853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.006916, 21.204346, 17.983473>,  <14.980584, 21.440004, 17.340479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.006916, 21.204346, 17.983473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367335, 21.181007, 17.811562>,  <15.583587, 21.167004, 17.708416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367335, 21.181007, 17.811562>,  <15.006916, 21.204346, 17.983473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367335, 21.181007, 17.811562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431144, 0.012688, 0.902194,
		-0.047187, -0.998216, 0.036589,
		0.901049, -0.058347, -0.429776,
		15.637650, 21.163504, 17.682629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379998, 20.706154, 18.428478>,  <15.006916, 21.204346, 17.983473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379998, 20.706154, 18.428478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663091, 20.914791, 18.237877>,  <15.832946, 21.039974, 18.123516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663091, 20.914791, 18.237877>,  <15.379998, 20.706154, 18.428478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663091, 20.914791, 18.237877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530436, 0.053192, 0.846055,
		0.466643, -0.851534, -0.239027,
		0.707730, 0.521594, -0.476505,
		15.875410, 21.071270, 18.094925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.589802, 23.806925, 14.533710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.243717, 23.834991, 14.732297>,  <22.036066, 23.851831, 14.851450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.243717, 23.834991, 14.732297>,  <22.589802, 23.806925, 14.533710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.243717, 23.834991, 14.732297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413813, -0.659050, -0.628022,
		0.283133, -0.748819, 0.599254,
		-0.865214, 0.070165, 0.496470,
		21.984154, 23.856041, 14.881238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.322405, 23.138296, 14.633455>,  <22.589802, 23.806925, 14.533710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.322405, 23.138296, 14.633455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047401, 23.428719, 14.628196>,  <21.882401, 23.602972, 14.625040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047401, 23.428719, 14.628196>,  <22.322405, 23.138296, 14.633455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047401, 23.428719, 14.628196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421381, -0.413623, -0.807065,
		-0.591416, -0.549321, 0.590316,
		-0.687507, 0.726059, -0.013150,
		21.841148, 23.646536, 14.624251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689537, 22.708176, 14.585730>,  <22.322405, 23.138296, 14.633455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689537, 22.708176, 14.585730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.586639, 23.077183, 14.470637>,  <21.524900, 23.298588, 14.401582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.586639, 23.077183, 14.470637>,  <21.689537, 22.708176, 14.585730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586639, 23.077183, 14.470637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296488, -0.358735, -0.885101,
		-0.919740, -0.142377, 0.365797,
		-0.257242, 0.922517, -0.287730,
		21.509466, 23.353937, 14.384318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006493, 22.597031, 14.250603>,  <21.689537, 22.708176, 14.585730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006493, 22.597031, 14.250603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.132462, 22.952888, 14.118327>,  <21.208044, 23.166403, 14.038961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.132462, 22.952888, 14.118327>,  <21.006493, 22.597031, 14.250603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.132462, 22.952888, 14.118327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450853, -0.166376, -0.876955,
		-0.835197, 0.425266, 0.348703,
		0.314924, 0.889645, -0.330689,
		21.226938, 23.219782, 14.019120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.405222, 22.901709, 13.911401>,  <21.006493, 22.597031, 14.250603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.405222, 22.901709, 13.911401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.727478, 23.102291, 13.785237>,  <20.920832, 23.222641, 13.709539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.727478, 23.102291, 13.785237>,  <20.405222, 22.901709, 13.911401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727478, 23.102291, 13.785237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314326, -0.089452, -0.945091,
		-0.502138, 0.860545, 0.085556,
		0.805641, 0.501458, -0.315409,
		20.969170, 23.252729, 13.690615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143887, 23.357389, 13.482142>,  <20.405222, 22.901709, 13.911401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143887, 23.357389, 13.482142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.521877, 23.277790, 13.378285>,  <20.748672, 23.230030, 13.315971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.521877, 23.277790, 13.378285>,  <20.143887, 23.357389, 13.482142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521877, 23.277790, 13.378285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287139, -0.124294, -0.949791,
		0.156735, 0.972086, -0.174595,
		0.944979, -0.198999, -0.259643,
		20.805370, 23.218090, 13.300393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204336, 23.821438, 13.022900>,  <20.143887, 23.357389, 13.482142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204336, 23.821438, 13.022900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.496998, 23.557083, 12.956073>,  <20.672594, 23.398470, 12.915977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.496998, 23.557083, 12.956073>,  <20.204336, 23.821438, 13.022900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496998, 23.557083, 12.956073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409917, -0.230733, -0.882457,
		0.544655, 0.714137, -0.439726,
		0.731654, -0.660886, -0.167067,
		20.716494, 23.358818, 12.905952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414322, 23.843517, 12.330791>,  <20.204336, 23.821438, 13.022900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414322, 23.843517, 12.330791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.557777, 23.480457, 12.418014>,  <20.643850, 23.262621, 12.470346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.557777, 23.480457, 12.418014>,  <20.414322, 23.843517, 12.330791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557777, 23.480457, 12.418014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373725, -0.353668, -0.857467,
		0.855400, 0.226026, -0.466050,
		0.358637, -0.907652, 0.218055,
		20.665369, 23.208162, 12.483430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786860, 23.640530, 11.752527>,  <20.414322, 23.843517, 12.330791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786860, 23.640530, 11.752527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.659866, 23.323166, 11.960259>,  <20.583670, 23.132748, 12.084899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.659866, 23.323166, 11.960259>,  <20.786860, 23.640530, 11.752527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659866, 23.323166, 11.960259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369501, -0.400868, -0.838316,
		0.873312, -0.458043, -0.165898,
		-0.317482, -0.793411, 0.519330,
		20.564621, 23.085142, 12.116058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980995, 22.987770, 11.370081>,  <20.786860, 23.640530, 11.752527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980995, 22.987770, 11.370081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.705540, 22.830437, 11.613740>,  <20.540266, 22.736036, 11.759935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.705540, 22.830437, 11.613740>,  <20.980995, 22.987770, 11.370081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705540, 22.830437, 11.613740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492535, -0.362791, -0.791070,
		0.532149, -0.844790, 0.056101,
		-0.688641, -0.393335, 0.609148,
		20.498947, 22.712437, 11.796484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.702541, 22.447964, 10.976887>,  <20.980995, 22.987770, 11.370081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.702541, 22.447964, 10.976887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423779, 22.443802, 11.263721>,  <20.256521, 22.441305, 11.435822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423779, 22.443802, 11.263721>,  <20.702541, 22.447964, 10.976887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423779, 22.443802, 11.263721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604025, -0.530526, -0.594723,
		0.386621, -0.847605, 0.363441,
		-0.696906, -0.010405, 0.717088,
		20.214706, 22.440681, 11.478848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511438, 21.787350, 11.059778>,  <20.702541, 22.447964, 10.976887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511438, 21.787350, 11.059778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.202560, 22.009369, 11.183476>,  <20.017233, 22.142580, 11.257695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.202560, 22.009369, 11.183476>,  <20.511438, 21.787350, 11.059778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202560, 22.009369, 11.183476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565472, -0.378391, -0.732845,
		-0.289746, -0.740772, 0.606056,
		-0.772197, 0.555047, 0.309249,
		19.970901, 22.175884, 11.276251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930122, 21.366709, 10.937059>,  <20.511438, 21.787350, 11.059778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.930122, 21.366709, 10.937059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.756443, 21.725586, 10.969351>,  <19.652235, 21.940912, 10.988726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.756443, 21.725586, 10.969351>,  <19.930122, 21.366709, 10.937059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756443, 21.725586, 10.969351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675426, -0.264953, -0.688185,
		-0.596045, -0.353336, 0.721030,
		-0.434199, 0.897192, 0.080728,
		19.626183, 21.994743, 10.993569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171658, 21.174295, 11.010792>,  <19.930122, 21.366709, 10.937059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171658, 21.174295, 11.010792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.224892, 21.544132, 10.868008>,  <19.256832, 21.766033, 10.782337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.224892, 21.544132, 10.868008>,  <19.171658, 21.174295, 11.010792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224892, 21.544132, 10.868008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550952, -0.230371, -0.802111,
		-0.823857, 0.303418, 0.478746,
		0.133085, 0.924590, -0.356961,
		19.264818, 21.821510, 10.760920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429556, 20.929661, 11.178458>,  <19.171658, 21.174295, 11.010792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429556, 20.929661, 11.178458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.540356, 20.547070, 11.141761>,  <18.606836, 20.317514, 11.119742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.540356, 20.547070, 11.141761>,  <18.429556, 20.929661, 11.178458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540356, 20.547070, 11.141761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296248, -0.005816, 0.955094,
		-0.914061, -0.291740, 0.281744,
		0.277001, -0.956480, -0.091744,
		18.623455, 20.260126, 11.114238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104815, 20.650007, 11.775193>,  <18.429556, 20.929661, 11.178458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104815, 20.650007, 11.775193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.400196, 20.403599, 11.665499>,  <18.577425, 20.255754, 11.599682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.400196, 20.403599, 11.665499>,  <18.104815, 20.650007, 11.775193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400196, 20.403599, 11.665499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442165, 0.135323, 0.886667,
		-0.509094, -0.776020, 0.372312,
		0.738453, -0.616021, -0.274237,
		18.621733, 20.218792, 11.583228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974440, 20.075304, 12.214749>,  <18.104815, 20.650007, 11.775193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.974440, 20.075304, 12.214749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.350395, 20.063293, 12.078686>,  <18.575968, 20.056087, 11.997047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.350395, 20.063293, 12.078686>,  <17.974440, 20.075304, 12.214749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350395, 20.063293, 12.078686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341235, 0.044724, 0.938913,
		-0.012979, -0.998548, 0.052282,
		0.939889, -0.030027, -0.340159,
		18.632362, 20.054287, 11.976638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265797, 19.622246, 12.670601>,  <17.974440, 20.075304, 12.214749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265797, 19.622246, 12.670601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.558479, 19.826416, 12.489903>,  <18.734089, 19.948919, 12.381485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.558479, 19.826416, 12.489903>,  <18.265797, 19.622246, 12.670601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558479, 19.826416, 12.489903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436083, 0.158810, 0.885783,
		0.523868, -0.845130, -0.106386,
		0.731706, 0.510427, -0.451742,
		18.777990, 19.979544, 12.354381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814430, 19.389132, 13.022343>,  <18.265797, 19.622246, 12.670601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814430, 19.389132, 13.022343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.922398, 19.729622, 12.842316>,  <18.987179, 19.933916, 12.734300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.922398, 19.729622, 12.842316>,  <18.814430, 19.389132, 13.022343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922398, 19.729622, 12.842316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444161, 0.304646, 0.842563,
		0.854321, -0.427326, -0.295851,
		0.269919, 0.851225, -0.450067,
		19.003374, 19.984989, 12.707295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491060, 19.464624, 13.200988>,  <18.814430, 19.389132, 13.022343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491060, 19.464624, 13.200988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.391674, 19.840305, 13.106194>,  <19.332043, 20.065714, 13.049318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.391674, 19.840305, 13.106194>,  <19.491060, 19.464624, 13.200988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391674, 19.840305, 13.106194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392865, 0.321339, 0.861626,
		0.885394, 0.120981, -0.448821,
		-0.248464, 0.939204, -0.236983,
		19.317135, 20.122066, 13.035100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066877, 19.821608, 13.269103>,  <19.491060, 19.464624, 13.200988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066877, 19.821608, 13.269103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.789574, 20.108883, 13.293098>,  <19.623192, 20.281248, 13.307495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.789574, 20.108883, 13.293098>,  <20.066877, 19.821608, 13.269103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789574, 20.108883, 13.293098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459947, 0.376823, 0.804023,
		0.554835, 0.584987, -0.591564,
		-0.693258, 0.718189, 0.059988,
		19.581596, 20.324339, 13.311094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479589, 20.405476, 13.314096>,  <20.066877, 19.821608, 13.269103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479589, 20.405476, 13.314096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.128887, 20.509853, 13.475693>,  <19.918467, 20.572481, 13.572650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.128887, 20.509853, 13.475693>,  <20.479589, 20.405476, 13.314096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.128887, 20.509853, 13.475693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472153, 0.307207, 0.826254,
		0.091500, 0.915167, -0.392552,
		-0.876755, 0.260947, 0.403990,
		19.865860, 20.588137, 13.596889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.722363, 21.051651, 13.650130>,  <20.479589, 20.405476, 13.314096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.722363, 21.051651, 13.650130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.369736, 20.954144, 13.811831>,  <20.158159, 20.895639, 13.908852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.369736, 20.954144, 13.811831>,  <20.722363, 21.051651, 13.650130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369736, 20.954144, 13.811831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313966, 0.336715, 0.887721,
		-0.352518, 0.909505, -0.220300,
		-0.881565, -0.243771, 0.404252,
		20.105267, 20.881012, 13.933107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389259, 21.723141, 13.996115>,  <20.722363, 21.051651, 13.650130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389259, 21.723141, 13.996115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.272224, 21.371082, 14.145640>,  <20.202003, 21.159847, 14.235355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.272224, 21.371082, 14.145640>,  <20.389259, 21.723141, 13.996115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272224, 21.371082, 14.145640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153532, 0.342611, 0.926847,
		-0.943833, 0.328577, 0.034887,
		-0.292589, -0.880145, 0.373814,
		20.184448, 21.107038, 14.257785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030123, 21.930607, 14.547574>,  <20.389259, 21.723141, 13.996115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030123, 21.930607, 14.547574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.131836, 21.559109, 14.655482>,  <20.192863, 21.336210, 14.720227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.131836, 21.559109, 14.655482>,  <20.030123, 21.930607, 14.547574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131836, 21.559109, 14.655482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319244, 0.343910, 0.883068,
		-0.912920, -0.138429, 0.383947,
		0.254285, -0.928743, 0.269770,
		20.208122, 21.280485, 14.736413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801632, 21.819719, 15.233882>,  <20.030123, 21.930607, 14.547574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801632, 21.819719, 15.233882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.052654, 21.508770, 15.216590>,  <20.203268, 21.322201, 15.206215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.052654, 21.508770, 15.216590>,  <19.801632, 21.819719, 15.233882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052654, 21.508770, 15.216590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357958, 0.238773, 0.902692,
		-0.691406, -0.581962, 0.428110,
		0.627554, -0.777372, -0.043229,
		20.240921, 21.275558, 15.203621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637800, 21.419346, 15.878124>,  <19.801632, 21.819719, 15.233882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637800, 21.419346, 15.878124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006454, 21.330780, 15.750649>,  <20.227648, 21.277639, 15.674165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006454, 21.330780, 15.750649>,  <19.637800, 21.419346, 15.878124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006454, 21.330780, 15.750649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325481, -0.006105, 0.945529,
		-0.211303, -0.975160, 0.066440,
		0.921636, -0.221418, -0.318686,
		20.282946, 21.264355, 15.655044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969599, 21.215216, 16.487274>,  <19.637800, 21.419346, 15.878124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969599, 21.215216, 16.487274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.269268, 21.297543, 16.235439>,  <20.449070, 21.346939, 16.084337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.269268, 21.297543, 16.235439>,  <19.969599, 21.215216, 16.487274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.269268, 21.297543, 16.235439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525184, 0.394645, 0.753947,
		0.403661, -0.895480, 0.187547,
		0.749159, 0.205843, -0.629595,
		20.494019, 21.359287, 16.046562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839848, 20.449093, 16.562193>,  <19.969599, 21.215216, 16.487274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839848, 20.449093, 16.562193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.545628, 20.295940, 16.785751>,  <19.369095, 20.204050, 16.919888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.545628, 20.295940, 16.785751>,  <19.839848, 20.449093, 16.562193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545628, 20.295940, 16.785751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370631, -0.463147, -0.805064,
		0.567095, -0.799311, 0.198761,
		-0.735552, -0.382880, 0.558898,
		19.324963, 20.181076, 16.953421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859730, 19.628565, 16.573772>,  <19.839848, 20.449093, 16.562193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859730, 19.628565, 16.573772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.476933, 19.729824, 16.630449>,  <19.247253, 19.790581, 16.664455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.476933, 19.729824, 16.630449>,  <19.859730, 19.628565, 16.573772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476933, 19.729824, 16.630449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255694, -0.505286, -0.824201,
		-0.137050, -0.824986, 0.548284,
		-0.956994, 0.253149, 0.141695,
		19.189835, 19.805769, 16.672958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477705, 19.011539, 16.375437>,  <19.859730, 19.628565, 16.573772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477705, 19.011539, 16.375437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.204239, 19.303314, 16.384598>,  <19.040159, 19.478378, 16.390095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.204239, 19.303314, 16.384598>,  <19.477705, 19.011539, 16.375437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204239, 19.303314, 16.384598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538150, -0.482691, -0.690944,
		-0.492953, -0.484691, 0.722545,
		-0.683660, 0.729441, 0.022892,
		18.999140, 19.522144, 16.391468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910650, 18.589050, 16.378006>,  <19.477705, 19.011539, 16.375437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910650, 18.589050, 16.378006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806667, 18.955643, 16.256361>,  <18.744278, 19.175598, 16.183374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806667, 18.955643, 16.256361>,  <18.910650, 18.589050, 16.378006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806667, 18.955643, 16.256361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603594, -0.400055, -0.689660,
		-0.753723, 0.004281, 0.657178,
		-0.259955, 0.916481, -0.304115,
		18.728682, 19.230587, 16.165127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244390, 18.568590, 16.382359>,  <18.910650, 18.589050, 16.378006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244390, 18.568590, 16.382359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.372833, 18.854038, 16.133316>,  <18.449898, 19.025307, 15.983891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.372833, 18.854038, 16.133316>,  <18.244390, 18.568590, 16.382359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372833, 18.854038, 16.133316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629203, -0.330592, -0.703429,
		-0.707810, 0.617619, 0.342857,
		0.321105, 0.713621, -0.622604,
		18.469166, 19.068125, 15.946535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610039, 18.719252, 15.824049>,  <18.244390, 18.568590, 16.382359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610039, 18.719252, 15.824049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.935661, 18.886536, 15.662848>,  <18.131035, 18.986906, 15.566128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.935661, 18.886536, 15.662848>,  <17.610039, 18.719252, 15.824049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935661, 18.886536, 15.662848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368432, -0.164539, -0.914978,
		-0.448963, 0.893324, 0.020137,
		0.814058, 0.418210, -0.403001,
		18.179878, 19.011999, 15.541948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364931, 19.300526, 15.271207>,  <17.610039, 18.719252, 15.824049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364931, 19.300526, 15.271207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.717522, 19.126869, 15.196887>,  <17.929075, 19.022675, 15.152295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.717522, 19.126869, 15.196887>,  <17.364931, 19.300526, 15.271207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717522, 19.126869, 15.196887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310166, -0.235583, -0.921031,
		0.356086, 0.869495, -0.342317,
		0.881476, -0.434141, -0.185800,
		17.981964, 18.996626, 15.141147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587145, 19.612600, 14.654227>,  <17.364931, 19.300526, 15.271207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587145, 19.612600, 14.654227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.814236, 19.284462, 14.681708>,  <17.950491, 19.087580, 14.698197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.814236, 19.284462, 14.681708>,  <17.587145, 19.612600, 14.654227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814236, 19.284462, 14.681708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351426, -0.316985, -0.880920,
		0.744435, 0.475980, -0.468252,
		0.567729, -0.820344, 0.068703,
		17.984554, 19.038359, 14.702319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961922, 19.485476, 13.999077>,  <17.587145, 19.612600, 14.654227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961922, 19.485476, 13.999077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.949635, 19.131592, 14.185128>,  <17.942263, 18.919262, 14.296760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.949635, 19.131592, 14.185128>,  <17.961922, 19.485476, 13.999077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.949635, 19.131592, 14.185128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247762, -0.444087, -0.861047,
		0.968334, -0.141690, -0.205556,
		-0.030717, -0.884710, 0.465130,
		17.940420, 18.866179, 14.324667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303158, 18.996681, 13.504710>,  <17.961922, 19.485476, 13.999077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303158, 18.996681, 13.504710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.088680, 18.758835, 13.744353>,  <17.959993, 18.616127, 13.888139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.088680, 18.758835, 13.744353>,  <18.303158, 18.996681, 13.504710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088680, 18.758835, 13.744353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354030, -0.485895, -0.799105,
		0.766263, -0.640577, 0.050022,
		-0.536194, -0.594615, 0.599107,
		17.927822, 18.580450, 13.924086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364649, 18.329983, 13.229894>,  <18.303158, 18.996681, 13.504710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364649, 18.329983, 13.229894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.051483, 18.302559, 13.477230>,  <17.863585, 18.286104, 13.625632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.051483, 18.302559, 13.477230>,  <18.364649, 18.329983, 13.229894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051483, 18.302559, 13.477230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534110, -0.435588, -0.724561,
		0.319016, -0.897531, 0.304411,
		-0.782914, -0.068558, 0.618341,
		17.816608, 18.281992, 13.662732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205568, 17.568954, 13.236916>,  <18.364649, 18.329983, 13.229894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205568, 17.568954, 13.236916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.880550, 17.777920, 13.340339>,  <17.685539, 17.903299, 13.402392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.880550, 17.777920, 13.340339>,  <18.205568, 17.568954, 13.236916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880550, 17.777920, 13.340339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539424, -0.505831, -0.673169,
		-0.220886, -0.686453, 0.692814,
		-0.812546, 0.522414, 0.258558,
		17.636787, 17.934645, 13.417906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663887, 16.997120, 13.345659>,  <18.205568, 17.568954, 13.236916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663887, 16.997120, 13.345659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453430, 17.334034, 13.298793>,  <17.327156, 17.536182, 13.270673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453430, 17.334034, 13.298793>,  <17.663887, 16.997120, 13.345659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453430, 17.334034, 13.298793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651300, -0.487708, -0.581335,
		-0.546793, -0.229555, 0.805185,
		-0.526143, 0.842286, -0.117166,
		17.295588, 17.586720, 13.263643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032635, 16.756548, 13.273661>,  <17.663887, 16.997120, 13.345659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032635, 16.756548, 13.273661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.005882, 17.116817, 13.101935>,  <16.989830, 17.332979, 12.998900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.005882, 17.116817, 13.101935>,  <17.032635, 16.756548, 13.273661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005882, 17.116817, 13.101935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451527, -0.411018, -0.791952,
		-0.889747, 0.140878, 0.434169,
		-0.066883, 0.900676, -0.429313,
		16.985817, 17.387020, 12.973142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.147757, 20.478382, 18.767511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202404, 20.802479, 18.539532>,  <16.235193, 20.996937, 18.402744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202404, 20.802479, 18.539532>,  <16.147757, 20.478382, 18.767511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202404, 20.802479, 18.539532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667540, 0.349799, 0.657291,
		0.731933, -0.470261, -0.493081,
		0.136618, 0.810244, -0.569947,
		16.243389, 21.045551, 18.368547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900297, 20.604185, 18.751106>,  <16.147757, 20.478382, 18.767511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.900297, 20.604185, 18.751106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.725170, 20.949020, 18.649031>,  <16.620094, 21.155922, 18.587786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.725170, 20.949020, 18.649031>,  <16.900297, 20.604185, 18.751106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725170, 20.949020, 18.649031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421884, 0.447643, 0.788435,
		0.793932, 0.237533, -0.559687,
		-0.437820, 0.862087, -0.255187,
		16.593824, 21.207647, 18.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.390846, 21.191832, 18.826416>,  <16.900297, 20.604185, 18.751106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.390846, 21.191832, 18.826416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.020508, 21.339840, 18.857130>,  <16.798306, 21.428646, 18.875559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.020508, 21.339840, 18.857130>,  <17.390846, 21.191832, 18.826416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020508, 21.339840, 18.857130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334590, 0.708169, 0.621728,
		0.175677, 0.601315, -0.779460,
		-0.925844, 0.370023, 0.076785,
		16.742754, 21.450848, 18.880165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487095, 21.819784, 18.940727>,  <17.390846, 21.191832, 18.826416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487095, 21.819784, 18.940727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.097805, 21.835037, 19.031391>,  <16.864231, 21.844189, 19.085791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.097805, 21.835037, 19.031391>,  <17.487095, 21.819784, 18.940727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097805, 21.835037, 19.031391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188962, 0.694157, 0.694579,
		-0.130853, 0.718813, -0.682777,
		-0.973227, 0.038131, 0.226661,
		16.805838, 21.846478, 19.099390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304243, 22.525459, 19.008631>,  <17.487095, 21.819784, 18.940727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304243, 22.525459, 19.008631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.054173, 22.284813, 19.207514>,  <16.904131, 22.140425, 19.326843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.054173, 22.284813, 19.207514>,  <17.304243, 22.525459, 19.008631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054173, 22.284813, 19.207514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204386, 0.488623, 0.848218,
		-0.753248, 0.631907, -0.182513,
		-0.625175, -0.601615, 0.497207,
		16.866619, 22.104328, 19.356676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916267, 22.921787, 19.505547>,  <17.304243, 22.525459, 19.008631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916267, 22.921787, 19.505547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.883434, 22.547359, 19.642391>,  <16.863735, 22.322702, 19.724499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.883434, 22.547359, 19.642391>,  <16.916267, 22.921787, 19.505547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883434, 22.547359, 19.642391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340488, 0.296278, 0.892349,
		-0.936659, 0.189730, 0.294401,
		-0.082081, -0.936067, 0.342112,
		16.858810, 22.266539, 19.745026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634212, 23.007107, 20.168350>,  <16.916267, 22.921787, 19.505547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634212, 23.007107, 20.168350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.777435, 22.634029, 20.185671>,  <16.863369, 22.410183, 20.196064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.777435, 22.634029, 20.185671>,  <16.634212, 23.007107, 20.168350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777435, 22.634029, 20.185671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308013, 0.161771, 0.937527,
		-0.881432, -0.322351, 0.345206,
		0.358057, -0.932695, 0.043302,
		16.884853, 22.354221, 20.198662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513935, 22.802938, 20.856194>,  <16.634212, 23.007107, 20.168350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513935, 22.802938, 20.856194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.789318, 22.546089, 20.721313>,  <16.954548, 22.391979, 20.640385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.789318, 22.546089, 20.721313>,  <16.513935, 22.802938, 20.856194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789318, 22.546089, 20.721313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476571, 0.050043, 0.877710,
		-0.546722, -0.764968, 0.340470,
		0.688458, -0.642122, -0.337202,
		16.995855, 22.353453, 20.620153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663168, 22.409510, 21.410864>,  <16.513935, 22.802938, 20.856194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663168, 22.409510, 21.410864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.959957, 22.304127, 21.164267>,  <17.138031, 22.240896, 21.016308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.959957, 22.304127, 21.164267>,  <16.663168, 22.409510, 21.410864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959957, 22.304127, 21.164267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636584, -0.011624, 0.771120,
		-0.210323, -0.964601, 0.159088,
		0.741973, -0.263457, -0.616494,
		17.182549, 22.225090, 20.979319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907671, 21.845667, 21.666855>,  <16.663168, 22.409510, 21.410864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907671, 21.845667, 21.666855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.221802, 21.996880, 21.470751>,  <17.410280, 22.087606, 21.353088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.221802, 21.996880, 21.470751>,  <16.907671, 21.845667, 21.666855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221802, 21.996880, 21.470751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552631, -0.071128, 0.830385,
		0.279041, -0.923056, -0.264771,
		0.785325, 0.378033, -0.490261,
		17.457399, 22.110289, 21.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527706, 21.424322, 21.889502>,  <16.907671, 21.845667, 21.666855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527706, 21.424322, 21.889502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.673687, 21.767872, 21.745754>,  <17.761274, 21.974001, 21.659506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.673687, 21.767872, 21.745754>,  <17.527706, 21.424322, 21.889502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673687, 21.767872, 21.745754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596044, 0.080986, 0.798857,
		0.715222, -0.505742, -0.482371,
		0.364951, 0.858875, -0.359368,
		17.783173, 22.025534, 21.637943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.315584, 21.362169, 21.796017>,  <17.527706, 21.424322, 21.889502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.315584, 21.362169, 21.796017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.217705, 21.744133, 21.863274>,  <18.158978, 21.973310, 21.903627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.217705, 21.744133, 21.863274>,  <18.315584, 21.362169, 21.796017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217705, 21.744133, 21.863274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582820, 0.006267, 0.812577,
		0.774883, 0.296834, -0.558073,
		-0.244698, 0.954908, 0.168145,
		18.144295, 22.030605, 21.913717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939608, 21.809866, 21.781153>,  <18.315584, 21.362169, 21.796017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939608, 21.809866, 21.781153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.652733, 21.964684, 22.012960>,  <18.480608, 22.057573, 22.152044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.652733, 21.964684, 22.012960>,  <18.939608, 21.809866, 21.781153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652733, 21.964684, 22.012960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660362, 0.111777, 0.742582,
		0.222634, 0.915262, -0.335754,
		-0.717186, 0.387043, 0.579519,
		18.437576, 22.080797, 22.186815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149166, 22.425049, 22.223124>,  <18.939608, 21.809866, 21.781153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149166, 22.425049, 22.223124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.861240, 22.214108, 22.403685>,  <18.688484, 22.087543, 22.512022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.861240, 22.214108, 22.403685>,  <19.149166, 22.425049, 22.223124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861240, 22.214108, 22.403685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562975, -0.063053, 0.824066,
		-0.406110, 0.847304, 0.342272,
		-0.719815, -0.527352, 0.451404,
		18.645296, 22.055902, 22.539106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878445, 22.262514, 22.206594>,  <19.149166, 22.425049, 22.223124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878445, 22.262514, 22.206594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.201481, 22.043308, 22.119438>,  <20.395302, 21.911785, 22.067144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.201481, 22.043308, 22.119438>,  <19.878445, 22.262514, 22.206594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201481, 22.043308, 22.119438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444625, -0.323055, -0.835431,
		0.387439, 0.771566, -0.504557,
		0.807589, -0.548017, -0.217893,
		20.443758, 21.878902, 22.054070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079727, 22.517801, 21.456821>,  <19.878445, 22.262514, 22.206594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079727, 22.517801, 21.456821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.223812, 22.158962, 21.559166>,  <20.310263, 21.943659, 21.620573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.223812, 22.158962, 21.559166>,  <20.079727, 22.517801, 21.456821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223812, 22.158962, 21.559166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420275, -0.400920, -0.814022,
		0.832836, 0.185689, -0.521444,
		0.360212, -0.897097, 0.255861,
		20.331877, 21.889833, 21.635923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605907, 22.365480, 21.011662>,  <20.079727, 22.517801, 21.456821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605907, 22.365480, 21.011662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.482880, 22.004650, 21.132765>,  <20.409063, 21.788153, 21.205427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.482880, 22.004650, 21.132765>,  <20.605907, 22.365480, 21.011662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482880, 22.004650, 21.132765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187281, -0.254567, -0.948747,
		0.932913, -0.348507, -0.090644,
		-0.307570, -0.902074, 0.302757,
		20.390608, 21.734028, 21.223593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834209, 21.909286, 20.477612>,  <20.605907, 22.365480, 21.011662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834209, 21.909286, 20.477612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.552876, 21.716518, 20.686638>,  <20.384075, 21.600857, 20.812054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.552876, 21.716518, 20.686638>,  <20.834209, 21.909286, 20.477612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552876, 21.716518, 20.686638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300568, -0.464560, -0.832972,
		0.644190, -0.742924, 0.181891,
		-0.703334, -0.481922, 0.522564,
		20.341875, 21.571941, 20.843407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805691, 21.209982, 20.271362>,  <20.834209, 21.909286, 20.477612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805691, 21.209982, 20.271362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.458691, 21.236164, 20.468607>,  <20.250490, 21.251873, 20.586954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.458691, 21.236164, 20.468607>,  <20.805691, 21.209982, 20.271362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458691, 21.236164, 20.468607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462918, -0.469057, -0.752125,
		0.182068, -0.880739, 0.437207,
		-0.867501, 0.065453, 0.493110,
		20.198441, 21.255800, 20.616539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440750, 20.518829, 20.424091>,  <20.805691, 21.209982, 20.271362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440750, 20.518829, 20.424091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.176353, 20.817898, 20.398539>,  <20.017715, 20.997339, 20.383207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.176353, 20.817898, 20.398539>,  <20.440750, 20.518829, 20.424091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176353, 20.817898, 20.398539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445869, -0.459796, -0.767977,
		-0.603567, -0.479141, 0.637284,
		-0.660990, 0.747671, -0.063884,
		19.978056, 21.042198, 20.379374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899294, 20.216761, 20.164085>,  <20.440750, 20.518829, 20.424091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899294, 20.216761, 20.164085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778965, 20.592312, 20.097136>,  <19.706768, 20.817642, 20.056965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778965, 20.592312, 20.097136>,  <19.899294, 20.216761, 20.164085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778965, 20.592312, 20.097136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434605, -0.291181, -0.852251,
		-0.848896, -0.183633, 0.495635,
		-0.300821, 0.938878, -0.167375,
		19.688719, 20.873976, 20.046923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184750, 20.152405, 20.068819>,  <19.899294, 20.216761, 20.164085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184750, 20.152405, 20.068819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.303085, 20.495483, 19.900610>,  <19.374086, 20.701330, 19.799685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.303085, 20.495483, 19.900610>,  <19.184750, 20.152405, 20.068819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303085, 20.495483, 19.900610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465038, -0.255222, -0.847704,
		-0.834397, 0.446342, 0.323357,
		0.295838, 0.857695, -0.420523,
		19.391836, 20.752792, 19.774454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.561377, 20.411587, 19.748064>,  <19.184750, 20.152405, 20.068819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.561377, 20.411587, 19.748064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.884701, 20.583321, 19.586912>,  <19.078695, 20.686361, 19.490221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.884701, 20.583321, 19.586912>,  <18.561377, 20.411587, 19.748064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884701, 20.583321, 19.586912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318504, -0.256640, -0.912519,
		-0.495170, 0.865915, -0.070700,
		0.808308, 0.429334, -0.402877,
		19.127193, 20.712120, 19.466049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390318, 20.537870, 19.090471>,  <18.561377, 20.411587, 19.748064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390318, 20.537870, 19.090471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.774712, 20.630085, 19.029333>,  <19.005348, 20.685413, 18.992649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.774712, 20.630085, 19.029333>,  <18.390318, 20.537870, 19.090471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774712, 20.630085, 19.029333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092952, -0.251300, -0.963436,
		-0.260517, 0.940054, -0.220067,
		0.960984, 0.230536, -0.152848,
		19.063007, 20.699245, 18.983479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404331, 20.936058, 18.542425>,  <18.390318, 20.537870, 19.090471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404331, 20.936058, 18.542425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.776409, 20.791389, 18.567511>,  <18.999655, 20.704588, 18.582561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.776409, 20.791389, 18.567511>,  <18.404331, 20.936058, 18.542425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.776409, 20.791389, 18.567511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021646, -0.116510, -0.992954,
		0.366431, 0.924996, -0.100548,
		0.930193, -0.361673, 0.062716,
		19.055468, 20.682888, 18.586325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884525, 21.269724, 18.028339>,  <18.404331, 20.936058, 18.542425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884525, 21.269724, 18.028339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.057312, 20.916355, 18.100971>,  <19.160984, 20.704334, 18.144550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.057312, 20.916355, 18.100971>,  <18.884525, 21.269724, 18.028339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057312, 20.916355, 18.100971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061533, -0.171994, -0.983174,
		0.899788, 0.435873, -0.019936,
		0.431968, -0.883421, 0.181579,
		19.186903, 20.651329, 18.155445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339481, 21.212542, 17.498960>,  <18.884525, 21.269724, 18.028339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339481, 21.212542, 17.498960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.323853, 20.837627, 17.637505>,  <19.314476, 20.612679, 17.720631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.323853, 20.837627, 17.637505>,  <19.339481, 21.212542, 17.498960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323853, 20.837627, 17.637505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136556, -0.348381, -0.927353,
		0.989862, 0.011066, 0.141604,
		-0.039070, -0.937288, 0.346360,
		19.312132, 20.556440, 17.741413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859091, 20.856197, 17.153694>,  <19.339481, 21.212542, 17.498960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859091, 20.856197, 17.153694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.619873, 20.562943, 17.283220>,  <19.476343, 20.386990, 17.360935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.619873, 20.562943, 17.283220>,  <19.859091, 20.856197, 17.153694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.619873, 20.562943, 17.283220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131483, -0.308808, -0.941993,
		0.790605, -0.605928, 0.088286,
		-0.598043, -0.733136, 0.323814,
		19.440460, 20.343002, 17.380365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543392, 20.907381, 16.881857>,  <19.859091, 20.856197, 17.153694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543392, 20.907381, 16.881857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.687084, 21.192326, 16.640694>,  <20.773300, 21.363293, 16.495996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.687084, 21.192326, 16.640694>,  <20.543392, 20.907381, 16.881857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687084, 21.192326, 16.640694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642809, 0.279479, 0.713223,
		0.676572, -0.643765, -0.357514,
		0.359231, 0.712361, -0.602906,
		20.794853, 21.406034, 16.459822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227531, 20.847448, 16.909050>,  <20.543392, 20.907381, 16.881857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227531, 20.847448, 16.909050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.160492, 21.226250, 16.799438>,  <21.120268, 21.453531, 16.733671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.160492, 21.226250, 16.799438>,  <21.227531, 20.847448, 16.909050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160492, 21.226250, 16.799438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589293, 0.319069, 0.742245,
		0.790344, -0.037083, -0.611540,
		-0.167599, 0.947006, -0.274027,
		21.110212, 21.510351, 16.717230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878675, 21.299343, 16.939093>,  <21.227531, 20.847448, 16.909050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878675, 21.299343, 16.939093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.589821, 21.576035, 16.936819>,  <21.416508, 21.742050, 16.935455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.589821, 21.576035, 16.936819>,  <21.878675, 21.299343, 16.939093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589821, 21.576035, 16.936819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429460, 0.454752, 0.780234,
		0.542296, 0.560993, -0.625462,
		-0.722135, 0.691728, -0.005686,
		21.373180, 21.783552, 16.935114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211325, 21.939043, 16.806282>,  <21.878675, 21.299343, 16.939093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211325, 21.939043, 16.806282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.877113, 22.010830, 17.014008>,  <21.676586, 22.053902, 17.138643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.877113, 22.010830, 17.014008>,  <22.211325, 21.939043, 16.806282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877113, 22.010830, 17.014008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469669, 0.723780, 0.505522,
		-0.285143, 0.666283, -0.689029,
		-0.835526, 0.179469, 0.519313,
		21.626455, 22.064671, 17.169802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276144, 22.584957, 16.905014>,  <22.211325, 21.939043, 16.806282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276144, 22.584957, 16.905014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.012211, 22.495659, 17.192007>,  <21.853851, 22.442080, 17.364202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.012211, 22.495659, 17.192007>,  <22.276144, 22.584957, 16.905014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012211, 22.495659, 17.192007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400533, 0.703393, 0.587207,
		-0.635764, 0.674834, -0.374704,
		-0.659832, -0.223244, 0.717485,
		21.814260, 22.428686, 17.407253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.313574, 23.111162, 17.379847>,  <22.276144, 22.584957, 16.905014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.313574, 23.111162, 17.379847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.135273, 22.863766, 17.638699>,  <22.028292, 22.715328, 17.794010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.135273, 22.863766, 17.638699>,  <22.313574, 23.111162, 17.379847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135273, 22.863766, 17.638699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259344, 0.602690, 0.754656,
		-0.856765, 0.504218, -0.108249,
		-0.445752, -0.618489, 0.647130,
		22.001547, 22.678219, 17.832838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077650, 23.549746, 17.894545>,  <22.313574, 23.111162, 17.379847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077650, 23.549746, 17.894545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.083912, 23.183540, 18.055340>,  <22.087669, 22.963818, 18.151817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.083912, 23.183540, 18.055340>,  <22.077650, 23.549746, 17.894545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.083912, 23.183540, 18.055340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347003, 0.382024, 0.856532,
		-0.937733, 0.126081, 0.323666,
		0.015656, -0.915511, 0.401987,
		22.088608, 22.908886, 18.175936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474781, 24.081320, 17.817186>,  <22.077650, 23.549746, 17.894545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474781, 24.081320, 17.817186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.629349, 24.427864, 17.690630>,  <21.722090, 24.635790, 17.614697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.629349, 24.427864, 17.690630>,  <21.474781, 24.081320, 17.817186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629349, 24.427864, 17.690630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032862, -0.355750, -0.934003,
		-0.921737, 0.350521, -0.165939,
		0.386420, 0.866359, -0.316389,
		21.745275, 24.687771, 17.595713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006691, 24.279657, 17.267015>,  <21.474781, 24.081320, 17.817186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006691, 24.279657, 17.267015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.369450, 24.444332, 17.231125>,  <21.587105, 24.543137, 17.209591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.369450, 24.444332, 17.231125>,  <21.006691, 24.279657, 17.267015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369450, 24.444332, 17.231125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042253, -0.300735, -0.952771,
		-0.419227, 0.860275, -0.290131,
		0.906898, 0.411687, -0.089727,
		21.641520, 24.567839, 17.204206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987921, 24.406452, 16.607758>,  <21.006691, 24.279657, 17.267015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987921, 24.406452, 16.607758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.373684, 24.464260, 16.696325>,  <21.605143, 24.498945, 16.749466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.373684, 24.464260, 16.696325>,  <20.987921, 24.406452, 16.607758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373684, 24.464260, 16.696325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257530, -0.323610, -0.910470,
		-0.059929, 0.935088, -0.349312,
		0.964410, 0.144522, 0.221419,
		21.663008, 24.507616, 16.762751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126572, 24.782211, 16.092278>,  <20.987921, 24.406452, 16.607758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126572, 24.782211, 16.092278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.480362, 24.660049, 16.233377>,  <21.692636, 24.586752, 16.318037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.480362, 24.660049, 16.233377>,  <21.126572, 24.782211, 16.092278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480362, 24.660049, 16.233377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266955, -0.288821, -0.919412,
		0.382676, 0.907364, -0.173925,
		0.884474, -0.305406, 0.352750,
		21.745705, 24.568428, 16.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678595, 25.230642, 15.723034>,  <21.126572, 24.782211, 16.092278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678595, 25.230642, 15.723034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.788647, 24.865910, 15.844934>,  <21.854677, 24.647070, 15.918073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.788647, 24.865910, 15.844934>,  <21.678595, 25.230642, 15.723034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788647, 24.865910, 15.844934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051867, -0.302442, -0.951756,
		0.960007, 0.277661, -0.035916,
		0.275128, -0.911830, 0.304748,
		21.871185, 24.592361, 15.936357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.146021, 25.065645, 15.185488>,  <21.678595, 25.230642, 15.723034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.146021, 25.065645, 15.185488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.011127, 24.733696, 15.363290>,  <21.930191, 24.534527, 15.469971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.011127, 24.733696, 15.363290>,  <22.146021, 25.065645, 15.185488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.011127, 24.733696, 15.363290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036912, -0.460144, -0.887077,
		0.940697, -0.315561, 0.124544,
		-0.337235, -0.829873, 0.444504,
		21.909958, 24.484734, 15.496641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.517044, 24.515993, 14.746874>,  <22.146021, 25.065645, 15.185488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.517044, 24.515993, 14.746874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.240337, 24.333008, 14.970368>,  <22.074314, 24.223217, 15.104465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.240337, 24.333008, 14.970368>,  <22.517044, 24.515993, 14.746874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240337, 24.333008, 14.970368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226624, -0.597121, -0.769473,
		0.685640, -0.658917, 0.309394,
		-0.691765, -0.457466, 0.558736,
		22.032808, 24.195768, 15.137989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<17.603727, 25.813526, 21.267153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.619591, 25.418255, 21.326395>,  <17.629108, 25.181093, 21.361940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.619591, 25.418255, 21.326395>,  <17.603727, 25.813526, 21.267153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619591, 25.418255, 21.326395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359742, -0.152403, -0.920521,
		0.932209, -0.016773, -0.361532,
		0.039659, -0.988176, 0.148105,
		17.631489, 25.121801, 21.370827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844364, 25.438395, 20.612432>,  <17.603727, 25.813526, 21.267153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844364, 25.438395, 20.612432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.647141, 25.162975, 20.825148>,  <17.528807, 24.997725, 20.952776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.647141, 25.162975, 20.825148>,  <17.844364, 25.438395, 20.612432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647141, 25.162975, 20.825148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367856, -0.388927, -0.844641,
		0.788402, -0.612077, -0.061524,
		-0.493057, -0.688548, 0.531786,
		17.499224, 24.956411, 20.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.929337, 24.926956, 20.218611>,  <17.844364, 25.438395, 20.612432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.929337, 24.926956, 20.218611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.632542, 24.792191, 20.450455>,  <17.454466, 24.711332, 20.589561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.632542, 24.792191, 20.450455>,  <17.929337, 24.926956, 20.218611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632542, 24.792191, 20.450455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469112, -0.356724, -0.807887,
		0.478949, -0.871342, 0.106634,
		-0.741986, -0.336913, 0.579609,
		17.409946, 24.691116, 20.624338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831303, 24.242970, 19.978477>,  <17.929337, 24.926956, 20.218611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831303, 24.242970, 19.978477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.498318, 24.390438, 20.143929>,  <17.298527, 24.478920, 20.243198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.498318, 24.390438, 20.143929>,  <17.831303, 24.242970, 19.978477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498318, 24.390438, 20.143929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525499, -0.288662, -0.800328,
		-0.175660, -0.883604, 0.434037,
		-0.832463, 0.368671, 0.413627,
		17.248579, 24.501040, 20.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273689, 23.808975, 19.753160>,  <17.831303, 24.242970, 19.978477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273689, 23.808975, 19.753160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.060688, 24.125538, 19.873236>,  <16.932886, 24.315475, 19.945280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.060688, 24.125538, 19.873236>,  <17.273689, 23.808975, 19.753160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060688, 24.125538, 19.873236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499019, -0.007076, -0.866562,
		-0.683680, -0.611247, 0.398695,
		-0.532505, 0.791408, 0.300186,
		16.900936, 24.362961, 19.963291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571030, 23.708092, 19.451403>,  <17.273689, 23.808975, 19.753160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.571030, 23.708092, 19.451403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.609974, 24.098206, 19.530741>,  <16.633341, 24.332273, 19.578344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.609974, 24.098206, 19.530741>,  <16.571030, 23.708092, 19.451403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.609974, 24.098206, 19.530741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359492, 0.220298, -0.906771,
		-0.928055, 0.016979, 0.372055,
		0.097359, 0.975285, 0.198345,
		16.639181, 24.390791, 19.590244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882970, 24.048985, 19.409670>,  <16.571030, 23.708092, 19.451403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882970, 24.048985, 19.409670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.143703, 24.342422, 19.332777>,  <16.300144, 24.518486, 19.286642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.143703, 24.342422, 19.332777>,  <15.882970, 24.048985, 19.409670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143703, 24.342422, 19.332777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446150, 0.165977, -0.879432,
		-0.613240, 0.659008, 0.435483,
		0.651833, 0.733594, -0.192233,
		16.339252, 24.562500, 19.275106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528700, 24.643572, 19.037725>,  <15.882970, 24.048985, 19.409670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528700, 24.643572, 19.037725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.915078, 24.700806, 18.951494>,  <16.146906, 24.735146, 18.899755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.915078, 24.700806, 18.951494>,  <15.528700, 24.643572, 19.037725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915078, 24.700806, 18.951494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244282, 0.229700, -0.942106,
		-0.085284, 0.962686, 0.256832,
		0.965947, 0.143086, -0.215577,
		16.204863, 24.743731, 18.886822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590137, 25.389513, 18.787909>,  <15.528700, 24.643572, 19.037725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590137, 25.389513, 18.787909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.894088, 25.170753, 18.647346>,  <16.076458, 25.039497, 18.563009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.894088, 25.170753, 18.647346>,  <15.590137, 25.389513, 18.787909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894088, 25.170753, 18.647346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142825, 0.386906, -0.910991,
		0.634182, 0.742432, 0.215890,
		0.759878, -0.546900, -0.351407,
		16.122051, 25.006683, 18.541924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742416, 25.766214, 18.242392>,  <15.590137, 25.389513, 18.787909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742416, 25.766214, 18.242392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.938035, 25.423695, 18.175953>,  <16.055407, 25.218184, 18.136089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.938035, 25.423695, 18.175953>,  <15.742416, 25.766214, 18.242392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938035, 25.423695, 18.175953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084667, 0.142923, -0.986106,
		0.868139, 0.496314, -0.002604,
		0.489046, -0.856297, -0.166099,
		16.084749, 25.166805, 18.126123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122444, 25.848448, 17.665003>,  <15.742416, 25.766214, 18.242392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122444, 25.848448, 17.665003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.116955, 25.448486, 17.665659>,  <16.113661, 25.208509, 17.666052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.116955, 25.448486, 17.665659>,  <16.122444, 25.848448, 17.665003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116955, 25.448486, 17.665659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209502, 0.001271, -0.977808,
		0.977712, -0.013765, -0.209500,
		-0.013725, -0.999905, 0.001641,
		16.112837, 25.148516, 17.666151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552700, 25.618704, 17.070820>,  <16.122444, 25.848448, 17.665003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552700, 25.618704, 17.070820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.293064, 25.322567, 17.140762>,  <16.137283, 25.144884, 17.182728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.293064, 25.322567, 17.140762>,  <16.552700, 25.618704, 17.070820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293064, 25.322567, 17.140762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269865, 0.009192, -0.962855,
		0.711236, -0.672165, -0.205759,
		-0.649089, -0.740344, 0.174856,
		16.098337, 25.100464, 17.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287352, 25.377508, 16.847965>,  <16.552700, 25.618704, 17.070820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287352, 25.377508, 16.847965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512672, 25.675739, 16.705530>,  <17.647865, 25.854679, 16.620070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512672, 25.675739, 16.705530>,  <17.287352, 25.377508, 16.847965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512672, 25.675739, 16.705530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343604, 0.180551, 0.921595,
		0.751415, -0.641492, -0.154479,
		0.563304, 0.745580, -0.356088,
		17.681664, 25.899414, 16.598703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975218, 25.150009, 17.059031>,  <17.287352, 25.377508, 16.847965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975218, 25.150009, 17.059031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.974598, 25.541904, 16.978922>,  <17.974226, 25.777042, 16.930857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.974598, 25.541904, 16.978922>,  <17.975218, 25.150009, 17.059031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974598, 25.541904, 16.978922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564515, 0.166165, 0.808525,
		0.825421, -0.111805, -0.553334,
		-0.001548, 0.979739, -0.200272,
		17.974134, 25.835827, 16.918840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652678, 25.404932, 17.160604>,  <17.975218, 25.150009, 17.059031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652678, 25.404932, 17.160604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.452374, 25.750259, 17.185654>,  <18.332191, 25.957457, 17.200684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.452374, 25.750259, 17.185654>,  <18.652678, 25.404932, 17.160604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452374, 25.750259, 17.185654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489068, 0.222500, 0.843390,
		0.714179, 0.452964, -0.533640,
		-0.500760, 0.863318, 0.062625,
		18.302145, 26.009254, 17.204441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177359, 25.889889, 17.399199>,  <18.652678, 25.404932, 17.160604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177359, 25.889889, 17.399199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.815590, 26.047085, 17.465628>,  <18.598528, 26.141403, 17.505486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.815590, 26.047085, 17.465628>,  <19.177359, 25.889889, 17.399199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815590, 26.047085, 17.465628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298519, 0.304808, 0.904421,
		0.304808, 0.867554, -0.392990,
		-0.904421, 0.392990, 0.166074,
		18.544264, 26.164982, 17.515450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369942, 26.447304, 17.661110>,  <19.177359, 25.889889, 17.399199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369942, 26.447304, 17.661110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.988995, 26.370766, 17.756092>,  <18.760426, 26.324842, 17.813082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.988995, 26.370766, 17.756092>,  <19.369942, 26.447304, 17.661110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988995, 26.370766, 17.756092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189275, 0.239632, 0.952235,
		-0.239105, 0.951822, -0.192001,
		-0.952367, -0.191343, 0.237454,
		18.703285, 26.313362, 17.827328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144579, 27.067583, 18.144140>,  <19.369942, 26.447304, 17.661110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144579, 27.067583, 18.144140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.904804, 26.753929, 18.208397>,  <18.760939, 26.565737, 18.246952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.904804, 26.753929, 18.208397>,  <19.144579, 27.067583, 18.144140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904804, 26.753929, 18.208397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118955, 0.111197, 0.986653,
		-0.791533, 0.610546, 0.026622,
		-0.599437, -0.784136, 0.160644,
		18.724974, 26.518688, 18.256590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687376, 27.300333, 18.689192>,  <19.144579, 27.067583, 18.144140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687376, 27.300333, 18.689192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.693787, 26.900681, 18.673824>,  <18.697634, 26.660889, 18.664604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.693787, 26.900681, 18.673824>,  <18.687376, 27.300333, 18.689192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693787, 26.900681, 18.673824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091971, -0.036787, 0.995082,
		-0.995633, -0.019482, 0.091302,
		0.016027, -0.999133, -0.038418,
		18.698595, 26.600941, 18.662298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231501, 27.119017, 19.259850>,  <18.687376, 27.300333, 18.689192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231501, 27.119017, 19.259850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.474236, 26.810532, 19.182934>,  <18.619877, 26.625441, 19.136784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.474236, 26.810532, 19.182934>,  <18.231501, 27.119017, 19.259850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474236, 26.810532, 19.182934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156137, -0.121546, 0.980228,
		-0.779338, -0.624864, 0.046656,
		0.606838, -0.771214, -0.192290,
		18.656286, 26.579166, 19.125246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968237, 26.694954, 19.774990>,  <18.231501, 27.119017, 19.259850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968237, 26.694954, 19.774990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.332310, 26.612350, 19.631369>,  <18.550755, 26.562788, 19.545195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.332310, 26.612350, 19.631369>,  <17.968237, 26.694954, 19.774990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332310, 26.612350, 19.631369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345348, -0.100265, 0.933103,
		-0.228694, -0.973294, -0.019942,
		0.910183, -0.206508, -0.359055,
		18.605366, 26.550398, 19.523651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279003, 26.342192, 20.349850>,  <17.968237, 26.694954, 19.774990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279003, 26.342192, 20.349850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.590019, 26.385647, 20.102100>,  <18.776628, 26.411720, 19.953451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.590019, 26.385647, 20.102100>,  <18.279003, 26.342192, 20.349850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590019, 26.385647, 20.102100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620529, 0.026958, 0.783720,
		0.101842, -0.993715, -0.046454,
		0.777542, 0.108642, -0.619375,
		18.823282, 26.418238, 19.916288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755720, 25.906134, 20.588486>,  <18.279003, 26.342192, 20.349850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755720, 25.906134, 20.588486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.944023, 26.187973, 20.376097>,  <19.057005, 26.357077, 20.248663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.944023, 26.187973, 20.376097>,  <18.755720, 25.906134, 20.588486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944023, 26.187973, 20.376097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706912, 0.058856, 0.704848,
		0.527885, -0.707163, -0.470381,
		0.470758, 0.704597, -0.530972,
		19.085251, 26.399351, 20.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440439, 25.690323, 20.586441>,  <18.755720, 25.906134, 20.588486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440439, 25.690323, 20.586441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.463463, 26.077103, 20.487083>,  <19.477278, 26.309170, 20.427469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.463463, 26.077103, 20.487083>,  <19.440439, 25.690323, 20.586441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463463, 26.077103, 20.487083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831816, 0.091134, 0.547520,
		0.552060, -0.238132, -0.799076,
		0.057559, 0.966948, -0.248393,
		19.480730, 26.367188, 20.412565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145452, 25.814495, 20.286169>,  <19.440439, 25.690323, 20.586441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145452, 25.814495, 20.286169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.009827, 26.164219, 20.425091>,  <19.928452, 26.374052, 20.508444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.009827, 26.164219, 20.425091>,  <20.145452, 25.814495, 20.286169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009827, 26.164219, 20.425091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841885, 0.117241, 0.526768,
		0.419840, 0.470999, -0.775819,
		-0.339065, 0.874308, 0.347305,
		19.908108, 26.426512, 20.529282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.639839, 26.383152, 20.051052>,  <20.145452, 25.814495, 20.286169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.639839, 26.383152, 20.051052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.437553, 26.457672, 20.387989>,  <20.316181, 26.502384, 20.590151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.437553, 26.457672, 20.387989>,  <20.639839, 26.383152, 20.051052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437553, 26.457672, 20.387989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855600, 0.233327, 0.462067,
		-0.110458, 0.954385, -0.277397,
		-0.505714, 0.186302, 0.842345,
		20.285839, 26.513563, 20.640692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.804026, 26.857677, 19.496300>,  <20.639839, 26.383152, 20.051052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.804026, 26.857677, 19.496300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.012817, 26.617287, 19.738411>,  <21.138092, 26.473051, 19.883677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.012817, 26.617287, 19.738411>,  <20.804026, 26.857677, 19.496300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012817, 26.617287, 19.738411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382445, -0.469390, -0.795870,
		0.762412, 0.646914, -0.015171,
		0.521981, -0.600979, 0.605277,
		21.169411, 26.436993, 19.919994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561125, 26.897373, 19.336584>,  <20.804026, 26.857677, 19.496300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561125, 26.897373, 19.336584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.488708, 26.535942, 19.491899>,  <21.445259, 26.319082, 19.585089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.488708, 26.535942, 19.491899>,  <21.561125, 26.897373, 19.336584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488708, 26.535942, 19.491899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196139, -0.420054, -0.886050,
		0.963719, -0.084253, 0.253275,
		-0.181041, -0.903580, 0.388289,
		21.434397, 26.264868, 19.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.084696, 26.588545, 19.000597>,  <21.561125, 26.897373, 19.336584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.084696, 26.588545, 19.000597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.874107, 26.280361, 19.144388>,  <21.747755, 26.095451, 19.230663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.874107, 26.280361, 19.144388>,  <22.084696, 26.588545, 19.000597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874107, 26.280361, 19.144388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165080, -0.507407, -0.845746,
		0.834013, -0.385918, 0.394322,
		-0.526471, -0.770458, 0.359476,
		21.716166, 26.049223, 19.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503359, 26.082701, 18.796661>,  <22.084696, 26.588545, 19.000597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503359, 26.082701, 18.796661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.170841, 25.892193, 18.911287>,  <21.971331, 25.777887, 18.980062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.170841, 25.892193, 18.911287>,  <22.503359, 26.082701, 18.796661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.170841, 25.892193, 18.911287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084527, -0.617880, -0.781716,
		0.549370, -0.625613, 0.553896,
		-0.831293, -0.476271, 0.286564,
		21.921453, 25.749311, 18.997257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657429, 25.405214, 18.861185>,  <22.503359, 26.082701, 18.796661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657429, 25.405214, 18.861185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.273727, 25.440281, 18.753744>,  <22.043507, 25.461321, 18.689280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.273727, 25.440281, 18.753744>,  <22.657429, 25.405214, 18.861185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273727, 25.440281, 18.753744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179593, -0.544717, -0.819164,
		-0.218123, -0.834026, 0.506778,
		-0.959254, 0.087665, -0.268601,
		21.985950, 25.466581, 18.673164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468525, 24.765097, 18.463629>,  <22.657429, 25.405214, 18.861185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468525, 24.765097, 18.463629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.159702, 24.998367, 18.362566>,  <21.974409, 25.138330, 18.301928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.159702, 24.998367, 18.362566>,  <22.468525, 24.765097, 18.463629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159702, 24.998367, 18.362566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074962, -0.478318, -0.874982,
		-0.631121, -0.656593, 0.413004,
		-0.772054, 0.583178, -0.252657,
		21.928085, 25.173321, 18.286770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916653, 24.364063, 18.372503>,  <22.468525, 24.765097, 18.463629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916653, 24.364063, 18.372503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.892895, 24.702553, 18.160702>,  <21.878641, 24.905647, 18.033621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.892895, 24.702553, 18.160702>,  <21.916653, 24.364063, 18.372503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892895, 24.702553, 18.160702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069334, -0.532658, -0.843486,
		-0.995824, -0.013384, 0.090308,
		-0.059393, 0.846225, -0.529506,
		21.875076, 24.956421, 18.001850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.580769, 23.668228, 18.484432>,  <21.916653, 24.364063, 18.372503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.580769, 23.668228, 18.484432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.802143, 23.340584, 18.544792>,  <21.934967, 23.143997, 18.581007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.802143, 23.340584, 18.544792>,  <21.580769, 23.668228, 18.484432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802143, 23.340584, 18.544792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144769, 0.273018, 0.951054,
		-0.820215, -0.504501, 0.269679,
		0.553434, -0.819110, 0.150898,
		21.968174, 23.094851, 18.590061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339312, 23.376205, 19.131742>,  <21.580769, 23.668228, 18.484432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339312, 23.376205, 19.131742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.691948, 23.191429, 19.092941>,  <21.903530, 23.080564, 19.069660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.691948, 23.191429, 19.092941>,  <21.339312, 23.376205, 19.131742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691948, 23.191429, 19.092941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084148, -0.048408, 0.995277,
		-0.464453, -0.885589, -0.003804,
		0.881590, -0.461939, -0.097004,
		21.956425, 23.052847, 19.063841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321613, 22.771013, 19.464729>,  <21.339312, 23.376205, 19.131742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321613, 22.771013, 19.464729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.715141, 22.842098, 19.455673>,  <21.951258, 22.884748, 19.450239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.715141, 22.842098, 19.455673>,  <21.321613, 22.771013, 19.464729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715141, 22.842098, 19.455673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040344, -0.096656, 0.994500,
		0.174548, -0.979324, -0.102262,
		0.983821, 0.177714, -0.022639,
		22.010288, 22.895412, 19.448881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622574, 22.319241, 19.909370>,  <21.321613, 22.771013, 19.464729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622574, 22.319241, 19.909370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.886120, 22.619179, 19.885288>,  <22.044249, 22.799143, 19.870840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.886120, 22.619179, 19.885288>,  <21.622574, 22.319241, 19.909370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.886120, 22.619179, 19.885288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009470, 0.088292, 0.996050,
		0.752200, -0.655694, 0.065274,
		0.658867, 0.749846, -0.060204,
		22.083780, 22.844133, 19.867228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.815538, 22.134563, 20.497461>,  <21.622574, 22.319241, 19.909370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.815538, 22.134563, 20.497461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.959450, 22.495720, 20.403355>,  <22.045797, 22.712414, 20.346889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.959450, 22.495720, 20.403355>,  <21.815538, 22.134563, 20.497461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959450, 22.495720, 20.403355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028266, 0.262584, 0.964495,
		0.932610, -0.340354, 0.119994,
		0.359778, 0.902889, -0.235268,
		22.067383, 22.766586, 20.332775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405426, 22.223236, 20.980560>,  <21.815538, 22.134563, 20.497461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405426, 22.223236, 20.980560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.316364, 22.596001, 20.866041>,  <22.262928, 22.819660, 20.797329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.316364, 22.596001, 20.866041>,  <22.405426, 22.223236, 20.980560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.316364, 22.596001, 20.866041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027983, 0.299658, 0.953636,
		0.974496, 0.204320, -0.092798,
		-0.222655, 0.931911, -0.286298,
		22.249567, 22.875574, 20.780151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782738, 22.565426, 21.398119>,  <22.405426, 22.223236, 20.980560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782738, 22.565426, 21.398119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.498371, 22.820484, 21.279453>,  <22.327751, 22.973518, 21.208254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.498371, 22.820484, 21.279453>,  <22.782738, 22.565426, 21.398119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.498371, 22.820484, 21.279453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126685, 0.298821, 0.945863,
		0.691773, 0.710012, -0.131656,
		-0.710915, 0.637644, -0.296664,
		22.285097, 23.011778, 21.190454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971966, 23.108866, 21.734283>,  <22.782738, 22.565426, 21.398119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971966, 23.108866, 21.734283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.588112, 23.163750, 21.636078>,  <22.357800, 23.196680, 21.577154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.588112, 23.163750, 21.636078>,  <22.971966, 23.108866, 21.734283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588112, 23.163750, 21.636078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159346, 0.454078, 0.876597,
		0.231758, 0.880333, -0.413885,
		-0.959634, 0.137208, -0.245514,
		22.300222, 23.204912, 21.562424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839531, 23.738882, 21.743002>,  <22.971966, 23.108866, 21.734283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839531, 23.738882, 21.743002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.469624, 23.591194, 21.779831>,  <22.247679, 23.502583, 21.801929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.469624, 23.591194, 21.779831>,  <22.839531, 23.738882, 21.743002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.469624, 23.591194, 21.779831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128906, 0.531621, 0.837116,
		-0.358027, 0.762271, -0.539221,
		-0.924770, -0.369219, 0.092073,
		22.192192, 23.480429, 21.807453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.264019, 18.798082, 6.701487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.219326, 18.550034, 7.012091>,  <16.192511, 18.401205, 7.198453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.219326, 18.550034, 7.012091>,  <16.264019, 18.798082, 6.701487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219326, 18.550034, 7.012091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341890, 0.709712, 0.615971,
		-0.933074, 0.334305, 0.132714,
		-0.111733, -0.620121, 0.776509,
		16.185806, 18.363997, 7.245043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213781, 19.272429, 7.238678>,  <16.264019, 18.798082, 6.701487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213781, 19.272429, 7.238678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.253452, 18.926262, 7.435133>,  <16.277256, 18.718561, 7.553006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.253452, 18.926262, 7.435133>,  <16.213781, 19.272429, 7.238678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253452, 18.926262, 7.435133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480133, 0.473935, 0.738145,
		-0.871571, 0.162603, 0.462519,
		0.099180, -0.865417, 0.491139,
		16.283207, 18.666637, 7.582475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939020, 19.422699, 7.925636>,  <16.213781, 19.272429, 7.238678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939020, 19.422699, 7.925636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.183609, 19.106205, 7.922941>,  <16.330362, 18.916307, 7.921324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.183609, 19.106205, 7.922941>,  <15.939020, 19.422699, 7.925636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183609, 19.106205, 7.922941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408455, 0.308341, 0.859122,
		-0.677692, -0.528081, 0.511727,
		0.611472, -0.791238, -0.006737,
		16.367050, 18.868834, 7.920920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922521, 19.259527, 8.632835>,  <15.939020, 19.422699, 7.925636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922521, 19.259527, 8.632835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.251953, 19.074909, 8.500962>,  <16.449614, 18.964138, 8.421839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.251953, 19.074909, 8.500962>,  <15.922521, 19.259527, 8.632835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251953, 19.074909, 8.500962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524381, 0.398038, 0.752722,
		-0.216187, -0.792808, 0.569841,
		0.823582, -0.461543, -0.329683,
		16.499027, 18.936447, 8.402058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177111, 18.764347, 9.211092>,  <15.922521, 19.259527, 8.632835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177111, 18.764347, 9.211092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.474934, 18.873070, 8.967205>,  <16.653627, 18.938303, 8.820873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.474934, 18.873070, 8.967205>,  <16.177111, 18.764347, 9.211092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474934, 18.873070, 8.967205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587591, 0.166622, 0.791817,
		0.316815, -0.947817, -0.035652,
		0.744557, 0.271809, -0.609717,
		16.698301, 18.954613, 8.784290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754457, 18.597263, 9.573483>,  <16.177111, 18.764347, 9.211092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754457, 18.597263, 9.573483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.908829, 18.836178, 9.292254>,  <17.001451, 18.979527, 9.123517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.908829, 18.836178, 9.292254>,  <16.754457, 18.597263, 9.573483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908829, 18.836178, 9.292254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781824, 0.192793, 0.592944,
		0.489704, -0.778513, -0.392567,
		0.385930, 0.597285, -0.703071,
		17.024609, 19.015364, 9.081333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451681, 18.348993, 9.508865>,  <16.754457, 18.597263, 9.573483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451681, 18.348993, 9.508865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.420300, 18.724937, 9.375896>,  <17.401470, 18.950504, 9.296113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.420300, 18.724937, 9.375896>,  <17.451681, 18.348993, 9.508865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420300, 18.724937, 9.375896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564489, 0.316729, 0.762257,
		0.821704, -0.127848, -0.555390,
		-0.078455, 0.939861, -0.332426,
		17.396763, 19.006895, 9.276168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063370, 18.587152, 9.565904>,  <17.451681, 18.348993, 9.508865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063370, 18.587152, 9.565904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.878117, 18.941013, 9.544356>,  <17.766964, 19.153330, 9.531428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.878117, 18.941013, 9.544356>,  <18.063370, 18.587152, 9.565904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878117, 18.941013, 9.544356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637211, 0.374606, 0.673522,
		0.616011, 0.277605, -0.737201,
		-0.463134, 0.884650, -0.053868,
		17.739176, 19.206408, 9.528195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535563, 19.056370, 9.489477>,  <18.063370, 18.587152, 9.565904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535563, 19.056370, 9.489477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235073, 19.293915, 9.604711>,  <18.054779, 19.436441, 9.673850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235073, 19.293915, 9.604711>,  <18.535563, 19.056370, 9.489477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235073, 19.293915, 9.604711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564525, 0.351920, 0.746635,
		0.342015, 0.723520, -0.599620,
		-0.751224, 0.593861, 0.288083,
		18.009706, 19.472073, 9.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903261, 19.654663, 9.642260>,  <18.535563, 19.056370, 9.489477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903261, 19.654663, 9.642260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.545944, 19.742001, 9.799410>,  <18.331554, 19.794403, 9.893700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.545944, 19.742001, 9.799410>,  <18.903261, 19.654663, 9.642260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545944, 19.742001, 9.799410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449452, 0.425508, 0.785453,
		0.004327, 0.878219, -0.478239,
		-0.893294, 0.218344, 0.392876,
		18.277956, 19.807505, 9.917273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000982, 20.366213, 9.896852>,  <18.903261, 19.654663, 9.642260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000982, 20.366213, 9.896852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.697037, 20.212688, 10.106726>,  <18.514669, 20.120573, 10.232650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.697037, 20.212688, 10.106726>,  <19.000982, 20.366213, 9.896852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.697037, 20.212688, 10.106726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466977, 0.239231, 0.851294,
		-0.452257, 0.891884, -0.002553,
		-0.759866, -0.383812, 0.524683,
		18.469076, 20.097546, 10.264131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767355, 20.906977, 10.394357>,  <19.000982, 20.366213, 9.896852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767355, 20.906977, 10.394357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.681988, 20.537472, 10.521555>,  <18.630768, 20.315769, 10.597874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.681988, 20.537472, 10.521555>,  <18.767355, 20.906977, 10.394357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681988, 20.537472, 10.521555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514438, 0.170453, 0.840416,
		-0.830546, 0.342947, 0.438839,
		-0.213417, -0.923760, 0.317994,
		18.617962, 20.260344, 10.616953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412434, 21.436953, 10.632854>,  <18.767355, 20.906977, 10.394357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412434, 21.436953, 10.632854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.709312, 21.673424, 10.506585>,  <18.887440, 21.815308, 10.430823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.709312, 21.673424, 10.506585>,  <18.412434, 21.436953, 10.632854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709312, 21.673424, 10.506585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352508, -0.056237, -0.934117,
		-0.569984, 0.804576, 0.166657,
		0.742197, 0.591180, -0.315674,
		18.931971, 21.850779, 10.411883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149370, 21.643921, 10.011284>,  <18.412434, 21.436953, 10.632854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149370, 21.643921, 10.011284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.523205, 21.779888, 9.969330>,  <18.747505, 21.861469, 9.944158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.523205, 21.779888, 9.969330>,  <18.149370, 21.643921, 10.011284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523205, 21.779888, 9.969330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109032, -0.006936, -0.994014,
		-0.338611, 0.940429, 0.030579,
		0.934588, 0.339918, -0.104886,
		18.803581, 21.881865, 9.937864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075306, 22.042284, 9.520397>,  <18.149370, 21.643921, 10.011284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075306, 22.042284, 9.520397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.473186, 22.001728, 9.513591>,  <18.711914, 21.977394, 9.509507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.473186, 22.001728, 9.513591>,  <18.075306, 22.042284, 9.520397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473186, 22.001728, 9.513591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003745, 0.129677, -0.991549,
		0.102742, 0.986359, 0.128611,
		0.994701, -0.101392, -0.017017,
		18.771597, 21.971310, 9.508486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233135, 22.558636, 8.962312>,  <18.075306, 22.042284, 9.520397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233135, 22.558636, 8.962312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.524551, 22.288857, 9.010227>,  <18.699402, 22.126989, 9.038977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.524551, 22.288857, 9.010227>,  <18.233135, 22.558636, 8.962312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.524551, 22.288857, 9.010227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069551, -0.101137, -0.992438,
		0.681462, 0.731364, -0.026774,
		0.728541, -0.674447, 0.119788,
		18.743114, 22.086523, 9.046164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804008, 22.737419, 8.497541>,  <18.233135, 22.558636, 8.962312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804008, 22.737419, 8.497541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.865082, 22.356316, 8.602564>,  <18.901726, 22.127653, 8.665577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.865082, 22.356316, 8.602564>,  <18.804008, 22.737419, 8.497541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865082, 22.356316, 8.602564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169362, -0.236514, -0.956754,
		0.973655, 0.190549, 0.125249,
		0.152685, -0.952760, 0.262555,
		18.910887, 22.070488, 8.681331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293676, 22.487803, 8.061069>,  <18.804008, 22.737419, 8.497541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293676, 22.487803, 8.061069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.113262, 22.155304, 8.191049>,  <19.005013, 21.955805, 8.269036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.113262, 22.155304, 8.191049>,  <19.293676, 22.487803, 8.061069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.113262, 22.155304, 8.191049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099895, -0.408816, -0.907133,
		0.886897, -0.376690, 0.267428,
		-0.451037, -0.831249, 0.324948,
		18.977951, 21.905930, 8.288533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.826653, 22.018887, 8.041774>,  <19.293676, 22.487803, 8.061069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.826653, 22.018887, 8.041774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462265, 21.855335, 8.020039>,  <19.243633, 21.757204, 8.006998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462265, 21.855335, 8.020039>,  <19.826653, 22.018887, 8.041774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.462265, 21.855335, 8.020039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155373, -0.218128, -0.963473,
		0.382092, -0.886136, 0.262237,
		-0.910969, -0.408880, -0.054337,
		19.188974, 21.732672, 8.003737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914036, 21.455675, 7.553389>,  <19.826653, 22.018887, 8.041774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914036, 21.455675, 7.553389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.518070, 21.502663, 7.585057>,  <19.280491, 21.530855, 7.604058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.518070, 21.502663, 7.585057>,  <19.914036, 21.455675, 7.553389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518070, 21.502663, 7.585057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070268, 0.078085, -0.994467,
		-0.123002, -0.990002, -0.069043,
		-0.989916, 0.117470, 0.079170,
		19.221096, 21.537903, 7.608809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.615643, 20.991453, 7.033655>,  <19.914036, 21.455675, 7.553389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.615643, 20.991453, 7.033655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.308739, 21.238361, 7.103275>,  <19.124598, 21.386507, 7.145048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.308739, 21.238361, 7.103275>,  <19.615643, 20.991453, 7.033655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308739, 21.238361, 7.103275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254044, -0.043328, -0.966222,
		-0.588879, -0.785557, 0.190057,
		-0.767257, 0.617270, 0.174051,
		19.078562, 21.423542, 7.155491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108017, 20.657984, 6.854218>,  <19.615643, 20.991453, 7.033655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108017, 20.657984, 6.854218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.983498, 21.038109, 6.854229>,  <18.908787, 21.266184, 6.854235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.983498, 21.038109, 6.854229>,  <19.108017, 20.657984, 6.854218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983498, 21.038109, 6.854229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524146, -0.171673, -0.834146,
		-0.792695, -0.259682, 0.551544,
		-0.311298, 0.950312, 0.000026,
		18.890108, 21.323202, 6.854237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336033, 20.688070, 6.855802>,  <19.108017, 20.657984, 6.854218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336033, 20.688070, 6.855802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.471260, 21.034531, 6.708567>,  <18.552397, 21.242407, 6.620225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.471260, 21.034531, 6.708567>,  <18.336033, 20.688070, 6.855802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.471260, 21.034531, 6.708567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553661, -0.133232, -0.822015,
		-0.761031, 0.481694, 0.434513,
		0.338069, 0.866152, -0.368089,
		18.572681, 21.294376, 6.598140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681484, 21.035049, 6.711172>,  <18.336033, 20.688070, 6.855802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681484, 21.035049, 6.711172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982220, 21.214836, 6.518210>,  <18.162663, 21.322708, 6.402433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982220, 21.214836, 6.518210>,  <17.681484, 21.035049, 6.711172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982220, 21.214836, 6.518210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578726, 0.099286, -0.809456,
		-0.315929, 0.887761, 0.334767,
		0.751841, 0.449468, -0.482403,
		18.207771, 21.349676, 6.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348427, 21.521706, 6.419254>,  <17.681484, 21.035049, 6.711172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348427, 21.521706, 6.419254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.692894, 21.493065, 6.217955>,  <17.899574, 21.475880, 6.097175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.692894, 21.493065, 6.217955>,  <17.348427, 21.521706, 6.419254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692894, 21.493065, 6.217955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506174, -0.029964, -0.861911,
		0.046635, 0.996983, -0.062047,
		0.861170, -0.071602, -0.503249,
		17.951244, 21.471584, 6.066980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558065, 22.168501, 6.083147>,  <17.348427, 21.521706, 6.419254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558065, 22.168501, 6.083147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.742474, 21.897243, 5.854210>,  <17.853119, 21.734489, 5.716847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.742474, 21.897243, 5.854210>,  <17.558065, 22.168501, 6.083147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742474, 21.897243, 5.854210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499797, 0.334515, -0.798939,
		0.733254, 0.654384, -0.184716,
		0.461022, -0.678146, -0.572343,
		17.880781, 21.693800, 5.682507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896303, 22.649754, 6.235004>,  <17.558065, 22.168501, 6.083147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896303, 22.649754, 6.235004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.629395, 22.935612, 6.151073>,  <16.469250, 23.107126, 6.100715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.629395, 22.935612, 6.151073>,  <16.896303, 22.649754, 6.235004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629395, 22.935612, 6.151073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052420, 0.235959, 0.970348,
		0.742966, 0.658486, -0.119987,
		-0.667273, 0.714646, -0.209827,
		16.429213, 23.150005, 6.088125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080870, 23.272463, 6.474291>,  <16.896303, 22.649754, 6.235004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080870, 23.272463, 6.474291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.690800, 23.352108, 6.435529>,  <16.456758, 23.399895, 6.412271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.690800, 23.352108, 6.435529>,  <17.080870, 23.272463, 6.474291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690800, 23.352108, 6.435529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006598, 0.411288, 0.911481,
		0.221345, 0.889492, -0.399763,
		-0.975173, 0.199114, -0.096905,
		16.398247, 23.411842, 6.406457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964895, 24.021456, 6.609263>,  <17.080870, 23.272463, 6.474291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.964895, 24.021456, 6.609263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650654, 23.800667, 6.721090>,  <16.462109, 23.668194, 6.788187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650654, 23.800667, 6.721090>,  <16.964895, 24.021456, 6.609263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650654, 23.800667, 6.721090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055786, 0.386809, 0.920471,
		-0.616213, 0.738719, -0.273086,
		-0.785602, -0.551972, 0.279567,
		16.414974, 23.635075, 6.804960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568691, 24.429361, 7.062980>,  <16.964895, 24.021456, 6.609263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568691, 24.429361, 7.062980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.432877, 24.063797, 7.151954>,  <16.351387, 23.844458, 7.205338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.432877, 24.063797, 7.151954>,  <16.568691, 24.429361, 7.062980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432877, 24.063797, 7.151954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122391, 0.277400, 0.952927,
		-0.932595, 0.296331, -0.206042,
		-0.339538, -0.913913, 0.222434,
		16.331015, 23.789623, 7.218684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950941, 24.552069, 7.400457>,  <16.568691, 24.429361, 7.062980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950941, 24.552069, 7.400457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.119526, 24.200912, 7.491387>,  <16.220676, 23.990219, 7.545945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.119526, 24.200912, 7.491387>,  <15.950941, 24.552069, 7.400457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119526, 24.200912, 7.491387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213807, 0.147415, 0.965689,
		-0.881281, -0.455605, -0.125569,
		0.421462, -0.877891, 0.227325,
		16.245964, 23.937546, 7.559585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422778, 24.085833, 7.585323>,  <15.950941, 24.552069, 7.400457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422778, 24.085833, 7.585323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.769046, 23.978313, 7.754255>,  <15.976807, 23.913803, 7.855615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.769046, 23.978313, 7.754255>,  <15.422778, 24.085833, 7.585323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769046, 23.978313, 7.754255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345916, 0.288660, 0.892759,
		-0.361881, -0.918925, 0.156903,
		0.865670, -0.268797, 0.422331,
		16.028748, 23.897675, 7.880955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229705, 23.835670, 8.314761>,  <15.422778, 24.085833, 7.585323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.229705, 23.835670, 8.314761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624778, 23.885616, 8.352482>,  <15.861821, 23.915583, 8.375114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624778, 23.885616, 8.352482>,  <15.229705, 23.835670, 8.314761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624778, 23.885616, 8.352482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119135, 0.209365, 0.970553,
		0.101440, -0.969833, 0.221661,
		0.987682, 0.124861, 0.094303,
		15.921082, 23.923075, 8.380773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309706, 23.758759, 9.047360>,  <15.229705, 23.835670, 8.314761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309706, 23.758759, 9.047360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.658307, 23.920582, 8.936500>,  <15.867468, 24.017675, 8.869983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.658307, 23.920582, 8.936500>,  <15.309706, 23.758759, 9.047360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658307, 23.920582, 8.936500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195616, 0.231459, 0.952975,
		0.449683, -0.884737, 0.122579,
		0.871504, 0.404558, -0.277152,
		15.919759, 24.041948, 8.853354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841305, 23.533291, 9.458006>,  <15.309706, 23.758759, 9.047360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841305, 23.533291, 9.458006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.989936, 23.871120, 9.303799>,  <16.079115, 24.073818, 9.211274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.989936, 23.871120, 9.303799>,  <15.841305, 23.533291, 9.458006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.989936, 23.871120, 9.303799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349378, 0.257517, 0.900899,
		0.860154, -0.469445, -0.199388,
		0.371577, 0.844574, -0.385518,
		16.101410, 24.124493, 9.188143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472719, 23.609404, 9.784286>,  <15.841305, 23.533291, 9.458006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472719, 23.609404, 9.784286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.358173, 23.962658, 9.635657>,  <16.289446, 24.174610, 9.546480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.358173, 23.962658, 9.635657>,  <16.472719, 23.609404, 9.784286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358173, 23.962658, 9.635657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245350, 0.442475, 0.862566,
		0.926174, 0.155845, -0.343388,
		-0.286367, 0.883136, -0.371572,
		16.272263, 24.227598, 9.524186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035046, 24.016275, 10.056182>,  <16.472719, 23.609404, 9.784286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035046, 24.016275, 10.056182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757038, 24.281395, 9.944720>,  <16.590233, 24.440466, 9.877843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757038, 24.281395, 9.944720>,  <17.035046, 24.016275, 10.056182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757038, 24.281395, 9.944720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305118, 0.622826, 0.720410,
		0.651040, 0.415676, -0.635107,
		-0.695018, 0.662798, -0.278654,
		16.548532, 24.480234, 9.861124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386564, 24.718290, 9.954694>,  <17.035046, 24.016275, 10.056182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386564, 24.718290, 9.954694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.996593, 24.783058, 10.015751>,  <16.762611, 24.821918, 10.052385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.996593, 24.783058, 10.015751>,  <17.386564, 24.718290, 9.954694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996593, 24.783058, 10.015751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221737, 0.649141, 0.727632,
		0.018732, 0.743234, -0.668769,
		-0.974927, 0.161921, 0.152642,
		16.704115, 24.831635, 10.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425081, 25.360846, 10.112989>,  <17.386564, 24.718290, 9.954694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425081, 25.360846, 10.112989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.074310, 25.224136, 10.248158>,  <16.863848, 25.142111, 10.329259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.074310, 25.224136, 10.248158>,  <17.425081, 25.360846, 10.112989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074310, 25.224136, 10.248158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166792, 0.442990, 0.880875,
		-0.450755, 0.828825, -0.331465,
		-0.876927, -0.341773, 0.337921,
		16.811232, 25.121605, 10.349534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078371, 25.981434, 10.421433>,  <17.425081, 25.360846, 10.112989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078371, 25.981434, 10.421433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.880295, 25.680481, 10.595196>,  <16.761450, 25.499910, 10.699453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.880295, 25.680481, 10.595196>,  <17.078371, 25.981434, 10.421433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880295, 25.680481, 10.595196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053900, 0.472448, 0.879709,
		-0.867111, 0.459038, -0.193399,
		-0.495191, -0.752381, 0.434407,
		16.731737, 25.454767, 10.725518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434605, 26.197039, 10.809466>,  <17.078371, 25.981434, 10.421433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434605, 26.197039, 10.809466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.532898, 25.835331, 10.949129>,  <16.591873, 25.618307, 11.032927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.532898, 25.835331, 10.949129>,  <16.434605, 26.197039, 10.809466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532898, 25.835331, 10.949129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048759, 0.348216, 0.936145,
		-0.968110, -0.247067, 0.041477,
		0.245733, -0.904270, 0.349158,
		16.606619, 25.564051, 11.053877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164011, 26.173735, 11.490998>,  <16.434605, 26.197039, 10.809466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164011, 26.173735, 11.490998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.417702, 25.864540, 11.497265>,  <16.569916, 25.679024, 11.501025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.417702, 25.864540, 11.497265>,  <16.164011, 26.173735, 11.490998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417702, 25.864540, 11.497265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117361, 0.116283, 0.986258,
		-0.764187, -0.623673, 0.164469,
		0.634228, -0.772988, 0.015668,
		16.607969, 25.632645, 11.501966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957943, 25.785389, 12.064474>,  <16.164011, 26.173735, 11.490998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957943, 25.785389, 12.064474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.324932, 25.652359, 11.977170>,  <16.545126, 25.572540, 11.924788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.324932, 25.652359, 11.977170>,  <15.957943, 25.785389, 12.064474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324932, 25.652359, 11.977170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247923, 0.048971, 0.967541,
		-0.311091, -0.941805, 0.127382,
		0.917473, -0.332575, -0.218261,
		16.600174, 25.552588, 11.911692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046841, 25.282644, 12.531181>,  <15.957943, 25.785389, 12.064474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046841, 25.282644, 12.531181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.405190, 25.406223, 12.403451>,  <16.620199, 25.480371, 12.326813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.405190, 25.406223, 12.403451>,  <16.046841, 25.282644, 12.531181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405190, 25.406223, 12.403451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296329, 0.120060, 0.947510,
		0.331069, -0.943470, 0.016008,
		0.895869, 0.308947, -0.319326,
		16.673950, 25.498907, 12.307653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566519, 24.950190, 12.848516>,  <16.046841, 25.282644, 12.531181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566519, 24.950190, 12.848516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799446, 25.253395, 12.730993>,  <16.939203, 25.435318, 12.660480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799446, 25.253395, 12.730993>,  <16.566519, 24.950190, 12.848516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799446, 25.253395, 12.730993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407810, 0.040271, 0.912178,
		0.703275, -0.650995, -0.285675,
		0.582319, 0.758013, -0.293804,
		16.974142, 25.480799, 12.642852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208351, 24.866243, 13.219746>,  <16.566519, 24.950190, 12.848516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208351, 24.866243, 13.219746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230305, 25.246181, 13.096601>,  <17.243477, 25.474144, 13.022714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230305, 25.246181, 13.096601>,  <17.208351, 24.866243, 13.219746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230305, 25.246181, 13.096601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273105, 0.282290, 0.919633,
		0.960417, -0.134552, -0.243915,
		0.054884, 0.949846, -0.307864,
		17.246771, 25.531136, 13.004241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849508, 25.070179, 13.384254>,  <17.208351, 24.866243, 13.219746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849508, 25.070179, 13.384254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.634472, 25.406029, 13.353196>,  <17.505451, 25.607538, 13.334561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.634472, 25.406029, 13.353196>,  <17.849508, 25.070179, 13.384254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634472, 25.406029, 13.353196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256697, 0.250675, 0.933418,
		0.803184, 0.481864, -0.350289,
		-0.537589, 0.839624, -0.077645,
		17.473196, 25.657917, 13.329903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258839, 25.677824, 13.516605>,  <17.849508, 25.070179, 13.384254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258839, 25.677824, 13.516605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.893909, 25.833057, 13.568839>,  <17.674952, 25.926197, 13.600180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.893909, 25.833057, 13.568839>,  <18.258839, 25.677824, 13.516605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893909, 25.833057, 13.568839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302064, 0.422575, 0.854510,
		0.276442, 0.819036, -0.502752,
		-0.912325, 0.388086, 0.130584,
		17.620213, 25.949484, 13.608014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374006, 26.300087, 13.970000>,  <18.258839, 25.677824, 13.516605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374006, 26.300087, 13.970000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.991169, 26.188389, 14.000976>,  <17.761467, 26.121370, 14.019561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.991169, 26.188389, 14.000976>,  <18.374006, 26.300087, 13.970000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991169, 26.188389, 14.000976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037493, 0.145653, 0.988625,
		-0.287348, 0.949108, -0.128934,
		-0.957092, -0.279246, 0.077438,
		17.704041, 26.104614, 14.024207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025848, 26.876307, 14.363608>,  <18.374006, 26.300087, 13.970000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.025848, 26.876307, 14.363608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.822510, 26.535385, 14.412862>,  <17.700506, 26.330832, 14.442414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.822510, 26.535385, 14.412862>,  <18.025848, 26.876307, 14.363608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822510, 26.535385, 14.412862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079808, 0.188999, 0.978729,
		-0.857448, 0.487705, -0.164097,
		-0.508345, -0.852305, 0.123134,
		17.670006, 26.279694, 14.449802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444635, 27.022148, 14.774439>,  <18.025848, 26.876307, 14.363608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444635, 27.022148, 14.774439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.469784, 26.623375, 14.793075>,  <17.484873, 26.384111, 14.804256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.469784, 26.623375, 14.793075>,  <17.444635, 27.022148, 14.774439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469784, 26.623375, 14.793075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120865, 0.038732, 0.991913,
		-0.990676, -0.067995, -0.118059,
		0.062872, -0.996934, 0.046589,
		17.488646, 26.324295, 14.807052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038490, 26.918056, 15.467223>,  <17.444635, 27.022148, 14.774439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038490, 26.918056, 15.467223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.226238, 26.572884, 15.392344>,  <17.338886, 26.365780, 15.347417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.226238, 26.572884, 15.392344>,  <17.038490, 26.918056, 15.467223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226238, 26.572884, 15.392344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134083, -0.139889, 0.981047,
		-0.872762, -0.485574, 0.050045,
		0.469370, -0.862930, -0.187197,
		17.367050, 26.314005, 15.336185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640326, 26.428259, 15.815721>,  <17.038490, 26.918056, 15.467223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640326, 26.428259, 15.815721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.020931, 26.317154, 15.762847>,  <17.249294, 26.250490, 15.731123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.020931, 26.317154, 15.762847>,  <16.640326, 26.428259, 15.815721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020931, 26.317154, 15.762847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145912, 0.029255, 0.988865,
		-0.270804, -0.960204, 0.068365,
		0.951512, -0.277764, -0.132183,
		17.306385, 26.233826, 15.723192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742685, 25.810637, 16.240051>,  <16.640326, 26.428259, 15.815721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742685, 25.810637, 16.240051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.101707, 25.975964, 16.178652>,  <17.317122, 26.075161, 16.141811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.101707, 25.975964, 16.178652>,  <16.742685, 25.810637, 16.240051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101707, 25.975964, 16.178652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197159, -0.064849, 0.978224,
		0.394366, -0.908274, -0.139695,
		0.897555, 0.413321, -0.153501,
		17.370974, 26.099960, 16.132601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708424, 25.180779, 16.482508>,  <16.742685, 25.810637, 16.240051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708424, 25.180779, 16.482508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.364849, 25.027744, 16.618662>,  <16.158705, 24.935925, 16.700354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.364849, 25.027744, 16.618662>,  <16.708424, 25.180779, 16.482508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364849, 25.027744, 16.618662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211168, -0.340933, -0.916064,
		0.466519, -0.858717, 0.212049,
		-0.858934, -0.382584, 0.340385,
		16.107168, 24.912970, 16.720778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683084, 24.432804, 16.223017>,  <16.708424, 25.180779, 16.482508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683084, 24.432804, 16.223017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.317127, 24.551697, 16.332287>,  <16.097553, 24.623032, 16.397848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.317127, 24.551697, 16.332287>,  <16.683084, 24.432804, 16.223017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317127, 24.551697, 16.332287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374729, -0.373575, -0.848540,
		-0.150161, -0.878690, 0.453162,
		-0.914893, 0.297231, 0.273174,
		16.042660, 24.640867, 16.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301403, 23.800684, 16.096239>,  <16.683084, 24.432804, 16.223017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301403, 23.800684, 16.096239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.045101, 24.107750, 16.100649>,  <15.891320, 24.291990, 16.103294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.045101, 24.107750, 16.100649>,  <16.301403, 23.800684, 16.096239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045101, 24.107750, 16.100649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452754, -0.366226, -0.812953,
		-0.620040, -0.525895, 0.582225,
		-0.640754, 0.767667, 0.011026,
		15.852875, 24.338051, 16.103956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616298, 23.445667, 15.967391>,  <16.301403, 23.800684, 16.096239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616298, 23.445667, 15.967391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.572257, 23.835331, 15.888511>,  <15.545833, 24.069130, 15.841183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.572257, 23.835331, 15.888511>,  <15.616298, 23.445667, 15.967391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572257, 23.835331, 15.888511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450740, -0.225771, -0.863633,
		-0.885839, -0.006200, 0.463950,
		-0.110101, 0.974161, -0.197202,
		15.539227, 24.127579, 15.829350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905667, 23.691032, 15.922740>,  <15.616298, 23.445667, 15.967391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905667, 23.691032, 15.922740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.111436, 23.958569, 15.708068>,  <15.234897, 24.119089, 15.579265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.111436, 23.958569, 15.708068>,  <14.905667, 23.691032, 15.922740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.111436, 23.958569, 15.708068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555844, -0.216496, -0.802600,
		-0.653000, 0.711184, 0.260400,
		0.514421, 0.668839, -0.536679,
		15.265762, 24.159220, 15.547064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
