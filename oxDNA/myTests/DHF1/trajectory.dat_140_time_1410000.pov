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
	<1.008179, 1.757954, 5.926979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.952503, 2.123344, 6.079918>,  <0.919098, 2.342578, 6.171681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.952503, 2.123344, 6.079918>,  <1.008179, 1.757954, 5.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.952503, 2.123344, 6.079918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016865, 0.383863, -0.923236,
		-0.990122, -0.134953, -0.038023,
		-0.139189, 0.913475, 0.382348,
		0.910746, 2.397387, 6.194622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.375314, 2.058723, 5.520660>,  <1.008179, 1.757954, 5.926979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.375314, 2.058723, 5.520660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.653019, 2.303768, 5.671764>,  <0.819642, 2.450795, 5.762427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.653019, 2.303768, 5.671764>,  <0.375314, 2.058723, 5.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653019, 2.303768, 5.671764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187112, 0.353190, -0.916649,
		-0.694973, 0.707080, 0.130580,
		0.694263, 0.612613, 0.377761,
		0.861298, 2.487552, 5.785092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.279792, 2.734519, 5.286110>,  <0.375314, 2.058723, 5.520660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.279792, 2.734519, 5.286110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.671860, 2.701786, 5.358303>,  <0.907100, 2.682147, 5.401619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.671860, 2.701786, 5.358303>,  <0.279792, 2.734519, 5.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.671860, 2.701786, 5.358303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197083, 0.497641, -0.844696,
		-0.020693, 0.863514, 0.503899,
		0.980168, -0.081831, 0.180482,
		0.965910, 2.677237, 5.412447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.642178, 3.353769, 5.184665>,  <0.279792, 2.734519, 5.286110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.642178, 3.353769, 5.184665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.898243, 3.054569, 5.114594>,  <1.051882, 2.875049, 5.072551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.898243, 3.054569, 5.114594>,  <0.642178, 3.353769, 5.184665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.898243, 3.054569, 5.114594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270222, 0.432694, -0.860091,
		0.719147, 0.503261, 0.479121,
		0.640163, -0.748000, -0.175178,
		1.090292, 2.830169, 5.062040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399015, 3.571111, 5.110944>,  <0.642178, 3.353769, 5.184665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399015, 3.571111, 5.110944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.354717, 3.230499, 4.905952>,  <1.328138, 3.026132, 4.782958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.354717, 3.230499, 4.905952>,  <1.399015, 3.571111, 5.110944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.354717, 3.230499, 4.905952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209629, 0.484036, -0.849568,
		0.971489, -0.201516, 0.124900,
		-0.110745, -0.851528, -0.512479,
		1.321494, 2.975041, 4.752209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.907442, 3.557144, 4.667364>,  <1.399015, 3.571111, 5.110944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.907442, 3.557144, 4.667364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.656013, 3.294922, 4.499962>,  <1.505157, 3.137589, 4.399520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.656013, 3.294922, 4.499962>,  <1.907442, 3.557144, 4.667364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656013, 3.294922, 4.499962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233712, 0.354021, -0.905565,
		0.741807, -0.667021, -0.069316,
		-0.628570, -0.655555, -0.418506,
		1.467442, 3.098255, 4.374410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.276332, 3.348298, 4.127071>,  <1.907442, 3.557144, 4.667364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.276332, 3.348298, 4.127071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908798, 3.234417, 4.017754>,  <1.688278, 3.166088, 3.952163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908798, 3.234417, 4.017754>,  <2.276332, 3.348298, 4.127071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.908798, 3.234417, 4.017754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148568, 0.392020, -0.907881,
		0.365605, -0.874796, -0.317906,
		-0.918836, -0.284695, -0.273291,
		1.633148, 3.149006, 3.935765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.364081, 2.935946, 3.488145>,  <2.276332, 3.348298, 4.127071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.364081, 2.935946, 3.488145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.995075, 3.085983, 3.524525>,  <1.773672, 3.176006, 3.546353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.995075, 3.085983, 3.524525>,  <2.364081, 2.935946, 3.488145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.995075, 3.085983, 3.524525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160002, 0.586102, -0.794282,
		-0.351237, -0.718184, -0.600703,
		-0.922514, 0.375095, 0.090950,
		1.718321, 3.198512, 3.551810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.010159, 3.726684, 1.857653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760223, 4.019958, 1.964996>,  <1.610262, 4.195923, 2.029402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760223, 4.019958, 1.964996>,  <2.010159, 3.726684, 1.857653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.760223, 4.019958, 1.964996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183903, -0.472256, 0.862064,
		0.758786, 0.489298, 0.429919,
		-0.624838, 0.733186, 0.268358,
		1.572772, 4.239914, 2.045504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064033, 4.132680, 2.494949>,  <2.010159, 3.726684, 1.857653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064033, 4.132680, 2.494949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677927, 4.051231, 2.429466>,  <1.446263, 4.002362, 2.390177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677927, 4.051231, 2.429466>,  <2.064033, 4.132680, 2.494949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.677927, 4.051231, 2.429466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042959, -0.494361, 0.868195,
		-0.257714, 0.845071, 0.468442,
		-0.965266, -0.203622, -0.163707,
		1.388347, 3.990145, 2.380354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.600509, 4.405712, 3.085040>,  <2.064033, 4.132680, 2.494949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.600509, 4.405712, 3.085040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423222, 4.085304, 2.924080>,  <1.316849, 3.893059, 2.827504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423222, 4.085304, 2.924080>,  <1.600509, 4.405712, 3.085040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423222, 4.085304, 2.924080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020303, -0.439814, 0.897859,
		-0.896184, 0.406118, 0.178670,
		-0.443219, -0.801019, -0.402399,
		1.290256, 3.844998, 2.803360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.031665, 4.183496, 3.481880>,  <1.600509, 4.405712, 3.085040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.031665, 4.183496, 3.481880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.173085, 3.833847, 3.348663>,  <1.257936, 3.624058, 3.268734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.173085, 3.833847, 3.348663>,  <1.031665, 4.183496, 3.481880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173085, 3.833847, 3.348663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093388, -0.387240, 0.917237,
		-0.930743, -0.293185, -0.218540,
		0.353548, -0.874121, -0.333041,
		1.279149, 3.571611, 3.248751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.513249, 3.627977, 3.550889>,  <1.031665, 4.183496, 3.481880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.513249, 3.627977, 3.550889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.867897, 3.443146, 3.542999>,  <1.080686, 3.332247, 3.538265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.867897, 3.443146, 3.542999>,  <0.513249, 3.627977, 3.550889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.867897, 3.443146, 3.542999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274293, -0.559687, 0.781994,
		-0.372381, -0.687921, -0.622974,
		0.886620, -0.462077, -0.019725,
		1.133883, 3.304522, 3.537081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.369080, 2.956784, 3.620964>,  <0.513249, 3.627977, 3.550889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.369080, 2.956784, 3.620964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757921, 2.967934, 3.714119>,  <0.991226, 2.974624, 3.770012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757921, 2.967934, 3.714119>,  <0.369080, 2.956784, 3.620964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757921, 2.967934, 3.714119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176736, -0.565727, 0.805430,
		0.154203, -0.824121, -0.545019,
		0.972104, 0.027875, 0.232889,
		1.049553, 2.976296, 3.783986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.708878, 2.275203, 3.745368>,  <0.369080, 2.956784, 3.620964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.708878, 2.275203, 3.745368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943741, 2.521729, 3.955284>,  <1.084658, 2.669644, 4.081234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943741, 2.521729, 3.955284>,  <0.708878, 2.275203, 3.745368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.943741, 2.521729, 3.955284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088373, -0.595629, 0.798384,
		0.804635, -0.515153, -0.295262,
		0.587156, 0.616315, 0.524790,
		1.119888, 2.706623, 4.112721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.116086, 1.871261, 4.167138>,  <0.708878, 2.275203, 3.745368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.116086, 1.871261, 4.167138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.134776, 2.233818, 4.335075>,  <1.145989, 2.451353, 4.435838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.134776, 2.233818, 4.335075>,  <1.116086, 1.871261, 4.167138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.134776, 2.233818, 4.335075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031847, -0.418736, 0.907549,
		0.998400, -0.055774, 0.009301,
		0.046723, 0.906393, 0.419843,
		1.148793, 2.505736, 4.461028>
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
