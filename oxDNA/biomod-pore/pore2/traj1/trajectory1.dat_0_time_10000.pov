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
	<22.094936, 17.644381, -1.888864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430500, 17.848621, -1.964246>,  <22.631838, 17.971165, -2.009475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430500, 17.848621, -1.964246>,  <22.094936, 17.644381, -1.888864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430500, 17.848621, -1.964246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436816, -0.425082, 0.792778,
		0.324685, -0.747390, -0.579645,
		0.838911, 0.510601, -0.188454,
		22.682173, 18.001802, -2.020782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.760273, 17.180443, -2.124650>,  <22.094936, 17.644381, -1.888864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.760273, 17.180443, -2.124650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789459, 17.525864, -1.925069>,  <22.806971, 17.733116, -1.805320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789459, 17.525864, -1.925069>,  <22.760273, 17.180443, -2.124650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789459, 17.525864, -1.925069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276166, -0.498218, 0.821895,
		0.958336, 0.077824, -0.274836,
		0.072966, 0.863552, 0.498953,
		22.811350, 17.784929, -1.775383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477335, 17.158436, -1.744381>,  <22.760273, 17.180443, -2.124650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477335, 17.158436, -1.744381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201382, 17.371925, -1.548749>,  <23.035810, 17.500019, -1.431369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201382, 17.371925, -1.548749>,  <23.477335, 17.158436, -1.744381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.201382, 17.371925, -1.548749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151142, -0.554518, 0.818331,
		0.707969, 0.638472, 0.301883,
		-0.689881, 0.533726, 0.489081,
		22.994417, 17.532043, -1.402024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.767622, 17.584000, -1.149649>,  <23.477335, 17.158436, -1.744381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.767622, 17.584000, -1.149649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387287, 17.469646, -1.102023>,  <23.159086, 17.401035, -1.073448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387287, 17.469646, -1.102023>,  <23.767622, 17.584000, -1.149649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387287, 17.469646, -1.102023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206828, -0.300070, 0.931225,
		-0.230493, 0.910071, 0.344447,
		-0.950839, -0.285882, 0.119064,
		23.102036, 17.383883, -1.066304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.542553, 17.898769, -0.619338>,  <23.767622, 17.584000, -1.149649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.542553, 17.898769, -0.619338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322472, 17.568810, -0.671209>,  <23.190422, 17.370834, -0.702332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322472, 17.568810, -0.671209>,  <23.542553, 17.898769, -0.619338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322472, 17.568810, -0.671209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220946, -0.293579, 0.930051,
		-0.805268, 0.483066, 0.343787,
		-0.550205, -0.824899, -0.129678,
		23.157410, 17.321341, -0.710113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968184, 17.907463, -0.126232>,  <23.542553, 17.898769, -0.619338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968184, 17.907463, -0.126232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080654, 17.537640, -0.229094>,  <23.148136, 17.315744, -0.290812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080654, 17.537640, -0.229094>,  <22.968184, 17.907463, -0.126232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080654, 17.537640, -0.229094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186838, -0.210098, 0.959661,
		-0.941292, -0.317881, 0.113669,
		0.281176, -0.924560, -0.257156,
		23.165007, 17.260271, -0.306241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.626860, 17.305712, 0.306827>,  <22.968184, 17.907463, -0.126232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.626860, 17.305712, 0.306827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994049, 17.217491, 0.174961>,  <23.214363, 17.164558, 0.095841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994049, 17.217491, 0.174961>,  <22.626860, 17.305712, 0.306827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994049, 17.217491, 0.174961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280086, -0.228057, 0.932492,
		-0.280851, -0.948337, -0.147576,
		0.917973, -0.220558, -0.329666,
		23.269442, 17.151325, 0.076062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.924744, 16.608141, 0.602326>,  <22.626860, 17.305712, 0.306827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.924744, 16.608141, 0.602326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219849, 16.861084, 0.507813>,  <23.396912, 17.012850, 0.451106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219849, 16.861084, 0.507813>,  <22.924744, 16.608141, 0.602326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.219849, 16.861084, 0.507813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228796, 0.095066, 0.968821,
		0.635105, -0.768821, -0.074545,
		0.737763, 0.632359, -0.236281,
		23.441177, 17.050791, 0.436929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500565, 16.349131, 0.984729>,  <22.924744, 16.608141, 0.602326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500565, 16.349131, 0.984729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.462242, 16.744598, 0.938509>,  <23.439249, 16.981880, 0.910777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.462242, 16.744598, 0.938509>,  <23.500565, 16.349131, 0.984729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.462242, 16.744598, 0.938509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024578, 0.118397, 0.992662,
		0.995097, 0.092262, -0.035642,
		-0.095805, 0.988671, -0.115549,
		23.433500, 17.041199, 0.903844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.853806, 16.710188, 1.537225>,  <23.500565, 16.349131, 0.984729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.853806, 16.710188, 1.537225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594448, 16.996445, 1.433344>,  <23.438833, 17.168200, 1.371015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594448, 16.996445, 1.433344>,  <23.853806, 16.710188, 1.537225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594448, 16.996445, 1.433344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232589, 0.138609, 0.962647,
		0.724907, 0.684577, 0.076578,
		-0.648392, 0.715641, -0.259703,
		23.399931, 17.211138, 1.355433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095474, 17.349083, 1.857755>,  <23.853806, 16.710188, 1.537225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095474, 17.349083, 1.857755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.695927, 17.362293, 1.844069>,  <23.456198, 17.370220, 1.835858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.695927, 17.362293, 1.844069>,  <24.095474, 17.349083, 1.857755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.695927, 17.362293, 1.844069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022954, 0.295244, 0.955146,
		0.041648, 0.954851, -0.294152,
		-0.998869, 0.033028, -0.034214,
		23.396267, 17.372202, 1.833805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.756964, 18.012537, 2.057171>,  <24.095474, 17.349083, 1.857755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.756964, 18.012537, 2.057171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499020, 17.712891, 2.117807>,  <23.344254, 17.533102, 2.154189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499020, 17.712891, 2.117807>,  <23.756964, 18.012537, 2.057171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499020, 17.712891, 2.117807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027394, 0.220865, 0.974920,
		-0.763810, 0.624534, -0.162948,
		-0.644860, -0.749117, 0.151590,
		23.305561, 17.488155, 2.163284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.157093, 18.288792, 2.417406>,  <23.756964, 18.012537, 2.057171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.157093, 18.288792, 2.417406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237240, 17.903210, 2.487432>,  <23.285328, 17.671862, 2.529448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237240, 17.903210, 2.487432>,  <23.157093, 18.288792, 2.417406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.237240, 17.903210, 2.487432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276420, 0.115808, 0.954034,
		-0.939918, -0.239546, -0.243252,
		0.200365, -0.963954, 0.175066,
		23.297350, 17.614023, 2.539952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.814020, 18.156918, 2.990263>,  <23.157093, 18.288792, 2.417406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.814020, 18.156918, 2.990263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023640, 17.816883, 2.969386>,  <23.149410, 17.612862, 2.956860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023640, 17.816883, 2.969386>,  <22.814020, 18.156918, 2.990263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023640, 17.816883, 2.969386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296844, -0.239745, 0.924341,
		-0.798285, -0.468905, -0.377982,
		0.524047, -0.850089, -0.052193,
		23.180853, 17.561857, 2.953728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.420725, 17.471085, 3.060459>,  <22.814020, 18.156918, 2.990263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.420725, 17.471085, 3.060459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786537, 17.431202, 3.217272>,  <23.006025, 17.407272, 3.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786537, 17.431202, 3.217272>,  <22.420725, 17.471085, 3.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786537, 17.431202, 3.217272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403955, -0.275940, 0.872168,
		0.021216, -0.955989, -0.292633,
		0.914532, -0.099707, 0.392031,
		23.060898, 17.401289, 3.334881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468348, 16.773109, 3.463202>,  <22.420725, 17.471085, 3.060459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468348, 16.773109, 3.463202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734459, 17.045673, 3.585240>,  <22.894125, 17.209211, 3.658463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734459, 17.045673, 3.585240>,  <22.468348, 16.773109, 3.463202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734459, 17.045673, 3.585240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208166, -0.223146, 0.952299,
		0.716987, -0.697055, -0.006607,
		0.665279, 0.681411, 0.305096,
		22.934042, 17.250097, 3.676769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849657, 16.491745, 4.043947>,  <22.468348, 16.773109, 3.463202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849657, 16.491745, 4.043947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.856384, 16.887730, 4.100084>,  <22.860420, 17.125320, 4.133766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.856384, 16.887730, 4.100084>,  <22.849657, 16.491745, 4.043947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856384, 16.887730, 4.100084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221042, -0.133208, 0.966124,
		0.975119, -0.047268, 0.216582,
		0.016816, 0.989960, 0.140342,
		22.861429, 17.184717, 4.142186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328377, 16.705488, 4.570234>,  <22.849657, 16.491745, 4.043947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328377, 16.705488, 4.570234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013374, 16.951248, 4.550845>,  <22.824373, 17.098705, 4.539212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013374, 16.951248, 4.550845>,  <23.328377, 16.705488, 4.570234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013374, 16.951248, 4.550845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239609, -0.232757, 0.942556,
		0.567825, 0.753881, 0.330513,
		-0.787504, 0.614401, -0.048471,
		22.777122, 17.135569, 4.536304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334372, 17.016348, 5.159804>,  <23.328377, 16.705488, 4.570234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334372, 17.016348, 5.159804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955090, 17.034615, 5.034060>,  <22.727520, 17.045574, 4.958612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955090, 17.034615, 5.034060>,  <23.334372, 17.016348, 5.159804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955090, 17.034615, 5.034060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317650, -0.127849, 0.939549,
		0.002715, 0.990742, 0.135733,
		-0.948204, 0.045667, -0.314362,
		22.670628, 17.048315, 4.939751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.948128, 17.331915, 5.658737>,  <23.334372, 17.016348, 5.159804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.948128, 17.331915, 5.658737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696529, 17.090202, 5.463102>,  <22.545570, 16.945175, 5.345722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696529, 17.090202, 5.463102>,  <22.948128, 17.331915, 5.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.696529, 17.090202, 5.463102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582591, -0.050155, 0.811217,
		-0.514735, 0.795190, -0.320502,
		-0.628996, -0.604283, -0.489087,
		22.507830, 16.908918, 5.316376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295946, 17.617044, 5.557305>,  <22.948128, 17.331915, 5.658737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295946, 17.617044, 5.557305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.267628, 17.218128, 5.565284>,  <22.250637, 16.978779, 5.570071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.267628, 17.218128, 5.565284>,  <22.295946, 17.617044, 5.557305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.267628, 17.218128, 5.565284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535811, 0.054887, 0.842552,
		-0.841365, 0.048960, -0.538245,
		-0.070794, -0.997292, 0.019947,
		22.246389, 16.918941, 5.571268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623159, 17.514000, 5.695425>,  <22.295946, 17.617044, 5.557305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623159, 17.514000, 5.695425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835381, 17.190689, 5.797560>,  <21.962713, 16.996702, 5.858841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835381, 17.190689, 5.797560>,  <21.623159, 17.514000, 5.695425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835381, 17.190689, 5.797560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465508, -0.026092, 0.884659,
		-0.708389, -0.588221, -0.390103,
		0.530554, -0.808279, 0.255338,
		21.994547, 16.948206, 5.874161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082783, 17.007742, 5.855461>,  <21.623159, 17.514000, 5.695425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082783, 17.007742, 5.855461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423035, 17.007290, 6.065766>,  <21.627186, 17.007019, 6.191949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423035, 17.007290, 6.065766>,  <21.082783, 17.007742, 5.855461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423035, 17.007290, 6.065766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524855, 0.056957, 0.849284,
		-0.030909, -0.998376, 0.047854,
		0.850630, -0.001134, 0.525763,
		21.678225, 17.006950, 6.223495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034258, 16.435919, 6.336165>,  <21.082783, 17.007742, 5.855461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034258, 16.435919, 6.336165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.302593, 16.704487, 6.462133>,  <21.463594, 16.865627, 6.537714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.302593, 16.704487, 6.462133>,  <21.034258, 16.435919, 6.336165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302593, 16.704487, 6.462133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360266, -0.076128, 0.929738,
		0.648217, -0.737158, 0.190820,
		0.670837, 0.671418, 0.314920,
		21.503845, 16.905912, 6.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469366, 16.253510, 6.948499>,  <21.034258, 16.435919, 6.336165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469366, 16.253510, 6.948499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369801, 16.640205, 6.924979>,  <21.310061, 16.872223, 6.910867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369801, 16.640205, 6.924979>,  <21.469366, 16.253510, 6.948499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369801, 16.640205, 6.924979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348193, -0.032671, 0.936853,
		0.903771, 0.253671, 0.344744,
		-0.248916, 0.966739, -0.058800,
		21.295126, 16.930227, 6.907339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830151, 16.575306, 7.404432>,  <21.469366, 16.253510, 6.948499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830151, 16.575306, 7.404432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469521, 16.739285, 7.349143>,  <21.253143, 16.837671, 7.315970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469521, 16.739285, 7.349143>,  <21.830151, 16.575306, 7.404432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469521, 16.739285, 7.349143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220958, -0.161655, 0.961793,
		0.371940, 0.897670, 0.236325,
		-0.901575, 0.409948, -0.138221,
		21.199047, 16.862268, 7.307677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656559, 17.049030, 7.933892>,  <21.830151, 16.575306, 7.404432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656559, 17.049030, 7.933892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.306866, 16.937870, 7.774652>,  <21.097050, 16.871174, 7.679107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.306866, 16.937870, 7.774652>,  <21.656559, 17.049030, 7.933892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306866, 16.937870, 7.774652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415261, 0.003181, 0.909697,
		-0.251539, 0.960605, -0.118183,
		-0.874235, -0.277901, -0.398102,
		21.044596, 16.854500, 7.655221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834320, 17.432728, 7.358940>,  <21.656559, 17.049030, 7.933892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834320, 17.432728, 7.358940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587605, 17.728470, 7.250920>,  <21.439575, 17.905914, 7.186108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587605, 17.728470, 7.250920>,  <21.834320, 17.432728, 7.358940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.587605, 17.728470, 7.250920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054235, 0.382186, 0.922493,
		0.785258, 0.554337, -0.275827,
		-0.616789, 0.739354, -0.270050,
		21.402569, 17.950275, 7.169905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156900, 18.045176, 7.509101>,  <21.834320, 17.432728, 7.358940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156900, 18.045176, 7.509101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757080, 18.051613, 7.519230>,  <21.517189, 18.055475, 7.525307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757080, 18.051613, 7.519230>,  <22.156900, 18.045176, 7.509101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.757080, 18.051613, 7.519230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028391, 0.234377, 0.971731,
		0.009703, 0.972013, -0.234728,
		-0.999550, 0.016093, 0.025323,
		21.457214, 18.056440, 7.526827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.961506, 18.632271, 7.842982>,  <22.156900, 18.045176, 7.509101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.961506, 18.632271, 7.842982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.692154, 18.341785, 7.898364>,  <21.530542, 18.167494, 7.931593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.692154, 18.341785, 7.898364>,  <21.961506, 18.632271, 7.842982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.692154, 18.341785, 7.898364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089718, 0.266168, 0.959742,
		-0.733831, 0.633851, -0.244387,
		-0.673381, -0.726215, 0.138455,
		21.490139, 18.123920, 7.939900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406145, 18.973087, 8.049876>,  <21.961506, 18.632271, 7.842982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406145, 18.973087, 8.049876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425995, 18.597172, 8.185132>,  <21.437904, 18.371622, 8.266286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425995, 18.597172, 8.185132>,  <21.406145, 18.973087, 8.049876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425995, 18.597172, 8.185132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077075, 0.333944, 0.939437,
		-0.995789, -0.072682, -0.055862,
		0.049625, -0.939787, 0.338140,
		21.440882, 18.315235, 8.286574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036625, 18.936827, 8.577155>,  <21.406145, 18.973087, 8.049876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036625, 18.936827, 8.577155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284958, 18.631649, 8.649249>,  <21.433958, 18.448542, 8.692505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284958, 18.631649, 8.649249>,  <21.036625, 18.936827, 8.577155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.284958, 18.631649, 8.649249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002449, 0.231793, 0.972762,
		-0.783941, -0.603479, 0.145773,
		0.620831, -0.762945, 0.180234,
		21.471207, 18.402765, 8.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816786, 18.620749, 9.263511>,  <21.036625, 18.936827, 8.577155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816786, 18.620749, 9.263511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208065, 18.568817, 9.198668>,  <21.442833, 18.537659, 9.159763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208065, 18.568817, 9.198668>,  <20.816786, 18.620749, 9.263511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208065, 18.568817, 9.198668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189346, 0.236794, 0.952931,
		-0.085330, -0.962847, 0.256213,
		0.978196, -0.129827, -0.162105,
		21.501524, 18.529869, 9.150037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174803, 18.150814, 9.779279>,  <20.816786, 18.620749, 9.263511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174803, 18.150814, 9.779279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394218, 18.463825, 9.661459>,  <21.525867, 18.651632, 9.590767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394218, 18.463825, 9.661459>,  <21.174803, 18.150814, 9.779279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394218, 18.463825, 9.661459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304411, 0.141195, 0.942018,
		0.778743, -0.606396, -0.160759,
		0.548537, 0.782527, -0.294549,
		21.558779, 18.698584, 9.573094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853697, 18.058403, 10.073761>,  <21.174803, 18.150814, 9.779279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853697, 18.058403, 10.073761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802692, 18.450466, 10.013051>,  <21.772091, 18.685703, 9.976625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802692, 18.450466, 10.013051>,  <21.853697, 18.058403, 10.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802692, 18.450466, 10.013051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408507, 0.191341, 0.892475,
		0.903805, 0.051798, -0.424798,
		-0.127510, 0.980156, -0.151775,
		21.764439, 18.744513, 9.967519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.449188, 18.269859, 10.266137>,  <21.853697, 18.058403, 10.073761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.449188, 18.269859, 10.266137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191154, 18.569698, 10.325420>,  <22.036333, 18.749601, 10.360991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191154, 18.569698, 10.325420>,  <22.449188, 18.269859, 10.266137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191154, 18.569698, 10.325420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293414, 0.063913, 0.953847,
		0.705529, 0.658800, -0.261172,
		-0.645087, 0.749598, 0.148209,
		21.997629, 18.794579, 10.369883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889000, 18.683584, 10.658794>,  <22.449188, 18.269859, 10.266137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889000, 18.683584, 10.658794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503391, 18.775505, 10.712239>,  <22.272026, 18.830658, 10.744307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503391, 18.775505, 10.712239>,  <22.889000, 18.683584, 10.658794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503391, 18.775505, 10.712239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102855, -0.141017, 0.984650,
		0.245116, 0.962967, 0.112308,
		-0.964022, 0.229802, 0.133612,
		22.214184, 18.844446, 10.752323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875986, 19.142031, 11.263116>,  <22.889000, 18.683584, 10.658794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875986, 19.142031, 11.263116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507851, 19.000027, 11.197459>,  <22.286970, 18.914824, 11.158065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507851, 19.000027, 11.197459>,  <22.875986, 19.142031, 11.263116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507851, 19.000027, 11.197459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103014, -0.184834, 0.977356,
		-0.377312, 0.916408, 0.133539,
		-0.920339, -0.355012, -0.164143,
		22.231749, 18.893522, 11.148216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.598066, 19.356001, 11.911848>,  <22.875986, 19.142031, 11.263116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.598066, 19.356001, 11.911848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344532, 19.079788, 11.772467>,  <22.192411, 18.914061, 11.688838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344532, 19.079788, 11.772467>,  <22.598066, 19.356001, 11.911848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344532, 19.079788, 11.772467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362857, -0.132389, 0.922393,
		-0.683072, 0.711083, -0.166651,
		-0.633835, -0.690531, -0.348453,
		22.154381, 18.872629, 11.667931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970976, 19.509953, 12.177835>,  <22.598066, 19.356001, 11.911848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970976, 19.509953, 12.177835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912083, 19.128914, 12.071341>,  <21.876747, 18.900291, 12.007443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912083, 19.128914, 12.071341>,  <21.970976, 19.509953, 12.177835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.912083, 19.128914, 12.071341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333162, -0.205678, 0.920163,
		-0.931303, 0.224178, -0.287086,
		-0.147233, -0.952597, -0.266236,
		21.867912, 18.843134, 11.991469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.299076, 19.390047, 12.422540>,  <21.970976, 19.509953, 12.177835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.299076, 19.390047, 12.422540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476768, 19.034676, 12.376313>,  <21.583384, 18.821453, 12.348577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476768, 19.034676, 12.376313>,  <21.299076, 19.390047, 12.422540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476768, 19.034676, 12.376313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131344, -0.192182, 0.972530,
		-0.886232, -0.416849, -0.202063,
		0.444231, -0.888427, -0.115567,
		21.610039, 18.768147, 12.341643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852938, 18.823286, 12.804555>,  <21.299076, 19.390047, 12.422540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852938, 18.823286, 12.804555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225224, 18.683884, 12.760163>,  <21.448595, 18.600243, 12.733528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225224, 18.683884, 12.760163>,  <20.852938, 18.823286, 12.804555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225224, 18.683884, 12.760163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025638, -0.364850, 0.930713,
		-0.364850, -0.863382, -0.348506,
		-0.930713, 0.348506, 0.110980,
		21.504438, 18.579332, 12.726870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.850922, 18.085585, 12.883762>,  <20.852938, 18.823286, 12.804555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.850922, 18.085585, 12.883762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.221020, 18.225426, 12.942686>,  <21.443079, 18.309330, 12.978041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.221020, 18.225426, 12.942686>,  <20.850922, 18.085585, 12.883762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.221020, 18.225426, 12.942686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006022, -0.374714, 0.927121,
		0.379324, -0.858700, -0.344597,
		0.925244, 0.349604, 0.147309,
		21.498592, 18.330307, 12.986879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.205961, 17.506790, 13.166353>,  <20.850922, 18.085585, 12.883762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.205961, 17.506790, 13.166353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.454586, 17.810387, 13.243912>,  <21.603762, 17.992544, 13.290446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.454586, 17.810387, 13.243912>,  <21.205961, 17.506790, 13.166353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.454586, 17.810387, 13.243912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299732, -0.459104, 0.836292,
		0.723755, -0.461691, -0.512855,
		0.621563, 0.758989, 0.193895,
		21.641054, 18.038084, 13.302080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.841564, 17.178118, 13.408597>,  <21.205961, 17.506790, 13.166353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.841564, 17.178118, 13.408597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824219, 17.558849, 13.530014>,  <21.813812, 17.787289, 13.602864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824219, 17.558849, 13.530014>,  <21.841564, 17.178118, 13.408597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824219, 17.558849, 13.530014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082061, -0.299408, 0.950590,
		0.995683, 0.066130, -0.065125,
		-0.043364, 0.951831, 0.303542,
		21.811211, 17.844398, 13.621077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.271793, 17.087021, 13.965026>,  <21.841564, 17.178118, 13.408597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.271793, 17.087021, 13.965026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.123169, 17.455715, 14.009468>,  <22.033995, 17.676931, 14.036134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.123169, 17.455715, 14.009468>,  <22.271793, 17.087021, 13.965026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.123169, 17.455715, 14.009468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175315, -0.047861, 0.983348,
		0.911706, 0.384851, -0.143811,
		-0.371560, 0.921737, 0.111105,
		22.011702, 17.732237, 14.042800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750574, 17.305626, 14.365964>,  <22.271793, 17.087021, 13.965026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750574, 17.305626, 14.365964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419819, 17.527905, 14.400505>,  <22.221365, 17.661272, 14.421230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419819, 17.527905, 14.400505>,  <22.750574, 17.305626, 14.365964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419819, 17.527905, 14.400505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076224, -0.041389, 0.996231,
		0.557176, 0.830354, -0.008133,
		-0.826888, 0.555697, 0.086354,
		22.171753, 17.694614, 14.426412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.896463, 17.954884, 14.850142>,  <22.750574, 17.305626, 14.365964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.896463, 17.954884, 14.850142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504528, 17.874977, 14.848906>,  <22.269367, 17.827034, 14.848164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504528, 17.874977, 14.848906>,  <22.896463, 17.954884, 14.850142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504528, 17.874977, 14.848906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000307, -0.013974, 0.999902,
		-0.199788, 0.979744, 0.013631,
		-0.979839, -0.199765, -0.003092,
		22.210577, 17.815048, 14.847978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.716946, 18.391390, 15.357339>,  <22.896463, 17.954884, 14.850142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.716946, 18.391390, 15.357339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389694, 18.165401, 15.314499>,  <22.193342, 18.029808, 15.288795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389694, 18.165401, 15.314499>,  <22.716946, 18.391390, 15.357339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389694, 18.165401, 15.314499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168139, 0.056925, 0.984118,
		-0.549902, 0.823144, -0.141566,
		-0.818130, -0.564972, -0.107099,
		22.144255, 17.995911, 15.282370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069105, 18.715391, 15.570198>,  <22.716946, 18.391390, 15.357339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069105, 18.715391, 15.570198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033543, 18.317871, 15.596889>,  <22.012205, 18.079359, 15.612905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033543, 18.317871, 15.596889>,  <22.069105, 18.715391, 15.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033543, 18.317871, 15.596889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232246, 0.085830, 0.968863,
		-0.968586, 0.070640, -0.238437,
		-0.088906, -0.993802, 0.066728,
		22.006870, 18.019730, 15.616908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446634, 18.580084, 15.871479>,  <22.069105, 18.715391, 15.570198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446634, 18.580084, 15.871479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647568, 18.251945, 15.980797>,  <21.768127, 18.055061, 16.046387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647568, 18.251945, 15.980797>,  <21.446634, 18.580084, 15.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.647568, 18.251945, 15.980797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328867, 0.111053, 0.937824,
		-0.799692, -0.560978, -0.214000,
		0.502333, -0.820348, 0.273295,
		21.798267, 18.005840, 16.062786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.039690, 18.313505, 16.431385>,  <21.446634, 18.580084, 15.871479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.039690, 18.313505, 16.431385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377747, 18.101646, 16.460255>,  <21.580580, 17.974531, 16.477577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377747, 18.101646, 16.460255>,  <21.039690, 18.313505, 16.431385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377747, 18.101646, 16.460255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180295, -0.155340, 0.971269,
		-0.503220, -0.833872, -0.226777,
		0.845141, -0.529648, 0.072173,
		21.631289, 17.942753, 16.481907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866333, 17.821758, 16.915295>,  <21.039690, 18.313505, 16.431385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866333, 17.821758, 16.915295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265671, 17.815773, 16.937504>,  <21.505274, 17.812181, 16.950829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265671, 17.815773, 16.937504>,  <20.866333, 17.821758, 16.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265671, 17.815773, 16.937504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056428, -0.068925, 0.996025,
		-0.011072, -0.997510, -0.069655,
		0.998345, -0.014958, 0.055524,
		21.565174, 17.811285, 16.954161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036648, 17.362278, 17.400324>,  <20.866333, 17.821758, 16.915295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036648, 17.362278, 17.400324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.358303, 17.599762, 17.388529>,  <21.551296, 17.742252, 17.381453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.358303, 17.599762, 17.388529>,  <21.036648, 17.362278, 17.400324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.358303, 17.599762, 17.388529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039379, -0.003712, 0.999217,
		0.593136, -0.804670, -0.026364,
		0.804138, 0.593710, -0.029486,
		21.599545, 17.777876, 17.379683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387344, 17.034431, 17.772577>,  <21.036648, 17.362278, 17.400324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387344, 17.034431, 17.772577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597004, 17.375072, 17.775227>,  <21.722799, 17.579456, 17.776817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597004, 17.375072, 17.775227>,  <21.387344, 17.034431, 17.772577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597004, 17.375072, 17.775227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243641, -0.157404, 0.957007,
		0.816031, -0.500001, -0.289988,
		0.524150, 0.851600, 0.006625,
		21.754250, 17.630552, 17.777214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839363, 16.834183, 18.205341>,  <21.387344, 17.034431, 17.772577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839363, 16.834183, 18.205341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.890408, 17.230236, 18.182180>,  <21.921034, 17.467869, 18.168283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.890408, 17.230236, 18.182180>,  <21.839363, 16.834183, 18.205341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.890408, 17.230236, 18.182180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198121, 0.031756, 0.979663,
		0.971835, -0.136486, -0.192114,
		0.127609, 0.990133, -0.057903,
		21.928690, 17.527275, 18.164810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.544155, 17.027695, 18.318560>,  <21.839363, 16.834183, 18.205341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.544155, 17.027695, 18.318560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294571, 17.319141, 18.431549>,  <22.144819, 17.494009, 18.499342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294571, 17.319141, 18.431549>,  <22.544155, 17.027695, 18.318560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294571, 17.319141, 18.431549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287268, -0.122297, 0.950011,
		0.726738, 0.673916, -0.133000,
		-0.623962, 0.728615, 0.282473,
		22.107382, 17.537725, 18.516291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.893948, 17.476048, 18.758636>,  <22.544155, 17.027695, 18.318560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.893948, 17.476048, 18.758636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518322, 17.592773, 18.831299>,  <22.292946, 17.662809, 18.874897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518322, 17.592773, 18.831299>,  <22.893948, 17.476048, 18.758636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518322, 17.592773, 18.831299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223915, 0.118354, 0.967396,
		0.260800, 0.949124, -0.176484,
		-0.939066, 0.291814, 0.181657,
		22.236603, 17.680317, 18.885796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.952421, 17.979383, 19.315521>,  <22.893948, 17.476048, 18.758636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.952421, 17.979383, 19.315521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573093, 17.854477, 19.338089>,  <22.345497, 17.779533, 19.351629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573093, 17.854477, 19.338089>,  <22.952421, 17.979383, 19.315521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573093, 17.854477, 19.338089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023056, 0.109522, 0.993717,
		-0.316484, 0.943660, -0.096662,
		-0.948318, -0.312267, 0.056419,
		22.288599, 17.760798, 19.355015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622618, 18.475056, 19.833004>,  <22.952421, 17.979383, 19.315521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622618, 18.475056, 19.833004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393986, 18.147705, 19.809164>,  <22.256805, 17.951294, 19.794861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393986, 18.147705, 19.809164>,  <22.622618, 18.475056, 19.833004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.393986, 18.147705, 19.809164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194947, 0.064884, 0.978665,
		-0.797051, 0.571005, -0.196627,
		-0.571581, -0.818378, -0.059600,
		22.222511, 17.902191, 19.791285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163382, 18.652864, 20.376202>,  <22.622618, 18.475056, 19.833004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163382, 18.652864, 20.376202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.127251, 18.266731, 20.278248>,  <22.105572, 18.035051, 20.219475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.127251, 18.266731, 20.278248>,  <22.163382, 18.652864, 20.376202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.127251, 18.266731, 20.278248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166954, -0.227735, 0.959304,
		-0.981819, 0.127534, -0.140596,
		-0.090326, -0.965335, -0.244887,
		22.100153, 17.977131, 20.204782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656574, 18.606842, 20.792856>,  <22.163382, 18.652864, 20.376202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656574, 18.606842, 20.792856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807461, 18.244331, 20.716576>,  <21.897993, 18.026825, 20.670807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807461, 18.244331, 20.716576>,  <21.656574, 18.606842, 20.792856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807461, 18.244331, 20.716576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465502, -0.363554, 0.806931,
		-0.800634, -0.215616, -0.559013,
		0.377218, -0.906277, -0.190704,
		21.920626, 17.972448, 20.659365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161522, 18.114445, 21.075958>,  <21.656574, 18.606842, 20.792856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161522, 18.114445, 21.075958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519375, 17.936169, 21.063356>,  <21.734087, 17.829203, 21.055796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519375, 17.936169, 21.063356>,  <21.161522, 18.114445, 21.075958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519375, 17.936169, 21.063356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088636, -0.246138, 0.965173,
		-0.437925, -0.860683, -0.259707,
		0.894632, -0.445693, -0.031503,
		21.787766, 17.802462, 21.053905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.050594, 17.387495, 21.208942>,  <21.161522, 18.114445, 21.075958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.050594, 17.387495, 21.208942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410770, 17.522114, 21.319174>,  <21.626877, 17.602884, 21.385313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410770, 17.522114, 21.319174>,  <21.050594, 17.387495, 21.208942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410770, 17.522114, 21.319174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155939, -0.341676, 0.926791,
		0.406067, -0.877493, -0.255178,
		0.900441, 0.336547, 0.275579,
		21.680902, 17.623077, 21.401848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099129, 16.956549, 21.708523>,  <21.050594, 17.387495, 21.208942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099129, 16.956549, 21.708523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375946, 17.240112, 21.762964>,  <21.542036, 17.410252, 21.795630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375946, 17.240112, 21.762964>,  <21.099129, 16.956549, 21.708523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375946, 17.240112, 21.762964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143797, -0.049381, 0.988374,
		0.707389, -0.703568, 0.067765,
		0.692042, 0.708910, 0.136103,
		21.583559, 17.452785, 21.803795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385550, 16.754614, 22.341177>,  <21.099129, 16.956549, 21.708523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385550, 16.754614, 22.341177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.493435, 17.138546, 22.310249>,  <21.558167, 17.368906, 22.291693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.493435, 17.138546, 22.310249>,  <21.385550, 16.754614, 22.341177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493435, 17.138546, 22.310249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082623, 0.103065, 0.991237,
		0.959389, -0.260963, 0.107103,
		0.269715, 0.959831, -0.077318,
		21.574350, 17.426495, 22.287054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929451, 16.862019, 22.842360>,  <21.385550, 16.754614, 22.341177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929451, 16.862019, 22.842360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.774540, 17.220818, 22.757120>,  <21.681593, 17.436098, 22.705976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.774540, 17.220818, 22.757120>,  <21.929451, 16.862019, 22.842360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774540, 17.220818, 22.757120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088418, 0.193935, 0.977022,
		0.917714, 0.397219, 0.004204,
		-0.387276, 0.896998, -0.213098,
		21.658358, 17.489918, 22.693190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287397, 17.320486, 23.346018>,  <21.929451, 16.862019, 22.842360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287397, 17.320486, 23.346018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962593, 17.519367, 23.223751>,  <21.767712, 17.638695, 23.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962593, 17.519367, 23.223751>,  <22.287397, 17.320486, 23.346018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962593, 17.519367, 23.223751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214711, 0.232517, 0.948596,
		0.542716, 0.835899, -0.082052,
		-0.812009, 0.497201, -0.305668,
		21.718990, 17.668528, 23.132051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254435, 18.012766, 23.581495>,  <22.287397, 17.320486, 23.346018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254435, 18.012766, 23.581495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881592, 17.879501, 23.524670>,  <21.657887, 17.799543, 23.490574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881592, 17.879501, 23.524670>,  <22.254435, 18.012766, 23.581495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881592, 17.879501, 23.524670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241345, 0.278872, 0.929507,
		-0.270058, 0.900685, -0.340345,
		-0.932106, -0.333161, -0.142065,
		21.601959, 17.779552, 23.482050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811325, 18.456755, 23.902010>,  <22.254435, 18.012766, 23.581495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811325, 18.456755, 23.902010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.563232, 18.145569, 23.861849>,  <21.414377, 17.958857, 23.837751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.563232, 18.145569, 23.861849>,  <21.811325, 18.456755, 23.902010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563232, 18.145569, 23.861849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323118, 0.136751, 0.936426,
		-0.714777, 0.613245, -0.336192,
		-0.620233, -0.777965, -0.100404,
		21.377163, 17.912180, 23.831728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161919, 18.726665, 23.942999>,  <21.811325, 18.456755, 23.902010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161919, 18.726665, 23.942999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.157562, 18.339375, 24.042934>,  <21.154949, 18.107000, 24.102896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.157562, 18.339375, 24.042934>,  <21.161919, 18.726665, 23.942999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157562, 18.339375, 24.042934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222259, 0.245949, 0.943457,
		-0.974927, -0.045254, -0.217875,
		-0.010891, -0.968226, 0.249841,
		21.154295, 18.048906, 24.117887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.651564, 18.664801, 24.397493>,  <21.161919, 18.726665, 23.942999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.651564, 18.664801, 24.397493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871189, 18.334625, 24.449923>,  <21.002964, 18.136520, 24.481380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871189, 18.334625, 24.449923>,  <20.651564, 18.664801, 24.397493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871189, 18.334625, 24.449923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056818, 0.193331, 0.979487,
		-0.833846, -0.530354, 0.153051,
		0.549064, -0.825438, 0.131074,
		21.035908, 18.086994, 24.489244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.413715, 18.331579, 25.024309>,  <20.651564, 18.664801, 24.397493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.413715, 18.331579, 25.024309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793510, 18.209400, 24.995546>,  <21.021387, 18.136093, 24.978289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793510, 18.209400, 24.995546>,  <20.413715, 18.331579, 25.024309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793510, 18.209400, 24.995546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122997, 0.151439, 0.980784,
		-0.288690, -0.940089, 0.181359,
		0.949489, -0.305450, -0.071909,
		21.078358, 18.117765, 24.973974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533031, 17.903992, 25.611177>,  <20.413715, 18.331579, 25.024309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533031, 17.903992, 25.611177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889576, 18.033195, 25.483967>,  <21.103502, 18.110718, 25.407640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889576, 18.033195, 25.483967>,  <20.533031, 17.903992, 25.611177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889576, 18.033195, 25.483967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263131, 0.202574, 0.943253,
		0.369104, -0.924461, 0.095572,
		0.891361, 0.323010, -0.318025,
		21.156984, 18.130098, 25.388559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015047, 17.716057, 26.081570>,  <20.533031, 17.903992, 25.611177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015047, 17.716057, 26.081570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235897, 17.982704, 25.881258>,  <21.368406, 18.142693, 25.761072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235897, 17.982704, 25.881258>,  <21.015047, 17.716057, 26.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235897, 17.982704, 25.881258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340220, 0.368212, 0.865257,
		0.761191, -0.648103, -0.023499,
		0.552123, 0.666621, -0.500777,
		21.401533, 18.182690, 25.731026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643251, 17.821808, 26.575022>,  <21.015047, 17.716057, 26.081570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643251, 17.821808, 26.575022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671608, 18.115189, 26.304607>,  <21.688622, 18.291218, 26.142359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671608, 18.115189, 26.304607>,  <21.643251, 17.821808, 26.575022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671608, 18.115189, 26.304607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445151, 0.583245, 0.679460,
		0.892645, -0.349104, -0.285151,
		0.070890, 0.733452, -0.676035,
		21.692875, 18.335224, 26.101797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336447, 18.014273, 26.541977>,  <21.643251, 17.821808, 26.575022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336447, 18.014273, 26.541977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151207, 18.339485, 26.400826>,  <22.040064, 18.534613, 26.316135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151207, 18.339485, 26.400826>,  <22.336447, 18.014273, 26.541977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151207, 18.339485, 26.400826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526296, 0.572606, 0.628597,
		0.713128, 0.105385, -0.693068,
		-0.463099, 0.813029, -0.352877,
		22.012278, 18.583393, 26.294962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.903797, 18.558804, 26.343958>,  <22.336447, 18.014273, 26.541977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.903797, 18.558804, 26.343958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545986, 18.732647, 26.385788>,  <22.331301, 18.836954, 26.410887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545986, 18.732647, 26.385788>,  <22.903797, 18.558804, 26.343958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545986, 18.732647, 26.385788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414051, 0.717397, 0.560271,
		0.168476, 0.544478, -0.821681,
		-0.894526, 0.434610, 0.104577,
		22.277628, 18.863029, 26.417162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.985426, 19.276983, 26.049381>,  <22.903797, 18.558804, 26.343958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.985426, 19.276983, 26.049381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721642, 19.252632, 26.349089>,  <22.563370, 19.238022, 26.528913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721642, 19.252632, 26.349089>,  <22.985426, 19.276983, 26.049381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721642, 19.252632, 26.349089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557461, 0.629078, 0.541755,
		-0.504329, 0.774955, -0.380917,
		-0.659462, -0.060877, 0.749269,
		22.523804, 19.234369, 26.573870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798386, 19.957836, 26.353075>,  <22.985426, 19.276983, 26.049381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798386, 19.957836, 26.353075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738991, 19.657471, 26.610470>,  <22.703354, 19.477251, 26.764908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738991, 19.657471, 26.610470>,  <22.798386, 19.957836, 26.353075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738991, 19.657471, 26.610470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529963, 0.488950, 0.692869,
		-0.834920, 0.443907, 0.325354,
		-0.148488, -0.750916, 0.643488,
		22.694445, 19.432196, 26.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.619909, 20.261930, 27.017113>,  <22.798386, 19.957836, 26.353075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.619909, 20.261930, 27.017113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852451, 19.936840, 27.001589>,  <22.991976, 19.741787, 26.992275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852451, 19.936840, 27.001589>,  <22.619909, 20.261930, 27.017113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852451, 19.936840, 27.001589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592924, 0.390498, 0.704239,
		-0.557198, -0.432422, 0.708902,
		0.581353, -0.812725, -0.038808,
		23.026857, 19.693022, 26.989946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705580, 19.890320, 27.681160>,  <22.619909, 20.261930, 27.017113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705580, 19.890320, 27.681160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042561, 19.811356, 27.480640>,  <23.244749, 19.763977, 27.360329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042561, 19.811356, 27.480640>,  <22.705580, 19.890320, 27.681160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042561, 19.811356, 27.480640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535501, 0.204484, 0.819405,
		-0.059254, -0.958757, 0.277983,
		0.842453, -0.197414, -0.501299,
		23.295296, 19.752132, 27.330250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367390, 19.785816, 28.382555>,  <22.705580, 19.890320, 27.681160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367390, 19.785816, 28.382555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069321, 20.028091, 28.494165>,  <21.890478, 20.173456, 28.561131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069321, 20.028091, 28.494165>,  <22.367390, 19.785816, 28.382555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069321, 20.028091, 28.494165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150637, 0.254713, -0.955212,
		-0.649634, -0.753831, -0.098566,
		-0.745174, 0.605690, 0.279025,
		21.845768, 20.209799, 28.577873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.707182, 19.664164, 28.170280>,  <22.367390, 19.785816, 28.382555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.707182, 19.664164, 28.170280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770233, 20.058578, 28.191776>,  <21.808064, 20.295227, 28.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770233, 20.058578, 28.191776>,  <21.707182, 19.664164, 28.170280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.770233, 20.058578, 28.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205680, 0.086010, -0.974832,
		-0.965841, 0.142606, 0.216365,
		0.157627, 0.986035, 0.053741,
		21.817522, 20.354389, 28.207899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109484, 20.129980, 27.809002>,  <21.707182, 19.664164, 28.170280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109484, 20.129980, 27.809002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.463139, 20.316647, 27.818150>,  <21.675331, 20.428646, 27.823639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.463139, 20.316647, 27.818150>,  <21.109484, 20.129980, 27.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463139, 20.316647, 27.818150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174125, 0.374528, -0.910719,
		-0.433566, 0.801219, 0.412393,
		0.884138, 0.466665, 0.022871,
		21.728380, 20.456646, 27.825010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955082, 20.824574, 27.751492>,  <21.109484, 20.129980, 27.809002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955082, 20.824574, 27.751492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300091, 20.691818, 27.598701>,  <21.507095, 20.612165, 27.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300091, 20.691818, 27.598701>,  <20.955082, 20.824574, 27.751492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.300091, 20.691818, 27.598701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216158, 0.440868, -0.871155,
		0.457526, 0.833958, 0.308518,
		0.862523, -0.331888, -0.381975,
		21.558847, 20.592253, 27.484110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.077919, 21.337339, 27.361248>,  <20.955082, 20.824574, 27.751492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.077919, 21.337339, 27.361248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262665, 21.005219, 27.236488>,  <21.373512, 20.805946, 27.161633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262665, 21.005219, 27.236488>,  <21.077919, 21.337339, 27.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262665, 21.005219, 27.236488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184972, 0.253751, -0.949419,
		0.867449, 0.496194, -0.036384,
		0.461863, -0.830302, -0.311899,
		21.401224, 20.756128, 27.142920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699003, 21.546106, 26.924946>,  <21.077919, 21.337339, 27.361248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699003, 21.546106, 26.924946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522373, 21.196327, 26.844599>,  <21.416395, 20.986460, 26.796391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522373, 21.196327, 26.844599>,  <21.699003, 21.546106, 26.924946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522373, 21.196327, 26.844599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096078, 0.268675, -0.958427,
		0.892064, -0.403920, -0.202656,
		-0.441577, -0.874450, -0.200867,
		21.389900, 20.933992, 26.784338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034142, 21.244049, 26.341396>,  <21.699003, 21.546106, 26.924946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034142, 21.244049, 26.341396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683453, 21.051666, 26.343889>,  <21.473040, 20.936237, 26.345385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683453, 21.051666, 26.343889>,  <22.034142, 21.244049, 26.341396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683453, 21.051666, 26.343889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079380, 0.131896, -0.988080,
		0.474401, -0.866767, -0.153814,
		-0.876723, -0.480956, 0.006233,
		21.420435, 20.907379, 26.345758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072844, 21.132145, 25.677559>,  <22.034142, 21.244049, 26.341396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072844, 21.132145, 25.677559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704075, 21.049141, 25.808405>,  <21.482815, 20.999338, 25.886911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704075, 21.049141, 25.808405>,  <22.072844, 21.132145, 25.677559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704075, 21.049141, 25.808405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358130, 0.134663, -0.923909,
		0.147689, -0.968916, -0.198470,
		-0.921917, -0.207530, 0.327110,
		21.427500, 20.986887, 25.906538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792358, 20.612215, 25.232473>,  <22.072844, 21.132145, 25.677559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792358, 20.612215, 25.232473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492676, 20.822731, 25.393324>,  <21.312866, 20.949041, 25.489834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492676, 20.822731, 25.393324>,  <21.792358, 20.612215, 25.232473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492676, 20.822731, 25.393324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333258, 0.225145, -0.915559,
		-0.572387, -0.819956, 0.006710,
		-0.749208, 0.526291, 0.402127,
		21.267914, 20.980618, 25.513962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197304, 20.355639, 24.864977>,  <21.792358, 20.612215, 25.232473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197304, 20.355639, 24.864977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105801, 20.706879, 25.033075>,  <21.050900, 20.917624, 25.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105801, 20.706879, 25.033075>,  <21.197304, 20.355639, 24.864977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105801, 20.706879, 25.033075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466367, 0.280079, -0.839081,
		-0.854501, -0.387936, 0.345448,
		-0.228757, 0.878101, 0.420248,
		21.037174, 20.970308, 25.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449818, 20.396399, 24.644861>,  <21.197304, 20.355639, 24.864977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449818, 20.396399, 24.644861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551147, 20.767132, 24.755714>,  <20.611946, 20.989573, 24.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551147, 20.767132, 24.755714>,  <20.449818, 20.396399, 24.644861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551147, 20.767132, 24.755714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462790, 0.367680, -0.806621,
		-0.849501, 0.076082, 0.522072,
		0.253325, 0.926835, 0.277135,
		20.627146, 21.045183, 24.838856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883341, 20.831064, 24.630919>,  <20.449818, 20.396399, 24.644861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883341, 20.831064, 24.630919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193031, 21.082893, 24.604956>,  <20.378845, 21.233992, 24.589378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193031, 21.082893, 24.604956>,  <19.883341, 20.831064, 24.630919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193031, 21.082893, 24.604956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388307, 0.391520, -0.834224,
		-0.499795, 0.671080, 0.547592,
		0.774224, 0.629575, -0.064905,
		20.425299, 21.271767, 24.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.579206, 21.421137, 24.429167>,  <19.883341, 20.831064, 24.630919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.579206, 21.421137, 24.429167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.967838, 21.437569, 24.335920>,  <20.201017, 21.447428, 24.279972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.967838, 21.437569, 24.335920>,  <19.579206, 21.421137, 24.429167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967838, 21.437569, 24.335920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232258, 0.355537, -0.905345,
		0.045693, 0.933759, 0.354973,
		0.971581, 0.041077, -0.233118,
		20.259312, 21.449892, 24.265985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655701, 22.049950, 24.239124>,  <19.579206, 21.421137, 24.429167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655701, 22.049950, 24.239124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960205, 21.851284, 24.072363>,  <20.142908, 21.732084, 23.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960205, 21.851284, 24.072363>,  <19.655701, 22.049950, 24.239124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960205, 21.851284, 24.072363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220219, 0.406699, -0.886622,
		0.609908, 0.766760, 0.200228,
		0.761259, -0.496664, -0.416904,
		20.188583, 21.702286, 23.947292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905830, 22.564447, 23.746496>,  <19.655701, 22.049950, 24.239124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905830, 22.564447, 23.746496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034836, 22.206821, 23.622154>,  <20.112238, 21.992245, 23.547550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034836, 22.206821, 23.622154>,  <19.905830, 22.564447, 23.746496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034836, 22.206821, 23.622154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164147, 0.270600, -0.948595,
		0.932224, 0.356959, -0.059487,
		0.322512, -0.894067, -0.310853,
		20.131590, 21.938601, 23.528898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252296, 22.746353, 23.152458>,  <19.905830, 22.564447, 23.746496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252296, 22.746353, 23.152458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231106, 22.348217, 23.120230>,  <20.218391, 22.109335, 23.100893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231106, 22.348217, 23.120230>,  <20.252296, 22.746353, 23.152458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231106, 22.348217, 23.120230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095243, 0.085351, -0.991788,
		0.994043, -0.044867, -0.099321,
		-0.052975, -0.995340, -0.080569,
		20.215214, 22.049616, 23.096060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490648, 22.591471, 22.454327>,  <20.252296, 22.746353, 23.152458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490648, 22.591471, 22.454327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.272125, 22.267200, 22.538567>,  <20.141012, 22.072638, 22.589109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.272125, 22.267200, 22.538567>,  <20.490648, 22.591471, 22.454327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272125, 22.267200, 22.538567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058505, -0.213889, -0.975104,
		0.835540, -0.545026, 0.069420,
		-0.546306, -0.810678, 0.210599,
		20.108234, 22.023996, 22.601746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.791636, 22.025192, 22.168394>,  <20.490648, 22.591471, 22.454327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.791636, 22.025192, 22.168394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414589, 21.905933, 22.228508>,  <20.188362, 21.834377, 22.264576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414589, 21.905933, 22.228508>,  <20.791636, 22.025192, 22.168394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414589, 21.905933, 22.228508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111020, -0.144619, -0.983239,
		0.314885, -0.943501, 0.103219,
		-0.942615, -0.298148, 0.150286,
		20.131805, 21.816488, 22.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865210, 21.359262, 21.836510>,  <20.791636, 22.025192, 22.168394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865210, 21.359262, 21.836510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473782, 21.427208, 21.883070>,  <20.238926, 21.467976, 21.911005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473782, 21.427208, 21.883070>,  <20.865210, 21.359262, 21.836510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473782, 21.427208, 21.883070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180022, -0.431275, -0.884078,
		-0.099973, -0.886086, 0.452612,
		-0.978569, 0.169864, 0.116399,
		20.180210, 21.478167, 21.917990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453598, 20.746725, 21.720953>,  <20.865210, 21.359262, 21.836510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453598, 20.746725, 21.720953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.192036, 21.043022, 21.659359>,  <20.035099, 21.220800, 21.622402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.192036, 21.043022, 21.659359>,  <20.453598, 20.746725, 21.720953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.192036, 21.043022, 21.659359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259463, -0.410744, -0.874053,
		-0.710696, -0.531593, 0.460782,
		-0.653904, 0.740742, -0.153985,
		19.995865, 21.265245, 21.613163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744501, 20.485035, 21.675793>,  <20.453598, 20.746725, 21.720953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744501, 20.485035, 21.675793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768394, 20.832306, 21.478733>,  <19.782730, 21.040668, 21.360497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768394, 20.832306, 21.478733>,  <19.744501, 20.485035, 21.675793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768394, 20.832306, 21.478733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267763, -0.461507, -0.845762,
		-0.961631, 0.182434, 0.204898,
		0.059734, 0.868176, -0.492648,
		19.786314, 21.092758, 21.330938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360624, 20.365900, 21.144789>,  <19.744501, 20.485035, 21.675793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360624, 20.365900, 21.144789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530910, 20.701900, 21.010229>,  <19.633081, 20.903502, 20.929493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530910, 20.701900, 21.010229>,  <19.360624, 20.365900, 21.144789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530910, 20.701900, 21.010229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098643, -0.326472, -0.940045,
		-0.899465, 0.433375, -0.056123,
		0.425714, 0.840001, -0.336400,
		19.658625, 20.953901, 20.909309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052523, 20.554886, 20.640860>,  <19.360624, 20.365900, 21.144789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052523, 20.554886, 20.640860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376614, 20.772472, 20.553562>,  <19.571068, 20.903025, 20.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376614, 20.772472, 20.553562>,  <19.052523, 20.554886, 20.640860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376614, 20.772472, 20.553562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128155, -0.198932, -0.971598,
		-0.571933, 0.815185, -0.091468,
		0.810228, 0.543966, -0.218246,
		19.619682, 20.935663, 20.488089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866833, 21.055960, 20.093227>,  <19.052523, 20.554886, 20.640860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866833, 21.055960, 20.093227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264812, 21.015816, 20.093216>,  <19.503601, 20.991730, 20.093208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264812, 21.015816, 20.093216>,  <18.866833, 21.055960, 20.093227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264812, 21.015816, 20.093216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010713, -0.105913, -0.994318,
		0.099787, 0.989298, -0.106454,
		0.994951, -0.100360, -0.000030,
		19.563297, 20.985708, 20.093206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019672, 21.286104, 19.450760>,  <18.866833, 21.055960, 20.093227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019672, 21.286104, 19.450760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375744, 21.135944, 19.554031>,  <19.589386, 21.045849, 19.615995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375744, 21.135944, 19.554031>,  <19.019672, 21.286104, 19.450760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375744, 21.135944, 19.554031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231855, -0.114557, -0.965981,
		0.392205, 0.919756, -0.014938,
		0.890179, -0.375399, 0.258180,
		19.642797, 21.023325, 19.631485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535473, 21.631645, 19.015217>,  <19.019672, 21.286104, 19.450760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535473, 21.631645, 19.015217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732624, 21.302216, 19.127501>,  <19.850914, 21.104557, 19.194870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732624, 21.302216, 19.127501>,  <19.535473, 21.631645, 19.015217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732624, 21.302216, 19.127501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263836, -0.165965, -0.950182,
		0.829133, 0.542385, 0.135488,
		0.492879, -0.823574, 0.280708,
		19.880487, 21.055143, 19.211714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087898, 21.653116, 18.614788>,  <19.535473, 21.631645, 19.015217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087898, 21.653116, 18.614788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065445, 21.269310, 18.725189>,  <20.051973, 21.039026, 18.791430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065445, 21.269310, 18.725189>,  <20.087898, 21.653116, 18.614788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065445, 21.269310, 18.725189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061115, -0.279221, -0.958280,
		0.996551, -0.036924, 0.074314,
		-0.056133, -0.959517, 0.276001,
		20.048605, 20.981455, 18.807989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.574718, 21.358555, 18.169500>,  <20.087898, 21.653116, 18.614788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.574718, 21.358555, 18.169500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375984, 21.031841, 18.286814>,  <20.256742, 20.835814, 18.357203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375984, 21.031841, 18.286814>,  <20.574718, 21.358555, 18.169500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375984, 21.031841, 18.286814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126254, -0.266324, -0.955579,
		0.858611, -0.511795, 0.029197,
		-0.496837, -0.816785, 0.293285,
		20.226933, 20.786806, 18.374800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894587, 20.806204, 17.978048>,  <20.574718, 21.358555, 18.169500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894587, 20.806204, 17.978048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503712, 20.724724, 18.002081>,  <20.269186, 20.675837, 18.016500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503712, 20.724724, 18.002081>,  <20.894587, 20.806204, 17.978048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503712, 20.724724, 18.002081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014364, -0.218867, -0.975649,
		0.211889, -0.954256, 0.210948,
		-0.977188, -0.203699, 0.060083,
		20.210556, 20.663614, 18.020105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895699, 20.302372, 17.595350>,  <20.894587, 20.806204, 17.978048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895699, 20.302372, 17.595350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505665, 20.385017, 17.627657>,  <20.271645, 20.434605, 17.647041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505665, 20.385017, 17.627657>,  <20.895699, 20.302372, 17.595350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505665, 20.385017, 17.627657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130011, -0.237240, -0.962712,
		-0.179741, -0.949226, 0.258190,
		-0.975085, 0.206606, 0.080768,
		20.213140, 20.447001, 17.651886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474945, 19.675140, 17.264477>,  <20.895699, 20.302372, 17.595350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474945, 19.675140, 17.264477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223278, 19.985405, 17.284470>,  <20.072277, 20.171564, 17.296465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223278, 19.985405, 17.284470>,  <20.474945, 19.675140, 17.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223278, 19.985405, 17.284470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252963, -0.143535, -0.956769,
		-0.734953, -0.614613, 0.286521,
		-0.629169, 0.775660, 0.049983,
		20.034527, 20.218103, 17.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889889, 19.417547, 17.043936>,  <20.474945, 19.675140, 17.264477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889889, 19.417547, 17.043936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873329, 19.813477, 16.989477>,  <19.863394, 20.051035, 16.956802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873329, 19.813477, 16.989477>,  <19.889889, 19.417547, 17.043936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873329, 19.813477, 16.989477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354512, -0.141951, -0.924214,
		-0.934134, 0.010005, 0.356780,
		-0.041399, 0.989823, -0.136149,
		19.860910, 20.110424, 16.948633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207607, 19.555595, 16.731613>,  <19.889889, 19.417547, 17.043936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207607, 19.555595, 16.731613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458755, 19.857250, 16.654613>,  <19.609444, 20.038244, 16.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458755, 19.857250, 16.654613>,  <19.207607, 19.555595, 16.731613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.458755, 19.857250, 16.654613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156920, -0.119594, -0.980344,
		-0.762337, 0.645734, 0.043250,
		0.627868, 0.754139, -0.192499,
		19.647116, 20.083492, 16.596865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881779, 19.688837, 16.117302>,  <19.207607, 19.555595, 16.731613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881779, 19.688837, 16.117302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.234776, 19.876911, 16.112719>,  <19.446573, 19.989756, 16.109968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.234776, 19.876911, 16.112719>,  <18.881779, 19.688837, 16.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234776, 19.876911, 16.112719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067393, -0.150526, -0.986306,
		-0.465470, 0.869638, -0.164525,
		0.882494, 0.470184, -0.011458,
		19.499523, 20.017965, 16.109282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810329, 20.273853, 15.705871>,  <18.881779, 19.688837, 16.117302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810329, 20.273853, 15.705871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206738, 20.221687, 15.694042>,  <19.444582, 20.190388, 15.686945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206738, 20.221687, 15.694042>,  <18.810329, 20.273853, 15.705871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206738, 20.221687, 15.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032439, -0.019926, -0.999275,
		0.129730, 0.991259, -0.023978,
		0.991019, -0.130414, -0.029570,
		19.504044, 20.182564, 15.685171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093214, 20.842110, 15.265923>,  <18.810329, 20.273853, 15.705871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093214, 20.842110, 15.265923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.377693, 20.561005, 15.273085>,  <19.548380, 20.392342, 15.277382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.377693, 20.561005, 15.273085>,  <19.093214, 20.842110, 15.265923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.377693, 20.561005, 15.273085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110432, 0.086531, -0.990110,
		0.694264, 0.706141, 0.139148,
		0.711198, -0.702764, 0.017906,
		19.591053, 20.350176, 15.278457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816427, 21.130911, 14.901834>,  <19.093214, 20.842110, 15.265923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816427, 21.130911, 14.901834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824062, 20.731007, 14.906116>,  <19.828644, 20.491064, 14.908686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824062, 20.731007, 14.906116>,  <19.816427, 21.130911, 14.901834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.824062, 20.731007, 14.906116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336532, -0.003659, -0.941665,
		0.941479, 0.021578, 0.336382,
		0.019088, -0.999761, 0.010707,
		19.829788, 20.431078, 14.909328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488258, 20.922348, 14.726204>,  <19.816427, 21.130911, 14.901834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488258, 20.922348, 14.726204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286209, 20.586800, 14.645065>,  <20.164980, 20.385471, 14.596382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286209, 20.586800, 14.645065>,  <20.488258, 20.922348, 14.726204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286209, 20.586800, 14.645065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290490, 0.056066, -0.955234,
		0.812689, -0.541438, 0.215363,
		-0.505125, -0.838869, -0.202846,
		20.134672, 20.335138, 14.584211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887506, 20.746132, 14.166457>,  <20.488258, 20.922348, 14.726204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887506, 20.746132, 14.166457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552841, 20.527351, 14.154881>,  <20.352041, 20.396084, 14.147935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552841, 20.527351, 14.154881>,  <20.887506, 20.746132, 14.166457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552841, 20.527351, 14.154881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028982, 0.096975, -0.994865,
		0.546949, -0.831529, -0.096987,
		-0.836664, -0.546951, -0.028941,
		20.301842, 20.363266, 14.146198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000221, 20.201353, 13.701093>,  <20.887506, 20.746132, 14.166457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000221, 20.201353, 13.701093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600838, 20.217739, 13.716084>,  <20.361208, 20.227570, 13.725078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600838, 20.217739, 13.716084>,  <21.000221, 20.201353, 13.701093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.600838, 20.217739, 13.716084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035042, 0.058610, -0.997666,
		-0.043068, -0.997440, -0.057084,
		-0.998457, 0.040967, 0.037477,
		20.301300, 20.230028, 13.727326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.763149, 19.685841, 13.223506>,  <21.000221, 20.201353, 13.701093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.763149, 19.685841, 13.223506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496414, 19.981365, 13.262463>,  <20.336372, 20.158680, 13.285836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496414, 19.981365, 13.262463>,  <20.763149, 19.685841, 13.223506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496414, 19.981365, 13.262463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057877, 0.078948, -0.995197,
		-0.742951, -0.669272, -0.009885,
		-0.666838, 0.738811, 0.097391,
		20.296362, 20.203009, 13.291679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480385, 19.553869, 12.604005>,  <20.763149, 19.685841, 13.223506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480385, 19.553869, 12.604005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353718, 19.915512, 12.718764>,  <20.277718, 20.132498, 12.787621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353718, 19.915512, 12.718764>,  <20.480385, 19.553869, 12.604005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353718, 19.915512, 12.718764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029583, 0.311732, -0.949710,
		-0.948075, -0.292256, -0.125462,
		-0.316669, 0.904107, 0.286899,
		20.258717, 20.186745, 12.804834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989902, 19.702343, 12.016291>,  <20.480385, 19.553869, 12.604005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989902, 19.702343, 12.016291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064442, 20.053448, 12.192839>,  <20.109165, 20.264111, 12.298767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064442, 20.053448, 12.192839>,  <19.989902, 19.702343, 12.016291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064442, 20.053448, 12.192839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149470, 0.469338, -0.870276,
		-0.971047, 0.096205, 0.218660,
		0.186350, 0.877762, 0.441370,
		20.120346, 20.316776, 12.325250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451590, 20.244850, 11.769117>,  <19.989902, 19.702343, 12.016291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451590, 20.244850, 11.769117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.762451, 20.463509, 11.893829>,  <19.948969, 20.594704, 11.968657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.762451, 20.463509, 11.893829>,  <19.451590, 20.244850, 11.769117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762451, 20.463509, 11.893829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088374, 0.395721, -0.914109,
		-0.623071, 0.737959, 0.259228,
		0.777156, 0.546646, 0.311779,
		19.995598, 20.627502, 11.987363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294371, 20.904303, 11.519942>,  <19.451590, 20.244850, 11.769117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294371, 20.904303, 11.519942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687153, 20.871571, 11.588142>,  <19.922821, 20.851931, 11.629063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687153, 20.871571, 11.588142>,  <19.294371, 20.904303, 11.519942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687153, 20.871571, 11.588142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185045, 0.229578, -0.955538,
		0.039050, 0.969844, 0.240578,
		0.981954, -0.081832, 0.170500,
		19.981739, 20.847021, 11.639293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695728, 21.435072, 11.651546>,  <19.294371, 20.904303, 11.519942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695728, 21.435072, 11.651546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307980, 21.521099, 11.604115>,  <18.075331, 21.572716, 11.575655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307980, 21.521099, 11.604115>,  <18.695728, 21.435072, 11.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307980, 21.521099, 11.604115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084349, 0.161910, 0.983194,
		0.230652, 0.963084, -0.138811,
		-0.969373, 0.215067, -0.118580,
		18.017168, 21.585619, 11.568541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586584, 22.036398, 11.988682>,  <18.695728, 21.435072, 11.651546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586584, 22.036398, 11.988682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229607, 21.856525, 11.974089>,  <18.015421, 21.748602, 11.965333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229607, 21.856525, 11.974089>,  <18.586584, 22.036398, 11.988682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229607, 21.856525, 11.974089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141607, 0.202418, 0.969007,
		-0.428361, 0.869949, -0.244325,
		-0.892443, -0.449683, -0.036483,
		17.961874, 21.721621, 11.963143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133795, 22.472576, 12.349899>,  <18.586584, 22.036398, 11.988682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133795, 22.472576, 12.349899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946182, 22.119526, 12.362443>,  <17.833614, 21.907696, 12.369969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946182, 22.119526, 12.362443>,  <18.133795, 22.472576, 12.349899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946182, 22.119526, 12.362443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175957, 0.128183, 0.976017,
		-0.865475, 0.452265, -0.215426,
		-0.469033, -0.882624, 0.031360,
		17.805473, 21.854738, 12.371851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529741, 22.637506, 12.674763>,  <18.133795, 22.472576, 12.349899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529741, 22.637506, 12.674763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.574921, 22.242077, 12.714693>,  <17.602028, 22.004820, 12.738651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.574921, 22.242077, 12.714693>,  <17.529741, 22.637506, 12.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574921, 22.242077, 12.714693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019226, 0.098276, 0.994973,
		-0.993415, -0.114300, -0.007906,
		0.112948, -0.988573, 0.099826,
		17.608805, 21.945505, 12.744641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888834, 22.272987, 12.999320>,  <17.529741, 22.637506, 12.674763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888834, 22.272987, 12.999320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183571, 22.005569, 13.039541>,  <17.360413, 21.845118, 13.063674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183571, 22.005569, 13.039541>,  <16.888834, 22.272987, 12.999320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183571, 22.005569, 13.039541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106989, 0.031550, 0.993760,
		-0.667548, -0.743000, -0.048280,
		0.736840, -0.668547, 0.100553,
		17.404623, 21.805006, 13.069707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714840, 21.779003, 13.486847>,  <16.888834, 22.272987, 12.999320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714840, 21.779003, 13.486847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113312, 21.752129, 13.509171>,  <17.352394, 21.736004, 13.522565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113312, 21.752129, 13.509171>,  <16.714840, 21.779003, 13.486847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113312, 21.752129, 13.509171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057924, -0.029960, 0.997871,
		-0.065384, -0.997290, -0.033738,
		0.996178, -0.067199, 0.055808,
		17.412165, 21.731972, 13.525913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856588, 21.277496, 13.865904>,  <16.714840, 21.779003, 13.486847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856588, 21.277496, 13.865904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.216831, 21.446579, 13.906347>,  <17.432978, 21.548029, 13.930614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.216831, 21.446579, 13.906347>,  <16.856588, 21.277496, 13.865904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216831, 21.446579, 13.906347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096998, -0.031287, 0.994793,
		0.423668, -0.905727, 0.012824,
		0.900609, 0.422706, 0.101110,
		17.487015, 21.573391, 13.936680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182196, 20.899548, 14.433052>,  <16.856588, 21.277496, 13.865904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182196, 20.899548, 14.433052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364681, 21.251774, 14.381714>,  <17.474173, 21.463110, 14.350911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364681, 21.251774, 14.381714>,  <17.182196, 20.899548, 14.433052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364681, 21.251774, 14.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106662, 0.197301, 0.974523,
		0.883454, -0.430904, 0.183934,
		0.456216, 0.880565, -0.128346,
		17.501547, 21.515944, 14.343210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727922, 20.947899, 14.876029>,  <17.182196, 20.899548, 14.433052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727922, 20.947899, 14.876029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638893, 21.327335, 14.786022>,  <17.585476, 21.554998, 14.732018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638893, 21.327335, 14.786022>,  <17.727922, 20.947899, 14.876029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638893, 21.327335, 14.786022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069834, 0.245726, 0.966821,
		0.972412, 0.199473, -0.120936,
		-0.222572, 0.948593, -0.225017,
		17.572121, 21.611914, 14.718517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134325, 21.271055, 15.349910>,  <17.727922, 20.947899, 14.876029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134325, 21.271055, 15.349910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.873940, 21.553978, 15.239664>,  <17.717709, 21.723732, 15.173517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.873940, 21.553978, 15.239664>,  <18.134325, 21.271055, 15.349910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873940, 21.553978, 15.239664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158828, 0.228133, 0.960588,
		0.742305, 0.669085, -0.036167,
		-0.650966, 0.707305, -0.275613,
		17.678650, 21.766171, 15.156981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345276, 21.870571, 15.656256>,  <18.134325, 21.271055, 15.349910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345276, 21.870571, 15.656256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.959293, 21.909477, 15.558767>,  <17.727705, 21.932821, 15.500274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.959293, 21.909477, 15.558767>,  <18.345276, 21.870571, 15.656256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959293, 21.909477, 15.558767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193659, 0.362787, 0.911527,
		0.177081, 0.926782, -0.331237,
		-0.964955, 0.097267, -0.243722,
		17.669807, 21.938658, 15.485651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214211, 22.393230, 16.065321>,  <18.345276, 21.870571, 15.656256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214211, 22.393230, 16.065321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851192, 22.259640, 15.963478>,  <17.633383, 22.179485, 15.902372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851192, 22.259640, 15.963478>,  <18.214211, 22.393230, 16.065321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851192, 22.259640, 15.963478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318429, 0.151969, 0.935686,
		-0.273803, 0.930251, -0.244266,
		-0.907543, -0.333975, -0.254609,
		17.578930, 22.159447, 15.887095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.828974, 22.844795, 16.125546>,  <18.214211, 22.393230, 16.065321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.828974, 22.844795, 16.125546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585052, 22.528725, 16.150084>,  <17.438700, 22.339083, 16.164806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585052, 22.528725, 16.150084>,  <17.828974, 22.844795, 16.125546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585052, 22.528725, 16.150084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199842, 0.228202, 0.952884,
		-0.766944, 0.568812, -0.297068,
		-0.609804, -0.790175, 0.061345,
		17.402111, 22.291672, 16.168488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159168, 23.084051, 16.318184>,  <17.828974, 22.844795, 16.125546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159168, 23.084051, 16.318184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197594, 22.703758, 16.436089>,  <17.220650, 22.475582, 16.506830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197594, 22.703758, 16.436089>,  <17.159168, 23.084051, 16.318184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197594, 22.703758, 16.436089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143220, 0.279845, 0.949302,
		-0.985018, -0.133411, -0.109280,
		0.096066, -0.950730, 0.294760,
		17.226414, 22.418539, 16.524517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784950, 23.041643, 16.827148>,  <17.159168, 23.084051, 16.318184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784950, 23.041643, 16.827148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981518, 22.700256, 16.896545>,  <17.099459, 22.495424, 16.938183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981518, 22.700256, 16.896545>,  <16.784950, 23.041643, 16.827148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981518, 22.700256, 16.896545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187934, 0.090594, 0.977995,
		-0.850406, -0.513209, -0.115877,
		0.491418, -0.853469, 0.173491,
		17.128942, 22.444216, 16.948593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445820, 22.635386, 17.459846>,  <16.784950, 23.041643, 16.827148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445820, 22.635386, 17.459846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812241, 22.483753, 17.407476>,  <17.032093, 22.392773, 17.376055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812241, 22.483753, 17.407476>,  <16.445820, 22.635386, 17.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812241, 22.483753, 17.407476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142296, 0.001995, 0.989822,
		-0.374964, -0.925360, 0.055770,
		0.916053, -0.379083, -0.130927,
		17.087057, 22.370028, 17.368198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495695, 21.976551, 17.876213>,  <16.445820, 22.635386, 17.459846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495695, 21.976551, 17.876213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.861404, 22.134377, 17.839489>,  <17.080830, 22.229071, 17.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.861404, 22.134377, 17.839489>,  <16.495695, 21.976551, 17.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861404, 22.134377, 17.839489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130549, -0.072430, 0.988793,
		0.383491, -0.916010, -0.117730,
		0.914271, 0.394563, -0.091808,
		17.135685, 22.252745, 17.811947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624853, 21.827665, 18.558420>,  <16.495695, 21.976551, 17.876213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624853, 21.827665, 18.558420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949497, 22.012600, 18.415573>,  <17.144283, 22.123560, 18.329865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949497, 22.012600, 18.415573>,  <16.624853, 21.827665, 18.558420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949497, 22.012600, 18.415573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393599, 0.018972, 0.919087,
		0.431703, -0.886501, -0.166577,
		0.811611, 0.462337, -0.357116,
		17.192980, 22.151300, 18.308437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229967, 21.307590, 18.805140>,  <16.624853, 21.827665, 18.558420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229967, 21.307590, 18.805140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326336, 21.690514, 18.741241>,  <17.384157, 21.920267, 18.702902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326336, 21.690514, 18.741241>,  <17.229967, 21.307590, 18.805140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.326336, 21.690514, 18.741241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291601, 0.085591, 0.952703,
		0.925703, -0.276110, -0.258531,
		0.240923, 0.957307, -0.159746,
		17.398613, 21.977705, 18.693317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844097, 21.477392, 19.193249>,  <17.229967, 21.307590, 18.805140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844097, 21.477392, 19.193249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683632, 21.839493, 19.137272>,  <17.587353, 22.056753, 19.103685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683632, 21.839493, 19.137272>,  <17.844097, 21.477392, 19.193249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683632, 21.839493, 19.137272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242929, 0.252446, 0.936620,
		0.883206, 0.341743, -0.321185,
		-0.401165, 0.905253, -0.139943,
		17.563282, 22.111069, 19.095289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354820, 21.902807, 19.294901>,  <17.844097, 21.477392, 19.193249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354820, 21.902807, 19.294901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046398, 22.149960, 19.356472>,  <17.861345, 22.298252, 19.393415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046398, 22.149960, 19.356472>,  <18.354820, 21.902807, 19.294901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046398, 22.149960, 19.356472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322602, 0.170634, 0.931027,
		0.548999, 0.767532, -0.330898,
		-0.771056, 0.617882, 0.153930,
		17.815081, 22.335323, 19.402651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725975, 22.501362, 19.605087>,  <18.354820, 21.902807, 19.294901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725975, 22.501362, 19.605087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333298, 22.485813, 19.679676>,  <18.097692, 22.476484, 19.724428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333298, 22.485813, 19.679676>,  <18.725975, 22.501362, 19.605087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333298, 22.485813, 19.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180455, 0.123578, 0.975789,
		-0.060973, 0.991573, -0.114301,
		-0.981692, -0.038870, 0.186470,
		18.038790, 22.474152, 19.735617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622011, 23.017384, 20.111826>,  <18.725975, 22.501362, 19.605087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622011, 23.017384, 20.111826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298149, 22.783825, 20.135574>,  <18.103832, 22.643690, 20.149822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298149, 22.783825, 20.135574>,  <18.622011, 23.017384, 20.111826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298149, 22.783825, 20.135574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051332, 0.030318, 0.998221,
		-0.584657, 0.811262, 0.005426,
		-0.809655, -0.583896, 0.059369,
		18.055252, 22.608656, 20.153385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129881, 23.410357, 20.667439>,  <18.622011, 23.017384, 20.111826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129881, 23.410357, 20.667439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015789, 23.029945, 20.619785>,  <17.947334, 22.801699, 20.591192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015789, 23.029945, 20.619785>,  <18.129881, 23.410357, 20.667439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015789, 23.029945, 20.619785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154054, -0.077192, 0.985043,
		-0.945997, 0.299318, -0.124492,
		-0.285232, -0.951026, -0.119135,
		17.930220, 22.744638, 20.584045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556923, 23.365122, 21.075762>,  <18.129881, 23.410357, 20.667439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556923, 23.365122, 21.075762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680321, 22.987213, 21.031519>,  <17.754360, 22.760468, 21.004972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680321, 22.987213, 21.031519>,  <17.556923, 23.365122, 21.075762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680321, 22.987213, 21.031519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181207, -0.172520, 0.968195,
		-0.933806, -0.278640, -0.224422,
		0.308495, -0.944773, -0.110609,
		17.772869, 22.703781, 20.998337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041971, 22.884392, 21.450043>,  <17.556923, 23.365122, 21.075762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041971, 22.884392, 21.450043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.346916, 22.627628, 21.417166>,  <17.529884, 22.473570, 21.397440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.346916, 22.627628, 21.417166>,  <17.041971, 22.884392, 21.450043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.346916, 22.627628, 21.417166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012430, -0.141508, 0.989859,
		-0.647029, -0.753612, -0.115859,
		0.762365, -0.641907, -0.082192,
		17.575626, 22.435057, 21.392508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782124, 22.228052, 21.771437>,  <17.041971, 22.884392, 21.450043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782124, 22.228052, 21.771437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180584, 22.259453, 21.787027>,  <17.419661, 22.278294, 21.796381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180584, 22.259453, 21.787027>,  <16.782124, 22.228052, 21.771437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180584, 22.259453, 21.787027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019121, -0.239320, 0.970752,
		0.085535, -0.967762, -0.236898,
		0.996152, 0.078503, 0.038975,
		17.479429, 22.283003, 21.798719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038818, 21.611382, 21.855692>,  <16.782124, 22.228052, 21.771437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038818, 21.611382, 21.855692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327995, 21.845673, 22.002268>,  <17.501501, 21.986248, 22.090214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327995, 21.845673, 22.002268>,  <17.038818, 21.611382, 21.855692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327995, 21.845673, 22.002268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050573, -0.484089, 0.873556,
		0.689056, -0.650062, -0.320346,
		0.722941, 0.585728, 0.366440,
		17.544878, 22.021391, 22.112200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463381, 21.192596, 22.186501>,  <17.038818, 21.611382, 21.855692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463381, 21.192596, 22.186501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601528, 21.532234, 22.346382>,  <17.684416, 21.736017, 22.442310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601528, 21.532234, 22.346382>,  <17.463381, 21.192596, 22.186501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601528, 21.532234, 22.346382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120338, -0.462463, 0.878434,
		0.930720, -0.255283, -0.261898,
		0.345368, 0.849092, 0.399704,
		17.705139, 21.786963, 22.466293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076616, 21.030241, 22.569506>,  <17.463381, 21.192596, 22.186501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076616, 21.030241, 22.569506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939171, 21.368298, 22.733294>,  <17.856703, 21.571131, 22.831566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939171, 21.368298, 22.733294>,  <18.076616, 21.030241, 22.569506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939171, 21.368298, 22.733294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029707, -0.426020, 0.904226,
		0.938641, 0.322869, 0.121280,
		-0.343614, 0.845141, 0.409471,
		17.836086, 21.621840, 22.856134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442118, 21.140219, 23.224052>,  <18.076616, 21.030241, 22.569506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442118, 21.140219, 23.224052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105465, 21.350636, 23.272934>,  <17.903473, 21.476887, 23.302263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105465, 21.350636, 23.272934>,  <18.442118, 21.140219, 23.224052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105465, 21.350636, 23.272934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032634, -0.275408, 0.960773,
		0.539065, 0.804629, 0.248959,
		-0.841632, 0.526044, 0.122204,
		17.852976, 21.508450, 23.309595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.562645, 21.479946, 23.823353>,  <18.442118, 21.140219, 23.224052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.562645, 21.479946, 23.823353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.166374, 21.516853, 23.783270>,  <17.928612, 21.538998, 23.759220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.166374, 21.516853, 23.783270>,  <18.562645, 21.479946, 23.823353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.166374, 21.516853, 23.783270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100441, 0.002123, 0.994941,
		0.092016, 0.995732, 0.007165,
		-0.990679, 0.092270, -0.100208,
		17.869171, 21.544535, 23.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371214, 21.836201, 24.459373>,  <18.562645, 21.479946, 23.823353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371214, 21.836201, 24.459373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025665, 21.702858, 24.308323>,  <17.818336, 21.622852, 24.217693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025665, 21.702858, 24.308323>,  <18.371214, 21.836201, 24.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025665, 21.702858, 24.308323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357619, -0.122062, 0.925856,
		-0.354733, 0.934866, -0.013768,
		-0.863871, -0.333355, -0.377626,
		17.766504, 21.602852, 24.195036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718882, 22.231058, 24.723673>,  <18.371214, 21.836201, 24.459373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718882, 22.231058, 24.723673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623383, 21.861752, 24.603285>,  <17.566084, 21.640167, 24.531052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623383, 21.861752, 24.603285>,  <17.718882, 22.231058, 24.723673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623383, 21.861752, 24.603285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443362, -0.172108, 0.879664,
		-0.863962, 0.343456, -0.368249,
		-0.238747, -0.923264, -0.300970,
		17.551758, 21.584772, 24.512993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096260, 22.109695, 25.110390>,  <17.718882, 22.231058, 24.723673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096260, 22.109695, 25.110390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201946, 21.740227, 24.999382>,  <17.265358, 21.518545, 24.932777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201946, 21.740227, 24.999382>,  <17.096260, 22.109695, 25.110390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201946, 21.740227, 24.999382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387576, -0.365176, 0.846423,
		-0.883162, -0.116078, -0.454479,
		0.264216, -0.923673, -0.277520,
		17.281212, 21.463125, 24.916126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540745, 21.678980, 25.229795>,  <17.096260, 22.109695, 25.110390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540745, 21.678980, 25.229795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.849812, 21.425282, 25.219036>,  <17.035252, 21.273064, 25.212580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.849812, 21.425282, 25.219036>,  <16.540745, 21.678980, 25.229795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849812, 21.425282, 25.219036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331908, -0.439740, 0.834545,
		-0.541136, -0.635894, -0.550282,
		0.772664, -0.634245, -0.026901,
		17.081612, 21.235008, 25.210966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239655, 20.947842, 25.388573>,  <16.540745, 21.678980, 25.229795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239655, 20.947842, 25.388573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634392, 20.944508, 25.453156>,  <16.871235, 20.942507, 25.491905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634392, 20.944508, 25.453156>,  <16.239655, 20.947842, 25.388573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634392, 20.944508, 25.453156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130855, -0.627673, 0.767401,
		0.094943, -0.778433, -0.620506,
		0.986845, -0.008337, 0.161455,
		16.930445, 20.942007, 25.501593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515999, 20.282095, 25.358919>,  <16.239655, 20.947842, 25.388573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515999, 20.282095, 25.358919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731033, 20.511890, 25.605808>,  <16.860054, 20.649767, 25.753942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731033, 20.511890, 25.605808>,  <16.515999, 20.282095, 25.358919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731033, 20.511890, 25.605808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227209, -0.606227, 0.762145,
		0.812020, -0.549958, -0.195371,
		0.537587, 0.574486, 0.617224,
		16.892309, 20.684237, 25.790976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.665237, 19.818520, 25.814735>,  <16.515999, 20.282095, 25.358919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.665237, 19.818520, 25.814735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475143, 19.469166, 25.772123>,  <16.361086, 19.259554, 25.746555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475143, 19.469166, 25.772123>,  <16.665237, 19.818520, 25.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475143, 19.469166, 25.772123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065480, 0.085634, -0.994172,
		0.877418, -0.479443, 0.016493,
		-0.475236, -0.873385, -0.106531,
		16.332573, 19.207150, 25.740164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960178, 19.603443, 25.256622>,  <16.665237, 19.818520, 25.814735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960178, 19.603443, 25.256622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647957, 19.353535, 25.264626>,  <16.460625, 19.203590, 25.269428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647957, 19.353535, 25.264626>,  <16.960178, 19.603443, 25.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647957, 19.353535, 25.264626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152992, 0.159909, -0.975204,
		0.606080, -0.764258, -0.220402,
		-0.780552, -0.624771, 0.020008,
		16.413792, 19.166103, 25.270628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982296, 19.086107, 24.698664>,  <16.960178, 19.603443, 25.256622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982296, 19.086107, 24.698664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597694, 19.085327, 24.808575>,  <16.366934, 19.084860, 24.874521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597694, 19.085327, 24.808575>,  <16.982296, 19.086107, 24.698664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597694, 19.085327, 24.808575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274718, 0.029010, -0.961087,
		-0.006097, -0.999577, -0.028430,
		-0.961505, -0.001951, 0.274779,
		16.309242, 19.084742, 24.891008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669132, 18.521996, 24.350697>,  <16.982296, 19.086107, 24.698664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669132, 18.521996, 24.350697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.391846, 18.794979, 24.443388>,  <16.225473, 18.958769, 24.499002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.391846, 18.794979, 24.443388>,  <16.669132, 18.521996, 24.350697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391846, 18.794979, 24.443388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380082, -0.072985, -0.922069,
		-0.612361, -0.727272, 0.309984,
		-0.693219, 0.682458, 0.231730,
		16.183880, 18.999716, 24.512907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083990, 18.281981, 23.945221>,  <16.669132, 18.521996, 24.350697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083990, 18.281981, 23.945221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986007, 18.653580, 24.056187>,  <15.927217, 18.876539, 24.122766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986007, 18.653580, 24.056187>,  <16.083990, 18.281981, 23.945221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986007, 18.653580, 24.056187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426834, 0.153580, -0.891194,
		-0.870522, -0.336714, 0.358908,
		-0.244956, 0.928998, 0.277416,
		15.912519, 18.932280, 24.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376084, 18.381796, 23.804453>,  <16.083990, 18.281981, 23.945221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.376084, 18.381796, 23.804453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525050, 18.753014, 23.807030>,  <15.614429, 18.975744, 23.808575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525050, 18.753014, 23.807030>,  <15.376084, 18.381796, 23.804453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525050, 18.753014, 23.807030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550344, 0.226424, -0.803650,
		-0.747281, 0.295747, 0.595067,
		0.372415, 0.928044, 0.006440,
		15.636775, 19.031427, 23.808962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763162, 18.728458, 23.617189>,  <15.376084, 18.381796, 23.804453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763162, 18.728458, 23.617189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088521, 18.957996, 23.579058>,  <15.283736, 19.095718, 23.556179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088521, 18.957996, 23.579058>,  <14.763162, 18.728458, 23.617189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.088521, 18.957996, 23.579058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358910, 0.366107, -0.858574,
		-0.457786, 0.732577, 0.503748,
		0.813398, 0.573844, -0.095331,
		15.332541, 19.130150, 23.550459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504073, 19.452579, 23.491581>,  <14.763162, 18.728458, 23.617189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504073, 19.452579, 23.491581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872272, 19.448391, 23.335335>,  <15.093190, 19.445877, 23.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872272, 19.448391, 23.335335>,  <14.504073, 19.452579, 23.491581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872272, 19.448391, 23.335335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338928, 0.476090, -0.811460,
		0.194466, 0.879335, 0.434688,
		0.920495, -0.010473, -0.390614,
		15.148420, 19.445250, 23.218151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589520, 20.159176, 23.208900>,  <14.504073, 19.452579, 23.491581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589520, 20.159176, 23.208900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.852300, 19.907990, 23.042013>,  <15.009968, 19.757277, 22.941881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.852300, 19.907990, 23.042013>,  <14.589520, 20.159176, 23.208900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852300, 19.907990, 23.042013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114799, 0.463621, -0.878566,
		0.745142, 0.625071, 0.232486,
		0.656951, -0.627967, -0.417220,
		15.049385, 19.719599, 22.916847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873339, 20.579830, 22.695652>,  <14.589520, 20.159176, 23.208900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873339, 20.579830, 22.695652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987941, 20.213303, 22.583742>,  <15.056703, 19.993385, 22.516596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987941, 20.213303, 22.583742>,  <14.873339, 20.579830, 22.695652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987941, 20.213303, 22.583742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141614, 0.248304, -0.958275,
		0.947554, 0.314172, -0.058623,
		0.286506, -0.916319, -0.279773,
		15.073893, 19.938406, 22.499811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391456, 20.670607, 22.226992>,  <14.873339, 20.579830, 22.695652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391456, 20.670607, 22.226992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.267945, 20.299881, 22.141510>,  <15.193839, 20.077446, 22.090221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.267945, 20.299881, 22.141510>,  <15.391456, 20.670607, 22.226992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.267945, 20.299881, 22.141510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158772, 0.171307, -0.972340,
		0.937789, -0.334165, 0.094257,
		-0.308776, -0.926816, -0.213706,
		15.175313, 20.021835, 22.077398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898920, 20.382534, 21.819407>,  <15.391456, 20.670607, 22.226992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898920, 20.382534, 21.819407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612859, 20.115772, 21.735703>,  <15.441222, 19.955715, 21.685480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612859, 20.115772, 21.735703>,  <15.898920, 20.382534, 21.819407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612859, 20.115772, 21.735703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138169, 0.158593, -0.977629,
		0.685175, -0.728068, -0.021273,
		-0.715154, -0.666907, -0.209261,
		15.398313, 19.915701, 21.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255150, 19.941175, 21.364779>,  <15.898920, 20.382534, 21.819407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255150, 19.941175, 21.364779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.858771, 19.916950, 21.316851>,  <15.620944, 19.902416, 21.288094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.858771, 19.916950, 21.316851>,  <16.255150, 19.941175, 21.364779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.858771, 19.916950, 21.316851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111213, 0.129650, -0.985303,
		0.075203, -0.989709, -0.121741,
		-0.990947, -0.060559, -0.119818,
		15.561487, 19.898783, 21.280905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.152414, 19.421324, 20.737852>,  <16.255150, 19.941175, 21.364779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.152414, 19.421324, 20.737852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.818864, 19.637585, 20.782297>,  <15.618733, 19.767342, 20.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.818864, 19.637585, 20.782297>,  <16.152414, 19.421324, 20.737852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.818864, 19.637585, 20.782297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065101, 0.296246, -0.952891,
		-0.548099, -0.787359, -0.282229,
		-0.833876, 0.540651, 0.111114,
		15.568701, 19.799780, 20.815632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772243, 19.185276, 20.163189>,  <16.152414, 19.421324, 20.737852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772243, 19.185276, 20.163189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589292, 19.519569, 20.284750>,  <15.479521, 19.720146, 20.357687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589292, 19.519569, 20.284750>,  <15.772243, 19.185276, 20.163189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589292, 19.519569, 20.284750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067145, 0.308313, -0.948912,
		-0.886734, -0.454416, -0.084900,
		-0.457376, 0.835733, 0.303903,
		15.452079, 19.770288, 20.375921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175261, 19.212542, 19.773306>,  <15.772243, 19.185276, 20.163189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175261, 19.212542, 19.773306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270625, 19.583488, 19.888649>,  <15.327844, 19.806057, 19.957855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270625, 19.583488, 19.888649>,  <15.175261, 19.212542, 19.773306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270625, 19.583488, 19.888649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011464, 0.294211, -0.955672,
		-0.971096, 0.231150, 0.059512,
		0.238412, 0.927367, 0.288357,
		15.342149, 19.861698, 19.975157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801428, 19.664188, 19.360687>,  <15.175261, 19.212542, 19.773306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801428, 19.664188, 19.360687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091468, 19.907406, 19.490002>,  <15.265491, 20.053335, 19.567591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091468, 19.907406, 19.490002>,  <14.801428, 19.664188, 19.360687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091468, 19.907406, 19.490002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096706, 0.374897, -0.922009,
		-0.681819, 0.699813, 0.213036,
		0.725100, 0.608042, 0.323288,
		15.308998, 20.089819, 19.586988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.736302, 20.196402, 18.973625>,  <14.801428, 19.664188, 19.360687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.736302, 20.196402, 18.973625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.113431, 20.222942, 19.104277>,  <15.339708, 20.238867, 19.182667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.113431, 20.222942, 19.104277>,  <14.736302, 20.196402, 18.973625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.113431, 20.222942, 19.104277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284949, 0.347885, -0.893185,
		-0.172893, 0.935186, 0.309086,
		0.942821, 0.066351, 0.326627,
		15.396277, 20.242847, 19.202265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979208, 20.830507, 18.707905>,  <14.736302, 20.196402, 18.973625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979208, 20.830507, 18.707905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312131, 20.626492, 18.794737>,  <15.511885, 20.504082, 18.846836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312131, 20.626492, 18.794737>,  <14.979208, 20.830507, 18.707905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312131, 20.626492, 18.794737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410914, 0.304865, -0.859190,
		0.372039, 0.804313, 0.463323,
		0.832308, -0.510038, 0.217081,
		15.561824, 20.473480, 18.859861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587186, 21.257401, 18.499493>,  <14.979208, 20.830507, 18.707905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.587186, 21.257401, 18.499493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714362, 20.878891, 18.523098>,  <15.790668, 20.651785, 18.537260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714362, 20.878891, 18.523098>,  <15.587186, 21.257401, 18.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714362, 20.878891, 18.523098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380206, 0.070234, -0.922231,
		0.868537, 0.315653, 0.382108,
		0.317942, -0.946272, 0.059012,
		15.809745, 20.595009, 18.540802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.211092, 21.249775, 18.168983>,  <15.587186, 21.257401, 18.499493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.211092, 21.249775, 18.168983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083462, 20.870865, 18.157257>,  <16.006884, 20.643518, 18.150221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083462, 20.870865, 18.157257>,  <16.211092, 21.249775, 18.168983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083462, 20.870865, 18.157257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343627, -0.086806, -0.935086,
		0.883238, -0.308439, 0.353207,
		-0.319078, -0.947275, -0.029318,
		15.987739, 20.586683, 18.148462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688990, 20.932222, 17.847612>,  <16.211092, 21.249775, 18.168983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688990, 20.932222, 17.847612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390663, 20.669277, 17.804472>,  <16.211666, 20.511511, 17.778587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390663, 20.669277, 17.804472>,  <16.688990, 20.932222, 17.847612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390663, 20.669277, 17.804472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216990, -0.086666, -0.972319,
		0.629819, -0.748574, 0.207278,
		-0.745817, -0.657362, -0.107849,
		16.166918, 20.472069, 17.772118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976202, 20.432888, 17.362526>,  <16.688990, 20.932222, 17.847612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976202, 20.432888, 17.362526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581142, 20.370861, 17.353550>,  <16.344107, 20.333645, 17.348166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581142, 20.370861, 17.353550>,  <16.976202, 20.432888, 17.362526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581142, 20.370861, 17.353550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042730, -0.128789, -0.990751,
		0.150742, -0.979473, 0.133824,
		-0.987649, -0.155066, -0.022439,
		16.284847, 20.324341, 17.346819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916609, 19.935032, 16.858227>,  <16.976202, 20.432888, 17.362526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916609, 19.935032, 16.858227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535046, 20.047768, 16.899456>,  <16.306107, 20.115410, 16.924194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535046, 20.047768, 16.899456>,  <16.916609, 19.935032, 16.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535046, 20.047768, 16.899456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205204, -0.361972, -0.909323,
		-0.218971, -0.888563, 0.403123,
		-0.953909, 0.281838, 0.103075,
		16.248873, 20.132320, 16.930378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482471, 19.328024, 16.645533>,  <16.916609, 19.935032, 16.858227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482471, 19.328024, 16.645533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288269, 19.676872, 16.621225>,  <16.171747, 19.886181, 16.606642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288269, 19.676872, 16.621225>,  <16.482471, 19.328024, 16.645533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288269, 19.676872, 16.621225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285293, -0.223758, -0.931955,
		-0.826373, -0.435132, 0.357446,
		-0.485505, 0.872119, -0.060767,
		16.142618, 19.938507, 16.602995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831446, 19.197315, 16.465311>,  <16.482471, 19.328024, 16.645533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831446, 19.197315, 16.465311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898772, 19.573139, 16.346050>,  <15.939168, 19.798634, 16.274494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898772, 19.573139, 16.346050>,  <15.831446, 19.197315, 16.465311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898772, 19.573139, 16.346050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397765, -0.212010, -0.892656,
		-0.901916, 0.268844, 0.338039,
		0.168317, 0.939561, -0.298152,
		15.949267, 19.855007, 16.256605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237229, 19.276638, 16.049072>,  <15.831446, 19.197315, 16.465311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237229, 19.276638, 16.049072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.458446, 19.596638, 15.955992>,  <15.591175, 19.788637, 15.900144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.458446, 19.596638, 15.955992>,  <15.237229, 19.276638, 16.049072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458446, 19.596638, 15.955992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310112, -0.061574, -0.948704,
		-0.773290, 0.596834, 0.214036,
		0.553039, 0.799999, -0.232700,
		15.624357, 19.836637, 15.886182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849052, 19.738068, 15.675323>,  <15.237229, 19.276638, 16.049072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849052, 19.738068, 15.675323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210507, 19.868977, 15.564810>,  <15.427381, 19.947521, 15.498502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210507, 19.868977, 15.564810>,  <14.849052, 19.738068, 15.675323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210507, 19.868977, 15.564810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318093, 0.080857, -0.944605,
		-0.286803, 0.941464, 0.177168,
		0.903637, 0.327272, -0.276283,
		15.481599, 19.967157, 15.481925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811560, 20.339430, 15.216645>,  <14.849052, 19.738068, 15.675323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811560, 20.339430, 15.216645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177140, 20.206863, 15.122961>,  <15.396489, 20.127323, 15.066751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177140, 20.206863, 15.122961>,  <14.811560, 20.339430, 15.216645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.177140, 20.206863, 15.122961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251307, -0.009049, -0.967865,
		0.318647, 0.943441, -0.091558,
		0.913952, -0.331416, -0.234210,
		15.451326, 20.107439, 15.052698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041286, 20.682083, 14.676800>,  <14.811560, 20.339430, 15.216645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041286, 20.682083, 14.676800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.260413, 20.347614, 14.666143>,  <15.391890, 20.146933, 14.659750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.260413, 20.347614, 14.666143>,  <15.041286, 20.682083, 14.676800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.260413, 20.347614, 14.666143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290603, -0.160334, -0.943315,
		0.784504, 0.524505, -0.330828,
		0.547817, -0.836174, -0.026641,
		15.424758, 20.096762, 14.658152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501652, 20.823586, 13.974135>,  <15.041286, 20.682083, 14.676800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501652, 20.823586, 13.974135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537753, 20.433773, 14.056253>,  <15.559414, 20.199886, 14.105524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537753, 20.433773, 14.056253>,  <15.501652, 20.823586, 13.974135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537753, 20.433773, 14.056253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031497, -0.208827, -0.977445,
		0.995421, 0.081751, -0.049542,
		0.090253, -0.974530, 0.205296,
		15.564829, 20.141415, 14.117842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942036, 20.517700, 13.453219>,  <15.501652, 20.823586, 13.974135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942036, 20.517700, 13.453219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784801, 20.178234, 13.594782>,  <15.690459, 19.974554, 13.679720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784801, 20.178234, 13.594782>,  <15.942036, 20.517700, 13.453219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784801, 20.178234, 13.594782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164157, -0.313936, -0.935145,
		0.904729, -0.425690, -0.015911,
		-0.393087, -0.848665, 0.353907,
		15.666875, 19.923634, 13.700954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340015, 19.879305, 13.269980>,  <15.942036, 20.517700, 13.453219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340015, 19.879305, 13.269980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950810, 19.796173, 13.310095>,  <15.717288, 19.746294, 13.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950810, 19.796173, 13.310095>,  <16.340015, 19.879305, 13.269980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950810, 19.796173, 13.310095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005390, -0.414006, -0.910258,
		0.230697, -0.886232, 0.401712,
		-0.973011, -0.207828, 0.100287,
		15.658907, 19.733824, 13.340181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306271, 19.359224, 12.898269>,  <16.340015, 19.879305, 13.269980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306271, 19.359224, 12.898269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920503, 19.454079, 12.945024>,  <15.689042, 19.510992, 12.973078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920503, 19.454079, 12.945024>,  <16.306271, 19.359224, 12.898269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920503, 19.454079, 12.945024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186871, -0.298672, -0.935882,
		-0.187018, -0.924425, 0.332359,
		-0.964419, 0.237134, 0.116891,
		15.631177, 19.525219, 12.980091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011827, 18.811543, 12.593373>,  <16.306271, 19.359224, 12.898269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011827, 18.811543, 12.593373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712619, 19.076405, 12.611298>,  <15.533093, 19.235323, 12.622052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712619, 19.076405, 12.611298>,  <16.011827, 18.811543, 12.593373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712619, 19.076405, 12.611298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299605, -0.276666, -0.913068,
		-0.592198, -0.696421, 0.405338,
		-0.748023, 0.662158, 0.044810,
		15.488212, 19.275051, 12.624741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352768, 18.413517, 12.511220>,  <16.011827, 18.811543, 12.593373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352768, 18.413517, 12.511220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278760, 18.789898, 12.397817>,  <15.234355, 19.015726, 12.329775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278760, 18.789898, 12.397817>,  <15.352768, 18.413517, 12.511220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278760, 18.789898, 12.397817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334518, -0.331563, -0.882136,
		-0.924048, -0.068374, 0.376112,
		-0.185020, 0.940952, -0.283508,
		15.223254, 19.072184, 12.312764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782395, 18.366478, 12.167316>,  <15.352768, 18.413517, 12.511220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782395, 18.366478, 12.167316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920846, 18.715492, 12.029404>,  <15.003917, 18.924902, 11.946656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920846, 18.715492, 12.029404>,  <14.782395, 18.366478, 12.167316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920846, 18.715492, 12.029404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245124, -0.270627, -0.930954,
		-0.905599, 0.406743, 0.120208,
		0.346127, 0.872537, -0.344782,
		15.024684, 18.977253, 11.925969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334850, 18.605659, 11.636625>,  <14.782395, 18.366478, 12.167316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334850, 18.605659, 11.636625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665383, 18.816368, 11.556942>,  <14.863704, 18.942793, 11.509132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665383, 18.816368, 11.556942>,  <14.334850, 18.605659, 11.636625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665383, 18.816368, 11.556942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173636, -0.098187, -0.979903,
		-0.535746, 0.844316, 0.010331,
		0.826333, 0.526773, -0.199207,
		14.913283, 18.974400, 11.497180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163757, 19.112255, 11.094584>,  <14.334850, 18.605659, 11.636625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163757, 19.112255, 11.094584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.563344, 19.124836, 11.081455>,  <14.803096, 19.132385, 11.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.563344, 19.124836, 11.081455>,  <14.163757, 19.112255, 11.094584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.563344, 19.124836, 11.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034687, 0.060657, -0.997556,
		-0.029386, 0.997663, 0.061685,
		0.998966, 0.031453, -0.032823,
		14.863034, 19.134272, 11.071609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323597, 19.732616, 10.748881>,  <14.163757, 19.112255, 11.094584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323597, 19.732616, 10.748881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656693, 19.515789, 10.703801>,  <14.856551, 19.385693, 10.676753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656693, 19.515789, 10.703801>,  <14.323597, 19.732616, 10.748881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656693, 19.515789, 10.703801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059197, 0.115217, -0.991575,
		0.550488, 0.832397, 0.063857,
		0.832741, -0.542071, -0.112701,
		14.906516, 19.353168, 10.669991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811635, 20.167091, 10.437510>,  <14.323597, 19.732616, 10.748881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811635, 20.167091, 10.437510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864259, 19.780697, 10.348462>,  <14.895833, 19.548861, 10.295033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864259, 19.780697, 10.348462>,  <14.811635, 20.167091, 10.437510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864259, 19.780697, 10.348462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170674, 0.199148, -0.964992,
		0.976505, 0.164949, -0.138670,
		0.131559, -0.965988, -0.222622,
		14.903727, 19.490900, 10.281675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099616, 20.263844, 9.751527>,  <14.811635, 20.167091, 10.437510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099616, 20.263844, 9.751527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922774, 19.922760, 9.862832>,  <14.816669, 19.718109, 9.929615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922774, 19.922760, 9.862832>,  <15.099616, 20.263844, 9.751527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922774, 19.922760, 9.862832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327235, -0.135512, -0.935176,
		0.835141, -0.504502, -0.219126,
		-0.442104, -0.852710, 0.278263,
		14.790143, 19.666946, 9.946311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478391, 19.721573, 9.459724>,  <15.099616, 20.263844, 9.751527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478391, 19.721573, 9.459724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096141, 19.633656, 9.538185>,  <14.866791, 19.580906, 9.585261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096141, 19.633656, 9.538185>,  <15.478391, 19.721573, 9.459724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096141, 19.633656, 9.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138203, -0.253540, -0.957401,
		0.260162, -0.942024, 0.211913,
		-0.955623, -0.219792, 0.196152,
		14.809454, 19.567719, 9.597031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435884, 19.105946, 9.181007>,  <15.478391, 19.721573, 9.459724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435884, 19.105946, 9.181007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068437, 19.261810, 9.207250>,  <14.847968, 19.355330, 9.222995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068437, 19.261810, 9.207250>,  <15.435884, 19.105946, 9.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068437, 19.261810, 9.207250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116321, -0.107993, -0.987323,
		-0.377635, -0.914605, 0.144531,
		-0.918619, 0.389660, 0.065606,
		14.792850, 19.378708, 9.226932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002586, 18.663319, 8.830968>,  <15.435884, 19.105946, 9.181007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002586, 18.663319, 8.830968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.839602, 19.028606, 8.830124>,  <14.741812, 19.247780, 8.829618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.839602, 19.028606, 8.830124>,  <15.002586, 18.663319, 8.830968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.839602, 19.028606, 8.830124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179553, -0.082379, -0.980293,
		-0.895397, -0.399052, 0.197538,
		-0.407461, 0.913220, -0.002111,
		14.717364, 19.302572, 8.829491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248825, 18.623852, 8.390834>,  <15.002586, 18.663319, 8.830968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248825, 18.623852, 8.390834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416703, 18.986069, 8.366010>,  <14.517430, 19.203398, 8.351115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416703, 18.986069, 8.366010>,  <14.248825, 18.623852, 8.390834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416703, 18.986069, 8.366010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237115, 0.043383, -0.970512,
		-0.876147, 0.422034, 0.232925,
		0.419694, 0.905541, -0.062061,
		14.542611, 19.257730, 8.347391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.485489, 17.910431, 8.173305>,  <14.248825, 18.623852, 8.390834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.485489, 17.910431, 8.173305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216723, 18.023865, 7.899630>,  <14.055465, 18.091925, 7.735425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216723, 18.023865, 7.899630>,  <14.485489, 17.910431, 8.173305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216723, 18.023865, 7.899630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632377, -0.261203, -0.729296,
		-0.385530, -0.922687, -0.003829,
		-0.671912, 0.283587, -0.684188,
		14.015150, 18.108940, 7.694373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128171, 17.350603, 7.905712>,  <14.485489, 17.910431, 8.173305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128171, 17.350603, 7.905712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201350, 17.680832, 7.692185>,  <14.245258, 17.878969, 7.564069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201350, 17.680832, 7.692185>,  <14.128171, 17.350603, 7.905712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201350, 17.680832, 7.692185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674717, -0.500357, -0.542587,
		-0.715043, -0.260910, -0.648567,
		0.182949, 0.825572, -0.533817,
		14.256235, 17.928503, 7.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067622, 17.172813, 7.150363>,  <14.128171, 17.350603, 7.905712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067622, 17.172813, 7.150363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316976, 17.470661, 7.245809>,  <14.466588, 17.649370, 7.303076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316976, 17.470661, 7.245809>,  <14.067622, 17.172813, 7.150363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316976, 17.470661, 7.245809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769691, -0.530616, -0.354996,
		-0.137725, 0.404957, -0.903904,
		0.623384, 0.744619, 0.238613,
		14.503991, 17.694046, 7.317392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494669, 17.468544, 6.547412>,  <14.067622, 17.172813, 7.150363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494669, 17.468544, 6.547412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.677337, 17.471966, 6.903251>,  <14.786937, 17.474018, 7.116754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.677337, 17.471966, 6.903251>,  <14.494669, 17.468544, 6.547412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677337, 17.471966, 6.903251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736310, -0.564849, -0.372549,
		0.499301, 0.825150, -0.264246,
		0.456668, 0.008553, 0.889596,
		14.814337, 17.474531, 7.170129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211430, 17.652271, 6.476810>,  <14.494669, 17.468544, 6.547412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211430, 17.652271, 6.476810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202533, 17.437260, 6.813991>,  <15.197195, 17.308252, 7.016299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202533, 17.437260, 6.813991>,  <15.211430, 17.652271, 6.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202533, 17.437260, 6.813991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623397, -0.666624, -0.408643,
		0.781589, 0.516404, 0.349921,
		-0.022241, -0.537531, 0.842951,
		15.195860, 17.276001, 7.066876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876955, 17.506262, 6.845201>,  <15.211430, 17.652271, 6.476810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876955, 17.506262, 6.845201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588296, 17.229362, 6.846663>,  <15.415100, 17.063223, 6.847541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588296, 17.229362, 6.846663>,  <15.876955, 17.506262, 6.845201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588296, 17.229362, 6.846663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593888, -0.621805, -0.510545,
		0.355698, -0.366262, 0.859843,
		-0.721648, -0.692251, 0.003656,
		15.371801, 17.021687, 6.847760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261786, 16.940155, 7.043052>,  <15.876955, 17.506262, 6.845201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261786, 16.940155, 7.043052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.945951, 16.822800, 6.827470>,  <15.756450, 16.752386, 6.698120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.945951, 16.822800, 6.827470>,  <16.261786, 16.940155, 7.043052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945951, 16.822800, 6.827470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572595, -0.668080, -0.475189,
		-0.220650, -0.683807, 0.695501,
		-0.789588, -0.293390, -0.538956,
		15.709074, 16.734783, 6.665783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992897, 17.400082, 7.649093>,  <16.261786, 16.940155, 7.043052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992897, 17.400082, 7.649093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241360, 17.177292, 7.869618>,  <16.390438, 17.043619, 8.001934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241360, 17.177292, 7.869618>,  <15.992897, 17.400082, 7.649093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241360, 17.177292, 7.869618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762502, -0.591989, 0.261034,
		0.180983, -0.582521, -0.792411,
		0.621156, -0.556973, 0.551313,
		16.427706, 17.010201, 8.035012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044594, 17.453821, 8.372231>,  <15.992897, 17.400082, 7.649093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044594, 17.453821, 8.372231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130096, 17.627270, 8.722381>,  <16.181398, 17.731339, 8.932470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130096, 17.627270, 8.722381>,  <16.044594, 17.453821, 8.372231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130096, 17.627270, 8.722381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975636, 0.049425, 0.213758,
		0.049425, -0.899739, 0.433620,
		-0.213758, -0.433620, -0.875375,
		16.194223, 17.757357, 8.984993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838960, 17.045307, 8.991374>,  <16.044594, 17.453821, 8.372231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838960, 17.045307, 8.991374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838462, 17.438305, 9.065891>,  <15.838163, 17.674103, 9.110601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838462, 17.438305, 9.065891>,  <15.838960, 17.045307, 8.991374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838462, 17.438305, 9.065891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971097, -0.045652, 0.234280,
		0.238683, -0.180618, 0.954153,
		-0.001244, 0.982493, 0.186294,
		15.838089, 17.733053, 9.121779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170972, 16.891428, 8.544300>,  <15.838960, 17.045307, 8.991374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170972, 16.891428, 8.544300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.791892, 16.839840, 8.427520>,  <14.564445, 16.808887, 8.357451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.791892, 16.839840, 8.427520>,  <15.170972, 16.891428, 8.544300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791892, 16.839840, 8.427520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253160, 0.860789, 0.441533,
		0.194363, 0.492351, -0.848418,
		-0.947699, -0.128968, -0.291950,
		14.507583, 16.801149, 8.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800127, 16.303127, 8.161137>,  <15.170972, 16.891428, 8.544300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.800127, 16.303127, 8.161137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825868, 16.001373, 7.899829>,  <14.841311, 15.820321, 7.743044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825868, 16.001373, 7.899829>,  <14.800127, 16.303127, 8.161137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825868, 16.001373, 7.899829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956404, 0.140247, -0.256167,
		0.284868, 0.641275, -0.712473,
		0.064351, -0.754386, -0.653269,
		14.845173, 15.775058, 7.703848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544501, 16.472565, 7.491722>,  <14.800127, 16.303127, 8.161137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544501, 16.472565, 7.491722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481744, 16.084263, 7.564408>,  <14.444089, 15.851282, 7.608020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481744, 16.084263, 7.564408>,  <14.544501, 16.472565, 7.491722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481744, 16.084263, 7.564408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985675, 0.142384, -0.090395,
		0.061878, -0.193296, -0.979187,
		-0.156894, -0.970754, 0.181716,
		14.434676, 15.793036, 7.618923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113725, 16.371891, 6.861998>,  <14.544501, 16.472565, 7.491722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113725, 16.371891, 6.861998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051160, 16.076153, 7.123961>,  <14.013621, 15.898710, 7.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051160, 16.076153, 7.123961>,  <14.113725, 16.371891, 6.861998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051160, 16.076153, 7.123961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985823, 0.076088, -0.149545,
		0.060734, -0.669016, -0.740763,
		-0.156411, -0.739343, 0.654910,
		14.004236, 15.854349, 7.320434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665778, 15.805074, 6.583033>,  <14.113725, 16.371891, 6.861998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665778, 15.805074, 6.583033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652888, 15.888588, 6.974005>,  <13.645155, 15.938697, 7.208588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652888, 15.888588, 6.974005>,  <13.665778, 15.805074, 6.583033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652888, 15.888588, 6.974005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939953, 0.326127, -0.100651,
		-0.339781, -0.921982, 0.185740,
		-0.032224, 0.208786, 0.977430,
		13.643221, 15.951223, 7.267234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021059, 15.532792, 6.817960>,  <13.665778, 15.805074, 6.583033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021059, 15.532792, 6.817960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108102, 15.857643, 7.034513>,  <13.160327, 16.052553, 7.164444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108102, 15.857643, 7.034513>,  <13.021059, 15.532792, 6.817960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.108102, 15.857643, 7.034513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957911, 0.284099, -0.041149,
		-0.187224, -0.509642, 0.839769,
		0.217606, 0.812128, 0.541382,
		13.173384, 16.101282, 7.196927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645580, 15.618149, 7.480839>,  <13.021059, 15.532792, 6.817960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645580, 15.618149, 7.480839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744243, 15.965576, 7.308908>,  <12.803440, 16.174032, 7.205750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744243, 15.965576, 7.308908>,  <12.645580, 15.618149, 7.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744243, 15.965576, 7.308908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968066, 0.241342, -0.067836,
		0.044815, 0.432832, 0.900360,
		0.246656, 0.868568, -0.429826,
		12.818239, 16.226147, 7.179961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.271553, 16.232725, 7.818173>,  <12.645580, 15.618149, 7.480839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.271553, 16.232725, 7.818173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333610, 16.318176, 7.432366>,  <12.370844, 16.369448, 7.200882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333610, 16.318176, 7.432366>,  <12.271553, 16.232725, 7.818173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333610, 16.318176, 7.432366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987788, 0.019382, -0.154592,
		-0.014331, 0.976723, 0.214026,
		0.155141, 0.213628, -0.964518,
		12.380152, 16.382265, 7.143011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.954777, 16.852407, 7.594920>,  <12.271553, 16.232725, 7.818173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.954777, 16.852407, 7.594920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985297, 16.596413, 7.289084>,  <12.003610, 16.442816, 7.105583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985297, 16.596413, 7.289084>,  <11.954777, 16.852407, 7.594920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985297, 16.596413, 7.289084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968738, 0.133965, -0.208807,
		0.236062, 0.756618, -0.609758,
		0.076301, -0.639987, -0.764588,
		12.008187, 16.404417, 7.059708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.605789, 17.150356, 7.002212>,  <11.954777, 16.852407, 7.594920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.605789, 17.150356, 7.002212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612861, 16.751499, 7.031587>,  <11.617104, 16.512184, 7.049212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612861, 16.751499, 7.031587>,  <11.605789, 17.150356, 7.002212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.612861, 16.751499, 7.031587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999844, -0.017664, 0.000831,
		0.000469, -0.073441, -0.997299,
		0.017678, -0.997143, 0.073438,
		11.618164, 16.452356, 7.053618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154409, 16.779062, 6.527170>,  <11.605789, 17.150356, 7.002212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154409, 16.779062, 6.527170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210946, 16.657482, 6.904028>,  <11.244868, 16.584534, 7.130143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210946, 16.657482, 6.904028>,  <11.154409, 16.779062, 6.527170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.210946, 16.657482, 6.904028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968361, 0.155271, 0.195368,
		-0.205670, -0.939950, -0.272386,
		0.141343, -0.303949, 0.942145,
		11.253349, 16.566298, 7.186671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.609141, 16.452122, 6.767814>,  <11.154409, 16.779062, 6.527170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.609141, 16.452122, 6.767814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.783401, 16.578465, 7.104965>,  <10.887957, 16.654270, 7.307256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.783401, 16.578465, 7.104965>,  <10.609141, 16.452122, 6.767814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.783401, 16.578465, 7.104965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852787, 0.444482, 0.274206,
		-0.288034, -0.838254, 0.462998,
		0.435649, 0.315858, 0.842879,
		10.914095, 16.673222, 7.357829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.142690, 16.452581, 7.254255>,  <10.609141, 16.452122, 6.767814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.142690, 16.452581, 7.254255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400205, 16.735489, 7.371085>,  <10.554714, 16.905233, 7.441184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400205, 16.735489, 7.371085>,  <10.142690, 16.452581, 7.254255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.400205, 16.735489, 7.371085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763170, 0.565651, 0.312427,
		0.055756, -0.424040, 0.903925,
		0.643788, 0.707268, 0.292076,
		10.593341, 16.947670, 7.458708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938690, 16.721315, 7.897851>,  <10.142690, 16.452581, 7.254255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938690, 16.721315, 7.897851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.135432, 16.989624, 7.675808>,  <10.253477, 17.150608, 7.542582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.135432, 16.989624, 7.675808>,  <9.938690, 16.721315, 7.897851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.135432, 16.989624, 7.675808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729298, 0.665664, 0.158166,
		0.475609, 0.327045, 0.816601,
		0.491855, 0.670770, -0.555109,
		10.282989, 17.190855, 7.509275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.053556, 17.346514, 8.236378>,  <9.938690, 16.721315, 7.897851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.053556, 17.346514, 8.236378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.012118, 17.380367, 7.839972>,  <9.987255, 17.400679, 7.602129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.012118, 17.380367, 7.839972>,  <10.053556, 17.346514, 8.236378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.012118, 17.380367, 7.839972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730532, 0.669691, 0.133559,
		0.674975, 0.737802, -0.007549,
		-0.103595, 0.084634, -0.991012,
		9.981040, 17.405758, 7.542669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.913582, 18.003534, 8.269570>,  <10.053556, 17.346514, 8.236378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.913582, 18.003534, 8.269570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808923, 17.880219, 7.903729>,  <9.746127, 17.806229, 7.684225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808923, 17.880219, 7.903729>,  <9.913582, 18.003534, 8.269570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808923, 17.880219, 7.903729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693355, 0.719247, -0.044087,
		0.671417, 0.622608, -0.401943,
		-0.261647, -0.308290, -0.914603,
		9.730429, 17.787731, 7.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.038980, 18.528635, 7.709713>,  <9.913582, 18.003534, 8.269570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.038980, 18.528635, 7.709713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.728696, 18.281204, 7.659694>,  <9.542525, 18.132746, 7.629682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.728696, 18.281204, 7.659694>,  <10.038980, 18.528635, 7.709713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.728696, 18.281204, 7.659694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626817, 0.778199, 0.038804,
		0.073310, 0.108483, -0.991391,
		-0.775710, -0.618577, -0.125049,
		9.495983, 18.095631, 7.622179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614721, 18.986460, 7.291193>,  <10.038980, 18.528635, 7.709713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614721, 18.986460, 7.291193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.391532, 18.692917, 7.446173>,  <9.257618, 18.516790, 7.539161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.391532, 18.692917, 7.446173>,  <9.614721, 18.986460, 7.291193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.391532, 18.692917, 7.446173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724236, 0.658565, 0.204385,
		-0.405151, -0.166564, -0.898949,
		-0.557974, -0.733858, 0.387450,
		9.224140, 18.472759, 7.562407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.913047, 19.106710, 7.061680>,  <9.614721, 18.986460, 7.291193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.913047, 19.106710, 7.061680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.874768, 18.841175, 7.358372>,  <8.851801, 18.681854, 7.536386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.874768, 18.841175, 7.358372>,  <8.913047, 19.106710, 7.061680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.874768, 18.841175, 7.358372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771701, 0.520144, 0.365960,
		-0.628744, -0.537372, -0.562060,
		-0.095696, -0.663838, 0.741728,
		8.846060, 18.642023, 7.580890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.784702, 15.648915, 19.140131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.175087, 15.699280, 19.211292>,  <19.409317, 15.729499, 19.253988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.175087, 15.699280, 19.211292>,  <18.784702, 15.648915, 19.140131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175087, 15.699280, 19.211292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167076, 0.091950, -0.981647,
		-0.139959, 0.987771, 0.068703,
		0.975959, 0.125912, 0.177902,
		19.467875, 15.737054, 19.264664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050785, 16.257273, 18.746279>,  <18.784702, 15.648915, 19.140131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050785, 16.257273, 18.746279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.374237, 16.028797, 18.802656>,  <19.568308, 15.891712, 18.836483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.374237, 16.028797, 18.802656>,  <19.050785, 16.257273, 18.746279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374237, 16.028797, 18.802656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249293, 0.115671, -0.961495,
		0.532891, 0.812629, 0.235928,
		0.808629, -0.571187, 0.140943,
		19.616825, 15.857441, 18.844938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540602, 16.705605, 18.439548>,  <19.050785, 16.257273, 18.746279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540602, 16.705605, 18.439548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.676052, 16.329491, 18.425734>,  <19.757322, 16.103823, 18.417444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.676052, 16.329491, 18.425734>,  <19.540602, 16.705605, 18.439548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676052, 16.329491, 18.425734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274359, 0.133784, -0.952276,
		0.900032, 0.312991, 0.303279,
		0.338628, -0.940286, -0.034538,
		19.777641, 16.047405, 18.415373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237114, 16.743414, 18.209858>,  <19.540602, 16.705605, 18.439548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237114, 16.743414, 18.209858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.159824, 16.362686, 18.114605>,  <20.113451, 16.134251, 18.057453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.159824, 16.362686, 18.114605>,  <20.237114, 16.743414, 18.209858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159824, 16.362686, 18.114605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416568, 0.140164, -0.898235,
		0.888333, -0.272760, 0.369413,
		-0.193224, -0.951817, -0.238135,
		20.101858, 16.077141, 18.043165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898727, 16.510649, 17.999615>,  <20.237114, 16.743414, 18.209858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.898727, 16.510649, 17.999615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.613884, 16.271564, 17.852299>,  <20.442978, 16.128113, 17.763908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.613884, 16.271564, 17.852299>,  <20.898727, 16.510649, 17.999615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613884, 16.271564, 17.852299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396602, 0.090381, -0.913531,
		0.579315, -0.796600, 0.172692,
		-0.712110, -0.597712, -0.368292,
		20.400251, 16.092251, 17.741812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132557, 15.999538, 17.494787>,  <20.898727, 16.510649, 17.999615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132557, 15.999538, 17.494787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.740799, 15.996517, 17.414059>,  <20.505745, 15.994704, 17.365622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.740799, 15.996517, 17.414059>,  <21.132557, 15.999538, 17.494787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740799, 15.996517, 17.414059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200919, 0.065053, -0.977446,
		0.020509, -0.997853, -0.062195,
		-0.979393, -0.007550, -0.201822,
		20.446981, 15.994251, 17.353512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177195, 15.581075, 16.917702>,  <21.132557, 15.999538, 17.494787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177195, 15.581075, 16.917702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.809334, 15.736122, 16.892437>,  <20.588617, 15.829150, 16.877277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.809334, 15.736122, 16.892437>,  <21.177195, 15.581075, 16.917702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809334, 15.736122, 16.892437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028667, -0.094147, -0.995145,
		-0.391684, -0.916999, 0.075471,
		-0.919653, 0.387619, -0.063164,
		20.533438, 15.852407, 16.873487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813559, 15.184906, 16.470663>,  <21.177195, 15.581075, 16.917702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813559, 15.184906, 16.470663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.593102, 15.518551, 16.479574>,  <20.460827, 15.718738, 16.484921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.593102, 15.518551, 16.479574>,  <20.813559, 15.184906, 16.470663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593102, 15.518551, 16.479574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087373, -0.031139, -0.995689,
		-0.829822, -0.550715, 0.090041,
		-0.551145, 0.834112, 0.022278,
		20.427757, 15.768785, 16.486258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094315, 15.116633, 16.065247>,  <20.813559, 15.184906, 16.470663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094315, 15.116633, 16.065247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.195438, 15.502151, 16.099155>,  <20.256113, 15.733462, 16.119501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.195438, 15.502151, 16.099155>,  <20.094315, 15.116633, 16.065247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195438, 15.502151, 16.099155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098743, 0.112861, -0.988692,
		-0.962464, 0.241582, 0.123700,
		0.252811, 0.963795, 0.084770,
		20.271282, 15.791290, 16.124586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562254, 15.506631, 15.654014>,  <20.094315, 15.116633, 16.065247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562254, 15.506631, 15.654014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.875385, 15.755424, 15.661152>,  <20.063263, 15.904700, 15.665435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.875385, 15.755424, 15.661152>,  <19.562254, 15.506631, 15.654014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875385, 15.755424, 15.661152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146672, 0.212319, -0.966130,
		-0.604707, 0.753695, 0.257437,
		0.782826, 0.621984, 0.017845,
		20.110233, 15.942019, 15.666506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322653, 15.954663, 15.224756>,  <19.562254, 15.506631, 15.654014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322653, 15.954663, 15.224756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711597, 16.046509, 15.241673>,  <19.944965, 16.101616, 15.251822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711597, 16.046509, 15.241673>,  <19.322653, 15.954663, 15.224756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711597, 16.046509, 15.241673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013009, 0.234133, -0.972118,
		-0.233113, 0.944701, 0.230649,
		0.972363, 0.229614, 0.042290,
		20.003305, 16.115393, 15.254359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400368, 16.642038, 14.969937>,  <19.322653, 15.954663, 15.224756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400368, 16.642038, 14.969937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.731846, 16.423691, 14.920475>,  <19.930733, 16.292683, 14.890798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.731846, 16.423691, 14.920475>,  <19.400368, 16.642038, 14.969937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731846, 16.423691, 14.920475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058428, 0.135356, -0.989073,
		0.556642, 0.826865, 0.080275,
		0.828696, -0.545869, -0.123657,
		19.980455, 16.259930, 14.883378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618727, 17.060013, 14.444201>,  <19.400368, 16.642038, 14.969937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618727, 17.060013, 14.444201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.862720, 16.743103, 14.438272>,  <20.009117, 16.552958, 14.434715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.862720, 16.743103, 14.438272>,  <19.618727, 17.060013, 14.444201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862720, 16.743103, 14.438272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060193, -0.027676, -0.997803,
		0.790125, 0.609535, -0.064572,
		0.609983, -0.792276, -0.014822,
		20.045715, 16.505421, 14.433825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146626, 17.218046, 13.956849>,  <19.618727, 17.060013, 14.444201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146626, 17.218046, 13.956849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.138470, 16.819355, 13.988146>,  <20.133575, 16.580141, 14.006924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.138470, 16.819355, 13.988146>,  <20.146626, 17.218046, 13.956849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138470, 16.819355, 13.988146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141605, -0.074590, -0.987109,
		0.989713, -0.031206, -0.139621,
		-0.020390, -0.996726, 0.078242,
		20.132353, 16.520338, 14.011619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547104, 16.937689, 13.410832>,  <20.146626, 17.218046, 13.956849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547104, 16.937689, 13.410832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.286465, 16.657028, 13.526148>,  <20.130081, 16.488632, 13.595337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.286465, 16.657028, 13.526148>,  <20.547104, 16.937689, 13.410832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286465, 16.657028, 13.526148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225434, -0.183759, -0.956772,
		0.724294, -0.688419, -0.038439,
		-0.651596, -0.701650, 0.288289,
		20.090986, 16.446533, 13.612635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707132, 16.365107, 12.980037>,  <20.547104, 16.937689, 13.410832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707132, 16.365107, 12.980037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.327946, 16.325062, 13.100925>,  <20.100433, 16.301035, 13.173459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.327946, 16.325062, 13.100925>,  <20.707132, 16.365107, 12.980037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327946, 16.325062, 13.100925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271094, -0.243937, -0.931130,
		0.166940, -0.964610, 0.204105,
		-0.947966, -0.100111, 0.302223,
		20.043556, 16.295029, 13.191592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.452042, 15.781634, 12.589233>,  <20.707132, 16.365107, 12.980037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.452042, 15.781634, 12.589233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.123341, 15.957874, 12.733784>,  <19.926119, 16.063618, 12.820514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.123341, 15.957874, 12.733784>,  <20.452042, 15.781634, 12.589233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.123341, 15.957874, 12.733784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524793, -0.338014, -0.781242,
		-0.222062, -0.831637, 0.508987,
		-0.821754, 0.440597, 0.361377,
		19.876814, 16.090054, 12.842196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832865, 15.187085, 12.576428>,  <20.452042, 15.781634, 12.589233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832865, 15.187085, 12.576428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.690056, 15.560604, 12.585896>,  <19.604370, 15.784716, 12.591578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.690056, 15.560604, 12.585896>,  <19.832865, 15.187085, 12.576428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690056, 15.560604, 12.585896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598997, -0.209426, -0.772880,
		-0.716756, -0.290112, 0.634111,
		-0.357021, 0.933796, 0.023669,
		19.582949, 15.840743, 12.592998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175373, 15.063559, 12.418988>,  <19.832865, 15.187085, 12.576428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.175373, 15.063559, 12.418988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.226364, 15.451946, 12.338027>,  <19.256958, 15.684979, 12.289450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.226364, 15.451946, 12.338027>,  <19.175373, 15.063559, 12.418988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226364, 15.451946, 12.338027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599180, -0.087233, -0.795848,
		-0.790400, 0.222729, 0.570665,
		0.127478, 0.970970, -0.202404,
		19.264608, 15.743237, 12.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516985, 15.323776, 12.164113>,  <19.175373, 15.063559, 12.418988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516985, 15.323776, 12.164113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.772400, 15.580242, 11.993854>,  <18.925650, 15.734121, 11.891698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.772400, 15.580242, 11.993854>,  <18.516985, 15.323776, 12.164113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772400, 15.580242, 11.993854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577571, 0.033726, -0.815643,
		-0.508606, 0.766662, 0.391853,
		0.638539, 0.641164, -0.425649,
		18.963961, 15.772592, 11.866158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.109962, 15.811474, 11.737680>,  <18.516985, 15.323776, 12.164113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.109962, 15.811474, 11.737680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.471169, 15.925758, 11.609350>,  <18.687893, 15.994328, 11.532352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.471169, 15.925758, 11.609350>,  <18.109962, 15.811474, 11.737680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.471169, 15.925758, 11.609350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404528, 0.314095, -0.858895,
		-0.144626, 0.905380, 0.399211,
		0.903017, 0.285711, -0.320826,
		18.742073, 16.011471, 11.513103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945400, 16.333256, 11.368355>,  <18.109962, 15.811474, 11.737680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945400, 16.333256, 11.368355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318340, 16.258923, 11.244300>,  <18.542105, 16.214323, 11.169867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318340, 16.258923, 11.244300>,  <17.945400, 16.333256, 11.368355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318340, 16.258923, 11.244300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242250, 0.315680, -0.917421,
		0.268392, 0.930490, 0.249307,
		0.932352, -0.185834, -0.310137,
		18.598045, 16.203173, 11.151258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301538, 16.521267, 10.975657>,  <17.945400, 16.333256, 11.368355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301538, 16.521267, 10.975657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.951572, 16.671932, 11.097409>,  <16.741592, 16.762331, 11.170461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.951572, 16.671932, 11.097409>,  <17.301538, 16.521267, 10.975657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951572, 16.671932, 11.097409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381042, 0.147519, 0.912713,
		0.298885, 0.914528, -0.272592,
		-0.874914, 0.376665, 0.304382,
		16.689098, 16.784931, 11.188724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434286, 17.153091, 11.213233>,  <17.301538, 16.521267, 10.975657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434286, 17.153091, 11.213233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085041, 17.049843, 11.378663>,  <16.875494, 16.987894, 11.477921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085041, 17.049843, 11.378663>,  <17.434286, 17.153091, 11.213233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085041, 17.049843, 11.378663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347067, 0.266655, 0.899133,
		-0.342368, 0.928584, -0.143234,
		-0.873114, -0.258123, 0.413575,
		16.823107, 16.972406, 11.502735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388145, 17.636349, 11.794005>,  <17.434286, 17.153091, 11.213233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388145, 17.636349, 11.794005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.117168, 17.349777, 11.860703>,  <16.954582, 17.177835, 11.900721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.117168, 17.349777, 11.860703>,  <17.388145, 17.636349, 11.794005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117168, 17.349777, 11.860703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080064, 0.153519, 0.984897,
		-0.731204, 0.680562, -0.046641,
		-0.677444, -0.716426, 0.166742,
		16.913935, 17.134850, 11.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773766, 17.938204, 12.169631>,  <17.388145, 17.636349, 11.794005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773766, 17.938204, 12.169631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.777416, 17.550892, 12.269514>,  <16.779608, 17.318504, 12.329444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.777416, 17.550892, 12.269514>,  <16.773766, 17.938204, 12.169631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777416, 17.550892, 12.269514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085737, 0.248042, 0.964948,
		-0.996276, -0.030218, -0.080753,
		0.009128, -0.968278, 0.249709,
		16.780155, 17.260408, 12.344427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290287, 17.817909, 12.700289>,  <16.773766, 17.938204, 12.169631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290287, 17.817909, 12.700289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.545952, 17.512825, 12.739767>,  <16.699350, 17.329775, 12.763454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.545952, 17.512825, 12.739767>,  <16.290287, 17.817909, 12.700289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545952, 17.512825, 12.739767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142033, 0.243190, 0.959524,
		-0.755842, -0.599274, 0.263768,
		0.639163, -0.762712, 0.098697,
		16.737701, 17.284012, 12.769376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094259, 17.539944, 13.335658>,  <16.290287, 17.817909, 12.700289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094259, 17.539944, 13.335658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.466225, 17.398724, 13.294441>,  <16.689404, 17.313992, 13.269711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.466225, 17.398724, 13.294441>,  <16.094259, 17.539944, 13.335658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466225, 17.398724, 13.294441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143323, 0.089845, 0.985589,
		-0.338705, -0.931280, 0.134148,
		0.929913, -0.353050, -0.103043,
		16.745199, 17.292809, 13.263528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105989, 17.078146, 13.771070>,  <16.094259, 17.539944, 13.335658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105989, 17.078146, 13.771070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499859, 17.118786, 13.714369>,  <16.736181, 17.143169, 13.680347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499859, 17.118786, 13.714369>,  <16.105989, 17.078146, 13.771070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499859, 17.118786, 13.714369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145071, -0.025991, 0.989080,
		0.096806, -0.994486, -0.040332,
		0.984674, 0.101600, -0.141755,
		16.795261, 17.149265, 13.671843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445663, 16.682213, 14.354797>,  <16.105989, 17.078146, 13.771070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445663, 16.682213, 14.354797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.707504, 16.943470, 14.202534>,  <16.864609, 17.100224, 14.111176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.707504, 16.943470, 14.202534>,  <16.445663, 16.682213, 14.354797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707504, 16.943470, 14.202534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370519, 0.161716, 0.914639,
		0.658947, -0.739767, -0.136141,
		0.654603, 0.653141, -0.380660,
		16.903885, 17.139412, 14.088336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953053, 16.668367, 14.817238>,  <16.445663, 16.682213, 14.354797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953053, 16.668367, 14.817238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.073818, 17.003345, 14.635014>,  <17.146278, 17.204332, 14.525679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.073818, 17.003345, 14.635014>,  <16.953053, 16.668367, 14.817238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073818, 17.003345, 14.635014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267277, 0.384341, 0.883654,
		0.915101, -0.388549, -0.107792,
		0.301914, 0.837444, -0.455561,
		17.164392, 17.254578, 14.498345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627945, 16.833647, 15.113086>,  <16.953053, 16.668367, 14.817238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627945, 16.833647, 15.113086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.542824, 17.195179, 14.964596>,  <17.491751, 17.412098, 14.875502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.542824, 17.195179, 14.964596>,  <17.627945, 16.833647, 15.113086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542824, 17.195179, 14.964596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362377, 0.425838, 0.829063,
		0.907413, 0.041905, -0.418146,
		-0.212804, 0.903829, -0.371225,
		17.478983, 17.466328, 14.853229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267233, 17.165247, 15.133905>,  <17.627945, 16.833647, 15.113086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267233, 17.165247, 15.133905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.968071, 17.429562, 15.108620>,  <17.788574, 17.588150, 15.093449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.968071, 17.429562, 15.108620>,  <18.267233, 17.165247, 15.133905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968071, 17.429562, 15.108620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232526, 0.349990, 0.907435,
		0.621746, 0.663978, -0.415410,
		-0.747906, 0.660788, -0.063213,
		17.743700, 17.627798, 15.089656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574543, 17.741261, 15.444865>,  <18.267233, 17.165247, 15.133905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574543, 17.741261, 15.444865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.182278, 17.814785, 15.471725>,  <17.946918, 17.858900, 15.487842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.182278, 17.814785, 15.471725>,  <18.574543, 17.741261, 15.444865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182278, 17.814785, 15.471725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132356, 0.370242, 0.919458,
		0.144142, 0.910569, -0.387412,
		-0.980666, 0.183809, 0.067151,
		17.888079, 17.869928, 15.491871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579102, 18.380680, 15.877354>,  <18.574543, 17.741261, 15.444865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579102, 18.380680, 15.877354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.206745, 18.234562, 15.876812>,  <17.983332, 18.146891, 15.876487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.206745, 18.234562, 15.876812>,  <18.579102, 18.380680, 15.877354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206745, 18.234562, 15.876812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077355, 0.193500, 0.978046,
		-0.357013, 0.910559, -0.208385,
		-0.930891, -0.365295, -0.001354,
		17.927479, 18.124973, 15.876406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170731, 18.856497, 16.211143>,  <18.579102, 18.380680, 15.877354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170731, 18.856497, 16.211143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014439, 18.491703, 16.261122>,  <17.920664, 18.272827, 16.291109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014439, 18.491703, 16.261122>,  <18.170731, 18.856497, 16.211143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014439, 18.491703, 16.261122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040018, 0.152436, 0.987503,
		-0.919634, 0.380849, -0.096057,
		-0.390732, -0.911986, 0.124944,
		17.897219, 18.218107, 16.298605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.642881, 18.999718, 16.712942>,  <18.170731, 18.856497, 16.211143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.642881, 18.999718, 16.712942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.693974, 18.603012, 16.716751>,  <17.724628, 18.364988, 16.719036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.693974, 18.603012, 16.716751>,  <17.642881, 18.999718, 16.712942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.693974, 18.603012, 16.716751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098788, -0.003168, 0.995104,
		-0.986877, -0.128048, -0.098379,
		0.127732, -0.991763, 0.009523,
		17.732294, 18.305483, 16.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245615, 18.751049, 17.243446>,  <17.642881, 18.999718, 16.712942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245615, 18.751049, 17.243446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.453243, 18.413448, 17.189440>,  <17.577820, 18.210888, 17.157036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.453243, 18.413448, 17.189440>,  <17.245615, 18.751049, 17.243446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453243, 18.413448, 17.189440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045693, -0.185141, 0.981649,
		-0.853511, -0.503374, -0.134666,
		0.519068, -0.844001, -0.135019,
		17.608963, 18.160248, 17.148933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999416, 18.289850, 17.800518>,  <17.245615, 18.751049, 17.243446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999416, 18.289850, 17.800518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.343548, 18.121010, 17.686209>,  <17.550026, 18.019705, 17.617624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.343548, 18.121010, 17.686209>,  <16.999416, 18.289850, 17.800518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343548, 18.121010, 17.686209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146628, -0.332000, 0.931813,
		-0.488196, -0.843568, -0.223738,
		0.860329, -0.422101, -0.285771,
		17.601646, 17.994379, 17.600477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.991711, 17.650860, 18.101561>,  <16.999416, 18.289850, 17.800518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.991711, 17.650860, 18.101561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374413, 17.735882, 18.022125>,  <17.604034, 17.786896, 17.974464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374413, 17.735882, 18.022125>,  <16.991711, 17.650860, 18.101561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374413, 17.735882, 18.022125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268277, -0.380838, 0.884867,
		0.112452, -0.899879, -0.421393,
		0.956756, 0.212555, -0.198590,
		17.661440, 17.799648, 17.962547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.464439, 17.041245, 18.237753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.697918, 17.365635, 18.253828>,  <17.838005, 17.560268, 18.263474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.697918, 17.365635, 18.253828>,  <17.464439, 17.041245, 18.237753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697918, 17.365635, 18.253828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231122, -0.213390, 0.949235,
		0.778384, -0.544776, -0.311989,
		0.583696, 0.810977, 0.040190,
		17.873028, 17.608929, 18.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015301, 16.763937, 18.626942>,  <17.464439, 17.041245, 18.237753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015301, 16.763937, 18.626942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.076927, 17.157784, 18.659910>,  <18.113903, 17.394093, 18.679691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.076927, 17.157784, 18.659910>,  <18.015301, 16.763937, 18.626942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076927, 17.157784, 18.659910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188177, -0.111131, 0.975827,
		0.969976, -0.134829, -0.202404,
		0.154064, 0.984617, 0.082423,
		18.123146, 17.453169, 18.684637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618710, 16.864937, 18.958014>,  <18.015301, 16.763937, 18.626942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618710, 16.864937, 18.958014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.423702, 17.209503, 19.014984>,  <18.306698, 17.416243, 19.049168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.423702, 17.209503, 19.014984>,  <18.618710, 16.864937, 18.958014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423702, 17.209503, 19.014984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141249, -0.083166, 0.986475,
		0.861611, 0.501044, -0.081129,
		-0.487520, 0.861417, 0.142428,
		18.277447, 17.467928, 19.057713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990229, 17.235037, 19.478142>,  <18.618710, 16.864937, 18.958014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990229, 17.235037, 19.478142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615562, 17.373547, 19.499138>,  <18.390762, 17.456652, 19.511736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615562, 17.373547, 19.499138>,  <18.990229, 17.235037, 19.478142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615562, 17.373547, 19.499138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028781, -0.225466, 0.973826,
		0.349046, 0.910636, 0.221152,
		-0.936664, 0.346275, 0.052489,
		18.334564, 17.477428, 19.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959789, 17.622046, 20.135889>,  <18.990229, 17.235037, 19.478142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959789, 17.622046, 20.135889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.574093, 17.578362, 20.039297>,  <18.342674, 17.552151, 19.981342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.574093, 17.578362, 20.039297>,  <18.959789, 17.622046, 20.135889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574093, 17.578362, 20.039297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199395, -0.301284, 0.932454,
		-0.174587, 0.947260, 0.268734,
		-0.964241, -0.109209, -0.241479,
		18.284821, 17.545599, 19.966854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610682, 18.009157, 20.631105>,  <18.959789, 17.622046, 20.135889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610682, 18.009157, 20.631105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.313709, 17.770245, 20.509743>,  <18.135527, 17.626898, 20.436924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.313709, 17.770245, 20.509743>,  <18.610682, 18.009157, 20.631105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313709, 17.770245, 20.509743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269703, -0.148094, 0.951487,
		-0.613237, 0.788242, -0.051139,
		-0.742429, -0.597280, -0.303408,
		18.090981, 17.591061, 20.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939283, 18.246567, 20.971262>,  <18.610682, 18.009157, 20.631105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939283, 18.246567, 20.971262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.906685, 17.862782, 20.863342>,  <17.887127, 17.632511, 20.798590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.906685, 17.862782, 20.863342>,  <17.939283, 18.246567, 20.971262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906685, 17.862782, 20.863342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418582, -0.212722, 0.882915,
		-0.904515, 0.184886, -0.384277,
		-0.081495, -0.959461, -0.269801,
		17.882236, 17.574944, 20.782402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235729, 17.990505, 21.154322>,  <17.939283, 18.246567, 20.971262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235729, 17.990505, 21.154322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.473976, 17.670849, 21.121778>,  <17.616924, 17.479055, 21.102253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.473976, 17.670849, 21.121778>,  <17.235729, 17.990505, 21.154322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473976, 17.670849, 21.121778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419862, -0.396068, 0.816607,
		-0.684806, -0.452224, -0.571432,
		0.595615, -0.799139, -0.081358,
		17.652660, 17.431107, 21.097372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816948, 17.379229, 21.110413>,  <17.235729, 17.990505, 21.154322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816948, 17.379229, 21.110413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.179031, 17.251076, 21.222090>,  <17.396282, 17.174185, 21.289097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.179031, 17.251076, 21.222090>,  <16.816948, 17.379229, 21.110413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179031, 17.251076, 21.222090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409533, -0.482224, 0.774431,
		-0.113478, -0.815362, -0.567721,
		0.905210, -0.320381, 0.279196,
		17.450594, 17.154961, 21.305849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687416, 16.739862, 21.300573>,  <16.816948, 17.379229, 21.110413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687416, 16.739862, 21.300573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.050369, 16.786251, 21.462172>,  <17.268141, 16.814083, 21.559130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.050369, 16.786251, 21.462172>,  <16.687416, 16.739862, 21.300573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050369, 16.786251, 21.462172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286260, -0.533283, 0.796030,
		0.307758, -0.837950, -0.450693,
		0.907381, 0.115969, 0.403994,
		17.322584, 16.821041, 21.583370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885586, 16.146387, 21.661850>,  <16.687416, 16.739862, 21.300573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885586, 16.146387, 21.661850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.110962, 16.442204, 21.809153>,  <17.246187, 16.619694, 21.897533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.110962, 16.442204, 21.809153>,  <16.885586, 16.146387, 21.661850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110962, 16.442204, 21.809153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039132, -0.421354, 0.906052,
		0.825230, -0.524916, -0.208468,
		0.563439, 0.739543, 0.368255,
		17.279993, 16.664066, 21.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338043, 15.805349, 22.205784>,  <16.885586, 16.146387, 21.661850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338043, 15.805349, 22.205784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.291676, 16.194405, 22.286320>,  <17.263855, 16.427837, 22.334642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.291676, 16.194405, 22.286320>,  <17.338043, 15.805349, 22.205784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291676, 16.194405, 22.286320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093653, -0.212507, 0.972661,
		0.988834, 0.093894, 0.115725,
		-0.115919, 0.972638, 0.201341,
		17.256901, 16.486197, 22.346722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556492, 15.849053, 22.862602>,  <17.338043, 15.805349, 22.205784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556492, 15.849053, 22.862602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.404617, 16.217278, 22.825924>,  <17.313492, 16.438211, 22.803917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.404617, 16.217278, 22.825924>,  <17.556492, 15.849053, 22.862602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404617, 16.217278, 22.825924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112712, 0.052346, 0.992248,
		0.918223, 0.387079, 0.083883,
		-0.379688, 0.920559, -0.091694,
		17.290710, 16.493444, 22.798416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924479, 16.187382, 23.356710>,  <17.556492, 15.849053, 22.862602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924479, 16.187382, 23.356710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.588985, 16.384857, 23.264801>,  <17.387690, 16.503342, 23.209656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.588985, 16.384857, 23.264801>,  <17.924479, 16.187382, 23.356710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.588985, 16.384857, 23.264801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118155, 0.246911, 0.961808,
		0.531567, 0.833850, -0.148762,
		-0.838735, 0.493688, -0.229773,
		17.337364, 16.532963, 23.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961546, 16.777508, 23.730186>,  <17.924479, 16.187382, 23.356710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961546, 16.777508, 23.730186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.570164, 16.725849, 23.665756>,  <17.335335, 16.694855, 23.627098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.570164, 16.725849, 23.665756>,  <17.961546, 16.777508, 23.730186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570164, 16.725849, 23.665756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192572, 0.289640, 0.937563,
		-0.074430, 0.948383, -0.308270,
		-0.978456, -0.129147, -0.161074,
		17.276627, 16.687105, 23.617434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612028, 17.375904, 24.129946>,  <17.961546, 16.777508, 23.730186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612028, 17.375904, 24.129946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.332970, 17.099899, 24.052826>,  <17.165535, 16.934296, 24.006554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.332970, 17.099899, 24.052826>,  <17.612028, 17.375904, 24.129946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332970, 17.099899, 24.052826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235260, -0.033544, 0.971353,
		-0.676712, 0.723021, -0.138930,
		-0.697648, -0.690012, -0.192798,
		17.123674, 16.892897, 23.994987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073364, 17.577415, 24.516039>,  <17.612028, 17.375904, 24.129946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073364, 17.577415, 24.516039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.996819, 17.190292, 24.450642>,  <16.950891, 16.958019, 24.411404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.996819, 17.190292, 24.450642>,  <17.073364, 17.577415, 24.516039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996819, 17.190292, 24.450642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348281, -0.088779, 0.933177,
		-0.917650, 0.235518, -0.320079,
		-0.191363, -0.967807, -0.163494,
		16.939409, 16.899950, 24.401594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440378, 17.501240, 24.797979>,  <17.073364, 17.577415, 24.516039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440378, 17.501240, 24.797979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.626892, 17.147575, 24.786373>,  <16.738800, 16.935377, 24.779409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.626892, 17.147575, 24.786373>,  <16.440378, 17.501240, 24.797979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626892, 17.147575, 24.786373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203405, -0.139077, 0.969167,
		-0.860933, -0.446004, -0.244692,
		0.466283, -0.884159, -0.029016,
		16.766777, 16.882328, 24.777668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990944, 17.133257, 25.161831>,  <16.440378, 17.501240, 24.797979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.990944, 17.133257, 25.161831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.344696, 16.946793, 25.171329>,  <16.556948, 16.834913, 25.177029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.344696, 16.946793, 25.171329>,  <15.990944, 17.133257, 25.161831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344696, 16.946793, 25.171329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026927, 0.101739, 0.994447,
		-0.465988, -0.878830, 0.102528,
		0.884381, -0.466161, 0.023745,
		16.610010, 16.806944, 25.178453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898968, 16.779154, 25.823858>,  <15.990944, 17.133257, 25.161831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898968, 16.779154, 25.823858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.283363, 16.737583, 25.721331>,  <16.514000, 16.712641, 25.659815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.283363, 16.737583, 25.721331>,  <15.898968, 16.779154, 25.823858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283363, 16.737583, 25.721331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265301, 0.084349, 0.960469,
		-0.078197, -0.991002, 0.108630,
		0.960989, -0.103926, -0.256318,
		16.571661, 16.706406, 25.644436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165138, 16.138802, 26.161734>,  <15.898968, 16.779154, 25.823858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165138, 16.138802, 26.161734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.457832, 16.402004, 26.090641>,  <16.633450, 16.559925, 26.047985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.457832, 16.402004, 26.090641>,  <16.165138, 16.138802, 26.161734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457832, 16.402004, 26.090641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218068, 0.021041, 0.975707,
		0.645762, -0.752718, -0.128094,
		0.731737, 0.658007, -0.177731,
		16.677353, 16.599407, 26.037321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736229, 15.858289, 26.549219>,  <16.165138, 16.138802, 26.161734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736229, 15.858289, 26.549219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.870052, 16.224998, 26.461954>,  <16.950346, 16.445024, 26.409595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.870052, 16.224998, 26.461954>,  <16.736229, 15.858289, 26.549219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870052, 16.224998, 26.461954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492141, 0.027454, 0.870082,
		0.803659, -0.398460, -0.441998,
		0.334558, 0.916775, -0.218162,
		16.970419, 16.500031, 26.396505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421659, 15.864224, 26.535427>,  <16.736229, 15.858289, 26.549219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421659, 15.864224, 26.535427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.288589, 16.218216, 26.665743>,  <17.208748, 16.430611, 26.743933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.288589, 16.218216, 26.665743>,  <17.421659, 15.864224, 26.535427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288589, 16.218216, 26.665743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588744, -0.074969, 0.804835,
		0.736686, 0.459557, -0.496086,
		-0.332677, 0.884979, 0.325790,
		17.188786, 16.483709, 26.763479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976522, 16.226089, 26.738503>,  <17.421659, 15.864224, 26.535427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976522, 16.226089, 26.738503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.689697, 16.430180, 26.928446>,  <17.517603, 16.552633, 27.042412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.689697, 16.430180, 26.928446>,  <17.976522, 16.226089, 26.738503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689697, 16.430180, 26.928446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653052, 0.253690, 0.713558,
		0.243608, 0.821774, -0.515115,
		-0.717062, 0.510225, 0.474860,
		17.474579, 16.583246, 27.070904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168146, 15.649414, 26.374636>,  <17.976522, 16.226089, 26.738503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168146, 15.649414, 26.374636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.458294, 15.487549, 26.597378>,  <18.632381, 15.390429, 26.731024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.458294, 15.487549, 26.597378>,  <18.168146, 15.649414, 26.374636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458294, 15.487549, 26.597378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654006, 0.152768, -0.740903,
		0.214747, 0.901615, 0.375466,
		0.725369, -0.404664, 0.556855,
		18.675905, 15.366150, 26.764435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642160, 16.101494, 26.394819>,  <18.168146, 15.649414, 26.374636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642160, 16.101494, 26.394819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.858345, 15.778450, 26.489191>,  <18.988056, 15.584623, 26.545815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.858345, 15.778450, 26.489191>,  <18.642160, 16.101494, 26.394819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858345, 15.778450, 26.489191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550465, 0.127343, -0.825089,
		0.636308, 0.575801, 0.513386,
		0.540463, -0.807612, 0.235929,
		19.020485, 15.536166, 26.559969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284193, 16.356243, 26.305094>,  <18.642160, 16.101494, 26.394819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284193, 16.356243, 26.305094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.305096, 15.957554, 26.280388>,  <19.317636, 15.718341, 26.265564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.305096, 15.957554, 26.280388>,  <19.284193, 16.356243, 26.305094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305096, 15.957554, 26.280388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656033, 0.080895, -0.750385,
		0.752921, -0.001307, 0.658110,
		0.052257, -0.996722, -0.061765,
		19.320772, 15.658537, 26.261858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.931967, 16.221027, 26.093040>,  <19.284193, 16.356243, 26.305094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.931967, 16.221027, 26.093040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.745026, 15.879761, 26.000355>,  <19.632860, 15.675001, 25.944744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.745026, 15.879761, 26.000355>,  <19.931967, 16.221027, 26.093040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.745026, 15.879761, 26.000355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547975, -0.073874, -0.833226,
		0.693762, -0.516384, 0.502038,
		-0.467352, -0.853165, -0.231714,
		19.604820, 15.623812, 25.930840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516098, 15.704326, 25.887859>,  <19.931967, 16.221027, 26.093040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516098, 15.704326, 25.887859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.167095, 15.584415, 25.733528>,  <19.957693, 15.512469, 25.640928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.167095, 15.584415, 25.733528>,  <20.516098, 15.704326, 25.887859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.167095, 15.584415, 25.733528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447906, -0.175226, -0.876742,
		0.195218, -0.937780, 0.287157,
		-0.872508, -0.299775, -0.385830,
		19.905342, 15.494483, 25.617779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619493, 15.094042, 25.602581>,  <20.516098, 15.704326, 25.887859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619493, 15.094042, 25.602581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.286663, 15.218166, 25.418686>,  <20.086966, 15.292641, 25.308350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.286663, 15.218166, 25.418686>,  <20.619493, 15.094042, 25.602581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286663, 15.218166, 25.418686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432486, -0.155993, -0.888044,
		-0.347286, -0.937749, -0.004408,
		-0.832074, 0.310311, -0.459738,
		20.037041, 15.311259, 25.280764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549562, 14.768576, 24.958183>,  <20.619493, 15.094042, 25.602581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549562, 14.768576, 24.958183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.307106, 15.078300, 24.885485>,  <20.161633, 15.264135, 24.841866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.307106, 15.078300, 24.885485>,  <20.549562, 14.768576, 24.958183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307106, 15.078300, 24.885485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359441, 0.062839, -0.931050,
		-0.709503, -0.629675, -0.316409,
		-0.606141, 0.774313, -0.181747,
		20.125263, 15.310595, 24.830961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.209110, 14.587695, 24.340025>,  <20.549562, 14.768576, 24.958183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.209110, 14.587695, 24.340025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.159157, 14.984188, 24.357279>,  <20.129185, 15.222084, 24.367630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.159157, 14.984188, 24.357279>,  <20.209110, 14.587695, 24.340025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159157, 14.984188, 24.357279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276606, 0.076533, -0.957931,
		-0.952834, -0.107698, -0.283739,
		-0.124883, 0.991233, 0.043133,
		20.121693, 15.281558, 24.370218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863068, 14.713275, 23.684849>,  <20.209110, 14.587695, 24.340025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863068, 14.713275, 23.684849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.987865, 15.074303, 23.803528>,  <20.062744, 15.290919, 23.874735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.987865, 15.074303, 23.803528>,  <19.863068, 14.713275, 23.684849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987865, 15.074303, 23.803528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094446, 0.281274, -0.954969,
		-0.945378, 0.325968, 0.002512,
		0.311996, 0.902569, 0.296696,
		20.081465, 15.345074, 23.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343081, 15.196764, 23.549465>,  <19.863068, 14.713275, 23.684849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343081, 15.196764, 23.549465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.678387, 15.413990, 23.569019>,  <19.879570, 15.544326, 23.580751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.678387, 15.413990, 23.569019>,  <19.343081, 15.196764, 23.549465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678387, 15.413990, 23.569019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174897, 0.352713, -0.919241,
		-0.516450, 0.762020, 0.390648,
		0.838266, 0.543065, 0.048883,
		19.929867, 15.576910, 23.583685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120716, 15.782649, 23.235893>,  <19.343081, 15.196764, 23.549465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120716, 15.782649, 23.235893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.520164, 15.799770, 23.223759>,  <19.759834, 15.810043, 23.216478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.520164, 15.799770, 23.223759>,  <19.120716, 15.782649, 23.235893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520164, 15.799770, 23.223759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041952, 0.304215, -0.951679,
		-0.031505, 0.951641, 0.305591,
		0.998623, 0.042803, -0.030338,
		19.819752, 15.812612, 23.214657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208666, 16.416779, 23.023373>,  <19.120716, 15.782649, 23.235893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208666, 16.416779, 23.023373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.541050, 16.208611, 22.944714>,  <19.740480, 16.083710, 22.897518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.541050, 16.208611, 22.944714>,  <19.208666, 16.416779, 23.023373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541050, 16.208611, 22.944714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069367, 0.253793, -0.964768,
		0.551993, 0.815323, 0.174791,
		0.830958, -0.520421, -0.196648,
		19.790337, 16.052485, 22.885719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644629, 16.778301, 22.453896>,  <19.208666, 16.416779, 23.023373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644629, 16.778301, 22.453896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.767365, 16.397606, 22.456465>,  <19.841005, 16.169188, 22.458006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.767365, 16.397606, 22.456465>,  <19.644629, 16.778301, 22.453896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767365, 16.397606, 22.456465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079664, 0.018955, -0.996642,
		0.948421, 0.306321, 0.081636,
		0.306840, -0.951740, 0.006425,
		19.859417, 16.112083, 22.458393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283632, 16.745911, 22.098680>,  <19.644629, 16.778301, 22.453896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283632, 16.745911, 22.098680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.100651, 16.391270, 22.071344>,  <19.990862, 16.178486, 22.054943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.100651, 16.391270, 22.071344>,  <20.283632, 16.745911, 22.098680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100651, 16.391270, 22.071344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169247, -0.011363, -0.985508,
		0.872977, -0.462393, 0.155253,
		-0.457456, -0.886602, -0.068339,
		19.963413, 16.125290, 22.050842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521540, 16.508223, 21.395006>,  <20.283632, 16.745911, 22.098680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521540, 16.508223, 21.395006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.239437, 16.248234, 21.508249>,  <20.070175, 16.092239, 21.576195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.239437, 16.248234, 21.508249>,  <20.521540, 16.508223, 21.395006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239437, 16.248234, 21.508249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050812, -0.444648, -0.894263,
		0.707131, -0.616298, 0.346616,
		-0.705254, -0.649974, 0.283109,
		20.027861, 16.053242, 21.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766033, 15.857806, 21.192595>,  <20.521540, 16.508223, 21.395006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766033, 15.857806, 21.192595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.369240, 15.828991, 21.234129>,  <20.131165, 15.811702, 21.259050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.369240, 15.828991, 21.234129>,  <20.766033, 15.857806, 21.192595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369240, 15.828991, 21.234129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089954, -0.174631, -0.980516,
		0.088766, -0.981995, 0.166751,
		-0.991982, -0.072037, 0.103836,
		20.071646, 15.807380, 21.265280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506681, 15.167980, 20.842587>,  <20.766033, 15.857806, 21.192595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506681, 15.167980, 20.842587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.199944, 15.423801, 20.864204>,  <20.015902, 15.577294, 20.877176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.199944, 15.423801, 20.864204>,  <20.506681, 15.167980, 20.842587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199944, 15.423801, 20.864204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202689, -0.161410, -0.965849,
		-0.608989, -0.751610, 0.253407,
		-0.766844, 0.639554, 0.054046,
		19.969891, 15.615667, 20.880419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990427, 14.823430, 20.504709>,  <20.506681, 15.167980, 20.842587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990427, 14.823430, 20.504709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.883305, 15.208805, 20.501429>,  <19.819031, 15.440030, 20.499460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.883305, 15.208805, 20.501429>,  <19.990427, 14.823430, 20.504709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883305, 15.208805, 20.501429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235922, -0.073829, -0.968964,
		-0.934142, -0.257560, 0.247068,
		-0.267807, 0.963438, -0.008203,
		19.802963, 15.497836, 20.498968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424437, 14.791207, 20.162888>,  <19.990427, 14.823430, 20.504709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424437, 14.791207, 20.162888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.517418, 15.179550, 20.139555>,  <19.573208, 15.412556, 20.125555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.517418, 15.179550, 20.139555>,  <19.424437, 14.791207, 20.162888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517418, 15.179550, 20.139555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219322, -0.006104, -0.975633,
		-0.947556, 0.239584, 0.211511,
		0.232455, 0.970856, -0.058330,
		19.587154, 15.470807, 20.122055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991417, 15.069758, 19.641682>,  <19.424437, 14.791207, 20.162888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991417, 15.069758, 19.641682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.299248, 15.324196, 19.664089>,  <19.483946, 15.476858, 19.677534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.299248, 15.324196, 19.664089>,  <18.991417, 15.069758, 19.641682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299248, 15.324196, 19.664089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108894, -0.044292, -0.993066,
		-0.629202, 0.770339, -0.103353,
		0.769575, 0.636094, 0.056017,
		19.530121, 15.515024, 19.680895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.622419, 18.125242, 15.477079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.014000, 18.045528, 15.494684>,  <17.248949, 17.997700, 15.505247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.014000, 18.045528, 15.494684>,  <16.622419, 18.125242, 15.477079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014000, 18.045528, 15.494684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028461, -0.080244, -0.996369,
		0.202091, 0.976651, -0.072884,
		0.978953, -0.199282, 0.044013,
		17.307686, 17.985744, 15.507888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923780, 18.631248, 15.104539>,  <16.622419, 18.125242, 15.477079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923780, 18.631248, 15.104539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.172958, 18.318737, 15.088837>,  <17.322466, 18.131229, 15.079415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.172958, 18.318737, 15.088837>,  <16.923780, 18.631248, 15.104539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172958, 18.318737, 15.088837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209342, -0.118146, -0.970679,
		0.753734, 0.612897, -0.237153,
		0.622945, -0.781280, -0.039255,
		17.359842, 18.084352, 15.077060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951445, 18.535332, 14.435296>,  <16.923780, 18.631248, 15.104539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951445, 18.535332, 14.435296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.124580, 18.193066, 14.548777>,  <17.228462, 17.987705, 14.616865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.124580, 18.193066, 14.548777>,  <16.951445, 18.535332, 14.435296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124580, 18.193066, 14.548777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067095, -0.344416, -0.936416,
		0.898971, 0.386281, -0.206487,
		0.432837, -0.855666, 0.283702,
		17.254431, 17.936365, 14.633887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395910, 18.423170, 13.845449>,  <16.951445, 18.535332, 14.435296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395910, 18.423170, 13.845449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322086, 18.091839, 14.057037>,  <17.277792, 17.893040, 14.183990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322086, 18.091839, 14.057037>,  <17.395910, 18.423170, 13.845449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322086, 18.091839, 14.057037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132239, -0.512393, -0.848508,
		0.973884, -0.226552, -0.014969,
		-0.184560, -0.828328, 0.528970,
		17.266718, 17.843340, 14.215729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874491, 17.932999, 13.609472>,  <17.395910, 18.423170, 13.845449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874491, 17.932999, 13.609472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.571564, 17.718060, 13.757917>,  <17.389807, 17.589096, 13.846984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.571564, 17.718060, 13.757917>,  <17.874491, 17.932999, 13.609472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571564, 17.718060, 13.757917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066936, -0.501414, -0.862615,
		0.649606, -0.678115, 0.343762,
		-0.757319, -0.537349, 0.371112,
		17.344368, 17.556854, 13.869251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048313, 17.257416, 13.403711>,  <17.874491, 17.932999, 13.609472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048313, 17.257416, 13.403711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.653519, 17.256336, 13.468029>,  <17.416643, 17.255688, 13.506619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.653519, 17.256336, 13.468029>,  <18.048313, 17.257416, 13.403711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653519, 17.256336, 13.468029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144664, -0.421830, -0.895059,
		0.070245, -0.906671, 0.415949,
		-0.986984, -0.002700, 0.160794,
		17.357424, 17.255526, 13.516267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851463, 16.589207, 13.104076>,  <18.048313, 17.257416, 13.403711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851463, 16.589207, 13.104076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.531544, 16.825081, 13.148962>,  <17.339592, 16.966606, 13.175894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.531544, 16.825081, 13.148962>,  <17.851463, 16.589207, 13.104076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531544, 16.825081, 13.148962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360406, -0.322246, -0.875366,
		-0.480030, -0.740559, 0.470258,
		-0.799799, 0.589686, 0.112214,
		17.291603, 17.001986, 13.182627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402048, 16.202129, 12.817033>,  <17.851463, 16.589207, 13.104076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402048, 16.202129, 12.817033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.210880, 16.552490, 12.790526>,  <17.096180, 16.762707, 12.774622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.210880, 16.552490, 12.790526>,  <17.402048, 16.202129, 12.817033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210880, 16.552490, 12.790526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407848, -0.288084, -0.866411,
		-0.777980, -0.387048, 0.494915,
		-0.477920, 0.875900, -0.066267,
		17.067505, 16.815260, 12.770646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771200, 15.988691, 12.552215>,  <17.402048, 16.202129, 12.817033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771200, 15.988691, 12.552215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.799286, 16.382915, 12.490581>,  <16.816137, 16.619450, 12.453600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.799286, 16.382915, 12.490581>,  <16.771200, 15.988691, 12.552215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799286, 16.382915, 12.490581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466543, -0.104087, -0.878352,
		-0.881707, 0.133558, 0.452498,
		0.070212, 0.985560, -0.154085,
		16.820349, 16.678583, 12.444355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122675, 16.216789, 12.386130>,  <16.771200, 15.988691, 12.552215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122675, 16.216789, 12.386130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.339127, 16.511772, 12.224471>,  <16.468998, 16.688763, 12.127476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.339127, 16.511772, 12.224471>,  <16.122675, 16.216789, 12.386130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339127, 16.511772, 12.224471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547090, -0.056261, -0.835180,
		-0.638648, 0.673045, 0.373012,
		0.541128, 0.737458, -0.404148,
		16.501465, 16.733009, 12.103227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660054, 16.685713, 12.109756>,  <16.122675, 16.216789, 12.386130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660054, 16.685713, 12.109756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.000599, 16.752403, 11.910806>,  <16.204926, 16.792418, 11.791435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.000599, 16.752403, 11.910806>,  <15.660054, 16.685713, 12.109756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.000599, 16.752403, 11.910806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504570, 0.000901, -0.863371,
		-0.143499, 0.986003, 0.084893,
		0.851362, 0.166727, -0.497378,
		16.256008, 16.802422, 11.761592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485095, 17.238779, 11.634153>,  <15.660054, 16.685713, 12.109756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485095, 17.238779, 11.634153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.830451, 17.083843, 11.504831>,  <16.037664, 16.990881, 11.427238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.830451, 17.083843, 11.504831>,  <15.485095, 17.238779, 11.634153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830451, 17.083843, 11.504831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309828, 0.098706, -0.945655,
		0.398202, 0.916638, -0.034787,
		0.863389, -0.387340, -0.323305,
		16.089468, 16.967642, 11.407840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631390, 17.434259, 10.941893>,  <15.485095, 17.238779, 11.634153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631390, 17.434259, 10.941893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.934758, 17.173645, 10.948820>,  <16.116779, 17.017277, 10.952976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.934758, 17.173645, 10.948820>,  <15.631390, 17.434259, 10.941893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934758, 17.173645, 10.948820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104058, 0.094814, -0.990041,
		0.643404, 0.752670, 0.139706,
		0.758421, -0.651535, 0.017318,
		16.162285, 16.978184, 10.954016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112997, 17.779833, 10.579335>,  <15.631390, 17.434259, 10.941893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112997, 17.779833, 10.579335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.202091, 17.391266, 10.546515>,  <16.255548, 17.158125, 10.526824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.202091, 17.391266, 10.546515>,  <16.112997, 17.779833, 10.579335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202091, 17.391266, 10.546515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142909, 0.115790, -0.982939,
		0.964347, 0.207211, 0.164615,
		0.222737, -0.971420, -0.082050,
		16.268913, 17.099840, 10.521900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961956, 18.604576, 10.542272>,  <16.112997, 17.779833, 10.579335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961956, 18.604576, 10.542272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.643989, 18.845898, 10.567978>,  <15.453208, 18.990690, 10.583402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.643989, 18.845898, 10.567978>,  <15.961956, 18.604576, 10.542272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643989, 18.845898, 10.567978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113138, 0.043335, 0.992634,
		0.596074, 0.796334, -0.102704,
		-0.794918, 0.603303, 0.064265,
		15.405513, 19.026888, 10.587257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162838, 19.029402, 11.000911>,  <15.961956, 18.604576, 10.542272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162838, 19.029402, 11.000911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.767764, 19.090145, 11.015962>,  <15.530720, 19.126591, 11.024992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.767764, 19.090145, 11.015962>,  <16.162838, 19.029402, 11.000911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767764, 19.090145, 11.015962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052238, 0.093405, 0.994257,
		0.147473, 0.983979, -0.100187,
		-0.987686, 0.151859, 0.037626,
		15.471458, 19.135702, 11.027249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064997, 19.581306, 11.413641>,  <16.162838, 19.029402, 11.000911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064997, 19.581306, 11.413641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.698895, 19.421997, 11.437945>,  <15.479235, 19.326412, 11.452528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.698895, 19.421997, 11.437945>,  <16.064997, 19.581306, 11.413641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698895, 19.421997, 11.437945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055330, 0.273648, 0.960237,
		-0.399063, 0.875497, -0.272494,
		-0.915253, -0.398272, 0.060761,
		15.424319, 19.302515, 11.456174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633676, 20.153252, 11.673733>,  <16.064997, 19.581306, 11.413641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633676, 20.153252, 11.673733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.416667, 19.820843, 11.722840>,  <15.286462, 19.621397, 11.752305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.416667, 19.820843, 11.722840>,  <15.633676, 20.153252, 11.673733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416667, 19.820843, 11.722840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170068, 0.251776, 0.952725,
		-0.822646, 0.495995, -0.277925,
		-0.542522, -0.831022, 0.122770,
		15.253910, 19.571535, 11.759671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997652, 20.356018, 12.078156>,  <15.633676, 20.153252, 11.673733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997652, 20.356018, 12.078156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.061450, 19.965298, 12.135312>,  <15.099729, 19.730865, 12.169606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.061450, 19.965298, 12.135312>,  <14.997652, 20.356018, 12.078156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061450, 19.965298, 12.135312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036457, 0.150474, 0.987941,
		-0.986525, -0.152362, 0.059612,
		0.159494, -0.976802, 0.142892,
		15.109299, 19.672256, 12.178180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581512, 20.170746, 12.738672>,  <14.997652, 20.356018, 12.078156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.581512, 20.170746, 12.738672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.851590, 19.877754, 12.703836>,  <15.013637, 19.701960, 12.682935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.851590, 19.877754, 12.703836>,  <14.581512, 20.170746, 12.738672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851590, 19.877754, 12.703836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249734, 0.115900, 0.961353,
		-0.694079, -0.670850, 0.261180,
		0.675195, -0.732480, -0.087090,
		15.054149, 19.658010, 12.677710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362995, 19.675335, 13.208056>,  <14.581512, 20.170746, 12.738672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362995, 19.675335, 13.208056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.751466, 19.622593, 13.128628>,  <14.984549, 19.590948, 13.080971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.751466, 19.622593, 13.128628>,  <14.362995, 19.675335, 13.208056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751466, 19.622593, 13.128628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186862, -0.096042, 0.977680,
		-0.147981, -0.986606, -0.068636,
		0.971177, -0.131853, -0.198571,
		15.042819, 19.583036, 13.069057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560205, 19.256226, 13.839923>,  <14.362995, 19.675335, 13.208056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560205, 19.256226, 13.839923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.907722, 19.366085, 13.675112>,  <15.116232, 19.432001, 13.576225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.907722, 19.366085, 13.675112>,  <14.560205, 19.256226, 13.839923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907722, 19.366085, 13.675112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389252, 0.135528, 0.911107,
		0.306075, -0.951946, 0.010838,
		0.868793, 0.274648, -0.412028,
		15.168360, 19.448479, 13.551503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056222, 18.923235, 14.245385>,  <14.560205, 19.256226, 13.839923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056222, 18.923235, 14.245385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.238494, 19.231968, 14.068012>,  <15.347857, 19.417208, 13.961589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.238494, 19.231968, 14.068012>,  <15.056222, 18.923235, 14.245385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238494, 19.231968, 14.068012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386003, 0.277545, 0.879756,
		0.802095, -0.572054, -0.171457,
		0.455680, 0.771831, -0.443432,
		15.375198, 19.463518, 13.934982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823384, 18.907652, 14.384888>,  <15.056222, 18.923235, 14.245385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823384, 18.907652, 14.384888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738055, 19.288589, 14.297674>,  <15.686858, 19.517151, 14.245346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738055, 19.288589, 14.297674>,  <15.823384, 18.907652, 14.384888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738055, 19.288589, 14.297674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303506, 0.276728, 0.911760,
		0.928643, 0.128324, -0.348073,
		-0.213322, 0.952342, -0.218034,
		15.674059, 19.574291, 14.232264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332386, 19.196270, 14.607431>,  <15.823384, 18.907652, 14.384888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332386, 19.196270, 14.607431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.072060, 19.499939, 14.611330>,  <15.915864, 19.682140, 14.613669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.072060, 19.499939, 14.611330>,  <16.332386, 19.196270, 14.607431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072060, 19.499939, 14.611330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356743, 0.294442, 0.886588,
		0.670204, 0.580482, -0.462457,
		-0.650816, 0.759173, 0.009747,
		15.876815, 19.727692, 14.614254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736843, 19.837452, 14.746434>,  <16.332386, 19.196270, 14.607431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736843, 19.837452, 14.746434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.353352, 19.886646, 14.848972>,  <16.123257, 19.916162, 14.910495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.353352, 19.886646, 14.848972>,  <16.736843, 19.837452, 14.746434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353352, 19.886646, 14.848972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282280, 0.303922, 0.909917,
		0.033999, 0.944725, -0.326096,
		-0.958729, 0.122987, 0.256344,
		16.065733, 19.923542, 14.925876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631187, 20.450850, 15.051743>,  <16.736843, 19.837452, 14.746434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631187, 20.450850, 15.051743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.313686, 20.263264, 15.206678>,  <16.123186, 20.150713, 15.299640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.313686, 20.263264, 15.206678>,  <16.631187, 20.450850, 15.051743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313686, 20.263264, 15.206678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210390, 0.385819, 0.898265,
		-0.570696, 0.794492, -0.207579,
		-0.793752, -0.468964, 0.387338,
		16.075562, 20.122574, 15.322880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416832, 20.846935, 15.549395>,  <16.631187, 20.450850, 15.051743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416832, 20.846935, 15.549395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.173820, 20.543427, 15.643353>,  <16.028013, 20.361320, 15.699727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.173820, 20.543427, 15.643353>,  <16.416832, 20.846935, 15.549395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173820, 20.543427, 15.643353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095325, 0.223940, 0.969930,
		-0.788559, 0.611649, -0.063719,
		-0.607526, -0.758772, 0.234895,
		15.991563, 20.315794, 15.713821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443935, 21.639019, 15.477087>,  <16.416832, 20.846935, 15.549395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443935, 21.639019, 15.477087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772072, 21.818157, 15.619339>,  <16.968954, 21.925640, 15.704690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772072, 21.818157, 15.619339>,  <16.443935, 21.639019, 15.477087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772072, 21.818157, 15.619339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301253, 0.190171, -0.934388,
		-0.486091, 0.873654, 0.021091,
		0.820343, 0.447844, 0.355631,
		17.018175, 21.952511, 15.726028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473892, 22.168245, 15.043257>,  <16.443935, 21.639019, 15.477087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.473892, 22.168245, 15.043257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.839787, 22.104244, 15.191668>,  <17.059322, 22.065844, 15.280714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.839787, 22.104244, 15.191668>,  <16.473892, 22.168245, 15.043257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839787, 22.104244, 15.191668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391566, 0.124484, -0.911691,
		0.099684, 0.979236, 0.176521,
		0.914734, -0.160001, 0.371027,
		17.114206, 22.056244, 15.302976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825211, 22.658144, 14.734416>,  <16.473892, 22.168245, 15.043257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825211, 22.658144, 14.734416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100533, 22.398403, 14.863768>,  <17.265726, 22.242558, 14.941379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100533, 22.398403, 14.863768>,  <16.825211, 22.658144, 14.734416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100533, 22.398403, 14.863768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380046, -0.056920, -0.923215,
		0.617899, 0.758353, 0.207606,
		0.688306, -0.649354, 0.323380,
		17.307024, 22.203596, 14.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496653, 22.910383, 14.444138>,  <16.825211, 22.658144, 14.734416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496653, 22.910383, 14.444138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.526379, 22.522392, 14.536766>,  <17.544214, 22.289598, 14.592343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.526379, 22.522392, 14.536766>,  <17.496653, 22.910383, 14.444138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526379, 22.522392, 14.536766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376795, -0.187689, -0.907082,
		0.923311, 0.154664, 0.351534,
		0.074314, -0.969975, 0.231572,
		17.548672, 22.231400, 14.606237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149910, 22.662750, 14.215389>,  <17.496653, 22.910383, 14.444138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149910, 22.662750, 14.215389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.944092, 22.320663, 14.240198>,  <17.820601, 22.115412, 14.255083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.944092, 22.320663, 14.240198>,  <18.149910, 22.662750, 14.215389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944092, 22.320663, 14.240198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372458, -0.288070, -0.882208,
		0.772347, -0.430834, 0.466757,
		-0.514544, -0.855218, 0.062022,
		17.789728, 22.064098, 14.258805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618277, 22.160208, 13.899921>,  <18.149910, 22.662750, 14.215389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618277, 22.160208, 13.899921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268127, 21.970943, 13.939613>,  <18.058039, 21.857386, 13.963428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268127, 21.970943, 13.939613>,  <18.618277, 22.160208, 13.899921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268127, 21.970943, 13.939613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104340, -0.385318, -0.916866,
		0.472058, -0.792244, 0.386666,
		-0.875371, -0.473159, 0.099230,
		18.005516, 21.828997, 13.969382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668133, 21.573706, 13.512801>,  <18.618277, 22.160208, 13.899921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668133, 21.573706, 13.512801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268890, 21.591930, 13.529314>,  <18.029345, 21.602865, 13.539222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268890, 21.591930, 13.529314>,  <18.668133, 21.573706, 13.512801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268890, 21.591930, 13.529314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052474, -0.281364, -0.958165,
		-0.032040, -0.958519, 0.283223,
		-0.998108, 0.045562, 0.041283,
		17.969458, 21.605598, 13.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420702, 21.002321, 13.161835>,  <18.668133, 21.573706, 13.512801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420702, 21.002321, 13.161835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.108158, 21.251007, 13.140127>,  <17.920631, 21.400219, 13.127103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.108158, 21.251007, 13.140127>,  <18.420702, 21.002321, 13.161835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108158, 21.251007, 13.140127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163132, -0.287407, -0.943814,
		-0.602380, -0.728607, 0.325990,
		-0.781362, 0.621714, -0.054269,
		17.873749, 21.437521, 13.123846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942595, 20.669390, 12.766965>,  <18.420702, 21.002321, 13.161835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942595, 20.669390, 12.766965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.829144, 21.052959, 12.768711>,  <17.761074, 21.283102, 12.769758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.829144, 21.052959, 12.768711>,  <17.942595, 20.669390, 12.766965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.829144, 21.052959, 12.768711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248322, -0.069049, -0.966213,
		-0.926225, -0.275127, 0.257706,
		-0.283625, 0.958925, 0.004365,
		17.744057, 21.340637, 12.770020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242392, 20.724661, 12.346645>,  <17.942595, 20.669390, 12.766965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242392, 20.724661, 12.346645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.437141, 21.073532, 12.365642>,  <17.553991, 21.282856, 12.377039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.437141, 21.073532, 12.365642>,  <17.242392, 20.724661, 12.346645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437141, 21.073532, 12.365642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252842, 0.192769, -0.948109,
		-0.836077, 0.449602, 0.314378,
		0.486874, 0.872180, 0.047491,
		17.583204, 21.335186, 12.379889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801430, 21.179300, 11.925347>,  <17.242392, 20.724661, 12.346645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801430, 21.179300, 11.925347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.174408, 21.323528, 11.934604>,  <17.398195, 21.410065, 11.940158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.174408, 21.323528, 11.934604>,  <16.801430, 21.179300, 11.925347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174408, 21.323528, 11.934604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064357, 0.228767, -0.971352,
		-0.355536, 0.904242, 0.236517,
		0.932444, 0.360572, 0.023141,
		17.454142, 21.431700, 11.941545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682886, 21.779968, 11.551044>,  <16.801430, 21.179300, 11.925347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682886, 21.779968, 11.551044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.076675, 21.709812, 11.548147>,  <17.312948, 21.667719, 11.546410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.076675, 21.709812, 11.548147>,  <16.682886, 21.779968, 11.551044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076675, 21.709812, 11.548147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028184, 0.198641, -0.979667,
		0.173264, 0.964251, 0.200500,
		0.984472, -0.175392, -0.007241,
		17.372017, 21.657194, 11.545975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.754211, 22.980751, 19.571102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098320, 22.783245, 19.520296>,  <17.304785, 22.664742, 19.489813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098320, 22.783245, 19.520296>,  <16.754211, 22.980751, 19.571102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098320, 22.783245, 19.520296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150330, -0.007611, -0.988607,
		0.487172, 0.869562, -0.080775,
		0.860270, -0.493765, -0.127014,
		17.356401, 22.635117, 19.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167036, 23.312263, 19.031265>,  <16.754211, 22.980751, 19.571102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167036, 23.312263, 19.031265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278488, 22.928108, 19.033058>,  <17.345360, 22.697615, 19.034134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278488, 22.928108, 19.033058>,  <17.167036, 23.312263, 19.031265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278488, 22.928108, 19.033058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006102, -0.002898, -0.999977,
		0.960379, 0.278650, 0.005053,
		0.278629, -0.960388, 0.004484,
		17.362078, 22.639992, 19.034403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715546, 23.285782, 18.496239>,  <17.167036, 23.312263, 19.031265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715546, 23.285782, 18.496239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600285, 22.904327, 18.530993>,  <17.531128, 22.675455, 18.551846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600285, 22.904327, 18.530993>,  <17.715546, 23.285782, 18.496239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600285, 22.904327, 18.530993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257905, -0.164669, -0.952034,
		0.922200, -0.251924, 0.293397,
		-0.288153, -0.953635, 0.086885,
		17.513838, 22.618237, 18.557058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169416, 22.992500, 18.145866>,  <17.715546, 23.285782, 18.496239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169416, 22.992500, 18.145866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873348, 22.724979, 18.173733>,  <17.695707, 22.564466, 18.190453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873348, 22.724979, 18.173733>,  <18.169416, 22.992500, 18.145866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873348, 22.724979, 18.173733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153702, -0.269140, -0.950757,
		0.654619, -0.693013, 0.302006,
		-0.740169, -0.668803, 0.069667,
		17.651299, 22.524338, 18.194633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312248, 22.632481, 17.486580>,  <18.169416, 22.992500, 18.145866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312248, 22.632481, 17.486580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957176, 22.485672, 17.597805>,  <17.744133, 22.397587, 17.664539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957176, 22.485672, 17.597805>,  <18.312248, 22.632481, 17.486580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.957176, 22.485672, 17.597805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166721, -0.306717, -0.937085,
		0.429219, -0.878190, 0.211076,
		-0.887679, -0.367024, 0.278062,
		17.690872, 22.375565, 17.681223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273706, 21.891136, 17.290009>,  <18.312248, 22.632481, 17.486580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273706, 21.891136, 17.290009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896240, 22.019897, 17.320669>,  <17.669762, 22.097155, 17.339066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896240, 22.019897, 17.320669>,  <18.273706, 21.891136, 17.290009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896240, 22.019897, 17.320669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190471, -0.338991, -0.921306,
		-0.270590, -0.884003, 0.381207,
		-0.943664, 0.321905, 0.076649,
		17.613140, 22.116468, 17.343664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727371, 21.303879, 17.205778>,  <18.273706, 21.891136, 17.290009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727371, 21.303879, 17.205778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551510, 21.655102, 17.130177>,  <17.445993, 21.865835, 17.084816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551510, 21.655102, 17.130177>,  <17.727371, 21.303879, 17.205778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551510, 21.655102, 17.130177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430544, -0.390709, -0.813621,
		-0.788250, -0.276336, 0.549818,
		-0.439652, 0.878058, -0.189002,
		17.419615, 21.918518, 17.073477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140554, 21.121309, 16.847851>,  <17.727371, 21.303879, 17.205778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140554, 21.121309, 16.847851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181782, 21.507885, 16.753727>,  <17.206518, 21.739830, 16.697252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181782, 21.507885, 16.753727>,  <17.140554, 21.121309, 16.847851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181782, 21.507885, 16.753727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484472, -0.157835, -0.860451,
		-0.868714, 0.202685, 0.451946,
		0.103067, 0.966440, -0.235309,
		17.212702, 21.797817, 16.683134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698740, 21.164963, 16.294127>,  <17.140554, 21.121309, 16.847851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698740, 21.164963, 16.294127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907036, 21.503330, 16.248077>,  <17.032013, 21.706350, 16.220448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907036, 21.503330, 16.248077>,  <16.698740, 21.164963, 16.294127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907036, 21.503330, 16.248077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145473, -0.044952, -0.988340,
		-0.841231, 0.531414, 0.099650,
		0.520738, 0.845919, -0.115121,
		17.063257, 21.757107, 16.213541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978641, 21.182163, 16.034695>,  <16.698740, 21.164963, 16.294127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978641, 21.182163, 16.034695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969560, 20.786327, 16.091547>,  <15.964111, 20.548826, 16.125658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969560, 20.786327, 16.091547>,  <15.978641, 21.182163, 16.034695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969560, 20.786327, 16.091547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115844, 0.143811, 0.982801,
		-0.993008, 0.005846, -0.117903,
		-0.022701, -0.989588, 0.142129,
		15.962749, 20.489450, 16.134186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501576, 21.055790, 16.478737>,  <15.978641, 21.182163, 16.034695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501576, 21.055790, 16.478737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708632, 20.714664, 16.506321>,  <15.832866, 20.509989, 16.522871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708632, 20.714664, 16.506321>,  <15.501576, 21.055790, 16.478737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708632, 20.714664, 16.506321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076196, 0.034327, 0.996502,
		-0.852199, -0.521083, -0.047212,
		0.517640, -0.852816, 0.068958,
		15.863924, 20.458820, 16.527008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122394, 20.808964, 16.995665>,  <15.501576, 21.055790, 16.478737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122394, 20.808964, 16.995665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455268, 20.589645, 16.962591>,  <15.654992, 20.458054, 16.942747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455268, 20.589645, 16.962591>,  <15.122394, 20.808964, 16.995665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455268, 20.589645, 16.962591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021373, -0.117288, 0.992868,
		-0.554085, -0.828018, -0.085887,
		0.832185, -0.548297, -0.082685,
		15.704924, 20.425156, 16.937786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022003, 20.102362, 17.281178>,  <15.122394, 20.808964, 16.995665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022003, 20.102362, 17.281178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407609, 20.200027, 17.323246>,  <15.638972, 20.258627, 17.348488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407609, 20.200027, 17.323246>,  <15.022003, 20.102362, 17.281178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407609, 20.200027, 17.323246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046587, -0.234337, 0.971039,
		0.261739, -0.940994, -0.214529,
		0.964013, 0.244165, 0.105173,
		15.696813, 20.273277, 17.354797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270682, 19.497845, 17.633224>,  <15.022003, 20.102362, 17.281178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270682, 19.497845, 17.633224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537641, 19.791832, 17.681231>,  <15.697816, 19.968224, 17.710033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537641, 19.791832, 17.681231>,  <15.270682, 19.497845, 17.633224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537641, 19.791832, 17.681231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075952, -0.227495, 0.970813,
		0.740820, -0.638801, -0.207651,
		0.667395, 0.734969, 0.120015,
		15.737860, 20.012323, 17.717236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665096, 19.323729, 18.181175>,  <15.270682, 19.497845, 17.633224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665096, 19.323729, 18.181175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747268, 19.714550, 18.158684>,  <15.796571, 19.949043, 18.145189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747268, 19.714550, 18.158684>,  <15.665096, 19.323729, 18.181175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747268, 19.714550, 18.158684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103100, 0.078741, 0.991549,
		0.973226, -0.197896, 0.116911,
		0.205430, 0.977055, -0.056229,
		15.808897, 20.007668, 18.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163868, 19.380417, 18.764862>,  <15.665096, 19.323729, 18.181175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163868, 19.380417, 18.764862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089104, 19.761055, 18.667267>,  <16.044245, 19.989437, 18.608709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089104, 19.761055, 18.667267>,  <16.163868, 19.380417, 18.764862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089104, 19.761055, 18.667267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085330, 0.231700, 0.969037,
		0.978664, 0.201943, 0.037892,
		-0.186911, 0.951595, -0.243989,
		16.033030, 20.046534, 18.594070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646648, 19.756311, 19.108294>,  <16.163868, 19.380417, 18.764862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646648, 19.756311, 19.108294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330505, 19.992001, 19.041180>,  <16.140820, 20.133413, 19.000912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330505, 19.992001, 19.041180>,  <16.646648, 19.756311, 19.108294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330505, 19.992001, 19.041180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238915, -0.044248, 0.970032,
		0.564141, 0.806758, 0.175746,
		-0.790357, 0.589223, -0.167785,
		16.093399, 20.168768, 18.990845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640923, 20.279308, 19.597889>,  <16.646648, 19.756311, 19.108294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640923, 20.279308, 19.597889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255524, 20.287312, 19.491104>,  <16.024284, 20.292114, 19.427032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255524, 20.287312, 19.491104>,  <16.640923, 20.279308, 19.597889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255524, 20.287312, 19.491104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253004, 0.257936, 0.932447,
		0.087515, 0.965955, -0.243460,
		-0.963499, 0.020007, -0.266964,
		15.966474, 20.293314, 19.411015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261860, 20.875122, 19.952377>,  <16.640923, 20.279308, 19.597889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261860, 20.875122, 19.952377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973292, 20.624249, 19.834944>,  <15.800151, 20.473724, 19.764484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973292, 20.624249, 19.834944>,  <16.261860, 20.875122, 19.952377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973292, 20.624249, 19.834944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321135, -0.072610, 0.944246,
		-0.613534, 0.775478, -0.149029,
		-0.721421, -0.627185, -0.293582,
		15.756866, 20.436092, 19.746870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651489, 21.107233, 20.273344>,  <16.261860, 20.875122, 19.952377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651489, 21.107233, 20.273344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592702, 20.714760, 20.223249>,  <15.557429, 20.479277, 20.193193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592702, 20.714760, 20.223249>,  <15.651489, 21.107233, 20.273344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592702, 20.714760, 20.223249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290081, -0.078291, 0.953795,
		-0.945650, 0.176507, -0.273115,
		-0.146969, -0.981181, -0.125237,
		15.548611, 20.420406, 20.185678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869262, 20.873228, 20.629368>,  <15.651489, 21.107233, 20.273344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869262, 20.873228, 20.629368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070769, 20.531933, 20.575399>,  <15.191674, 20.327156, 20.543018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070769, 20.531933, 20.575399>,  <14.869262, 20.873228, 20.629368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070769, 20.531933, 20.575399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370009, -0.354266, 0.858830,
		-0.780583, -0.382730, -0.494174,
		0.503769, -0.853237, -0.134921,
		15.221900, 20.275961, 20.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383546, 20.301449, 20.781055>,  <14.869262, 20.873228, 20.629368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383546, 20.301449, 20.781055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752305, 20.146549, 20.785803>,  <14.973560, 20.053610, 20.788651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752305, 20.146549, 20.785803>,  <14.383546, 20.301449, 20.781055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752305, 20.146549, 20.785803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160072, -0.352819, 0.921898,
		-0.352819, -0.851795, -0.387251,
		-0.921898, 0.387251, -0.011867,
		15.028874, 20.030375, 20.789364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.329120, 19.659952, 21.051428>,  <14.383546, 20.301449, 20.781055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.329120, 19.659952, 21.051428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718316, 19.723026, 21.118866>,  <14.951834, 19.760870, 21.159328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718316, 19.723026, 21.118866>,  <14.329120, 19.659952, 21.051428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.718316, 19.723026, 21.118866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102665, -0.358553, 0.927847,
		0.206757, -0.920095, -0.332680,
		0.972991, 0.157684, 0.168595,
		15.010214, 19.770330, 21.169445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.854992, 17.098471, 21.020487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.528503, 17.329559, 21.022511>,  <22.332611, 17.468212, 21.023726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.528503, 17.329559, 21.022511>,  <22.854992, 17.098471, 21.020487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528503, 17.329559, 21.022511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028933, 0.049622, -0.998349,
		-0.577017, -0.814726, -0.057218,
		-0.816219, 0.577720, 0.005061,
		22.283638, 17.502874, 21.024029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.587845, 16.791044, 20.465704>,  <22.854992, 17.098471, 21.020487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.587845, 16.791044, 20.465704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.392166, 17.136879, 20.511618>,  <22.274759, 17.344379, 20.539165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.392166, 17.136879, 20.511618>,  <22.587845, 16.791044, 20.465704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392166, 17.136879, 20.511618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189257, 0.023242, -0.981652,
		-0.851391, -0.501946, 0.152259,
		-0.489198, 0.864586, 0.114785,
		22.245407, 17.396255, 20.546053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951328, 16.641233, 20.204721>,  <22.587845, 16.791044, 20.465704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951328, 16.641233, 20.204721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047722, 17.027424, 20.165163>,  <22.105558, 17.259138, 20.141428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047722, 17.027424, 20.165163>,  <21.951328, 16.641233, 20.204721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047722, 17.027424, 20.165163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278499, -0.028823, -0.960004,
		-0.929713, 0.258887, 0.261939,
		0.240982, 0.965478, -0.098897,
		22.120016, 17.317066, 20.135494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476721, 16.869631, 19.674747>,  <21.951328, 16.641233, 20.204721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476721, 16.869631, 19.674747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.713963, 17.189812, 19.709396>,  <21.856308, 17.381920, 19.730186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.713963, 17.189812, 19.709396>,  <21.476721, 16.869631, 19.674747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.713963, 17.189812, 19.709396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259305, 0.291770, -0.920669,
		-0.762225, 0.523592, 0.380611,
		0.593106, 0.800451, 0.086624,
		21.891893, 17.429947, 19.735384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088900, 17.351137, 19.368410>,  <21.476721, 16.869631, 19.674747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088900, 17.351137, 19.368410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.450108, 17.522976, 19.368429>,  <21.666832, 17.626080, 19.368441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.450108, 17.522976, 19.368429>,  <21.088900, 17.351137, 19.368410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.450108, 17.522976, 19.368429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180426, 0.379365, -0.907485,
		-0.389869, 0.819470, 0.420084,
		0.903022, 0.429595, 0.000049,
		21.721014, 17.651854, 19.368444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021046, 18.039719, 19.104286>,  <21.088900, 17.351137, 19.368410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021046, 18.039719, 19.104286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399754, 17.923027, 19.049847>,  <21.626978, 17.853012, 19.017183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399754, 17.923027, 19.049847>,  <21.021046, 18.039719, 19.104286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399754, 17.923027, 19.049847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081396, 0.192095, -0.977995,
		0.311453, 0.937013, 0.158124,
		0.946769, -0.291729, -0.136098,
		21.683784, 17.835508, 19.009018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375084, 18.564114, 18.718460>,  <21.021046, 18.039719, 19.104286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375084, 18.564114, 18.718460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.597492, 18.237377, 18.656990>,  <21.730936, 18.041336, 18.620108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.597492, 18.237377, 18.656990>,  <21.375084, 18.564114, 18.718460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597492, 18.237377, 18.656990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074177, 0.135389, -0.988012,
		0.827853, 0.560752, 0.014688,
		0.556019, -0.816839, -0.153677,
		21.764297, 17.992325, 18.610888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899900, 18.824518, 18.252190>,  <21.375084, 18.564114, 18.718460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899900, 18.824518, 18.252190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.898411, 18.425907, 18.218920>,  <21.897516, 18.186741, 18.198957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.898411, 18.425907, 18.218920>,  <21.899900, 18.824518, 18.252190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.898411, 18.425907, 18.218920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136316, 0.081891, -0.987275,
		0.990658, -0.015015, 0.135537,
		-0.003724, -0.996528, -0.083173,
		21.897293, 18.126949, 18.193968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.283947, 18.767656, 17.718149>,  <21.899900, 18.824518, 18.252190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.283947, 18.767656, 17.718149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.134777, 18.397034, 17.737850>,  <22.045275, 18.174660, 17.749670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.134777, 18.397034, 17.737850>,  <22.283947, 18.767656, 17.718149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.134777, 18.397034, 17.737850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161400, -0.117049, -0.979923,
		0.913717, -0.357486, 0.193196,
		-0.372922, -0.926554, 0.049251,
		22.022900, 18.119068, 17.752626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.755613, 18.407040, 17.252012>,  <22.283947, 18.767656, 17.718149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.755613, 18.407040, 17.252012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.410786, 18.208939, 17.295025>,  <22.203890, 18.090078, 17.320833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.410786, 18.208939, 17.295025>,  <22.755613, 18.407040, 17.252012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.410786, 18.208939, 17.295025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022794, -0.249861, -0.968013,
		0.506278, -0.832043, 0.226687,
		-0.862069, -0.495251, 0.107533,
		22.152164, 18.060364, 17.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.865294, 17.874651, 16.830873>,  <22.755613, 18.407040, 17.252012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.865294, 17.874651, 16.830873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.469048, 17.867340, 16.885057>,  <22.231300, 17.862953, 16.917568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.469048, 17.867340, 16.885057>,  <22.865294, 17.874651, 16.830873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.469048, 17.867340, 16.885057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125953, -0.262871, -0.956574,
		0.053094, -0.964658, 0.258102,
		-0.990614, -0.018280, 0.135459,
		22.171864, 17.861856, 16.925695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758890, 17.265688, 16.498543>,  <22.865294, 17.874651, 16.830873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758890, 17.265688, 16.498543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.414375, 17.468697, 16.508385>,  <22.207666, 17.590502, 16.514290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.414375, 17.468697, 16.508385>,  <22.758890, 17.265688, 16.498543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414375, 17.468697, 16.508385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230882, -0.347764, -0.908710,
		-0.452635, -0.788340, 0.416703,
		-0.861287, 0.507523, 0.024604,
		22.155989, 17.620953, 16.515766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072979, 16.774418, 16.383255>,  <22.758890, 17.265688, 16.498543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072979, 16.774418, 16.383255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.060143, 17.150425, 16.247412>,  <22.052441, 17.376030, 16.165905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.060143, 17.150425, 16.247412>,  <22.072979, 16.774418, 16.383255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060143, 17.150425, 16.247412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147106, -0.340526, -0.928656,
		-0.988600, 0.020156, 0.149211,
		-0.032092, 0.940019, -0.339609,
		22.050514, 17.432430, 16.145529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853415, 16.725536, 15.721238>,  <22.072979, 16.774418, 16.383255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853415, 16.725536, 15.721238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.878769, 17.123596, 15.691156>,  <21.893982, 17.362432, 15.673107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.878769, 17.123596, 15.691156>,  <21.853415, 16.725536, 15.721238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878769, 17.123596, 15.691156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216801, -0.059824, -0.974381,
		-0.974156, 0.078069, 0.211957,
		0.063388, 0.995151, -0.075203,
		21.897785, 17.422142, 15.668595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004658, 16.838562, 15.773800>,  <21.853415, 16.725536, 15.721238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004658, 16.838562, 15.773800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.725525, 16.554256, 15.738379>,  <20.558044, 16.383673, 15.717126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.725525, 16.554256, 15.738379>,  <21.004658, 16.838562, 15.773800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.725525, 16.554256, 15.738379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027542, -0.150169, 0.988277,
		-0.715730, 0.687213, 0.124369,
		-0.697833, -0.710765, -0.088554,
		20.516174, 16.341026, 15.711812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481773, 17.060619, 16.216869>,  <21.004658, 16.838562, 15.773800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481773, 17.060619, 16.216869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.450718, 16.664574, 16.170141>,  <20.432085, 16.426947, 16.142103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.450718, 16.664574, 16.170141>,  <20.481773, 17.060619, 16.216869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450718, 16.664574, 16.170141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135172, -0.105639, 0.985175,
		-0.987776, 0.092280, -0.125634,
		-0.077640, -0.990114, -0.116821,
		20.427425, 16.367540, 16.135096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789804, 16.962479, 16.504501>,  <20.481773, 17.060619, 16.216869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789804, 16.962479, 16.504501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.003883, 16.624863, 16.518126>,  <20.132330, 16.422293, 16.526300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.003883, 16.624863, 16.518126>,  <19.789804, 16.962479, 16.504501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.003883, 16.624863, 16.518126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306919, -0.156730, 0.938742,
		-0.786998, -0.512865, -0.342933,
		0.535196, -0.844041, 0.034062,
		20.164442, 16.371651, 16.528345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388226, 16.531254, 16.884047>,  <19.789804, 16.962479, 16.504501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388226, 16.531254, 16.884047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741318, 16.343304, 16.883123>,  <19.953173, 16.230534, 16.882570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741318, 16.343304, 16.883123>,  <19.388226, 16.531254, 16.884047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741318, 16.343304, 16.883123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175065, -0.333432, 0.926378,
		-0.436053, -0.817336, -0.376589,
		0.882729, -0.469877, -0.002307,
		20.006136, 16.202341, 16.882431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178640, 15.816679, 17.075592>,  <19.388226, 16.531254, 16.884047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178640, 15.816679, 17.075592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.567490, 15.869236, 17.153271>,  <19.800798, 15.900770, 17.199877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.567490, 15.869236, 17.153271>,  <19.178640, 15.816679, 17.075592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567490, 15.869236, 17.153271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150406, -0.285923, 0.946375,
		0.179871, -0.949202, -0.258190,
		0.972124, 0.131392, 0.194195,
		19.859127, 15.908653, 17.211529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484959, 15.180903, 17.386597>,  <19.178640, 15.816679, 17.075592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484959, 15.180903, 17.386597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.695370, 15.507389, 17.482170>,  <19.821617, 15.703280, 17.539515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.695370, 15.507389, 17.482170>,  <19.484959, 15.180903, 17.386597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695370, 15.507389, 17.482170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040237, -0.256746, 0.965641,
		0.849515, -0.517567, -0.102214,
		0.526027, 0.816214, 0.238935,
		19.853178, 15.752254, 17.553850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845039, 14.837223, 17.960903>,  <19.484959, 15.180903, 17.386597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845039, 14.837223, 17.960903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.954365, 15.221874, 17.970465>,  <20.019960, 15.452665, 17.976202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.954365, 15.221874, 17.970465>,  <19.845039, 14.837223, 17.960903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954365, 15.221874, 17.970465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016776, -0.029611, 0.999421,
		0.961779, -0.272754, -0.024225,
		0.273314, 0.961628, 0.023904,
		20.036360, 15.510363, 17.977636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455244, 14.965822, 18.510838>,  <19.845039, 14.837223, 17.960903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455244, 14.965822, 18.510838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.248890, 15.306274, 18.471977>,  <20.125078, 15.510546, 18.448660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.248890, 15.306274, 18.471977>,  <20.455244, 14.965822, 18.510838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.248890, 15.306274, 18.471977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011546, 0.120307, 0.992670,
		0.856580, 0.510981, -0.071892,
		-0.515884, 0.851132, -0.097152,
		20.094124, 15.561614, 18.442831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604771, 15.186220, 19.184008>,  <20.455244, 14.965822, 18.510838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604771, 15.186220, 19.184008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.307804, 15.424377, 19.061161>,  <20.129623, 15.567272, 18.987453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.307804, 15.424377, 19.061161>,  <20.604771, 15.186220, 19.184008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307804, 15.424377, 19.061161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243486, 0.187272, 0.951653,
		0.624123, 0.781304, 0.005936,
		-0.742418, 0.595394, -0.307117,
		20.085079, 15.602996, 18.969027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765953, 15.770555, 19.490799>,  <20.604771, 15.186220, 19.184008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765953, 15.770555, 19.490799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.376957, 15.759655, 19.398258>,  <20.143560, 15.753115, 19.342733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.376957, 15.759655, 19.398258>,  <20.765953, 15.770555, 19.490799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376957, 15.759655, 19.398258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230406, 0.258923, 0.938015,
		0.034339, 0.965513, -0.258079,
		-0.972489, -0.027252, -0.231351,
		20.085211, 15.751479, 19.328854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527201, 16.355556, 19.714127>,  <20.765953, 15.770555, 19.490799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527201, 16.355556, 19.714127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.228245, 16.090206, 19.699467>,  <20.048872, 15.930996, 19.690670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.228245, 16.090206, 19.699467>,  <20.527201, 16.355556, 19.714127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228245, 16.090206, 19.699467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224149, 0.199836, 0.953846,
		-0.625434, 0.721109, -0.298050,
		-0.747388, -0.663376, -0.036652,
		20.004028, 15.891193, 19.688471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074549, 16.675261, 20.099968>,  <20.527201, 16.355556, 19.714127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074549, 16.675261, 20.099968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.909527, 16.310898, 20.102749>,  <19.810514, 16.092279, 20.104418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.909527, 16.310898, 20.102749>,  <20.074549, 16.675261, 20.099968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909527, 16.310898, 20.102749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237935, 0.115123, 0.964434,
		-0.879310, 0.396226, -0.264232,
		-0.412553, -0.910907, 0.006953,
		19.785761, 16.037626, 20.104836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410711, 16.692522, 20.450485>,  <20.074549, 16.675261, 20.099968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410711, 16.692522, 20.450485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.539703, 16.314365, 20.469437>,  <19.617098, 16.087471, 20.480808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.539703, 16.314365, 20.469437>,  <19.410711, 16.692522, 20.450485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.539703, 16.314365, 20.469437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072695, 0.025173, 0.997037,
		-0.943781, -0.324968, -0.060607,
		0.322479, -0.945390, 0.047381,
		19.636448, 16.030748, 20.483650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995394, 16.493216, 20.963753>,  <19.410711, 16.692522, 20.450485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995394, 16.493216, 20.963753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.289852, 16.223934, 20.935802>,  <19.466528, 16.062365, 20.919031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.289852, 16.223934, 20.935802>,  <18.995394, 16.493216, 20.963753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289852, 16.223934, 20.935802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027646, -0.073249, 0.996930,
		-0.676257, -0.735819, -0.035311,
		0.736147, -0.673205, -0.069878,
		19.510696, 16.021973, 20.914839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264359, 16.279354, 21.049892>,  <18.995394, 16.493216, 20.963753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264359, 16.279354, 21.049892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.087242, 16.637772, 21.036976>,  <17.980972, 16.852821, 21.029226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.087242, 16.637772, 21.036976>,  <18.264359, 16.279354, 21.049892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087242, 16.637772, 21.036976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112789, 0.019935, -0.993419,
		-0.889502, -0.443521, -0.109891,
		-0.442792, 0.896043, -0.032292,
		17.954405, 16.906584, 21.027288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734201, 16.351000, 20.417999>,  <18.264359, 16.279354, 21.049892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734201, 16.351000, 20.417999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.810661, 16.723190, 20.543011>,  <17.856537, 16.946505, 20.618017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.810661, 16.723190, 20.543011>,  <17.734201, 16.351000, 20.417999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810661, 16.723190, 20.543011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002331, 0.317966, -0.948099,
		-0.981558, 0.181956, 0.058610,
		0.191149, 0.930478, 0.312526,
		17.868006, 17.002335, 20.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282372, 16.680103, 20.041534>,  <17.734201, 16.351000, 20.417999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282372, 16.680103, 20.041534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.541546, 16.961464, 20.158430>,  <17.697050, 17.130280, 20.228567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.541546, 16.961464, 20.158430>,  <17.282372, 16.680103, 20.041534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541546, 16.961464, 20.158430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014374, 0.372310, -0.927997,
		-0.761558, 0.605484, 0.231123,
		0.647937, 0.703402, 0.292239,
		17.735928, 17.172485, 20.246101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033102, 17.267529, 19.689520>,  <17.282372, 16.680103, 20.041534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033102, 17.267529, 19.689520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.412746, 17.361919, 19.772945>,  <17.640533, 17.418554, 19.823000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.412746, 17.361919, 19.772945>,  <17.033102, 17.267529, 19.689520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412746, 17.361919, 19.772945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122360, 0.333909, -0.934630,
		-0.290194, 0.912589, 0.288043,
		0.949113, 0.235979, 0.208562,
		17.697481, 17.432713, 19.835514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188261, 17.968287, 19.491034>,  <17.033102, 17.267529, 19.689520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188261, 17.968287, 19.491034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548950, 17.795383, 19.488291>,  <17.765364, 17.691643, 19.486645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548950, 17.795383, 19.488291>,  <17.188261, 17.968287, 19.491034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548950, 17.795383, 19.488291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191119, 0.412816, -0.890537,
		0.387770, 0.801709, 0.454859,
		0.901725, -0.432256, -0.006856,
		17.819468, 17.665707, 19.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686472, 18.562408, 19.377548>,  <17.188261, 17.968287, 19.491034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686472, 18.562408, 19.377548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.843906, 18.214043, 19.259840>,  <17.938368, 18.005022, 19.189215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.843906, 18.214043, 19.259840>,  <17.686472, 18.562408, 19.377548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843906, 18.214043, 19.259840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059726, 0.343656, -0.937194,
		0.917346, 0.351290, 0.187275,
		0.393586, -0.870916, -0.294270,
		17.961983, 17.952768, 19.171558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259947, 18.770697, 18.917576>,  <17.686472, 18.562408, 19.377548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259947, 18.770697, 18.917576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.182896, 18.387558, 18.832327>,  <18.136665, 18.157675, 18.781178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.182896, 18.387558, 18.832327>,  <18.259947, 18.770697, 18.917576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182896, 18.387558, 18.832327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079407, 0.201262, -0.976313,
		0.978053, -0.204990, 0.037291,
		-0.192630, -0.957848, -0.213123,
		18.125107, 18.100204, 18.768391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682127, 18.628761, 18.376078>,  <18.259947, 18.770697, 18.917576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682127, 18.628761, 18.376078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.428894, 18.320854, 18.343437>,  <18.276955, 18.136110, 18.323853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.428894, 18.320854, 18.343437>,  <18.682127, 18.628761, 18.376078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428894, 18.320854, 18.343437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073301, 0.164556, -0.983640,
		0.770605, -0.616746, -0.160603,
		-0.633084, -0.769770, -0.081600,
		18.238968, 18.089924, 18.318956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884951, 18.204433, 17.759541>,  <18.682127, 18.628761, 18.376078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884951, 18.204433, 17.759541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.512253, 18.072056, 17.819305>,  <18.288633, 17.992628, 17.855165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.512253, 18.072056, 17.819305>,  <18.884951, 18.204433, 17.759541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512253, 18.072056, 17.819305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155577, -0.007953, -0.987792,
		0.328094, -0.943616, -0.044077,
		-0.931745, -0.330946, 0.149414,
		18.232729, 17.972773, 17.864130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814854, 17.644131, 17.362436>,  <18.884951, 18.204433, 17.759541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814854, 17.644131, 17.362436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.435162, 17.753086, 17.425390>,  <18.207346, 17.818460, 17.463161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.435162, 17.753086, 17.425390>,  <18.814854, 17.644131, 17.362436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435162, 17.753086, 17.425390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154855, 0.030894, -0.987454,
		-0.273836, -0.961691, 0.012856,
		-0.949228, 0.272391, 0.157383,
		18.150393, 17.834803, 17.472605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.490278, 17.238716, 16.934906>,  <18.814854, 17.644131, 17.362436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.490278, 17.238716, 16.934906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.222881, 17.527103, 17.007919>,  <18.062443, 17.700136, 17.051727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.222881, 17.527103, 17.007919>,  <18.490278, 17.238716, 16.934906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222881, 17.527103, 17.007919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289405, -0.026087, -0.956851,
		-0.685099, -0.692475, 0.226092,
		-0.668494, 0.720970, 0.182533,
		18.022333, 17.743395, 17.062679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796274, 17.006315, 16.741156>,  <18.490278, 17.238716, 16.934906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796274, 17.006315, 16.741156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.810680, 17.405483, 16.719759>,  <17.819324, 17.644983, 16.706921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.810680, 17.405483, 16.719759>,  <17.796274, 17.006315, 16.741156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810680, 17.405483, 16.719759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301640, -0.040174, -0.952575,
		-0.952742, 0.050442, 0.299565,
		0.036015, 0.997918, -0.053491,
		17.821486, 17.704859, 16.703712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170431, 17.140688, 16.399509>,  <17.796274, 17.006315, 16.741156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170431, 17.140688, 16.399509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418453, 17.452774, 16.366531>,  <17.567266, 17.640026, 16.346745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418453, 17.452774, 16.366531>,  <17.170431, 17.140688, 16.399509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418453, 17.452774, 16.366531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188299, 0.045983, -0.981035,
		-0.761626, 0.623821, 0.175425,
		0.620056, 0.780214, -0.082443,
		17.604469, 17.686838, 16.341799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731005, 17.713633, 16.116072>,  <17.170431, 17.140688, 16.399509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731005, 17.713633, 16.116072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.106510, 17.814285, 16.021917>,  <17.331814, 17.874678, 15.965425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.106510, 17.814285, 16.021917>,  <16.731005, 17.713633, 16.116072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.106510, 17.814285, 16.021917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237417, -0.022712, -0.971142,
		-0.249716, 0.967557, 0.038420,
		0.938763, 0.251632, -0.235386,
		17.388140, 17.889774, 15.951302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.521854, 19.075428, 21.411772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788299, 19.358059, 21.507309>,  <14.948165, 19.527637, 21.564632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788299, 19.358059, 21.507309>,  <14.521854, 19.075428, 21.411772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788299, 19.358059, 21.507309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069321, -0.377493, 0.923414,
		0.742625, -0.598538, -0.300433,
		0.666110, 0.706577, 0.238844,
		14.988132, 19.570032, 21.578962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874413, 18.782932, 21.920254>,  <14.521854, 19.075428, 21.411772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874413, 18.782932, 21.920254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976762, 19.167568, 21.960003>,  <15.038171, 19.398350, 21.983852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976762, 19.167568, 21.960003>,  <14.874413, 18.782932, 21.920254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976762, 19.167568, 21.960003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277713, -0.171578, 0.945218,
		0.925962, -0.214255, -0.310948,
		0.255870, 0.961590, 0.099373,
		15.053523, 19.456045, 21.989815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488355, 18.725958, 22.196844>,  <14.874413, 18.782932, 21.920254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488355, 18.725958, 22.196844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344241, 19.092266, 22.267908>,  <15.257773, 19.312050, 22.310547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344241, 19.092266, 22.267908>,  <15.488355, 18.725958, 22.196844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344241, 19.092266, 22.267908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503130, 0.030389, 0.863676,
		0.785529, 0.400554, -0.471700,
		-0.360283, 0.915769, 0.177659,
		15.236156, 19.366997, 22.321205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104879, 19.093798, 22.344002>,  <15.488355, 18.725958, 22.196844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104879, 19.093798, 22.344002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.794827, 19.279373, 22.515553>,  <15.608796, 19.390718, 22.618483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.794827, 19.279373, 22.515553>,  <16.104879, 19.093798, 22.344002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794827, 19.279373, 22.515553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418719, -0.131109, 0.898602,
		0.473124, 0.876112, -0.092632,
		-0.775131, 0.463937, 0.428876,
		15.562288, 19.418554, 22.644215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340229, 19.526026, 22.793581>,  <16.104879, 19.093798, 22.344002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340229, 19.526026, 22.793581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.964688, 19.515305, 22.930893>,  <15.739365, 19.508871, 23.013281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.964688, 19.515305, 22.930893>,  <16.340229, 19.526026, 22.793581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964688, 19.515305, 22.930893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338310, -0.257337, 0.905165,
		0.064077, 0.965950, 0.250669,
		-0.938851, -0.026804, 0.343280,
		15.683033, 19.507263, 23.033876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370644, 19.922869, 23.346371>,  <16.340229, 19.526026, 22.793581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370644, 19.922869, 23.346371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.048176, 19.695072, 23.410585>,  <15.854695, 19.558393, 23.449114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.048176, 19.695072, 23.410585>,  <16.370644, 19.922869, 23.346371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048176, 19.695072, 23.410585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250965, -0.083405, 0.964396,
		-0.535827, 0.817754, 0.210162,
		-0.806167, -0.569493, 0.160537,
		15.806326, 19.524223, 23.458746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146795, 20.252361, 23.911972>,  <16.370644, 19.922869, 23.346371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146795, 20.252361, 23.911972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.983552, 19.889221, 23.873497>,  <15.885606, 19.671337, 23.850412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.983552, 19.889221, 23.873497>,  <16.146795, 20.252361, 23.911972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983552, 19.889221, 23.873497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072018, -0.137048, 0.987943,
		-0.910088, 0.396262, 0.121312,
		-0.408110, -0.907852, -0.096188,
		15.861119, 19.616865, 23.844641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633600, 20.140196, 24.498947>,  <16.146795, 20.252361, 23.911972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633600, 20.140196, 24.498947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.714904, 19.768936, 24.374224>,  <15.763686, 19.546181, 24.299389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.714904, 19.768936, 24.374224>,  <15.633600, 20.140196, 24.498947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714904, 19.768936, 24.374224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127525, -0.340839, 0.931433,
		-0.970785, -0.149560, -0.187641,
		0.203260, -0.928149, -0.311808,
		15.775882, 19.490492, 24.280682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129280, 19.778336, 24.752014>,  <15.633600, 20.140196, 24.498947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129280, 19.778336, 24.752014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.445762, 19.543324, 24.684124>,  <15.635651, 19.402317, 24.643389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.445762, 19.543324, 24.684124>,  <15.129280, 19.778336, 24.752014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.445762, 19.543324, 24.684124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024914, -0.246336, 0.968864,
		-0.611046, -0.770797, -0.180264,
		0.791203, -0.587530, -0.169726,
		15.683123, 19.367065, 24.633205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101542, 19.257370, 25.215687>,  <15.129280, 19.778336, 24.752014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101542, 19.257370, 25.215687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.482099, 19.202000, 25.105640>,  <15.710433, 19.168777, 25.039612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.482099, 19.202000, 25.105640>,  <15.101542, 19.257370, 25.215687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482099, 19.202000, 25.105640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218628, -0.325620, 0.919877,
		-0.216917, -0.935313, -0.279529,
		0.951393, -0.138424, -0.275118,
		15.767516, 19.160473, 25.023106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279819, 18.599922, 25.404264>,  <15.101542, 19.257370, 25.215687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279819, 18.599922, 25.404264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.642831, 18.764168, 25.368975>,  <15.860639, 18.862715, 25.347801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.642831, 18.764168, 25.368975>,  <15.279819, 18.599922, 25.404264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642831, 18.764168, 25.368975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326618, -0.557972, 0.762881,
		0.264025, -0.721153, -0.640491,
		0.907530, 0.410616, -0.088223,
		15.915090, 18.887352, 25.342508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839923, 17.981977, 25.497248>,  <15.279819, 18.599922, 25.404264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839923, 17.981977, 25.497248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.960996, 18.353310, 25.583580>,  <16.033640, 18.576109, 25.635380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.960996, 18.353310, 25.583580>,  <15.839923, 17.981977, 25.497248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960996, 18.353310, 25.583580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377601, -0.324724, 0.867163,
		0.875101, -0.180976, -0.448827,
		0.302681, 0.928333, 0.215830,
		16.051800, 18.631809, 25.648329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537712, 17.891056, 25.718824>,  <15.839923, 17.981977, 25.497248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537712, 17.891056, 25.718824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.390480, 18.233467, 25.864006>,  <16.302141, 18.438913, 25.951115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.390480, 18.233467, 25.864006>,  <16.537712, 17.891056, 25.718824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390480, 18.233467, 25.864006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301016, -0.259627, 0.917596,
		0.879719, 0.447004, -0.162114,
		-0.368080, 0.856026, 0.362955,
		16.280056, 18.490274, 25.972893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026705, 18.423622, 26.154253>,  <16.537712, 17.891056, 25.718824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026705, 18.423622, 26.154253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.648922, 18.463203, 26.279610>,  <16.422253, 18.486952, 26.354824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.648922, 18.463203, 26.279610>,  <17.026705, 18.423622, 26.154253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648922, 18.463203, 26.279610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314235, -0.007323, 0.949317,
		0.096233, 0.995065, -0.024179,
		-0.944455, 0.098953, 0.313389,
		16.365585, 18.492889, 26.373627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286999, 17.687845, 26.147600>,  <17.026705, 18.423622, 26.154253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286999, 17.687845, 26.147600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.211605, 17.300556, 26.213345>,  <17.166368, 17.068182, 26.252790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.211605, 17.300556, 26.213345>,  <17.286999, 17.687845, 26.147600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211605, 17.300556, 26.213345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058193, -0.156054, -0.986033,
		0.980350, -0.195417, -0.026930,
		-0.188485, -0.968225, 0.164359,
		17.155060, 17.010088, 26.262651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671370, 17.413130, 25.684412>,  <17.286999, 17.687845, 26.147600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671370, 17.413130, 25.684412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.398857, 17.142715, 25.796722>,  <17.235350, 16.980467, 25.864109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.398857, 17.142715, 25.796722>,  <17.671370, 17.413130, 25.684412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398857, 17.142715, 25.796722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245247, -0.150609, -0.957690,
		0.689720, -0.721314, -0.063189,
		-0.681278, -0.676035, 0.280778,
		17.194473, 16.939905, 25.880957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877953, 16.805492, 25.391169>,  <17.671370, 17.413130, 25.684412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877953, 16.805492, 25.391169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.486485, 16.781246, 25.469681>,  <17.251604, 16.766699, 25.516788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.486485, 16.781246, 25.469681>,  <17.877953, 16.805492, 25.391169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486485, 16.781246, 25.469681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167453, -0.318073, -0.933161,
		0.118995, -0.946127, 0.301139,
		-0.978672, -0.060615, 0.196281,
		17.192883, 16.763062, 25.528564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764431, 16.201981, 25.207102>,  <17.877953, 16.805492, 25.391169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764431, 16.201981, 25.207102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.405518, 16.378563, 25.206579>,  <17.190170, 16.484512, 25.206266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.405518, 16.378563, 25.206579>,  <17.764431, 16.201981, 25.207102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405518, 16.378563, 25.206579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136212, -0.279671, -0.950384,
		-0.419917, -0.852585, 0.311075,
		-0.897283, 0.441455, -0.001306,
		17.136333, 16.511000, 25.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353611, 15.758363, 24.807627>,  <17.764431, 16.201981, 25.207102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353611, 15.758363, 24.807627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.166164, 16.111710, 24.810766>,  <17.053698, 16.323717, 24.812651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.166164, 16.111710, 24.810766>,  <17.353611, 15.758363, 24.807627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166164, 16.111710, 24.810766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101503, -0.045017, -0.993816,
		-0.877552, -0.466514, 0.110760,
		-0.468615, 0.883368, 0.007848,
		17.025579, 16.376720, 24.813120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718754, 15.646601, 24.319046>,  <17.353611, 15.758363, 24.807627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718754, 15.646601, 24.319046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.784054, 16.040806, 24.337435>,  <16.823235, 16.277328, 24.348467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.784054, 16.040806, 24.337435>,  <16.718754, 15.646601, 24.319046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.784054, 16.040806, 24.337435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024986, 0.050710, -0.998401,
		-0.986268, 0.161841, 0.032903,
		0.163251, 0.985513, 0.045970,
		16.833029, 16.336460, 24.351225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182295, 16.004799, 23.937750>,  <16.718754, 15.646601, 24.319046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182295, 16.004799, 23.937750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.485680, 16.265442, 23.932974>,  <16.667709, 16.421827, 23.930107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.485680, 16.265442, 23.932974>,  <16.182295, 16.004799, 23.937750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485680, 16.265442, 23.932974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036634, -0.060921, -0.997470,
		-0.650688, 0.756105, -0.070077,
		0.758461, 0.651609, -0.011942,
		16.713219, 16.460924, 23.929392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001352, 16.481796, 23.430246>,  <16.182295, 16.004799, 23.937750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001352, 16.481796, 23.430246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.392387, 16.545589, 23.485222>,  <16.627008, 16.583866, 23.518208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.392387, 16.545589, 23.485222>,  <16.001352, 16.481796, 23.430246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392387, 16.545589, 23.485222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130058, 0.055878, -0.989931,
		-0.165559, 0.985618, 0.033883,
		0.977586, 0.159485, 0.137439,
		16.685663, 16.593435, 23.526453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135504, 17.076303, 22.951414>,  <16.001352, 16.481796, 23.430246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135504, 17.076303, 22.951414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.492691, 16.912590, 23.026350>,  <16.707003, 16.814362, 23.071312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.492691, 16.912590, 23.026350>,  <16.135504, 17.076303, 22.951414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492691, 16.912590, 23.026350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277210, 0.172146, -0.945262,
		0.354632, 0.896020, 0.267178,
		0.892967, -0.409285, 0.187338,
		16.760582, 16.789804, 23.082552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628973, 17.587009, 22.656496>,  <16.135504, 17.076303, 22.951414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628973, 17.587009, 22.656496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.844624, 17.252106, 22.693014>,  <16.974014, 17.051163, 22.714926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.844624, 17.252106, 22.693014>,  <16.628973, 17.587009, 22.656496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844624, 17.252106, 22.693014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391782, 0.153355, -0.907187,
		0.745552, 0.524858, 0.410702,
		0.539127, -0.837261, 0.091296,
		17.006361, 17.000927, 22.720404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266197, 17.814026, 22.365711>,  <16.628973, 17.587009, 22.656496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266197, 17.814026, 22.365711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.273724, 17.415009, 22.392702>,  <17.278238, 17.175598, 22.408897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.273724, 17.415009, 22.392702>,  <17.266197, 17.814026, 22.365711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273724, 17.415009, 22.392702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475910, -0.050420, -0.878048,
		0.879293, 0.048635, 0.473792,
		0.018815, -0.997543, 0.067479,
		17.279367, 17.115746, 22.412947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984308, 17.592388, 22.454277>,  <17.266197, 17.814026, 22.365711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984308, 17.592388, 22.454277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.747189, 17.319412, 22.283226>,  <17.604918, 17.155626, 22.180595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.747189, 17.319412, 22.283226>,  <17.984308, 17.592388, 22.454277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747189, 17.319412, 22.283226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493694, 0.111581, -0.862448,
		0.636284, -0.722375, 0.270771,
		-0.592798, -0.682439, -0.427629,
		17.569349, 17.114681, 22.154938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440262, 17.208088, 22.151842>,  <17.984308, 17.592388, 22.454277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440262, 17.208088, 22.151842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.093460, 17.105160, 21.981153>,  <17.885380, 17.043402, 21.878740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.093460, 17.105160, 21.981153>,  <18.440262, 17.208088, 22.151842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093460, 17.105160, 21.981153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418282, 0.089598, -0.903887,
		0.270824, -0.962163, 0.029952,
		-0.867003, -0.257322, -0.426721,
		17.833359, 17.027964, 21.853138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606707, 16.613846, 21.572508>,  <18.440262, 17.208088, 22.151842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606707, 16.613846, 21.572508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.261269, 16.802189, 21.500399>,  <18.054007, 16.915195, 21.457134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.261269, 16.802189, 21.500399>,  <18.606707, 16.613846, 21.572508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261269, 16.802189, 21.500399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244343, 0.078099, -0.966539,
		-0.441024, -0.878745, -0.182497,
		-0.863594, 0.470859, -0.180271,
		18.002190, 16.943447, 21.446318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767042, 15.921778, 21.413609>,  <18.606707, 16.613846, 21.572508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767042, 15.921778, 21.413609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.161530, 15.883461, 21.359646>,  <19.398222, 15.860471, 21.327269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.161530, 15.883461, 21.359646>,  <18.767042, 15.921778, 21.413609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161530, 15.883461, 21.359646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135674, 0.001492, 0.990752,
		-0.094708, -0.995400, 0.014468,
		0.986216, -0.095795, -0.134908,
		19.457394, 15.854723, 21.319174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966187, 15.267307, 21.764668>,  <18.767042, 15.921778, 21.413609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966187, 15.267307, 21.764668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.284576, 15.504673, 21.716866>,  <19.475611, 15.647093, 21.688185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.284576, 15.504673, 21.716866>,  <18.966187, 15.267307, 21.764668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284576, 15.504673, 21.716866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239662, -0.127656, 0.962427,
		0.555863, -0.794710, -0.243830,
		0.795977, 0.593414, -0.119503,
		19.523369, 15.682697, 21.681015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578991, 14.891673, 21.967278>,  <18.966187, 15.267307, 21.764668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578991, 14.891673, 21.967278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.685104, 15.276199, 21.996941>,  <19.748772, 15.506915, 22.014738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.685104, 15.276199, 21.996941>,  <19.578991, 14.891673, 21.967278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685104, 15.276199, 21.996941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382856, -0.175615, 0.906963,
		0.884900, -0.212209, -0.414632,
		0.265281, 0.961315, 0.074156,
		19.764688, 15.564594, 22.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.102787, 14.886763, 22.343349>,  <19.578991, 14.891673, 21.967278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.102787, 14.886763, 22.343349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.056091, 15.282822, 22.374275>,  <20.028074, 15.520457, 22.392830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.056091, 15.282822, 22.374275>,  <20.102787, 14.886763, 22.343349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056091, 15.282822, 22.374275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343348, -0.032811, 0.938635,
		0.931925, 0.136121, -0.336135,
		-0.116739, 0.990149, 0.077314,
		20.021070, 15.579866, 22.397470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738060, 15.217193, 22.647507>,  <20.102787, 14.886763, 22.343349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738060, 15.217193, 22.647507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442833, 15.481224, 22.703444>,  <20.265697, 15.639643, 22.737005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442833, 15.481224, 22.703444>,  <20.738060, 15.217193, 22.647507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442833, 15.481224, 22.703444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215568, 0.034292, 0.975886,
		0.639365, 0.750414, -0.167602,
		-0.738067, 0.660078, 0.139840,
		20.221413, 15.679247, 22.745396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101728, 15.814448, 23.055492>,  <20.738060, 15.217193, 22.647507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101728, 15.814448, 23.055492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.706131, 15.820950, 23.114313>,  <20.468773, 15.824850, 23.149607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.706131, 15.820950, 23.114313>,  <21.101728, 15.814448, 23.055492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706131, 15.820950, 23.114313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147935, 0.095284, 0.984396,
		0.001987, 0.995318, -0.096640,
		-0.988995, 0.016252, 0.147053,
		20.409433, 15.825826, 23.158428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970997, 16.330462, 23.608175>,  <21.101728, 15.814448, 23.055492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970997, 16.330462, 23.608175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.647167, 16.095795, 23.600067>,  <20.452869, 15.954994, 23.595203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.647167, 16.095795, 23.600067>,  <20.970997, 16.330462, 23.608175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647167, 16.095795, 23.600067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049729, 0.034138, 0.998179,
		-0.584908, 0.809107, -0.056812,
		-0.809574, -0.586668, -0.020268,
		20.404295, 15.919794, 23.593987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582087, 16.946712, 23.658579>,  <20.970997, 16.330462, 23.608175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582087, 16.946712, 23.658579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.835636, 17.252464, 23.705786>,  <20.987766, 17.435915, 23.734110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.835636, 17.252464, 23.705786>,  <20.582087, 16.946712, 23.658579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835636, 17.252464, 23.705786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084176, 0.083504, -0.992946,
		-0.768844, 0.639335, -0.011412,
		0.633872, 0.764381, 0.118018,
		21.025797, 17.481779, 23.741192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325541, 17.565310, 23.207829>,  <20.582087, 16.946712, 23.658579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325541, 17.565310, 23.207829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.716019, 17.597355, 23.288452>,  <20.950306, 17.616583, 23.336826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.716019, 17.597355, 23.288452>,  <20.325541, 17.565310, 23.207829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716019, 17.597355, 23.288452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188253, 0.148593, -0.970815,
		-0.107727, 0.985648, 0.129974,
		0.976195, 0.080115, 0.201558,
		21.008877, 17.621389, 23.348919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599323, 18.159525, 22.744049>,  <20.325541, 17.565310, 23.207829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599323, 18.159525, 22.744049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.967003, 18.038719, 22.845131>,  <21.187611, 17.966236, 22.905781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.967003, 18.038719, 22.845131>,  <20.599323, 18.159525, 22.744049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967003, 18.038719, 22.845131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282324, 0.058045, -0.957561,
		0.274531, 0.951534, 0.138622,
		0.919199, -0.302016, 0.252706,
		21.242762, 17.948114, 22.920942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082155, 18.617811, 22.369772>,  <20.599323, 18.159525, 22.744049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082155, 18.617811, 22.369772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.274117, 18.285923, 22.483793>,  <21.389294, 18.086790, 22.552206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.274117, 18.285923, 22.483793>,  <21.082155, 18.617811, 22.369772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274117, 18.285923, 22.483793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448132, -0.047494, -0.892705,
		0.754235, 0.556152, 0.349033,
		0.479903, -0.829722, 0.285051,
		21.418087, 18.037006, 22.569309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.843012, 18.652649, 22.188265>,  <21.082155, 18.617811, 22.369772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.843012, 18.652649, 22.188265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.758713, 18.262466, 22.213776>,  <21.708134, 18.028357, 22.229082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.758713, 18.262466, 22.213776>,  <21.843012, 18.652649, 22.188265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758713, 18.262466, 22.213776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433399, -0.151717, -0.888340,
		0.876213, -0.159576, 0.454737,
		-0.210749, -0.975458, 0.063777,
		21.695488, 17.969830, 22.232908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474142, 18.397402, 22.069023>,  <21.843012, 18.652649, 22.188265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474142, 18.397402, 22.069023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.198536, 18.124149, 21.972202>,  <22.033173, 17.960197, 21.914110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.198536, 18.124149, 21.972202>,  <22.474142, 18.397402, 22.069023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198536, 18.124149, 21.972202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406223, -0.087433, -0.909582,
		0.600201, -0.725042, 0.337747,
		-0.689015, -0.683133, -0.242051,
		21.991831, 17.919210, 21.899588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870956, 18.059072, 21.699203>,  <22.474142, 18.397402, 22.069023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870956, 18.059072, 21.699203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.502850, 17.921642, 21.624304>,  <22.281984, 17.839184, 21.579365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.502850, 17.921642, 21.624304>,  <22.870956, 18.059072, 21.699203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502850, 17.921642, 21.624304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228103, -0.082244, -0.970157,
		0.317924, -0.935516, 0.154058,
		-0.920268, -0.343577, -0.187247,
		22.226768, 17.818569, 21.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<17.938625, 21.195444, 26.446932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.632710, 21.023216, 26.255220>,  <17.449160, 20.919880, 26.140194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.632710, 21.023216, 26.255220>,  <17.938625, 21.195444, 26.446932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632710, 21.023216, 26.255220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354401, 0.340100, -0.871052,
		0.538050, -0.836028, -0.107511,
		-0.764789, -0.430568, -0.479280,
		17.403273, 20.894045, 26.111437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200348, 20.942450, 25.794230>,  <17.938625, 21.195444, 26.446932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200348, 20.942450, 25.794230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.810520, 20.930496, 25.705391>,  <17.576624, 20.923325, 25.652088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.810520, 20.930496, 25.705391>,  <18.200348, 20.942450, 25.794230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810520, 20.930496, 25.705391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204391, 0.287846, -0.935612,
		0.091888, -0.957210, -0.274417,
		-0.974567, -0.029883, -0.222095,
		17.518150, 20.921532, 25.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068762, 20.388269, 25.188305>,  <18.200348, 20.942450, 25.794230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068762, 20.388269, 25.188305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.767506, 20.651367, 25.183306>,  <17.586752, 20.809225, 25.180307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.767506, 20.651367, 25.183306>,  <18.068762, 20.388269, 25.188305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767506, 20.651367, 25.183306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168703, 0.174740, -0.970054,
		-0.635863, -0.732694, -0.242567,
		-0.753139, 0.657743, -0.012497,
		17.541563, 20.848690, 25.179556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766426, 20.356722, 24.453405>,  <18.068762, 20.388269, 25.188305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766426, 20.356722, 24.453405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.619640, 20.700680, 24.595345>,  <17.531569, 20.907055, 24.680508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.619640, 20.700680, 24.595345>,  <17.766426, 20.356722, 24.453405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619640, 20.700680, 24.595345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023205, 0.389802, -0.920606,
		-0.929945, -0.329596, -0.162998,
		-0.366965, 0.859896, 0.354846,
		17.509550, 20.958649, 24.701797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095478, 20.483139, 24.067179>,  <17.766426, 20.356722, 24.453405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095478, 20.483139, 24.067179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.248444, 20.823410, 24.211462>,  <17.340223, 21.027573, 24.298033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.248444, 20.823410, 24.211462>,  <17.095478, 20.483139, 24.067179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248444, 20.823410, 24.211462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042020, 0.405988, -0.912912,
		-0.923035, 0.333954, 0.191002,
		0.382415, 0.850675, 0.360708,
		17.363169, 21.078613, 24.319674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711014, 21.049788, 23.714022>,  <17.095478, 20.483139, 24.067179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711014, 21.049788, 23.714022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.015263, 21.256386, 23.871344>,  <17.197811, 21.380344, 23.965736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.015263, 21.256386, 23.871344>,  <16.711014, 21.049788, 23.714022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015263, 21.256386, 23.871344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174693, 0.420646, -0.890247,
		-0.625248, 0.745849, 0.229725,
		0.760623, 0.516494, 0.393303,
		17.243450, 21.411333, 23.989334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581055, 21.804302, 23.631086>,  <16.711014, 21.049788, 23.714022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581055, 21.804302, 23.631086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.971508, 21.725014, 23.666576>,  <17.205780, 21.677441, 23.687870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.971508, 21.725014, 23.666576>,  <16.581055, 21.804302, 23.631086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971508, 21.725014, 23.666576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162375, 0.394847, -0.904284,
		0.144214, 0.897109, 0.417609,
		0.976134, -0.198220, 0.088726,
		17.264349, 21.665548, 23.693193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875307, 22.390684, 23.370291>,  <16.581055, 21.804302, 23.631086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875307, 22.390684, 23.370291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.169006, 22.119171, 23.365612>,  <17.345226, 21.956264, 23.362804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.169006, 22.119171, 23.365612>,  <16.875307, 22.390684, 23.370291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169006, 22.119171, 23.365612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276470, 0.314712, -0.908031,
		0.620035, 0.663486, 0.418739,
		0.734248, -0.678780, -0.011698,
		17.389280, 21.915537, 23.362103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392874, 22.786459, 23.314791>,  <16.875307, 22.390684, 23.370291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392874, 22.786459, 23.314791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.528141, 22.433754, 23.183252>,  <17.609301, 22.222132, 23.104330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.528141, 22.433754, 23.183252>,  <17.392874, 22.786459, 23.314791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528141, 22.433754, 23.183252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185094, 0.404924, -0.895420,
		0.922704, 0.241936, 0.300141,
		0.338168, -0.881762, -0.328844,
		17.629591, 22.169226, 23.084599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104729, 22.895351, 22.965216>,  <17.392874, 22.786459, 23.314791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104729, 22.895351, 22.965216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.968494, 22.553329, 22.808813>,  <17.886755, 22.348116, 22.714972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.968494, 22.553329, 22.808813>,  <18.104729, 22.895351, 22.965216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968494, 22.553329, 22.808813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237209, 0.324272, -0.915740,
		0.909799, -0.404636, 0.092385,
		-0.340584, -0.855054, -0.391006,
		17.866320, 22.296814, 22.691511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507717, 22.825459, 22.432713>,  <18.104729, 22.895351, 22.965216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507717, 22.825459, 22.432713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.199692, 22.581074, 22.359255>,  <18.014875, 22.434443, 22.315180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.199692, 22.581074, 22.359255>,  <18.507717, 22.825459, 22.432713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.199692, 22.581074, 22.359255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014057, 0.271537, -0.962325,
		0.637811, -0.743634, -0.200512,
		-0.770065, -0.610963, -0.183642,
		17.968672, 22.397785, 22.304163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727453, 22.582867, 21.844360>,  <18.507717, 22.825459, 22.432713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727453, 22.582867, 21.844360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.342377, 22.476364, 21.825033>,  <18.111332, 22.412462, 21.813437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.342377, 22.476364, 21.825033>,  <18.727453, 22.582867, 21.844360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342377, 22.476364, 21.825033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039764, 0.037429, -0.998508,
		0.267671, -0.963174, -0.025445,
		-0.962690, -0.266259, -0.048319,
		18.053570, 22.396486, 21.810537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965769, 21.937817, 22.131710>,  <18.727453, 22.582867, 21.844360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965769, 21.937817, 22.131710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.319267, 21.759861, 22.073648>,  <19.531366, 21.653088, 22.038811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.319267, 21.759861, 22.073648>,  <18.965769, 21.937817, 22.131710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319267, 21.759861, 22.073648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095900, -0.131426, 0.986676,
		-0.458039, -0.885890, -0.073482,
		0.883744, -0.444889, -0.145155,
		19.584391, 21.626394, 22.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953291, 21.317497, 22.601662>,  <18.965769, 21.937817, 22.131710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953291, 21.317497, 22.601662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.317062, 21.456558, 22.510382>,  <19.535326, 21.539995, 22.455614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.317062, 21.456558, 22.510382>,  <18.953291, 21.317497, 22.601662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317062, 21.456558, 22.510382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271050, -0.079371, 0.959287,
		0.315385, -0.934258, -0.166413,
		0.909431, 0.347651, -0.228198,
		19.589891, 21.560854, 22.441923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433079, 20.944592, 22.912323>,  <18.953291, 21.317497, 22.601662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433079, 20.944592, 22.912323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645058, 21.271980, 22.823545>,  <19.772245, 21.468414, 22.770279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645058, 21.271980, 22.823545>,  <19.433079, 20.944592, 22.912323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645058, 21.271980, 22.823545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503135, -0.092781, 0.859213,
		0.682650, -0.567005, -0.460971,
		0.529947, 0.818473, -0.221943,
		19.804043, 21.517523, 22.756962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014887, 20.728836, 23.058226>,  <19.433079, 20.944592, 22.912323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014887, 20.728836, 23.058226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.071930, 21.124561, 23.046083>,  <20.106155, 21.361996, 23.038799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.071930, 21.124561, 23.046083>,  <20.014887, 20.728836, 23.058226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071930, 21.124561, 23.046083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552620, -0.054143, 0.831673,
		0.821142, -0.135377, -0.554435,
		0.142608, 0.989314, -0.030353,
		20.114712, 21.421356, 23.036978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680399, 20.839703, 23.166958>,  <20.014887, 20.728836, 23.058226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680399, 20.839703, 23.166958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.511749, 21.184772, 23.278688>,  <20.410561, 21.391815, 23.345728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.511749, 21.184772, 23.278688>,  <20.680399, 20.839703, 23.166958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.511749, 21.184772, 23.278688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602200, 0.036084, 0.797530,
		0.677930, 0.504468, -0.534717,
		-0.421623, 0.862676, 0.279328,
		20.385262, 21.443575, 23.362486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234711, 21.212494, 23.371655>,  <20.680399, 20.839703, 23.166958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234711, 21.212494, 23.371655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.913879, 21.369164, 23.551994>,  <20.721380, 21.463165, 23.660198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.913879, 21.369164, 23.551994>,  <21.234711, 21.212494, 23.371655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913879, 21.369164, 23.551994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421886, -0.162733, 0.891925,
		0.422710, 0.905600, -0.034717,
		-0.802077, 0.391672, 0.450849,
		20.673256, 21.486666, 23.687248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493097, 21.571323, 23.903307>,  <21.234711, 21.212494, 23.371655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493097, 21.571323, 23.903307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.107998, 21.533333, 24.004576>,  <20.876938, 21.510538, 24.065338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.107998, 21.533333, 24.004576>,  <21.493097, 21.571323, 23.903307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107998, 21.533333, 24.004576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254731, -0.004451, 0.967002,
		-0.090714, 0.995470, 0.028478,
		-0.962748, -0.094974, 0.253173,
		20.819174, 21.504841, 24.080528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496294, 22.011757, 24.505676>,  <21.493097, 21.571323, 23.903307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496294, 22.011757, 24.505676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.155193, 21.803093, 24.516144>,  <20.950533, 21.677895, 24.522425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.155193, 21.803093, 24.516144>,  <21.496294, 22.011757, 24.505676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155193, 21.803093, 24.516144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087741, -0.093675, 0.991729,
		-0.514893, 0.847995, 0.125653,
		-0.852752, -0.521659, 0.026171,
		20.899368, 21.646595, 24.523994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191969, 22.209028, 25.134909>,  <21.496294, 22.011757, 24.505676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191969, 22.209028, 25.134909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.015152, 21.863056, 25.039837>,  <20.909061, 21.655472, 24.982794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.015152, 21.863056, 25.039837>,  <21.191969, 22.209028, 25.134909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015152, 21.863056, 25.039837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081220, -0.302479, 0.949689,
		-0.893309, 0.400499, 0.203959,
		-0.442043, -0.864931, -0.237679,
		20.882540, 21.603577, 24.968533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646175, 22.139622, 25.603191>,  <21.191969, 22.209028, 25.134909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646175, 22.139622, 25.603191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.744713, 21.773121, 25.476830>,  <20.803835, 21.553221, 25.401012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.744713, 21.773121, 25.476830>,  <20.646175, 22.139622, 25.603191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744713, 21.773121, 25.476830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119952, -0.294621, 0.948056,
		-0.961731, -0.271439, 0.037329,
		0.246341, -0.916253, -0.315906,
		20.818615, 21.498245, 25.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324184, 21.645987, 26.059582>,  <20.646175, 22.139622, 25.603191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324184, 21.645987, 26.059582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.606747, 21.422787, 25.885397>,  <20.776283, 21.288866, 25.780886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.606747, 21.422787, 25.885397>,  <20.324184, 21.645987, 26.059582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606747, 21.422787, 25.885397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171884, -0.461572, 0.870292,
		-0.686621, -0.689627, -0.230145,
		0.706405, -0.558002, -0.435460,
		20.818668, 21.255386, 25.754759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095228, 20.957766, 26.109764>,  <20.324184, 21.645987, 26.059582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095228, 20.957766, 26.109764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.494419, 20.965557, 26.085562>,  <20.733934, 20.970232, 26.071039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.494419, 20.965557, 26.085562>,  <20.095228, 20.957766, 26.109764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494419, 20.965557, 26.085562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063197, -0.406604, 0.911416,
		-0.006847, -0.913397, -0.407013,
		0.997978, 0.019482, -0.060508,
		20.793812, 20.971401, 26.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291620, 20.293394, 26.405394>,  <20.095228, 20.957766, 26.109764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291620, 20.293394, 26.405394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.646374, 20.477169, 26.386002>,  <20.859226, 20.587435, 26.374367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.646374, 20.477169, 26.386002>,  <20.291620, 20.293394, 26.405394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646374, 20.477169, 26.386002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242184, -0.372990, 0.895670,
		0.393422, -0.806099, -0.442068,
		0.886885, 0.459438, -0.048482,
		20.912439, 20.615000, 26.371458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945351, 19.742210, 26.519772>,  <20.291620, 20.293394, 26.405394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945351, 19.742210, 26.519772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.084328, 20.107563, 26.604645>,  <21.167715, 20.326775, 26.655569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.084328, 20.107563, 26.604645>,  <20.945351, 19.742210, 26.519772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084328, 20.107563, 26.604645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230853, -0.302632, 0.924727,
		0.908840, -0.272309, -0.316004,
		0.347444, 0.913379, 0.212181,
		21.188560, 20.381577, 26.668299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343077, 19.578701, 25.806749>,  <20.945351, 19.742210, 26.519772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343077, 19.578701, 25.806749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.555370, 19.271496, 25.950125>,  <21.682747, 19.087173, 26.036150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.555370, 19.271496, 25.950125>,  <21.343077, 19.578701, 25.806749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555370, 19.271496, 25.950125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191550, -0.520671, -0.831992,
		0.825608, 0.372908, -0.423451,
		0.530736, -0.768011, 0.358440,
		21.714592, 19.041092, 26.057657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783039, 19.335060, 25.284689>,  <21.343077, 19.578701, 25.806749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783039, 19.335060, 25.284689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.763828, 19.027901, 25.540195>,  <21.752302, 18.843605, 25.693499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.763828, 19.027901, 25.540195>,  <21.783039, 19.335060, 25.284689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763828, 19.027901, 25.540195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093631, -0.633228, -0.768281,
		0.994448, -0.096706, -0.041488,
		-0.048026, -0.767900, 0.638766,
		21.749420, 18.797531, 25.731825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290524, 18.926268, 25.162119>,  <21.783039, 19.335060, 25.284689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290524, 18.926268, 25.162119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.998325, 18.699413, 25.314297>,  <21.823008, 18.563301, 25.405603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.998325, 18.699413, 25.314297>,  <22.290524, 18.926268, 25.162119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998325, 18.699413, 25.314297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004146, -0.553391, -0.832911,
		0.682907, -0.610014, 0.401897,
		-0.730494, -0.567135, 0.380444,
		21.779177, 18.529272, 25.428431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446352, 18.324318, 24.998549>,  <22.290524, 18.926268, 25.162119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446352, 18.324318, 24.998549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.066071, 18.271389, 25.110727>,  <21.837902, 18.239632, 25.178034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.066071, 18.271389, 25.110727>,  <22.446352, 18.324318, 24.998549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066071, 18.271389, 25.110727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143995, -0.612590, -0.777174,
		0.274637, -0.779246, 0.563338,
		-0.950705, -0.132323, 0.280448,
		21.780859, 18.231691, 25.194862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.284475, 17.653357, 24.954605>,  <22.446352, 18.324318, 24.998549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.284475, 17.653357, 24.954605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.915550, 17.807823, 24.948740>,  <21.694195, 17.900503, 24.945221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.915550, 17.807823, 24.948740>,  <22.284475, 17.653357, 24.954605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915550, 17.807823, 24.948740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277704, -0.688689, -0.669767,
		-0.268741, -0.613662, 0.742426,
		-0.922312, 0.386169, -0.014663,
		21.638857, 17.923674, 24.944342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833643, 17.097534, 24.788151>,  <22.284475, 17.653357, 24.954605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833643, 17.097534, 24.788151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.594761, 17.407318, 24.704664>,  <21.451431, 17.593187, 24.654572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.594761, 17.407318, 24.704664>,  <21.833643, 17.097534, 24.788151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594761, 17.407318, 24.704664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143505, -0.359185, -0.922167,
		-0.789148, -0.520769, 0.325645,
		-0.597202, 0.774458, -0.208717,
		21.415600, 17.639656, 24.642050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334600, 16.795391, 24.391312>,  <21.833643, 17.097534, 24.788151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334600, 16.795391, 24.391312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.285969, 17.185219, 24.316019>,  <21.256790, 17.419115, 24.270844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.285969, 17.185219, 24.316019>,  <21.334600, 16.795391, 24.391312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.285969, 17.185219, 24.316019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097460, -0.200441, -0.974846,
		-0.987785, -0.100175, 0.119351,
		-0.121578, 0.974571, -0.188230,
		21.249495, 17.477591, 24.259550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.563604, 16.547321, 24.315746>,  <21.334600, 16.795391, 24.391312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.563604, 16.547321, 24.315746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.397434, 16.210533, 24.178049>,  <20.297731, 16.008459, 24.095430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.397434, 16.210533, 24.178049>,  <20.563604, 16.547321, 24.315746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.397434, 16.210533, 24.178049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503422, -0.102391, 0.857952,
		-0.757620, 0.529715, -0.381332,
		-0.415425, -0.841973, -0.344244,
		20.272806, 15.957941, 24.074776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820255, 16.592474, 24.383425>,  <20.563604, 16.547321, 24.315746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820255, 16.592474, 24.383425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.926838, 16.206974, 24.388861>,  <19.990788, 15.975674, 24.392122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.926838, 16.206974, 24.388861>,  <19.820255, 16.592474, 24.383425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926838, 16.206974, 24.388861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578983, -0.148773, 0.801652,
		-0.770571, -0.221473, -0.597637,
		0.266457, -0.963751, 0.013589,
		20.006775, 15.917849, 24.392937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.257830, 16.241354, 24.606071>,  <19.820255, 16.592474, 24.383425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.257830, 16.241354, 24.606071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.533592, 15.959351, 24.672623>,  <19.699049, 15.790149, 24.712553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.533592, 15.959351, 24.672623>,  <19.257830, 16.241354, 24.606071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533592, 15.959351, 24.672623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477900, -0.270062, 0.835870,
		-0.544362, -0.655767, -0.523106,
		0.689406, -0.705008, 0.166380,
		19.740414, 15.747849, 24.722536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876823, 15.644665, 24.825275>,  <19.257830, 16.241354, 24.606071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876823, 15.644665, 24.825275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.246632, 15.549850, 24.944660>,  <19.468515, 15.492962, 25.016291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.246632, 15.549850, 24.944660>,  <18.876823, 15.644665, 24.825275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246632, 15.549850, 24.944660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370527, -0.375478, 0.849545,
		-0.089307, -0.896008, -0.434965,
		0.924519, -0.237037, 0.298462,
		19.523987, 15.478740, 25.034199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.844702, 15.021481, 24.990444>,  <18.876823, 15.644665, 24.825275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.844702, 15.021481, 24.990444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.160389, 15.179916, 25.178165>,  <19.349802, 15.274978, 25.290798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.160389, 15.179916, 25.178165>,  <18.844702, 15.021481, 24.990444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160389, 15.179916, 25.178165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407295, -0.234339, 0.882721,
		0.459614, -0.887805, -0.023619,
		0.789219, 0.396091, 0.469304,
		19.397154, 15.298743, 25.318956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909132, 14.596961, 25.647181>,  <18.844702, 15.021481, 24.990444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909132, 14.596961, 25.647181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.146202, 14.905079, 25.741314>,  <19.288445, 15.089950, 25.797794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.146202, 14.905079, 25.741314>,  <18.909132, 14.596961, 25.647181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146202, 14.905079, 25.741314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282182, -0.075083, 0.956418,
		0.754393, -0.633253, 0.172863,
		0.592675, 0.770294, 0.235335,
		19.324005, 15.136168, 25.811914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418297, 14.398790, 26.105568>,  <18.909132, 14.596961, 25.647181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418297, 14.398790, 26.105568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.383114, 14.793579, 26.159456>,  <19.362003, 15.030453, 26.191790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.383114, 14.793579, 26.159456>,  <19.418297, 14.398790, 26.105568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383114, 14.793579, 26.159456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363833, -0.157732, 0.918012,
		0.927302, 0.031732, 0.372967,
		-0.087959, 0.986972, 0.134720,
		19.356726, 15.089671, 26.199873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745596, 14.502667, 26.853842>,  <19.418297, 14.398790, 26.105568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745596, 14.502667, 26.853842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.493076, 14.796394, 26.754049>,  <19.341564, 14.972631, 26.694174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.493076, 14.796394, 26.754049>,  <19.745596, 14.502667, 26.853842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.493076, 14.796394, 26.754049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440277, -0.074519, 0.894765,
		0.638450, 0.674704, 0.370346,
		-0.631299, 0.734317, -0.249480,
		19.303686, 15.016689, 26.679205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704733, 14.839742, 27.531858>,  <19.745596, 14.502667, 26.853842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704733, 14.839742, 27.531858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415497, 14.987503, 27.298386>,  <19.241955, 15.076159, 27.158302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415497, 14.987503, 27.298386>,  <19.704733, 14.839742, 27.531858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415497, 14.987503, 27.298386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588405, 0.113228, 0.800599,
		0.361832, 0.922346, 0.135484,
		-0.723088, 0.369402, -0.583683,
		19.198570, 15.098324, 27.123281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.729866, 15.860315, 10.654413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.397202, 16.003445, 10.824262>,  <19.197603, 16.089323, 10.926170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.397202, 16.003445, 10.824262>,  <19.729866, 15.860315, 10.654413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397202, 16.003445, 10.824262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444758, -0.028591, 0.895194,
		0.332462, 0.933352, -0.135367,
		-0.831660, 0.357824, 0.424621,
		19.147703, 16.110792, 10.951648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979191, 16.288372, 11.140413>,  <19.729866, 15.860315, 10.654413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979191, 16.288372, 11.140413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.603291, 16.200096, 11.244844>,  <19.377750, 16.147131, 11.307504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.603291, 16.200096, 11.244844>,  <19.979191, 16.288372, 11.140413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603291, 16.200096, 11.244844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257844, 0.043869, 0.965190,
		-0.224459, 0.974357, 0.015677,
		-0.939752, -0.220688, 0.261079,
		19.321365, 16.133890, 11.323168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737707, 16.767391, 11.581079>,  <19.979191, 16.288372, 11.140413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737707, 16.767391, 11.581079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520947, 16.439514, 11.655318>,  <19.390890, 16.242788, 11.699862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520947, 16.439514, 11.655318>,  <19.737707, 16.767391, 11.581079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520947, 16.439514, 11.655318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211327, 0.080842, 0.974066,
		-0.813439, 0.567071, 0.129415,
		-0.541903, -0.819692, 0.185597,
		19.358376, 16.193607, 11.710998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360846, 17.035397, 12.124744>,  <19.737707, 16.767391, 11.581079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360846, 17.035397, 12.124744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.311653, 16.640308, 12.163289>,  <19.282139, 16.403255, 12.186416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.311653, 16.640308, 12.163289>,  <19.360846, 17.035397, 12.124744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311653, 16.640308, 12.163289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201245, 0.070262, 0.977018,
		-0.971791, 0.139545, 0.190133,
		-0.122979, -0.987720, 0.096362,
		19.274759, 16.343992, 12.192198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.040434, 17.011942, 12.768827>,  <19.360846, 17.035397, 12.124744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.040434, 17.011942, 12.768827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.224541, 16.662395, 12.706208>,  <19.335005, 16.452667, 12.668636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.224541, 16.662395, 12.706208>,  <19.040434, 17.011942, 12.768827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224541, 16.662395, 12.706208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347533, 0.015091, 0.937546,
		-0.816929, -0.485929, 0.310644,
		0.460269, -0.873868, -0.156549,
		19.362621, 16.400234, 12.659244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756336, 16.561182, 13.269449>,  <19.040434, 17.011942, 12.768827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756336, 16.561182, 13.269449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.099922, 16.392384, 13.153450>,  <19.306074, 16.291103, 13.083851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.099922, 16.392384, 13.153450>,  <18.756336, 16.561182, 13.269449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099922, 16.392384, 13.153450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278539, -0.090135, 0.956186,
		-0.429647, -0.902105, 0.040120,
		0.858964, -0.421998, -0.289997,
		19.357611, 16.265785, 13.066451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.897482, 15.969705, 13.638212>,  <18.756336, 16.561182, 13.269449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.897482, 15.969705, 13.638212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.260429, 16.048275, 13.489567>,  <19.478199, 16.095417, 13.400380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.260429, 16.048275, 13.489567>,  <18.897482, 15.969705, 13.638212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.260429, 16.048275, 13.489567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403982, -0.163347, 0.900065,
		0.116095, -0.966817, -0.227569,
		0.907370, 0.196427, -0.371613,
		19.532640, 16.107203, 13.378083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415510, 15.424098, 13.902558>,  <18.897482, 15.969705, 13.638212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415510, 15.424098, 13.902558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585609, 15.776569, 13.819910>,  <19.687668, 15.988052, 13.770321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585609, 15.776569, 13.819910>,  <19.415510, 15.424098, 13.902558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585609, 15.776569, 13.819910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354847, 0.047693, 0.933708,
		0.832616, -0.470374, -0.292402,
		0.425246, 0.881178, -0.206620,
		19.713182, 16.040922, 13.757924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084700, 15.226542, 14.146496>,  <19.415510, 15.424098, 13.902558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084700, 15.226542, 14.146496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.120583, 15.622448, 14.102102>,  <20.142113, 15.859992, 14.075466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.120583, 15.622448, 14.102102>,  <20.084700, 15.226542, 14.146496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120583, 15.622448, 14.102102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472849, 0.055750, 0.879378,
		0.876565, -0.131365, -0.463009,
		0.089707, 0.989765, -0.110984,
		20.147495, 15.919377, 14.068807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761271, 15.411412, 14.306923>,  <20.084700, 15.226542, 14.146496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761271, 15.411412, 14.306923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549206, 15.744488, 14.370871>,  <20.421967, 15.944333, 14.409240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549206, 15.744488, 14.370871>,  <20.761271, 15.411412, 14.306923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549206, 15.744488, 14.370871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415393, 0.090700, 0.905109,
		0.739175, 0.546261, -0.393979,
		-0.530160, 0.832690, 0.159870,
		20.390158, 15.994295, 14.418832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.186373, 15.795207, 14.685400>,  <20.761271, 15.411412, 14.306923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.186373, 15.795207, 14.685400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828236, 15.959137, 14.755152>,  <20.613354, 16.057495, 14.797003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828236, 15.959137, 14.755152>,  <21.186373, 15.795207, 14.685400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828236, 15.959137, 14.755152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254367, 0.149134, 0.955540,
		0.365598, 0.899891, -0.237771,
		-0.895341, 0.409824, 0.174380,
		20.559633, 16.082085, 14.807466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257427, 16.307968, 15.159901>,  <21.186373, 15.795207, 14.685400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257427, 16.307968, 15.159901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.868073, 16.229504, 15.207291>,  <20.634459, 16.182425, 15.235724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.868073, 16.229504, 15.207291>,  <21.257427, 16.307968, 15.159901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868073, 16.229504, 15.207291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133186, -0.063533, 0.989053,
		-0.186488, 0.978511, 0.087968,
		-0.973388, -0.196162, 0.118476,
		20.576056, 16.170654, 15.242833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243082, 16.999758, 15.090253>,  <21.257427, 16.307968, 15.159901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243082, 16.999758, 15.090253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.485775, 17.310387, 15.158154>,  <21.631392, 17.496763, 15.198894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.485775, 17.310387, 15.158154>,  <21.243082, 16.999758, 15.090253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485775, 17.310387, 15.158154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104908, 0.289907, -0.951288,
		-0.787953, 0.559369, 0.257364,
		0.606732, 0.776570, 0.169751,
		21.667795, 17.543358, 15.209079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917116, 17.544388, 14.817237>,  <21.243082, 16.999758, 15.090253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917116, 17.544388, 14.817237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.305904, 17.637241, 14.832132>,  <21.539177, 17.692953, 14.841070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.305904, 17.637241, 14.832132>,  <20.917116, 17.544388, 14.817237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305904, 17.637241, 14.832132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028653, 0.274183, -0.961251,
		-0.233347, 0.933241, 0.273149,
		0.971971, 0.232132, 0.037239,
		21.597496, 17.706881, 14.843304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937895, 18.176558, 14.520992>,  <20.917116, 17.544388, 14.817237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937895, 18.176558, 14.520992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.315117, 18.046734, 14.491858>,  <21.541451, 17.968840, 14.474377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.315117, 18.046734, 14.491858>,  <20.937895, 18.176558, 14.520992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315117, 18.046734, 14.491858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, 0.425400, -0.901744,
		0.323653, 0.844806, 0.426089,
		0.943057, -0.324558, -0.072837,
		21.598034, 17.949366, 14.470006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320673, 18.785618, 14.365161>,  <20.937895, 18.176558, 14.520992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320673, 18.785618, 14.365161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.542679, 18.470901, 14.257147>,  <21.675882, 18.282072, 14.192339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.542679, 18.470901, 14.257147>,  <21.320673, 18.785618, 14.365161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542679, 18.470901, 14.257147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122489, 0.398384, -0.909003,
		0.822774, 0.471432, 0.317481,
		0.555012, -0.786792, -0.270035,
		21.709183, 18.234863, 14.176136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869509, 19.039759, 14.106875>,  <21.320673, 18.785618, 14.365161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869509, 19.039759, 14.106875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.827496, 18.681400, 13.934206>,  <21.802288, 18.466385, 13.830605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.827496, 18.681400, 13.934206>,  <21.869509, 19.039759, 14.106875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827496, 18.681400, 13.934206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053618, 0.428341, -0.902025,
		0.993022, -0.117887, 0.003047,
		-0.105032, -0.895894, -0.431673,
		21.795986, 18.412632, 13.804704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.475525, 19.057749, 13.585153>,  <21.869509, 19.039759, 14.106875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.475525, 19.057749, 13.585153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.230621, 18.752644, 13.501883>,  <22.083679, 18.569580, 13.451921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.230621, 18.752644, 13.501883>,  <22.475525, 19.057749, 13.585153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230621, 18.752644, 13.501883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187620, 0.115612, -0.975414,
		0.768075, -0.636262, 0.072325,
		-0.612257, -0.762761, -0.208175,
		22.046944, 18.523815, 13.439430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759064, 18.657501, 13.042643>,  <22.475525, 19.057749, 13.585153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759064, 18.657501, 13.042643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.375057, 18.545601, 13.038473>,  <22.144653, 18.478460, 13.035972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.375057, 18.545601, 13.038473>,  <22.759064, 18.657501, 13.042643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375057, 18.545601, 13.038473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011564, -0.002422, -0.999930,
		0.279710, -0.960069, 0.005561,
		-0.960015, -0.279754, -0.010424,
		22.087053, 18.461676, 13.035346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.654051, 17.967442, 12.672324>,  <22.759064, 18.657501, 13.042643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.654051, 17.967442, 12.672324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.319088, 18.185974, 12.678886>,  <22.118111, 18.317093, 12.682824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.319088, 18.185974, 12.678886>,  <22.654051, 17.967442, 12.672324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319088, 18.185974, 12.678886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014205, 0.008252, -0.999865,
		-0.546392, -0.837529, 0.000851,
		-0.837409, 0.546330, 0.016406,
		22.067865, 18.349873, 12.683808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.320555, 17.660465, 12.107998>,  <22.654051, 17.967442, 12.672324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.320555, 17.660465, 12.107998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.099186, 17.987099, 12.173621>,  <21.966364, 18.183079, 12.212996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.099186, 17.987099, 12.173621>,  <22.320555, 17.660465, 12.107998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099186, 17.987099, 12.173621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021075, 0.210639, -0.977337,
		-0.832634, -0.537422, -0.133781,
		-0.553422, 0.816584, 0.164059,
		21.933159, 18.232073, 12.222839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.707481, 17.654289, 11.626914>,  <22.320555, 17.660465, 12.107998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.707481, 17.654289, 11.626914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.767117, 18.033588, 11.739057>,  <21.802896, 18.261168, 11.806342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.767117, 18.033588, 11.739057>,  <21.707481, 17.654289, 11.626914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767117, 18.033588, 11.739057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291733, 0.313085, -0.903808,
		-0.944810, 0.052956, 0.323312,
		0.149086, 0.948248, 0.280357,
		21.811842, 18.318062, 11.823164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276785, 17.971016, 11.214707>,  <21.707481, 17.654289, 11.626914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276785, 17.971016, 11.214707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.508564, 18.264706, 11.356218>,  <21.647631, 18.440920, 11.441125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.508564, 18.264706, 11.356218>,  <21.276785, 17.971016, 11.214707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508564, 18.264706, 11.356218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050017, 0.465294, -0.883742,
		-0.813475, 0.494386, 0.306336,
		0.579446, 0.734223, 0.353777,
		21.682398, 18.484972, 11.462352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947590, 18.615025, 11.022028>,  <21.276785, 17.971016, 11.214707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947590, 18.615025, 11.022028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.335342, 18.691044, 11.084229>,  <21.567993, 18.736656, 11.121551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.335342, 18.691044, 11.084229>,  <20.947590, 18.615025, 11.022028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335342, 18.691044, 11.084229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021896, 0.563840, -0.825594,
		-0.244582, 0.803720, 0.542415,
		0.969381, 0.190048, 0.155504,
		21.626158, 18.748058, 11.130880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980202, 19.285387, 11.012479>,  <20.947590, 18.615025, 11.022028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980202, 19.285387, 11.012479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.320515, 19.105053, 10.904463>,  <21.524702, 18.996853, 10.839653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.320515, 19.105053, 10.904463>,  <20.980202, 19.285387, 11.012479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320515, 19.105053, 10.904463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030994, 0.469913, -0.882168,
		0.524607, 0.758901, 0.385819,
		0.850780, -0.450834, -0.270041,
		21.575748, 18.969803, 10.823450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314291, 19.818447, 10.682443>,  <20.980202, 19.285387, 11.012479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.314291, 19.818447, 10.682443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.499687, 19.484085, 10.564838>,  <21.610924, 19.283468, 10.494276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.499687, 19.484085, 10.564838>,  <21.314291, 19.818447, 10.682443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499687, 19.484085, 10.564838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022325, 0.342712, -0.939175,
		0.885822, 0.428733, 0.177505,
		0.463488, -0.835904, -0.294011,
		21.638733, 19.233315, 10.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806519, 20.307732, 10.891775>,  <21.314291, 19.818447, 10.682443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806519, 20.307732, 10.891775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708664, 20.695301, 10.906390>,  <20.649950, 20.927843, 10.915159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708664, 20.695301, 10.906390>,  <20.806519, 20.307732, 10.891775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708664, 20.695301, 10.906390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114454, -0.008562, 0.993392,
		0.962836, 0.247204, -0.108803,
		-0.244639, 0.968926, 0.036537,
		20.635273, 20.985979, 10.917352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.163704, 20.516298, 11.400778>,  <20.806519, 20.307732, 10.891775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.163704, 20.516298, 11.400778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.859459, 20.772057, 11.355813>,  <20.676912, 20.925512, 11.328835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.859459, 20.772057, 11.355813>,  <21.163704, 20.516298, 11.400778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859459, 20.772057, 11.355813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157175, -0.013364, 0.987480,
		0.629890, 0.768760, 0.110662,
		-0.760614, 0.639397, -0.112412,
		20.631275, 20.963877, 11.322089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.282309, 21.093662, 11.896232>,  <21.163704, 20.516298, 11.400778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.282309, 21.093662, 11.896232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.900494, 21.011745, 11.809589>,  <20.671404, 20.962595, 11.757604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.900494, 21.011745, 11.809589>,  <21.282309, 21.093662, 11.896232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900494, 21.011745, 11.809589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186363, -0.157139, 0.969833,
		-0.232652, 0.966109, 0.111829,
		-0.954537, -0.204793, -0.216605,
		20.614132, 20.950308, 11.744608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970167, 21.300711, 12.484873>,  <21.282309, 21.093662, 11.896232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970167, 21.300711, 12.484873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665874, 21.097324, 12.323503>,  <20.483299, 20.975292, 12.226682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665874, 21.097324, 12.323503>,  <20.970167, 21.300711, 12.484873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665874, 21.097324, 12.323503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426068, -0.077689, 0.901349,
		-0.489647, 0.857570, -0.157541,
		-0.760731, -0.508466, -0.403423,
		20.437654, 20.944784, 12.202477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419037, 21.474136, 12.932774>,  <20.970167, 21.300711, 12.484873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419037, 21.474136, 12.932774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302670, 21.132347, 12.760615>,  <20.232849, 20.927273, 12.657320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302670, 21.132347, 12.760615>,  <20.419037, 21.474136, 12.932774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302670, 21.132347, 12.760615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415738, -0.292264, 0.861245,
		-0.861701, 0.429483, -0.270213,
		-0.290916, -0.854474, -0.430397,
		20.215395, 20.876005, 12.631496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747126, 21.306778, 13.154571>,  <20.419037, 21.474136, 12.932774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747126, 21.306778, 13.154571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.884377, 20.951168, 13.033312>,  <19.966728, 20.737803, 12.960557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.884377, 20.951168, 13.033312>,  <19.747126, 21.306778, 13.154571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884377, 20.951168, 13.033312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208467, -0.386771, 0.898304,
		-0.915862, -0.245038, -0.318044,
		0.343129, -0.889024, -0.303147,
		19.987316, 20.684462, 12.942368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205772, 20.762413, 13.166266>,  <19.747126, 21.306778, 13.154571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205772, 20.762413, 13.166266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.566463, 20.613274, 13.253784>,  <19.782879, 20.523790, 13.306294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.566463, 20.613274, 13.253784>,  <19.205772, 20.762413, 13.166266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566463, 20.613274, 13.253784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331232, -0.270657, 0.903897,
		-0.277842, -0.887523, -0.367569,
		0.901714, -0.372891, 0.218776,
		19.836983, 20.501419, 13.319423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033419, 20.295012, 13.671052>,  <19.205772, 20.762413, 13.166266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033419, 20.295012, 13.671052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.431015, 20.253986, 13.686356>,  <19.669573, 20.229370, 13.695538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.431015, 20.253986, 13.686356>,  <19.033419, 20.295012, 13.671052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.431015, 20.253986, 13.686356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063259, -0.252954, 0.965408,
		-0.089336, -0.962026, -0.257922,
		0.993991, -0.102562, 0.038259,
		19.729212, 20.223217, 13.697833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225380, 19.653801, 13.973565>,  <19.033419, 20.295012, 13.671052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225380, 19.653801, 13.973565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.539093, 19.892376, 14.041874>,  <19.727322, 20.035521, 14.082859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.539093, 19.892376, 14.041874>,  <19.225380, 19.653801, 13.973565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.539093, 19.892376, 14.041874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040002, -0.226071, 0.973289,
		0.619113, -0.770165, -0.153445,
		0.784283, 0.596438, 0.170771,
		19.774378, 20.071308, 14.093105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628128, 19.203226, 14.298932>,  <19.225380, 19.653801, 13.973565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628128, 19.203226, 14.298932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.743774, 19.577869, 14.378107>,  <19.813162, 19.802654, 14.425611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.743774, 19.577869, 14.378107>,  <19.628128, 19.203226, 14.298932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.743774, 19.577869, 14.378107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063701, -0.225131, 0.972244,
		0.955172, -0.268484, -0.124752,
		0.289117, 0.936607, 0.197936,
		19.830509, 19.858852, 14.437488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242039, 19.189816, 14.850602>,  <19.628128, 19.203226, 14.298932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242039, 19.189816, 14.850602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.090313, 19.559834, 14.858702>,  <19.999277, 19.781845, 14.863562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.090313, 19.559834, 14.858702>,  <20.242039, 19.189816, 14.850602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090313, 19.559834, 14.858702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050339, -0.001222, 0.998731,
		0.923898, 0.379852, -0.046103,
		-0.379314, 0.925046, 0.020250,
		19.976519, 19.837347, 14.864777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588751, 19.504366, 15.469939>,  <20.242039, 19.189816, 14.850602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588751, 19.504366, 15.469939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.278782, 19.748600, 15.404602>,  <20.092800, 19.895140, 15.365399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.278782, 19.748600, 15.404602>,  <20.588751, 19.504366, 15.469939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278782, 19.748600, 15.404602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032254, 0.296297, 0.954551,
		0.631231, 0.734436, -0.249301,
		-0.774924, 0.610583, -0.163343,
		20.046305, 19.931774, 15.355599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787802, 20.107851, 15.786957>,  <20.588751, 19.504366, 15.469939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787802, 20.107851, 15.786957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.390667, 20.139851, 15.751467>,  <20.152386, 20.159050, 15.730173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.390667, 20.139851, 15.751467>,  <20.787802, 20.107851, 15.786957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390667, 20.139851, 15.751467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062194, 0.287980, 0.955615,
		0.101997, 0.954289, -0.280943,
		-0.992839, 0.079997, -0.088724,
		20.092815, 20.163849, 15.724850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601927, 20.739864, 16.035072>,  <20.787802, 20.107851, 15.786957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601927, 20.739864, 16.035072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.273537, 20.512917, 16.060663>,  <20.076504, 20.376747, 16.076017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.273537, 20.512917, 16.060663>,  <20.601927, 20.739864, 16.035072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273537, 20.512917, 16.060663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023200, 0.145103, 0.989144,
		-0.570495, 0.810577, -0.132289,
		-0.820973, -0.567371, 0.063975,
		20.027245, 20.342705, 16.079855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.082012, 21.245527, 16.207787>,  <20.601927, 20.739864, 16.035072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.082012, 21.245527, 16.207787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.950748, 20.886055, 16.324186>,  <19.871990, 20.670372, 16.394026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.950748, 20.886055, 16.324186>,  <20.082012, 21.245527, 16.207787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950748, 20.886055, 16.324186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100384, 0.273139, 0.956722,
		-0.939273, 0.343170, 0.000580,
		-0.328160, -0.898682, 0.291001,
		19.852301, 20.616451, 16.411488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736902, 21.403910, 16.783375>,  <20.082012, 21.245527, 16.207787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736902, 21.403910, 16.783375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.758556, 21.006153, 16.819721>,  <19.771549, 20.767500, 16.841530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.758556, 21.006153, 16.819721>,  <19.736902, 21.403910, 16.783375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758556, 21.006153, 16.819721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106175, 0.096217, 0.989681,
		-0.992873, -0.043931, 0.110789,
		0.054137, -0.994391, 0.090867,
		19.774797, 20.707836, 16.846981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149405, 21.169203, 17.243330>,  <19.736902, 21.403910, 16.783375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149405, 21.169203, 17.243330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.443279, 20.899242, 17.270876>,  <19.619604, 20.737267, 17.287403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.443279, 20.899242, 17.270876>,  <19.149405, 21.169203, 17.243330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443279, 20.899242, 17.270876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032894, 0.065949, 0.997281,
		-0.677610, -0.734953, 0.026251,
		0.734686, -0.674903, 0.068863,
		19.663685, 20.696772, 17.291534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923666, 20.717228, 17.736286>,  <19.149405, 21.169203, 17.243330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923666, 20.717228, 17.736286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317944, 20.652264, 17.718273>,  <19.554510, 20.613285, 17.707466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317944, 20.652264, 17.718273>,  <18.923666, 20.717228, 17.736286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317944, 20.652264, 17.718273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048317, 0.016333, 0.998699,
		-0.161463, -0.986588, 0.023946,
		0.985695, -0.162410, -0.045032,
		19.613651, 20.603540, 17.704763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953403, 20.302029, 18.204279>,  <18.923666, 20.717228, 17.736286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953403, 20.302029, 18.204279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.331364, 20.420334, 18.148155>,  <19.558140, 20.491318, 18.114481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.331364, 20.420334, 18.148155>,  <18.953403, 20.302029, 18.204279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331364, 20.420334, 18.148155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071896, 0.230656, 0.970376,
		0.319367, -0.926996, 0.196682,
		0.944900, 0.295765, -0.140311,
		19.614834, 20.509062, 18.106062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276548, 20.007498, 18.751839>,  <18.953403, 20.302029, 18.204279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276548, 20.007498, 18.751839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.574741, 20.238297, 18.618376>,  <19.753656, 20.376776, 18.538298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.574741, 20.238297, 18.618376>,  <19.276548, 20.007498, 18.751839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574741, 20.238297, 18.618376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359499, 0.073460, 0.930250,
		0.561263, -0.813435, -0.152667,
		0.745483, 0.576999, -0.333659,
		19.798386, 20.411396, 18.518278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872496, 19.759743, 19.142147>,  <19.276548, 20.007498, 18.751839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872496, 19.759743, 19.142147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928829, 20.141609, 19.037247>,  <19.962629, 20.370729, 18.974306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928829, 20.141609, 19.037247>,  <19.872496, 19.759743, 19.142147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928829, 20.141609, 19.037247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285440, 0.214490, 0.934087,
		0.947993, -0.206406, -0.242293,
		0.140832, 0.954668, -0.262251,
		19.971079, 20.428009, 18.958570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380703, 19.902327, 19.566057>,  <19.872496, 19.759743, 19.142147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380703, 19.902327, 19.566057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.227009, 20.251438, 19.445646>,  <20.134792, 20.460905, 19.373400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.227009, 20.251438, 19.445646>,  <20.380703, 19.902327, 19.566057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227009, 20.251438, 19.445646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058813, 0.348535, 0.935449,
		0.921359, 0.341730, -0.185251,
		-0.384237, 0.872780, -0.301028,
		20.111738, 20.513271, 19.355337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699446, 20.340120, 19.974932>,  <20.380703, 19.902327, 19.566057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699446, 20.340120, 19.974932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.369907, 20.524120, 19.842459>,  <20.172184, 20.634520, 19.762976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.369907, 20.524120, 19.842459>,  <20.699446, 20.340120, 19.974932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369907, 20.524120, 19.842459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109420, 0.444227, 0.889207,
		0.556153, 0.768807, -0.315641,
		-0.823845, 0.459998, -0.331181,
		20.122753, 20.662119, 19.743105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900547, 21.098452, 19.951143>,  <20.699446, 20.340120, 19.974932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900547, 21.098452, 19.951143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.510250, 21.038677, 20.015139>,  <20.276072, 21.002813, 20.053535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.510250, 21.038677, 20.015139>,  <20.900547, 21.098452, 19.951143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510250, 21.038677, 20.015139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057402, 0.530596, 0.845679,
		-0.211265, 0.834348, -0.509147,
		-0.975742, -0.149436, 0.159990,
		20.217527, 20.993847, 20.063135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657360, 21.638754, 20.224813>,  <20.900547, 21.098452, 19.951143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657360, 21.638754, 20.224813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.348438, 21.409256, 20.333891>,  <20.163084, 21.271557, 20.399338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.348438, 21.409256, 20.333891>,  <20.657360, 21.638754, 20.224813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.348438, 21.409256, 20.333891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034287, 0.466293, 0.883966,
		-0.634324, 0.673343, -0.379792,
		-0.772306, -0.573743, 0.272694,
		20.116747, 21.237133, 20.415699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.159883, 22.066719, 20.540499>,  <20.657360, 21.638754, 20.224813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.159883, 22.066719, 20.540499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.987923, 21.723053, 20.651508>,  <19.884747, 21.516853, 20.718113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.987923, 21.723053, 20.651508>,  <20.159883, 22.066719, 20.540499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987923, 21.723053, 20.651508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049459, 0.329324, 0.942921,
		-0.901520, 0.391637, -0.184070,
		-0.429901, -0.859166, 0.277523,
		19.858952, 21.465303, 20.734766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580828, 22.273687, 20.930201>,  <20.159883, 22.066719, 20.540499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580828, 22.273687, 20.930201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688988, 21.906696, 21.046904>,  <19.753883, 21.686502, 21.116926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688988, 21.906696, 21.046904>,  <19.580828, 22.273687, 20.930201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688988, 21.906696, 21.046904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078973, 0.280887, 0.956486,
		-0.959503, -0.281676, 0.003496,
		0.270401, -0.917475, 0.291757,
		19.770107, 21.631454, 21.134430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226250, 22.255817, 21.453480>,  <19.580828, 22.273687, 20.930201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226250, 22.255817, 21.453480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489166, 21.957870, 21.499338>,  <19.646915, 21.779102, 21.526854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489166, 21.957870, 21.499338>,  <19.226250, 22.255817, 21.453480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489166, 21.957870, 21.499338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023659, 0.172441, 0.984736,
		-0.753267, -0.644543, 0.130966,
		0.657289, -0.744868, 0.114645,
		19.686354, 21.734409, 21.533731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707340, 21.863697, 21.360847>,  <19.226250, 22.255817, 21.453480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707340, 21.863697, 21.360847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.348713, 22.040783, 21.355661>,  <18.133535, 22.147034, 21.352551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.348713, 22.040783, 21.355661>,  <18.707340, 21.863697, 21.360847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348713, 22.040783, 21.355661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018348, 0.007880, -0.999801,
		-0.442523, -0.896629, -0.015188,
		-0.896569, 0.442713, -0.012964,
		18.079742, 22.173597, 21.351772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223225, 21.501867, 20.890247>,  <18.707340, 21.863697, 21.360847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223225, 21.501867, 20.890247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.099697, 21.881451, 20.915884>,  <18.025581, 22.109201, 20.931267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.099697, 21.881451, 20.915884>,  <18.223225, 21.501867, 20.890247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.099697, 21.881451, 20.915884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233053, -0.010166, -0.972411,
		-0.922127, -0.315235, 0.224297,
		-0.308818, 0.948959, 0.064093,
		18.007051, 22.166138, 20.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563906, 21.439434, 20.546722>,  <18.223225, 21.501867, 20.890247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563906, 21.439434, 20.546722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.684750, 21.820698, 20.552549>,  <17.757256, 22.049456, 20.556046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.684750, 21.820698, 20.552549>,  <17.563906, 21.439434, 20.546722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684750, 21.820698, 20.552549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273096, 0.101178, -0.956651,
		-0.913317, 0.285037, 0.290872,
		0.302111, 0.953162, 0.014565,
		17.775383, 22.106646, 20.556919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018717, 21.820812, 20.241482>,  <17.563906, 21.439434, 20.546722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018717, 21.820812, 20.241482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.333504, 22.066116, 20.214365>,  <17.522375, 22.213299, 20.198095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.333504, 22.066116, 20.214365>,  <17.018717, 21.820812, 20.241482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333504, 22.066116, 20.214365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286524, 0.265931, -0.920426,
		-0.546432, 0.743769, 0.384992,
		0.786966, 0.613260, -0.067794,
		17.569593, 22.250095, 20.194027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797535, 22.392113, 19.987118>,  <17.018717, 21.820812, 20.241482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.797535, 22.392113, 19.987118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.187050, 22.459805, 19.926323>,  <17.420759, 22.500420, 19.889845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.187050, 22.459805, 19.926323>,  <16.797535, 22.392113, 19.987118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187050, 22.459805, 19.926323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187605, 0.219694, -0.957361,
		-0.128623, 0.960779, 0.245683,
		0.973787, 0.169230, -0.151989,
		17.479185, 22.510574, 19.880726>
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
