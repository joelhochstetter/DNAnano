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
	<0.784238, 4.868712, 2.083968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.818424, 4.704590, 1.720795>,  <0.838936, 4.606116, 1.502890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.818424, 4.704590, 1.720795>,  <0.784238, 4.868712, 2.083968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.818424, 4.704590, 1.720795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406862, -0.846199, 0.344108,
		-0.909483, 0.339994, -0.239259,
		0.085466, -0.410306, -0.907934,
		0.844064, 4.581498, 1.448414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.125554, 4.814526, 1.836945>,  <0.784238, 4.868712, 2.083968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.125554, 4.814526, 1.836945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.384243, 4.540443, 1.702934>,  <0.539456, 4.375994, 1.622528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.384243, 4.540443, 1.702934>,  <0.125554, 4.814526, 1.836945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.384243, 4.540443, 1.702934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562518, -0.725129, 0.397191,
		-0.515095, -0.068414, -0.854398,
		0.646723, -0.685206, -0.335026,
		0.578260, 4.334882, 1.602426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.212712, 4.336396, 1.450723>,  <0.125554, 4.814526, 1.836945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.212712, 4.336396, 1.450723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115997, 4.162102, 1.597595>,  <0.313223, 4.057525, 1.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115997, 4.162102, 1.597595>,  <-0.212712, 4.336396, 1.450723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.115997, 4.162102, 1.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568525, -0.670287, 0.476963,
		0.038287, -0.600707, -0.798552,
		0.821774, -0.435735, 0.367181,
		0.362530, 4.031381, 1.707749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.228862, 3.567633, 1.298781>,  <-0.212712, 4.336396, 1.450723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.228862, 3.567633, 1.298781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.013901, 3.661766, 1.622711>,  <0.115076, 3.718246, 1.817069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.013901, 3.661766, 1.622711>,  <-0.228862, 3.567633, 1.298781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.013901, 3.661766, 1.622711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505406, -0.678851, 0.532660,
		0.675103, -0.695543, -0.245877,
		0.537402, 0.235332, 0.809826,
		0.147320, 3.732366, 1.865659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.102240, 2.946827, 1.571231>,  <-0.228862, 3.567633, 1.298781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.102240, 2.946827, 1.571231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.064285, 3.206871, 1.872787>,  <-0.041512, 3.362897, 2.053722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.064285, 3.206871, 1.872787>,  <-0.102240, 2.946827, 1.571231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.064285, 3.206871, 1.872787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429225, -0.656579, 0.620217,
		0.898200, -0.382440, 0.216742,
		0.094888, 0.650110, 0.753892,
		-0.035819, 3.401904, 2.098955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.343049, 2.612862, 2.088502>,  <-0.102240, 2.946827, 1.571231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.343049, 2.612862, 2.088502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.103844, 2.891708, 2.246696>,  <-0.039679, 3.059016, 2.341613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.103844, 2.891708, 2.246696>,  <0.343049, 2.612862, 2.088502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.103844, 2.891708, 2.246696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434101, -0.696516, 0.571334,
		0.673749, 0.169984, 0.719144,
		-0.598013, 0.697116, 0.395487,
		-0.075560, 3.100843, 2.365342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.433507, 2.541281, 2.803440>,  <0.343049, 2.612862, 2.088502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.433507, 2.541281, 2.803440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083939, 2.719162, 2.724953>,  <-0.125803, 2.825891, 2.677860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083939, 2.719162, 2.724953>,  <0.433507, 2.541281, 2.803440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083939, 2.719162, 2.724953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466028, -0.651867, 0.598237,
		0.138129, 0.614255, 0.776924,
		-0.873921, 0.444702, -0.196218,
		-0.178238, 2.852573, 2.666087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.119716, 2.720095, 3.458889>,  <0.433507, 2.541281, 2.803440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.119716, 2.720095, 3.458889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.179977, 2.700470, 3.194695>,  <-0.359793, 2.688695, 3.036178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.179977, 2.700470, 3.194695>,  <0.119716, 2.720095, 3.458889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.179977, 2.700470, 3.194695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462064, -0.675742, 0.574343,
		-0.474497, 0.735504, 0.483619,
		-0.749232, -0.049062, -0.660487,
		-0.404747, 2.685751, 2.996548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.607461, 1.734007, 2.877923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221417, 1.784943, 2.969444>,  <3.989791, 1.815504, 3.024357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221417, 1.784943, 2.969444>,  <4.607461, 1.734007, 2.877923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.221417, 1.784943, 2.969444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081284, 0.976316, -0.200500,
		-0.248914, -0.174906, -0.952601,
		-0.965109, 0.127338, 0.228802,
		3.931885, 1.823144, 3.038085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.230145, 2.062914, 2.339783>,  <4.607461, 1.734007, 2.877923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.230145, 2.062914, 2.339783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062044, 2.158943, 2.689812>,  <3.961183, 2.216561, 2.899829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062044, 2.158943, 2.689812>,  <4.230145, 2.062914, 2.339783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.062044, 2.158943, 2.689812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059371, 0.955025, -0.290521,
		-0.905462, -0.174046, -0.387100,
		-0.420254, 0.240073, 0.875072,
		3.935967, 2.230965, 2.952333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610476, 2.423033, 2.314439>,  <4.230145, 2.062914, 2.339783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610476, 2.423033, 2.314439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864786, 2.500206, 2.613388>,  <4.017373, 2.546510, 2.792758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864786, 2.500206, 2.613388>,  <3.610476, 2.423033, 2.314439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864786, 2.500206, 2.613388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054929, 0.954494, -0.293128,
		-0.769916, 0.227416, 0.596247,
		0.635776, 0.192933, 0.747372,
		4.055519, 2.558086, 2.837600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.469105, 3.128799, 2.414683>,  <3.610476, 2.423033, 2.314439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.469105, 3.128799, 2.414683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.819936, 3.021233, 2.573891>,  <4.030435, 2.956692, 2.669415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.819936, 3.021233, 2.573891>,  <3.469105, 3.128799, 2.414683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.819936, 3.021233, 2.573891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400957, 0.866156, -0.298342,
		-0.264518, 0.421258, 0.867509,
		0.877077, -0.268917, 0.398020,
		4.083059, 2.940557, 2.693297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817526, 3.668914, 2.745513>,  <3.469105, 3.128799, 2.414683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817526, 3.668914, 2.745513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.130103, 3.421112, 2.715691>,  <4.317650, 3.272431, 2.697797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.130103, 3.421112, 2.715691>,  <3.817526, 3.668914, 2.745513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.130103, 3.421112, 2.715691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587073, 0.770443, -0.248523,
		0.211402, 0.150437, 0.965752,
		0.781444, -0.619505, -0.074556,
		4.364536, 3.235260, 2.693324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.297269, 4.119030, 2.955562>,  <3.817526, 3.668914, 2.745513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.297269, 4.119030, 2.955562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.482133, 3.810822, 2.779968>,  <4.593051, 3.625896, 2.674612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.482133, 3.810822, 2.779968>,  <4.297269, 4.119030, 2.955562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.482133, 3.810822, 2.779968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718591, 0.615469, -0.323767,
		0.519649, -0.165817, 0.838134,
		0.462160, -0.770521, -0.438983,
		4.620781, 3.579665, 2.648273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.993808, 4.216540, 3.087802>,  <4.297269, 4.119030, 2.955562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.993808, 4.216540, 3.087802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.009001, 3.965958, 2.776390>,  <5.018116, 3.815608, 2.589543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.009001, 3.965958, 2.776390>,  <4.993808, 4.216540, 3.087802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.009001, 3.965958, 2.776390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797653, 0.488296, -0.354000,
		0.601919, -0.607552, 0.518241,
		0.037981, -0.626457, -0.778530,
		5.020395, 3.778021, 2.542831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.715525, 3.995146, 3.027208>,  <4.993808, 4.216540, 3.087802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.715525, 3.995146, 3.027208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.547915, 3.930305, 2.669853>,  <5.447348, 3.891401, 2.455440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.547915, 3.930305, 2.669853>,  <5.715525, 3.995146, 3.027208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.547915, 3.930305, 2.669853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767984, 0.461620, -0.443967,
		0.484374, -0.872141, -0.068939,
		-0.419026, -0.162102, -0.893387,
		5.422207, 3.881675, 2.401837>
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
