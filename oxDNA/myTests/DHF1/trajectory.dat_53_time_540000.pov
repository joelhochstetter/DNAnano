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
	<5.038125, 1.137276, 5.812576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057770, 0.814419, 6.047899>,  <5.069557, 0.620704, 6.189093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057770, 0.814419, 6.047899>,  <5.038125, 1.137276, 5.812576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.057770, 0.814419, 6.047899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988956, -0.121762, -0.084494,
		0.139832, -0.577661, -0.804211,
		0.049113, -0.807144, 0.588308,
		5.072504, 0.572276, 6.224391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.447087, 1.508268, 5.203927>,  <5.038125, 1.137276, 5.812576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.447087, 1.508268, 5.203927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.844122, 1.459713, 5.206242>,  <6.082343, 1.430580, 5.207631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.844122, 1.459713, 5.206242>,  <5.447087, 1.508268, 5.203927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.844122, 1.459713, 5.206242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099414, -0.838453, -0.535830,
		0.069895, 0.531284, -0.844306,
		0.992588, -0.121388, 0.005787,
		6.141899, 1.423297, 5.207978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.839518, 1.253754, 4.632356>,  <5.447087, 1.508268, 5.203927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.839518, 1.253754, 4.632356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.558720, 1.515396, 4.519680>,  <5.390241, 1.672382, 4.452075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.558720, 1.515396, 4.519680>,  <5.839518, 1.253754, 4.632356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.558720, 1.515396, 4.519680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399090, -0.688896, -0.605103,
		-0.589857, -0.312359, 0.744648,
		-0.701995, 0.654106, -0.281690,
		5.348121, 1.711628, 4.435173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.064901, 0.989553, 4.680264>,  <5.839518, 1.253754, 4.632356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.064901, 0.989553, 4.680264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.092804, 1.290981, 4.418802>,  <5.109546, 1.471838, 4.261925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.092804, 1.290981, 4.418802>,  <5.064901, 0.989553, 4.680264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.092804, 1.290981, 4.418802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345497, -0.596447, -0.724488,
		-0.935824, 0.276374, 0.218750,
		0.069757, 0.753571, -0.653655,
		5.113731, 1.517053, 4.222706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438584, 1.094411, 4.354400>,  <5.064901, 0.989553, 4.680264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438584, 1.094411, 4.354400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.719948, 1.231136, 4.105120>,  <4.888766, 1.313172, 3.955551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.719948, 1.231136, 4.105120>,  <4.438584, 1.094411, 4.354400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.719948, 1.231136, 4.105120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369396, -0.573276, -0.731369,
		-0.607259, 0.744659, -0.276982,
		0.703408, 0.341814, -0.623201,
		4.930970, 1.333681, 3.918159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.062754, 1.370678, 3.802066>,  <4.438584, 1.094411, 4.354400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.062754, 1.370678, 3.802066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.425840, 1.265598, 3.671200>,  <4.643692, 1.202550, 3.592680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.425840, 1.265598, 3.671200>,  <4.062754, 1.370678, 3.802066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.425840, 1.265598, 3.671200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419508, -0.553555, -0.719437,
		0.007891, 0.790294, -0.612677,
		0.907717, -0.262700, -0.327166,
		4.698155, 1.186788, 3.573050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203890, 1.438473, 3.038502>,  <4.062754, 1.370678, 3.802066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203890, 1.438473, 3.038502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409170, 1.123020, 3.173962>,  <4.532338, 0.933748, 3.255237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409170, 1.123020, 3.173962>,  <4.203890, 1.438473, 3.038502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409170, 1.123020, 3.173962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388948, -0.565431, -0.727329,
		0.765078, 0.241549, -0.596917,
		0.513201, -0.788633, 0.338649,
		4.563130, 0.886430, 3.275556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.487213, 1.042843, 2.429490>,  <4.203890, 1.438473, 3.038502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.487213, 1.042843, 2.429490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467331, 0.798794, 2.745789>,  <4.455402, 0.652365, 2.935568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467331, 0.798794, 2.745789>,  <4.487213, 1.042843, 2.429490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467331, 0.798794, 2.745789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428569, -0.702103, -0.568664,
		0.902141, -0.367155, -0.226582,
		-0.049704, -0.610122, 0.790747,
		4.452420, 0.615757, 2.983013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.072342, -0.525469, 5.962170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705986, -0.510490, 5.802299>,  <3.486172, -0.501503, 5.706377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705986, -0.510490, 5.802299>,  <4.072342, -0.525469, 5.962170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.705986, -0.510490, 5.802299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254949, 0.823319, -0.507096,
		0.310072, -0.566341, -0.763618,
		-0.915891, 0.037448, -0.399676,
		3.431219, -0.499256, 5.682396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.157093, -0.669108, 5.187622>,  <4.072342, -0.525469, 5.962170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.157093, -0.669108, 5.187622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851602, -0.439102, 5.304977>,  <3.668307, -0.301099, 5.375391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851602, -0.439102, 5.304977>,  <4.157093, -0.669108, 5.187622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.851602, -0.439102, 5.304977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431170, 0.792627, -0.431085,
		-0.480429, -0.202731, -0.853281,
		-0.763728, 0.575015, 0.293389,
		3.622483, -0.266598, 5.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.888773, -0.438202, 4.625356>,  <4.157093, -0.669108, 5.187622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.888773, -0.438202, 4.625356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757882, -0.182701, 4.903900>,  <3.679348, -0.029401, 5.071027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757882, -0.182701, 4.903900>,  <3.888773, -0.438202, 4.625356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.757882, -0.182701, 4.903900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382586, 0.763386, -0.520451,
		-0.864031, 0.096113, -0.494178,
		-0.327226, 0.638752, 0.696361,
		3.659714, 0.008924, 5.112809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.946329, 0.114940, 4.237054>,  <3.888773, -0.438202, 4.625356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.946329, 0.114940, 4.237054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.873461, 0.235939, 4.611286>,  <3.829740, 0.308538, 4.835825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.873461, 0.235939, 4.611286>,  <3.946329, 0.114940, 4.237054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.873461, 0.235939, 4.611286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383444, 0.898024, -0.215692,
		-0.905420, 0.319450, -0.279584,
		-0.182170, 0.302497, 0.935580,
		3.818810, 0.326688, 4.891960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.457986, -0.255192, 3.935609>,  <3.946329, 0.114940, 4.237054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.457986, -0.255192, 3.935609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.449366, 0.012619, 3.638618>,  <4.444193, 0.173305, 3.460424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.449366, 0.012619, 3.638618>,  <4.457986, -0.255192, 3.935609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.449366, 0.012619, 3.638618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500799, 0.649988, 0.571591,
		0.865295, -0.359513, -0.349306,
		-0.021551, 0.669527, -0.742475,
		4.442901, 0.213477, 3.415876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.080534, -0.084727, 3.891279>,  <4.457986, -0.255192, 3.935609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.080534, -0.084727, 3.891279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.890409, 0.228409, 3.730659>,  <4.776333, 0.416290, 3.634288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.890409, 0.228409, 3.730659>,  <5.080534, -0.084727, 3.891279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.890409, 0.228409, 3.730659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473443, 0.612267, 0.633231,
		0.741572, 0.110874, -0.661648,
		-0.475314, 0.782839, -0.401547,
		4.747814, 0.463260, 3.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.475974, 0.431248, 3.918616>,  <5.080534, -0.084727, 3.891279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.475974, 0.431248, 3.918616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.148368, 0.655663, 3.870529>,  <4.951804, 0.790311, 3.841677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.148368, 0.655663, 3.870529>,  <5.475974, 0.431248, 3.918616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148368, 0.655663, 3.870529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274350, 0.566938, 0.776733,
		0.503931, 0.603174, -0.618251,
		-0.819015, 0.561037, -0.120216,
		4.902663, 0.823974, 3.834464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.809118, 0.554763, 3.212414>,  <5.475974, 0.431248, 3.918616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.809118, 0.554763, 3.212414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.471828, 0.740860, 3.320133>,  <5.269454, 0.852518, 3.384765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.471828, 0.740860, 3.320133>,  <5.809118, 0.554763, 3.212414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.471828, 0.740860, 3.320133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537126, 0.709028, 0.456920,
		0.021638, 0.529933, -0.847763,
		-0.843225, 0.465242, 0.269299,
		5.218861, 0.880433, 3.400923>
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
