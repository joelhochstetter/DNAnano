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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.977081, 53.486523, 50.744175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246552, 53.573402, 50.461620>,  <36.408234, 53.625530, 50.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246552, 53.573402, 50.461620>,  <35.977081, 53.486523, 50.744175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246552, 53.573402, 50.461620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335701, 0.761594, 0.554328,
		0.658377, -0.610574, 0.440157,
		0.673679, 0.217195, -0.706387,
		36.448654, 53.638561, 50.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613567, 53.569736, 51.019680>,  <35.977081, 53.486523, 50.744175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613567, 53.569736, 51.019680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599045, 53.822395, 50.709919>,  <36.590332, 53.973991, 50.524063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599045, 53.822395, 50.709919>,  <36.613567, 53.569736, 51.019680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599045, 53.822395, 50.709919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218014, 0.761256, 0.610705,
		0.975270, -0.146658, -0.165347,
		-0.036306, 0.631650, -0.774403,
		36.588154, 54.011890, 50.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024521, 53.621647, 51.702530>,  <36.613567, 53.569736, 51.019680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024521, 53.621647, 51.702530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975853, 53.232994, 51.783646>,  <36.946651, 52.999802, 51.832314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975853, 53.232994, 51.783646>,  <37.024521, 53.621647, 51.702530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975853, 53.232994, 51.783646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880250, -0.200031, -0.430288,
		0.458647, 0.126151, 0.879619,
		-0.121670, -0.971634, 0.202788,
		36.939350, 52.941505, 51.844482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606106, 53.369602, 51.994434>,  <37.024521, 53.621647, 51.702530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606106, 53.369602, 51.994434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457664, 53.027073, 51.850769>,  <37.368599, 52.821556, 51.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457664, 53.027073, 51.850769>,  <37.606106, 53.369602, 51.994434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457664, 53.027073, 51.850769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909425, -0.256983, -0.326963,
		0.187685, -0.447971, 0.874126,
		-0.371106, -0.856319, -0.359164,
		37.346333, 52.770176, 51.743019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960686, 52.820839, 52.230682>,  <37.606106, 53.369602, 51.994434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960686, 52.820839, 52.230682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839973, 52.795822, 51.850155>,  <37.767544, 52.780811, 51.621838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839973, 52.795822, 51.850155>,  <37.960686, 52.820839, 52.230682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839973, 52.795822, 51.850155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953374, -0.017617, -0.301277,
		0.002083, -0.997887, 0.064943,
		-0.301784, -0.062543, -0.951323,
		37.749439, 52.777058, 51.564758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346771, 52.255161, 51.929302>,  <37.960686, 52.820839, 52.230682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346771, 52.255161, 51.929302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214111, 52.501228, 51.643204>,  <38.134514, 52.648869, 51.471546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214111, 52.501228, 51.643204>,  <38.346771, 52.255161, 51.929302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214111, 52.501228, 51.643204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922656, 0.053389, -0.381911,
		-0.196755, -0.786584, -0.585298,
		-0.331653, 0.615171, -0.715241,
		38.114616, 52.685780, 51.428631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171059, 52.199287, 52.026573>,  <38.346771, 52.255161, 51.929302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171059, 52.199287, 52.026573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529102, 52.031597, 52.087273>,  <39.743927, 51.930981, 52.123692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529102, 52.031597, 52.087273>,  <39.171059, 52.199287, 52.026573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529102, 52.031597, 52.087273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433936, 0.741030, -0.512420,
		0.102370, 0.524522, 0.845220,
		0.895109, -0.419228, 0.151749,
		39.797634, 51.905830, 52.132797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661804, 52.581364, 52.452564>,  <39.171059, 52.199287, 52.026573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661804, 52.581364, 52.452564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883881, 52.348507, 52.214951>,  <40.017124, 52.208794, 52.072384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883881, 52.348507, 52.214951>,  <39.661804, 52.581364, 52.452564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883881, 52.348507, 52.214951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537715, 0.796109, -0.277622,
		0.634532, -0.165289, 0.755016,
		0.555187, -0.582143, -0.594035,
		40.050438, 52.173862, 52.036739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430542, 52.488255, 52.713306>,  <39.661804, 52.581364, 52.452564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430542, 52.488255, 52.713306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392841, 52.435383, 52.318611>,  <40.370220, 52.403660, 52.081795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392841, 52.435383, 52.318611>,  <40.430542, 52.488255, 52.713306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392841, 52.435383, 52.318611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800401, 0.579331, -0.154058,
		0.592009, -0.804304, 0.051192,
		-0.094252, -0.132178, -0.986735,
		40.364567, 52.395729, 52.022591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123825, 52.334370, 52.518528>,  <40.430542, 52.488255, 52.713306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123825, 52.334370, 52.518528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903717, 52.503891, 52.230751>,  <40.771652, 52.605606, 52.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903717, 52.503891, 52.230751>,  <41.123825, 52.334370, 52.518528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903717, 52.503891, 52.230751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704620, 0.697988, -0.127764,
		0.448013, -0.577236, -0.682703,
		-0.550269, 0.423806, -0.719439,
		40.738636, 52.631031, 52.014919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282497, 52.117058, 51.838417>,  <41.123825, 52.334370, 52.518528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282497, 52.117058, 51.838417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138397, 52.490196, 51.840424>,  <41.051937, 52.714077, 51.841625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138397, 52.490196, 51.840424>,  <41.282497, 52.117058, 51.838417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138397, 52.490196, 51.840424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811887, 0.316172, -0.490791,
		-0.459416, -0.172736, -0.871263,
		-0.360246, 0.932844, 0.005013,
		41.030323, 52.770050, 51.841927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430126, 52.386578, 51.152912>,  <41.282497, 52.117058, 51.838417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430126, 52.386578, 51.152912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440414, 52.656151, 51.448250>,  <41.446587, 52.817894, 51.625454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440414, 52.656151, 51.448250>,  <41.430126, 52.386578, 51.152912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440414, 52.656151, 51.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775086, 0.453007, -0.440484,
		-0.631332, 0.583613, -0.510701,
		0.025721, 0.673929, 0.738348,
		41.448132, 52.858330, 51.669754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534321, 53.090988, 50.874386>,  <41.430126, 52.386578, 51.152912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534321, 53.090988, 50.874386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667347, 53.083084, 51.251534>,  <41.747162, 53.078342, 51.477821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667347, 53.083084, 51.251534>,  <41.534321, 53.090988, 50.874386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667347, 53.083084, 51.251534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868739, 0.395490, -0.298128,
		-0.367006, 0.918258, 0.148690,
		0.332564, -0.019758, 0.942874,
		41.767117, 53.077156, 51.534397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938358, 53.626705, 50.950466>,  <41.534321, 53.090988, 50.874386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938358, 53.626705, 50.950466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103596, 53.424702, 51.253601>,  <42.202740, 53.303501, 51.435482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103596, 53.424702, 51.253601>,  <41.938358, 53.626705, 50.950466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103596, 53.424702, 51.253601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871451, 0.460840, -0.167929,
		-0.264437, 0.729790, 0.630460,
		0.413094, -0.505008, 0.757839,
		42.227524, 53.273201, 51.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524887, 54.189198, 51.087429>,  <41.938358, 53.626705, 50.950466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524887, 54.189198, 51.087429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665562, 53.838737, 51.219292>,  <42.749966, 53.628460, 51.298409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665562, 53.838737, 51.219292>,  <42.524887, 54.189198, 51.087429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665562, 53.838737, 51.219292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935899, 0.336703, -0.103563,
		-0.020258, 0.344943, 0.938405,
		0.351687, -0.876154, 0.329652,
		42.771069, 53.575890, 51.318188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137600, 54.371346, 51.542446>,  <42.524887, 54.189198, 51.087429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137600, 54.371346, 51.542446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164360, 53.994984, 51.409645>,  <43.180416, 53.769165, 51.329964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164360, 53.994984, 51.409645>,  <43.137600, 54.371346, 51.542446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164360, 53.994984, 51.409645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986464, 0.112305, -0.119484,
		0.149709, -0.319514, 0.935681,
		0.066904, -0.940903, -0.332002,
		43.184433, 53.712711, 51.310043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814331, 53.881340, 52.058029>,  <43.137600, 54.371346, 51.542446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814331, 53.881340, 52.058029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088524, 53.616051, 52.178192>,  <43.253040, 53.456879, 52.250290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088524, 53.616051, 52.178192>,  <42.814331, 53.881340, 52.058029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088524, 53.616051, 52.178192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667176, 0.406972, -0.623899,
		0.291527, 0.628099, 0.721460,
		0.685485, -0.663224, 0.300409,
		43.294170, 53.417084, 52.268314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461269, 54.128483, 52.408047>,  <42.814331, 53.881340, 52.058029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461269, 54.128483, 52.408047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558598, 53.795067, 52.209652>,  <43.616997, 53.595016, 52.090614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558598, 53.795067, 52.209652>,  <43.461269, 54.128483, 52.408047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558598, 53.795067, 52.209652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615650, 0.527866, -0.585091,
		0.749513, -0.162988, 0.641612,
		0.243323, -0.833542, -0.495986,
		43.631596, 53.545006, 52.060856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197262, 54.188995, 52.398293>,  <43.461269, 54.128483, 52.408047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197262, 54.188995, 52.398293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034725, 53.977135, 52.100471>,  <43.937202, 53.850018, 51.921780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034725, 53.977135, 52.100471>,  <44.197262, 54.188995, 52.398293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034725, 53.977135, 52.100471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573962, 0.486069, -0.659018,
		0.710953, -0.695130, 0.106490,
		-0.406342, -0.529652, -0.744550,
		43.912823, 53.818237, 51.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794960, 53.487370, 52.602749>,  <44.197262, 54.188995, 52.398293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794960, 53.487370, 52.602749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093365, 53.256008, 52.734760>,  <44.272408, 53.117191, 52.813969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093365, 53.256008, 52.734760>,  <43.794960, 53.487370, 52.602749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093365, 53.256008, 52.734760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665078, 0.622000, -0.413264,
		0.033755, 0.527794, 0.848701,
		0.746010, -0.578403, 0.330028,
		44.317169, 53.082489, 52.833767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071503, 53.012913, 52.042435>,  <43.794960, 53.487370, 52.602749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071503, 53.012913, 52.042435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212818, 53.065247, 51.671906>,  <44.297607, 53.096645, 51.449589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212818, 53.065247, 51.671906>,  <44.071503, 53.012913, 52.042435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212818, 53.065247, 51.671906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546514, 0.774780, 0.317864,
		0.759284, -0.618545, 0.202214,
		0.353285, 0.130836, -0.926322,
		44.318802, 53.104496, 51.394009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861485, 53.000000, 51.998280>,  <44.071503, 53.012913, 52.042435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861485, 53.000000, 51.998280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712975, 53.223518, 51.701660>,  <44.623867, 53.357632, 51.523689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712975, 53.223518, 51.701660>,  <44.861485, 53.000000, 51.998280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712975, 53.223518, 51.701660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404834, 0.816150, 0.412321,
		0.835621, -0.147120, -0.529238,
		-0.371277, 0.558798, -0.741551,
		44.601593, 53.391159, 51.479195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465984, 53.410027, 51.673931>,  <44.861485, 53.000000, 51.998280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465984, 53.410027, 51.673931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093327, 53.551163, 51.708672>,  <44.869732, 53.635845, 51.729515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093327, 53.551163, 51.708672>,  <45.465984, 53.410027, 51.673931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093327, 53.551163, 51.708672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306881, 0.636021, 0.708026,
		0.194583, 0.686280, -0.700826,
		-0.931645, 0.352840, 0.086848,
		44.813831, 53.657013, 51.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119614, 53.873741, 51.589542>,  <45.465984, 53.410027, 51.673931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119614, 53.873741, 51.589542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863766, 54.170856, 51.510391>,  <45.710258, 54.349125, 51.462902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863766, 54.170856, 51.510391>,  <46.119614, 53.873741, 51.589542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863766, 54.170856, 51.510391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190235, 0.096456, 0.976989,
		0.744780, 0.662544, 0.079609,
		-0.639620, 0.742786, -0.197878,
		45.671879, 54.393692, 51.451027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071007, 54.124336, 52.258327>,  <46.119614, 53.873741, 51.589542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071007, 54.124336, 52.258327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793865, 54.343525, 52.070847>,  <45.627579, 54.475040, 51.958359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793865, 54.343525, 52.070847>,  <46.071007, 54.124336, 52.258327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793865, 54.343525, 52.070847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171955, 0.505686, 0.845407,
		0.700276, 0.666338, -0.256139,
		-0.692853, 0.547974, -0.468700,
		45.586010, 54.507915, 51.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773064, 54.103401, 52.409489>,  <46.071007, 54.124336, 52.258327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773064, 54.103401, 52.409489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697105, 53.933731, 52.763668>,  <46.651531, 53.831928, 52.976173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697105, 53.933731, 52.763668>,  <46.773064, 54.103401, 52.409489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697105, 53.933731, 52.763668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823263, 0.422599, 0.379010,
		-0.534956, 0.800926, 0.268960,
		-0.189897, -0.424178, 0.885444,
		46.640137, 53.806477, 53.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606670, 54.648876, 52.862179>,  <46.773064, 54.103401, 52.409489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606670, 54.648876, 52.862179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735958, 54.323788, 53.056091>,  <46.813530, 54.128735, 53.172440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735958, 54.323788, 53.056091>,  <46.606670, 54.648876, 52.862179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735958, 54.323788, 53.056091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709763, 0.547022, 0.443851,
		-0.625912, 0.200615, 0.753650,
		0.323220, -0.812724, 0.484777,
		46.832924, 54.079971, 53.201523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740719, 54.848351, 53.556679>,  <46.606670, 54.648876, 52.862179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740719, 54.848351, 53.556679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973282, 54.541382, 53.448586>,  <47.112820, 54.357201, 53.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973282, 54.541382, 53.448586>,  <46.740719, 54.848351, 53.556679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973282, 54.541382, 53.448586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781302, 0.433956, 0.448608,
		-0.227002, -0.471960, 0.851894,
		0.581409, -0.767422, -0.270234,
		47.147705, 54.311153, 53.367516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090000, 54.782032, 54.064270>,  <46.740719, 54.848351, 53.556679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090000, 54.782032, 54.064270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314766, 54.609886, 53.781700>,  <47.449623, 54.506599, 53.612160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314766, 54.609886, 53.781700>,  <47.090000, 54.782032, 54.064270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314766, 54.609886, 53.781700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827102, 0.279416, 0.487677,
		-0.012494, -0.858319, 0.512965,
		0.561913, -0.430368, -0.706426,
		47.483341, 54.480778, 53.569771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614231, 54.349709, 54.416912>,  <47.090000, 54.782032, 54.064270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614231, 54.349709, 54.416912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742180, 54.452759, 54.052208>,  <47.818951, 54.514591, 53.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742180, 54.452759, 54.052208>,  <47.614231, 54.349709, 54.416912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742180, 54.452759, 54.052208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917151, 0.157261, 0.366200,
		0.237729, -0.953360, -0.185982,
		0.319873, 0.257629, -0.911761,
		47.838142, 54.530048, 53.778679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251358, 53.924904, 54.332062>,  <47.614231, 54.349709, 54.416912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251358, 53.924904, 54.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270657, 54.274597, 54.138821>,  <48.282234, 54.484413, 54.022877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270657, 54.274597, 54.138821>,  <48.251358, 53.924904, 54.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.270657, 54.274597, 54.138821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860112, 0.209540, 0.465080,
		0.507818, -0.437961, -0.741830,
		0.048243, 0.874233, -0.483104,
		48.285130, 54.536865, 53.993889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.880997, 54.187031, 54.344059>,  <48.251358, 53.924904, 54.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.880997, 54.187031, 54.344059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.741009, 54.555351, 54.275185>,  <48.657017, 54.776344, 54.233860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.741009, 54.555351, 54.275185>,  <48.880997, 54.187031, 54.344059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.741009, 54.555351, 54.275185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885475, 0.385162, 0.259971,
		0.305702, -0.061486, -0.950140,
		-0.349973, 0.920798, -0.172189,
		48.636017, 54.831593, 54.223530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.352394, 54.560646, 54.080070>,  <48.880997, 54.187031, 54.344059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.352394, 54.560646, 54.080070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.128548, 54.862190, 54.217777>,  <48.994240, 55.043118, 54.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.128548, 54.862190, 54.217777>,  <49.352394, 54.560646, 54.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.128548, 54.862190, 54.217777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822903, 0.456193, 0.338700,
		0.098283, 0.472838, -0.875651,
		-0.559616, 0.753865, 0.344264,
		48.960663, 55.088348, 54.321056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.752960, 55.282551, 53.879498>,  <49.352394, 54.560646, 54.080070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.752960, 55.282551, 53.879498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.513042, 55.313164, 54.198093>,  <49.369091, 55.331532, 54.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.513042, 55.313164, 54.198093>,  <49.752960, 55.282551, 53.879498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.513042, 55.313164, 54.198093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735577, 0.444508, 0.511214,
		-0.314918, 0.892499, -0.322912,
		-0.599795, 0.076536, 0.796485,
		49.333103, 55.336124, 54.437038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.034325, 55.753418, 54.267971>,  <49.752960, 55.282551, 53.879498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.034325, 55.753418, 54.267971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.776119, 55.562992, 54.506863>,  <49.621197, 55.448738, 54.650196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.776119, 55.562992, 54.506863>,  <50.034325, 55.753418, 54.267971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.776119, 55.562992, 54.506863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647872, 0.072772, 0.758265,
		-0.404442, 0.876396, 0.261452,
		-0.645514, -0.476062, 0.597225,
		49.582466, 55.420174, 54.686031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.633293, 56.061073, 54.892078>,  <50.034325, 55.753418, 54.267971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.633293, 56.061073, 54.892078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.623714, 55.693420, 55.049370>,  <49.617966, 55.472828, 55.143745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.623714, 55.693420, 55.049370>,  <49.633293, 56.061073, 54.892078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.623714, 55.693420, 55.049370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466690, 0.337570, 0.817464,
		-0.884097, 0.203091, 0.420864,
		-0.023948, -0.919130, 0.393225,
		49.616531, 55.417683, 55.167336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.113598, 56.510487, 55.237900>,  <49.633293, 56.061073, 54.892078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.113598, 56.510487, 55.237900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.242592, 56.815559, 55.462158>,  <50.319988, 56.998604, 55.596714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.242592, 56.815559, 55.462158>,  <50.113598, 56.510487, 55.237900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.242592, 56.815559, 55.462158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895066, -0.438412, 0.081559,
		0.307998, 0.475514, -0.824029,
		0.322482, 0.762681, 0.560646,
		50.339336, 57.044365, 55.630352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.626080, 56.898445, 54.975903>,  <50.113598, 56.510487, 55.237900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.626080, 56.898445, 54.975903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.658031, 56.905388, 55.374565>,  <50.677200, 56.909554, 55.613762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.658031, 56.905388, 55.374565>,  <50.626080, 56.898445, 54.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.658031, 56.905388, 55.374565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945911, -0.316721, -0.070293,
		0.314441, 0.948360, -0.041717,
		0.079875, 0.017358, 0.996654,
		50.681995, 56.910595, 55.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.283604, 57.223030, 54.969414>,  <50.626080, 56.898445, 54.975903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.283604, 57.223030, 54.969414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.220318, 57.024437, 55.310814>,  <51.182346, 56.905281, 55.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.220318, 57.024437, 55.310814>,  <51.283604, 57.223030, 54.969414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.220318, 57.024437, 55.310814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986306, -0.120220, 0.112903,
		0.046554, 0.859679, 0.508708,
		-0.158218, -0.496486, 0.853504,
		51.172852, 56.875492, 55.566864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.587292, 57.559456, 55.545910>,  <51.283604, 57.223030, 54.969414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.587292, 57.559456, 55.545910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.585636, 57.160877, 55.579552>,  <51.584644, 56.921730, 55.599735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.585636, 57.160877, 55.579552>,  <51.587292, 57.559456, 55.545910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.585636, 57.160877, 55.579552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999079, -0.000528, 0.042899,
		-0.042702, 0.084202, 0.995533,
		-0.004138, -0.996449, 0.084101,
		51.584396, 56.861942, 55.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.915806, 57.925453, 55.610607>,  <51.587292, 57.559456, 55.545910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.915806, 57.925453, 55.610607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.911652, 57.914856, 56.010445>,  <50.909161, 57.908497, 56.250347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.911652, 57.914856, 56.010445>,  <50.915806, 57.925453, 55.610607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.911652, 57.914856, 56.010445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368568, 0.929165, 0.028460,
		-0.929543, 0.368714, 0.000117,
		-0.010385, -0.026498, 0.999595,
		50.908535, 57.906906, 56.310322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.593323, 58.438114, 55.788532>,  <50.915806, 57.925453, 55.610607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.593323, 58.438114, 55.788532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.844810, 58.342834, 56.084633>,  <50.995701, 58.285667, 56.262295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.844810, 58.342834, 56.084633>,  <50.593323, 58.438114, 55.788532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.844810, 58.342834, 56.084633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431700, 0.898684, -0.077469,
		-0.646802, 0.368274, 0.667848,
		0.628715, -0.238203, 0.740255,
		51.033424, 58.271374, 56.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.474476, 58.923588, 56.215649>,  <50.593323, 58.438114, 55.788532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.474476, 58.923588, 56.215649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841366, 58.768570, 56.252541>,  <51.061501, 58.675560, 56.274673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841366, 58.768570, 56.252541>,  <50.474476, 58.923588, 56.215649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.841366, 58.768570, 56.252541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390767, 0.920290, -0.019172,
		-0.077446, 0.053624, 0.995553,
		0.917226, -0.387544, 0.092227,
		51.116535, 58.652306, 56.280209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.808659, 59.147827, 56.784264>,  <50.474476, 58.923588, 56.215649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.808659, 59.147827, 56.784264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.039989, 59.047150, 56.473862>,  <51.178787, 58.986744, 56.287621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.039989, 59.047150, 56.473862>,  <50.808659, 59.147827, 56.784264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.039989, 59.047150, 56.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375761, 0.926490, -0.020467,
		0.724113, -0.279756, 0.630394,
		0.578328, -0.251699, -0.776005,
		51.213490, 58.971642, 56.241058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.566860, 59.314713, 56.949696>,  <50.808659, 59.147827, 56.784264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.566860, 59.314713, 56.949696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.490646, 59.339516, 56.557808>,  <51.444920, 59.354397, 56.322674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.490646, 59.339516, 56.557808>,  <51.566860, 59.314713, 56.949696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.490646, 59.339516, 56.557808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585277, 0.808409, -0.062656,
		0.788129, -0.585346, -0.190323,
		-0.190534, 0.062011, -0.979720,
		51.433487, 59.358120, 56.263893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.983181, 58.719448, 56.824234>,  <51.566860, 59.314713, 56.949696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.983181, 58.719448, 56.824234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.927261, 58.897415, 57.178070>,  <51.893711, 59.004196, 57.390373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.927261, 58.897415, 57.178070>,  <51.983181, 58.719448, 56.824234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.927261, 58.897415, 57.178070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550606, -0.707581, 0.442902,
		0.822976, 0.548978, -0.146058,
		-0.139796, 0.444918, 0.884593,
		51.885323, 59.030891, 57.443447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.600201, 58.898220, 57.119358>,  <51.983181, 58.719448, 56.824234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.600201, 58.898220, 57.119358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.343319, 58.782787, 57.403412>,  <52.189190, 58.713528, 57.573845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.343319, 58.782787, 57.403412>,  <52.600201, 58.898220, 57.119358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.343319, 58.782787, 57.403412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617330, -0.743895, 0.255976,
		0.454395, 0.602776, 0.655886,
		-0.642207, -0.288584, 0.710134,
		52.150658, 58.696213, 57.616451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.112331, 58.407856, 57.531197>,  <52.600201, 58.898220, 57.119358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.112331, 58.407856, 57.531197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.034470, 58.574219, 57.886528>,  <52.987755, 58.674038, 58.099728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.034470, 58.574219, 57.886528>,  <53.112331, 58.407856, 57.531197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.034470, 58.574219, 57.886528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146925, -0.907799, 0.392829,
		0.969806, -0.054053, 0.237813,
		-0.194652, 0.415908, 0.888330,
		52.976074, 58.698990, 58.153027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.545456, 58.194611, 58.020309>,  <53.112331, 58.407856, 57.531197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.545456, 58.194611, 58.020309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.227909, 58.300301, 58.239388>,  <53.037380, 58.363716, 58.370834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.227909, 58.300301, 58.239388>,  <53.545456, 58.194611, 58.020309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.227909, 58.300301, 58.239388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066303, -0.932905, 0.353967,
		0.604472, 0.244688, 0.758117,
		-0.793863, 0.264229, 0.547691,
		52.989750, 58.379570, 58.403694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.667782, 57.882931, 58.638638>,  <53.545456, 58.194611, 58.020309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.667782, 57.882931, 58.638638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.285160, 57.948776, 58.542389>,  <53.055588, 57.988285, 58.484638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.285160, 57.948776, 58.542389>,  <53.667782, 57.882931, 58.638638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.285160, 57.948776, 58.542389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192900, -0.976211, 0.099004,
		-0.218604, 0.141119, 0.965556,
		-0.956558, 0.164613, -0.240625,
		52.998192, 57.998161, 58.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.275940, 57.592243, 58.916470>,  <53.667782, 57.882931, 58.638638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.275940, 57.592243, 58.916470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.079369, 57.813690, 59.185394>,  <53.961426, 57.946556, 59.346748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.079369, 57.813690, 59.185394>,  <54.275940, 57.592243, 58.916470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.079369, 57.813690, 59.185394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524385, 0.804437, -0.279108,
		-0.695353, 0.215389, -0.685632,
		-0.491431, 0.553614, 0.672315,
		53.931938, 57.979774, 59.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.440529, 57.748039, 59.634758>,  <54.275940, 57.592243, 58.916470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.440529, 57.748039, 59.634758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.650726, 57.531296, 59.372383>,  <54.776844, 57.401249, 59.214958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.650726, 57.531296, 59.372383>,  <54.440529, 57.748039, 59.634758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.650726, 57.531296, 59.372383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629926, 0.766012, -0.128137,
		0.571885, -0.345854, 0.743863,
		0.525492, -0.541858, -0.655933,
		54.808372, 57.368740, 59.175602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.101761, 57.808624, 59.893742>,  <54.440529, 57.748039, 59.634758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.101761, 57.808624, 59.893742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.089775, 57.713936, 59.505295>,  <55.082584, 57.657124, 59.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.089775, 57.713936, 59.505295>,  <55.101761, 57.808624, 59.893742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.089775, 57.713936, 59.505295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587197, 0.782061, -0.208759,
		0.808889, -0.576491, 0.115570,
		-0.029965, -0.236725, -0.971115,
		55.080784, 57.642918, 59.213959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.817036, 57.707321, 59.677158>,  <55.101761, 57.808624, 59.893742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.817036, 57.707321, 59.677158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.596741, 57.800648, 59.356598>,  <55.464561, 57.856644, 59.164261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.596741, 57.800648, 59.356598>,  <55.817036, 57.707321, 59.677158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.596741, 57.800648, 59.356598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744780, 0.570819, -0.345642,
		0.376810, -0.787228, -0.488146,
		-0.550742, 0.233321, -0.801402,
		55.431519, 57.870644, 59.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.081490, 57.456154, 58.995502>,  <55.817036, 57.707321, 59.677158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.081490, 57.456154, 58.995502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.922577, 57.823090, 59.005791>,  <55.827229, 58.043251, 59.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.922577, 57.823090, 59.005791>,  <56.081490, 57.456154, 58.995502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.922577, 57.823090, 59.005791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904739, 0.396213, -0.156407,
		-0.153671, -0.038863, -0.987357,
		-0.397282, 0.917336, 0.025725,
		55.803391, 58.098289, 59.013508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.189838, 57.918022, 58.461151>,  <56.081490, 57.456154, 58.995502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.189838, 57.918022, 58.461151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.180969, 58.112625, 58.810509>,  <56.175648, 58.229385, 59.020123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.180969, 58.112625, 58.810509>,  <56.189838, 57.918022, 58.461151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.180969, 58.112625, 58.810509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955059, 0.268596, -0.125368,
		-0.295583, 0.831365, -0.470599,
		-0.022174, 0.486507, 0.873395,
		56.174316, 58.258575, 59.072529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.311668, 58.625526, 58.391132>,  <56.189838, 57.918022, 58.461151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.311668, 58.625526, 58.391132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.425056, 58.529865, 58.762604>,  <56.493088, 58.472469, 58.985489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.425056, 58.529865, 58.762604>,  <56.311668, 58.625526, 58.391132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.425056, 58.529865, 58.762604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915489, 0.355819, -0.187809,
		-0.285527, 0.903436, 0.319809,
		0.283467, -0.239157, 0.928682,
		56.510098, 58.458118, 59.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.731339, 59.206940, 58.633919>,  <56.311668, 58.625526, 58.391132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.731339, 59.206940, 58.633919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.817551, 58.868622, 58.829132>,  <56.869278, 58.665630, 58.946262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.817551, 58.868622, 58.829132>,  <56.731339, 59.206940, 58.633919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.817551, 58.868622, 58.829132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972689, 0.141870, -0.183707,
		0.086141, 0.514302, 0.853272,
		0.215534, -0.845793, 0.488035,
		56.882210, 58.614883, 58.975544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.271297, 59.459164, 58.957649>,  <56.731339, 59.206940, 58.633919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.271297, 59.459164, 58.957649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.304626, 59.060555, 58.957474>,  <57.324623, 58.821388, 58.957367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.304626, 59.060555, 58.957474>,  <57.271297, 59.459164, 58.957649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.304626, 59.060555, 58.957474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993405, 0.083028, 0.079069,
		-0.078758, -0.007026, 0.996869,
		0.083324, -0.996522, -0.000441,
		57.329624, 58.761597, 58.957340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.664089, 60.101837, 59.188957>,  <57.271297, 59.459164, 58.957649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.664089, 60.101837, 59.188957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.893158, 59.880089, 58.947388>,  <58.030598, 59.747040, 58.802444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.893158, 59.880089, 58.947388>,  <57.664089, 60.101837, 59.188957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.893158, 59.880089, 58.947388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797757, -0.207234, -0.566248,
		0.188756, 0.806059, -0.560928,
		0.572673, -0.554367, -0.603923,
		58.064960, 59.713779, 58.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.283779, 60.450043, 59.462269>,  <57.664089, 60.101837, 59.188957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.283779, 60.450043, 59.462269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.023346, 60.183002, 59.606712>,  <57.867085, 60.022778, 59.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.023346, 60.183002, 59.606712>,  <58.283779, 60.450043, 59.462269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.023346, 60.183002, 59.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754825, -0.619378, 0.215895,
		0.079530, 0.413139, 0.907189,
		-0.651087, -0.667599, 0.361106,
		57.828018, 59.982723, 59.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.517200, 60.246784, 60.115398>,  <58.283779, 60.450043, 59.462269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.517200, 60.246784, 60.115398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.337982, 59.933083, 59.943726>,  <58.230450, 59.744862, 59.840721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.337982, 59.933083, 59.943726>,  <58.517200, 60.246784, 60.115398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.337982, 59.933083, 59.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862739, -0.505153, 0.022423,
		-0.234385, -0.360221, 0.902942,
		-0.448046, -0.784258, -0.429177,
		58.203568, 59.697803, 59.814972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.852837, 59.640320, 60.415112>,  <58.517200, 60.246784, 60.115398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.852837, 59.640320, 60.415112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.698853, 59.508102, 60.070427>,  <58.606461, 59.428772, 59.863617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.698853, 59.508102, 60.070427>,  <58.852837, 59.640320, 60.415112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.698853, 59.508102, 60.070427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808422, -0.571208, -0.142042,
		-0.445263, -0.751305, 0.487115,
		-0.384961, -0.330548, -0.861709,
		58.583363, 59.408939, 59.811913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.100178, 58.975391, 60.303509>,  <58.852837, 59.640320, 60.415112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.100178, 58.975391, 60.303509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.971344, 59.018570, 59.927292>,  <58.894043, 59.044476, 59.701561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.971344, 59.018570, 59.927292>,  <59.100178, 58.975391, 60.303509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.971344, 59.018570, 59.927292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621432, -0.725379, -0.296053,
		-0.714203, -0.679834, 0.166552,
		-0.322080, 0.107942, -0.940538,
		58.874722, 59.050953, 59.645130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.236771, 59.432350, 59.637802>,  <59.100178, 58.975391, 60.303509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.236771, 59.432350, 59.637802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.885956, 59.612255, 59.705353>,  <58.675468, 59.720200, 59.745884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.885956, 59.612255, 59.705353>,  <59.236771, 59.432350, 59.637802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.885956, 59.612255, 59.705353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328732, -0.305479, -0.893654,
		-0.350351, -0.839279, 0.415769,
		-0.877034, 0.449769, 0.168872,
		58.622845, 59.747185, 59.756016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.641132, 58.772835, 59.481304>,  <59.236771, 59.432350, 59.637802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.641132, 58.772835, 59.481304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.473717, 58.681004, 59.129822>,  <59.373268, 58.625904, 58.918934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.473717, 58.681004, 59.129822>,  <59.641132, 58.772835, 59.481304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.473717, 58.681004, 59.129822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551837, 0.704151, -0.446819,
		0.721323, -0.671910, -0.168018,
		-0.418532, -0.229582, -0.878705,
		59.348156, 58.612129, 58.866211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.158127, 58.819645, 59.021961>,  <59.641132, 58.772835, 59.481304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.158127, 58.819645, 59.021961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.797554, 58.868603, 58.855858>,  <59.581211, 58.897976, 58.756195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.797554, 58.868603, 58.855858>,  <60.158127, 58.819645, 59.021961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.797554, 58.868603, 58.855858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334594, 0.805638, -0.488871,
		0.274715, -0.579627, -0.767180,
		-0.901432, 0.122394, -0.415260,
		59.527126, 58.905319, 58.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.867207, 58.628078, 59.332428>,  <60.158127, 58.819645, 59.021961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.867207, 58.628078, 59.332428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.007195, 58.491669, 59.681419>,  <61.091187, 58.409824, 59.890816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.007195, 58.491669, 59.681419>,  <60.867207, 58.628078, 59.332428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.007195, 58.491669, 59.681419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932401, 0.216557, -0.289365,
		-0.090261, 0.914771, 0.393761,
		0.349975, -0.341024, 0.872479,
		61.112186, 58.389362, 59.943165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.447430, 58.989201, 59.179657>,  <60.867207, 58.628078, 59.332428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.447430, 58.989201, 59.179657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.485840, 58.744385, 59.493645>,  <61.508888, 58.597496, 59.682037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.485840, 58.744385, 59.493645>,  <61.447430, 58.989201, 59.179657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.485840, 58.744385, 59.493645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969544, -0.120991, -0.212943,
		0.225305, 0.781516, 0.581782,
		0.096028, -0.612041, 0.784974,
		61.514648, 58.560772, 59.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.246948, 58.725876, 58.496731>,  <61.447430, 58.989201, 59.179657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.246948, 58.725876, 58.496731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.106644, 58.462986, 58.229889>,  <61.022461, 58.305252, 58.069786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.106644, 58.462986, 58.229889>,  <61.246948, 58.725876, 58.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.106644, 58.462986, 58.229889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585147, -0.709992, 0.391809,
		-0.731143, -0.252922, 0.633609,
		-0.350760, -0.657223, -0.667102,
		61.001415, 58.265820, 58.029758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.499767, 58.766075, 57.854805>,  <61.246948, 58.725876, 58.496731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.499767, 58.766075, 57.854805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.637146, 58.390923, 57.835129>,  <61.719574, 58.165833, 57.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.637146, 58.390923, 57.835129>,  <61.499767, 58.766075, 57.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.637146, 58.390923, 57.835129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465976, 0.215643, -0.858117,
		0.815420, 0.271798, 0.511093,
		0.343448, -0.937883, -0.049188,
		61.740181, 58.109558, 57.820374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.221973, 58.847542, 57.786118>,  <61.499767, 58.766075, 57.854805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.221973, 58.847542, 57.786118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.072083, 58.508114, 57.636711>,  <61.982147, 58.304459, 57.547066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.072083, 58.508114, 57.636711>,  <62.221973, 58.847542, 57.786118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.072083, 58.508114, 57.636711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361887, 0.237043, -0.901581,
		0.853592, -0.473016, 0.218259,
		-0.374725, -0.848567, -0.373516,
		61.959663, 58.253544, 57.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.702583, 58.211739, 57.507915>,  <62.221973, 58.847542, 57.786118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.702583, 58.211739, 57.507915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.374893, 58.287090, 57.291252>,  <62.178280, 58.332302, 57.161255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.374893, 58.287090, 57.291252>,  <62.702583, 58.211739, 57.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.374893, 58.287090, 57.291252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572879, 0.225668, -0.787962,
		-0.026203, -0.955817, -0.292791,
		-0.819221, 0.188381, -0.541654,
		62.129128, 58.343605, 57.128757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.391171, 58.519257, 57.598721>,  <62.702583, 58.211739, 57.507915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.391171, 58.519257, 57.598721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.529465, 58.193329, 57.412582>,  <63.612442, 57.997772, 57.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.529465, 58.193329, 57.412582>,  <63.391171, 58.519257, 57.598721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.529465, 58.193329, 57.412582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090366, -0.522532, 0.847817,
		-0.933972, -0.251065, -0.254288,
		0.345731, -0.814817, -0.465343,
		63.633183, 57.948883, 57.272980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.596298, 58.244263, 58.327404>,  <63.391171, 58.519257, 57.598721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.596298, 58.244263, 58.327404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.613609, 58.636276, 58.249779>,  <63.623997, 58.871483, 58.203201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.613609, 58.636276, 58.249779>,  <63.596298, 58.244263, 58.327404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.613609, 58.636276, 58.249779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935910, 0.028201, 0.351107,
		0.349570, -0.196822, -0.916003,
		0.043273, 0.980034, -0.194066,
		63.626591, 58.930286, 58.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.713799, 58.574844, 58.950424>,  <63.596298, 58.244263, 58.327404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.713799, 58.574844, 58.950424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.757187, 58.294174, 59.232101>,  <63.783218, 58.125771, 59.401108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.757187, 58.294174, 59.232101>,  <63.713799, 58.574844, 58.950424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.757187, 58.294174, 59.232101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559525, 0.628603, 0.540176,
		-0.821685, 0.335421, 0.460788,
		0.108466, -0.701678, 0.704190,
		63.789726, 58.083672, 59.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.405254, 58.687439, 59.582348>,  <63.713799, 58.574844, 58.950424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.405254, 58.687439, 59.582348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.738609, 58.474396, 59.641411>,  <63.938622, 58.346569, 59.676849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.738609, 58.474396, 59.641411>,  <63.405254, 58.687439, 59.582348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.738609, 58.474396, 59.641411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434461, 0.796432, 0.420641,
		-0.341631, -0.286406, 0.895131,
		0.833385, -0.532604, 0.147654,
		63.988625, 58.314613, 59.685707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.723846, 58.684849, 60.285351>,  <63.405254, 58.687439, 59.582348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.723846, 58.684849, 60.285351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.014694, 58.625237, 60.017296>,  <64.189201, 58.589470, 59.856461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.014694, 58.625237, 60.017296>,  <63.723846, 58.684849, 60.285351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.014694, 58.625237, 60.017296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402149, 0.883601, 0.239844,
		0.556392, -0.443892, 0.702415,
		0.727120, -0.149028, -0.670140,
		64.232834, 58.580528, 59.816254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.098763, 58.020069, 60.500896>,  <63.723846, 58.684849, 60.285351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.098763, 58.020069, 60.500896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.262070, 58.385178, 60.495605>,  <64.360054, 58.604240, 60.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.262070, 58.385178, 60.495605>,  <64.098763, 58.020069, 60.500896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.262070, 58.385178, 60.495605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878145, -0.388737, 0.278827,
		0.249364, -0.125447, -0.960250,
		0.408263, 0.912769, -0.013224,
		64.384552, 58.659008, 60.491638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.811806, 58.040611, 60.153027>,  <64.098763, 58.020069, 60.500896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.811806, 58.040611, 60.153027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.782349, 58.329536, 60.428078>,  <64.764671, 58.502892, 60.593109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.782349, 58.329536, 60.428078>,  <64.811806, 58.040611, 60.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.782349, 58.329536, 60.428078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811256, -0.357634, 0.462559,
		0.580034, 0.591910, -0.559646,
		-0.073645, 0.722316, 0.687631,
		64.760254, 58.546230, 60.634365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.402061, 58.567596, 60.317207>,  <64.811806, 58.040611, 60.153027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.402061, 58.567596, 60.317207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233871, 58.504311, 60.674568>,  <65.132957, 58.466339, 60.888985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233871, 58.504311, 60.674568>,  <65.402061, 58.567596, 60.317207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.233871, 58.504311, 60.674568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906445, -0.116019, 0.406074,
		0.039407, 0.980566, 0.192193,
		-0.420481, -0.158210, 0.893401,
		65.107727, 58.456848, 60.942589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.906860, 58.160435, 59.900501>,  <65.402061, 58.567596, 60.317207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.906860, 58.160435, 59.900501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.178825, 58.450508, 59.943977>,  <66.342003, 58.624554, 59.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.178825, 58.450508, 59.943977>,  <65.906860, 58.160435, 59.900501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.178825, 58.450508, 59.943977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704335, -0.604621, -0.371949,
		-0.204017, 0.329448, -0.921868,
		0.679919, 0.725188, 0.108688,
		66.382797, 58.668064, 59.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.303169, 58.394188, 59.212215>,  <65.906860, 58.160435, 59.900501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.303169, 58.394188, 59.212215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.541473, 58.431641, 59.531288>,  <66.684456, 58.454113, 59.722733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.541473, 58.431641, 59.531288>,  <66.303169, 58.394188, 59.212215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.541473, 58.431641, 59.531288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735214, -0.463367, -0.494723,
		0.323295, 0.881206, -0.344901,
		0.595769, 0.093635, 0.797679,
		66.720207, 58.459732, 59.770592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.905167, 58.689022, 59.024250>,  <66.303169, 58.394188, 59.212215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.905167, 58.689022, 59.024250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.028770, 58.477325, 59.340332>,  <67.102928, 58.350307, 59.529980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.028770, 58.477325, 59.340332>,  <66.905167, 58.689022, 59.024250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.028770, 58.477325, 59.340332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768756, -0.350181, -0.535152,
		0.559938, 0.772838, 0.298649,
		0.309005, -0.529240, 0.790203,
		67.121475, 58.318554, 59.577393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.499603, 58.882195, 59.342495>,  <66.905167, 58.689022, 59.024250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.499603, 58.882195, 59.342495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415825, 58.491089, 59.338387>,  <67.365562, 58.256424, 59.335922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415825, 58.491089, 59.338387>,  <67.499603, 58.882195, 59.342495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.415825, 58.491089, 59.338387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712526, -0.145411, -0.686413,
		0.669659, -0.151079, 0.727139,
		-0.209436, -0.977768, -0.010272,
		67.352997, 58.197758, 59.335304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.232719, 58.533253, 59.538555>,  <67.499603, 58.882195, 59.342495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.232719, 58.533253, 59.538555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.952705, 58.374752, 59.300919>,  <67.784698, 58.279652, 59.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.952705, 58.374752, 59.300919>,  <68.232719, 58.533253, 59.538555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.952705, 58.374752, 59.300919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662089, -0.048432, -0.747858,
		0.267566, -0.916865, 0.296256,
		-0.700033, -0.396249, -0.594088,
		67.742699, 58.255878, 59.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.920937, 58.921432, 59.743088>,  <68.232719, 58.533253, 59.538555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.920937, 58.921432, 59.743088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.158913, 59.190788, 59.918625>,  <69.301697, 59.352402, 60.023949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.158913, 59.190788, 59.918625>,  <68.920937, 58.921432, 59.743088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.158913, 59.190788, 59.918625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048456, -0.575039, 0.816690,
		0.802302, -0.464624, -0.374749,
		0.594948, 0.673391, 0.438841,
		69.337395, 59.392807, 60.050278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.667671, 58.619907, 59.858467>,  <68.920937, 58.921432, 59.743088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.667671, 58.619907, 59.858467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510384, 58.889374, 60.108765>,  <69.416016, 59.051056, 60.258942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510384, 58.889374, 60.108765>,  <69.667671, 58.619907, 59.858467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.510384, 58.889374, 60.108765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064909, -0.658528, 0.749752,
		0.917153, 0.335429, 0.215214,
		-0.393213, 0.673668, 0.625743,
		69.392418, 59.091473, 60.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.114639, 58.682156, 60.481640>,  <69.667671, 58.619907, 59.858467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.114639, 58.682156, 60.481640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.722794, 58.756439, 60.512260>,  <69.487686, 58.801010, 60.530632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.722794, 58.756439, 60.512260>,  <70.114639, 58.682156, 60.481640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.722794, 58.756439, 60.512260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075317, -0.692880, 0.717109,
		0.186212, 0.696728, 0.692745,
		-0.979618, 0.185710, 0.076547,
		69.428909, 58.812153, 60.535225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.690132, 58.798378, 61.032200>,  <70.114639, 58.682156, 60.481640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.690132, 58.798378, 61.032200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549606, 58.892296, 61.394737>,  <69.465294, 58.948647, 61.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549606, 58.892296, 61.394737>,  <69.690132, 58.798378, 61.032200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.549606, 58.892296, 61.394737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189071, -0.930310, 0.314285,
		0.916971, 0.281773, 0.282431,
		-0.351306, 0.234791, 0.906343,
		69.444214, 58.962734, 61.666641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.396805, 58.372410, 61.512730>,  <69.690132, 58.798378, 61.032200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.396805, 58.372410, 61.512730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.493279, 58.085102, 61.773781>,  <69.551163, 57.912716, 61.930412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.493279, 58.085102, 61.773781>,  <69.396805, 58.372410, 61.512730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.493279, 58.085102, 61.773781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903214, -0.079872, -0.421693,
		0.355017, 0.691162, 0.629490,
		0.241180, -0.718272, 0.652623,
		69.565636, 57.869621, 61.969566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.063263, 58.584801, 61.782295>,  <69.396805, 58.372410, 61.512730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.063263, 58.584801, 61.782295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.973236, 58.195103, 61.787849>,  <69.919220, 57.961285, 61.791180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.973236, 58.195103, 61.787849>,  <70.063263, 58.584801, 61.782295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.973236, 58.195103, 61.787849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897262, -0.212803, -0.386828,
		0.379818, -0.074610, 0.922047,
		-0.225076, -0.974242, 0.013882,
		69.905716, 57.902828, 61.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.549896, 58.294277, 62.253281>,  <70.063263, 58.584801, 61.782295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.549896, 58.294277, 62.253281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.436737, 58.070362, 61.941742>,  <70.368843, 57.936012, 61.754818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.436737, 58.070362, 61.941742>,  <70.549896, 58.294277, 62.253281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.436737, 58.070362, 61.941742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935450, 0.018356, -0.352983,
		0.211892, -0.828432, 0.518461,
		-0.282906, -0.559789, -0.778846,
		70.351868, 57.902424, 61.708088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.899094, 57.600349, 62.205441>,  <70.549896, 58.294277, 62.253281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.899094, 57.600349, 62.205441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.790123, 57.774597, 61.862274>,  <70.724739, 57.879147, 61.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.790123, 57.774597, 61.862274>,  <70.899094, 57.600349, 62.205441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.790123, 57.774597, 61.862274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946879, -0.036977, -0.319457,
		-0.170887, -0.899369, -0.402409,
		-0.272430, 0.435624, -0.857913,
		70.708397, 57.905285, 61.604900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.898491, 56.992752, 61.777245>,  <70.899094, 57.600349, 62.205441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.898491, 56.992752, 61.777245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.272659, 57.105820, 61.692299>,  <71.497162, 57.173660, 61.641331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.272659, 57.105820, 61.692299>,  <70.898491, 56.992752, 61.777245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.272659, 57.105820, 61.692299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140263, -0.848068, -0.510987,
		-0.324537, 0.448198, -0.832943,
		0.935416, 0.282665, -0.212363,
		71.553284, 57.190620, 61.628590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.940926, 56.805012, 61.086285>,  <70.898491, 56.992752, 61.777245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.940926, 56.805012, 61.086285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.260368, 56.836258, 61.324989>,  <71.452034, 56.855003, 61.468212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.260368, 56.836258, 61.324989>,  <70.940926, 56.805012, 61.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.260368, 56.836258, 61.324989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282249, -0.924354, -0.256720,
		0.531570, 0.373454, -0.760241,
		0.798604, 0.078113, 0.596766,
		71.499947, 56.859692, 61.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.073227, 56.996010, 60.351986>,  <70.940926, 56.805012, 61.086285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.073227, 56.996010, 60.351986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.890434, 56.972618, 59.996964>,  <70.780762, 56.958584, 59.783951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.890434, 56.972618, 59.996964>,  <71.073227, 56.996010, 60.351986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.890434, 56.972618, 59.996964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079940, 0.991099, -0.106458,
		0.885879, -0.119600, -0.448235,
		-0.456977, -0.058477, -0.887554,
		70.753342, 56.955074, 59.730698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.515656, 57.365345, 59.963554>,  <71.073227, 56.996010, 60.351986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.515656, 57.365345, 59.963554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.144058, 57.355415, 59.815857>,  <70.921097, 57.349457, 59.727238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.144058, 57.355415, 59.815857>,  <71.515656, 57.365345, 59.963554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.144058, 57.355415, 59.815857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094080, 0.949126, -0.300515,
		0.357915, -0.313917, -0.879405,
		-0.929002, -0.024824, -0.369240,
		70.865356, 57.347969, 59.705086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.236824, 57.358837, 60.406353>,  <71.515656, 57.365345, 59.963554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.236824, 57.358837, 60.406353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.116341, 57.734077, 60.337959>,  <72.044052, 57.959221, 60.296925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.116341, 57.734077, 60.337959>,  <72.236824, 57.358837, 60.406353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.116341, 57.734077, 60.337959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037305, 0.190766, 0.980927,
		0.952826, 0.289092, -0.092457,
		-0.301215, 0.938101, -0.170982,
		72.025978, 58.015507, 60.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.759056, 57.980816, 60.496784>,  <72.236824, 57.358837, 60.406353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.759056, 57.980816, 60.496784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.387039, 58.107574, 60.571182>,  <72.163826, 58.183628, 60.615822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.387039, 58.107574, 60.571182>,  <72.759056, 57.980816, 60.496784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.387039, 58.107574, 60.571182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264352, 0.225467, 0.937701,
		0.255214, 0.921273, -0.293466,
		-0.930045, 0.316893, 0.185998,
		72.108025, 58.202641, 60.626980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
