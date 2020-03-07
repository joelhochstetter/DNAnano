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
	<-0.628164, 5.334737, 3.964690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.550491, 5.453178, 3.590607>,  <-0.503887, 5.524243, 3.366156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.550491, 5.453178, 3.590607>,  <-0.628164, 5.334737, 3.964690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.550491, 5.453178, 3.590607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654151, -0.749524, -0.101486,
		-0.731012, -0.592061, -0.339241,
		0.194183, 0.296102, -0.935209,
		-0.492236, 5.542009, 3.310044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.855083, 4.800863, 3.442171>,  <-0.628164, 5.334737, 3.964690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.855083, 4.800863, 3.442171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.535217, 5.018688, 3.340988>,  <-0.343298, 5.149384, 3.280278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.535217, 5.018688, 3.340988>,  <-0.855083, 4.800863, 3.442171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.535217, 5.018688, 3.340988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526313, -0.838477, -0.141252,
		-0.289019, -0.020181, -0.957111,
		0.799664, 0.544564, -0.252957,
		-0.295318, 5.182057, 3.265101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.663575, 4.553216, 2.817573>,  <-0.855083, 4.800863, 3.442171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.663575, 4.553216, 2.817573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.349430, 4.691097, 3.023247>,  <-0.160943, 4.773826, 3.146651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.349430, 4.691097, 3.023247>,  <-0.663575, 4.553216, 2.817573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.349430, 4.691097, 3.023247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387097, -0.921655, 0.026614,
		0.483075, 0.178138, -0.857266,
		0.785362, 0.344702, 0.514185,
		-0.113821, 4.794508, 3.177502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.106436, 4.370720, 2.498676>,  <-0.663575, 4.553216, 2.817573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.106436, 4.370720, 2.498676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.073658, 4.403408, 2.895988>,  <0.053991, 4.423020, 3.134376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.073658, 4.403408, 2.895988>,  <0.106436, 4.370720, 2.498676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.073658, 4.403408, 2.895988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393662, -0.912938, 0.107585,
		0.915596, 0.399833, 0.042641,
		-0.081945, 0.081719, 0.993281,
		0.049075, 4.427924, 3.193973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.322824, 3.773279, 2.646399>,  <0.106436, 4.370720, 2.498676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.322824, 3.773279, 2.646399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.238884, 3.858311, 3.028137>,  <0.188520, 3.909330, 3.257180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.238884, 3.858311, 3.028137>,  <0.322824, 3.773279, 2.646399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.238884, 3.858311, 3.028137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538209, -0.789771, 0.294267,
		0.816269, 0.575388, 0.051321,
		-0.209850, 0.212579, 0.954344,
		0.175929, 3.922085, 3.314440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.928926, 3.592243, 3.021874>,  <0.322824, 3.773279, 2.646399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.928926, 3.592243, 3.021874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.633705, 3.595184, 3.291756>,  <0.456572, 3.596949, 3.453684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.633705, 3.595184, 3.291756>,  <0.928926, 3.592243, 3.021874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.633705, 3.595184, 3.291756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351629, -0.849235, 0.393899,
		0.575878, 0.527963, 0.624195,
		-0.738053, 0.007352, 0.674703,
		0.412289, 3.597390, 3.494167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235902, 3.475566, 3.739890>,  <0.928926, 3.592243, 3.021874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235902, 3.475566, 3.739890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858093, 3.352959, 3.787094>,  <0.631408, 3.279394, 3.815417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858093, 3.352959, 3.787094>,  <1.235902, 3.475566, 3.739890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.858093, 3.352959, 3.787094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328138, -0.864929, 0.379766,
		-0.014334, 0.397421, 0.917524,
		-0.944521, -0.306518, 0.118011,
		0.574737, 3.261003, 3.822497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.093204, 3.288821, 4.474485>,  <1.235902, 3.475566, 3.739890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.093204, 3.288821, 4.474485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.846912, 3.083904, 4.235008>,  <0.699137, 2.960954, 4.091322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.846912, 3.083904, 4.235008>,  <1.093204, 3.288821, 4.474485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.846912, 3.083904, 4.235008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457114, -0.851115, 0.258166,
		-0.641813, -0.114710, 0.758234,
		-0.615730, -0.512293, -0.598692,
		0.662193, 2.930216, 4.055400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.089997, 1.534392, 4.363811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.904649, 1.397453, 4.036865>,  <0.793440, 1.315290, 3.840697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.904649, 1.397453, 4.036865>,  <1.089997, 1.534392, 4.363811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.904649, 1.397453, 4.036865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400959, 0.903543, -0.151134,
		0.790266, 0.257699, -0.555942,
		-0.463370, -0.342346, -0.817366,
		0.765638, 1.294749, 3.791655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.281288, 1.971500, 3.846623>,  <1.089997, 1.534392, 4.363811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.281288, 1.971500, 3.846623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.923923, 1.805283, 3.778343>,  <0.709505, 1.705552, 3.737375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.923923, 1.805283, 3.778343>,  <1.281288, 1.971500, 3.846623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.923923, 1.805283, 3.778343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418021, 0.908148, -0.022910,
		0.164542, 0.050888, -0.985057,
		-0.893412, -0.415545, -0.170701,
		0.655900, 1.680619, 3.727133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984769, 2.252369, 3.227203>,  <1.281288, 1.971500, 3.846623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984769, 2.252369, 3.227203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.731248, 2.138405, 3.514847>,  <0.579135, 2.070026, 3.687433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.731248, 2.138405, 3.514847>,  <0.984769, 2.252369, 3.227203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.731248, 2.138405, 3.514847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370264, 0.928006, 0.041333,
		-0.679115, -0.240063, -0.693666,
		-0.633804, -0.284910, 0.719110,
		0.541106, 2.052932, 3.730580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.249214, 2.292782, 3.154905>,  <0.984769, 2.252369, 3.227203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.249214, 2.292782, 3.154905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241582, 2.342758, 3.551697>,  <0.237003, 2.372744, 3.789772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241582, 2.342758, 3.551697>,  <0.249214, 2.292782, 3.154905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.241582, 2.342758, 3.551697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377896, 0.917661, -0.122849,
		-0.925651, -0.377209, 0.029706,
		-0.019080, 0.124942, 0.991981,
		0.235858, 2.380241, 3.849291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.456156, 2.564956, 3.417162>,  <0.249214, 2.292782, 3.154905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.456156, 2.564956, 3.417162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.154284, 2.678314, 3.653854>,  <0.026839, 2.746329, 3.795870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.154284, 2.678314, 3.653854>,  <-0.456156, 2.564956, 3.417162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.154284, 2.678314, 3.653854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292704, 0.952601, -0.082917,
		-0.587182, -0.110626, 0.801860,
		0.754680, 0.283395, 0.591731,
		0.072120, 2.763333, 3.831373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.675687, 3.051524, 4.030595>,  <-0.456156, 2.564956, 3.417162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.675687, 3.051524, 4.030595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.286836, 3.116119, 3.962608>,  <-0.053525, 3.154877, 3.921816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.286836, 3.116119, 3.962608>,  <-0.675687, 3.051524, 4.030595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.286836, 3.116119, 3.962608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185868, 0.972709, -0.138889,
		0.142899, 0.166609, 0.975614,
		0.972128, 0.161489, -0.169966,
		0.004802, 3.164566, 3.911618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.445518, 3.594168, 4.532948>,  <-0.675687, 3.051524, 4.030595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.445518, 3.594168, 4.532948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.202618, 3.607513, 4.215424>,  <-0.056877, 3.615521, 4.024909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.202618, 3.607513, 4.215424>,  <-0.445518, 3.594168, 4.532948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.202618, 3.607513, 4.215424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240869, 0.959828, -0.143919,
		0.757119, 0.278599, 0.590893,
		0.607251, 0.033364, -0.793809,
		-0.020442, 3.617523, 3.977281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.127439, 4.199468, 4.561687>,  <-0.445518, 3.594168, 4.532948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.127439, 4.199468, 4.561687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.100345, 4.088997, 4.178200>,  <-0.084088, 4.022714, 3.948108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.100345, 4.088997, 4.178200>,  <-0.127439, 4.199468, 4.561687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.100345, 4.088997, 4.178200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466222, 0.840791, -0.275148,
		0.882070, 0.465613, -0.071808,
		0.067737, -0.276178, -0.958716,
		-0.080023, 4.006144, 3.890585>
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
