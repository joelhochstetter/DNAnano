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
	<3.341534, 3.463632, -0.819200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347198, 3.206528, -0.512825>,  <3.350597, 3.052265, -0.329000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347198, 3.206528, -0.512825>,  <3.341534, 3.463632, -0.819200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347198, 3.206528, -0.512825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002106, 0.766031, 0.642801,
		-0.999897, -0.007489, 0.012201,
		0.014160, -0.642760, 0.765936,
		3.351447, 3.013700, -0.283044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.865175, 3.719784, -0.374414>,  <3.341534, 3.463632, -0.819200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.865175, 3.719784, -0.374414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.108536, 3.487778, -0.157738>,  <3.254552, 3.348574, -0.027732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.108536, 3.487778, -0.157738>,  <2.865175, 3.719784, -0.374414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.108536, 3.487778, -0.157738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036395, 0.702222, 0.711027,
		-0.792794, -0.412876, 0.448343,
		0.608402, -0.580015, 0.541691,
		3.291056, 3.313773, 0.004770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.567232, 3.572245, 0.213872>,  <2.865175, 3.719784, -0.374414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.567232, 3.572245, 0.213872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961517, 3.634697, 0.239151>,  <3.198088, 3.672168, 0.254318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961517, 3.634697, 0.239151>,  <2.567232, 3.572245, 0.213872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.961517, 3.634697, 0.239151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150838, 0.651276, 0.743699,
		0.074953, -0.742606, 0.665521,
		0.985713, 0.156129, 0.063198,
		3.257231, 3.681536, 0.258110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.798554, 3.455484, 0.956736>,  <2.567232, 3.572245, 0.213872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.798554, 3.455484, 0.956736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004375, 3.730293, 0.751511>,  <3.127868, 3.895179, 0.628376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004375, 3.730293, 0.751511>,  <2.798554, 3.455484, 0.956736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.004375, 3.730293, 0.751511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125995, 0.652438, 0.747295,
		0.848150, -0.319880, 0.422277,
		0.514554, 0.687023, -0.513062,
		3.158742, 3.936400, 0.597592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173860, 3.723009, 1.559181>,  <2.798554, 3.455484, 0.956736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173860, 3.723009, 1.559181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168060, 3.972954, 1.246941>,  <3.164581, 4.122921, 1.059597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168060, 3.972954, 1.246941>,  <3.173860, 3.723009, 1.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.168060, 3.972954, 1.246941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074964, 0.777806, 0.624018,
		0.997081, 0.067564, 0.035565,
		-0.014498, 0.624863, -0.780600,
		3.163711, 4.160413, 1.012761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.749770, 4.169533, 1.585899>,  <3.173860, 3.723009, 1.559181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.749770, 4.169533, 1.585899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.467144, 4.361320, 1.377716>,  <3.297569, 4.476393, 1.252806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.467144, 4.361320, 1.377716>,  <3.749770, 4.169533, 1.585899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.467144, 4.361320, 1.377716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078958, 0.784298, 0.615339,
		0.703230, 0.393681, -0.592015,
		-0.706564, 0.479469, -0.520458,
		3.255175, 4.505161, 1.221579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.977441, 4.913545, 1.660921>,  <3.749770, 4.169533, 1.585899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.977441, 4.913545, 1.660921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.598289, 4.902206, 1.533974>,  <3.370799, 4.895403, 1.457806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.598289, 4.902206, 1.533974>,  <3.977441, 4.913545, 1.660921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.598289, 4.902206, 1.533974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270839, 0.596354, 0.755651,
		0.167844, 0.802221, -0.572949,
		-0.947879, -0.028345, -0.317368,
		3.313926, 4.893703, 1.438763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.739141, 5.592601, 1.727260>,  <3.977441, 4.913545, 1.660921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.739141, 5.592601, 1.727260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.407627, 5.369087, 1.739090>,  <3.208719, 5.234979, 1.746188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.407627, 5.369087, 1.739090>,  <3.739141, 5.592601, 1.727260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.407627, 5.369087, 1.739090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255504, 0.424924, 0.868422,
		-0.497828, 0.712179, -0.494943,
		-0.828785, -0.558785, 0.029575,
		3.158992, 5.201452, 1.747962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.006410, 5.889634, 3.357520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.784282, 5.558891, 3.321899>,  <2.651005, 5.360446, 3.300527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.784282, 5.558891, 3.321899>,  <3.006410, 5.889634, 3.357520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.784282, 5.558891, 3.321899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404369, -0.174894, -0.897718,
		0.726708, -0.534530, 0.431477,
		-0.555320, -0.826855, -0.089051,
		2.617686, 5.310835, 3.295184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.430491, 5.317847, 3.049881>,  <3.006410, 5.889634, 3.357520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.430491, 5.317847, 3.049881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037299, 5.301643, 2.978203>,  <2.801384, 5.291921, 2.935196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037299, 5.301643, 2.978203>,  <3.430491, 5.317847, 3.049881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.037299, 5.301643, 2.978203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181985, -0.081101, -0.979951,
		0.025165, -0.995882, 0.087093,
		-0.982979, -0.040510, -0.179195,
		2.742405, 5.289491, 2.924444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.224169, 4.679906, 2.654864>,  <3.430491, 5.317847, 3.049881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.224169, 4.679906, 2.654864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942433, 4.957245, 2.593971>,  <2.773392, 5.123648, 2.557436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942433, 4.957245, 2.593971>,  <3.224169, 4.679906, 2.654864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.942433, 4.957245, 2.593971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008896, -0.205813, -0.978551,
		-0.709808, -0.690586, 0.138794,
		-0.704340, 0.693348, -0.152231,
		2.731131, 5.165249, 2.548302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.602777, 4.346521, 2.310860>,  <3.224169, 4.679906, 2.654864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.602777, 4.346521, 2.310860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.613914, 4.730850, 2.200554>,  <2.620596, 4.961447, 2.134370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.613914, 4.730850, 2.200554>,  <2.602777, 4.346521, 2.310860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.613914, 4.730850, 2.200554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010662, -0.276142, -0.961058,
		-0.999555, 0.023818, -0.017933,
		0.027842, 0.960822, -0.275765,
		2.622266, 5.019097, 2.117824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097779, 4.505290, 1.819646>,  <2.602777, 4.346521, 2.310860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097779, 4.505290, 1.819646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395654, 4.763718, 1.752670>,  <2.574378, 4.918775, 1.712485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395654, 4.763718, 1.752670>,  <2.097779, 4.505290, 1.819646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.395654, 4.763718, 1.752670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163835, -0.420157, -0.892539,
		-0.646993, 0.637230, -0.418734,
		0.744687, 0.646070, -0.167438,
		2.619060, 4.957539, 1.702439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.989632, 4.866735, 1.128885>,  <2.097779, 4.505290, 1.819646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.989632, 4.866735, 1.128885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.376869, 4.866165, 1.229118>,  <2.609212, 4.865823, 1.289259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.376869, 4.866165, 1.229118>,  <1.989632, 4.866735, 1.128885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.376869, 4.866165, 1.229118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232528, -0.367640, -0.900428,
		0.093408, 0.929967, -0.355579,
		0.968094, -0.001425, 0.250584,
		2.667297, 4.865737, 1.304294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.295481, 5.067519, 0.550341>,  <1.989632, 4.866735, 1.128885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.295481, 5.067519, 0.550341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577028, 4.884872, 0.767990>,  <2.745957, 4.775284, 0.898580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577028, 4.884872, 0.767990>,  <2.295481, 5.067519, 0.550341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577028, 4.884872, 0.767990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336684, -0.460044, -0.821586,
		0.625471, 0.761486, -0.170074,
		0.703868, -0.456617, 0.544124,
		2.788189, 4.747887, 0.931227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.905421, 5.060770, 0.121296>,  <2.295481, 5.067519, 0.550341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.905421, 5.060770, 0.121296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.938159, 4.774254, 0.398491>,  <2.957802, 4.602345, 0.564808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.938159, 4.774254, 0.398491>,  <2.905421, 5.060770, 0.121296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938159, 4.774254, 0.398491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228304, -0.663356, -0.712626,
		0.970144, 0.216537, 0.109239,
		0.081845, -0.716290, 0.692987,
		2.962713, 4.559367, 0.606387>
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
