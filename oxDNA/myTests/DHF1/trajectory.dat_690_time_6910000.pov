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
	<3.358960, 0.583968, 4.016036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454016, 0.195534, 4.025169>,  <3.511049, -0.037527, 4.030650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454016, 0.195534, 4.025169>,  <3.358960, 0.583968, 4.016036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.454016, 0.195534, 4.025169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747316, 0.197795, 0.634347,
		-0.620522, -0.133680, 0.772711,
		0.237638, -0.971085, 0.022835,
		3.525307, -0.095792, 4.032020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.407151, 0.400998, 4.655652>,  <3.358960, 0.583968, 4.016036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.407151, 0.400998, 4.655652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.645876, 0.181414, 4.421572>,  <3.789111, 0.049663, 4.281124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.645876, 0.181414, 4.421572>,  <3.407151, 0.400998, 4.655652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.645876, 0.181414, 4.421572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800011, 0.351094, 0.486534,
		-0.061628, -0.758535, 0.648711,
		0.596812, -0.548960, -0.585199,
		3.824919, 0.016726, 4.246012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.799531, -0.124525, 4.956711>,  <3.407151, 0.400998, 4.655652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.799531, -0.124525, 4.956711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.011297, -0.021065, 4.633522>,  <4.138357, 0.041012, 4.439609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.011297, -0.021065, 4.633522>,  <3.799531, -0.124525, 4.956711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.011297, -0.021065, 4.633522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786016, 0.208809, 0.581875,
		0.319215, -0.943132, -0.092758,
		0.529416, 0.258653, -0.807971,
		4.170122, 0.056531, 4.391130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.414180, -0.604678, 4.783930>,  <3.799531, -0.124525, 4.956711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.414180, -0.604678, 4.783930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.441223, -0.206390, 4.758720>,  <4.457449, 0.032582, 4.743595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.441223, -0.206390, 4.758720>,  <4.414180, -0.604678, 4.783930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.441223, -0.206390, 4.758720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797717, -0.016009, 0.602819,
		0.599230, -0.091031, -0.795385,
		0.067609, 0.995719, -0.063024,
		4.461506, 0.092325, 4.739813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038526, -0.437414, 4.539708>,  <4.414180, -0.604678, 4.783930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038526, -0.437414, 4.539708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.884232, -0.171780, 4.795895>,  <4.791655, -0.012399, 4.949606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.884232, -0.171780, 4.795895>,  <5.038526, -0.437414, 4.539708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.884232, -0.171780, 4.795895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765087, -0.157707, 0.624316,
		0.515606, 0.730833, -0.447250,
		-0.385737, 0.664087, 0.640466,
		4.768511, 0.027446, 4.988034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.617490, -0.030032, 4.747631>,  <5.038526, -0.437414, 4.539708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.617490, -0.030032, 4.747631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.335085, 0.016706, 5.027029>,  <5.165642, 0.044749, 5.194668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.335085, 0.016706, 5.027029>,  <5.617490, -0.030032, 4.747631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.335085, 0.016706, 5.027029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698957, -0.043864, 0.713817,
		0.114045, 0.992181, -0.050701,
		-0.706012, 0.116845, 0.698494,
		5.123281, 0.051760, 5.236578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.796670, 0.504089, 5.247426>,  <5.617490, -0.030032, 4.747631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.796670, 0.504089, 5.247426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.503841, 0.337564, 5.463114>,  <5.328145, 0.237650, 5.592526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.503841, 0.337564, 5.463114>,  <5.796670, 0.504089, 5.247426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.503841, 0.337564, 5.463114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540382, 0.127086, 0.831767,
		-0.414800, 0.900297, 0.131931,
		-0.732071, -0.416310, 0.539220,
		5.284220, 0.212671, 5.624880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.577859, 0.995838, 5.681622>,  <5.796670, 0.504089, 5.247426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.577859, 0.995838, 5.681622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.490803, 0.633785, 5.827702>,  <5.438569, 0.416554, 5.915349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.490803, 0.633785, 5.827702>,  <5.577859, 0.995838, 5.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.490803, 0.633785, 5.827702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708306, 0.110961, 0.697130,
		-0.671517, 0.410396, 0.616960,
		-0.217641, -0.905131, 0.365199,
		5.425510, 0.362246, 5.937261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.499117, 0.400277, 1.474384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285599, 0.218527, 1.759651>,  <1.157488, 0.109477, 1.930811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285599, 0.218527, 1.759651>,  <1.499117, 0.400277, 1.474384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.285599, 0.218527, 1.759651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629863, -0.349073, -0.693845,
		0.564213, -0.819568, -0.099861,
		-0.533795, -0.454375, 0.713167,
		1.125460, 0.082214, 1.973601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427076, -0.320038, 1.232052>,  <1.499117, 0.400277, 1.474384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427076, -0.320038, 1.232052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127445, -0.213992, 1.474901>,  <0.947667, -0.150365, 1.620610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127445, -0.213992, 1.474901>,  <1.427076, -0.320038, 1.232052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.127445, -0.213992, 1.474901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652315, -0.455107, -0.606105,
		0.115620, -0.850055, 0.513848,
		-0.749078, 0.265113, 0.607123,
		0.902722, -0.134458, 1.657038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.891490, -0.840965, 1.487737>,  <1.427076, -0.320038, 1.232052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.891490, -0.840965, 1.487737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.728390, -0.477785, 1.449024>,  <0.630530, -0.259877, 1.425797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.728390, -0.477785, 1.449024>,  <0.891490, -0.840965, 1.487737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.728390, -0.477785, 1.449024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486494, -0.305720, -0.818449,
		-0.772699, -0.286638, 0.566369,
		-0.407750, 0.907950, -0.096782,
		0.606065, -0.205400, 1.419990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.173838, -0.925658, 1.215670>,  <0.891490, -0.840965, 1.487737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.173838, -0.925658, 1.215670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.235504, -0.533679, 1.165178>,  <0.272504, -0.298491, 1.134883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.235504, -0.533679, 1.165178>,  <0.173838, -0.925658, 1.215670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.235504, -0.533679, 1.165178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699611, 0.018052, -0.714296,
		-0.697695, 0.198431, 0.688365,
		0.154165, 0.979949, -0.126230,
		0.281754, -0.239694, 1.127309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.528450, -0.534180, 1.325197>,  <0.173838, -0.925658, 1.215670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.528450, -0.534180, 1.325197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.275826, -0.315324, 1.105463>,  <-0.124251, -0.184010, 0.973623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.275826, -0.315324, 1.105463>,  <-0.528450, -0.534180, 1.325197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.275826, -0.315324, 1.105463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741384, 0.218832, -0.634399,
		-0.226893, 0.807930, 0.543846,
		0.631561, 0.547140, -0.549335,
		-0.086357, -0.151182, 0.940662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.761946, 0.156029, 1.231163>,  <-0.528450, -0.534180, 1.325197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.761946, 0.156029, 1.231163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.506443, 0.101768, 0.928221>,  <-0.353141, 0.069212, 0.746455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.506443, 0.101768, 0.928221>,  <-0.761946, 0.156029, 1.231163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.506443, 0.101768, 0.928221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650289, 0.430926, -0.625641,
		0.411234, 0.892133, 0.187044,
		0.638757, -0.135652, -0.757356,
		-0.314816, 0.061073, 0.701014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.829428, 0.725968, 0.850363>,  <-0.761946, 0.156029, 1.231163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.829428, 0.725968, 0.850363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.630520, 0.503728, 0.583820>,  <-0.511175, 0.370385, 0.423895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.630520, 0.503728, 0.583820>,  <-0.829428, 0.725968, 0.850363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.630520, 0.503728, 0.583820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593081, 0.342884, -0.728482,
		0.633227, 0.757456, -0.159009,
		0.497271, -0.555599, -0.666356,
		-0.481339, 0.337049, 0.383913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.624834, 1.180422, 0.309836>,  <-0.829428, 0.725968, 0.850363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.624834, 1.180422, 0.309836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.680763, 0.800954, 0.196365>,  <-0.714321, 0.573273, 0.128283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.680763, 0.800954, 0.196365>,  <-0.624834, 1.180422, 0.309836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.680763, 0.800954, 0.196365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653170, 0.303686, -0.693645,
		0.744190, 0.088302, -0.662105,
		-0.139822, -0.948671, -0.283677,
		-0.722710, 0.516352, 0.111262>
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
