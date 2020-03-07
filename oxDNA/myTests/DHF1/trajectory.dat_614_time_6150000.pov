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
	<5.359304, 4.738044, 0.652739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102196, 4.585758, 0.918641>,  <4.947930, 4.494387, 1.078183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102196, 4.585758, 0.918641>,  <5.359304, 4.738044, 0.652739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.102196, 4.585758, 0.918641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035688, -0.881702, -0.470454,
		0.765226, -0.278671, 0.580321,
		-0.642772, -0.380714, 0.664756,
		4.909364, 4.471544, 1.118068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.688331, 4.085680, 0.839970>,  <5.359304, 4.738044, 0.652739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.688331, 4.085680, 0.839970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296978, 4.062654, 0.919424>,  <5.062166, 4.048840, 0.967096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296978, 4.062654, 0.919424>,  <5.688331, 4.085680, 0.839970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.296978, 4.062654, 0.919424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029563, -0.989547, -0.141148,
		0.204683, -0.132224, 0.969857,
		-0.978382, -0.057563, 0.198635,
		5.003463, 4.045386, 0.979014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.590566, 3.487447, 1.260764>,  <5.688331, 4.085680, 0.839970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.590566, 3.487447, 1.260764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.227184, 3.580179, 1.121644>,  <5.009155, 3.635818, 1.038172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.227184, 3.580179, 1.121644>,  <5.590566, 3.487447, 1.260764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.227184, 3.580179, 1.121644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263958, -0.963373, 0.047312,
		-0.324093, 0.134786, 0.936374,
		-0.908454, 0.231830, -0.347800,
		4.954648, 3.649728, 1.017304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.086315, 3.389522, 1.837555>,  <5.590566, 3.487447, 1.260764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.086315, 3.389522, 1.837555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.005169, 3.301121, 1.455978>,  <4.956481, 3.248080, 1.227032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.005169, 3.301121, 1.455978>,  <5.086315, 3.389522, 1.837555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.005169, 3.301121, 1.455978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136101, -0.958378, 0.250974,
		-0.969702, 0.180746, 0.164342,
		-0.202864, -0.221003, -0.953941,
		4.944310, 3.234820, 1.169796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.487067, 3.014052, 1.810296>,  <5.086315, 3.389522, 1.837555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.487067, 3.014052, 1.810296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.648144, 2.922371, 1.455827>,  <4.744790, 2.867362, 1.243145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.648144, 2.922371, 1.455827>,  <4.487067, 3.014052, 1.810296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.648144, 2.922371, 1.455827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157028, -0.971087, 0.179810,
		-0.901765, 0.066746, -0.427042,
		0.402694, -0.229204, -0.886174,
		4.768952, 2.853610, 1.189975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.931119, 2.550781, 1.530729>,  <4.487067, 3.014052, 1.810296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.931119, 2.550781, 1.530729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253689, 2.473993, 1.307006>,  <4.447231, 2.427921, 1.172772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253689, 2.473993, 1.307006>,  <3.931119, 2.550781, 1.530729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.253689, 2.473993, 1.307006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176498, -0.980865, 0.082178,
		-0.564382, 0.032446, -0.824876,
		0.806425, -0.191968, -0.559309,
		4.495616, 2.416403, 1.139213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.707217, 2.199482, 0.946623>,  <3.931119, 2.550781, 1.530729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.707217, 2.199482, 0.946623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089413, 2.092058, 0.995477>,  <4.318730, 2.027604, 1.024789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089413, 2.092058, 0.995477>,  <3.707217, 2.199482, 0.946623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089413, 2.092058, 0.995477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291006, -0.926029, 0.240386,
		0.048542, -0.265228, -0.962963,
		0.955489, -0.268559, 0.122134,
		4.376060, 2.011490, 1.032117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.789912, 1.514252, 0.603574>,  <3.707217, 2.199482, 0.946623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.789912, 1.514252, 0.603574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088238, 1.553812, 0.867083>,  <4.267233, 1.577548, 1.025188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088238, 1.553812, 0.867083>,  <3.789912, 1.514252, 0.603574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.088238, 1.553812, 0.867083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280364, -0.850466, 0.445089,
		0.604282, -0.516650, -0.606561,
		0.745815, 0.098901, 0.658771,
		4.311982, 1.583482, 1.064714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.884081, 0.824853, 2.303691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.234306, 0.718097, 2.142614>,  <4.444441, 0.654043, 2.045968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.234306, 0.718097, 2.142614>,  <3.884081, 0.824853, 2.303691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.234306, 0.718097, 2.142614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048854, 0.780362, -0.623416,
		0.480629, 0.565513, 0.670217,
		0.875562, -0.266889, -0.402692,
		4.496975, 0.638030, 2.021807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.389354, 1.461925, 2.268778>,  <3.884081, 0.824853, 2.303691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.389354, 1.461925, 2.268778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.500793, 1.188096, 1.999336>,  <4.567657, 1.023799, 1.837671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.500793, 1.188096, 1.999336>,  <4.389354, 1.461925, 2.268778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.500793, 1.188096, 1.999336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306765, 0.728064, -0.613040,
		0.910097, -0.035845, 0.412841,
		0.278600, -0.684572, -0.673605,
		4.584373, 0.982725, 1.797255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.044075, 1.417777, 2.050139>,  <4.389354, 1.461925, 2.268778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.044075, 1.417777, 2.050139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849358, 1.279548, 1.729237>,  <4.732527, 1.196611, 1.536695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849358, 1.279548, 1.729237>,  <5.044075, 1.417777, 2.050139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.849358, 1.279548, 1.729237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375641, 0.746346, -0.549420,
		0.788623, -0.568814, -0.233506,
		-0.486794, -0.345571, -0.802255,
		4.703320, 1.175877, 1.488560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.489544, 1.635729, 1.475475>,  <5.044075, 1.417777, 2.050139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.489544, 1.635729, 1.475475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.117432, 1.577806, 1.340652>,  <4.894164, 1.543051, 1.259759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.117432, 1.577806, 1.340652>,  <5.489544, 1.635729, 1.475475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.117432, 1.577806, 1.340652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070750, 0.830722, -0.552174,
		0.359960, -0.537523, -0.762560,
		-0.930281, -0.144809, -0.337056,
		4.838347, 1.534363, 1.239535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.583620, 1.712103, 0.759946>,  <5.489544, 1.635729, 1.475475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.583620, 1.712103, 0.759946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.209129, 1.815888, 0.854740>,  <4.984435, 1.878159, 0.911617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.209129, 1.815888, 0.854740>,  <5.583620, 1.712103, 0.759946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209129, 1.815888, 0.854740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146550, 0.901249, -0.407767,
		-0.319384, -0.347032, -0.881795,
		-0.936225, 0.259461, 0.236986,
		4.928262, 1.893726, 0.925836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.539752, 2.154692, 0.310464>,  <5.583620, 1.712103, 0.759946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.539752, 2.154692, 0.310464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.226997, 2.228408, 0.548687>,  <5.039344, 2.272637, 0.691621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.226997, 2.228408, 0.548687>,  <5.539752, 2.154692, 0.310464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.226997, 2.228408, 0.548687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096971, 0.979633, -0.175828,
		-0.615831, -0.079726, -0.783834,
		-0.781888, 0.184289, 0.595558,
		4.992431, 2.283694, 0.727354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.107358, 2.573441, 0.010199>,  <5.539752, 2.154692, 0.310464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.107358, 2.573441, 0.010199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.974251, 2.633662, 0.382565>,  <4.894387, 2.669795, 0.605984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.974251, 2.633662, 0.382565>,  <5.107358, 2.573441, 0.010199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.974251, 2.633662, 0.382565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030722, 0.984918, -0.170269,
		-0.942509, -0.085259, -0.323123,
		-0.332767, 0.150553, 0.930913,
		4.874421, 2.678828, 0.661839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.505376, 2.941777, 0.007427>,  <5.107358, 2.573441, 0.010199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.505376, 2.941777, 0.007427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.690598, 3.033045, 0.350010>,  <4.801730, 3.087806, 0.555560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.690598, 3.033045, 0.350010>,  <4.505376, 2.941777, 0.007427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.690598, 3.033045, 0.350010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187400, 0.969655, -0.157008,
		-0.866293, -0.087798, 0.491760,
		0.463053, 0.228171, 0.856458,
		4.829514, 3.101496, 0.606947>
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
