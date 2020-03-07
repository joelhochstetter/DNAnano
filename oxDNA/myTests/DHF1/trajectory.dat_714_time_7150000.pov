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
	<3.007570, 3.751260, 3.055866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.288125, 3.650347, 2.789210>,  <3.456458, 3.589799, 2.629217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.288125, 3.650347, 2.789210>,  <3.007570, 3.751260, 3.055866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.288125, 3.650347, 2.789210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647700, -0.616021, -0.448334,
		-0.297558, 0.746239, -0.595472,
		0.701388, -0.252282, -0.666640,
		3.498541, 3.574662, 2.589218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.787405, 3.934753, 2.407554>,  <3.007570, 3.751260, 3.055866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.787405, 3.934753, 2.407554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.020679, 3.611658, 2.373013>,  <3.160643, 3.417801, 2.352288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.020679, 3.611658, 2.373013>,  <2.787405, 3.934753, 2.407554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.020679, 3.611658, 2.373013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798242, -0.550097, -0.245362,
		0.150685, 0.212023, -0.965578,
		0.583184, -0.807737, -0.086354,
		3.195634, 3.369337, 2.347106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.765506, 3.610156, 1.668252>,  <2.787405, 3.934753, 2.407554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.765506, 3.610156, 1.668252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804472, 3.371552, 1.986921>,  <2.827852, 3.228390, 2.178123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804472, 3.371552, 1.986921>,  <2.765506, 3.610156, 1.668252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804472, 3.371552, 1.986921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800673, -0.522420, -0.293257,
		0.591128, -0.609307, -0.528500,
		0.097415, -0.596508, 0.796673,
		2.833696, 3.192600, 2.225923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.651780, 2.934328, 1.410497>,  <2.765506, 3.610156, 1.668252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.651780, 2.934328, 1.410497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.546717, 2.985023, 1.793109>,  <2.483679, 3.015439, 2.022676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.546717, 2.985023, 1.793109>,  <2.651780, 2.934328, 1.410497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.546717, 2.985023, 1.793109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869945, -0.459925, -0.177943,
		0.417380, -0.878867, 0.231055,
		-0.262657, 0.126735, 0.956530,
		2.467920, 3.023043, 2.080068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.510038, 2.304957, 1.550416>,  <2.651780, 2.934328, 1.410497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.510038, 2.304957, 1.550416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.331481, 2.532739, 1.826519>,  <2.224347, 2.669407, 1.992182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.331481, 2.532739, 1.826519>,  <2.510038, 2.304957, 1.550416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.331481, 2.532739, 1.826519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875977, -0.435623, -0.207114,
		0.182752, -0.697105, 0.693286,
		-0.446392, 0.569453, 0.690259,
		2.197563, 2.703575, 2.033597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.120537, 1.818873, 2.011967>,  <2.510038, 2.304957, 1.550416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.120537, 1.818873, 2.011967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.947014, 2.174809, 2.068525>,  <1.842900, 2.388372, 2.102460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.947014, 2.174809, 2.068525>,  <2.120537, 1.818873, 2.011967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.947014, 2.174809, 2.068525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900950, -0.426655, -0.079088,
		-0.010049, -0.161699, 0.986789,
		-0.433806, 0.889842, 0.141396,
		1.816872, 2.441762, 2.110944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.667241, 1.710545, 2.489044>,  <2.120537, 1.818873, 2.011967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.667241, 1.710545, 2.489044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519915, 2.045000, 2.326456>,  <1.431519, 2.245673, 2.228904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519915, 2.045000, 2.326456>,  <1.667241, 1.710545, 2.489044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.519915, 2.045000, 2.326456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899308, -0.431296, -0.072315,
		-0.235773, 0.338906, 0.910798,
		-0.368316, 0.836138, -0.406469,
		1.409420, 2.295841, 2.204515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.072965, 1.838299, 2.835311>,  <1.667241, 1.710545, 2.489044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.072965, 1.838299, 2.835311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.054820, 2.016373, 2.477595>,  <1.043933, 2.123217, 2.262966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.054820, 2.016373, 2.477595>,  <1.072965, 1.838299, 2.835311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.054820, 2.016373, 2.477595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919490, -0.368536, -0.136819,
		-0.390488, 0.816083, 0.426061,
		-0.045363, 0.445185, -0.894289,
		1.041211, 2.149928, 2.209309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.119315, 1.445482, 1.775852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.082424, 1.706371, 1.474894>,  <0.060290, 1.862905, 1.294320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.082424, 1.706371, 1.474894>,  <0.119315, 1.445482, 1.775852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.082424, 1.706371, 1.474894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760814, 0.533630, 0.369326,
		0.642384, -0.538370, -0.545436,
		-0.092227, 0.652224, -0.752395,
		0.054756, 1.902038, 1.249176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.800330, 1.525787, 1.338116>,  <0.119315, 1.445482, 1.775852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.800330, 1.525787, 1.338116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567940, 1.850372, 1.363403>,  <0.428506, 2.045123, 1.378575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567940, 1.850372, 1.363403>,  <0.800330, 1.525787, 1.338116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.567940, 1.850372, 1.363403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734138, 0.488906, 0.471183,
		0.351440, 0.320155, -0.879767,
		-0.580975, 0.811463, 0.063217,
		0.393647, 2.093811, 1.382368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.002386, 2.171873, 1.000912>,  <0.800330, 1.525787, 1.338116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.002386, 2.171873, 1.000912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815693, 2.253433, 1.345141>,  <0.703677, 2.302370, 1.551678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815693, 2.253433, 1.345141>,  <1.002386, 2.171873, 1.000912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.815693, 2.253433, 1.345141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791113, 0.531239, 0.303192,
		-0.395348, 0.822319, -0.409256,
		-0.466734, 0.203901, 0.860572,
		0.675673, 2.314604, 1.603312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022937, 2.845993, 1.038777>,  <1.002386, 2.171873, 1.000912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022937, 2.845993, 1.038777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.013599, 2.661243, 1.393433>,  <1.007997, 2.550394, 1.606226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.013599, 2.661243, 1.393433>,  <1.022937, 2.845993, 1.038777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.013599, 2.661243, 1.393433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844711, 0.465243, 0.264598,
		-0.534713, 0.755130, 0.379289,
		-0.023345, -0.461874, 0.886638,
		1.006596, 2.522681, 1.659424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070552, 3.389967, 1.642496>,  <1.022937, 2.845993, 1.038777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070552, 3.389967, 1.642496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196472, 3.047958, 1.807341>,  <1.272024, 2.842753, 1.906247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196472, 3.047958, 1.807341>,  <1.070552, 3.389967, 1.642496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196472, 3.047958, 1.807341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817708, 0.464762, 0.339632,
		-0.481927, 0.230070, 0.845467,
		0.314801, -0.855023, 0.412112,
		1.290913, 2.791451, 1.930974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.220230, 3.559609, 2.341402>,  <1.070552, 3.389967, 1.642496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.220230, 3.559609, 2.341402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427479, 3.227592, 2.258862>,  <1.551828, 3.028383, 2.209338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427479, 3.227592, 2.258862>,  <1.220230, 3.559609, 2.341402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.427479, 3.227592, 2.258862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813290, 0.403431, 0.419288,
		-0.264779, -0.385064, 0.884091,
		0.518123, -0.830042, -0.206349,
		1.582916, 2.978580, 2.196957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.606153, 3.466277, 2.946129>,  <1.220230, 3.559609, 2.341402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.606153, 3.466277, 2.946129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.761997, 3.223730, 2.668851>,  <1.855504, 3.078202, 2.502484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.761997, 3.223730, 2.668851>,  <1.606153, 3.466277, 2.946129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.761997, 3.223730, 2.668851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914041, 0.162374, 0.371703,
		-0.112832, -0.778429, 0.617508,
		0.389612, -0.606368, -0.693196,
		1.878881, 3.041820, 2.460892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.079253, 3.066392, 3.277698>,  <1.606153, 3.466277, 2.946129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.079253, 3.066392, 3.277698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204819, 3.076801, 2.898060>,  <2.280158, 3.083047, 2.670277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204819, 3.076801, 2.898060>,  <2.079253, 3.066392, 3.277698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204819, 3.076801, 2.898060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934043, 0.170895, 0.313622,
		0.170339, -0.984947, 0.029393,
		0.313924, 0.025968, -0.949093,
		2.298993, 3.084609, 2.613332>
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
