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
	<5.237668, 1.796831, 2.633136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.903885, 1.577951, 2.607056>,  <4.703615, 1.446623, 2.591407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.903885, 1.577951, 2.607056>,  <5.237668, 1.796831, 2.633136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.903885, 1.577951, 2.607056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407965, 0.533880, 0.740633,
		-0.370465, 0.644627, -0.668739,
		-0.834459, -0.547200, -0.065201,
		4.653547, 1.413791, 2.587495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.638681, 2.257231, 2.479609>,  <5.237668, 1.796831, 2.633136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.638681, 2.257231, 2.479609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607285, 1.936626, 2.716730>,  <4.588447, 1.744263, 2.859003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607285, 1.936626, 2.716730>,  <4.638681, 2.257231, 2.479609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607285, 1.936626, 2.716730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203757, 0.594984, 0.777481,
		-0.975870, -0.059763, -0.210014,
		-0.078491, -0.801513, 0.592804,
		4.583737, 1.696173, 2.894571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939290, 2.190138, 2.816425>,  <4.638681, 2.257231, 2.479609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939290, 2.190138, 2.816425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.272041, 2.123297, 3.028105>,  <4.471693, 2.083192, 3.155113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.272041, 2.123297, 3.028105>,  <3.939290, 2.190138, 2.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.272041, 2.123297, 3.028105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268449, 0.713430, 0.647265,
		-0.485708, -0.680510, 0.548629,
		0.831879, -0.167103, 0.529201,
		4.521605, 2.073166, 3.186865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.757324, 1.917854, 3.501788>,  <3.939290, 2.190138, 2.816425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.757324, 1.917854, 3.501788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.120834, 2.082266, 3.530584>,  <4.338940, 2.180913, 3.547862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.120834, 2.082266, 3.530584>,  <3.757324, 1.917854, 3.501788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.120834, 2.082266, 3.530584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291795, 0.502618, 0.813776,
		0.298302, -0.760545, 0.576703,
		0.908775, 0.411030, 0.071991,
		4.393467, 2.205575, 3.552182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.948520, 1.837634, 4.191036>,  <3.757324, 1.917854, 3.501788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.948520, 1.837634, 4.191036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109917, 2.170568, 4.039030>,  <4.206755, 2.370329, 3.947827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109917, 2.170568, 4.039030>,  <3.948520, 1.837634, 4.191036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109917, 2.170568, 4.039030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319307, 0.517302, 0.794003,
		0.857460, -0.199032, 0.474498,
		0.403490, 0.832337, -0.380014,
		4.230964, 2.420269, 3.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.121686, 2.268801, 4.789197>,  <3.948520, 1.837634, 4.191036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.121686, 2.268801, 4.789197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.121788, 2.548599, 4.503342>,  <4.121849, 2.716478, 4.331829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.121788, 2.548599, 4.503342>,  <4.121686, 2.268801, 4.789197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.121788, 2.548599, 4.503342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325302, 0.675826, 0.661390,
		0.945610, 0.232305, 0.227718,
		0.000254, 0.699495, -0.714638,
		4.121864, 2.758448, 4.288950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.574880, 2.914670, 4.999402>,  <4.121686, 2.268801, 4.789197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.574880, 2.914670, 4.999402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.274124, 2.981438, 4.744278>,  <4.093671, 3.021498, 4.591204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.274124, 2.981438, 4.744278>,  <4.574880, 2.914670, 4.999402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.274124, 2.981438, 4.744278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423091, 0.619774, 0.660964,
		0.505627, 0.766823, -0.395379,
		-0.751888, 0.166920, -0.637810,
		4.048558, 3.031514, 4.552935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.444838, 3.655846, 5.018917>,  <4.574880, 2.914670, 4.999402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.444838, 3.655846, 5.018917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095085, 3.497784, 4.906269>,  <3.885233, 3.402946, 4.838681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095085, 3.497784, 4.906269>,  <4.444838, 3.655846, 5.018917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.095085, 3.497784, 4.906269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481758, 0.637559, 0.601189,
		-0.058014, 0.661340, -0.747839,
		-0.874382, -0.395155, -0.281619,
		3.832771, 3.379237, 4.821784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.130411, 2.105587, 5.659276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.811935, 1.863567, 5.659714>,  <3.620850, 1.718356, 5.659976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.811935, 1.863567, 5.659714>,  <4.130411, 2.105587, 5.659276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.811935, 1.863567, 5.659714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467911, 0.616873, 0.632872,
		-0.383592, 0.503374, -0.774256,
		-0.796188, -0.605048, 0.001094,
		3.573079, 1.682053, 5.660042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.439577, 2.523153, 5.535645>,  <4.130411, 2.105587, 5.659276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.439577, 2.523153, 5.535645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.371750, 2.177681, 5.725510>,  <3.331054, 1.970398, 5.839428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.371750, 2.177681, 5.725510>,  <3.439577, 2.523153, 5.535645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.371750, 2.177681, 5.725510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512732, 0.488633, 0.705935,
		-0.841637, -0.123671, -0.525693,
		-0.169567, -0.863680, 0.474661,
		3.320880, 1.918577, 5.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930279, 2.635267, 4.938142>,  <3.439577, 2.523153, 5.535645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930279, 2.635267, 4.938142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036041, 3.016624, 4.879993>,  <3.099498, 3.245439, 4.845104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036041, 3.016624, 4.879993>,  <2.930279, 2.635267, 4.938142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.036041, 3.016624, 4.879993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599914, -0.280617, -0.749238,
		-0.755112, 0.110891, -0.646150,
		0.264405, 0.953392, -0.145372,
		3.115363, 3.302642, 4.836382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.839074, 2.877648, 4.217735>,  <2.930279, 2.635267, 4.938142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.839074, 2.877648, 4.217735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.138214, 3.074699, 4.395741>,  <3.317698, 3.192930, 4.502544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.138214, 3.074699, 4.395741>,  <2.839074, 2.877648, 4.217735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.138214, 3.074699, 4.395741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608242, -0.239845, -0.756648,
		-0.266012, 0.836535, -0.479006,
		0.747850, 0.492629, 0.445013,
		3.362569, 3.222488, 4.529244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.132032, 3.347780, 3.743793>,  <2.839074, 2.877648, 4.217735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.132032, 3.347780, 3.743793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410004, 3.245483, 4.012619>,  <3.576787, 3.184105, 4.173914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410004, 3.245483, 4.012619>,  <3.132032, 3.347780, 3.743793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.410004, 3.245483, 4.012619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629752, -0.234706, -0.740490,
		0.347112, 0.937821, -0.002049,
		0.694928, -0.255743, 0.672064,
		3.618482, 3.168761, 4.214238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802702, 3.630792, 3.389867>,  <3.132032, 3.347780, 3.743793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802702, 3.630792, 3.389867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928665, 3.343487, 3.638039>,  <4.004243, 3.171103, 3.786942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928665, 3.343487, 3.638039>,  <3.802702, 3.630792, 3.389867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.928665, 3.343487, 3.638039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649276, -0.313780, -0.692808,
		0.692297, 0.620999, 0.367540,
		0.314907, -0.718263, 0.620428,
		4.023137, 3.128008, 3.824167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.529338, 3.566493, 3.403399>,  <3.802702, 3.630792, 3.389867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.529338, 3.566493, 3.403399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.427521, 3.203171, 3.536179>,  <4.366430, 2.985178, 3.615846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.427521, 3.203171, 3.536179>,  <4.529338, 3.566493, 3.403399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427521, 3.203171, 3.536179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664426, -0.413671, -0.622426,
		0.702670, 0.062122, 0.708799,
		-0.254543, -0.908305, 0.331950,
		4.351158, 2.930679, 3.635763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.018848, 3.143749, 3.784471>,  <4.529338, 3.566493, 3.403399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.018848, 3.143749, 3.784471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781128, 2.900749, 3.573662>,  <4.638495, 2.754950, 3.447177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781128, 2.900749, 3.573662>,  <5.018848, 3.143749, 3.784471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.781128, 2.900749, 3.573662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786430, -0.301817, -0.538921,
		0.168330, -0.734746, 0.657125,
		-0.594301, -0.607499, -0.527022,
		4.602838, 2.718500, 3.415555>
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
