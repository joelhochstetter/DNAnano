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
	<1.299542, 2.043587, 2.960401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571362, 1.757912, 3.027508>,  <1.734453, 1.586506, 3.067772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571362, 1.757912, 3.027508>,  <1.299542, 2.043587, 2.960401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.571362, 1.757912, 3.027508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060324, 0.173510, 0.982983,
		-0.731146, -0.678106, 0.074826,
		0.679549, -0.714190, 0.167767,
		1.775226, 1.543655, 3.077838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018766, 1.757231, 3.627815>,  <1.299542, 2.043587, 2.960401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018766, 1.757231, 3.627815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649960, 1.604034, 3.650448>,  <0.428675, 1.512116, 3.664028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649960, 1.604034, 3.650448>,  <1.018766, 1.757231, 3.627815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.649960, 1.604034, 3.650448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386839, -0.917236, 0.095045,
		0.015499, 0.109522, 0.993864,
		-0.922017, -0.382992, 0.056583,
		0.373354, 1.489137, 3.667423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.090725, 1.050477, 3.492799>,  <1.018766, 1.757231, 3.627815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.090725, 1.050477, 3.492799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.693829, 1.051601, 3.542515>,  <0.455691, 1.052276, 3.572345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.693829, 1.051601, 3.542515>,  <1.090725, 1.050477, 3.492799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.693829, 1.051601, 3.542515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002271, -0.999168, 0.040733,
		0.124303, 0.040699, 0.991409,
		-0.992242, 0.002812, 0.124292,
		0.396156, 1.052445, 3.579803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.925299, 0.376616, 3.707677>,  <1.090725, 1.050477, 3.492799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.925299, 0.376616, 3.707677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.558006, 0.511406, 3.624442>,  <0.337631, 0.592280, 3.574501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.558006, 0.511406, 3.624442>,  <0.925299, 0.376616, 3.707677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.558006, 0.511406, 3.624442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320346, -0.940885, -0.110061,
		-0.232875, -0.034402, 0.971898,
		-0.918231, 0.336975, -0.208088,
		0.282537, 0.612498, 3.562015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.352593, -0.131836, 3.985823>,  <0.925299, 0.376616, 3.707677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.352593, -0.131836, 3.985823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.149654, 0.082451, 3.715828>,  <0.027891, 0.211023, 3.553832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.149654, 0.082451, 3.715828>,  <0.352593, -0.131836, 3.985823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.149654, 0.082451, 3.715828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505736, -0.819306, -0.270129,
		-0.697733, 0.204315, 0.686604,
		-0.507347, 0.535717, -0.674986,
		-0.002550, 0.243166, 3.513332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.323656, -0.347416, 4.086631>,  <0.352593, -0.131836, 3.985823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.323656, -0.347416, 4.086631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.292770, -0.212654, 3.711284>,  <-0.274239, -0.131797, 3.486076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.292770, -0.212654, 3.711284>,  <-0.323656, -0.347416, 4.086631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.292770, -0.212654, 3.711284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657303, -0.690475, -0.301989,
		-0.749661, 0.640109, 0.168135,
		0.077213, 0.336905, -0.938367,
		-0.269607, -0.111583, 3.429774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.978857, -0.367910, 3.843219>,  <-0.323656, -0.347416, 4.086631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.978857, -0.367910, 3.843219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.806728, -0.283215, 3.492223>,  <-0.703451, -0.232397, 3.281625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.806728, -0.283215, 3.492223>,  <-0.978857, -0.367910, 3.843219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.806728, -0.283215, 3.492223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626878, -0.629351, -0.459283,
		-0.649498, 0.747720, -0.138089,
		0.430321, 0.211738, -0.877491,
		-0.677632, -0.219693, 3.228976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.560686, -0.401407, 3.267011>,  <-0.978857, -0.367910, 3.843219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.560686, -0.401407, 3.267011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.194801, -0.436214, 3.109160>,  <-0.975271, -0.457099, 3.014449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.194801, -0.436214, 3.109160>,  <-1.560686, -0.401407, 3.267011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.194801, -0.436214, 3.109160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348657, -0.663659, -0.661812,
		-0.204308, 0.742957, -0.637396,
		0.914711, -0.087019, -0.394628,
		-0.920388, -0.462320, 2.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.407315, 3.424864, 2.723706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668846, 3.520906, 2.436691>,  <3.825764, 3.578532, 2.264482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668846, 3.520906, 2.436691>,  <3.407315, 3.424864, 2.723706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.668846, 3.520906, 2.436691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524629, 0.539486, 0.658574,
		0.545217, -0.807038, 0.226777,
		0.653837, 0.240092, -0.717533,
		3.864994, 3.592938, 2.221430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.207368, 3.387033, 3.012915>,  <3.407315, 3.424864, 2.723706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.207368, 3.387033, 3.012915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142876, 3.634912, 2.705674>,  <4.104180, 3.783639, 2.521330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142876, 3.634912, 2.705674>,  <4.207368, 3.387033, 3.012915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.142876, 3.634912, 2.705674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405879, 0.751056, 0.520747,
		0.899593, -0.227795, -0.372615,
		-0.161231, 0.619697, -0.768102,
		4.094506, 3.820821, 2.475244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.859673, 3.743637, 2.959614>,  <4.207368, 3.387033, 3.012915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.859673, 3.743637, 2.959614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.570656, 3.954631, 2.780866>,  <4.397246, 4.081227, 2.673618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.570656, 3.954631, 2.780866>,  <4.859673, 3.743637, 2.959614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.570656, 3.954631, 2.780866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353097, 0.837301, 0.417431,
		0.594353, 0.143823, -0.791239,
		-0.722542, 0.527486, -0.446869,
		4.353893, 4.112876, 2.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.204576, 4.260581, 2.527129>,  <4.859673, 3.743637, 2.959614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.204576, 4.260581, 2.527129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.835968, 4.374320, 2.632920>,  <4.614803, 4.442564, 2.696394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.835968, 4.374320, 2.632920>,  <5.204576, 4.260581, 2.527129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.835968, 4.374320, 2.632920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373078, 0.837268, 0.399745,
		-0.107772, 0.467043, -0.877642,
		-0.921519, 0.284347, 0.264478,
		4.559512, 4.459624, 2.712263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.102593, 4.875262, 2.236302>,  <5.204576, 4.260581, 2.527129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.102593, 4.875262, 2.236302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.851120, 4.855041, 2.546709>,  <4.700236, 4.842908, 2.732953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.851120, 4.855041, 2.546709>,  <5.102593, 4.875262, 2.236302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851120, 4.855041, 2.546709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307068, 0.900661, 0.307441,
		-0.714469, 0.431573, -0.550708,
		-0.628684, -0.050553, 0.776016,
		4.662515, 4.839875, 2.779513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.851054, 5.563367, 2.367525>,  <5.102593, 4.875262, 2.236302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.851054, 5.563367, 2.367525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.779175, 5.355390, 2.701559>,  <4.736047, 5.230603, 2.901980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.779175, 5.355390, 2.701559>,  <4.851054, 5.563367, 2.367525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.779175, 5.355390, 2.701559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243105, 0.799102, 0.549851,
		-0.953210, 0.301820, -0.017196,
		-0.179698, -0.519943, 0.835086,
		4.725266, 5.199407, 2.952085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.297661, 5.863972, 2.639147>,  <4.851054, 5.563367, 2.367525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.297661, 5.863972, 2.639147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521095, 5.681206, 2.916047>,  <4.655156, 5.571546, 3.082187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521095, 5.681206, 2.916047>,  <4.297661, 5.863972, 2.639147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.521095, 5.681206, 2.916047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161296, 0.878497, 0.449696,
		-0.813613, -0.139536, 0.564414,
		0.558585, -0.456916, 0.692250,
		4.688671, 5.544131, 3.123722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.052683, 6.081980, 3.263066>,  <4.297661, 5.863972, 2.639147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.052683, 6.081980, 3.263066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424065, 5.943056, 3.315754>,  <4.646894, 5.859702, 3.347367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424065, 5.943056, 3.315754>,  <4.052683, 6.081980, 3.263066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424065, 5.943056, 3.315754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215912, 0.793160, 0.569454,
		-0.302253, -0.500272, 0.811401,
		0.928453, -0.347310, 0.131720,
		4.702600, 5.838863, 3.355270>
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
