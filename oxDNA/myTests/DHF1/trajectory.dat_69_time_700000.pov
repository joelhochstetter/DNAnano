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
	<0.404998, 3.004558, 1.480833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.623108, 3.275295, 1.283022>,  <0.753974, 3.437737, 1.164335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.623108, 3.275295, 1.283022>,  <0.404998, 3.004558, 1.480833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.623108, 3.275295, 1.283022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018579, -0.580045, -0.814372,
		-0.838051, 0.453246, -0.303709,
		0.545276, 0.676843, -0.494528,
		0.786691, 3.478348, 1.134663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020713, 3.338127, 0.886160>,  <0.404998, 3.004558, 1.480833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020713, 3.338127, 0.886160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417224, 3.290535, 0.863493>,  <0.655131, 3.261980, 0.849893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417224, 3.290535, 0.863493>,  <0.020713, 3.338127, 0.886160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.417224, 3.290535, 0.863493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115756, -0.580577, -0.805935,
		0.062990, 0.805466, -0.589286,
		0.991278, -0.118979, -0.056667,
		0.714607, 3.254841, 0.846493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.293354, 3.562233, 0.197171>,  <0.020713, 3.338127, 0.886160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.293354, 3.562233, 0.197171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.476370, 3.273464, 0.404819>,  <0.586180, 3.100203, 0.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.476370, 3.273464, 0.404819>,  <0.293354, 3.562233, 0.197171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.476370, 3.273464, 0.404819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287914, -0.672642, -0.681658,
		0.841286, 0.162424, -0.515613,
		0.457541, -0.721921, 0.519120,
		0.613632, 3.056888, 0.560556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.076599, 3.380101, -0.102569>,  <0.293354, 3.562233, 0.197171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.076599, 3.380101, -0.102569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.827500, 3.114124, 0.062374>,  <0.678041, 2.954538, 0.161340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.827500, 3.114124, 0.062374>,  <1.076599, 3.380101, -0.102569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.827500, 3.114124, 0.062374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140161, -0.613307, -0.777309,
		0.769768, -0.426270, 0.475134,
		-0.622746, -0.664943, 0.412357,
		0.640676, 2.914641, 0.186081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.404616, 2.714203, 0.076191>,  <1.076599, 3.380101, -0.102569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.404616, 2.714203, 0.076191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025353, 2.714996, -0.050926>,  <0.797796, 2.715472, -0.127197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025353, 2.714996, -0.050926>,  <1.404616, 2.714203, 0.076191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.025353, 2.714996, -0.050926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248799, -0.617528, -0.746162,
		-0.197727, -0.786547, 0.585020,
		-0.948158, 0.001984, -0.317794,
		0.740906, 2.715591, -0.146264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.130224, 1.987200, -0.021112>,  <1.404616, 2.714203, 0.076191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.130224, 1.987200, -0.021112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.933253, 2.219578, -0.280348>,  <0.815071, 2.359004, -0.435889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.933253, 2.219578, -0.280348>,  <1.130224, 1.987200, -0.021112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.933253, 2.219578, -0.280348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115935, -0.781774, -0.612690,
		-0.862598, -0.226569, 0.452318,
		-0.492426, 0.580945, -0.648089,
		0.785525, 2.393861, -0.474774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.489203, 1.732808, -0.206832>,  <1.130224, 1.987200, -0.021112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.489203, 1.732808, -0.206832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.578410, 1.964569, -0.520407>,  <0.631934, 2.103626, -0.708551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.578410, 1.964569, -0.520407>,  <0.489203, 1.732808, -0.206832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.578410, 1.964569, -0.520407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190383, -0.762816, -0.617954,
		-0.956042, 0.287063, -0.059813,
		0.223018, 0.579402, -0.783936,
		0.645316, 2.138390, -0.755588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.027709, 1.600116, -0.777939>,  <0.489203, 1.732808, -0.206832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.027709, 1.600116, -0.777939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.300638, 1.749172, -0.951059>,  <0.497646, 1.838606, -1.054931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.300638, 1.749172, -0.951059>,  <-0.027709, 1.600116, -0.777939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.300638, 1.749172, -0.951059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009160, -0.766304, -0.642413,
		-0.571045, 0.523371, -0.632448,
		0.820867, 0.372640, -0.432800,
		0.546898, 1.860964, -1.080899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.231361, 0.818432, 2.657211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.586859, 0.950958, 2.530491>,  <0.800158, 1.030474, 2.454459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.586859, 0.950958, 2.530491>,  <0.231361, 0.818432, 2.657211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.586859, 0.950958, 2.530491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088648, 0.553827, 0.827899,
		0.449746, -0.763876, 0.462841,
		0.888746, 0.331314, -0.316798,
		0.853482, 1.050353, 2.435451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.643526, 0.887449, 3.191803>,  <0.231361, 0.818432, 2.657211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.643526, 0.887449, 3.191803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843567, 1.123344, 2.938156>,  <0.963592, 1.264882, 2.785968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843567, 1.123344, 2.938156>,  <0.643526, 0.887449, 3.191803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843567, 1.123344, 2.938156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035152, 0.717837, 0.695323,
		0.865253, -0.370023, 0.338261,
		0.500102, 0.589740, -0.634117,
		0.993598, 1.300266, 2.747921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.264408, 1.087774, 3.455104>,  <0.643526, 0.887449, 3.191803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.264408, 1.087774, 3.455104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.144812, 1.372528, 3.200916>,  <1.073054, 1.543381, 3.048404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.144812, 1.372528, 3.200916>,  <1.264408, 1.087774, 3.455104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.144812, 1.372528, 3.200916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075771, 0.646119, 0.759466,
		0.951243, 0.275225, -0.139244,
		-0.298992, 0.711886, -0.635470,
		1.055114, 1.586094, 3.010275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670362, 1.689682, 3.527323>,  <1.264408, 1.087774, 3.455104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670362, 1.689682, 3.527323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.313583, 1.797333, 3.381996>,  <1.099516, 1.861923, 3.294800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.313583, 1.797333, 3.381996>,  <1.670362, 1.689682, 3.527323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.313583, 1.797333, 3.381996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086548, 0.687067, 0.721421,
		0.443778, 0.674914, -0.589535,
		-0.891947, 0.269128, -0.363318,
		1.045999, 1.878071, 3.273001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.596122, 2.393256, 3.292625>,  <1.670362, 1.689682, 3.527323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.596122, 2.393256, 3.292625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246098, 2.257317, 3.430477>,  <1.036083, 2.175753, 3.513188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246098, 2.257317, 3.430477>,  <1.596122, 2.393256, 3.292625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246098, 2.257317, 3.430477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119879, 0.842023, 0.525954,
		-0.468931, 0.418928, -0.777562,
		-0.875062, -0.339849, 0.344630,
		0.983579, 2.155362, 3.533866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.002823, 2.852404, 3.255378>,  <1.596122, 2.393256, 3.292625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.002823, 2.852404, 3.255378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.881180, 2.629822, 3.564667>,  <0.808194, 2.496272, 3.750240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.881180, 2.629822, 3.564667>,  <1.002823, 2.852404, 3.255378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.881180, 2.629822, 3.564667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084585, 0.824233, 0.559898,
		-0.948875, 0.104867, -0.297724,
		-0.304109, -0.556456, 0.773223,
		0.789947, 2.462885, 3.796634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.291129, 3.101438, 3.499994>,  <1.002823, 2.852404, 3.255378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.291129, 3.101438, 3.499994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.498669, 2.922974, 3.791676>,  <0.623192, 2.815895, 3.966684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.498669, 2.922974, 3.791676>,  <0.291129, 3.101438, 3.499994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.498669, 2.922974, 3.791676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191170, 0.770845, 0.607661,
		-0.833217, -0.454686, 0.314659,
		0.518848, -0.446160, 0.729203,
		0.654323, 2.789125, 4.010437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.189301, 3.026804, 4.054848>,  <0.291129, 3.101438, 3.499994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.189301, 3.026804, 4.054848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.168940, 3.013229, 4.232273>,  <0.383884, 3.005085, 4.338728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.168940, 3.013229, 4.232273>,  <-0.189301, 3.026804, 4.054848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.168940, 3.013229, 4.232273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248910, 0.788170, 0.562879,
		-0.368705, -0.614522, 0.697438,
		0.895600, -0.033937, 0.443563,
		0.437620, 3.003048, 4.365342>
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
