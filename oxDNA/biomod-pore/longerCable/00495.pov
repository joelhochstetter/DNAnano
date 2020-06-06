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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.136360, 35.429489, 34.420063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150488, 35.194580, 34.743511>,  <24.158964, 35.053635, 34.937580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150488, 35.194580, 34.743511>,  <24.136360, 35.429489, 34.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150488, 35.194580, 34.743511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812920, -0.453755, -0.365058,
		0.581303, 0.670235, 0.461381,
		0.035320, -0.587275, 0.808616,
		24.161083, 35.018398, 34.986095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896152, 35.454308, 34.609608>,  <24.136360, 35.429489, 34.420063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896152, 35.454308, 34.609608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753654, 35.138084, 34.808849>,  <24.668156, 34.948349, 34.928394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753654, 35.138084, 34.808849>,  <24.896152, 35.454308, 34.609608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753654, 35.138084, 34.808849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786031, -0.541780, -0.297707,
		0.505219, 0.285470, 0.814408,
		-0.356244, -0.790557, 0.498106,
		24.646782, 34.900917, 34.958282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400681, 35.076851, 34.783985>,  <24.896152, 35.454308, 34.609608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400681, 35.076851, 34.783985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146332, 34.768196, 34.790272>,  <24.993723, 34.583004, 34.794044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146332, 34.768196, 34.790272>,  <25.400681, 35.076851, 34.783985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146332, 34.768196, 34.790272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756028, -0.626849, -0.188366,
		0.155203, -0.107894, 0.981973,
		-0.635872, -0.771634, 0.015718,
		24.955570, 34.536705, 34.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632151, 34.528496, 35.301662>,  <25.400681, 35.076851, 34.783985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632151, 34.528496, 35.301662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395746, 34.364883, 35.023556>,  <25.253902, 34.266716, 34.856689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395746, 34.364883, 35.023556>,  <25.632151, 34.528496, 35.301662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395746, 34.364883, 35.023556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687063, -0.706865, -0.168185,
		-0.422669, -0.577093, 0.698795,
		-0.591012, -0.409029, -0.695269,
		25.218443, 34.242176, 34.814976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577692, 33.726841, 35.470200>,  <25.632151, 34.528496, 35.301662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577692, 33.726841, 35.470200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540003, 33.819550, 35.082920>,  <25.517389, 33.875175, 34.850552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540003, 33.819550, 35.082920>,  <25.577692, 33.726841, 35.470200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540003, 33.819550, 35.082920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736360, -0.638275, -0.224451,
		-0.669997, -0.734090, -0.110524,
		-0.094222, 0.231767, -0.968197,
		25.511736, 33.889080, 34.792461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216803, 33.180241, 35.058861>,  <25.577692, 33.726841, 35.470200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216803, 33.180241, 35.058861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014597, 33.380650, 34.777882>,  <24.893272, 33.500893, 34.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014597, 33.380650, 34.777882>,  <25.216803, 33.180241, 35.058861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014597, 33.380650, 34.777882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705604, -0.228489, -0.670757,
		-0.496565, -0.834728, -0.238018,
		-0.505515, 0.501021, -0.702447,
		24.862942, 33.530956, 34.567146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124760, 32.716312, 34.500359>,  <25.216803, 33.180241, 35.058861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124760, 32.716312, 34.500359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060545, 33.087044, 34.364582>,  <25.022017, 33.309483, 34.283115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060545, 33.087044, 34.364582>,  <25.124760, 32.716312, 34.500359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060545, 33.087044, 34.364582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542299, -0.204522, -0.814912,
		-0.824705, -0.314904, -0.469783,
		-0.160538, 0.926826, -0.339442,
		25.012383, 33.365093, 34.262749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823975, 32.637012, 33.835693>,  <25.124760, 32.716312, 34.500359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823975, 32.637012, 33.835693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955294, 33.014198, 33.813637>,  <25.034084, 33.240509, 33.800404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955294, 33.014198, 33.813637>,  <24.823975, 32.637012, 33.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955294, 33.014198, 33.813637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585827, -0.249057, -0.771218,
		-0.740965, 0.220883, -0.634178,
		0.328295, 0.942964, -0.055144,
		25.053782, 33.297089, 33.797092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.574411, 32.937420, 33.266346>,  <24.823975, 32.637012, 33.835693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.574411, 32.937420, 33.266346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901062, 33.158554, 33.332668>,  <25.097054, 33.291237, 33.372459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901062, 33.158554, 33.332668>,  <24.574411, 32.937420, 33.266346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901062, 33.158554, 33.332668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364168, -0.270672, -0.891133,
		-0.447774, 0.788104, -0.422364,
		0.816628, 0.552838, 0.165802,
		25.146049, 33.324406, 33.382408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707174, 33.333691, 32.666325>,  <24.574411, 32.937420, 33.266346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707174, 33.333691, 32.666325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059097, 33.322670, 32.856136>,  <25.270252, 33.316055, 32.970024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059097, 33.322670, 32.856136>,  <24.707174, 33.333691, 32.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059097, 33.322670, 32.856136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453241, -0.252151, -0.854981,
		0.143211, 0.967296, -0.209356,
		0.879809, -0.027555, 0.474529,
		25.323040, 33.314404, 32.998493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252308, 33.899609, 32.412605>,  <24.707174, 33.333691, 32.666325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252308, 33.899609, 32.412605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429676, 33.571350, 32.556782>,  <25.536097, 33.374397, 32.643288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429676, 33.571350, 32.556782>,  <25.252308, 33.899609, 32.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429676, 33.571350, 32.556782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530106, -0.084156, -0.843745,
		0.722748, 0.565209, 0.397712,
		0.443422, -0.820644, 0.360444,
		25.562702, 33.325157, 32.664913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031145, 33.993103, 32.414719>,  <25.252308, 33.899609, 32.412605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031145, 33.993103, 32.414719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885036, 33.624043, 32.365250>,  <25.797371, 33.402607, 32.335567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885036, 33.624043, 32.365250>,  <26.031145, 33.993103, 32.414719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885036, 33.624043, 32.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334666, -0.006188, -0.942317,
		0.868663, -0.385589, 0.311040,
		-0.365271, -0.922650, -0.123668,
		25.775455, 33.347248, 32.328148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552341, 33.571114, 32.007416>,  <26.031145, 33.993103, 32.414719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552341, 33.571114, 32.007416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183361, 33.434231, 31.935881>,  <25.961973, 33.352100, 31.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183361, 33.434231, 31.935881>,  <26.552341, 33.571114, 32.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183361, 33.434231, 31.935881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193571, -0.009096, -0.981044,
		0.334090, -0.939582, 0.074631,
		-0.922449, -0.342204, -0.178837,
		25.906626, 33.331570, 31.882229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108641, 33.053608, 31.493275>,  <26.552341, 33.571114, 32.007416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108641, 33.053608, 31.493275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335730, 32.944187, 31.803850>,  <26.471983, 32.878532, 31.990196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335730, 32.944187, 31.803850>,  <26.108641, 33.053608, 31.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335730, 32.944187, 31.803850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598706, 0.510141, 0.617501,
		-0.565015, -0.815428, 0.125838,
		0.567722, -0.273557, 0.776439,
		26.506046, 32.862122, 32.036781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731081, 32.653225, 32.047749>,  <26.108641, 33.053608, 31.493275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731081, 32.653225, 32.047749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049030, 32.841797, 32.200554>,  <26.239799, 32.954941, 32.292236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049030, 32.841797, 32.200554>,  <25.731081, 32.653225, 32.047749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049030, 32.841797, 32.200554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584666, 0.426651, 0.690025,
		0.162311, -0.771832, 0.614761,
		0.794872, 0.471429, 0.382013,
		26.287491, 32.983227, 32.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916992, 32.460766, 32.729355>,  <25.731081, 32.653225, 32.047749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916992, 32.460766, 32.729355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023186, 32.838524, 32.651752>,  <26.086903, 33.065178, 32.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023186, 32.838524, 32.651752>,  <25.916992, 32.460766, 32.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023186, 32.838524, 32.651752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433350, 0.296643, 0.851005,
		0.861235, -0.141855, 0.488007,
		0.265483, 0.944394, -0.194007,
		26.102831, 33.121841, 32.593552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310236, 32.682545, 33.253853>,  <25.916992, 32.460766, 32.729355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310236, 32.682545, 33.253853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104656, 32.976044, 33.076103>,  <25.981308, 33.152145, 32.969452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104656, 32.976044, 33.076103>,  <26.310236, 32.682545, 33.253853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104656, 32.976044, 33.076103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534130, 0.131624, 0.835093,
		0.671240, 0.666547, 0.324270,
		-0.513947, 0.733750, -0.444374,
		25.950472, 33.196167, 32.942791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460117, 33.341164, 33.587971>,  <26.310236, 32.682545, 33.253853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460117, 33.341164, 33.587971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103817, 33.342930, 33.406181>,  <25.890038, 33.343990, 33.297108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103817, 33.342930, 33.406181>,  <26.460117, 33.341164, 33.587971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103817, 33.342930, 33.406181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441934, 0.225032, 0.868363,
		0.106109, 0.974341, -0.198493,
		-0.890750, 0.004420, -0.454473,
		25.836592, 33.344257, 33.269840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133776, 33.990391, 33.872650>,  <26.460117, 33.341164, 33.587971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133776, 33.990391, 33.872650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825304, 33.784958, 33.722176>,  <25.640221, 33.661697, 33.631889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825304, 33.784958, 33.722176>,  <26.133776, 33.990391, 33.872650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825304, 33.784958, 33.722176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585062, 0.338794, 0.736832,
		-0.250972, 0.788323, -0.561747,
		-0.771178, -0.513581, -0.376190,
		25.593950, 33.630882, 33.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615650, 34.486591, 33.740334>,  <26.133776, 33.990391, 33.872650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615650, 34.486591, 33.740334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460894, 34.120350, 33.784130>,  <25.368040, 33.900604, 33.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460894, 34.120350, 33.784130>,  <25.615650, 34.486591, 33.740334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460894, 34.120350, 33.784130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620907, 0.346456, 0.703166,
		-0.681754, 0.204066, -0.702545,
		-0.386893, -0.915601, 0.109492,
		25.344826, 33.845669, 33.816978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905180, 34.444851, 33.659042>,  <25.615650, 34.486591, 33.740334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905180, 34.444851, 33.659042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992550, 34.153343, 33.918640>,  <25.044971, 33.978439, 34.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992550, 34.153343, 33.918640>,  <24.905180, 34.444851, 33.659042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992550, 34.153343, 33.918640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700189, 0.346195, 0.624407,
		-0.679725, -0.590803, -0.434656,
		0.218426, -0.728767, 0.648991,
		25.058077, 33.934711, 34.113338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.280207, 34.082516, 33.852291>,  <24.905180, 34.444851, 33.659042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.280207, 34.082516, 33.852291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562519, 34.104736, 34.134789>,  <24.731907, 34.118069, 34.304287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562519, 34.104736, 34.134789>,  <24.280207, 34.082516, 33.852291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562519, 34.104736, 34.134789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676628, 0.348189, 0.648798,
		-0.209869, -0.935777, 0.283330,
		0.705783, 0.055547, 0.706247,
		24.774254, 34.121399, 34.346664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072721, 33.730927, 34.474983>,  <24.280207, 34.082516, 33.852291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072721, 33.730927, 34.474983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326839, 34.029530, 34.554104>,  <24.479309, 34.208691, 34.601578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326839, 34.029530, 34.554104>,  <24.072721, 33.730927, 34.474983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326839, 34.029530, 34.554104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638481, 0.363624, 0.678321,
		0.434446, -0.557229, 0.707639,
		0.635294, 0.746508, 0.197805,
		24.517427, 34.253483, 34.613445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.069559, 33.724907, 35.221073>,  <24.072721, 33.730927, 34.474983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.069559, 33.724907, 35.221073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222235, 34.079357, 35.115932>,  <24.313839, 34.292027, 35.052849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222235, 34.079357, 35.115932>,  <24.069559, 33.724907, 35.221073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222235, 34.079357, 35.115932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638478, 0.458398, 0.618236,
		0.668326, -0.068151, 0.740740,
		0.381687, 0.886130, -0.262847,
		24.336740, 34.345196, 35.037079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336998, 34.106354, 35.801052>,  <24.069559, 33.724907, 35.221073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336998, 34.106354, 35.801052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184031, 34.348316, 35.521667>,  <24.092251, 34.493492, 35.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184031, 34.348316, 35.521667>,  <24.336998, 34.106354, 35.801052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184031, 34.348316, 35.521667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649887, 0.361249, 0.668689,
		0.656813, 0.709638, 0.254973,
		-0.382419, 0.604907, -0.698458,
		24.069305, 34.529789, 35.312130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916748, 33.697102, 35.910679>,  <24.336998, 34.106354, 35.801052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916748, 33.697102, 35.910679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892559, 33.305332, 35.833668>,  <24.878046, 33.070271, 35.787460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892559, 33.305332, 35.833668>,  <24.916748, 33.697102, 35.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892559, 33.305332, 35.833668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968442, -0.104293, 0.226368,
		-0.241790, -0.172763, 0.954825,
		-0.060474, -0.979426, -0.192528,
		24.874416, 33.011505, 35.775909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083878, 33.128181, 36.433731>,  <24.916748, 33.697102, 35.910679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083878, 33.128181, 36.433731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174276, 33.001118, 36.065380>,  <25.228516, 32.924877, 35.844368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174276, 33.001118, 36.065380>,  <25.083878, 33.128181, 36.433731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174276, 33.001118, 36.065380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972303, 0.131408, 0.193285,
		0.059611, -0.939054, 0.338562,
		0.225995, -0.317663, -0.920878,
		25.242075, 32.905819, 35.789116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752869, 33.065243, 36.206524>,  <25.083878, 33.128181, 36.433731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752869, 33.065243, 36.206524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734911, 32.740032, 36.438721>,  <25.724136, 32.544907, 36.578037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734911, 32.740032, 36.438721>,  <25.752869, 33.065243, 36.206524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734911, 32.740032, 36.438721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997364, 0.003327, -0.072479,
		0.056996, -0.582213, -0.811036,
		-0.044896, -0.813030, 0.580489,
		25.721441, 32.496124, 36.612869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186218, 33.089890, 35.648026>,  <25.752869, 33.065243, 36.206524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186218, 33.089890, 35.648026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578646, 33.159904, 35.614891>,  <26.814102, 33.201912, 35.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578646, 33.159904, 35.614891>,  <26.186218, 33.089890, 35.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578646, 33.159904, 35.614891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181097, -0.677805, 0.712590,
		0.068583, -0.714103, -0.696673,
		0.981071, 0.175037, -0.082836,
		26.872967, 33.212414, 35.590038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553156, 32.364979, 35.543648>,  <26.186218, 33.089890, 35.648026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553156, 32.364979, 35.543648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775566, 32.633026, 35.740334>,  <26.909012, 32.793854, 35.858345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775566, 32.633026, 35.740334>,  <26.553156, 32.364979, 35.543648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775566, 32.633026, 35.740334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163780, -0.668332, 0.725609,
		0.814869, -0.322924, -0.481360,
		0.556025, 0.670114, 0.491715,
		26.942373, 32.834061, 35.887848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999079, 31.992651, 35.888103>,  <26.553156, 32.364979, 35.543648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999079, 31.992651, 35.888103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012709, 32.339787, 36.086376>,  <27.020887, 32.548069, 36.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012709, 32.339787, 36.086376>,  <26.999079, 31.992651, 35.888103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012709, 32.339787, 36.086376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171564, -0.493684, 0.852550,
		0.984584, 0.055991, -0.165711,
		0.034074, 0.867837, 0.495680,
		27.022930, 32.600136, 36.235081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497585, 31.872770, 36.375446>,  <26.999079, 31.992651, 35.888103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497585, 31.872770, 36.375446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340250, 32.216003, 36.507496>,  <27.245848, 32.421944, 36.586723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340250, 32.216003, 36.507496>,  <27.497585, 31.872770, 36.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340250, 32.216003, 36.507496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088299, -0.392662, 0.915434,
		0.915143, 0.330927, 0.230218,
		-0.393339, 0.858082, 0.330122,
		27.222248, 32.473427, 36.606533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848200, 31.987194, 36.981766>,  <27.497585, 31.872770, 36.375446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848200, 31.987194, 36.981766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544935, 32.243046, 37.032467>,  <27.362976, 32.396557, 37.062889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544935, 32.243046, 37.032467>,  <27.848200, 31.987194, 36.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544935, 32.243046, 37.032467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013449, -0.179011, 0.983755,
		0.651928, 0.747550, 0.127117,
		-0.758162, 0.639628, 0.126756,
		27.317486, 32.434933, 37.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065296, 32.544521, 37.410656>,  <27.848200, 31.987194, 36.981766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065296, 32.544521, 37.410656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672867, 32.474411, 37.443588>,  <27.437410, 32.432346, 37.463348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672867, 32.474411, 37.443588>,  <28.065296, 32.544521, 37.410656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672867, 32.474411, 37.443588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117421, -0.200377, 0.972657,
		-0.153983, 0.963913, 0.217165,
		-0.981072, -0.175273, 0.082329,
		27.378546, 32.421829, 37.468288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955814, 32.342049, 38.069595>,  <28.065296, 32.544521, 37.410656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955814, 32.342049, 38.069595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568367, 32.381626, 37.978386>,  <27.335899, 32.405373, 37.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568367, 32.381626, 37.978386>,  <27.955814, 32.342049, 38.069595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568367, 32.381626, 37.978386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238094, -0.105941, 0.965447,
		0.071365, 0.989438, 0.126174,
		-0.968617, 0.098940, -0.228019,
		27.277782, 32.411308, 37.909981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554712, 32.886116, 38.529797>,  <27.955814, 32.342049, 38.069595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554712, 32.886116, 38.529797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354036, 32.573032, 38.382462>,  <27.233631, 32.385181, 38.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354036, 32.573032, 38.382462>,  <27.554712, 32.886116, 38.529797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354036, 32.573032, 38.382462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004972, -0.423183, 0.906031,
		-0.865033, 0.456379, 0.208415,
		-0.501691, -0.782710, -0.368336,
		27.203529, 32.338219, 38.271961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292267, 32.572453, 39.106785>,  <27.554712, 32.886116, 38.529797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292267, 32.572453, 39.106785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191999, 32.302902, 38.828773>,  <27.131838, 32.141174, 38.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191999, 32.302902, 38.828773>,  <27.292267, 32.572453, 39.106785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191999, 32.302902, 38.828773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201900, -0.738552, 0.643255,
		-0.946784, 0.020919, 0.321188,
		-0.250670, -0.673872, -0.695026,
		27.116798, 32.100742, 38.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835566, 32.064919, 39.352074>,  <27.292267, 32.572453, 39.106785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835566, 32.064919, 39.352074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004286, 31.877371, 39.041656>,  <27.105518, 31.764841, 38.855404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004286, 31.877371, 39.041656>,  <26.835566, 32.064919, 39.352074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004286, 31.877371, 39.041656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301009, -0.734954, 0.607648,
		-0.855266, -0.489902, -0.168868,
		0.421798, -0.468870, -0.776046,
		27.130825, 31.736710, 38.808842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651686, 31.340014, 39.371082>,  <26.835566, 32.064919, 39.352074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651686, 31.340014, 39.371082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979431, 31.375277, 39.144501>,  <27.176079, 31.396435, 39.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979431, 31.375277, 39.144501>,  <26.651686, 31.340014, 39.371082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979431, 31.375277, 39.144501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402227, -0.792474, 0.458474,
		-0.408484, -0.603501, -0.684783,
		0.819362, 0.088160, -0.566457,
		27.225239, 31.401724, 38.974564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779377, 30.683027, 39.007519>,  <26.651686, 31.340014, 39.371082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779377, 30.683027, 39.007519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114618, 30.891720, 39.071239>,  <27.315763, 31.016935, 39.109470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114618, 30.891720, 39.071239>,  <26.779377, 30.683027, 39.007519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114618, 30.891720, 39.071239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463429, -0.835016, 0.296616,
		0.287774, -0.174770, -0.941616,
		0.838105, 0.521731, 0.159302,
		27.366051, 31.048239, 39.119030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035479, 30.170195, 38.388599>,  <26.779377, 30.683027, 39.007519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035479, 30.170195, 38.388599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784939, 30.039932, 38.105297>,  <26.634615, 29.961775, 37.935314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784939, 30.039932, 38.105297>,  <27.035479, 30.170195, 38.388599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784939, 30.039932, 38.105297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053163, -0.924290, 0.377971,
		-0.777726, 0.199089, 0.596243,
		-0.626351, -0.325656, -0.708260,
		26.597033, 29.942236, 37.892818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315344, 29.800257, 37.844021>,  <27.035479, 30.170195, 38.388599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315344, 29.800257, 37.844021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341045, 29.768551, 37.446110>,  <27.356466, 29.749527, 37.207363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341045, 29.768551, 37.446110>,  <27.315344, 29.800257, 37.844021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341045, 29.768551, 37.446110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855140, 0.509463, -0.095828,
		0.514400, 0.856834, -0.035049,
		0.064252, -0.079266, -0.994781,
		27.360321, 29.744772, 37.147675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235281, 30.446774, 37.569248>,  <27.315344, 29.800257, 37.844021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235281, 30.446774, 37.569248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125452, 30.152863, 37.321148>,  <27.059555, 29.976517, 37.172287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125452, 30.152863, 37.321148>,  <27.235281, 30.446774, 37.569248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125452, 30.152863, 37.321148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876324, 0.456734, -0.153138,
		0.395812, 0.501493, -0.769310,
		-0.274572, -0.734778, -0.620251,
		27.043081, 29.932430, 37.135071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213333, 31.132235, 37.709759>,  <27.235281, 30.446774, 37.569248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213333, 31.132235, 37.709759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207140, 31.424551, 37.982727>,  <27.203424, 31.599941, 38.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207140, 31.424551, 37.982727>,  <27.213333, 31.132235, 37.709759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207140, 31.424551, 37.982727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555154, 0.561360, -0.613742,
		-0.831604, -0.388353, 0.397011,
		-0.015483, 0.730792, 0.682425,
		27.202496, 31.643789, 38.187454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520569, 31.417658, 37.734119>,  <27.213333, 31.132235, 37.709759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520569, 31.417658, 37.734119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795719, 31.673670, 37.871052>,  <26.960810, 31.827276, 37.953213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795719, 31.673670, 37.871052>,  <26.520569, 31.417658, 37.734119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795719, 31.673670, 37.871052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258993, 0.657028, -0.707981,
		-0.678049, 0.398342, 0.617716,
		0.687875, 0.640030, 0.342330,
		27.002081, 31.865679, 37.973751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105824, 32.048393, 37.864826>,  <26.520569, 31.417658, 37.734119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105824, 32.048393, 37.864826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501812, 32.083752, 37.820755>,  <26.739405, 32.104965, 37.794312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501812, 32.083752, 37.820755>,  <26.105824, 32.048393, 37.864826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501812, 32.083752, 37.820755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140591, 0.692066, -0.708010,
		0.013669, 0.716402, 0.697554,
		0.989973, 0.088392, -0.110180,
		26.798803, 32.110268, 37.787701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199207, 32.717968, 37.707130>,  <26.105824, 32.048393, 37.864826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199207, 32.717968, 37.707130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576965, 32.621906, 37.617290>,  <26.803619, 32.564270, 37.563385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576965, 32.621906, 37.617290>,  <26.199207, 32.717968, 37.707130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576965, 32.621906, 37.617290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001937, 0.687111, -0.726550,
		0.328812, 0.685714, 0.649368,
		0.944393, -0.240156, -0.224602,
		26.860283, 32.549858, 37.549911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350338, 33.308819, 37.371571>,  <26.199207, 32.717968, 37.707130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350338, 33.308819, 37.371571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639734, 33.048100, 37.280602>,  <26.813372, 32.891666, 37.226021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639734, 33.048100, 37.280602>,  <26.350338, 33.308819, 37.371571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639734, 33.048100, 37.280602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159692, 0.478517, -0.863435,
		0.671611, 0.588369, 0.450289,
		0.723489, -0.651800, -0.227420,
		26.856781, 32.852558, 37.212376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898287, 33.649670, 37.078449>,  <26.350338, 33.308819, 37.371571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898287, 33.649670, 37.078449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989906, 33.291904, 36.924797>,  <27.044878, 33.077244, 36.832607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989906, 33.291904, 36.924797>,  <26.898287, 33.649670, 37.078449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989906, 33.291904, 36.924797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215576, 0.431432, -0.876010,
		0.949243, 0.117841, 0.291634,
		0.229050, -0.894416, -0.384131,
		27.058620, 33.023579, 36.809559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459862, 33.764111, 36.699886>,  <26.898287, 33.649670, 37.078449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459862, 33.764111, 36.699886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295393, 33.437771, 36.537239>,  <27.196712, 33.241966, 36.439651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295393, 33.437771, 36.537239>,  <27.459862, 33.764111, 36.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295393, 33.437771, 36.537239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227380, 0.340173, -0.912459,
		0.882744, -0.467632, 0.045638,
		-0.411170, -0.815845, -0.406616,
		27.172043, 33.193016, 36.415253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064722, 34.214039, 36.777821>,  <27.459862, 33.764111, 36.699886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064722, 34.214039, 36.777821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232607, 34.575954, 36.748978>,  <28.333338, 34.793102, 36.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232607, 34.575954, 36.748978>,  <28.064722, 34.214039, 36.777821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232607, 34.575954, 36.748978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905270, -0.423043, -0.038983,
		-0.065778, -0.048918, -0.996634,
		0.419713, 0.904788, -0.072111,
		28.358521, 34.847389, 36.727345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479975, 34.247627, 36.146244>,  <28.064722, 34.214039, 36.777821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479975, 34.247627, 36.146244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596563, 34.464272, 36.461636>,  <28.666515, 34.594257, 36.650871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596563, 34.464272, 36.461636>,  <28.479975, 34.247627, 36.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596563, 34.464272, 36.461636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888145, -0.459387, -0.012755,
		0.355309, 0.704000, -0.614930,
		0.291470, 0.541615, 0.788478,
		28.684004, 34.626755, 36.698177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090948, 34.712090, 35.961212>,  <28.479975, 34.247627, 36.146244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090948, 34.712090, 35.961212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090950, 34.595634, 36.343884>,  <29.090952, 34.525761, 36.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090950, 34.595634, 36.343884>,  <29.090948, 34.712090, 35.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090950, 34.595634, 36.343884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869109, -0.473194, -0.144006,
		0.494621, 0.831461, 0.253027,
		0.000005, -0.291136, 0.956682,
		29.090952, 34.508293, 36.630890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445150, 35.341621, 35.873165>,  <29.090948, 34.712090, 35.961212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445150, 35.341621, 35.873165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808462, 35.371174, 35.708450>,  <30.026449, 35.388905, 35.609623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808462, 35.371174, 35.708450>,  <29.445150, 35.341621, 35.873165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808462, 35.371174, 35.708450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404507, -0.096127, -0.909469,
		-0.106781, 0.992623, -0.057423,
		0.908279, 0.073886, -0.411788,
		30.080946, 35.393341, 35.584915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363176, 35.896309, 35.337708>,  <29.445150, 35.341621, 35.873165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363176, 35.896309, 35.337708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687780, 35.687248, 35.233173>,  <29.882542, 35.561813, 35.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687780, 35.687248, 35.233173>,  <29.363176, 35.896309, 35.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687780, 35.687248, 35.233173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271180, 0.059305, -0.960700,
		0.517605, 0.850484, -0.093605,
		0.811509, -0.522647, -0.261331,
		29.931232, 35.530453, 35.154774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705788, 36.223896, 34.879719>,  <29.363176, 35.896309, 35.337708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705788, 36.223896, 34.879719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778643, 35.837654, 34.805489>,  <29.822355, 35.605911, 34.760952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778643, 35.837654, 34.805489>,  <29.705788, 36.223896, 34.879719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778643, 35.837654, 34.805489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091083, 0.171353, -0.980990,
		0.979046, 0.195576, -0.056740,
		0.182135, -0.965602, -0.185576,
		29.833282, 35.547974, 34.749817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262756, 36.094212, 34.440742>,  <29.705788, 36.223896, 34.879719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262756, 36.094212, 34.440742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974947, 35.818134, 34.409954>,  <29.802261, 35.652489, 34.391479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974947, 35.818134, 34.409954>,  <30.262756, 36.094212, 34.440742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974947, 35.818134, 34.409954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115083, 0.227802, -0.966883,
		0.684867, -0.686836, -0.243338,
		-0.719523, -0.690190, -0.076971,
		29.759090, 35.611076, 34.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539465, 35.542282, 34.041431>,  <30.262756, 36.094212, 34.440742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539465, 35.542282, 34.041431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142492, 35.583675, 34.014996>,  <29.904308, 35.608513, 33.999134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142492, 35.583675, 34.014996>,  <30.539465, 35.542282, 34.041431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142492, 35.583675, 34.014996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063953, -0.023817, -0.997669,
		-0.104822, -0.994345, 0.017018,
		-0.992433, 0.103489, -0.066088,
		29.844763, 35.614719, 33.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339905, 35.238976, 33.407795>,  <30.539465, 35.542282, 34.041431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339905, 35.238976, 33.407795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008541, 35.441532, 33.503551>,  <29.809723, 35.563065, 33.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008541, 35.441532, 33.503551>,  <30.339905, 35.238976, 33.407795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008541, 35.441532, 33.503551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264597, 0.022903, -0.964087,
		-0.493689, -0.861999, 0.115017,
		-0.828407, 0.506393, 0.239390,
		29.760019, 35.593449, 33.575367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866896, 34.833221, 32.965958>,  <30.339905, 35.238976, 33.407795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866896, 34.833221, 32.965958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784094, 35.217060, 33.042194>,  <29.734413, 35.447365, 33.087936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784094, 35.217060, 33.042194>,  <29.866896, 34.833221, 32.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784094, 35.217060, 33.042194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131030, 0.165864, -0.977405,
		-0.969525, -0.227302, 0.091401,
		-0.207006, 0.959595, 0.190593,
		29.721992, 35.504940, 33.099373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191469, 34.992180, 32.723576>,  <29.866896, 34.833221, 32.965958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191469, 34.992180, 32.723576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434702, 35.309689, 32.728622>,  <29.580643, 35.500195, 32.731651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434702, 35.309689, 32.728622>,  <29.191469, 34.992180, 32.723576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434702, 35.309689, 32.728622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194758, 0.164571, -0.966947,
		-0.769613, 0.585526, 0.254666,
		0.608083, 0.793773, 0.012620,
		29.617126, 35.547821, 32.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818796, 35.660175, 32.450432>,  <29.191469, 34.992180, 32.723576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818796, 35.660175, 32.450432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215435, 35.704830, 32.424278>,  <29.453419, 35.731625, 32.408588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215435, 35.704830, 32.424278>,  <28.818796, 35.660175, 32.450432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215435, 35.704830, 32.424278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070913, 0.046311, -0.996407,
		-0.108209, 0.992669, 0.053838,
		0.991596, 0.111638, -0.065382,
		29.512915, 35.738323, 32.404663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794640, 36.126095, 31.902416>,  <28.818796, 35.660175, 32.450432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794640, 36.126095, 31.902416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139698, 35.927570, 31.941433>,  <29.346733, 35.808456, 31.964844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139698, 35.927570, 31.941433>,  <28.794640, 36.126095, 31.902416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139698, 35.927570, 31.941433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014995, -0.167666, -0.985730,
		0.505585, 0.851799, -0.137195,
		0.862646, -0.496313, 0.097542,
		29.398493, 35.778675, 31.970695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386950, 36.399433, 31.514067>,  <28.794640, 36.126095, 31.902416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386950, 36.399433, 31.514067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408466, 36.004108, 31.571127>,  <29.421377, 35.766914, 31.605364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408466, 36.004108, 31.571127>,  <29.386950, 36.399433, 31.514067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408466, 36.004108, 31.571127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196975, -0.129548, -0.971812,
		0.978932, 0.080375, 0.187704,
		0.053792, -0.988310, 0.142650,
		29.424604, 35.707615, 31.613922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940493, 36.089157, 31.252918>,  <29.386950, 36.399433, 31.514067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940493, 36.089157, 31.252918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711006, 35.763245, 31.286325>,  <29.573315, 35.567696, 31.306370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711006, 35.763245, 31.286325>,  <29.940493, 36.089157, 31.252918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711006, 35.763245, 31.286325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371999, -0.350059, -0.859695,
		0.729704, -0.462150, 0.503934,
		-0.573715, -0.814786, 0.083520,
		29.538893, 35.518810, 31.311382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357992, 35.474636, 30.953394>,  <29.940493, 36.089157, 31.252918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357992, 35.474636, 30.953394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958126, 35.483299, 30.947741>,  <29.718206, 35.488495, 30.944349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958126, 35.483299, 30.947741>,  <30.357992, 35.474636, 30.953394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958126, 35.483299, 30.947741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016228, 0.099838, -0.994871,
		-0.020135, -0.994768, -0.100156,
		-0.999665, 0.021658, -0.014133,
		29.658226, 35.489796, 30.943501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038687, 34.878937, 30.718037>,  <30.357992, 35.474636, 30.953394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038687, 34.878937, 30.718037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831842, 35.213207, 30.644026>,  <29.707735, 35.413769, 30.599619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831842, 35.213207, 30.644026>,  <30.038687, 34.878937, 30.718037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831842, 35.213207, 30.644026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068460, -0.175101, -0.982167,
		-0.853175, -0.520559, 0.033337,
		-0.517113, 0.835678, -0.185029,
		29.676708, 35.463909, 30.588516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760344, 34.740280, 30.134111>,  <30.038687, 34.878937, 30.718037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760344, 34.740280, 30.134111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 35.139183, 30.134769>,  <29.712984, 35.378525, 30.135164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 35.139183, 30.134769>,  <29.760344, 34.740280, 30.134111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730743, 35.139183, 30.134769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114488, -0.006857, -0.993401,
		-0.990665, -0.073699, 0.114682,
		-0.073999, 0.997257, 0.001644,
		29.708544, 35.438358, 30.135263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085863, 35.036263, 29.819885>,  <29.760344, 34.740280, 30.134111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085863, 35.036263, 29.819885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335030, 35.348480, 29.799004>,  <29.484529, 35.535812, 29.786474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335030, 35.348480, 29.799004>,  <29.085863, 35.036263, 29.819885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335030, 35.348480, 29.799004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198753, 0.093368, -0.975592,
		-0.756619, 0.618087, 0.213297,
		0.622916, 0.780545, -0.052203,
		29.521904, 35.582645, 29.783342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803043, 35.356537, 29.272936>,  <29.085863, 35.036263, 29.819885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803043, 35.356537, 29.272936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167694, 35.520287, 29.287617>,  <29.386484, 35.618538, 29.296425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167694, 35.520287, 29.287617>,  <28.803043, 35.356537, 29.272936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167694, 35.520287, 29.287617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075739, 0.255086, -0.963948,
		-0.403981, 0.875980, 0.263549,
		0.911627, 0.409377, 0.036704,
		29.441181, 35.643101, 29.298628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792351, 36.139000, 28.895935>,  <28.803043, 35.356537, 29.272936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792351, 36.139000, 28.895935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172411, 36.014969, 28.882881>,  <29.400448, 35.940548, 28.875048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172411, 36.014969, 28.882881>,  <28.792351, 36.139000, 28.895935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172411, 36.014969, 28.882881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041917, 0.230757, -0.972108,
		0.308963, 0.922281, 0.232251,
		0.950150, -0.310081, -0.032636,
		29.457457, 35.921944, 28.873091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178728, 36.689022, 28.661903>,  <28.792351, 36.139000, 28.895935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178728, 36.689022, 28.661903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418142, 36.379120, 28.580402>,  <29.561790, 36.193180, 28.531502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418142, 36.379120, 28.580402>,  <29.178728, 36.689022, 28.661903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418142, 36.379120, 28.580402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083671, 0.192494, -0.977725,
		0.796715, 0.602250, 0.050390,
		0.598535, -0.774752, -0.203754,
		29.597702, 36.146694, 28.519276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771698, 36.962631, 28.407215>,  <29.178728, 36.689022, 28.661903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771698, 36.962631, 28.407215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786255, 36.594887, 28.250525>,  <29.794989, 36.374241, 28.156511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786255, 36.594887, 28.250525>,  <29.771698, 36.962631, 28.407215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786255, 36.594887, 28.250525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073493, 0.393385, -0.916432,
		0.996632, 0.004561, 0.081883,
		0.036391, -0.919363, -0.391725,
		29.797173, 36.319077, 28.133007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123289, 37.035515, 27.904287>,  <29.771698, 36.962631, 28.407215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123289, 37.035515, 27.904287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955086, 36.689014, 27.796377>,  <29.854164, 36.481113, 27.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955086, 36.689014, 27.796377>,  <30.123289, 37.035515, 27.904287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955086, 36.689014, 27.796377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005002, 0.299550, -0.954067,
		0.907275, -0.399844, -0.130297,
		-0.420508, -0.866253, -0.269774,
		29.828934, 36.429138, 27.715445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542645, 36.825314, 27.320688>,  <30.123289, 37.035515, 27.904287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542645, 36.825314, 27.320688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201363, 36.616936, 27.310425>,  <29.996593, 36.491909, 27.304266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201363, 36.616936, 27.310425>,  <30.542645, 36.825314, 27.320688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201363, 36.616936, 27.310425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101756, 0.214500, -0.971409,
		0.511556, -0.826198, -0.236022,
		-0.853203, -0.520947, -0.025658,
		29.945402, 36.460651, 27.302727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588842, 36.353603, 26.805309>,  <30.542645, 36.825314, 27.320688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588842, 36.353603, 26.805309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196497, 36.396202, 26.870506>,  <29.961090, 36.421761, 26.909624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196497, 36.396202, 26.870506>,  <30.588842, 36.353603, 26.805309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196497, 36.396202, 26.870506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141450, 0.185475, -0.972415,
		-0.133794, -0.976861, -0.166861,
		-0.980862, 0.106501, 0.162992,
		29.902239, 36.428154, 26.919403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216990, 36.144741, 26.257019>,  <30.588842, 36.353603, 26.805309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216990, 36.144741, 26.257019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921959, 36.364231, 26.414440>,  <29.744940, 36.495926, 26.508894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921959, 36.364231, 26.414440>,  <30.216990, 36.144741, 26.257019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921959, 36.364231, 26.414440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245660, 0.324835, -0.913309,
		-0.628993, -0.770316, -0.104791,
		-0.737576, 0.548722, 0.393555,
		29.700686, 36.528847, 26.532507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669966, 36.051670, 25.795681>,  <30.216990, 36.144741, 26.257019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669966, 36.051670, 25.795681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570618, 36.381172, 25.999537>,  <29.511009, 36.578873, 26.121849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570618, 36.381172, 25.999537>,  <29.669966, 36.051670, 25.795681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570618, 36.381172, 25.999537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288902, 0.439186, -0.850677,
		-0.924580, -0.358520, 0.128904,
		-0.248372, 0.823759, 0.509639,
		29.496105, 36.628300, 26.152428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001322, 36.263042, 25.451181>,  <29.669966, 36.051670, 25.795681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001322, 36.263042, 25.451181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118071, 36.596954, 25.637920>,  <29.188120, 36.797302, 25.749964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118071, 36.596954, 25.637920>,  <29.001322, 36.263042, 25.451181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118071, 36.596954, 25.637920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523556, 0.547924, -0.652432,
		-0.800437, -0.053994, 0.596980,
		0.291872, 0.834784, 0.466848,
		29.205633, 36.847389, 25.777975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326426, 36.686031, 25.394053>,  <29.001322, 36.263042, 25.451181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326426, 36.686031, 25.394053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622910, 36.931808, 25.502176>,  <28.800800, 37.079277, 25.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622910, 36.931808, 25.502176>,  <28.326426, 36.686031, 25.394053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622910, 36.931808, 25.502176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346673, 0.695207, -0.629686,
		-0.574829, 0.373019, 0.728305,
		0.741208, 0.614446, 0.270310,
		28.845272, 37.116142, 25.583269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060452, 37.301678, 25.184868>,  <28.326426, 36.686031, 25.394053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060452, 37.301678, 25.184868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444004, 37.402863, 25.236336>,  <28.674135, 37.463573, 25.267216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444004, 37.402863, 25.236336>,  <28.060452, 37.301678, 25.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444004, 37.402863, 25.236336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048050, 0.591523, -0.804855,
		-0.279709, 0.765578, 0.579355,
		0.958882, 0.252963, 0.128669,
		28.731668, 37.478752, 25.274937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132654, 37.975464, 25.287178>,  <28.060452, 37.301678, 25.184868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132654, 37.975464, 25.287178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493189, 37.872742, 25.147669>,  <28.709511, 37.811108, 25.063963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493189, 37.872742, 25.147669>,  <28.132654, 37.975464, 25.287178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493189, 37.872742, 25.147669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116044, 0.632638, -0.765704,
		0.417281, 0.730632, 0.540420,
		0.901338, -0.256802, -0.348773,
		28.763590, 37.795700, 25.043037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523499, 38.592308, 25.091547>,  <28.132654, 37.975464, 25.287178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523499, 38.592308, 25.091547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684311, 38.286957, 24.889309>,  <28.780798, 38.103748, 24.767965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684311, 38.286957, 24.889309>,  <28.523499, 38.592308, 25.091547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684311, 38.286957, 24.889309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191455, 0.469895, -0.861710,
		0.895386, 0.443232, 0.042759,
		0.402030, -0.763376, -0.505597,
		28.804920, 38.057945, 24.737629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898052, 38.933601, 24.485842>,  <28.523499, 38.592308, 25.091547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898052, 38.933601, 24.485842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825972, 38.552147, 24.389418>,  <28.782724, 38.323277, 24.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825972, 38.552147, 24.389418>,  <28.898052, 38.933601, 24.485842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825972, 38.552147, 24.389418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276132, 0.284263, -0.918121,
		0.944076, -0.098880, -0.314553,
		-0.180200, -0.953634, -0.241062,
		28.771912, 38.266056, 24.317099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180222, 38.931580, 23.902929>,  <28.898052, 38.933601, 24.485842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180222, 38.931580, 23.902929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895107, 38.651913, 23.925192>,  <28.724039, 38.484112, 23.938549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895107, 38.651913, 23.925192>,  <29.180222, 38.931580, 23.902929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895107, 38.651913, 23.925192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380133, 0.318408, -0.868398,
		0.589435, -0.640140, -0.492734,
		-0.712787, -0.699169, 0.055658,
		28.681271, 38.442162, 23.941889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151295, 38.702286, 23.240944>,  <29.180222, 38.931580, 23.902929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151295, 38.702286, 23.240944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814676, 38.578228, 23.417854>,  <28.612705, 38.503792, 23.524000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814676, 38.578228, 23.417854>,  <29.151295, 38.702286, 23.240944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814676, 38.578228, 23.417854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525186, 0.278161, -0.804242,
		0.126408, -0.909085, -0.396970,
		-0.841546, -0.310146, 0.442277,
		28.562212, 38.485184, 23.550537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808378, 38.245033, 22.722830>,  <29.151295, 38.702286, 23.240944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808378, 38.245033, 22.722830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517616, 38.358570, 22.972963>,  <28.343159, 38.426693, 23.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517616, 38.358570, 22.972963>,  <28.808378, 38.245033, 22.722830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517616, 38.358570, 22.972963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579002, 0.236332, -0.780323,
		-0.369278, -0.929289, -0.007443,
		-0.726905, 0.283847, 0.625332,
		28.299545, 38.443726, 23.160563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300346, 37.983719, 22.380816>,  <28.808378, 38.245033, 22.722830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300346, 37.983719, 22.380816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146498, 38.268444, 22.615896>,  <28.054188, 38.439278, 22.756945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146498, 38.268444, 22.615896>,  <28.300346, 37.983719, 22.380816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146498, 38.268444, 22.615896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598545, 0.292370, -0.745831,
		-0.702715, -0.638630, 0.313598,
		-0.384623, 0.711809, 0.587701,
		28.031111, 38.481987, 22.792206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542322, 37.984730, 22.262352>,  <28.300346, 37.983719, 22.380816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542322, 37.984730, 22.262352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652130, 38.330261, 22.431320>,  <27.718014, 38.537579, 22.532701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652130, 38.330261, 22.431320>,  <27.542322, 37.984730, 22.262352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652130, 38.330261, 22.431320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513148, 0.503122, -0.695376,
		-0.813215, -0.025871, 0.581388,
		0.274519, 0.863828, 0.422422,
		27.734486, 38.589409, 22.558046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996712, 38.454201, 22.201630>,  <27.542322, 37.984730, 22.262352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996712, 38.454201, 22.201630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314621, 38.688972, 22.263407>,  <27.505367, 38.829834, 22.300472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314621, 38.688972, 22.263407>,  <26.996712, 38.454201, 22.201630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314621, 38.688972, 22.263407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424946, 0.719851, -0.548849,
		-0.433311, 0.370580, 0.821530,
		0.794772, 0.586928, 0.154443,
		27.553053, 38.865051, 22.309740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675087, 39.133968, 22.373396>,  <26.996712, 38.454201, 22.201630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675087, 39.133968, 22.373396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051138, 39.220974, 22.268442>,  <27.276770, 39.273178, 22.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051138, 39.220974, 22.268442>,  <26.675087, 39.133968, 22.373396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051138, 39.220974, 22.268442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337210, 0.705410, -0.623447,
		0.049477, 0.674598, 0.736525,
		0.940129, 0.217517, -0.262383,
		27.333176, 39.286228, 22.189728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685862, 39.892410, 22.280285>,  <26.675087, 39.133968, 22.373396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685862, 39.892410, 22.280285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010675, 39.759075, 22.088667>,  <27.205564, 39.679073, 21.973696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010675, 39.759075, 22.088667>,  <26.685862, 39.892410, 22.280285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010675, 39.759075, 22.088667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173601, 0.645708, -0.743589,
		0.557190, 0.686983, 0.466469,
		0.812036, -0.333341, -0.479043,
		27.254286, 39.659073, 21.944954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904461, 40.508930, 22.120239>,  <26.685862, 39.892410, 22.280285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904461, 40.508930, 22.120239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110926, 40.261269, 21.883520>,  <27.234804, 40.112671, 21.741489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110926, 40.261269, 21.883520>,  <26.904461, 40.508930, 22.120239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110926, 40.261269, 21.883520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123716, 0.737607, -0.663800,
		0.847510, 0.269413, 0.457323,
		0.516161, -0.619155, -0.591798,
		27.265774, 40.075523, 21.705980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471024, 40.929276, 21.938822>,  <26.904461, 40.508930, 22.120239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471024, 40.929276, 21.938822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418203, 40.636696, 21.671228>,  <27.386511, 40.461147, 21.510672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418203, 40.636696, 21.671228>,  <27.471024, 40.929276, 21.938822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418203, 40.636696, 21.671228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188894, 0.681097, -0.707408,
		0.973078, 0.032953, -0.228106,
		-0.132051, -0.731451, -0.668986,
		27.378588, 40.417259, 21.470533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780464, 41.196602, 21.241905>,  <27.471024, 40.929276, 21.938822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780464, 41.196602, 21.241905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525686, 40.907608, 21.134335>,  <27.372820, 40.734211, 21.069792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525686, 40.907608, 21.134335>,  <27.780464, 41.196602, 21.241905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525686, 40.907608, 21.134335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143500, 0.453865, -0.879440,
		0.757436, -0.521563, -0.392763,
		-0.636944, -0.722481, -0.268929,
		27.334602, 40.690865, 21.053656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006676, 40.927967, 20.506952>,  <27.780464, 41.196602, 21.241905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006676, 40.927967, 20.506952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620897, 40.829391, 20.545130>,  <27.389429, 40.770248, 20.568035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620897, 40.829391, 20.545130>,  <28.006676, 40.927967, 20.506952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620897, 40.829391, 20.545130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188055, 0.386237, -0.903026,
		0.185675, -0.888870, -0.418849,
		-0.964448, -0.246436, 0.095442,
		27.331562, 40.755459, 20.573763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854046, 40.560200, 19.971994>,  <28.006676, 40.927967, 20.506952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854046, 40.560200, 19.971994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484108, 40.686802, 20.056360>,  <27.262144, 40.762764, 20.106979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484108, 40.686802, 20.056360>,  <27.854046, 40.560200, 19.971994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484108, 40.686802, 20.056360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119489, 0.284681, -0.951146,
		-0.361086, -0.904865, -0.225468,
		-0.924845, 0.316504, 0.210916,
		27.206654, 40.781754, 20.119635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457994, 40.459656, 19.366302>,  <27.854046, 40.560200, 19.971994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457994, 40.459656, 19.366302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226803, 40.715706, 19.568758>,  <27.088087, 40.869335, 19.690231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226803, 40.715706, 19.568758>,  <27.457994, 40.459656, 19.366302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226803, 40.715706, 19.568758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247723, 0.453334, -0.856225,
		-0.777542, -0.620264, -0.103444,
		-0.577980, 0.640126, 0.506140,
		27.053410, 40.907745, 19.720600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939739, 40.385563, 18.885401>,  <27.457994, 40.459656, 19.366302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939739, 40.385563, 18.885401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868887, 40.717907, 19.096416>,  <26.826376, 40.917313, 19.223026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868887, 40.717907, 19.096416>,  <26.939739, 40.385563, 18.885401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868887, 40.717907, 19.096416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254696, 0.479057, -0.840020,
		-0.950660, -0.283155, 0.126761,
		-0.177130, 0.830860, 0.527539,
		26.815748, 40.967163, 19.254679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383596, 40.702953, 18.654194>,  <26.939739, 40.385563, 18.885401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383596, 40.702953, 18.654194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602497, 40.993290, 18.820892>,  <26.733837, 41.167492, 18.920912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602497, 40.993290, 18.820892>,  <26.383596, 40.702953, 18.654194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602497, 40.993290, 18.820892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010933, 0.504077, -0.863589,
		-0.836898, 0.468042, 0.283792,
		0.547249, 0.725839, 0.416744,
		26.766672, 41.211040, 18.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076105, 41.349628, 18.425360>,  <26.383596, 40.702953, 18.654194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076105, 41.349628, 18.425360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444239, 41.465420, 18.530575>,  <26.665119, 41.534893, 18.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444239, 41.465420, 18.530575>,  <26.076105, 41.349628, 18.425360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444239, 41.465420, 18.530575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024760, 0.628033, -0.777793,
		-0.390350, 0.722342, 0.570832,
		0.920333, 0.289478, 0.263038,
		26.720339, 41.552261, 18.609486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017742, 41.972759, 18.623995>,  <26.076105, 41.349628, 18.425360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017742, 41.972759, 18.623995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397558, 41.924004, 18.508400>,  <26.625448, 41.894749, 18.439043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397558, 41.924004, 18.508400>,  <26.017742, 41.972759, 18.623995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397558, 41.924004, 18.508400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110807, 0.731599, -0.672670,
		0.293415, 0.670750, 0.681177,
		0.949542, -0.121892, -0.288986,
		26.682421, 41.887436, 18.421703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420591, 42.682053, 18.687479>,  <26.017742, 41.972759, 18.623995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420591, 42.682053, 18.687479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628193, 42.461964, 18.425825>,  <26.752754, 42.329910, 18.268833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628193, 42.461964, 18.425825>,  <26.420591, 42.682053, 18.687479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628193, 42.461964, 18.425825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032377, 0.752072, -0.658285,
		0.854158, 0.362831, 0.372514,
		0.519004, -0.550219, -0.654136,
		26.783894, 42.296898, 18.229584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107075, 43.046375, 18.533737>,  <26.420591, 42.682053, 18.687479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107075, 43.046375, 18.533737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096952, 42.792252, 18.225000>,  <27.090879, 42.639778, 18.039759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096952, 42.792252, 18.225000>,  <27.107075, 43.046375, 18.533737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096952, 42.792252, 18.225000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449003, 0.682603, -0.576583,
		0.893172, -0.361150, 0.267984,
		-0.025307, -0.635313, -0.771840,
		27.089361, 42.601658, 17.993448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783207, 42.873493, 18.228970>,  <27.107075, 43.046375, 18.533737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783207, 42.873493, 18.228970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516012, 42.810402, 17.938065>,  <27.355696, 42.772545, 17.763521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516012, 42.810402, 17.938065>,  <27.783207, 42.873493, 18.228970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516012, 42.810402, 17.938065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359223, 0.787536, -0.500746,
		0.651730, -0.595742, -0.469403,
		-0.667987, -0.157731, -0.727265,
		27.315617, 42.763084, 17.719885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117434, 43.135330, 17.583921>,  <27.783207, 42.873493, 18.228970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117434, 43.135330, 17.583921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748022, 43.072632, 17.443907>,  <27.526375, 43.035011, 17.359898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748022, 43.072632, 17.443907>,  <28.117434, 43.135330, 17.583921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748022, 43.072632, 17.443907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092818, 0.794197, -0.600530,
		0.372127, -0.587096, -0.718915,
		-0.923529, -0.156745, -0.350036,
		27.470963, 43.025608, 17.338896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068960, 42.930328, 16.835951>,  <28.117434, 43.135330, 17.583921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068960, 42.930328, 16.835951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716373, 43.094967, 16.928560>,  <27.504822, 43.193752, 16.984125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716373, 43.094967, 16.928560>,  <28.068960, 42.930328, 16.835951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716373, 43.094967, 16.928560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284932, 0.854504, -0.434323,
		-0.376604, -0.316873, -0.870495,
		-0.881466, 0.411600, 0.231523,
		27.451933, 43.218449, 16.998016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823099, 43.232391, 16.202204>,  <28.068960, 42.930328, 16.835951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823099, 43.232391, 16.202204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608608, 43.411499, 16.488411>,  <27.479914, 43.518963, 16.660135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608608, 43.411499, 16.488411>,  <27.823099, 43.232391, 16.202204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608608, 43.411499, 16.488411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054790, 0.864372, -0.499859,
		-0.842295, -0.228834, -0.488031,
		-0.536225, 0.447768, 0.715518,
		27.447741, 43.545830, 16.703066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381050, 43.661568, 15.820295>,  <27.823099, 43.232391, 16.202204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381050, 43.661568, 15.820295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372904, 43.811054, 16.191223>,  <27.368015, 43.900745, 16.413780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372904, 43.811054, 16.191223>,  <27.381050, 43.661568, 15.820295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372904, 43.811054, 16.191223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174933, 0.914536, -0.364723,
		-0.984370, 0.154791, -0.084001,
		-0.020366, 0.373717, 0.927319,
		27.366795, 43.923168, 16.469419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950279, 44.220989, 15.807642>,  <27.381050, 43.661568, 15.820295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950279, 44.220989, 15.807642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201971, 44.263115, 16.115664>,  <27.352985, 44.288391, 16.300476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201971, 44.263115, 16.115664>,  <26.950279, 44.220989, 15.807642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201971, 44.263115, 16.115664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336004, 0.856547, -0.391700,
		-0.700838, 0.505209, 0.503577,
		0.629227, 0.105315, 0.770053,
		27.390739, 44.294708, 16.346680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927353, 44.828541, 16.214375>,  <26.950279, 44.220989, 15.807642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927353, 44.828541, 16.214375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308832, 44.709137, 16.199688>,  <27.537720, 44.637493, 16.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308832, 44.709137, 16.199688>,  <26.927353, 44.828541, 16.214375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308832, 44.709137, 16.199688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218472, 0.771484, -0.597564,
		0.206704, 0.561875, 0.800980,
		0.953700, -0.298511, -0.036715,
		27.594942, 44.619583, 16.188673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181570, 45.131077, 15.468434>,  <26.927353, 44.828541, 16.214375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181570, 45.131077, 15.468434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821098, 45.304451, 15.469159>,  <26.604815, 45.408478, 15.469594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821098, 45.304451, 15.469159>,  <27.181570, 45.131077, 15.468434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821098, 45.304451, 15.469159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426820, 0.888129, -0.170448,
		-0.075489, -0.152831, -0.985365,
		-0.901181, 0.433440, 0.001813,
		26.550745, 45.434483, 15.469703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871893, 45.338634, 14.808502>,  <27.181570, 45.131077, 15.468434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871893, 45.338634, 14.808502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819731, 45.570736, 15.130073>,  <26.788433, 45.709999, 15.323014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819731, 45.570736, 15.130073>,  <26.871893, 45.338634, 14.808502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819731, 45.570736, 15.130073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646478, 0.664534, -0.374781,
		-0.751705, 0.470846, -0.461783,
		-0.130406, 0.580257, 0.803925,
		26.780609, 45.744812, 15.371250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336710, 45.971073, 14.683865>,  <26.871893, 45.338634, 14.808502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336710, 45.971073, 14.683865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178097, 46.058918, 15.040410>,  <27.082928, 46.111626, 15.254337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178097, 46.058918, 15.040410>,  <27.336710, 45.971073, 14.683865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178097, 46.058918, 15.040410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754787, 0.630679, 0.180389,
		-0.522549, 0.744321, -0.415848,
		-0.396534, 0.219614, 0.891364,
		27.059137, 46.124802, 15.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895901, 46.444447, 14.920040>,  <27.336710, 45.971073, 14.683865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895901, 46.444447, 14.920040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866047, 46.819942, 15.054625>,  <27.848135, 47.045238, 15.135375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866047, 46.819942, 15.054625>,  <27.895901, 46.444447, 14.920040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866047, 46.819942, 15.054625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878102, -0.221772, 0.423973,
		0.472616, -0.263804, 0.840858,
		-0.074633, 0.938736, 0.336460,
		27.843657, 47.101562, 15.155562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712864, 46.416946, 15.577224>,  <27.895901, 46.444447, 14.920040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712864, 46.416946, 15.577224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597502, 46.765987, 15.419546>,  <27.528284, 46.975410, 15.324940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597502, 46.765987, 15.419546>,  <27.712864, 46.416946, 15.577224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597502, 46.765987, 15.419546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922501, -0.142919, 0.358561,
		0.256543, 0.467056, 0.846194,
		-0.288405, 0.872601, -0.394195,
		27.510981, 47.027767, 15.301288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489342, 46.393620, 16.326902>,  <27.712864, 46.416946, 15.577224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489342, 46.393620, 16.326902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462624, 46.738087, 16.125340>,  <27.446592, 46.944767, 16.004402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462624, 46.738087, 16.125340>,  <27.489342, 46.393620, 16.326902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462624, 46.738087, 16.125340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329555, 0.457651, 0.825802,
		0.941771, 0.221225, 0.253234,
		-0.066796, 0.861171, -0.503908,
		27.442585, 46.996437, 15.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897266, 46.876537, 16.655979>,  <27.489342, 46.393620, 16.326902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897266, 46.876537, 16.655979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567415, 47.017342, 16.478855>,  <27.369505, 47.101826, 16.372581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567415, 47.017342, 16.478855>,  <27.897266, 46.876537, 16.655979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567415, 47.017342, 16.478855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264526, 0.451966, 0.851911,
		0.500018, 0.819643, -0.279586,
		-0.824626, 0.352013, -0.442808,
		27.320028, 47.122944, 16.346012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780497, 46.388599, 17.161139>,  <27.897266, 46.876537, 16.655979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780497, 46.388599, 17.161139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539785, 46.706448, 17.129057>,  <27.395359, 46.897156, 17.109808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539785, 46.706448, 17.129057>,  <27.780497, 46.388599, 17.161139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539785, 46.706448, 17.129057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692629, -0.469247, 0.547788,
		0.397650, 0.385200, 0.832764,
		-0.601780, 0.794624, -0.080204,
		27.359251, 46.944836, 17.104996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822355, 46.813648, 17.720407>,  <27.780497, 46.388599, 17.161139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822355, 46.813648, 17.720407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458015, 46.836769, 17.556938>,  <27.239412, 46.850639, 17.458857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458015, 46.836769, 17.556938>,  <27.822355, 46.813648, 17.720407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458015, 46.836769, 17.556938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386118, -0.469172, 0.794223,
		-0.145833, 0.881214, 0.449661,
		-0.910849, 0.057798, -0.408673,
		27.184761, 46.854107, 17.434336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156500, 47.200043, 18.109961>,  <27.822355, 46.813648, 17.720407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156500, 47.200043, 18.109961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047998, 46.900620, 17.867943>,  <26.982899, 46.720966, 17.722733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047998, 46.900620, 17.867943>,  <27.156500, 47.200043, 18.109961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047998, 46.900620, 17.867943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268206, -0.544928, 0.794430,
		-0.924385, 0.377767, -0.052957,
		-0.271252, -0.748562, -0.605043,
		26.966623, 46.676052, 17.686430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436941, 46.871815, 18.173952>,  <27.156500, 47.200043, 18.109961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436941, 46.871815, 18.173952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736895, 46.627209, 18.072971>,  <26.916866, 46.480446, 18.012383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736895, 46.627209, 18.072971>,  <26.436941, 46.871815, 18.173952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736895, 46.627209, 18.072971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009683, -0.391700, 0.920042,
		-0.661501, -0.687478, -0.299650,
		0.749881, -0.611510, -0.252452,
		26.961859, 46.443756, 17.997236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258795, 46.029083, 18.226202>,  <26.436941, 46.871815, 18.173952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258795, 46.029083, 18.226202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654858, 46.068363, 18.266087>,  <26.892496, 46.091930, 18.290018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654858, 46.068363, 18.266087>,  <26.258795, 46.029083, 18.226202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654858, 46.068363, 18.266087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023236, -0.587251, 0.809071,
		0.138007, -0.803426, -0.579190,
		0.990159, 0.098199, 0.099713,
		26.951904, 46.097824, 18.296001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527836, 45.327824, 18.457668>,  <26.258795, 46.029083, 18.226202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527836, 45.327824, 18.457668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862673, 45.534218, 18.530375>,  <27.063576, 45.658054, 18.573999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862673, 45.534218, 18.530375>,  <26.527836, 45.327824, 18.457668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862673, 45.534218, 18.530375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309914, -0.721078, 0.619677,
		0.450811, -0.462395, -0.763519,
		0.837092, 0.515983, 0.181767,
		27.113800, 45.689014, 18.584904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158669, 44.799644, 18.543249>,  <26.527836, 45.327824, 18.457668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158669, 44.799644, 18.543249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248411, 45.148399, 18.717363>,  <27.302258, 45.357651, 18.821833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248411, 45.148399, 18.717363>,  <27.158669, 44.799644, 18.543249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248411, 45.148399, 18.717363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480551, -0.487574, 0.728932,
		0.847782, 0.045635, -0.528378,
		0.224358, 0.871889, 0.435286,
		27.315718, 45.409966, 18.847950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707499, 44.668499, 18.844715>,  <27.158669, 44.799644, 18.543249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707499, 44.668499, 18.844715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592545, 45.007278, 19.023640>,  <27.523571, 45.210545, 19.130995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592545, 45.007278, 19.023640>,  <27.707499, 44.668499, 18.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592545, 45.007278, 19.023640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450212, -0.292759, 0.843565,
		0.845410, 0.443815, -0.297172,
		-0.287387, 0.846948, 0.447312,
		27.506329, 45.261364, 19.157833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283415, 44.959652, 19.240622>,  <27.707499, 44.668499, 18.844715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283415, 44.959652, 19.240622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958599, 45.128929, 19.401369>,  <27.763710, 45.230495, 19.497818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958599, 45.128929, 19.401369>,  <28.283415, 44.959652, 19.240622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958599, 45.128929, 19.401369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298985, -0.289704, 0.909219,
		0.501199, 0.858475, 0.108723,
		-0.812039, 0.423193, 0.401871,
		27.714987, 45.255886, 19.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620987, 45.311398, 19.808577>,  <28.283415, 44.959652, 19.240622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620987, 45.311398, 19.808577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224255, 45.308163, 19.859495>,  <27.986216, 45.306221, 19.890047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224255, 45.308163, 19.859495>,  <28.620987, 45.311398, 19.808577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224255, 45.308163, 19.859495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126207, -0.206738, 0.970222,
		0.018474, 0.978363, 0.206069,
		-0.991832, -0.008084, 0.127296,
		27.926704, 45.305737, 19.897684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572500, 45.567028, 20.530554>,  <28.620987, 45.311398, 19.808577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572500, 45.567028, 20.530554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229532, 45.377609, 20.449976>,  <28.023752, 45.263958, 20.401630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229532, 45.377609, 20.449976>,  <28.572500, 45.567028, 20.530554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229532, 45.377609, 20.449976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010900, -0.374643, 0.927105,
		-0.514501, 0.797114, 0.316065,
		-0.857420, -0.473552, -0.201443,
		27.972305, 45.235542, 20.389544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238008, 45.761196, 21.111572>,  <28.572500, 45.567028, 20.530554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238008, 45.761196, 21.111572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078339, 45.429390, 20.955339>,  <27.982536, 45.230305, 20.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078339, 45.429390, 20.955339>,  <28.238008, 45.761196, 21.111572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078339, 45.429390, 20.955339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054029, -0.446535, 0.893134,
		-0.915281, 0.335415, 0.223064,
		-0.399176, -0.829520, -0.390583,
		27.958586, 45.180534, 20.838165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684631, 45.475601, 21.606600>,  <28.238008, 45.761196, 21.111572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684631, 45.475601, 21.606600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773849, 45.167000, 21.368259>,  <27.827379, 44.981838, 21.225256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773849, 45.167000, 21.368259>,  <27.684631, 45.475601, 21.606600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773849, 45.167000, 21.368259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112877, -0.627578, 0.770327,
		-0.968251, -0.104558, -0.227062,
		0.223043, -0.771501, -0.595851,
		27.840763, 44.935551, 21.189505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294838, 44.991219, 21.831907>,  <27.684631, 45.475601, 21.606600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294838, 44.991219, 21.831907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575045, 44.773224, 21.647617>,  <27.743168, 44.642426, 21.537045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575045, 44.773224, 21.647617>,  <27.294838, 44.991219, 21.831907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575045, 44.773224, 21.647617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021458, -0.661392, 0.749733,
		-0.713314, -0.515314, -0.475010,
		0.700516, -0.544988, -0.460722,
		27.785198, 44.609726, 21.509401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087334, 44.307568, 21.965752>,  <27.294838, 44.991219, 21.831907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087334, 44.307568, 21.965752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471832, 44.283737, 21.858082>,  <27.702532, 44.269440, 21.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471832, 44.283737, 21.858082>,  <27.087334, 44.307568, 21.965752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471832, 44.283737, 21.858082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137063, -0.743880, 0.654108,
		-0.239202, -0.665653, -0.706887,
		0.961247, -0.059576, -0.269174,
		27.760206, 44.265865, 21.777330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295624, 43.591873, 21.898535>,  <27.087334, 44.307568, 21.965752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295624, 43.591873, 21.898535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633690, 43.797935, 21.955538>,  <27.836529, 43.921574, 21.989738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633690, 43.797935, 21.955538>,  <27.295624, 43.591873, 21.898535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633690, 43.797935, 21.955538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358850, -0.744471, 0.563019,
		0.396135, -0.424706, -0.814065,
		0.845165, 0.515159, 0.142506,
		27.887239, 43.952484, 21.998289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766979, 43.111317, 21.823776>,  <27.295624, 43.591873, 21.898535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766979, 43.111317, 21.823776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925823, 43.394409, 22.057501>,  <28.021130, 43.564266, 22.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925823, 43.394409, 22.057501>,  <27.766979, 43.111317, 21.823776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925823, 43.394409, 22.057501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262041, -0.697597, 0.666853,
		0.879566, -0.111701, -0.462478,
		0.397111, 0.707730, 0.584312,
		28.044956, 43.606728, 22.232794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410788, 42.747955, 22.065226>,  <27.766979, 43.111317, 21.823776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410788, 42.747955, 22.065226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404213, 43.077347, 22.292068>,  <28.400269, 43.274982, 22.428175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404213, 43.077347, 22.292068>,  <28.410788, 42.747955, 22.065226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404213, 43.077347, 22.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327407, -0.531481, 0.781237,
		0.944740, 0.198517, -0.260877,
		-0.016438, 0.823479, 0.567108,
		28.399282, 43.324390, 22.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089010, 42.886467, 22.372742>,  <28.410788, 42.747955, 22.065226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089010, 42.886467, 22.372742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823656, 43.076462, 22.604017>,  <28.664444, 43.190460, 22.742783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823656, 43.076462, 22.604017>,  <29.089010, 42.886467, 22.372742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823656, 43.076462, 22.604017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350097, -0.485884, 0.800842,
		0.661324, 0.733691, 0.156038,
		-0.663387, 0.474988, 0.578190,
		28.624640, 43.218960, 22.777473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370066, 43.203606, 23.024939>,  <29.089010, 42.886467, 22.372742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370066, 43.203606, 23.024939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986122, 43.167904, 23.131298>,  <28.755756, 43.146484, 23.195114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986122, 43.167904, 23.131298>,  <29.370066, 43.203606, 23.024939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986122, 43.167904, 23.131298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245498, -0.725807, 0.642600,
		0.135638, 0.682084, 0.718584,
		-0.959861, -0.089251, 0.265897,
		28.698164, 43.141129, 23.211067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451948, 43.112049, 23.751974>,  <29.370066, 43.203606, 23.024939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451948, 43.112049, 23.751974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076363, 43.019318, 23.650309>,  <28.851011, 42.963680, 23.589310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076363, 43.019318, 23.650309>,  <29.451948, 43.112049, 23.751974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076363, 43.019318, 23.650309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106219, -0.507345, 0.855172,
		-0.327203, 0.829974, 0.451754,
		-0.938965, -0.231830, -0.254164,
		28.794674, 42.949768, 23.574059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173023, 43.148003, 24.354311>,  <29.451948, 43.112049, 23.751974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173023, 43.148003, 24.354311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905275, 42.925343, 24.157503>,  <28.744627, 42.791748, 24.039417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905275, 42.925343, 24.157503>,  <29.173023, 43.148003, 24.354311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905275, 42.925343, 24.157503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192666, -0.509550, 0.838593,
		-0.717511, 0.656125, 0.233831,
		-0.669371, -0.556649, -0.492021,
		28.704464, 42.758347, 24.009897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480663, 43.054337, 24.678690>,  <29.173023, 43.148003, 24.354311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480663, 43.054337, 24.678690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513578, 42.737514, 24.436741>,  <28.533327, 42.547421, 24.291571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513578, 42.737514, 24.436741>,  <28.480663, 43.054337, 24.678690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513578, 42.737514, 24.436741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081435, -0.610247, 0.788014,
		-0.993276, -0.015585, -0.114717,
		0.082287, -0.792058, -0.604875,
		28.538265, 42.499897, 24.255278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145094, 42.661140, 25.035831>,  <28.480663, 43.054337, 24.678690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145094, 42.661140, 25.035831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316746, 42.388855, 24.798351>,  <28.419737, 42.225483, 24.655863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316746, 42.388855, 24.798351>,  <28.145094, 42.661140, 25.035831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316746, 42.388855, 24.798351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007240, -0.659868, 0.751347,
		-0.903215, -0.318126, -0.288096,
		0.429128, -0.680713, -0.593699,
		28.445484, 42.184643, 24.620241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757467, 42.095211, 25.118792>,  <28.145094, 42.661140, 25.035831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757467, 42.095211, 25.118792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104294, 41.958584, 24.973724>,  <28.312389, 41.876606, 24.886684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104294, 41.958584, 24.973724>,  <27.757467, 42.095211, 25.118792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104294, 41.958584, 24.973724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022732, -0.754328, 0.656104,
		-0.497677, -0.560641, -0.661816,
		0.867064, -0.341572, -0.362666,
		28.364412, 41.856113, 24.864923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649857, 41.367149, 25.110270>,  <27.757467, 42.095211, 25.118792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649857, 41.367149, 25.110270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047049, 41.400898, 25.077122>,  <28.285364, 41.421146, 25.057234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047049, 41.400898, 25.077122>,  <27.649857, 41.367149, 25.110270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047049, 41.400898, 25.077122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116715, -0.812219, 0.571558,
		-0.019082, -0.577219, -0.816367,
		0.992982, 0.084376, -0.082869,
		28.344944, 41.426212, 25.052261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977896, 40.680218, 24.911858>,  <27.649857, 41.367149, 25.110270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977896, 40.680218, 24.911858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267122, 40.877914, 25.104897>,  <28.440659, 40.996532, 25.220720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267122, 40.877914, 25.104897>,  <27.977896, 40.680218, 24.911858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267122, 40.877914, 25.104897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169769, -0.804342, 0.569396,
		0.669594, -0.329780, -0.665499,
		0.723064, 0.494246, 0.482596,
		28.484041, 41.026188, 25.249676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496841, 40.192871, 25.139189>,  <27.977896, 40.680218, 24.911858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496841, 40.192871, 25.139189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581442, 40.507149, 25.371721>,  <28.632202, 40.695717, 25.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581442, 40.507149, 25.371721>,  <28.496841, 40.192871, 25.139189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581442, 40.507149, 25.371721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274832, -0.618598, 0.736073,
		0.937942, 0.004090, -0.346768,
		0.211500, 0.785697, 0.581333,
		28.644892, 40.742859, 25.546122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098141, 40.024487, 25.398159>,  <28.496841, 40.192871, 25.139189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098141, 40.024487, 25.398159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977343, 40.307140, 25.654116>,  <28.904863, 40.476734, 25.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977343, 40.307140, 25.654116>,  <29.098141, 40.024487, 25.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977343, 40.307140, 25.654116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410718, -0.509297, 0.756258,
		0.860296, 0.491202, -0.136423,
		-0.301996, 0.706638, 0.639892,
		28.886744, 40.519131, 25.846083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583729, 40.062576, 25.809811>,  <29.098141, 40.024487, 25.398159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583729, 40.062576, 25.809811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281225, 40.225498, 26.014624>,  <29.099724, 40.323250, 26.137512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281225, 40.225498, 26.014624>,  <29.583729, 40.062576, 25.809811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281225, 40.225498, 26.014624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288823, -0.494390, 0.819853,
		0.587073, 0.767908, 0.256248,
		-0.756258, 0.407303, 0.512033,
		29.054348, 40.347691, 26.168234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876766, 40.222321, 26.427290>,  <29.583729, 40.062576, 25.809811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876766, 40.222321, 26.427290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485468, 40.250282, 26.505415>,  <29.250689, 40.267059, 26.552290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485468, 40.250282, 26.505415>,  <29.876766, 40.222321, 26.427290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485468, 40.250282, 26.505415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144756, -0.444366, 0.884073,
		0.148588, 0.893114, 0.424581,
		-0.978247, 0.069902, 0.195311,
		29.191994, 40.271252, 26.564009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876675, 40.371689, 27.033581>,  <29.876766, 40.222321, 26.427290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876675, 40.371689, 27.033581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499481, 40.240543, 27.010658>,  <29.273165, 40.161854, 26.996904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499481, 40.240543, 27.010658>,  <29.876675, 40.371689, 27.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499481, 40.240543, 27.010658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168378, -0.618436, 0.767584,
		-0.287106, 0.714171, 0.638381,
		-0.942984, -0.327867, -0.057306,
		29.216585, 40.142181, 26.993467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656912, 40.369411, 27.717012>,  <29.876675, 40.371689, 27.033581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656912, 40.369411, 27.717012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394548, 40.127510, 27.536322>,  <29.237131, 39.982368, 27.427908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394548, 40.127510, 27.536322>,  <29.656912, 40.369411, 27.717012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394548, 40.127510, 27.536322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075014, -0.647698, 0.758195,
		-0.751104, 0.463421, 0.470196,
		-0.655908, -0.604755, -0.451725,
		29.197777, 39.946083, 27.400805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063660, 40.269386, 28.278173>,  <29.656912, 40.369411, 27.717012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063660, 40.269386, 28.278173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085203, 39.970402, 28.013325>,  <29.098129, 39.791012, 27.854416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085203, 39.970402, 28.013325>,  <29.063660, 40.269386, 28.278173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085203, 39.970402, 28.013325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010664, -0.663478, 0.748120,
		-0.998492, -0.033231, -0.043705,
		0.053858, -0.747458, -0.662123,
		29.101360, 39.746166, 27.814688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534485, 39.715996, 28.508833>,  <29.063660, 40.269386, 28.278173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534485, 39.715996, 28.508833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810534, 39.554165, 28.268816>,  <28.976162, 39.457066, 28.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810534, 39.554165, 28.268816>,  <28.534485, 39.715996, 28.508833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810534, 39.554165, 28.268816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224936, -0.668155, 0.709206,
		-0.687856, -0.624405, -0.370098,
		0.690114, -0.404583, -0.600046,
		29.017570, 39.432793, 28.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455164, 38.967735, 28.567213>,  <28.534485, 39.715996, 28.508833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455164, 38.967735, 28.567213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832102, 39.015373, 28.442122>,  <29.058266, 39.043957, 28.367067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832102, 39.015373, 28.442122>,  <28.455164, 38.967735, 28.567213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832102, 39.015373, 28.442122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310012, -0.662567, 0.681834,
		-0.126000, -0.739474, -0.661289,
		0.942346, 0.119097, -0.312729,
		29.114805, 39.051102, 28.348303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736778, 38.402779, 28.701292>,  <28.455164, 38.967735, 28.567213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736778, 38.402779, 28.701292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072088, 38.616310, 28.656898>,  <29.273275, 38.744431, 28.630262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072088, 38.616310, 28.656898>,  <28.736778, 38.402779, 28.701292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072088, 38.616310, 28.656898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484780, -0.636544, 0.599834,
		0.249563, -0.556629, -0.792390,
		0.838276, 0.533831, -0.110985,
		29.323570, 38.776459, 28.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152245, 37.888233, 28.714453>,  <28.736778, 38.402779, 28.701292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152245, 37.888233, 28.714453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380791, 38.210831, 28.775272>,  <29.517918, 38.404388, 28.811764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380791, 38.210831, 28.775272>,  <29.152245, 37.888233, 28.714453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380791, 38.210831, 28.775272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513402, -0.495779, 0.700444,
		0.640283, -0.322146, -0.697323,
		0.571363, 0.806490, 0.152048,
		29.552200, 38.452778, 28.820887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840672, 37.643124, 28.795401>,  <29.152245, 37.888233, 28.714453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840672, 37.643124, 28.795401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840084, 38.011055, 28.952328>,  <29.839731, 38.231815, 29.046484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840084, 38.011055, 28.952328>,  <29.840672, 37.643124, 28.795401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840084, 38.011055, 28.952328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608999, -0.310353, 0.729932,
		0.793169, 0.239993, -0.559719,
		-0.001468, 0.919829, 0.392318,
		29.839643, 38.287003, 29.070023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571075, 37.879143, 28.845757>,  <29.840672, 37.643124, 28.795401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571075, 37.879143, 28.845757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353523, 38.056046, 29.131023>,  <30.222992, 38.162186, 29.302183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353523, 38.056046, 29.131023>,  <30.571075, 37.879143, 28.845757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353523, 38.056046, 29.131023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663925, -0.292981, 0.688015,
		0.513222, 0.847687, -0.134278,
		-0.543880, 0.442255, 0.713165,
		30.190359, 38.188721, 29.344973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000740, 37.893940, 29.413717>,  <30.571075, 37.879143, 28.845757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000740, 37.893940, 29.413717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672909, 38.046410, 29.584833>,  <30.476210, 38.137890, 29.687502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672909, 38.046410, 29.584833>,  <31.000740, 37.893940, 29.413717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672909, 38.046410, 29.584833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433460, -0.075796, 0.897980,
		0.374709, 0.921392, -0.103102,
		-0.819577, 0.381172, 0.427788,
		30.427036, 38.160763, 29.713169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938345, 38.623661, 29.648169>,  <31.000740, 37.893940, 29.413717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938345, 38.623661, 29.648169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312891, 38.661327, 29.512903>,  <31.537619, 38.683926, 29.431744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312891, 38.661327, 29.512903>,  <30.938345, 38.623661, 29.648169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312891, 38.661327, 29.512903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275203, 0.794941, -0.540677,
		0.217908, 0.599334, 0.770269,
		0.936365, 0.094163, -0.338163,
		31.593800, 38.689575, 29.411455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982775, 39.292183, 29.310263>,  <30.938345, 38.623661, 29.648169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982775, 39.292183, 29.310263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284834, 39.080093, 29.156057>,  <31.466068, 38.952839, 29.063534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284834, 39.080093, 29.156057>,  <30.982775, 39.292183, 29.310263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284834, 39.080093, 29.156057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192455, 0.741464, -0.642801,
		0.626671, 0.411214, 0.661957,
		0.755146, -0.530221, -0.385514,
		31.511377, 38.921028, 29.040403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701256, 39.708225, 29.359844>,  <30.982775, 39.292183, 29.310263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701256, 39.708225, 29.359844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737043, 39.435097, 29.069809>,  <31.758516, 39.271221, 28.895788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737043, 39.435097, 29.069809>,  <31.701256, 39.708225, 29.359844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737043, 39.435097, 29.069809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460749, 0.673799, -0.577672,
		0.883009, -0.282399, 0.374893,
		0.089469, -0.682822, -0.725086,
		31.763884, 39.230251, 28.852283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364155, 39.757515, 29.158075>,  <31.701256, 39.708225, 29.359844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364155, 39.757515, 29.158075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177891, 39.601021, 28.840563>,  <32.066132, 39.507122, 28.650055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177891, 39.601021, 28.840563>,  <32.364155, 39.757515, 29.158075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177891, 39.601021, 28.840563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485970, 0.636570, -0.598842,
		0.739589, -0.664613, -0.106297,
		-0.465663, -0.391240, -0.793782,
		32.038193, 39.483650, 28.602428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896095, 39.632824, 28.562761>,  <32.364155, 39.757515, 29.158075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896095, 39.632824, 28.562761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543636, 39.634018, 28.373632>,  <32.332161, 39.634735, 28.260155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543636, 39.634018, 28.373632>,  <32.896095, 39.632824, 28.562761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543636, 39.634018, 28.373632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400606, 0.535908, -0.743181,
		0.251169, -0.844271, -0.473413,
		-0.881152, 0.002988, -0.472824,
		32.279289, 39.634914, 28.231785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071125, 39.465172, 27.833733>,  <32.896095, 39.632824, 28.562761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071125, 39.465172, 27.833733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729858, 39.672386, 27.809277>,  <32.525097, 39.796715, 27.794603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729858, 39.672386, 27.809277>,  <33.071125, 39.465172, 27.833733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729858, 39.672386, 27.809277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331407, 0.447786, -0.830455,
		-0.402830, -0.728782, -0.553719,
		-0.853169, 0.518039, -0.061142,
		32.473907, 39.827797, 27.790934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934792, 39.668716, 27.168745>,  <33.071125, 39.465172, 27.833733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934792, 39.668716, 27.168745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658649, 39.911385, 27.326410>,  <32.492966, 40.056984, 27.421009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658649, 39.911385, 27.326410>,  <32.934792, 39.668716, 27.168745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658649, 39.911385, 27.326410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165957, 0.663087, -0.729913,
		-0.704179, -0.438485, -0.558446,
		-0.690355, 0.606668, 0.394163,
		32.451542, 40.093384, 27.444658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608109, 39.891415, 26.624540>,  <32.934792, 39.668716, 27.168745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608109, 39.891415, 26.624540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518555, 40.166348, 26.900928>,  <32.464821, 40.331306, 27.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518555, 40.166348, 26.900928>,  <32.608109, 39.891415, 26.624540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518555, 40.166348, 26.900928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242314, 0.725964, -0.643630,
		-0.944012, 0.023331, -0.329086,
		-0.223888, 0.687336, 0.690972,
		32.451389, 40.372547, 27.108221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031647, 40.331730, 26.512568>,  <32.608109, 39.891415, 26.624540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031647, 40.331730, 26.512568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232548, 40.570808, 26.762526>,  <32.353088, 40.714256, 26.912500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232548, 40.570808, 26.762526>,  <32.031647, 40.331730, 26.512568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232548, 40.570808, 26.762526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141596, 0.769752, -0.622441,
		-0.853047, 0.224142, 0.471245,
		0.502257, 0.597697, 0.624897,
		32.383224, 40.750118, 26.949995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752131, 40.893639, 26.308218>,  <32.031647, 40.331730, 26.512568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752131, 40.893639, 26.308218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055344, 41.044075, 26.521362>,  <32.237270, 41.134338, 26.649248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055344, 41.044075, 26.521362>,  <31.752131, 40.893639, 26.308218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055344, 41.044075, 26.521362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006486, 0.812613, -0.582768,
		-0.652185, 0.445213, 0.613547,
		0.758033, 0.376093, 0.532861,
		32.282753, 41.156902, 26.681221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592209, 41.703896, 26.303715>,  <31.752131, 40.893639, 26.308218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592209, 41.703896, 26.303715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975346, 41.640869, 26.399807>,  <32.205227, 41.603054, 26.457462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975346, 41.640869, 26.399807>,  <31.592209, 41.703896, 26.303715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975346, 41.640869, 26.399807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275184, 0.743416, -0.609595,
		-0.082541, 0.650004, 0.755435,
		0.957842, -0.157567, 0.240233,
		32.262699, 41.593597, 26.471876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813431, 42.306675, 26.334402>,  <31.592209, 41.703896, 26.303715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813431, 42.306675, 26.334402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163048, 42.118095, 26.287434>,  <32.372818, 42.004948, 26.259253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163048, 42.118095, 26.287434>,  <31.813431, 42.306675, 26.334402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163048, 42.118095, 26.287434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257230, 0.654072, -0.711353,
		0.412166, 0.591549, 0.692957,
		0.874043, -0.471445, -0.117422,
		32.425262, 41.976662, 26.252207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437824, 42.784119, 26.360456>,  <31.813431, 42.306675, 26.334402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437824, 42.784119, 26.360456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561634, 42.477039, 26.136017>,  <32.635921, 42.292793, 26.001352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561634, 42.477039, 26.136017>,  <32.437824, 42.784119, 26.360456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561634, 42.477039, 26.136017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158318, 0.623449, -0.765668,
		0.937618, 0.148165, 0.314515,
		0.309529, -0.767697, -0.561100,
		32.654491, 42.246731, 25.967688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982571, 43.070545, 26.035280>,  <32.437824, 42.784119, 26.360456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982571, 43.070545, 26.035280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885101, 42.746716, 25.821657>,  <32.826618, 42.552418, 25.693483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885101, 42.746716, 25.821657>,  <32.982571, 43.070545, 26.035280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885101, 42.746716, 25.821657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247146, 0.480644, -0.841368,
		0.937840, -0.337008, 0.082963,
		-0.243672, -0.809572, -0.534057,
		32.812000, 42.503845, 25.661440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482109, 43.117786, 25.465267>,  <32.982571, 43.070545, 26.035280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482109, 43.117786, 25.465267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178532, 42.873302, 25.375448>,  <32.996384, 42.726612, 25.321556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178532, 42.873302, 25.375448>,  <33.482109, 43.117786, 25.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178532, 42.873302, 25.375448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065779, 0.415050, -0.907417,
		0.647821, -0.673912, -0.355206,
		-0.758947, -0.611209, -0.224549,
		32.950848, 42.689941, 25.308084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598087, 42.847050, 24.668228>,  <33.482109, 43.117786, 25.465267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598087, 42.847050, 24.668228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215446, 42.817673, 24.781027>,  <32.985863, 42.800045, 24.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215446, 42.817673, 24.781027>,  <33.598087, 42.847050, 24.668228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215446, 42.817673, 24.781027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286954, 0.405859, -0.867719,
		-0.050722, -0.910980, -0.409320,
		-0.956601, -0.073443, 0.281995,
		32.928467, 42.795639, 24.865625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232136, 42.581509, 24.029486>,  <33.598087, 42.847050, 24.668228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232136, 42.581509, 24.029486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952511, 42.748936, 24.261387>,  <32.784737, 42.849392, 24.400528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952511, 42.748936, 24.261387>,  <33.232136, 42.581509, 24.029486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952511, 42.748936, 24.261387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575158, 0.152588, -0.803686,
		-0.424862, -0.895274, 0.134075,
		-0.699060, 0.418570, 0.579753,
		32.742794, 42.874508, 24.435312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578320, 42.351498, 23.698477>,  <33.232136, 42.581509, 24.029486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578320, 42.351498, 23.698477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490334, 42.645370, 23.955183>,  <32.437542, 42.821693, 24.109207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490334, 42.645370, 23.955183>,  <32.578320, 42.351498, 23.698477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490334, 42.645370, 23.955183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764973, 0.278330, -0.580817,
		-0.605336, -0.618692, 0.500788,
		-0.219963, 0.734679, 0.641766,
		32.424343, 42.865772, 24.147713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846083, 42.285305, 23.816505>,  <32.578320, 42.351498, 23.698477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846083, 42.285305, 23.816505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954697, 42.655807, 23.921055>,  <32.019867, 42.878109, 23.983784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954697, 42.655807, 23.921055>,  <31.846083, 42.285305, 23.816505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954697, 42.655807, 23.921055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731059, 0.375137, -0.569934,
		-0.625955, -0.036320, 0.779013,
		0.271536, 0.926257, 0.261371,
		32.036156, 42.933685, 23.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251534, 42.631641, 24.031551>,  <31.846083, 42.285305, 23.816505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251534, 42.631641, 24.031551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523579, 42.902382, 23.918901>,  <31.686806, 43.064827, 23.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523579, 42.902382, 23.918901>,  <31.251534, 42.631641, 24.031551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523579, 42.902382, 23.918901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688438, 0.457626, -0.562701,
		-0.251987, 0.576583, 0.777210,
		0.680115, 0.676854, -0.281626,
		31.727613, 43.105438, 23.834414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898949, 43.380322, 24.002520>,  <31.251534, 42.631641, 24.031551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898949, 43.380322, 24.002520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218441, 43.432201, 23.767504>,  <31.410137, 43.463329, 23.626493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218441, 43.432201, 23.767504>,  <30.898949, 43.380322, 24.002520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218441, 43.432201, 23.767504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547114, 0.562913, -0.619513,
		0.250386, 0.816277, 0.520575,
		0.798732, 0.129697, -0.587542,
		31.458061, 43.471111, 23.591242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907780, 44.135956, 23.909832>,  <30.898949, 43.380322, 24.002520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907780, 44.135956, 23.909832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125633, 43.968182, 23.619331>,  <31.256346, 43.867516, 23.445030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125633, 43.968182, 23.619331>,  <30.907780, 44.135956, 23.909832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125633, 43.968182, 23.619331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395628, 0.635058, -0.663461,
		0.739494, 0.648670, 0.179933,
		0.544635, -0.419438, -0.726254,
		31.289024, 43.842350, 23.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745436, 44.617760, 23.336704>,  <30.907780, 44.135956, 23.909832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745436, 44.617760, 23.336704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936987, 44.323601, 23.144930>,  <31.051918, 44.147106, 23.029865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936987, 44.323601, 23.144930>,  <30.745436, 44.617760, 23.336704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936987, 44.323601, 23.144930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368973, 0.326945, -0.870038,
		0.796577, 0.593542, -0.114776,
		0.478879, -0.735401, -0.479438,
		31.080650, 44.102982, 23.001099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152472, 44.933231, 22.796490>,  <30.745436, 44.617760, 23.336704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152472, 44.933231, 22.796490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094280, 44.552914, 22.687075>,  <31.059366, 44.324722, 22.621426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094280, 44.552914, 22.687075>,  <31.152472, 44.933231, 22.796490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094280, 44.552914, 22.687075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307818, 0.306254, -0.900809,
		0.940257, -0.046848, -0.337225,
		-0.145478, -0.950796, -0.273537,
		31.050636, 44.267673, 22.605013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375626, 44.922169, 22.077330>,  <31.152472, 44.933231, 22.796490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375626, 44.922169, 22.077330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162081, 44.589024, 22.135759>,  <31.033955, 44.389137, 22.170816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162081, 44.589024, 22.135759>,  <31.375626, 44.922169, 22.077330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162081, 44.589024, 22.135759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215642, -0.032939, -0.975917,
		0.817613, -0.552503, -0.162014,
		-0.533860, -0.832860, 0.146074,
		31.001923, 44.339165, 22.179581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570839, 44.466690, 21.493910>,  <31.375626, 44.922169, 22.077330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570839, 44.466690, 21.493910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214506, 44.355831, 21.637913>,  <31.000706, 44.289314, 21.724314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214506, 44.355831, 21.637913>,  <31.570839, 44.466690, 21.493910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214506, 44.355831, 21.637913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255798, -0.348903, -0.901573,
		0.375479, -0.895240, 0.239920,
		-0.890833, -0.277150, 0.360006,
		30.947256, 44.272686, 21.745914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411713, 43.779697, 21.199858>,  <31.570839, 44.466690, 21.493910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411713, 43.779697, 21.199858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054916, 43.941193, 21.281197>,  <30.840839, 44.038090, 21.330000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054916, 43.941193, 21.281197>,  <31.411713, 43.779697, 21.199858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054916, 43.941193, 21.281197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272857, -0.122208, -0.954261,
		-0.360424, -0.906674, 0.219172,
		-0.891988, 0.403741, 0.203346,
		30.787319, 44.062313, 21.342201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994411, 43.355469, 20.872211>,  <31.411713, 43.779697, 21.199858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994411, 43.355469, 20.872211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775656, 43.683270, 20.940720>,  <30.644402, 43.879948, 20.981825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775656, 43.683270, 20.940720>,  <30.994411, 43.355469, 20.872211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775656, 43.683270, 20.940720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335807, -0.027327, -0.941534,
		-0.766906, -0.572429, 0.290139,
		-0.546890, 0.819499, 0.171268,
		30.611589, 43.929119, 20.992100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302614, 43.220589, 20.581125>,  <30.994411, 43.355469, 20.872211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302614, 43.220589, 20.581125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369673, 43.613605, 20.613409>,  <30.409908, 43.849415, 20.632778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369673, 43.613605, 20.613409>,  <30.302614, 43.220589, 20.581125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369673, 43.613605, 20.613409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426886, 0.146144, -0.892418,
		-0.888630, 0.115160, 0.443932,
		0.167648, 0.982538, 0.080708,
		30.419968, 43.908367, 20.637621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748751, 43.542675, 20.273037>,  <30.302614, 43.220589, 20.581125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748751, 43.542675, 20.273037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033796, 43.823151, 20.263987>,  <30.204824, 43.991436, 20.258556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033796, 43.823151, 20.263987>,  <29.748751, 43.542675, 20.273037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033796, 43.823151, 20.263987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273506, 0.247975, -0.929356,
		-0.646044, 0.668462, 0.368490,
		0.712616, 0.701189, -0.022625,
		30.247581, 44.033508, 20.257198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383455, 44.041149, 19.977970>,  <29.748751, 43.542675, 20.273037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383455, 44.041149, 19.977970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770319, 44.140560, 19.956657>,  <30.002438, 44.200207, 19.943869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770319, 44.140560, 19.956657>,  <29.383455, 44.041149, 19.977970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770319, 44.140560, 19.956657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137131, 0.333700, -0.932652,
		-0.214005, 0.909329, 0.356821,
		0.967159, 0.248524, -0.053284,
		30.060467, 44.215118, 19.940672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414499, 44.708851, 19.537649>,  <29.383455, 44.041149, 19.977970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414499, 44.708851, 19.537649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791956, 44.576786, 19.546932>,  <30.018429, 44.497547, 19.552502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791956, 44.576786, 19.546932>,  <29.414499, 44.708851, 19.537649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791956, 44.576786, 19.546932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078695, 0.155713, -0.984663,
		0.321481, 0.930994, 0.172919,
		0.943640, -0.330158, 0.023206,
		30.075048, 44.477737, 19.553894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812666, 45.172447, 19.258301>,  <29.414499, 44.708851, 19.537649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812666, 45.172447, 19.258301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051310, 44.857246, 19.197491>,  <30.194496, 44.668125, 19.161005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051310, 44.857246, 19.197491>,  <29.812666, 45.172447, 19.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051310, 44.857246, 19.197491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217134, 0.340865, -0.914693,
		0.772599, 0.512705, 0.374465,
		0.596610, -0.788000, -0.152026,
		30.230293, 44.620846, 19.151882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376198, 45.423016, 18.932808>,  <29.812666, 45.172447, 19.258301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376198, 45.423016, 18.932808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398481, 45.030636, 18.858370>,  <30.411852, 44.795208, 18.813707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398481, 45.030636, 18.858370>,  <30.376198, 45.423016, 18.932808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398481, 45.030636, 18.858370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119540, 0.191595, -0.974167,
		0.991265, 0.032025, 0.127936,
		0.055709, -0.980951, -0.186093,
		30.415194, 44.736351, 18.802542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965172, 45.381760, 18.468773>,  <30.376198, 45.423016, 18.932808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965172, 45.381760, 18.468773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750872, 45.049511, 18.408060>,  <30.622292, 44.850163, 18.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750872, 45.049511, 18.408060>,  <30.965172, 45.381760, 18.468773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750872, 45.049511, 18.408060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184180, 0.060473, -0.981030,
		0.824044, -0.553544, 0.120586,
		-0.535752, -0.830621, -0.151784,
		30.590147, 44.800323, 18.362524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245743, 45.149002, 17.875311>,  <30.965172, 45.381760, 18.468773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245743, 45.149002, 17.875311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910082, 44.931458, 17.872738>,  <30.708685, 44.800930, 17.871193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910082, 44.931458, 17.872738>,  <31.245743, 45.149002, 17.875311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910082, 44.931458, 17.872738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025114, 0.050562, -0.998405,
		0.543319, -0.837651, -0.056087,
		-0.839151, -0.543861, -0.006435,
		30.658337, 44.768299, 17.870808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378603, 44.688023, 17.334541>,  <31.245743, 45.149002, 17.875311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378603, 44.688023, 17.334541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980082, 44.681225, 17.368225>,  <30.740969, 44.677147, 17.388435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980082, 44.681225, 17.368225>,  <31.378603, 44.688023, 17.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980082, 44.681225, 17.368225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085891, 0.216441, -0.972510,
		-0.001702, -0.976148, -0.217101,
		-0.996303, -0.016992, 0.084210,
		30.681190, 44.676128, 17.393488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203640, 44.321022, 16.788280>,  <31.378603, 44.688023, 17.334541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203640, 44.321022, 16.788280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891245, 44.542885, 16.903109>,  <30.703808, 44.676003, 16.972006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891245, 44.542885, 16.903109>,  <31.203640, 44.321022, 16.788280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891245, 44.542885, 16.903109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149221, 0.280614, -0.948150,
		-0.606457, -0.783331, -0.136390,
		-0.780988, 0.554660, 0.287070,
		30.656948, 44.709282, 16.989229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220011, 43.663326, 16.392441>,  <31.203640, 44.321022, 16.788280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220011, 43.663326, 16.392441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416533, 43.562160, 16.059057>,  <31.534445, 43.501461, 15.859027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416533, 43.562160, 16.059057>,  <31.220011, 43.663326, 16.392441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416533, 43.562160, 16.059057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685461, -0.478107, 0.549142,
		-0.537368, -0.841100, -0.061536,
		0.491304, -0.252911, -0.833461,
		31.563923, 43.486286, 15.809019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131792, 42.869038, 16.265991>,  <31.220011, 43.663326, 16.392441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131792, 42.869038, 16.265991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464451, 43.032352, 16.115440>,  <31.664047, 43.130341, 16.025110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464451, 43.032352, 16.115440>,  <31.131792, 42.869038, 16.265991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464451, 43.032352, 16.115440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553872, -0.561294, 0.614960,
		0.039826, -0.719894, -0.692941,
		0.831649, 0.408292, -0.376375,
		31.713945, 43.154839, 16.002527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548222, 42.325447, 16.101379>,  <31.131792, 42.869038, 16.265991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548222, 42.325447, 16.101379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797323, 42.635983, 16.140314>,  <31.946783, 42.822304, 16.163675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797323, 42.635983, 16.140314>,  <31.548222, 42.325447, 16.101379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797323, 42.635983, 16.140314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506415, -0.494772, 0.706218,
		0.596425, -0.390508, -0.701271,
		0.622753, 0.776340, 0.097336,
		31.984150, 42.868885, 16.169516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195908, 42.117355, 16.071005>,  <31.548222, 42.325447, 16.101379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195908, 42.117355, 16.071005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234085, 42.461071, 16.272009>,  <32.256992, 42.667301, 16.392612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234085, 42.461071, 16.272009>,  <32.195908, 42.117355, 16.071005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234085, 42.461071, 16.272009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519113, -0.473702, 0.711427,
		0.849360, 0.192960, -0.491278,
		0.095442, 0.859286, 0.502511,
		32.262718, 42.718857, 16.422762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880440, 42.061016, 16.358595>,  <32.195908, 42.117355, 16.071005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880440, 42.061016, 16.358595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753529, 42.372871, 16.574560>,  <32.677383, 42.559982, 16.704140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753529, 42.372871, 16.574560>,  <32.880440, 42.061016, 16.358595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753529, 42.372871, 16.574560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576308, -0.293627, 0.762661,
		0.753130, 0.553131, -0.356148,
		-0.317277, 0.779634, 0.539913,
		32.658344, 42.606762, 16.736534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465900, 42.344433, 16.725920>,  <32.880440, 42.061016, 16.358595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465900, 42.344433, 16.725920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163994, 42.491508, 16.943224>,  <32.982849, 42.579754, 17.073606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163994, 42.491508, 16.943224>,  <33.465900, 42.344433, 16.725920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163994, 42.491508, 16.943224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445764, -0.320102, 0.835960,
		0.481272, 0.873121, 0.077700,
		-0.754767, 0.367688, 0.543262,
		32.937565, 42.601814, 17.106203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758625, 42.535297, 17.290518>,  <33.465900, 42.344433, 16.725920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758625, 42.535297, 17.290518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379608, 42.539181, 17.418306>,  <33.152199, 42.541512, 17.494980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379608, 42.539181, 17.418306>,  <33.758625, 42.535297, 17.290518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379608, 42.539181, 17.418306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309668, -0.219591, 0.925141,
		0.079136, 0.975544, 0.205066,
		-0.947546, 0.009709, 0.319472,
		33.095345, 42.542095, 17.514149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789204, 43.019817, 17.964628>,  <33.758625, 42.535297, 17.290518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789204, 43.019817, 17.964628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465984, 42.785576, 17.990339>,  <33.272053, 42.645031, 18.005766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465984, 42.785576, 17.990339>,  <33.789204, 43.019817, 17.964628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465984, 42.785576, 17.990339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, -0.107165, 0.981962,
		-0.568150, 0.803484, 0.177816,
		-0.808047, -0.585601, 0.064278,
		33.223572, 42.609894, 18.009623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352497, 43.195683, 18.612495>,  <33.789204, 43.019817, 17.964628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352497, 43.195683, 18.612495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256638, 42.820694, 18.511526>,  <33.199123, 42.595699, 18.450945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256638, 42.820694, 18.511526>,  <33.352497, 43.195683, 18.612495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256638, 42.820694, 18.511526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007080, -0.261681, 0.965128,
		-0.970833, 0.229506, 0.069349,
		-0.239650, -0.937470, -0.252424,
		33.184742, 42.539452, 18.435799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759846, 43.058731, 18.992245>,  <33.352497, 43.195683, 18.612495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759846, 43.058731, 18.992245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931396, 42.713459, 18.885666>,  <33.034328, 42.506298, 18.821718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931396, 42.713459, 18.885666>,  <32.759846, 43.058731, 18.992245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931396, 42.713459, 18.885666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185459, -0.204534, 0.961130,
		-0.884121, -0.461621, 0.072364,
		0.428877, -0.863176, -0.266445,
		33.060059, 42.454506, 18.805733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587780, 42.598640, 19.511126>,  <32.759846, 43.058731, 18.992245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587780, 42.598640, 19.511126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902523, 42.418659, 19.342173>,  <33.091370, 42.310673, 19.240801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902523, 42.418659, 19.342173>,  <32.587780, 42.598640, 19.511126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902523, 42.418659, 19.342173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349365, -0.239425, 0.905881,
		-0.508732, -0.860360, -0.031195,
		0.786853, -0.449952, -0.422383,
		33.138580, 42.283672, 19.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464848, 42.006859, 19.779568>,  <32.587780, 42.598640, 19.511126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464848, 42.006859, 19.779568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847908, 42.019409, 19.665079>,  <33.077744, 42.026939, 19.596386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847908, 42.019409, 19.665079>,  <32.464848, 42.006859, 19.779568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847908, 42.019409, 19.665079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263961, -0.492766, 0.829160,
		-0.115027, -0.869596, -0.480179,
		0.957650, 0.031373, -0.286220,
		33.135204, 42.028820, 19.579212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650764, 41.398743, 19.952845>,  <32.464848, 42.006859, 19.779568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650764, 41.398743, 19.952845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985592, 41.615032, 19.919556>,  <33.186489, 41.744808, 19.899582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985592, 41.615032, 19.919556>,  <32.650764, 41.398743, 19.952845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985592, 41.615032, 19.919556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337465, -0.390592, 0.856478,
		0.430615, -0.745018, -0.509430,
		0.837071, 0.540727, -0.083223,
		33.236713, 41.777248, 19.894588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177170, 40.964703, 20.214952>,  <32.650764, 41.398743, 19.952845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177170, 40.964703, 20.214952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372391, 41.313683, 20.225006>,  <33.489525, 41.523071, 20.231039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372391, 41.313683, 20.225006>,  <33.177170, 40.964703, 20.214952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372391, 41.313683, 20.225006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438771, -0.270139, 0.857032,
		0.754510, -0.407248, -0.514649,
		0.488051, 0.872453, 0.025134,
		33.518806, 41.575417, 20.232546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992512, 40.892559, 20.216393>,  <33.177170, 40.964703, 20.214952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992512, 40.892559, 20.216393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846867, 41.219357, 20.395252>,  <33.759480, 41.415436, 20.502569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846867, 41.219357, 20.395252>,  <33.992512, 40.892559, 20.216393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846867, 41.219357, 20.395252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293278, -0.355106, 0.887631,
		0.883976, 0.454334, -0.110309,
		-0.364109, 0.816995, 0.447151,
		33.737633, 41.464455, 20.529398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327213, 41.012360, 20.874733>,  <33.992512, 40.892559, 20.216393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327213, 41.012360, 20.874733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058662, 41.295013, 20.964109>,  <33.897533, 41.464603, 21.017735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058662, 41.295013, 20.964109>,  <34.327213, 41.012360, 20.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058662, 41.295013, 20.964109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002724, -0.303841, 0.952719,
		0.741111, 0.639025, 0.205917,
		-0.671377, 0.706631, 0.223439,
		33.857250, 41.507004, 21.031141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591965, 41.500179, 21.378601>,  <34.327213, 41.012360, 20.874733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591965, 41.500179, 21.378601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200993, 41.567829, 21.429232>,  <33.966408, 41.608418, 21.459610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200993, 41.567829, 21.429232>,  <34.591965, 41.500179, 21.378601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200993, 41.567829, 21.429232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110412, -0.101823, 0.988656,
		0.180094, 0.980321, 0.080852,
		-0.977433, 0.169124, 0.126577,
		33.907764, 41.618565, 21.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508709, 41.955635, 21.936195>,  <34.591965, 41.500179, 21.378601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508709, 41.955635, 21.936195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160511, 41.758987, 21.926819>,  <33.951591, 41.640999, 21.921192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160511, 41.758987, 21.926819>,  <34.508709, 41.955635, 21.936195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160511, 41.758987, 21.926819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000104, -0.047449, 0.998874,
		-0.492174, 0.869519, 0.041253,
		-0.870497, -0.491615, -0.023443,
		33.899361, 41.611504, 21.919786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231556, 42.153606, 22.512562>,  <34.508709, 41.955635, 21.936195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231556, 42.153606, 22.512562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008862, 41.834805, 22.418892>,  <33.875244, 41.643524, 22.362690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008862, 41.834805, 22.418892>,  <34.231556, 42.153606, 22.512562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008862, 41.834805, 22.418892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085015, -0.225755, 0.970468,
		-0.826329, 0.560200, 0.057929,
		-0.556734, -0.797001, -0.234173,
		33.841843, 41.595703, 22.348640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633804, 42.195251, 22.966951>,  <34.231556, 42.153606, 22.512562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633804, 42.195251, 22.966951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676903, 41.815144, 22.850071>,  <33.702763, 41.587078, 22.779943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676903, 41.815144, 22.850071>,  <33.633804, 42.195251, 22.966951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676903, 41.815144, 22.850071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092865, -0.283005, 0.954612,
		-0.989832, -0.129989, 0.057755,
		0.107744, -0.950269, -0.292199,
		33.709225, 41.530064, 22.762411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148758, 41.771011, 23.396744>,  <33.633804, 42.195251, 22.966951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148758, 41.771011, 23.396744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398323, 41.508968, 23.226301>,  <33.548061, 41.351742, 23.124035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398323, 41.508968, 23.226301>,  <33.148758, 41.771011, 23.396744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398323, 41.508968, 23.226301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236860, -0.361086, 0.901950,
		-0.744732, -0.663669, -0.070120,
		0.623916, -0.655103, -0.426109,
		33.585499, 41.312439, 23.098469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998280, 41.087238, 23.707579>,  <33.148758, 41.771011, 23.396744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998280, 41.087238, 23.707579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364326, 41.062611, 23.548197>,  <33.583954, 41.047836, 23.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364326, 41.062611, 23.548197>,  <32.998280, 41.087238, 23.707579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364326, 41.062611, 23.548197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378224, -0.211225, 0.901294,
		-0.139648, -0.975497, -0.170013,
		0.915121, -0.061561, -0.398454,
		33.638863, 41.044140, 23.428661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317921, 40.396557, 23.951220>,  <32.998280, 41.087238, 23.707579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317921, 40.396557, 23.951220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585911, 40.670567, 23.836761>,  <33.746704, 40.834972, 23.768087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585911, 40.670567, 23.836761>,  <33.317921, 40.396557, 23.951220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585911, 40.670567, 23.836761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553884, -0.204594, 0.807065,
		0.494315, -0.699203, -0.516496,
		0.669975, 0.685023, -0.286143,
		33.786903, 40.876072, 23.750919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901047, 40.040192, 24.079868>,  <33.317921, 40.396557, 23.951220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901047, 40.040192, 24.079868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025208, 40.420395, 24.074549>,  <34.099705, 40.648518, 24.071356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025208, 40.420395, 24.074549>,  <33.901047, 40.040192, 24.079868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025208, 40.420395, 24.074549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542908, -0.165776, 0.823267,
		0.780319, -0.262768, -0.567498,
		0.310407, 0.950511, -0.013301,
		34.118328, 40.705547, 24.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614830, 40.089725, 24.249706>,  <33.901047, 40.040192, 24.079868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614830, 40.089725, 24.249706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505371, 40.470486, 24.304832>,  <34.439693, 40.698944, 24.337908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505371, 40.470486, 24.304832>,  <34.614830, 40.089725, 24.249706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505371, 40.470486, 24.304832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665319, 0.083865, 0.741833,
		0.694597, 0.294694, -0.656270,
		-0.273651, 0.951905, 0.137813,
		34.423275, 40.756058, 24.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152287, 40.471561, 24.249044>,  <34.614830, 40.089725, 24.249706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152287, 40.471561, 24.249044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885105, 40.675591, 24.465807>,  <34.724796, 40.798008, 24.595863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885105, 40.675591, 24.465807>,  <35.152287, 40.471561, 24.249044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885105, 40.675591, 24.465807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628693, -0.002889, 0.777648,
		0.398225, 0.860125, -0.318751,
		-0.667954, 0.510075, 0.541905,
		34.684719, 40.828613, 24.628378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491291, 40.836197, 24.793814>,  <35.152287, 40.471561, 24.249044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491291, 40.836197, 24.793814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144794, 40.782597, 24.986341>,  <34.936897, 40.750439, 25.101858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144794, 40.782597, 24.986341>,  <35.491291, 40.836197, 24.793814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144794, 40.782597, 24.986341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499445, -0.206551, 0.841363,
		-0.013324, 0.969217, 0.245848,
		-0.866243, -0.133998, 0.481319,
		34.884922, 40.742397, 25.130737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638454, 41.084377, 25.419432>,  <35.491291, 40.836197, 24.793814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638454, 41.084377, 25.419432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325310, 40.839764, 25.465305>,  <35.137424, 40.692997, 25.492830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325310, 40.839764, 25.465305>,  <35.638454, 41.084377, 25.419432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325310, 40.839764, 25.465305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329380, -0.250956, 0.910236,
		-0.527859, 0.750365, 0.397891,
		-0.782863, -0.611534, 0.114686,
		35.090450, 40.656303, 25.499712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474876, 41.129658, 26.205465>,  <35.638454, 41.084377, 25.419432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474876, 41.129658, 26.205465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321983, 40.790218, 26.059164>,  <35.230247, 40.586555, 25.971384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321983, 40.790218, 26.059164>,  <35.474876, 41.129658, 26.205465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321983, 40.790218, 26.059164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142142, -0.445092, 0.884132,
		-0.913068, 0.285955, 0.290751,
		-0.382233, -0.848601, -0.365753,
		35.207314, 40.535637, 25.949438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208763, 40.877834, 26.765478>,  <35.474876, 41.129658, 26.205465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208763, 40.877834, 26.765478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202736, 40.559406, 26.523472>,  <35.199120, 40.368351, 26.378267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202736, 40.559406, 26.523472>,  <35.208763, 40.877834, 26.765478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202736, 40.559406, 26.523472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219100, -0.593009, 0.774813,
		-0.975586, -0.120882, 0.183357,
		-0.015071, -0.796070, -0.605017,
		35.198215, 40.320587, 26.341967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776936, 40.395020, 27.053759>,  <35.208763, 40.877834, 26.765478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776936, 40.395020, 27.053759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971001, 40.160789, 26.793999>,  <35.087440, 40.020252, 26.638142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971001, 40.160789, 26.793999>,  <34.776936, 40.395020, 27.053759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971001, 40.160789, 26.793999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200344, -0.648467, 0.734406,
		-0.851163, -0.486411, -0.197296,
		0.485163, -0.585572, -0.649401,
		35.116550, 39.985119, 26.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600414, 39.688534, 27.164440>,  <34.776936, 40.395020, 27.053759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600414, 39.688534, 27.164440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957355, 39.689365, 26.983904>,  <35.171520, 39.689865, 26.875582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957355, 39.689365, 26.983904>,  <34.600414, 39.688534, 27.164440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957355, 39.689365, 26.983904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323377, -0.700559, 0.636117,
		-0.314866, -0.713591, -0.625817,
		0.892349, 0.002083, -0.451341,
		35.225060, 39.689991, 26.848501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742641, 39.054104, 27.108109>,  <34.600414, 39.688534, 27.164440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742641, 39.054104, 27.108109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101448, 39.230785, 27.101624>,  <35.316730, 39.336792, 27.097733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101448, 39.230785, 27.101624>,  <34.742641, 39.054104, 27.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101448, 39.230785, 27.101624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336107, -0.657840, 0.674002,
		0.287042, -0.610039, -0.738552,
		0.897016, 0.441700, -0.016211,
		35.370552, 39.363297, 27.096760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214817, 38.549339, 27.228745>,  <34.742641, 39.054104, 27.108109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214817, 38.549339, 27.228745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473911, 38.846844, 27.294785>,  <35.629368, 39.025349, 27.334408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473911, 38.846844, 27.294785>,  <35.214817, 38.549339, 27.228745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473911, 38.846844, 27.294785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437735, -0.540679, 0.718369,
		0.623562, -0.393042, -0.675787,
		0.647733, 0.743764, 0.165099,
		35.668232, 39.069973, 27.344315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705795, 38.201824, 27.507427>,  <35.214817, 38.549339, 27.228745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705795, 38.201824, 27.507427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814541, 38.582684, 27.563293>,  <35.879787, 38.811199, 27.596813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814541, 38.582684, 27.563293>,  <35.705795, 38.201824, 27.507427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814541, 38.582684, 27.563293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587853, -0.279217, 0.759254,
		0.761920, -0.124306, -0.635630,
		0.271859, 0.952148, 0.139667,
		35.896099, 38.868328, 27.605194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461613, 38.265636, 27.426607>,  <35.705795, 38.201824, 27.507427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461613, 38.265636, 27.426607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301991, 38.546871, 27.662041>,  <36.206219, 38.715611, 27.803301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301991, 38.546871, 27.662041>,  <36.461613, 38.265636, 27.426607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301991, 38.546871, 27.662041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580995, -0.302716, 0.755518,
		0.709365, 0.643457, -0.287687,
		-0.399056, 0.703083, 0.588582,
		36.182274, 38.757797, 27.838615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051792, 38.438679, 27.909176>,  <36.461613, 38.265636, 27.426607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051792, 38.438679, 27.909176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715202, 38.568558, 28.081915>,  <36.513248, 38.646484, 28.185558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715202, 38.568558, 28.081915>,  <37.051792, 38.438679, 27.909176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715202, 38.568558, 28.081915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335331, -0.312856, 0.888636,
		0.423648, 0.892575, 0.154378,
		-0.841472, 0.324701, 0.431849,
		36.462761, 38.665970, 28.211470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208473, 38.766632, 28.572807>,  <37.051792, 38.438679, 27.909176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208473, 38.766632, 28.572807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819782, 38.698151, 28.637850>,  <36.586567, 38.657063, 28.676874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819782, 38.698151, 28.637850>,  <37.208473, 38.766632, 28.572807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819782, 38.698151, 28.637850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185070, -0.124595, 0.974795,
		-0.146631, 0.977325, 0.152757,
		-0.971724, -0.171206, 0.162605,
		36.528263, 38.646790, 28.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205559, 38.929905, 29.191502>,  <37.208473, 38.766632, 28.572807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205559, 38.929905, 29.191502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851807, 38.747383, 29.152168>,  <36.639557, 38.637871, 29.128569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851807, 38.747383, 29.152168>,  <37.205559, 38.929905, 29.191502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851807, 38.747383, 29.152168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063041, -0.325492, 0.943441,
		-0.462499, 0.828158, 0.316622,
		-0.884376, -0.456300, -0.098332,
		36.586494, 38.610493, 29.122669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772953, 39.085182, 29.857828>,  <37.205559, 38.929905, 29.191502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772953, 39.085182, 29.857828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632767, 38.746956, 29.696735>,  <36.548656, 38.544022, 29.600079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632767, 38.746956, 29.696735>,  <36.772953, 39.085182, 29.857828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632767, 38.746956, 29.696735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064151, -0.450670, 0.890383,
		-0.934376, 0.286212, 0.212187,
		-0.350465, -0.845565, -0.402734,
		36.527626, 38.493286, 29.575914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020199, 38.579887, 30.373789>,  <36.772953, 39.085182, 29.857828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020199, 38.579887, 30.373789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087029, 38.328484, 30.677647>,  <37.127129, 38.177639, 30.859961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087029, 38.328484, 30.677647>,  <37.020199, 38.579887, 30.373789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087029, 38.328484, 30.677647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422662, 0.650427, 0.631111,
		-0.890754, -0.426516, -0.156978,
		0.167077, -0.628513, 0.759642,
		37.137150, 38.139931, 30.905539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430279, 38.475304, 30.815409>,  <37.020199, 38.579887, 30.373789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430279, 38.475304, 30.815409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752712, 38.412106, 31.043541>,  <36.946171, 38.374187, 31.180420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752712, 38.412106, 31.043541>,  <36.430279, 38.475304, 30.815409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752712, 38.412106, 31.043541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340474, 0.664445, 0.665275,
		-0.484060, -0.730446, 0.481803,
		0.806079, -0.157991, 0.570329,
		36.994537, 38.364708, 31.214640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130848, 38.343529, 31.554644>,  <36.430279, 38.475304, 30.815409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130848, 38.343529, 31.554644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486469, 38.526295, 31.566051>,  <36.699844, 38.635952, 31.572897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486469, 38.526295, 31.566051>,  <36.130848, 38.343529, 31.554644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486469, 38.526295, 31.566051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375844, 0.692906, 0.615323,
		0.261385, -0.557776, 0.787759,
		0.889055, 0.456911, 0.028522,
		36.753185, 38.663368, 31.574608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337627, 38.542881, 32.295002>,  <36.130848, 38.343529, 31.554644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337627, 38.542881, 32.295002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512081, 38.802910, 32.046104>,  <36.616753, 38.958927, 31.896767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512081, 38.802910, 32.046104>,  <36.337627, 38.542881, 32.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512081, 38.802910, 32.046104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355559, 0.759697, 0.544461,
		0.826658, -0.016214, 0.562471,
		0.436136, 0.650075, -0.622244,
		36.642921, 38.997932, 31.859432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886795, 39.003021, 32.595570>,  <36.337627, 38.542881, 32.295002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886795, 39.003021, 32.595570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634377, 39.188873, 32.347088>,  <36.482925, 39.300385, 32.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634377, 39.188873, 32.347088>,  <36.886795, 39.003021, 32.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634377, 39.188873, 32.347088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068419, 0.764328, 0.641187,
		0.772721, 0.447122, -0.450538,
		-0.631048, 0.464633, -0.621204,
		36.445061, 39.328262, 32.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212662, 39.571476, 32.202492>,  <36.886795, 39.003021, 32.595570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212662, 39.571476, 32.202492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829594, 39.575596, 32.317570>,  <36.599754, 39.578068, 32.386616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829594, 39.575596, 32.317570>,  <37.212662, 39.571476, 32.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829594, 39.575596, 32.317570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215501, 0.688268, 0.692709,
		-0.190876, 0.725383, -0.661351,
		-0.957667, 0.010300, 0.287695,
		36.542294, 39.578686, 32.403877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825897, 39.282322, 31.691008>,  <37.212662, 39.571476, 32.202492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825897, 39.282322, 31.691008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002590, 39.041000, 31.956608>,  <38.108608, 38.896210, 32.115967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002590, 39.041000, 31.956608>,  <37.825897, 39.282322, 31.691008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002590, 39.041000, 31.956608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895644, 0.339359, -0.287502,
		-0.051885, 0.721708, 0.690250,
		0.441735, -0.603302, 0.664001,
		38.135109, 38.860008, 32.155807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282265, 39.649521, 32.071728>,  <37.825897, 39.282322, 31.691008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282265, 39.649521, 32.071728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402370, 39.268841, 32.046116>,  <38.474434, 39.040432, 32.030750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402370, 39.268841, 32.046116>,  <38.282265, 39.649521, 32.071728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402370, 39.268841, 32.046116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901748, 0.305106, -0.306204,
		0.310950, 0.034207, 0.949811,
		0.300267, -0.951704, -0.064026,
		38.492451, 38.983330, 32.026909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980083, 39.719997, 32.257732>,  <38.282265, 39.649521, 32.071728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980083, 39.719997, 32.257732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947407, 39.349155, 32.111412>,  <38.927799, 39.126652, 32.023621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947407, 39.349155, 32.111412>,  <38.980083, 39.719997, 32.257732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947407, 39.349155, 32.111412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960313, 0.024990, -0.277802,
		0.266692, -0.373975, 0.888267,
		-0.081693, -0.927102, -0.365798,
		38.922897, 39.071026, 32.001671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526451, 39.416409, 32.497929>,  <38.980083, 39.719997, 32.257732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526451, 39.416409, 32.497929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438278, 39.197357, 32.175064>,  <39.385372, 39.065926, 31.981346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438278, 39.197357, 32.175064>,  <39.526451, 39.416409, 32.497929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438278, 39.197357, 32.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973188, -0.067761, -0.219803,
		0.065676, -0.833972, 0.547884,
		-0.220435, -0.547630, -0.807162,
		39.372147, 39.033070, 31.932915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164162, 39.132530, 32.377823>,  <39.526451, 39.416409, 32.497929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164162, 39.132530, 32.377823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976131, 39.048565, 32.034901>,  <39.863316, 38.998184, 31.829147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976131, 39.048565, 32.034901>,  <40.164162, 39.132530, 32.377823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976131, 39.048565, 32.034901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882279, -0.084442, -0.463092,
		0.024817, -0.974066, 0.224897,
		-0.470073, -0.209914, -0.857302,
		39.835110, 38.985592, 31.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586353, 38.632839, 32.007912>,  <40.164162, 39.132530, 32.377823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586353, 38.632839, 32.007912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364674, 38.785328, 31.711931>,  <40.231667, 38.876820, 31.534342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364674, 38.785328, 31.711931>,  <40.586353, 38.632839, 32.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364674, 38.785328, 31.711931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829941, 0.321134, -0.456149,
		0.063730, -0.866915, -0.494365,
		-0.554200, 0.381223, -0.739954,
		40.198414, 38.899696, 31.489944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779816, 38.532692, 32.062412>,  <40.586353, 38.632839, 32.007912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779816, 38.532692, 32.062412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705120, 38.523132, 31.669563>,  <39.660301, 38.517395, 31.433855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705120, 38.523132, 31.669563>,  <39.779816, 38.532692, 32.062412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705120, 38.523132, 31.669563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962302, 0.196777, -0.187762,
		0.197746, -0.980157, -0.013746,
		-0.186741, -0.023901, -0.982119,
		39.649097, 38.515961, 31.374928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236019, 38.087132, 31.697186>,  <39.779816, 38.532692, 32.062412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236019, 38.087132, 31.697186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121468, 38.388451, 31.460361>,  <40.052738, 38.569241, 31.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121468, 38.388451, 31.460361>,  <40.236019, 38.087132, 31.697186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121468, 38.388451, 31.460361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951726, 0.152407, -0.266440,
		-0.110473, -0.639782, -0.760575,
		-0.286380, 0.753294, -0.592060,
		40.035553, 38.614437, 31.282743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647003, 38.003216, 31.197134>,  <40.236019, 38.087132, 31.697186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647003, 38.003216, 31.197134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505203, 38.365635, 31.104696>,  <40.420124, 38.583088, 31.049234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505203, 38.365635, 31.104696>,  <40.647003, 38.003216, 31.197134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505203, 38.365635, 31.104696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883226, 0.243324, -0.400880,
		-0.306987, -0.346219, -0.886505,
		-0.354500, 0.906049, -0.231093,
		40.398853, 38.637451, 31.035368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556705, 38.085186, 30.409082>,  <40.647003, 38.003216, 31.197134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556705, 38.085186, 30.409082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608204, 38.446056, 30.573765>,  <40.639103, 38.662579, 30.672573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608204, 38.446056, 30.573765>,  <40.556705, 38.085186, 30.409082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608204, 38.446056, 30.573765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771836, 0.169505, -0.612811,
		-0.622649, 0.396668, -0.674509,
		0.128750, 0.902177, 0.411704,
		40.646828, 38.716709, 30.697277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573002, 38.448818, 29.839722>,  <40.556705, 38.085186, 30.409082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573002, 38.448818, 29.839722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769669, 38.642578, 30.129169>,  <40.887669, 38.758835, 30.302837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769669, 38.642578, 30.129169>,  <40.573002, 38.448818, 29.839722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769669, 38.642578, 30.129169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793837, 0.092205, -0.601100,
		-0.357892, 0.869976, -0.339197,
		0.491667, 0.484396, 0.723619,
		40.917168, 38.787895, 30.346254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833176, 39.156723, 29.544016>,  <40.573002, 38.448818, 29.839722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833176, 39.156723, 29.544016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068321, 39.048103, 29.848825>,  <41.209408, 38.982933, 30.031712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068321, 39.048103, 29.848825>,  <40.833176, 39.156723, 29.544016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068321, 39.048103, 29.848825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798727, 0.344186, -0.493530,
		-0.128262, 0.898777, 0.419224,
		0.587864, -0.271544, 0.762023,
		41.244682, 38.966640, 30.077433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339085, 39.696125, 29.634386>,  <40.833176, 39.156723, 29.544016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339085, 39.696125, 29.634386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505363, 39.372261, 29.800102>,  <41.605133, 39.177940, 29.899532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505363, 39.372261, 29.800102>,  <41.339085, 39.696125, 29.634386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505363, 39.372261, 29.800102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853983, 0.190765, -0.484068,
		0.312900, 0.555024, 0.770741,
		0.415700, -0.809664, 0.414291,
		41.630074, 39.129360, 29.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902786, 39.742928, 30.098522>,  <41.339085, 39.696125, 29.634386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902786, 39.742928, 30.098522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 39.401588, 29.897997>,  <41.994377, 39.196785, 29.777681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 39.401588, 29.897997>,  <41.902786, 39.742928, 30.098522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960030, 39.401588, 29.897997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817403, 0.387498, -0.426260,
		0.558007, -0.348773, 0.752985,
		0.143112, -0.853348, -0.501315,
		42.002964, 39.145584, 29.747602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540272, 39.323742, 30.301695>,  <41.902786, 39.742928, 30.098522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540272, 39.323742, 30.301695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440784, 39.262981, 29.919058>,  <42.381092, 39.226524, 29.689476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440784, 39.262981, 29.919058>,  <42.540272, 39.323742, 30.301695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440784, 39.262981, 29.919058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879554, 0.378171, -0.288740,
		0.405616, -0.913187, 0.039552,
		-0.248716, -0.151906, -0.956590,
		42.366169, 39.217411, 29.632080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909832, 39.323627, 29.708977>,  <42.540272, 39.323742, 30.301695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909832, 39.323627, 29.708977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093975, 39.678181, 29.728573>,  <43.204460, 39.890911, 29.740330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093975, 39.678181, 29.728573>,  <42.909832, 39.323627, 29.708977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093975, 39.678181, 29.728573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643409, 0.371167, -0.669523,
		-0.611637, 0.276696, 0.741174,
		0.460354, 0.886383, 0.048990,
		43.232082, 39.944096, 29.743271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365574, 39.076225, 29.079245>,  <42.909832, 39.323627, 29.708977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365574, 39.076225, 29.079245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350826, 38.784130, 29.352123>,  <43.341976, 38.608871, 29.515850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350826, 38.784130, 29.352123>,  <43.365574, 39.076225, 29.079245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350826, 38.784130, 29.352123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826455, 0.406059, 0.389984,
		-0.561793, -0.549425, -0.618482,
		-0.036874, -0.730238, 0.682197,
		43.339764, 38.565060, 29.556782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745834, 38.688919, 29.114567>,  <43.365574, 39.076225, 29.079245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745834, 38.688919, 29.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872074, 38.609489, 29.485720>,  <42.947819, 38.561832, 29.708412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872074, 38.609489, 29.485720>,  <42.745834, 38.688919, 29.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872074, 38.609489, 29.485720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905933, 0.227840, 0.356894,
		-0.282279, -0.953235, -0.107989,
		0.315600, -0.198574, 0.927882,
		42.966755, 38.549915, 29.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384228, 38.172359, 29.490801>,  <42.745834, 38.688919, 29.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384228, 38.172359, 29.490801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519257, 38.457180, 29.737062>,  <42.600273, 38.628071, 29.884819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519257, 38.457180, 29.737062>,  <42.384228, 38.172359, 29.490801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519257, 38.457180, 29.737062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929468, 0.148774, 0.337572,
		0.148774, -0.686186, 0.712050,
		-0.337572, -0.712050, -0.615655,
		42.620529, 38.670795, 29.921759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215088, 38.082226, 30.173018>,  <42.384228, 38.172359, 29.490801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215088, 38.082226, 30.173018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249058, 38.477901, 30.125187>,  <42.269440, 38.715305, 30.096489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249058, 38.477901, 30.125187>,  <42.215088, 38.082226, 30.173018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249058, 38.477901, 30.125187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919202, 0.124096, 0.373720,
		0.384518, 0.078174, 0.919801,
		0.084929, 0.989186, -0.119575,
		42.274536, 38.774658, 30.089315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110817, 38.381058, 30.833551>,  <42.215088, 38.082226, 30.173018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110817, 38.381058, 30.833551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965488, 38.606918, 30.537128>,  <41.878292, 38.742435, 30.359274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965488, 38.606918, 30.537128>,  <42.110817, 38.381058, 30.833551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965488, 38.606918, 30.537128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792346, 0.231149, 0.564587,
		0.490090, 0.792300, 0.363418,
		-0.363318, 0.564651, -0.741059,
		41.856495, 38.776314, 30.314810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828011, 38.899078, 31.225296>,  <42.110817, 38.381058, 30.833551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828011, 38.899078, 31.225296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653248, 38.877926, 30.866116>,  <41.548389, 38.865234, 30.650608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653248, 38.877926, 30.866116>,  <41.828011, 38.899078, 31.225296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653248, 38.877926, 30.866116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892237, 0.152138, 0.425167,
		0.114127, 0.986943, -0.113656,
		-0.436907, -0.052885, -0.897951,
		41.522175, 38.862061, 30.596731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368397, 39.462902, 31.324646>,  <41.828011, 38.899078, 31.225296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368397, 39.462902, 31.324646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218719, 39.240093, 31.028076>,  <41.128914, 39.106407, 30.850134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218719, 39.240093, 31.028076>,  <41.368397, 39.462902, 31.324646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218719, 39.240093, 31.028076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914139, 0.087090, 0.395935,
		-0.155972, 0.825921, -0.541781,
		-0.374195, -0.557018, -0.741423,
		41.106461, 39.072987, 30.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823730, 39.935638, 30.961567>,  <41.368397, 39.462902, 31.324646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823730, 39.935638, 30.961567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757122, 39.546368, 30.898075>,  <40.717159, 39.312805, 30.859980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757122, 39.546368, 30.898075>,  <40.823730, 39.935638, 30.961567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757122, 39.546368, 30.898075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877291, 0.072733, 0.474416,
		-0.450147, 0.218249, -0.865873,
		-0.166518, -0.973179, -0.158728,
		40.707165, 39.254414, 30.850456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084267, 39.933521, 30.986078>,  <40.823730, 39.935638, 30.961567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084267, 39.933521, 30.986078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175964, 39.544285, 30.995459>,  <40.230984, 39.310745, 31.001087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175964, 39.544285, 30.995459>,  <40.084267, 39.933521, 30.986078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175964, 39.544285, 30.995459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950325, -0.218538, 0.221640,
		-0.210548, -0.073103, -0.974847,
		0.229243, -0.973086, 0.023459,
		40.244736, 39.252357, 31.002495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585541, 39.523582, 30.536982>,  <40.084267, 39.933521, 30.986078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585541, 39.523582, 30.536982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742195, 39.267406, 30.801241>,  <39.836189, 39.113701, 30.959797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742195, 39.267406, 30.801241>,  <39.585541, 39.523582, 30.536982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742195, 39.267406, 30.801241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916909, -0.331580, 0.222110,
		0.076808, -0.692739, -0.717086,
		0.391635, -0.640443, 0.660647,
		39.859684, 39.075272, 30.999435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275127, 38.836285, 30.564835>,  <39.585541, 39.523582, 30.536982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275127, 38.836285, 30.564835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425831, 38.888748, 30.931625>,  <39.516254, 38.920227, 31.151699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425831, 38.888748, 30.931625>,  <39.275127, 38.836285, 30.564835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425831, 38.888748, 30.931625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860557, -0.316751, 0.398887,
		0.342772, -0.939397, -0.006468,
		0.376762, 0.131161, 0.916977,
		39.538860, 38.928097, 31.206718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721695, 38.610344, 30.929644>,  <39.275127, 38.836285, 30.564835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721695, 38.610344, 30.929644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956135, 38.732597, 31.229795>,  <39.096798, 38.805950, 31.409887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956135, 38.732597, 31.229795>,  <38.721695, 38.610344, 30.929644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956135, 38.732597, 31.229795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685267, -0.307159, 0.660350,
		0.432313, -0.901244, 0.029416,
		0.586101, 0.305635, 0.750382,
		39.131966, 38.824287, 31.454910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899662, 37.950542, 31.331284>,  <38.721695, 38.610344, 30.929644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899662, 37.950542, 31.331284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887085, 38.292217, 31.538891>,  <38.879539, 38.497223, 31.663456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887085, 38.292217, 31.538891>,  <38.899662, 37.950542, 31.331284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887085, 38.292217, 31.538891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672526, -0.402226, 0.621227,
		0.739405, -0.329520, 0.587108,
		-0.031443, 0.854185, 0.519019,
		38.877651, 38.548473, 31.694597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865936, 37.757027, 31.921057>,  <38.899662, 37.950542, 31.331284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865936, 37.757027, 31.921057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747135, 38.136417, 31.965218>,  <38.675854, 38.364052, 31.991714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747135, 38.136417, 31.965218>,  <38.865936, 37.757027, 31.921057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747135, 38.136417, 31.965218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715822, -0.297676, 0.631654,
		0.631972, 0.108573, 0.767348,
		-0.297002, 0.948472, 0.110404,
		38.658035, 38.420959, 31.998339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990318, 37.965862, 32.701138>,  <38.865936, 37.757027, 31.921057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990318, 37.965862, 32.701138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707798, 38.164890, 32.499714>,  <38.538288, 38.284306, 32.378860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707798, 38.164890, 32.499714>,  <38.990318, 37.965862, 32.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707798, 38.164890, 32.499714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632538, -0.124169, 0.764511,
		0.317870, 0.858492, 0.402430,
		-0.706296, 0.497568, -0.503559,
		38.495911, 38.314159, 32.348644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801064, 38.561310, 33.092697>,  <38.990318, 37.965862, 32.701138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801064, 38.561310, 33.092697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512749, 38.400669, 32.866714>,  <38.339760, 38.304283, 32.731125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512749, 38.400669, 32.866714>,  <38.801064, 38.561310, 33.092697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512749, 38.400669, 32.866714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534469, -0.196984, 0.821913,
		-0.441371, 0.894378, -0.072661,
		-0.720787, -0.401604, -0.564960,
		38.296513, 38.280190, 32.697227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119106, 38.974422, 33.707115>,  <38.801064, 38.561310, 33.092697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119106, 38.974422, 33.707115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254261, 39.192501, 34.013996>,  <39.335354, 39.323349, 34.198124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254261, 39.192501, 34.013996>,  <39.119106, 38.974422, 33.707115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254261, 39.192501, 34.013996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902194, -0.419812, -0.099015,
		0.268097, 0.725618, -0.633721,
		0.337890, 0.545194, 0.767198,
		39.355629, 39.356060, 34.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750599, 39.365944, 33.537258>,  <39.119106, 38.974422, 33.707115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750599, 39.365944, 33.537258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688366, 39.251839, 33.915554>,  <39.651028, 39.183376, 34.142532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688366, 39.251839, 33.915554>,  <39.750599, 39.365944, 33.537258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688366, 39.251839, 33.915554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834633, -0.550063, -0.028616,
		0.528378, 0.784892, 0.323669,
		-0.155578, -0.285265, 0.945737,
		39.641693, 39.166260, 34.199276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386543, 39.493858, 33.845726>,  <39.750599, 39.365944, 33.537258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386543, 39.493858, 33.845726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184540, 39.197205, 34.022335>,  <40.063339, 39.019211, 34.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184540, 39.197205, 34.022335>,  <40.386543, 39.493858, 33.845726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184540, 39.197205, 34.022335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706898, -0.648908, -0.281448,
		0.495238, 0.169976, 0.851967,
		-0.505009, -0.741638, 0.441520,
		40.033039, 38.974712, 34.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709793, 39.225754, 34.497753>,  <40.386543, 39.493858, 33.845726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709793, 39.225754, 34.497753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489563, 38.979576, 34.272152>,  <40.357426, 38.831871, 34.136791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489563, 38.979576, 34.272152>,  <40.709793, 39.225754, 34.497753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489563, 38.979576, 34.272152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831748, -0.462006, -0.307806,
		-0.071136, -0.638578, 0.766262,
		-0.550576, -0.615441, -0.564001,
		40.324390, 38.794945, 34.102951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359951, 38.791630, 34.728870>,  <40.709793, 39.225754, 34.497753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359951, 38.791630, 34.728870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665638, 38.905434, 34.960396>,  <41.849049, 38.973717, 35.099312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665638, 38.905434, 34.960396>,  <41.359951, 38.791630, 34.728870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665638, 38.905434, 34.960396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021768, -0.908309, 0.417733,
		0.644590, -0.306640, -0.700340,
		0.764219, 0.284512, 0.578812,
		41.894905, 38.990788, 35.134041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133289, 38.608315, 34.733932>,  <41.359951, 38.791630, 34.728870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133289, 38.608315, 34.733932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941395, 38.636868, 35.083733>,  <41.826256, 38.653999, 35.293613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941395, 38.636868, 35.083733>,  <42.133289, 38.608315, 34.733932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941395, 38.636868, 35.083733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010434, -0.996150, 0.087040,
		0.877349, 0.050881, 0.477148,
		-0.479739, 0.071386, 0.874502,
		41.797474, 38.658283, 35.346085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611137, 38.333626, 35.349884>,  <42.133289, 38.608315, 34.733932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611137, 38.333626, 35.349884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214294, 38.286060, 35.333996>,  <41.976189, 38.257519, 35.324463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214294, 38.286060, 35.333996>,  <42.611137, 38.333626, 35.349884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214294, 38.286060, 35.333996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118854, -0.992904, 0.003988,
		-0.039915, -0.000765, 0.999203,
		-0.992109, -0.118918, -0.039723,
		41.916660, 38.250385, 35.322079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576374, 37.753914, 35.727478>,  <42.611137, 38.333626, 35.349884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576374, 37.753914, 35.727478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249119, 37.791538, 35.500565>,  <42.052765, 37.814114, 35.364418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249119, 37.791538, 35.500565>,  <42.576374, 37.753914, 35.727478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249119, 37.791538, 35.500565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071844, -0.962081, -0.263131,
		-0.570519, -0.256033, 0.780356,
		-0.818135, 0.094058, -0.567280,
		42.003677, 37.819756, 35.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951290, 37.253082, 35.817184>,  <42.576374, 37.753914, 35.727478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951290, 37.253082, 35.817184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942200, 37.348694, 35.428886>,  <41.936745, 37.406063, 35.195908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942200, 37.348694, 35.428886>,  <41.951290, 37.253082, 35.817184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942200, 37.348694, 35.428886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183332, -0.953534, -0.239086,
		-0.982789, -0.183401, -0.022155,
		-0.022723, 0.239033, -0.970746,
		41.935383, 37.420403, 35.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048519, 36.895889, 35.164276>,  <41.951290, 37.253082, 35.817184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048519, 36.895889, 35.164276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195942, 36.751484, 34.821621>,  <42.284397, 36.664841, 34.616028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195942, 36.751484, 34.821621>,  <42.048519, 36.895889, 35.164276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195942, 36.751484, 34.821621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678986, -0.733950, 0.017185,
		-0.634936, 0.575313, -0.515626,
		0.368557, -0.361014, -0.856641,
		42.306511, 36.643181, 34.564629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392441, 37.137573, 35.251469>,  <42.048519, 36.895889, 35.164276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392441, 37.137573, 35.251469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009823, 37.026146, 35.285942>,  <40.780254, 36.959290, 35.306625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009823, 37.026146, 35.285942>,  <41.392441, 37.137573, 35.251469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009823, 37.026146, 35.285942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246249, -0.613399, 0.750402,
		-0.156176, 0.739012, 0.655339,
		-0.956541, -0.278571, 0.086182,
		40.722862, 36.942574, 35.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217209, 37.128399, 35.990746>,  <41.392441, 37.137573, 35.251469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217209, 37.128399, 35.990746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975151, 36.886227, 35.783962>,  <40.829914, 36.740925, 35.659893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975151, 36.886227, 35.783962>,  <41.217209, 37.128399, 35.990746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975151, 36.886227, 35.783962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211828, -0.748399, 0.628512,
		-0.767415, 0.270836, 0.581138,
		-0.605147, -0.605431, -0.516963,
		40.793606, 36.704597, 35.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728432, 36.993084, 36.381710>,  <41.217209, 37.128399, 35.990746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728432, 36.993084, 36.381710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779480, 36.697292, 36.117321>,  <40.810108, 36.519817, 35.958687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779480, 36.697292, 36.117321>,  <40.728432, 36.993084, 36.381710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779480, 36.697292, 36.117321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245953, -0.622009, 0.743379,
		-0.960843, -0.257440, 0.102495,
		0.127622, -0.739480, -0.660971,
		40.817768, 36.475449, 35.919029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239536, 36.413483, 36.552048>,  <40.728432, 36.993084, 36.381710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239536, 36.413483, 36.552048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579781, 36.328552, 36.359642>,  <40.783928, 36.277596, 36.244198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579781, 36.328552, 36.359642>,  <40.239536, 36.413483, 36.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579781, 36.328552, 36.359642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189367, -0.729736, 0.656983,
		-0.490507, -0.649926, -0.580516,
		0.850614, -0.212324, -0.481014,
		40.834965, 36.264854, 36.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317390, 35.728764, 36.239262>,  <40.239536, 36.413483, 36.552048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317390, 35.728764, 36.239262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651680, 35.886600, 36.392029>,  <40.852253, 35.981304, 36.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651680, 35.886600, 36.392029>,  <40.317390, 35.728764, 36.239262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651680, 35.886600, 36.392029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074319, -0.770345, 0.633282,
		0.544102, -0.500863, -0.673119,
		0.835721, 0.394595, 0.381922,
		40.902397, 36.004978, 36.506607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851238, 35.167751, 36.358448>,  <40.317390, 35.728764, 36.239262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851238, 35.167751, 36.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920204, 35.468307, 36.613224>,  <40.961582, 35.648640, 36.766090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920204, 35.468307, 36.613224>,  <40.851238, 35.167751, 36.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920204, 35.468307, 36.613224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104512, -0.656925, 0.746677,
		0.979465, -0.062168, -0.191791,
		0.172412, 0.751388, 0.636938,
		40.971928, 35.693726, 36.804306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218357, 34.533821, 36.464855>,  <40.851238, 35.167751, 36.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218357, 34.533821, 36.464855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553761, 34.429462, 36.656197>,  <41.755005, 34.366848, 36.771004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553761, 34.429462, 36.656197>,  <41.218357, 34.533821, 36.464855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553761, 34.429462, 36.656197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531078, 0.587679, -0.610401,
		-0.121867, 0.765875, 0.631335,
		0.838513, -0.260901, 0.478358,
		41.805313, 34.351192, 36.799706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682632, 35.098511, 36.299423>,  <41.218357, 34.533821, 36.464855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682632, 35.098511, 36.299423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902351, 34.800255, 36.450310>,  <42.034184, 34.621300, 36.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902351, 34.800255, 36.450310>,  <41.682632, 35.098511, 36.299423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902351, 34.800255, 36.450310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764684, 0.266519, -0.586708,
		0.336939, 0.610727, 0.716578,
		0.549301, -0.745640, 0.377213,
		42.067142, 34.576561, 36.563473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335945, 35.368862, 36.644676>,  <41.682632, 35.098511, 36.299423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335945, 35.368862, 36.644676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367977, 34.990475, 36.518990>,  <42.387196, 34.763443, 36.443577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367977, 34.990475, 36.518990>,  <42.335945, 35.368862, 36.644676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367977, 34.990475, 36.518990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894823, 0.207111, -0.395471,
		0.439181, -0.249502, 0.863058,
		0.080077, -0.945967, -0.314219,
		42.392002, 34.706684, 36.424725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968441, 34.967136, 36.957951>,  <42.335945, 35.368862, 36.644676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968441, 34.967136, 36.957951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852859, 34.857456, 36.591057>,  <42.783512, 34.791649, 36.370922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852859, 34.857456, 36.591057>,  <42.968441, 34.967136, 36.957951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852859, 34.857456, 36.591057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944474, 0.074919, -0.319932,
		0.156444, -0.958749, 0.237329,
		-0.288954, -0.274202, -0.917234,
		42.766174, 34.775196, 36.315887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225193, 34.308495, 36.692780>,  <42.968441, 34.967136, 36.957951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225193, 34.308495, 36.692780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230320, 34.576252, 36.395660>,  <43.233395, 34.736904, 36.217388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230320, 34.576252, 36.395660>,  <43.225193, 34.308495, 36.692780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230320, 34.576252, 36.395660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998799, 0.026558, 0.041169,
		0.047285, -0.742435, -0.668247,
		0.012818, 0.669391, -0.742799,
		43.234165, 34.777069, 36.172821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726570, 34.144814, 36.193359>,  <43.225193, 34.308495, 36.692780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726570, 34.144814, 36.193359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662796, 34.538387, 36.225506>,  <43.624531, 34.774532, 36.244793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662796, 34.538387, 36.225506>,  <43.726570, 34.144814, 36.193359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662796, 34.538387, 36.225506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901158, 0.111811, 0.418824,
		0.403108, 0.139199, -0.904504,
		-0.159434, 0.983932, 0.080368,
		43.614967, 34.833569, 36.249615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506367, 34.062618, 35.972191>,  <43.726570, 34.144814, 36.193359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506367, 34.062618, 35.972191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833481, 34.150173, 36.185097>,  <45.029751, 34.202705, 36.312840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833481, 34.150173, 36.185097>,  <44.506367, 34.062618, 35.972191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833481, 34.150173, 36.185097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360954, 0.525274, -0.770584,
		-0.448255, 0.822300, 0.350557,
		0.817789, 0.218883, 0.532269,
		45.078819, 34.215839, 36.344776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614063, 34.878971, 35.975040>,  <44.506367, 34.062618, 35.972191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614063, 34.878971, 35.975040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939709, 34.650883, 36.018967>,  <45.135098, 34.514030, 36.045322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939709, 34.650883, 36.018967>,  <44.614063, 34.878971, 35.975040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939709, 34.650883, 36.018967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421705, 0.450538, -0.786880,
		0.399221, 0.686922, 0.607256,
		0.814118, -0.570222, 0.109814,
		45.183945, 34.479816, 36.051910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196526, 35.240395, 36.173729>,  <44.614063, 34.878971, 35.975040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196526, 35.240395, 36.173729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282352, 34.922100, 35.947186>,  <45.333851, 34.731125, 35.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282352, 34.922100, 35.947186>,  <45.196526, 35.240395, 36.173729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282352, 34.922100, 35.947186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425601, 0.598094, -0.679078,
		0.879103, -0.095334, 0.467000,
		0.214570, -0.795736, -0.566360,
		45.346722, 34.683380, 35.777279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964176, 35.109421, 36.278614>,  <45.196526, 35.240395, 36.173729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964176, 35.109421, 36.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820122, 34.998260, 35.922394>,  <45.733688, 34.931564, 35.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820122, 34.998260, 35.922394>,  <45.964176, 35.109421, 36.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820122, 34.998260, 35.922394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391541, 0.821427, -0.414673,
		0.846759, -0.498023, -0.187011,
		-0.360132, -0.277906, -0.890546,
		45.712082, 34.914890, 35.655231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515984, 35.017212, 35.785828>,  <45.964176, 35.109421, 36.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515984, 35.017212, 35.785828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186440, 35.125355, 35.586567>,  <45.988712, 35.190243, 35.467010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186440, 35.125355, 35.586567>,  <46.515984, 35.017212, 35.785828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186440, 35.125355, 35.586567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485643, 0.789879, -0.374489,
		0.292232, -0.550452, -0.782050,
		-0.823864, 0.270360, -0.498151,
		45.939281, 35.206463, 35.437122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670624, 35.350746, 35.155472>,  <46.515984, 35.017212, 35.785828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670624, 35.350746, 35.155472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306187, 35.506443, 35.209732>,  <46.087524, 35.599861, 35.242287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306187, 35.506443, 35.209732>,  <46.670624, 35.350746, 35.155472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306187, 35.506443, 35.209732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306864, 0.860201, -0.407294,
		-0.275221, -0.329456, -0.903168,
		-0.911092, 0.389246, 0.135647,
		46.032860, 35.623219, 35.250427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352947, 35.309189, 35.028847>,  <46.670624, 35.350746, 35.155472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352947, 35.309189, 35.028847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587452, 34.996643, 35.114410>,  <47.728157, 34.809116, 35.165749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587452, 34.996643, 35.114410>,  <47.352947, 35.309189, 35.028847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587452, 34.996643, 35.114410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120944, -0.345506, -0.930590,
		0.801040, 0.519702, -0.297060,
		0.586265, -0.781368, 0.213910,
		47.763332, 34.762234, 35.178585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.883566, 38.227913, 20.452168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501802, 38.248074, 20.569853>,  <30.272743, 38.260170, 20.640465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501802, 38.248074, 20.569853>,  <30.883566, 38.227913, 20.452168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501802, 38.248074, 20.569853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282784, -0.162935, 0.945244,
		0.095578, 0.985349, 0.141254,
		-0.954410, 0.050401, 0.294214,
		30.215479, 38.263195, 20.658117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896755, 38.665962, 20.981760>,  <30.883566, 38.227913, 20.452168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896755, 38.665962, 20.981760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.564631, 38.446503, 21.020885>,  <30.365356, 38.314827, 21.044361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.564631, 38.446503, 21.020885>,  <30.896755, 38.665962, 20.981760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564631, 38.446503, 21.020885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187221, -0.109292, 0.976219,
		-0.524914, 0.828877, 0.193465,
		-0.830310, -0.548651, 0.097814,
		30.315538, 38.281906, 21.050230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449034, 38.916721, 21.485022>,  <30.896755, 38.665962, 20.981760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449034, 38.916721, 21.485022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320560, 38.538845, 21.458494>,  <30.243477, 38.312119, 21.442577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320560, 38.538845, 21.458494>,  <30.449034, 38.916721, 21.485022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320560, 38.538845, 21.458494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177156, -0.128729, 0.975728,
		-0.930300, 0.301637, 0.208704,
		-0.321182, -0.944692, -0.066320,
		30.224205, 38.255436, 21.438599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909975, 38.826870, 22.022776>,  <30.449034, 38.916721, 21.485022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909975, 38.826870, 22.022776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.042757, 38.463989, 21.919399>,  <30.122427, 38.246262, 21.857372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.042757, 38.463989, 21.919399>,  <29.909975, 38.826870, 22.022776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042757, 38.463989, 21.919399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021094, -0.266771, 0.963529,
		-0.943059, -0.325301, -0.069419,
		0.331956, -0.907200, -0.258443,
		30.142344, 38.191830, 21.841866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594772, 38.372555, 22.401564>,  <29.909975, 38.826870, 22.022776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594772, 38.372555, 22.401564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.935163, 38.181820, 22.313507>,  <30.139399, 38.067379, 22.260674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.935163, 38.181820, 22.313507>,  <29.594772, 38.372555, 22.401564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935163, 38.181820, 22.313507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078751, -0.298574, 0.951132,
		-0.519261, -0.826730, -0.216529,
		0.850979, -0.476834, -0.220143,
		30.190458, 38.038769, 22.247463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480480, 37.733780, 22.629791>,  <29.594772, 38.372555, 22.401564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480480, 37.733780, 22.629791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.876114, 37.725254, 22.571474>,  <30.113495, 37.720139, 22.536484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.876114, 37.725254, 22.571474>,  <29.480480, 37.733780, 22.629791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876114, 37.725254, 22.571474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122145, -0.434768, 0.892220,
		-0.082406, -0.900290, -0.427419,
		0.989085, -0.021317, -0.145794,
		30.172840, 37.718861, 22.527737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774714, 37.122070, 22.935518>,  <29.480480, 37.733780, 22.629791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774714, 37.122070, 22.935518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.117371, 37.324905, 22.897509>,  <30.322966, 37.446606, 22.874702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.117371, 37.324905, 22.897509>,  <29.774714, 37.122070, 22.935518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117371, 37.324905, 22.897509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425136, -0.589499, 0.686841,
		0.292270, -0.628775, -0.720570,
		0.856643, 0.507083, -0.095022,
		30.374363, 37.477032, 22.869001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246727, 36.648975, 23.056166>,  <29.774714, 37.122070, 22.935518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246727, 36.648975, 23.056166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.478357, 36.971409, 23.104994>,  <30.617334, 37.164867, 23.134291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.478357, 36.971409, 23.104994>,  <30.246727, 36.648975, 23.056166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478357, 36.971409, 23.104994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534802, -0.488592, 0.689394,
		0.615353, -0.333927, -0.714027,
		0.579075, 0.806084, 0.122071,
		30.652081, 37.213234, 23.141615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007324, 36.478519, 23.130945>,  <30.246727, 36.648975, 23.056166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007324, 36.478519, 23.130945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970573, 36.837528, 23.303461>,  <30.948523, 37.052933, 23.406971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970573, 36.837528, 23.303461>,  <31.007324, 36.478519, 23.130945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970573, 36.837528, 23.303461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590490, -0.299645, 0.749356,
		0.801798, 0.323522, -0.502447,
		-0.091878, 0.897522, 0.431291,
		30.943010, 37.106785, 23.432848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669584, 36.643692, 23.236563>,  <31.007324, 36.478519, 23.130945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669584, 36.643692, 23.236563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437531, 36.829926, 23.503897>,  <31.298298, 36.941666, 23.664297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437531, 36.829926, 23.503897>,  <31.669584, 36.643692, 23.236563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437531, 36.829926, 23.503897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676541, -0.181491, 0.713690,
		0.453580, 0.866194, -0.209697,
		-0.580136, 0.465584, 0.668337,
		31.263491, 36.969601, 23.704397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082333, 36.715824, 23.767029>,  <31.669584, 36.643692, 23.236563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082333, 36.715824, 23.767029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754320, 36.843388, 23.957123>,  <31.557512, 36.919926, 24.071180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754320, 36.843388, 23.957123>,  <32.082333, 36.715824, 23.767029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754320, 36.843388, 23.957123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492481, -0.029844, 0.869812,
		0.291570, 0.947317, -0.132582,
		-0.820030, 0.318905, 0.475237,
		31.508310, 36.939060, 24.099693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303272, 37.254559, 24.143633>,  <32.082333, 36.715824, 23.767029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303272, 37.254559, 24.143633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974903, 37.109985, 24.320473>,  <31.777882, 37.023239, 24.426577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974903, 37.109985, 24.320473>,  <32.303272, 37.254559, 24.143633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974903, 37.109985, 24.320473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498445, -0.075772, 0.863604,
		-0.278640, 0.929313, 0.242360,
		-0.820922, -0.361437, 0.442098,
		31.728626, 37.001553, 24.453102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176033, 37.652931, 24.715815>,  <32.303272, 37.254559, 24.143633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176033, 37.652931, 24.715815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.016167, 37.288761, 24.758512>,  <31.920248, 37.070259, 24.784132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.016167, 37.288761, 24.758512>,  <32.176033, 37.652931, 24.715815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016167, 37.288761, 24.758512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455091, -0.095981, 0.885257,
		-0.795715, 0.402383, 0.452686,
		-0.399662, -0.910426, 0.106747,
		31.896269, 37.015633, 24.790537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050583, 37.635296, 25.467342>,  <32.176033, 37.652931, 24.715815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050583, 37.635296, 25.467342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042065, 37.253426, 25.348585>,  <32.036953, 37.024303, 25.277330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042065, 37.253426, 25.348585>,  <32.050583, 37.635296, 25.467342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042065, 37.253426, 25.348585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569058, -0.255737, 0.781519,
		-0.822021, -0.152305, 0.548712,
		-0.021297, -0.954674, -0.296891,
		32.035675, 36.967022, 25.259518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879364, 37.249577, 26.033638>,  <32.050583, 37.635296, 25.467342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879364, 37.249577, 26.033638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061268, 36.984962, 25.795120>,  <32.170410, 36.826195, 25.652010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061268, 36.984962, 25.795120>,  <31.879364, 37.249577, 26.033638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061268, 36.984962, 25.795120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522484, -0.344044, 0.780157,
		-0.721251, -0.666338, 0.189183,
		0.454761, -0.661534, -0.596293,
		32.197697, 36.786503, 25.616232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750713, 36.615089, 26.344212>,  <31.879364, 37.249577, 26.033638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750713, 36.615089, 26.344212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097202, 36.577858, 26.147846>,  <32.305096, 36.555519, 26.030027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097202, 36.577858, 26.147846>,  <31.750713, 36.615089, 26.344212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097202, 36.577858, 26.147846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337801, -0.614854, 0.712633,
		-0.368174, -0.783129, -0.501156,
		0.866221, -0.093082, -0.490914,
		32.357067, 36.549934, 26.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861546, 35.978363, 26.642349>,  <31.750713, 36.615089, 26.344212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861546, 35.978363, 26.642349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197403, 36.072346, 26.446474>,  <32.398918, 36.128735, 26.328949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197403, 36.072346, 26.446474>,  <31.861546, 35.978363, 26.642349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197403, 36.072346, 26.446474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514128, -0.634542, 0.577087,
		-0.175133, -0.736308, -0.653589,
		0.839643, 0.234961, -0.489686,
		32.449295, 36.142834, 26.299568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246052, 35.357780, 26.493341>,  <31.861546, 35.978363, 26.642349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246052, 35.357780, 26.493341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.537853, 35.631363, 26.495401>,  <32.712933, 35.795513, 26.496637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.537853, 35.631363, 26.495401>,  <32.246052, 35.357780, 26.493341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537853, 35.631363, 26.495401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500564, -0.538998, 0.677434,
		0.466110, -0.491614, -0.735566,
		0.729505, 0.683957, 0.005148,
		32.756706, 35.836552, 26.496946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982334, 35.001217, 26.431400>,  <32.246052, 35.357780, 26.493341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982334, 35.001217, 26.431400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016773, 35.362450, 26.599699>,  <33.037437, 35.579189, 26.700678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016773, 35.362450, 26.599699>,  <32.982334, 35.001217, 26.431400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016773, 35.362450, 26.599699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626399, -0.377472, 0.682011,
		0.774732, 0.204833, -0.598192,
		0.086102, 0.903083, 0.420747,
		33.042603, 35.633373, 26.725924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657249, 34.935127, 26.703995>,  <32.982334, 35.001217, 26.431400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657249, 34.935127, 26.703995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 35.255749, 26.891117>,  <33.418930, 35.448124, 27.003391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 35.255749, 26.891117>,  <33.657249, 34.935127, 26.703995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508301, 35.255749, 26.891117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565992, -0.203341, 0.798940,
		0.735520, 0.562280, -0.377956,
		-0.372374, 0.801557, 0.467808,
		33.396587, 35.496216, 27.031460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226768, 35.463123, 26.961771>,  <33.657249, 34.935127, 26.703995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226768, 35.463123, 26.961771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897152, 35.519730, 27.181198>,  <33.699383, 35.553692, 27.312855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897152, 35.519730, 27.181198>,  <34.226768, 35.463123, 26.961771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897152, 35.519730, 27.181198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553755, -0.003256, 0.832673,
		0.119620, 0.989931, -0.075680,
		-0.824043, 0.141512, 0.548569,
		33.649940, 35.562183, 27.345768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779888, 35.766605, 27.481266>,  <34.226768, 35.463123, 26.961771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779888, 35.766605, 27.481266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107349, 35.984543, 27.553873>,  <35.303825, 36.115303, 27.597437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107349, 35.984543, 27.553873>,  <34.779888, 35.766605, 27.481266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107349, 35.984543, 27.553873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239127, 0.610783, -0.754826,
		-0.522128, 0.574538, 0.630309,
		0.818658, 0.544840, 0.181519,
		35.352947, 36.147995, 27.608330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683659, 36.524841, 27.598421>,  <34.779888, 35.766605, 27.481266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683659, 36.524841, 27.598421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068855, 36.516479, 27.490938>,  <35.299973, 36.511463, 27.426449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068855, 36.516479, 27.490938>,  <34.683659, 36.524841, 27.598421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068855, 36.516479, 27.490938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172510, 0.718197, -0.674116,
		0.207076, 0.695526, 0.688014,
		0.962995, -0.020904, -0.268707,
		35.357754, 36.510208, 27.410326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827381, 37.252998, 27.438234>,  <34.683659, 36.524841, 27.598421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827381, 37.252998, 27.438234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142326, 37.064976, 27.278685>,  <35.331295, 36.952164, 27.182955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142326, 37.064976, 27.278685>,  <34.827381, 37.252998, 27.438234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142326, 37.064976, 27.278685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124985, 0.511863, -0.849926,
		0.603682, 0.719058, 0.344274,
		0.787367, -0.470056, -0.398874,
		35.378536, 36.923958, 27.159023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316334, 37.692719, 27.207827>,  <34.827381, 37.252998, 27.438234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316334, 37.692719, 27.207827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358395, 37.363274, 26.984901>,  <35.383633, 37.165607, 26.851147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358395, 37.363274, 26.984901>,  <35.316334, 37.692719, 27.207827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358395, 37.363274, 26.984901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099360, 0.548917, -0.829951,
		0.989480, 0.142645, -0.024115,
		0.105151, -0.823616, -0.557315,
		35.389938, 37.116188, 26.817707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724888, 37.924385, 26.657511>,  <35.316334, 37.692719, 27.207827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724888, 37.924385, 26.657511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616283, 37.569798, 26.507599>,  <35.551121, 37.357044, 26.417652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616283, 37.569798, 26.507599>,  <35.724888, 37.924385, 26.657511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616283, 37.569798, 26.507599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038701, 0.379038, -0.924572,
		0.961657, -0.265537, -0.068606,
		-0.271512, -0.886465, -0.374781,
		35.534828, 37.303860, 26.395164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035095, 37.908234, 25.988487>,  <35.724888, 37.924385, 26.657511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035095, 37.908234, 25.988487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748150, 37.631218, 25.958063>,  <35.575985, 37.465008, 25.939810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748150, 37.631218, 25.958063>,  <36.035095, 37.908234, 25.988487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748150, 37.631218, 25.958063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096012, 0.206396, -0.973747,
		0.690054, -0.691226, -0.214552,
		-0.717361, -0.692537, -0.076058,
		35.532940, 37.423458, 25.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195328, 37.466675, 25.410952>,  <36.035095, 37.908234, 25.988487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195328, 37.466675, 25.410952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806328, 37.397415, 25.473255>,  <35.572929, 37.355858, 25.510637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806328, 37.397415, 25.473255>,  <36.195328, 37.466675, 25.410952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806328, 37.397415, 25.473255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200145, 0.279350, -0.939098,
		0.119095, -0.944448, -0.306324,
		-0.972501, -0.173151, 0.155757,
		35.514576, 37.345470, 25.519981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881882, 37.091003, 24.831560>,  <36.195328, 37.466675, 25.410952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881882, 37.091003, 24.831560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568443, 37.267292, 25.006714>,  <35.380379, 37.373066, 25.111807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568443, 37.267292, 25.006714>,  <35.881882, 37.091003, 24.831560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568443, 37.267292, 25.006714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311489, 0.331134, -0.890688,
		-0.537540, -0.834337, -0.122197,
		-0.783597, 0.440717, 0.437885,
		35.333363, 37.399506, 25.138079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381710, 36.995941, 24.362247>,  <35.881882, 37.091003, 24.831560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381710, 36.995941, 24.362247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251629, 37.284542, 24.606764>,  <35.173580, 37.457703, 24.753473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251629, 37.284542, 24.606764>,  <35.381710, 36.995941, 24.362247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251629, 37.284542, 24.606764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286847, 0.540705, -0.790795,
		-0.901090, -0.432514, 0.031124,
		-0.325201, 0.721505, 0.611289,
		35.154068, 37.500992, 24.790150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664368, 37.012474, 24.240896>,  <35.381710, 36.995941, 24.362247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664368, 37.012474, 24.240896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792446, 37.361866, 24.387600>,  <34.869293, 37.571499, 24.475622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792446, 37.361866, 24.387600>,  <34.664368, 37.012474, 24.240896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792446, 37.361866, 24.387600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450949, 0.481002, -0.751853,
		-0.833137, 0.075352, 0.547909,
		0.320199, 0.873475, 0.366761,
		34.888504, 37.623909, 24.497629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052082, 37.391819, 24.401588>,  <34.664368, 37.012474, 24.240896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052082, 37.391819, 24.401588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340527, 37.667625, 24.374567>,  <34.513596, 37.833111, 24.358355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340527, 37.667625, 24.374567>,  <34.052082, 37.391819, 24.401588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340527, 37.667625, 24.374567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453212, 0.395726, -0.798749,
		-0.524017, 0.606605, 0.597860,
		0.721114, 0.689515, -0.067553,
		34.556862, 37.874481, 24.354301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709126, 38.064529, 24.235945>,  <34.052082, 37.391819, 24.401588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709126, 38.064529, 24.235945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094845, 38.108715, 24.139677>,  <34.326279, 38.135227, 24.081917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094845, 38.108715, 24.139677>,  <33.709126, 38.064529, 24.235945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094845, 38.108715, 24.139677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263605, 0.487001, -0.832672,
		0.025223, 0.866388, 0.498735,
		0.964301, 0.110466, -0.240668,
		34.384136, 38.141853, 24.067476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907333, 38.858635, 24.168583>,  <33.709126, 38.064529, 24.235945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907333, 38.858635, 24.168583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153942, 38.623810, 23.958721>,  <34.301907, 38.482914, 23.832804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153942, 38.623810, 23.958721>,  <33.907333, 38.858635, 24.168583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153942, 38.623810, 23.958721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133682, 0.578635, -0.804556,
		0.775908, 0.566161, 0.278260,
		0.616519, -0.587063, -0.524653,
		34.338898, 38.447689, 23.801325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263275, 39.338543, 23.635477>,  <33.907333, 38.858635, 24.168583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263275, 39.338543, 23.635477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351391, 38.977589, 23.487328>,  <34.404259, 38.761017, 23.398438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351391, 38.977589, 23.487328>,  <34.263275, 39.338543, 23.635477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351391, 38.977589, 23.487328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152519, 0.343164, -0.926810,
		0.963438, 0.260652, -0.062036,
		0.220286, -0.902385, -0.370372,
		34.417477, 38.706875, 23.376217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620232, 39.431236, 22.998125>,  <34.263275, 39.338543, 23.635477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620232, 39.431236, 22.998125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484947, 39.056717, 22.960268>,  <34.403778, 38.832005, 22.937553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484947, 39.056717, 22.960268>,  <34.620232, 39.431236, 22.998125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484947, 39.056717, 22.960268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047725, 0.117507, -0.991925,
		0.939859, -0.330964, -0.084427,
		-0.338212, -0.936298, -0.094644,
		34.383484, 38.775826, 22.931875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957268, 39.058746, 22.495956>,  <34.620232, 39.431236, 22.998125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957268, 39.058746, 22.495956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632618, 38.826412, 22.520918>,  <34.437828, 38.687012, 22.535894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632618, 38.826412, 22.520918>,  <34.957268, 39.058746, 22.495956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632618, 38.826412, 22.520918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162876, 0.122407, -0.979024,
		0.561016, -0.804763, -0.193953,
		-0.811623, -0.580838, 0.062404,
		34.389130, 38.652161, 22.539639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948509, 38.668865, 21.912195>,  <34.957268, 39.058746, 22.495956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948509, 38.668865, 21.912195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569107, 38.648727, 22.037292>,  <34.341465, 38.636646, 22.112350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569107, 38.648727, 22.037292>,  <34.948509, 38.668865, 21.912195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569107, 38.648727, 22.037292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311619, -0.028968, -0.949765,
		0.056876, -0.998312, 0.011788,
		-0.948503, -0.050346, 0.312741,
		34.284557, 38.633625, 22.131115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625057, 38.101845, 21.580223>,  <34.948509, 38.668865, 21.912195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625057, 38.101845, 21.580223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327572, 38.342300, 21.697201>,  <34.149082, 38.486572, 21.767387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327572, 38.342300, 21.697201>,  <34.625057, 38.101845, 21.580223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327572, 38.342300, 21.697201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473333, -0.164612, -0.865366,
		-0.472066, -0.782007, 0.406963,
		-0.743714, 0.601139, 0.292442,
		34.104458, 38.522640, 21.784933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076283, 37.785286, 21.209381>,  <34.625057, 38.101845, 21.580223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076283, 37.785286, 21.209381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915836, 38.126492, 21.342936>,  <33.819569, 38.331215, 21.423069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915836, 38.126492, 21.342936>,  <34.076283, 37.785286, 21.209381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915836, 38.126492, 21.342936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540951, 0.073574, -0.837830,
		-0.739243, -0.516680, 0.431926,
		-0.401112, 0.853011, 0.333888,
		33.795502, 38.382397, 21.443102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.074020, 37.795803, 21.355902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196743, 38.170403, 21.287970>,  <33.270374, 38.395161, 21.247210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196743, 38.170403, 21.287970>,  <33.074020, 37.795803, 21.355902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196743, 38.170403, 21.287970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783992, 0.147490, -0.602996,
		-0.539656, 0.318149, 0.779457,
		0.306804, 0.936498, -0.169833,
		33.288784, 38.451351, 21.237020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482201, 38.169067, 21.430962>,  <33.074020, 37.795803, 21.355902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482201, 38.169067, 21.430962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751595, 38.384403, 21.228336>,  <32.913231, 38.513607, 21.106760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751595, 38.384403, 21.228336>,  <32.482201, 38.169067, 21.430962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751595, 38.384403, 21.228336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682636, 0.190038, -0.705616,
		-0.283596, 0.821020, 0.495479,
		0.673484, 0.538341, -0.506564,
		32.953640, 38.545906, 21.076366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019413, 38.622841, 21.166073>,  <32.482201, 38.169067, 21.430962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019413, 38.622841, 21.166073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359825, 38.692608, 20.967953>,  <32.564072, 38.734467, 20.849081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359825, 38.692608, 20.967953>,  <32.019413, 38.622841, 21.166073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359825, 38.692608, 20.967953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525104, 0.277752, -0.804437,
		-0.002735, 0.944687, 0.327962,
		0.851034, 0.174415, -0.495299,
		32.615135, 38.744934, 20.819363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996960, 39.353195, 21.012316>,  <32.019413, 38.622841, 21.166073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996960, 39.353195, 21.012316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226440, 39.173809, 20.738165>,  <32.364128, 39.066177, 20.573673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226440, 39.173809, 20.738165>,  <31.996960, 39.353195, 21.012316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226440, 39.173809, 20.738165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525204, 0.440686, -0.727981,
		0.628511, 0.777608, 0.017286,
		0.573702, -0.448466, -0.685379,
		32.398552, 39.039268, 20.532551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065727, 39.974751, 20.591589>,  <31.996960, 39.353195, 21.012316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065727, 39.974751, 20.591589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158699, 39.642002, 20.390011>,  <32.214481, 39.442352, 20.269064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158699, 39.642002, 20.390011>,  <32.065727, 39.974751, 20.591589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158699, 39.642002, 20.390011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447895, 0.368376, -0.814671,
		0.863345, 0.415071, -0.286970,
		0.232433, -0.831875, -0.503943,
		32.228428, 39.392441, 20.238829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244846, 40.187050, 19.953352>,  <32.065727, 39.974751, 20.591589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244846, 40.187050, 19.953352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198860, 39.794350, 19.892750>,  <32.171268, 39.558731, 19.856388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198860, 39.794350, 19.892750>,  <32.244846, 40.187050, 19.953352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198860, 39.794350, 19.892750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213324, 0.173358, -0.961478,
		0.970194, -0.078214, -0.229360,
		-0.114963, -0.981748, -0.151506,
		32.164371, 39.499825, 19.847298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642075, 39.987675, 19.410145>,  <32.244846, 40.187050, 19.953352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642075, 39.987675, 19.410145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.343456, 39.722549, 19.433300>,  <32.164288, 39.563473, 19.447193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.343456, 39.722549, 19.433300>,  <32.642075, 39.987675, 19.410145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343456, 39.722549, 19.433300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212417, 0.154984, -0.964811,
		0.630517, -0.732570, -0.256495,
		-0.746544, -0.662813, 0.057890,
		32.119492, 39.523705, 19.450666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749432, 39.480396, 18.860867>,  <32.642075, 39.987675, 19.410145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749432, 39.480396, 18.860867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359642, 39.456902, 18.947538>,  <32.125767, 39.442806, 18.999542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359642, 39.456902, 18.947538>,  <32.749432, 39.480396, 18.860867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359642, 39.456902, 18.947538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215879, -0.019711, -0.976221,
		0.061607, -0.998079, 0.006529,
		-0.974475, -0.058733, 0.216679,
		32.067299, 39.439281, 19.012543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475498, 38.955238, 18.404577>,  <32.749432, 39.480396, 18.860867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475498, 38.955238, 18.404577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185753, 39.195732, 18.539528>,  <32.011906, 39.340027, 18.620499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185753, 39.195732, 18.539528>,  <32.475498, 38.955238, 18.404577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185753, 39.195732, 18.539528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324075, 0.134981, -0.936352,
		-0.608502, -0.787593, 0.097068,
		-0.724362, 0.601230, 0.337375,
		31.968445, 39.376102, 18.640741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954000, 38.900341, 17.922514>,  <32.475498, 38.955238, 18.404577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954000, 38.900341, 17.922514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852365, 39.235142, 18.116365>,  <31.791384, 39.436024, 18.232676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852365, 39.235142, 18.116365>,  <31.954000, 38.900341, 17.922514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852365, 39.235142, 18.116365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205525, 0.442902, -0.872696,
		-0.945092, -0.321344, 0.059489,
		-0.254088, 0.837005, 0.484627,
		31.776138, 39.486244, 18.261753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179049, 39.006584, 17.728603>,  <31.954000, 38.900341, 17.922514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179049, 39.006584, 17.728603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348816, 39.347176, 17.851801>,  <31.450676, 39.551529, 17.925720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348816, 39.347176, 17.851801>,  <31.179049, 39.006584, 17.728603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348816, 39.347176, 17.851801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127274, 0.392874, -0.910742,
		-0.896478, 0.347335, 0.275113,
		0.424417, 0.851475, 0.307996,
		31.476141, 39.602619, 17.944201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757906, 39.484081, 17.683702>,  <31.179049, 39.006584, 17.728603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757906, 39.484081, 17.683702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086004, 39.712746, 17.691721>,  <31.282864, 39.849945, 17.696531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086004, 39.712746, 17.691721>,  <30.757906, 39.484081, 17.683702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086004, 39.712746, 17.691721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375153, 0.564078, -0.735579,
		-0.431809, 0.595835, 0.677142,
		0.820245, 0.571661, 0.020044,
		31.332077, 39.884243, 17.697735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442692, 40.121246, 17.490294>,  <30.757906, 39.484081, 17.683702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442692, 40.121246, 17.490294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836836, 40.186092, 17.469196>,  <31.073322, 40.224998, 17.456539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836836, 40.186092, 17.469196>,  <30.442692, 40.121246, 17.490294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836836, 40.186092, 17.469196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151167, 0.687880, -0.709908,
		-0.078804, 0.707490, 0.702316,
		0.985362, 0.162110, -0.052741,
		31.132444, 40.234726, 17.453375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631037, 40.854527, 17.667572>,  <30.442692, 40.121246, 17.490294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631037, 40.854527, 17.667572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911587, 40.695538, 17.430899>,  <31.079916, 40.600143, 17.288895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911587, 40.695538, 17.430899>,  <30.631037, 40.854527, 17.667572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911587, 40.695538, 17.430899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101086, 0.766236, -0.634558,
		0.705588, 0.504874, 0.497240,
		0.701375, -0.397472, -0.591683,
		31.122000, 40.576294, 17.253393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941862, 41.428677, 17.300911>,  <30.631037, 40.854527, 17.667572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941862, 41.428677, 17.300911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049208, 41.121822, 17.067852>,  <31.113615, 40.937710, 16.928017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049208, 41.121822, 17.067852>,  <30.941862, 41.428677, 17.300911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049208, 41.121822, 17.067852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141036, 0.567028, -0.811534,
		0.952938, 0.299959, 0.043974,
		0.268362, -0.767140, -0.582648,
		31.129717, 40.891682, 16.893057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436144, 41.708576, 16.839403>,  <30.941862, 41.428677, 17.300911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436144, 41.708576, 16.839403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294577, 41.377426, 16.665340>,  <31.209637, 41.178738, 16.560902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294577, 41.377426, 16.665340>,  <31.436144, 41.708576, 16.839403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294577, 41.377426, 16.665340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212421, 0.524265, -0.824635,
		0.910835, -0.199415, -0.361405,
		-0.353917, -0.827877, -0.435158,
		31.188402, 41.129063, 16.534794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855835, 41.480965, 16.248280>,  <31.436144, 41.708576, 16.839403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855835, 41.480965, 16.248280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500221, 41.313667, 16.173775>,  <31.286854, 41.213287, 16.129072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500221, 41.313667, 16.173775>,  <31.855835, 41.480965, 16.248280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500221, 41.313667, 16.173775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059964, 0.296950, -0.953009,
		0.453902, -0.858423, -0.238918,
		-0.889031, -0.418246, -0.186261,
		31.233511, 41.188194, 16.117897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950556, 41.319080, 15.596654>,  <31.855835, 41.480965, 16.248280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950556, 41.319080, 15.596654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.556835, 41.270283, 15.647672>,  <31.320602, 41.241005, 15.678282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.556835, 41.270283, 15.647672>,  <31.950556, 41.319080, 15.596654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556835, 41.270283, 15.647672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134660, 0.051958, -0.989529,
		0.114097, -0.991169, -0.067571,
		-0.984301, -0.122001, 0.127543,
		31.261545, 41.233685, 15.685935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717180, 40.892075, 14.943388>,  <31.950556, 41.319080, 15.596654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717180, 40.892075, 14.943388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391544, 41.075596, 15.085802>,  <31.196163, 41.185707, 15.171250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391544, 41.075596, 15.085802>,  <31.717180, 40.892075, 14.943388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391544, 41.075596, 15.085802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336137, 0.127676, -0.933119,
		-0.473576, -0.879317, 0.050281,
		-0.814087, 0.458804, 0.356035,
		31.147318, 41.213238, 15.192613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270037, 40.676342, 14.507559>,  <31.717180, 40.892075, 14.943388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270037, 40.676342, 14.507559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062168, 40.961464, 14.695960>,  <30.937447, 41.132538, 14.809001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062168, 40.961464, 14.695960>,  <31.270037, 40.676342, 14.507559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062168, 40.961464, 14.695960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523911, 0.169599, -0.834717,
		-0.674875, -0.680544, 0.285313,
		-0.519673, 0.712808, 0.471003,
		30.906265, 41.175308, 14.837261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574627, 40.518578, 14.494728>,  <31.270037, 40.676342, 14.507559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574627, 40.518578, 14.494728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614267, 40.914913, 14.531430>,  <30.638052, 41.152714, 14.553452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614267, 40.914913, 14.531430>,  <30.574627, 40.518578, 14.494728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614267, 40.914913, 14.531430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564206, 0.131904, -0.815030,
		-0.819665, 0.029000, 0.572108,
		0.099100, 0.990838, 0.091755,
		30.643997, 41.212166, 14.558957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852264, 40.839321, 14.467938>,  <30.574627, 40.518578, 14.494728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852264, 40.839321, 14.467938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101704, 41.146046, 14.407106>,  <30.251368, 41.330078, 14.370607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101704, 41.146046, 14.407106>,  <29.852264, 40.839321, 14.467938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101704, 41.146046, 14.407106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495095, 0.236842, -0.835935,
		-0.604984, 0.596582, 0.527338,
		0.623599, 0.766809, -0.152079,
		30.288784, 41.376087, 14.361483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474737, 41.472168, 14.402030>,  <29.852264, 40.839321, 14.467938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474737, 41.472168, 14.402030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812698, 41.463039, 14.188257>,  <30.015476, 41.457561, 14.059994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812698, 41.463039, 14.188257>,  <29.474737, 41.472168, 14.402030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812698, 41.463039, 14.188257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533646, 0.032894, -0.845068,
		0.036867, 0.999198, 0.015612,
		0.844904, -0.022824, -0.534431,
		30.066170, 41.456192, 14.027928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554621, 41.997017, 13.835082>,  <29.474737, 41.472168, 14.402030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554621, 41.997017, 13.835082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777174, 41.692699, 13.701439>,  <29.910706, 41.510109, 13.621253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777174, 41.692699, 13.701439>,  <29.554621, 41.997017, 13.835082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777174, 41.692699, 13.701439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436213, 0.074795, -0.896730,
		0.707217, 0.644668, -0.290254,
		0.556384, -0.760795, -0.334109,
		29.944090, 41.464462, 13.601206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004375, 42.408772, 13.929489>,  <29.554621, 41.997017, 13.835082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004375, 42.408772, 13.929489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609936, 42.402855, 13.995685>,  <28.373272, 42.399307, 14.035402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609936, 42.402855, 13.995685>,  <29.004375, 42.408772, 13.929489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609936, 42.402855, 13.995685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156736, -0.413277, 0.897015,
		0.055127, 0.910485, 0.409850,
		-0.986101, -0.014789, 0.165489,
		28.314106, 42.398418, 14.045331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837660, 42.722065, 14.647600>,  <29.004375, 42.408772, 13.929489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837660, 42.722065, 14.647600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515949, 42.504597, 14.551638>,  <28.322922, 42.374115, 14.494061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515949, 42.504597, 14.551638>,  <28.837660, 42.722065, 14.647600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515949, 42.504597, 14.551638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044198, -0.457320, 0.888203,
		-0.592606, 0.703759, 0.391842,
		-0.804279, -0.543674, -0.239906,
		28.274666, 42.341496, 14.479666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405998, 42.746433, 15.185347>,  <28.837660, 42.722065, 14.647600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405998, 42.746433, 15.185347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276207, 42.408241, 15.015696>,  <28.198332, 42.205326, 14.913905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276207, 42.408241, 15.015696>,  <28.405998, 42.746433, 15.185347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276207, 42.408241, 15.015696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138074, -0.401250, 0.905502,
		-0.935762, 0.352376, 0.013459,
		-0.324477, -0.845476, -0.424128,
		28.178864, 42.154598, 14.888457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751343, 42.506905, 15.544331>,  <28.405998, 42.746433, 15.185347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751343, 42.506905, 15.544331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852320, 42.164867, 15.363181>,  <27.912907, 41.959644, 15.254491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852320, 42.164867, 15.363181>,  <27.751343, 42.506905, 15.544331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852320, 42.164867, 15.363181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115567, -0.491328, 0.863274,
		-0.960686, -0.165589, -0.222851,
		0.252442, -0.855089, -0.452875,
		27.928053, 41.908340, 15.227319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253464, 42.056557, 15.734504>,  <27.751343, 42.506905, 15.544331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253464, 42.056557, 15.734504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.558874, 41.827766, 15.614588>,  <27.742121, 41.690495, 15.542639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.558874, 41.827766, 15.614588>,  <27.253464, 42.056557, 15.734504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558874, 41.827766, 15.614588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017936, -0.482836, 0.875527,
		-0.645526, -0.663112, -0.378918,
		0.763527, -0.571972, -0.299790,
		27.787933, 41.656174, 15.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074793, 41.574177, 16.159704>,  <27.253464, 42.056557, 15.734504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074793, 41.574177, 16.159704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414633, 41.442375, 15.994970>,  <27.618536, 41.363293, 15.896131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414633, 41.442375, 15.994970>,  <27.074793, 41.574177, 16.159704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414633, 41.442375, 15.994970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087009, -0.682572, 0.725620,
		-0.520201, -0.652320, -0.551243,
		0.849600, -0.329505, -0.411833,
		27.669512, 41.343525, 15.871421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165575, 40.789352, 16.153603>,  <27.074793, 41.574177, 16.159704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165575, 40.789352, 16.153603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.529871, 40.954445, 16.147863>,  <27.748449, 41.053501, 16.144419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.529871, 40.954445, 16.147863>,  <27.165575, 40.789352, 16.153603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529871, 40.954445, 16.147863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256217, -0.537440, 0.803437,
		0.323890, -0.735399, -0.595217,
		0.910741, 0.412730, -0.014350,
		27.803093, 41.078262, 16.143559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608484, 40.238342, 16.332222>,  <27.165575, 40.789352, 16.153603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608484, 40.238342, 16.332222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.846689, 40.552502, 16.399763>,  <27.989613, 40.740997, 16.440289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.846689, 40.552502, 16.399763>,  <27.608484, 40.238342, 16.332222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846689, 40.552502, 16.399763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482731, -0.517860, 0.706252,
		0.642132, -0.339072, -0.687529,
		0.595514, 0.785398, 0.168855,
		28.025343, 40.788120, 16.450420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262514, 40.027996, 16.501783>,  <27.608484, 40.238342, 16.332222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262514, 40.027996, 16.501783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208727, 40.382301, 16.679474>,  <28.176455, 40.594887, 16.786087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208727, 40.382301, 16.679474>,  <28.262514, 40.027996, 16.501783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208727, 40.382301, 16.679474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427552, -0.352558, 0.832408,
		0.893934, 0.301859, -0.331304,
		-0.134466, 0.885768, 0.444224,
		28.168386, 40.648033, 16.812740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929907, 40.237148, 16.810001>,  <28.262514, 40.027996, 16.501783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929907, 40.237148, 16.810001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.673252, 40.449490, 17.031448>,  <28.519258, 40.576897, 17.164316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.673252, 40.449490, 17.031448>,  <28.929907, 40.237148, 16.810001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673252, 40.449490, 17.031448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533505, -0.209686, 0.819393,
		0.551066, 0.821111, -0.148672,
		-0.641638, 0.530856, 0.553618,
		28.480761, 40.608746, 17.197535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356028, 40.704659, 17.106480>,  <28.929907, 40.237148, 16.810001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356028, 40.704659, 17.106480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.022745, 40.624790, 17.312742>,  <28.822777, 40.576870, 17.436501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.022745, 40.624790, 17.312742>,  <29.356028, 40.704659, 17.106480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022745, 40.624790, 17.312742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552480, -0.339669, 0.761177,
		0.023171, 0.919107, 0.393326,
		-0.833204, -0.199668, 0.515658,
		28.772783, 40.564888, 17.467440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534578, 40.868061, 17.784637>,  <29.356028, 40.704659, 17.106480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534578, 40.868061, 17.784637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197351, 40.663200, 17.850290>,  <28.995014, 40.540283, 17.889681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197351, 40.663200, 17.850290>,  <29.534578, 40.868061, 17.784637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197351, 40.663200, 17.850290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377652, -0.346484, 0.858678,
		-0.382901, 0.785909, 0.485524,
		-0.843069, -0.512147, 0.164131,
		28.944431, 40.509556, 17.899530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204229, 41.030064, 18.523169>,  <29.534578, 40.868061, 17.784637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204229, 41.030064, 18.523169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109709, 40.660343, 18.403278>,  <29.052996, 40.438511, 18.331345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109709, 40.660343, 18.403278>,  <29.204229, 41.030064, 18.523169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109709, 40.660343, 18.403278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241197, -0.354603, 0.903372,
		-0.941268, 0.141177, 0.306731,
		-0.236303, -0.924297, -0.299725,
		29.038818, 40.383053, 18.313360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946539, 40.701542, 19.127392>,  <29.204229, 41.030064, 18.523169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946539, 40.701542, 19.127392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019537, 40.376911, 18.905390>,  <29.063335, 40.182133, 18.772188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019537, 40.376911, 18.905390>,  <28.946539, 40.701542, 19.127392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019537, 40.376911, 18.905390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143699, -0.536407, 0.831636,
		-0.972649, -0.231523, 0.018732,
		0.182495, -0.811581, -0.555006,
		29.074286, 40.133438, 18.738888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505806, 40.073967, 19.358402>,  <28.946539, 40.701542, 19.127392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505806, 40.073967, 19.358402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792997, 39.912437, 19.131622>,  <28.965313, 39.815521, 18.995554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792997, 39.912437, 19.131622>,  <28.505806, 40.073967, 19.358402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792997, 39.912437, 19.131622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041400, -0.788292, 0.613906,
		-0.694831, -0.464244, -0.549261,
		0.717980, -0.403822, -0.566950,
		29.008390, 39.791290, 18.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331217, 39.301464, 19.193676>,  <28.505806, 40.073967, 19.358402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331217, 39.301464, 19.193676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.728481, 39.338402, 19.165091>,  <28.966839, 39.360565, 19.147940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.728481, 39.338402, 19.165091>,  <28.331217, 39.301464, 19.193676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728481, 39.338402, 19.165091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116338, -0.730305, 0.673142,
		0.009971, -0.676851, -0.736052,
		0.993159, 0.092342, -0.071461,
		29.026430, 39.366104, 19.143652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574574, 38.572342, 19.175842>,  <28.331217, 39.301464, 19.193676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574574, 38.572342, 19.175842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.883953, 38.796890, 19.293581>,  <29.069580, 38.931622, 19.364223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.883953, 38.796890, 19.293581>,  <28.574574, 38.572342, 19.175842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883953, 38.796890, 19.293581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161491, -0.623565, 0.764910,
		0.612943, -0.544083, -0.572951,
		0.773447, 0.561373, 0.294346,
		29.115988, 38.965302, 19.381886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153265, 38.108734, 19.286697>,  <28.574574, 38.572342, 19.175842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153265, 38.108734, 19.286697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325151, 38.427326, 19.456860>,  <29.428284, 38.618481, 19.558956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325151, 38.427326, 19.456860>,  <29.153265, 38.108734, 19.286697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325151, 38.427326, 19.456860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257718, -0.559707, 0.787597,
		0.865405, -0.228809, -0.445781,
		0.429716, 0.796476, 0.425405,
		29.454067, 38.666267, 19.584480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738098, 37.829205, 19.554054>,  <29.153265, 38.108734, 19.286697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738098, 37.829205, 19.554054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711630, 38.170326, 19.761263>,  <29.695749, 38.375000, 19.885588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711630, 38.170326, 19.761263>,  <29.738098, 37.829205, 19.554054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711630, 38.170326, 19.761263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453736, -0.436662, 0.776821,
		0.888676, 0.286449, -0.358053,
		-0.066172, 0.852803, 0.518023,
		29.691778, 38.426167, 19.916670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427795, 37.865948, 19.825054>,  <29.738098, 37.829205, 19.554054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427795, 37.865948, 19.825054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199377, 38.096062, 20.059305>,  <30.062326, 38.234131, 20.199856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199377, 38.096062, 20.059305>,  <30.427795, 37.865948, 19.825054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199377, 38.096062, 20.059305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640584, -0.133859, 0.756130,
		0.513381, 0.806926, -0.292078,
		-0.571044, 0.575284, 0.585625,
		30.028065, 38.268646, 20.234993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.406139, 37.953190, 23.279940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.071320, 38.119942, 23.421677>,  <34.870426, 38.219994, 23.506718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.071320, 38.119942, 23.421677>,  <35.406139, 37.953190, 23.279940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071320, 38.119942, 23.421677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358262, -0.071856, 0.930852,
		0.413514, 0.906117, -0.089205,
		-0.837051, 0.416879, 0.354341,
		34.820206, 38.245007, 23.527979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625652, 38.323185, 23.847311>,  <35.406139, 37.953190, 23.279940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625652, 38.323185, 23.847311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.233143, 38.284618, 23.914007>,  <34.997635, 38.261478, 23.954025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.233143, 38.284618, 23.914007>,  <35.625652, 38.323185, 23.847311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233143, 38.284618, 23.914007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184989, -0.230710, 0.955276,
		-0.053633, 0.968234, 0.244225,
		-0.981276, -0.096413, 0.166739,
		34.938759, 38.255695, 23.964029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470379, 38.767384, 24.398621>,  <35.625652, 38.323185, 23.847311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470379, 38.767384, 24.398621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194267, 38.478920, 24.375170>,  <35.028599, 38.305840, 24.361099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194267, 38.478920, 24.375170>,  <35.470379, 38.767384, 24.398621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194267, 38.478920, 24.375170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265265, -0.327623, 0.906806,
		-0.673161, 0.610400, 0.417451,
		-0.690281, -0.721162, -0.058625,
		34.987183, 38.262573, 24.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164074, 38.760372, 25.054987>,  <35.470379, 38.767384, 24.398621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164074, 38.760372, 25.054987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.102932, 38.411205, 24.869667>,  <35.066246, 38.201706, 24.758474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.102932, 38.411205, 24.869667>,  <35.164074, 38.760372, 25.054987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102932, 38.411205, 24.869667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214162, -0.486928, 0.846780,
		-0.964764, 0.030217, 0.261377,
		-0.152859, -0.872919, -0.463299,
		35.057076, 38.149330, 24.730677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797760, 38.471336, 25.620098>,  <35.164074, 38.760372, 25.054987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797760, 38.471336, 25.620098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894455, 38.179848, 25.363810>,  <34.952473, 38.004955, 25.210035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894455, 38.179848, 25.363810>,  <34.797760, 38.471336, 25.620098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894455, 38.179848, 25.363810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088003, -0.641121, 0.762377,
		-0.966344, -0.240677, -0.090850,
		0.241733, -0.728724, -0.640724,
		34.966976, 37.961231, 25.171593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359528, 37.878155, 25.834002>,  <34.797760, 38.471336, 25.620098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359528, 37.878155, 25.834002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.673264, 37.738125, 25.629158>,  <34.861507, 37.654106, 25.506252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.673264, 37.738125, 25.629158>,  <34.359528, 37.878155, 25.834002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673264, 37.738125, 25.629158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275492, -0.543085, 0.793198,
		-0.555799, -0.763219, -0.329521,
		0.784342, -0.350079, -0.512107,
		34.908566, 37.633102, 25.475527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276958, 37.065918, 25.801777>,  <34.359528, 37.878155, 25.834002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276958, 37.065918, 25.801777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.652824, 37.175831, 25.720270>,  <34.878345, 37.241779, 25.671366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.652824, 37.175831, 25.720270>,  <34.276958, 37.065918, 25.801777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652824, 37.175831, 25.720270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334983, -0.618304, 0.710975,
		0.069372, -0.736339, -0.673047,
		0.939667, 0.274781, -0.203768,
		34.934723, 37.258266, 25.659140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510052, 36.526836, 25.960678>,  <34.276958, 37.065918, 25.801777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510052, 36.526836, 25.960678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.839611, 36.753017, 25.945417>,  <35.037346, 36.888725, 25.936260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.839611, 36.753017, 25.945417>,  <34.510052, 36.526836, 25.960678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839611, 36.753017, 25.945417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364849, -0.477680, 0.799192,
		0.433683, -0.672370, -0.599864,
		0.823895, 0.565456, -0.038151,
		35.086781, 36.922653, 25.933971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132710, 36.141468, 26.015965>,  <34.510052, 36.526836, 25.960678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132710, 36.141468, 26.015965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.263256, 36.500347, 26.134968>,  <35.341583, 36.715675, 26.206369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.263256, 36.500347, 26.134968>,  <35.132710, 36.141468, 26.015965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263256, 36.500347, 26.134968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370222, -0.410930, 0.833110,
		0.869723, -0.161758, -0.466280,
		0.326370, 0.897202, 0.297509,
		35.361168, 36.769508, 26.224220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865185, 36.137909, 26.091625>,  <35.132710, 36.141468, 26.015965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865185, 36.137909, 26.091625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.718353, 36.415573, 26.339300>,  <35.630253, 36.582172, 26.487906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.718353, 36.415573, 26.339300>,  <35.865185, 36.137909, 26.091625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718353, 36.415573, 26.339300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423815, -0.467741, 0.775628,
		0.828030, 0.547138, -0.122497,
		-0.367079, 0.694160, 0.619189,
		35.608231, 36.623821, 26.525057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367752, 36.263485, 26.577820>,  <35.865185, 36.137909, 26.091625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367752, 36.263485, 26.577820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.050529, 36.438122, 26.747740>,  <35.860195, 36.542904, 26.849691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.050529, 36.438122, 26.747740>,  <36.367752, 36.263485, 26.577820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050529, 36.438122, 26.747740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311967, -0.307871, 0.898828,
		0.523202, 0.845343, 0.107957,
		-0.793055, 0.436590, 0.424798,
		35.812614, 36.569099, 26.875179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561497, 36.290203, 27.225758>,  <36.367752, 36.263485, 26.577820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561497, 36.290203, 27.225758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.179775, 36.406689, 27.252611>,  <35.950745, 36.476578, 27.268724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.179775, 36.406689, 27.252611>,  <36.561497, 36.290203, 27.225758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179775, 36.406689, 27.252611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003108, -0.234308, 0.972157,
		0.298833, 0.927522, 0.224506,
		-0.954300, 0.291210, 0.067136,
		35.893486, 36.494053, 27.272753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423023, 36.849777, 27.787771>,  <36.561497, 36.290203, 27.225758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423023, 36.849777, 27.787771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109673, 36.607563, 27.731707>,  <35.921661, 36.462234, 27.698067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109673, 36.607563, 27.731707>,  <36.423023, 36.849777, 27.787771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109673, 36.607563, 27.731707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114576, -0.362329, 0.924981,
		-0.610895, 0.708549, 0.353220,
		-0.783377, -0.605537, -0.140163,
		35.874660, 36.425903, 27.689657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076378, 36.753788, 28.434246>,  <36.423023, 36.849777, 27.787771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076378, 36.753788, 28.434246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.944794, 36.435181, 28.231329>,  <35.865841, 36.244019, 28.109579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.944794, 36.435181, 28.231329>,  <36.076378, 36.753788, 28.434246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944794, 36.435181, 28.231329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187721, -0.581629, 0.791498,
		-0.925497, 0.165144, 0.340857,
		-0.328964, -0.796515, -0.507294,
		35.846104, 36.196228, 28.079140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157478, 37.401867, 28.924805>,  <36.076378, 36.753788, 28.434246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157478, 37.401867, 28.924805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221115, 37.725647, 29.150894>,  <36.259296, 37.919914, 29.286549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221115, 37.725647, 29.150894>,  <36.157478, 37.401867, 28.924805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221115, 37.725647, 29.150894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306849, 0.584704, -0.750976,
		-0.938367, -0.053962, 0.341402,
		0.159095, 0.809450, 0.565225,
		36.268845, 37.968483, 29.320461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575455, 37.831520, 28.965519>,  <36.157478, 37.401867, 28.924805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575455, 37.831520, 28.965519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875561, 38.091732, 29.012693>,  <36.055626, 38.247860, 29.040998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875561, 38.091732, 29.012693>,  <35.575455, 37.831520, 28.965519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875561, 38.091732, 29.012693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272636, 0.466936, -0.841214,
		-0.602306, 0.598980, 0.527685,
		0.750265, 0.650534, 0.117934,
		36.100639, 38.286892, 29.048073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253586, 38.457470, 28.878315>,  <35.575455, 37.831520, 28.965519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253586, 38.457470, 28.878315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.647583, 38.510513, 28.834137>,  <35.883984, 38.542339, 28.807631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.647583, 38.510513, 28.834137>,  <35.253586, 38.457470, 28.878315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647583, 38.510513, 28.834137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168441, 0.599505, -0.782446,
		-0.037546, 0.789309, 0.612847,
		0.984996, 0.132606, -0.110443,
		35.943081, 38.550297, 28.801004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328190, 39.115444, 28.793201>,  <35.253586, 38.457470, 28.878315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328190, 39.115444, 28.793201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645935, 38.965504, 28.602001>,  <35.836582, 38.875542, 28.487282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645935, 38.965504, 28.602001>,  <35.328190, 39.115444, 28.793201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645935, 38.965504, 28.602001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166946, 0.621878, -0.765112,
		0.584058, 0.687574, 0.431415,
		0.794358, -0.374847, -0.478001,
		35.884243, 38.853050, 28.458601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693295, 39.682549, 28.630547>,  <35.328190, 39.115444, 28.793201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693295, 39.682549, 28.630547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.855450, 39.415268, 28.381014>,  <35.952744, 39.254898, 28.231295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.855450, 39.415268, 28.381014>,  <35.693295, 39.682549, 28.630547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855450, 39.415268, 28.381014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273241, 0.562653, -0.780231,
		0.872354, 0.486752, 0.045513,
		0.405387, -0.668202, -0.623833,
		35.977066, 39.214806, 28.193863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111645, 40.005226, 28.140009>,  <35.693295, 39.682549, 28.630547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111645, 40.005226, 28.140009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.039696, 39.659027, 27.953003>,  <35.996529, 39.451309, 27.840799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.039696, 39.659027, 27.953003>,  <36.111645, 40.005226, 28.140009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039696, 39.659027, 27.953003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164058, 0.495002, -0.853263,
		0.969913, -0.076776, -0.231027,
		-0.179869, -0.865493, -0.467513,
		35.985733, 39.399380, 27.812750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375332, 40.105465, 27.575441>,  <36.111645, 40.005226, 28.140009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375332, 40.105465, 27.575441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.175274, 39.770111, 27.488758>,  <36.055241, 39.568897, 27.436749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.175274, 39.770111, 27.488758>,  <36.375332, 40.105465, 27.575441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175274, 39.770111, 27.488758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265234, 0.386544, -0.883309,
		0.824322, -0.384304, -0.415696,
		-0.500144, -0.838388, -0.216706,
		36.025230, 39.518593, 27.423746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551453, 39.918312, 26.867371>,  <36.375332, 40.105465, 27.575441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551453, 39.918312, 26.867371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198124, 39.744865, 26.938606>,  <35.986126, 39.640797, 26.981348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198124, 39.744865, 26.938606>,  <36.551453, 39.918312, 26.867371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198124, 39.744865, 26.938606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357562, 0.377582, -0.854155,
		0.303129, -0.818175, -0.488571,
		-0.883325, -0.433614, 0.178092,
		35.933128, 39.614780, 26.992033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408680, 39.548111, 26.272297>,  <36.551453, 39.918312, 26.867371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408680, 39.548111, 26.272297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056698, 39.590546, 26.457523>,  <35.845509, 39.616005, 26.568659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056698, 39.590546, 26.457523>,  <36.408680, 39.548111, 26.272297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056698, 39.590546, 26.457523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403858, 0.346256, -0.846762,
		-0.250170, -0.932123, -0.261844,
		-0.879951, 0.106087, 0.463068,
		35.792713, 39.622372, 26.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862129, 39.293709, 25.773903>,  <36.408680, 39.548111, 26.272297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862129, 39.293709, 25.773903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.640125, 39.507973, 26.028471>,  <35.506924, 39.636532, 26.181211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.640125, 39.507973, 26.028471>,  <35.862129, 39.293709, 25.773903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640125, 39.507973, 26.028471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394478, 0.504092, -0.768296,
		-0.732358, -0.677468, -0.068472,
		-0.555012, 0.535657, 0.636422,
		35.473621, 39.668671, 26.219398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282932, 39.282261, 25.509727>,  <35.862129, 39.293709, 25.773903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282932, 39.282261, 25.509727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249725, 39.595467, 25.756306>,  <35.229801, 39.783390, 25.904253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249725, 39.595467, 25.756306>,  <35.282932, 39.282261, 25.509727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249725, 39.595467, 25.756306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443058, 0.525082, -0.726628,
		-0.892641, -0.333443, 0.303328,
		-0.083016, 0.783010, 0.616445,
		35.224819, 39.830368, 25.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624756, 39.478786, 25.458561>,  <35.282932, 39.282261, 25.509727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624756, 39.478786, 25.458561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829716, 39.791588, 25.600496>,  <34.952690, 39.979271, 25.685658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829716, 39.791588, 25.600496>,  <34.624756, 39.478786, 25.458561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829716, 39.791588, 25.600496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594113, 0.621175, -0.511050,
		-0.620063, 0.051046, 0.782890,
		0.512399, 0.782008, 0.354840,
		34.983437, 40.026192, 25.706949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034107, 39.961754, 25.670349>,  <34.624756, 39.478786, 25.458561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034107, 39.961754, 25.670349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.370884, 40.171513, 25.619514>,  <34.572948, 40.297367, 25.589014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.370884, 40.171513, 25.619514>,  <34.034107, 39.961754, 25.670349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370884, 40.171513, 25.619514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518299, 0.720496, -0.460708,
		-0.150026, 0.453757, 0.878406,
		0.841938, 0.524395, -0.127089,
		34.623466, 40.328831, 25.581388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846535, 40.623859, 25.889389>,  <34.034107, 39.961754, 25.670349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846535, 40.623859, 25.889389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158943, 40.646748, 25.640638>,  <34.346390, 40.660480, 25.491388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158943, 40.646748, 25.640638>,  <33.846535, 40.623859, 25.889389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158943, 40.646748, 25.640638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517883, 0.615843, -0.593747,
		0.349001, 0.785788, 0.510622,
		0.781022, 0.057224, -0.621876,
		34.393250, 40.663914, 25.454075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411179, 41.224388, 26.130169>,  <33.846535, 40.623859, 25.889389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411179, 41.224388, 26.130169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.118618, 41.491734, 26.184351>,  <32.943081, 41.652142, 26.216860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.118618, 41.491734, 26.184351>,  <33.411179, 41.224388, 26.130169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118618, 41.491734, 26.184351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214936, -0.414432, 0.884335,
		0.647193, 0.617687, 0.446770,
		-0.731398, 0.668362, 0.135455,
		32.899197, 41.692242, 26.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480892, 41.603283, 26.753080>,  <33.411179, 41.224388, 26.130169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480892, 41.603283, 26.753080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.089870, 41.594887, 26.669220>,  <32.855259, 41.589851, 26.618904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.089870, 41.594887, 26.669220>,  <33.480892, 41.603283, 26.753080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089870, 41.594887, 26.669220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176531, -0.461621, 0.869335,
		-0.115023, 0.886829, 0.447553,
		-0.977551, -0.020987, -0.209650,
		32.796604, 41.588593, 26.606325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168106, 41.797581, 27.344162>,  <33.480892, 41.603283, 26.753080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168106, 41.797581, 27.344162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.907944, 41.583046, 27.129009>,  <32.751846, 41.454323, 26.999918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.907944, 41.583046, 27.129009>,  <33.168106, 41.797581, 27.344162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907944, 41.583046, 27.129009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117883, -0.628269, 0.769013,
		-0.750387, 0.563575, 0.345403,
		-0.650403, -0.536340, -0.537881,
		32.712822, 41.422146, 26.967646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929802, 41.409615, 27.875908>,  <33.168106, 41.797581, 27.344162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929802, 41.409615, 27.875908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.741291, 41.212597, 27.583252>,  <32.628185, 41.094387, 27.407660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.741291, 41.212597, 27.583252>,  <32.929802, 41.409615, 27.875908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741291, 41.212597, 27.583252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201418, -0.747512, 0.632974,
		-0.858677, 0.445673, 0.253080,
		-0.471280, -0.492545, -0.731638,
		32.599907, 41.064835, 27.363760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215378, 41.253250, 28.040489>,  <32.929802, 41.409615, 27.875908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215378, 41.253250, 28.040489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.277588, 40.995323, 27.741150>,  <32.314915, 40.840569, 27.561546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.277588, 40.995323, 27.741150>,  <32.215378, 41.253250, 28.040489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277588, 40.995323, 27.741150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382016, -0.737886, 0.556407,
		-0.910976, 0.199347, -0.361087,
		0.155523, -0.644814, -0.748350,
		32.324245, 40.801880, 27.516645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643038, 40.882313, 28.033480>,  <32.215378, 41.253250, 28.040489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643038, 40.882313, 28.033480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.900368, 40.648628, 27.835558>,  <32.054764, 40.508419, 27.716805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.900368, 40.648628, 27.835558>,  <31.643038, 40.882313, 28.033480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900368, 40.648628, 27.835558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330508, -0.794902, 0.508819,
		-0.690579, -0.163798, -0.704465,
		0.643324, -0.584210, -0.494805,
		32.093365, 40.473366, 27.687117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245852, 40.276119, 27.745457>,  <31.643038, 40.882313, 28.033480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245852, 40.276119, 27.745457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.620768, 40.138615, 27.768497>,  <31.845716, 40.056114, 27.782322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.620768, 40.138615, 27.768497>,  <31.245852, 40.276119, 27.745457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620768, 40.138615, 27.768497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330314, -0.823270, 0.461648,
		-0.111272, -0.451726, -0.885191,
		0.937289, -0.343760, 0.057604,
		31.901955, 40.035488, 27.785778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172186, 39.616329, 27.595875>,  <31.245852, 40.276119, 27.745457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172186, 39.616329, 27.595875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.526224, 39.617065, 27.782038>,  <31.738647, 39.617508, 27.893736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.526224, 39.617065, 27.782038>,  <31.172186, 39.616329, 27.595875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526224, 39.617065, 27.782038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247453, -0.845075, 0.473935,
		0.394176, -0.534644, -0.747517,
		0.885094, 0.001838, 0.465407,
		31.791752, 39.617619, 27.921659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368521, 38.941315, 27.639992>,  <31.172186, 39.616329, 27.595875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368521, 38.941315, 27.639992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.613621, 39.092739, 27.917475>,  <31.760681, 39.183594, 28.083963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.613621, 39.092739, 27.917475>,  <31.368521, 38.941315, 27.639992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613621, 39.092739, 27.917475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173853, -0.791724, 0.585618,
		0.770918, -0.479439, -0.419313,
		0.612748, 0.378565, 0.693706,
		31.797445, 39.206310, 28.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758905, 38.363968, 27.877781>,  <31.368521, 38.941315, 27.639992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758905, 38.363968, 27.877781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.755562, 38.642445, 28.164902>,  <31.753555, 38.809532, 28.337175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.755562, 38.642445, 28.164902>,  <31.758905, 38.363968, 27.877781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755562, 38.642445, 28.164902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129978, -0.712495, 0.689534,
		0.991482, -0.087536, 0.096445,
		-0.008358, 0.696196, 0.717803,
		31.753054, 38.851303, 28.380243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120602, 38.009979, 28.405264>,  <31.758905, 38.363968, 27.877781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120602, 38.009979, 28.405264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.922918, 38.302773, 28.592863>,  <31.804308, 38.478447, 28.705423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.922918, 38.302773, 28.592863>,  <32.120602, 38.009979, 28.405264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922918, 38.302773, 28.592863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207989, -0.623375, 0.753754,
		0.844097, 0.274964, 0.460321,
		-0.494208, 0.731983, 0.468999,
		31.774656, 38.522366, 28.733562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643841, 38.204044, 28.957031>,  <32.120602, 38.009979, 28.405264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643841, 38.204044, 28.957031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.291481, 38.353027, 29.073853>,  <32.080067, 38.442417, 29.143946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.291481, 38.353027, 29.073853>,  <32.643841, 38.204044, 28.957031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291481, 38.353027, 29.073853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187418, -0.292124, 0.937837,
		0.434624, 0.880873, 0.187525,
		-0.880895, 0.372461, 0.292055,
		32.027214, 38.464767, 29.161469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.593582, 43.736645, 23.024794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242775, 43.645847, 23.194178>,  <32.032291, 43.591370, 23.295807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242775, 43.645847, 23.194178>,  <32.593582, 43.736645, 23.024794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242775, 43.645847, 23.194178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472710, -0.249982, 0.845017,
		-0.085955, 0.941267, 0.326540,
		-0.877016, -0.226993, 0.423459,
		31.979670, 43.577751, 23.321215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498611, 44.210323, 23.587360>,  <32.593582, 43.736645, 23.024794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498611, 44.210323, 23.587360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291874, 43.875935, 23.661135>,  <32.167831, 43.675301, 23.705399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291874, 43.875935, 23.661135>,  <32.498611, 44.210323, 23.587360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291874, 43.875935, 23.661135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483335, -0.107134, 0.868855,
		-0.706582, 0.538208, 0.459428,
		-0.516845, -0.835975, 0.184436,
		32.136822, 43.625141, 23.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400597, 44.116890, 24.317156>,  <32.498611, 44.210323, 23.587360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400597, 44.116890, 24.317156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324894, 43.734051, 24.229391>,  <32.279472, 43.504345, 24.176733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324894, 43.734051, 24.229391>,  <32.400597, 44.116890, 24.317156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324894, 43.734051, 24.229391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266500, -0.265129, 0.926652,
		-0.945071, 0.116904, 0.305245,
		-0.189258, -0.957100, -0.219411,
		32.268116, 43.446922, 24.163568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987669, 43.833275, 24.951675>,  <32.400597, 44.116890, 24.317156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987669, 43.833275, 24.951675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140991, 43.546700, 24.718508>,  <32.232986, 43.374756, 24.578608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140991, 43.546700, 24.718508>,  <31.987669, 43.833275, 24.951675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140991, 43.546700, 24.718508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237693, -0.533351, 0.811812,
		-0.892513, -0.449728, -0.034145,
		0.383306, -0.716437, -0.582920,
		32.255981, 43.331768, 24.543633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784994, 43.226826, 25.251734>,  <31.987669, 43.833275, 24.951675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784994, 43.226826, 25.251734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095509, 43.105164, 25.030874>,  <32.281818, 43.032166, 24.898357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095509, 43.105164, 25.030874>,  <31.784994, 43.226826, 25.251734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095509, 43.105164, 25.030874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194848, -0.717231, 0.669040,
		-0.599512, -0.626951, -0.497511,
		0.776285, -0.304158, -0.552149,
		32.328392, 43.013916, 24.865229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706005, 42.521580, 25.203598>,  <31.784994, 43.226826, 25.251734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706005, 42.521580, 25.203598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085072, 42.596554, 25.100216>,  <32.312511, 42.641541, 25.038187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085072, 42.596554, 25.100216>,  <31.706005, 42.521580, 25.203598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085072, 42.596554, 25.100216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308575, -0.745493, 0.590780,
		-0.081942, -0.639614, -0.764316,
		0.947664, 0.187439, -0.258456,
		32.369370, 42.652786, 25.022678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944208, 41.857349, 24.970097>,  <31.706005, 42.521580, 25.203598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944208, 41.857349, 24.970097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235519, 42.104992, 25.087618>,  <32.410305, 42.253578, 25.158131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235519, 42.104992, 25.087618>,  <31.944208, 41.857349, 24.970097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235519, 42.104992, 25.087618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325619, -0.689873, 0.646566,
		0.602978, -0.375212, -0.704012,
		0.728279, 0.619105, 0.293802,
		32.454002, 42.290722, 25.175758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484623, 41.432789, 25.013464>,  <31.944208, 41.857349, 24.970097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484623, 41.432789, 25.013464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581161, 41.758629, 25.224436>,  <32.639084, 41.954132, 25.351019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581161, 41.758629, 25.224436>,  <32.484623, 41.432789, 25.013464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581161, 41.758629, 25.224436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174500, -0.571067, 0.802142,
		0.954622, -0.101555, -0.279971,
		0.241344, 0.814597, 0.527432,
		32.653564, 42.003010, 25.382666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127182, 41.251060, 25.365147>,  <32.484623, 41.432789, 25.013464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127182, 41.251060, 25.365147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948143, 41.558392, 25.548155>,  <32.840721, 41.742790, 25.657959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948143, 41.558392, 25.548155>,  <33.127182, 41.251060, 25.365147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948143, 41.558392, 25.548155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073101, -0.541357, 0.837609,
		0.891243, 0.341465, 0.298475,
		-0.447596, 0.768332, 0.457519,
		32.813866, 41.788891, 25.685411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786442, 41.589012, 25.184889>,  <33.127182, 41.251060, 25.365147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786442, 41.589012, 25.184889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059635, 41.348465, 25.019049>,  <34.223553, 41.204136, 24.919544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059635, 41.348465, 25.019049>,  <33.786442, 41.589012, 25.184889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059635, 41.348465, 25.019049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401566, 0.165006, -0.900843,
		0.610146, 0.781751, -0.128790,
		0.682984, -0.601363, -0.414602,
		34.264530, 41.168056, 24.894669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936119, 41.938614, 24.514545>,  <33.786442, 41.589012, 25.184889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936119, 41.938614, 24.514545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085171, 41.569382, 24.476463>,  <34.174603, 41.347843, 24.453615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085171, 41.569382, 24.476463>,  <33.936119, 41.938614, 24.514545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085171, 41.569382, 24.476463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234675, 0.005521, -0.972058,
		0.897816, 0.384562, -0.214567,
		0.372632, -0.923083, -0.095204,
		34.196960, 41.292458, 24.447903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404610, 41.996330, 24.017170>,  <33.936119, 41.938614, 24.514545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404610, 41.996330, 24.017170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309135, 41.608459, 24.038149>,  <34.251850, 41.375736, 24.050735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309135, 41.608459, 24.038149>,  <34.404610, 41.996330, 24.017170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309135, 41.608459, 24.038149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014132, -0.050533, -0.998622,
		0.970994, -0.239099, -0.001642,
		-0.238686, -0.969679, 0.052446,
		34.237530, 41.317554, 24.053883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840305, 41.554733, 23.522326>,  <34.404610, 41.996330, 24.017170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840305, 41.554733, 23.522326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491146, 41.375065, 23.598526>,  <34.281651, 41.267265, 23.644247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491146, 41.375065, 23.598526>,  <34.840305, 41.554733, 23.522326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491146, 41.375065, 23.598526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106935, -0.204826, -0.972939,
		0.476037, -0.869649, 0.130760,
		-0.872899, -0.449172, 0.190501,
		34.229275, 41.240314, 23.655676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838196, 41.028759, 22.947262>,  <34.840305, 41.554733, 23.522326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838196, 41.028759, 22.947262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469227, 41.014858, 23.101105>,  <34.247845, 41.006516, 23.193411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469227, 41.014858, 23.101105>,  <34.838196, 41.028759, 22.947262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469227, 41.014858, 23.101105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375538, -0.151387, -0.914359,
		0.090005, -0.987863, 0.126590,
		-0.922426, -0.034758, 0.384606,
		34.192497, 41.004433, 23.216486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449387, 40.505295, 22.534857>,  <34.838196, 41.028759, 22.947262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449387, 40.505295, 22.534857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192619, 40.756645, 22.710621>,  <34.038559, 40.907455, 22.816078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192619, 40.756645, 22.710621>,  <34.449387, 40.505295, 22.534857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192619, 40.756645, 22.710621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513679, 0.073038, -0.854868,
		-0.569273, -0.774473, 0.275899,
		-0.641921, 0.628377, 0.439409,
		34.000042, 40.945160, 22.842443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750511, 40.321053, 22.330286>,  <34.449387, 40.505295, 22.534857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750511, 40.321053, 22.330286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 40.697853, 22.461815>,  <33.707561, 40.923935, 22.540731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 40.697853, 22.461815>,  <33.750511, 40.321053, 22.330286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723667, 40.697853, 22.461815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352939, 0.285843, -0.890914,
		-0.933236, -0.175846, 0.313286,
		-0.067113, 0.942004, 0.328821,
		33.703533, 40.980453, 22.560461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036091, 40.582024, 22.082315>,  <33.750511, 40.321053, 22.330286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036091, 40.582024, 22.082315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294739, 40.879177, 22.151596>,  <33.449928, 41.057468, 22.193165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294739, 40.879177, 22.151596>,  <33.036091, 40.582024, 22.082315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294739, 40.879177, 22.151596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171867, 0.363105, -0.915760,
		-0.743196, 0.562383, 0.362470,
		0.646623, 0.742886, 0.173204,
		33.488724, 41.102043, 22.203558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654587, 41.103638, 21.805498>,  <33.036091, 40.582024, 22.082315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654587, 41.103638, 21.805498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027134, 41.246941, 21.831455>,  <33.250660, 41.332924, 21.847029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027134, 41.246941, 21.831455>,  <32.654587, 41.103638, 21.805498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027134, 41.246941, 21.831455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088274, 0.395116, -0.914380,
		-0.353224, 0.845893, 0.399622,
		0.931365, 0.358257, 0.064893,
		33.306545, 41.354416, 21.850924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679245, 41.770164, 21.594482>,  <32.654587, 41.103638, 21.805498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679245, 41.770164, 21.594482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064213, 41.670391, 21.551537>,  <33.295193, 41.610527, 21.525768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064213, 41.670391, 21.551537>,  <32.679245, 41.770164, 21.594482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064213, 41.670391, 21.551537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007181, 0.418601, -0.908142,
		0.271467, 0.873244, 0.404662,
		0.962421, -0.249436, -0.107366,
		33.352940, 41.595562, 21.519327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999752, 42.451351, 21.255816>,  <32.679245, 41.770164, 21.594482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999752, 42.451351, 21.255816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240925, 42.139835, 21.186583>,  <33.385628, 41.952927, 21.145042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240925, 42.139835, 21.186583>,  <32.999752, 42.451351, 21.255816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240925, 42.139835, 21.186583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096784, 0.286754, -0.953103,
		0.791897, 0.557908, 0.248268,
		0.602936, -0.778788, -0.173082,
		33.421806, 41.906200, 21.134657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392380, 42.740643, 20.821320>,  <32.999752, 42.451351, 21.255816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392380, 42.740643, 20.821320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483246, 42.356941, 20.754107>,  <33.537766, 42.126720, 20.713779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483246, 42.356941, 20.754107>,  <33.392380, 42.740643, 20.821320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483246, 42.356941, 20.754107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138644, 0.202642, -0.969389,
		0.963936, 0.196919, 0.179028,
		0.227170, -0.959249, -0.168032,
		33.551395, 42.069168, 20.703697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952480, 42.806801, 20.308134>,  <33.392380, 42.740643, 20.821320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952480, 42.806801, 20.308134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835709, 42.425617, 20.275522>,  <33.765644, 42.196907, 20.255955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835709, 42.425617, 20.275522>,  <33.952480, 42.806801, 20.308134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835709, 42.425617, 20.275522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015136, 0.089838, -0.995841,
		0.956320, -0.289481, -0.040650,
		-0.291929, -0.952959, -0.081532,
		33.748131, 42.139729, 20.251062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421646, 42.494423, 19.796650>,  <33.952480, 42.806801, 20.308134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421646, 42.494423, 19.796650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081161, 42.289124, 19.840485>,  <33.876869, 42.165943, 19.866785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081161, 42.289124, 19.840485>,  <34.421646, 42.494423, 19.796650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081161, 42.289124, 19.840485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167202, 0.067283, -0.983624,
		0.497473, -0.855597, -0.143089,
		-0.851213, -0.513252, 0.109586,
		33.825798, 42.135147, 19.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.572355, 39.702053, 20.724600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.829784, 40.000969, 20.790779>,  <26.984241, 40.180317, 20.830486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.829784, 40.000969, 20.790779>,  <26.572355, 39.702053, 20.724600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829784, 40.000969, 20.790779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475843, -0.559965, 0.678243,
		0.599488, -0.357772, -0.715970,
		0.643574, 0.747287, 0.165449,
		27.022856, 40.225155, 20.840414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246092, 39.449440, 20.633965>,  <26.572355, 39.702053, 20.724600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246092, 39.449440, 20.633965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.289707, 39.761227, 20.880714>,  <27.315876, 39.948299, 21.028765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.289707, 39.761227, 20.880714>,  <27.246092, 39.449440, 20.633965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289707, 39.761227, 20.880714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390437, -0.604286, 0.694548,
		0.914150, 0.165119, -0.370224,
		0.109038, 0.779470, 0.616877,
		27.322418, 39.995068, 21.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851643, 39.188755, 20.990171>,  <27.246092, 39.449440, 20.633965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851643, 39.188755, 20.990171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.682114, 39.482719, 21.201937>,  <27.580397, 39.659100, 21.328995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.682114, 39.482719, 21.201937>,  <27.851643, 39.188755, 20.990171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682114, 39.482719, 21.201937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321248, -0.424536, 0.846504,
		0.846862, 0.528839, -0.056162,
		-0.423822, 0.734914, 0.529412,
		27.554968, 39.703194, 21.360760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371723, 39.343990, 21.343559>,  <27.851643, 39.188755, 20.990171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371723, 39.343990, 21.343559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.039162, 39.455723, 21.535700>,  <27.839624, 39.522762, 21.650984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.039162, 39.455723, 21.535700>,  <28.371723, 39.343990, 21.343559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039162, 39.455723, 21.535700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357760, -0.392364, 0.847383,
		0.425176, 0.876369, 0.226279,
		-0.831404, 0.279334, 0.480354,
		27.789740, 39.539524, 21.679806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634233, 39.439430, 21.968636>,  <28.371723, 39.343990, 21.343559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634233, 39.439430, 21.968636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.241505, 39.404583, 22.036091>,  <28.005867, 39.383675, 22.076563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.241505, 39.404583, 22.036091>,  <28.634233, 39.439430, 21.968636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241505, 39.404583, 22.036091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189061, -0.527650, 0.828155,
		0.016836, 0.844983, 0.534528,
		-0.981821, -0.087116, 0.168637,
		27.946959, 39.378448, 22.086681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564297, 39.437366, 22.680531>,  <28.634233, 39.439430, 21.968636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564297, 39.437366, 22.680531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.200817, 39.311344, 22.570982>,  <27.982729, 39.235733, 22.505253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.200817, 39.311344, 22.570982>,  <28.564297, 39.437366, 22.680531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200817, 39.311344, 22.570982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054853, -0.560258, 0.826500,
		-0.413829, 0.766064, 0.491825,
		-0.908701, -0.315052, -0.273872,
		27.928207, 39.216827, 22.488821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012043, 39.743660, 23.098904>,  <28.564297, 39.437366, 22.680531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012043, 39.743660, 23.098904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.940571, 39.380817, 22.946470>,  <27.897688, 39.163113, 22.855009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.940571, 39.380817, 22.946470>,  <28.012043, 39.743660, 23.098904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940571, 39.380817, 22.946470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082709, -0.372100, 0.924500,
		-0.980425, 0.196710, -0.008538,
		-0.178681, -0.907109, -0.381086,
		27.886967, 39.108685, 22.832144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607693, 39.365223, 23.612791>,  <28.012043, 39.743660, 23.098904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607693, 39.365223, 23.612791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.728460, 39.075603, 23.364725>,  <27.800920, 38.901833, 23.215885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.728460, 39.075603, 23.364725>,  <27.607693, 39.365223, 23.612791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728460, 39.075603, 23.364725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098512, -0.623344, 0.775717,
		-0.948230, -0.295299, -0.116874,
		0.301921, -0.724045, -0.620164,
		27.819036, 38.858391, 23.178677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336483, 38.725601, 23.911406>,  <27.607693, 39.365223, 23.612791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336483, 38.725601, 23.911406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.648661, 38.633911, 23.678732>,  <27.835968, 38.578896, 23.539127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.648661, 38.633911, 23.678732>,  <27.336483, 38.725601, 23.911406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648661, 38.633911, 23.678732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344145, -0.619243, 0.705764,
		-0.521983, -0.750996, -0.404399,
		0.780447, -0.229225, -0.581686,
		27.882795, 38.565144, 23.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463308, 38.076988, 24.110302>,  <27.336483, 38.725601, 23.911406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463308, 38.076988, 24.110302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799194, 38.195717, 23.928413>,  <28.000727, 38.266956, 23.819281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799194, 38.195717, 23.928413>,  <27.463308, 38.076988, 24.110302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799194, 38.195717, 23.928413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536642, -0.581613, 0.611344,
		-0.083008, -0.757378, -0.647679,
		0.839717, 0.296825, -0.454720,
		28.051109, 38.284763, 23.791998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826393, 37.477737, 24.045530>,  <27.463308, 38.076988, 24.110302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826393, 37.477737, 24.045530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.109526, 37.758469, 24.013508>,  <28.279406, 37.926907, 23.994293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.109526, 37.758469, 24.013508>,  <27.826393, 37.477737, 24.045530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109526, 37.758469, 24.013508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637222, -0.585511, 0.501124,
		0.304828, -0.405727, -0.861664,
		0.707833, 0.701828, -0.080058,
		28.321877, 37.969017, 23.989491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512405, 37.104542, 23.882214>,  <27.826393, 37.477737, 24.045530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512405, 37.104542, 23.882214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.588066, 37.464451, 24.039505>,  <28.633463, 37.680397, 24.133879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.588066, 37.464451, 24.039505>,  <28.512405, 37.104542, 23.882214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588066, 37.464451, 24.039505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539810, -0.429797, 0.723796,
		0.820261, 0.075361, -0.567003,
		0.189150, 0.899775, 0.393226,
		28.644812, 37.734383, 24.157473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240637, 37.012756, 24.042118>,  <28.512405, 37.104542, 23.882214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240637, 37.012756, 24.042118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.112200, 37.342308, 24.228933>,  <29.035137, 37.540039, 24.341022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.112200, 37.342308, 24.228933>,  <29.240637, 37.012756, 24.042118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112200, 37.342308, 24.228933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275565, -0.390536, 0.878377,
		0.906070, 0.410742, -0.101633,
		-0.321095, 0.823877, 0.467039,
		29.015871, 37.589470, 24.369045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822159, 37.224483, 24.483208>,  <29.240637, 37.012756, 24.042118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822159, 37.224483, 24.483208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.483463, 37.378979, 24.629553>,  <29.280247, 37.471676, 24.717360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.483463, 37.378979, 24.629553>,  <29.822159, 37.224483, 24.483208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483463, 37.378979, 24.629553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278132, -0.264862, 0.923304,
		0.453518, 0.883555, 0.116844,
		-0.846737, 0.386237, 0.365865,
		29.229443, 37.494850, 24.739313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473680, 37.689888, 24.487314>,  <29.822159, 37.224483, 24.483208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473680, 37.689888, 24.487314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717615, 37.488121, 24.242802>,  <30.863976, 37.367062, 24.096094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717615, 37.488121, 24.242802>,  <30.473680, 37.689888, 24.487314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717615, 37.488121, 24.242802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466266, 0.395340, -0.791393,
		0.640856, 0.767639, 0.005900,
		0.609836, -0.504418, -0.611279,
		30.900566, 37.336796, 24.059418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824471, 38.238720, 24.016279>,  <30.473680, 37.689888, 24.487314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824471, 38.238720, 24.016279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.899929, 37.895466, 23.825277>,  <30.945204, 37.689514, 23.710676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.899929, 37.895466, 23.825277>,  <30.824471, 38.238720, 24.016279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899929, 37.895466, 23.825277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292482, 0.415073, -0.861492,
		0.937479, 0.302178, -0.172688,
		0.188646, -0.858139, -0.477504,
		30.956522, 37.638023, 23.682026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109493, 38.416588, 23.325842>,  <30.824471, 38.238720, 24.016279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109493, 38.416588, 23.325842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996906, 38.038944, 23.257214>,  <30.929354, 37.812359, 23.216038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996906, 38.038944, 23.257214>,  <31.109493, 38.416588, 23.325842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996906, 38.038944, 23.257214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177095, 0.226837, -0.957696,
		0.943087, -0.239177, -0.231044,
		-0.281469, -0.944107, -0.171569,
		30.912466, 37.755711, 23.205742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446842, 38.156384, 22.746187>,  <31.109493, 38.416588, 23.325842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446842, 38.156384, 22.746187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.128513, 37.914948, 22.765553>,  <30.937517, 37.770084, 22.777172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.128513, 37.914948, 22.765553>,  <31.446842, 38.156384, 22.746187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128513, 37.914948, 22.765553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132615, 0.095721, -0.986535,
		0.590833, -0.791524, -0.156222,
		-0.795820, -0.603595, 0.048413,
		30.889767, 37.733868, 22.780077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496876, 37.714687, 22.242245>,  <31.446842, 38.156384, 22.746187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496876, 37.714687, 22.242245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.104622, 37.720997, 22.320326>,  <30.869268, 37.724781, 22.367174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.104622, 37.720997, 22.320326>,  <31.496876, 37.714687, 22.242245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104622, 37.720997, 22.320326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193739, 0.067399, -0.978735,
		-0.028590, -0.997602, -0.063039,
		-0.980637, 0.015769, 0.195201,
		30.810431, 37.725727, 22.378887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177332, 37.396400, 21.722294>,  <31.496876, 37.714687, 22.242245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177332, 37.396400, 21.722294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866722, 37.577469, 21.897610>,  <30.680357, 37.686111, 22.002800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866722, 37.577469, 21.897610>,  <31.177332, 37.396400, 21.722294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866722, 37.577469, 21.897610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411107, 0.163150, -0.896868,
		-0.477497, -0.876623, 0.059408,
		-0.776523, 0.452675, 0.438290,
		30.633766, 37.713272, 22.029097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622051, 37.027103, 21.397564>,  <31.177332, 37.396400, 21.722294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622051, 37.027103, 21.397564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.500267, 37.383694, 21.531769>,  <30.427197, 37.597649, 21.612291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.500267, 37.383694, 21.531769>,  <30.622051, 37.027103, 21.397564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500267, 37.383694, 21.531769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286971, 0.250020, -0.924736,
		-0.908269, -0.377826, 0.179708,
		-0.304459, 0.891480, 0.335511,
		30.408930, 37.651138, 21.632421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900242, 37.052231, 21.239601>,  <30.622051, 37.027103, 21.397564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900242, 37.052231, 21.239601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.015760, 37.431160, 21.294987>,  <30.085072, 37.658516, 21.328218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.015760, 37.431160, 21.294987>,  <29.900242, 37.052231, 21.239601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015760, 37.431160, 21.294987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366869, 0.243091, -0.897950,
		-0.884309, 0.208527, 0.417748,
		0.288798, 0.947324, 0.138466,
		30.102400, 37.715359, 21.336527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283722, 37.564579, 21.143230>,  <29.900242, 37.052231, 21.239601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283722, 37.564579, 21.143230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620152, 37.780369, 21.127411>,  <29.822008, 37.909843, 21.117918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620152, 37.780369, 21.127411>,  <29.283722, 37.564579, 21.143230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620152, 37.780369, 21.127411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365244, 0.512460, -0.777163,
		-0.398992, 0.668095, 0.628056,
		0.841072, 0.539475, -0.039550,
		29.872473, 37.942211, 21.115545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021299, 38.228291, 21.128010>,  <29.283722, 37.564579, 21.143230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021299, 38.228291, 21.128010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.396130, 38.252468, 20.990469>,  <29.621029, 38.266975, 20.907944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.396130, 38.252468, 20.990469>,  <29.021299, 38.228291, 21.128010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396130, 38.252468, 20.990469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314553, 0.573483, -0.756422,
		0.151473, 0.816985, 0.556409,
		0.937077, 0.060443, -0.343852,
		29.677252, 38.270599, 20.887314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147038, 38.908226, 20.960245>,  <29.021299, 38.228291, 21.128010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147038, 38.908226, 20.960245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.425514, 38.736156, 20.730370>,  <29.592600, 38.632915, 20.592443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.425514, 38.736156, 20.730370>,  <29.147038, 38.908226, 20.960245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425514, 38.736156, 20.730370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182122, 0.668529, -0.721041,
		0.694369, 0.606646, 0.387080,
		0.696191, -0.430173, -0.574690,
		29.634371, 38.607105, 20.557962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585621, 39.454365, 20.669050>,  <29.147038, 38.908226, 20.960245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585621, 39.454365, 20.669050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614922, 39.140629, 20.422655>,  <29.632502, 38.952385, 20.274818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614922, 39.140629, 20.422655>,  <29.585621, 39.454365, 20.669050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614922, 39.140629, 20.422655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147405, 0.602348, -0.784506,
		0.986360, 0.148266, -0.071493,
		0.073252, -0.784343, -0.615987,
		29.636896, 38.905327, 20.237860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900162, 39.771938, 20.124987>,  <29.585621, 39.454365, 20.669050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900162, 39.771938, 20.124987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750975, 39.429390, 19.982147>,  <29.661463, 39.223862, 19.896442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750975, 39.429390, 19.982147>,  <29.900162, 39.771938, 20.124987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750975, 39.429390, 19.982147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202419, 0.450699, -0.869423,
		0.905495, -0.251983, -0.341443,
		-0.372968, -0.856373, -0.357100,
		29.639084, 39.172478, 19.875017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255848, 39.526409, 19.609497>,  <29.900162, 39.771938, 20.124987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255848, 39.526409, 19.609497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.904680, 39.350506, 19.533743>,  <29.693979, 39.244965, 19.488291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.904680, 39.350506, 19.533743>,  <30.255848, 39.526409, 19.609497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904680, 39.350506, 19.533743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036044, 0.455111, -0.889705,
		0.477449, -0.774263, -0.415401,
		-0.877920, -0.439762, -0.189385,
		29.641304, 39.218578, 19.476929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836176, 39.234287, 19.377678>,  <30.255848, 39.526409, 19.609497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836176, 39.234287, 19.377678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.214718, 39.270744, 19.253674>,  <31.441843, 39.292618, 19.179272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.214718, 39.270744, 19.253674>,  <30.836176, 39.234287, 19.377678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214718, 39.270744, 19.253674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300705, -0.599579, 0.741675,
		-0.118277, -0.795109, -0.594821,
		0.946355, 0.091142, -0.310010,
		31.498625, 39.298088, 19.160671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237299, 38.558952, 19.419353>,  <30.836176, 39.234287, 19.377678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237299, 38.558952, 19.419353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.476784, 38.878296, 19.445194>,  <31.620476, 39.069901, 19.460699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.476784, 38.878296, 19.445194>,  <31.237299, 38.558952, 19.419353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476784, 38.878296, 19.445194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480843, -0.422758, 0.768157,
		0.640572, -0.428843, -0.636994,
		0.598713, 0.798354, 0.064601,
		31.656397, 39.117802, 19.464575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786020, 38.288425, 19.710737>,  <31.237299, 38.558952, 19.419353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786020, 38.288425, 19.710737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907742, 38.668686, 19.734940>,  <31.980774, 38.896843, 19.749462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907742, 38.668686, 19.734940>,  <31.786020, 38.288425, 19.710737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907742, 38.668686, 19.734940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593662, -0.238939, 0.768423,
		0.744960, -0.197912, -0.637076,
		0.304303, 0.950652, 0.060507,
		31.999033, 38.953880, 19.753092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538006, 38.221664, 19.686670>,  <31.786020, 38.288425, 19.710737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538006, 38.221664, 19.686670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.427624, 38.577663, 19.831858>,  <32.361397, 38.791264, 19.918970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.427624, 38.577663, 19.831858>,  <32.538006, 38.221664, 19.686670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427624, 38.577663, 19.831858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707001, -0.067879, 0.703948,
		0.651153, 0.450877, -0.610500,
		-0.275954, 0.890002, 0.362969,
		32.344837, 38.844666, 19.940748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190525, 38.541058, 19.644438>,  <32.538006, 38.221664, 19.686670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190525, 38.541058, 19.644438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.952801, 38.695751, 19.926498>,  <32.810165, 38.788567, 20.095734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.952801, 38.695751, 19.926498>,  <33.190525, 38.541058, 19.644438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952801, 38.695751, 19.926498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678738, -0.229139, 0.697718,
		0.431407, 0.893271, -0.126310,
		-0.594308, 0.386732, 0.705149,
		32.774509, 38.811771, 20.138042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678085, 38.736065, 20.018219>,  <33.190525, 38.541058, 19.644438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678085, 38.736065, 20.018219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362816, 38.771061, 20.261902>,  <33.173656, 38.792057, 20.408112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362816, 38.771061, 20.261902>,  <33.678085, 38.736065, 20.018219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362816, 38.771061, 20.261902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602247, -0.094364, 0.792713,
		0.126840, 0.991686, 0.021686,
		-0.788169, 0.087488, 0.609209,
		33.126366, 38.797306, 20.444664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781250, 39.344933, 20.510172>,  <33.678085, 38.736065, 20.018219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781250, 39.344933, 20.510172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513466, 39.097420, 20.674578>,  <33.352795, 38.948914, 20.773220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513466, 39.097420, 20.674578>,  <33.781250, 39.344933, 20.510172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513466, 39.097420, 20.674578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448837, 0.103936, 0.887549,
		-0.591915, 0.778660, 0.208149,
		-0.669464, -0.618778, 0.411012,
		33.312626, 38.911785, 20.797882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651031, 39.687229, 21.177032>,  <33.781250, 39.344933, 20.510172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651031, 39.687229, 21.177032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537777, 39.304569, 21.204317>,  <33.469822, 39.074974, 21.220688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537777, 39.304569, 21.204317>,  <33.651031, 39.687229, 21.177032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537777, 39.304569, 21.204317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455807, -0.071648, 0.887190,
		-0.843843, 0.282290, 0.456334,
		-0.283140, -0.956650, 0.068210,
		33.452835, 39.017574, 21.224781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402237, 39.583218, 21.841204>,  <33.651031, 39.687229, 21.177032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402237, 39.583218, 21.841204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517944, 39.225441, 21.704798>,  <33.587368, 39.010773, 21.622953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517944, 39.225441, 21.704798>,  <33.402237, 39.583218, 21.841204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517944, 39.225441, 21.704798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217338, -0.285575, 0.933387,
		-0.932248, -0.344119, 0.111788,
		0.289273, -0.894443, -0.341017,
		33.604725, 38.957108, 21.602493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024250, 39.054996, 22.243906>,  <33.402237, 39.583218, 21.841204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024250, 39.054996, 22.243906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368805, 38.916992, 22.094786>,  <33.575539, 38.834190, 22.005314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368805, 38.916992, 22.094786>,  <33.024250, 39.054996, 22.243906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368805, 38.916992, 22.094786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307934, -0.228995, 0.923438,
		-0.403966, -0.910235, -0.091013,
		0.861387, -0.345011, -0.372799,
		33.627220, 38.813488, 21.982946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083115, 38.439110, 22.503481>,  <33.024250, 39.054996, 22.243906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083115, 38.439110, 22.503481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456272, 38.518768, 22.383451>,  <33.680168, 38.566563, 22.311434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456272, 38.518768, 22.383451>,  <33.083115, 38.439110, 22.503481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456272, 38.518768, 22.383451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348172, -0.285652, 0.892849,
		0.092094, -0.937412, -0.335822,
		0.932896, 0.199149, -0.300074,
		33.736141, 38.578514, 22.293428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394493, 37.882595, 22.736116>,  <33.083115, 38.439110, 22.503481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394493, 37.882595, 22.736116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693321, 38.140881, 22.672941>,  <33.872616, 38.295853, 22.635036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693321, 38.140881, 22.672941>,  <33.394493, 37.882595, 22.736116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693321, 38.140881, 22.672941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436756, -0.297675, 0.848902,
		0.501135, -0.703165, -0.504403,
		0.747066, 0.645716, -0.157936,
		33.917442, 38.334595, 22.625561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088955, 37.516743, 22.845654>,  <33.394493, 37.882595, 22.736116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088955, 37.516743, 22.845654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163063, 37.908993, 22.871073>,  <34.207527, 38.144344, 22.886324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163063, 37.908993, 22.871073>,  <34.088955, 37.516743, 22.845654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163063, 37.908993, 22.871073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585033, -0.162031, 0.794659,
		0.789563, -0.110052, -0.603721,
		0.185275, 0.980630, 0.063549,
		34.218647, 38.203182, 22.890137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766548, 37.545773, 23.011494>,  <34.088955, 37.516743, 22.845654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766548, 37.545773, 23.011494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646866, 37.912182, 23.118364>,  <34.575058, 38.132027, 23.182486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646866, 37.912182, 23.118364>,  <34.766548, 37.545773, 23.011494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646866, 37.912182, 23.118364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360691, -0.150649, 0.920438,
		0.883390, 0.371769, -0.285326,
		-0.299206, 0.916020, 0.267175,
		34.557102, 38.186989, 23.198517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.408333, 42.099602, 19.143959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040577, 42.049889, 19.293236>,  <33.819923, 42.020061, 19.382803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040577, 42.049889, 19.293236>,  <34.408333, 42.099602, 19.143959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040577, 42.049889, 19.293236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380299, 0.038537, -0.924061,
		0.100462, -0.991498, -0.082695,
		-0.919391, -0.124282, 0.373194,
		33.764759, 42.012604, 19.405193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112633, 41.619923, 18.726543>,  <34.408333, 42.099602, 19.143959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112633, 41.619923, 18.726543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795311, 41.815468, 18.871695>,  <33.604919, 41.932796, 18.958786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795311, 41.815468, 18.871695>,  <34.112633, 41.619923, 18.726543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795311, 41.815468, 18.871695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438859, -0.046041, -0.897376,
		-0.421990, -0.871142, 0.251068,
		-0.793302, 0.488867, 0.362879,
		33.557320, 41.962128, 18.980558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480274, 41.293888, 18.483177>,  <34.112633, 41.619923, 18.726543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480274, 41.293888, 18.483177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346886, 41.655006, 18.591818>,  <33.266853, 41.871677, 18.657001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346886, 41.655006, 18.591818>,  <33.480274, 41.293888, 18.483177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346886, 41.655006, 18.591818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511061, 0.068983, -0.856772,
		-0.792222, -0.424509, 0.438378,
		-0.333467, 0.902792, 0.271600,
		33.246845, 41.925842, 18.673298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738811, 41.338978, 18.304359>,  <33.480274, 41.293888, 18.483177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738811, 41.338978, 18.304359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906647, 41.701950, 18.313349>,  <33.007347, 41.919735, 18.318743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906647, 41.701950, 18.313349>,  <32.738811, 41.338978, 18.304359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906647, 41.701950, 18.313349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444486, 0.226987, -0.866550,
		-0.791439, 0.353607, 0.498584,
		0.419590, 0.907435, 0.022473,
		33.032524, 41.974182, 18.320091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225475, 41.813736, 18.176722>,  <32.738811, 41.338978, 18.304359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225475, 41.813736, 18.176722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542801, 42.046875, 18.106369>,  <32.733196, 42.186760, 18.064157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542801, 42.046875, 18.106369>,  <32.225475, 41.813736, 18.176722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542801, 42.046875, 18.106369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507121, 0.472787, -0.720626,
		-0.336863, 0.660877, 0.670645,
		0.793317, 0.582850, -0.175880,
		32.780796, 42.221729, 18.053604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869469, 42.405586, 17.810858>,  <32.225475, 41.813736, 18.176722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869469, 42.405586, 17.810858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254280, 42.483955, 17.734840>,  <32.485168, 42.530975, 17.689230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254280, 42.483955, 17.734840>,  <31.869469, 42.405586, 17.810858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254280, 42.483955, 17.734840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253319, 0.381584, -0.888945,
		-0.101643, 0.903332, 0.416725,
		0.962028, 0.195919, -0.190045,
		32.542889, 42.542732, 17.677826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950785, 43.109997, 17.819834>,  <31.869469, 42.405586, 17.810858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950785, 43.109997, 17.819834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233112, 42.934872, 17.597073>,  <32.402508, 42.829796, 17.463417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233112, 42.934872, 17.597073>,  <31.950785, 43.109997, 17.819834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233112, 42.934872, 17.597073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371704, 0.440339, -0.817275,
		0.603041, 0.783849, 0.148061,
		0.705817, -0.437815, -0.556902,
		32.444859, 42.803528, 17.430002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978794, 43.548763, 17.247129>,  <31.950785, 43.109997, 17.819834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978794, 43.548763, 17.247129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227383, 43.263466, 17.117476>,  <32.376534, 43.092289, 17.039682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227383, 43.263466, 17.117476>,  <31.978794, 43.548763, 17.247129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227383, 43.263466, 17.117476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078664, 0.354833, -0.931614,
		0.779479, 0.604468, 0.164411,
		0.621470, -0.713240, -0.324135,
		32.413822, 43.049492, 17.020235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571068, 43.878155, 16.934486>,  <31.978794, 43.548763, 17.247129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571068, 43.878155, 16.934486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473457, 43.523041, 16.778391>,  <32.414890, 43.309971, 16.684734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473457, 43.523041, 16.778391>,  <32.571068, 43.878155, 16.934486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473457, 43.523041, 16.778391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178085, 0.436584, -0.881862,
		0.953276, -0.145704, -0.264641,
		-0.244029, -0.887786, -0.390238,
		32.400249, 43.256706, 16.661320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710983, 43.941105, 16.202763>,  <32.571068, 43.878155, 16.934486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710983, 43.941105, 16.202763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489502, 43.608097, 16.210068>,  <32.356613, 43.408295, 16.214451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489502, 43.608097, 16.210068>,  <32.710983, 43.941105, 16.202763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489502, 43.608097, 16.210068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383793, 0.235673, -0.892839,
		0.739000, -0.501372, -0.450006,
		-0.553698, -0.832517, 0.018260,
		32.323391, 43.358341, 16.215546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811073, 43.652641, 15.522901>,  <32.710983, 43.941105, 16.202763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811073, 43.652641, 15.522901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469398, 43.511955, 15.676083>,  <32.264393, 43.427544, 15.767992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469398, 43.511955, 15.676083>,  <32.811073, 43.652641, 15.522901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469398, 43.511955, 15.676083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490355, 0.299916, -0.818293,
		0.172954, -0.886761, -0.428651,
		-0.854189, -0.351718, 0.382956,
		32.213142, 43.406441, 15.790970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493385, 43.260242, 14.951497>,  <32.811073, 43.652641, 15.522901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493385, 43.260242, 14.951497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203587, 43.365993, 15.206123>,  <32.029709, 43.429443, 15.358899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203587, 43.365993, 15.206123>,  <32.493385, 43.260242, 14.951497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203587, 43.365993, 15.206123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519961, 0.396644, -0.756515,
		-0.452492, -0.879079, -0.149902,
		-0.724494, 0.264374, 0.636565,
		31.986238, 43.445305, 15.397093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953091, 42.887772, 14.846574>,  <32.493385, 43.260242, 14.951497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953091, 42.887772, 14.846574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836109, 43.251133, 14.966088>,  <31.765921, 43.469151, 15.037797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836109, 43.251133, 14.966088>,  <31.953091, 42.887772, 14.846574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836109, 43.251133, 14.966088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601445, 0.068185, -0.795999,
		-0.743462, -0.412495, 0.526415,
		-0.292453, 0.908404, 0.298786,
		31.748373, 43.523655, 15.055724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232298, 43.022659, 14.593224>,  <31.953091, 42.887772, 14.846574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232298, 43.022659, 14.593224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.352116, 43.387878, 14.703938>,  <31.424006, 43.607010, 14.770366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.352116, 43.387878, 14.703938>,  <31.232298, 43.022659, 14.593224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352116, 43.387878, 14.703938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557990, 0.402971, -0.725439,
		-0.773900, 0.062858, 0.630181,
		0.299544, 0.913052, 0.276786,
		31.441978, 43.661793, 14.786973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071350, 42.361839, 14.154439>,  <31.232298, 43.022659, 14.593224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071350, 42.361839, 14.154439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798561, 42.074570, 14.209774>,  <30.634888, 41.902206, 14.242975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798561, 42.074570, 14.209774>,  <31.071350, 42.361839, 14.154439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798561, 42.074570, 14.209774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297986, -0.100106, 0.949307,
		-0.667922, 0.688622, 0.282276,
		-0.681970, -0.718178, 0.138337,
		30.593969, 41.859116, 14.251275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700600, 42.487320, 14.768236>,  <31.071350, 42.361839, 14.154439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700600, 42.487320, 14.768236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649960, 42.096760, 14.698250>,  <30.619576, 41.862423, 14.656258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649960, 42.096760, 14.698250>,  <30.700600, 42.487320, 14.768236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649960, 42.096760, 14.698250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232966, -0.200718, 0.951546,
		-0.964209, 0.079704, 0.252879,
		-0.126599, -0.976401, -0.174966,
		30.611980, 41.803841, 14.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370043, 42.288654, 15.398959>,  <30.700600, 42.487320, 14.768236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370043, 42.288654, 15.398959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517904, 41.963943, 15.218126>,  <30.606621, 41.769119, 15.109627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517904, 41.963943, 15.218126>,  <30.370043, 42.288654, 15.398959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517904, 41.963943, 15.218126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106119, -0.446478, 0.888480,
		-0.923089, -0.376406, -0.078898,
		0.369655, -0.811774, -0.452083,
		30.628801, 41.720413, 15.082501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988749, 41.707085, 15.628637>,  <30.370043, 42.288654, 15.398959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988749, 41.707085, 15.628637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343245, 41.557590, 15.519169>,  <30.555943, 41.467892, 15.453488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343245, 41.557590, 15.519169>,  <29.988749, 41.707085, 15.628637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343245, 41.557590, 15.519169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081360, -0.456023, 0.886241,
		-0.456023, -0.807690, -0.373739,
		-0.886241, 0.373739, 0.273670,
		30.609118, 41.445469, 15.437068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961924, 41.095337, 15.997695>,  <29.988749, 41.707085, 15.628637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961924, 41.095337, 15.997695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343342, 41.110653, 15.878174>,  <30.572193, 41.119843, 15.806461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343342, 41.110653, 15.878174>,  <29.961924, 41.095337, 15.997695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343342, 41.110653, 15.878174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256942, -0.621174, 0.740353,
		-0.157260, -0.782736, -0.602157,
		0.953546, 0.038292, -0.298803,
		30.629406, 41.122139, 15.788533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189249, 40.424820, 16.003401>,  <29.961924, 41.095337, 15.997695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189249, 40.424820, 16.003401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520897, 40.647568, 16.023191>,  <30.719887, 40.781216, 16.035067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520897, 40.647568, 16.023191>,  <30.189249, 40.424820, 16.003401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520897, 40.647568, 16.023191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345163, -0.579503, 0.738268,
		0.439795, -0.595036, -0.672690,
		0.829122, 0.556874, 0.049478,
		30.769634, 40.814629, 16.038034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834721, 40.032223, 15.996218>,  <30.189249, 40.424820, 16.003401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834721, 40.032223, 15.996218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966003, 40.373295, 16.158808>,  <31.044773, 40.577938, 16.256363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966003, 40.373295, 16.158808>,  <30.834721, 40.032223, 15.996218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966003, 40.373295, 16.158808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533998, -0.522437, 0.664760,
		0.779184, -0.001121, -0.626794,
		0.328205, 0.852677, 0.406476,
		31.064465, 40.629097, 16.280750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590931, 40.054077, 16.118181>,  <30.834721, 40.032223, 15.996218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590931, 40.054077, 16.118181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439888, 40.322018, 16.373903>,  <31.349262, 40.482780, 16.527336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439888, 40.322018, 16.373903>,  <31.590931, 40.054077, 16.118181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439888, 40.322018, 16.373903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521034, -0.417040, 0.744715,
		0.765464, 0.614311, -0.191536,
		-0.377609, 0.669850, 0.639306,
		31.326605, 40.522972, 16.565695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163742, 40.220654, 16.601580>,  <31.590931, 40.054077, 16.118181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163742, 40.220654, 16.601580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.840500, 40.347038, 16.800430>,  <31.646555, 40.422867, 16.919741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.840500, 40.347038, 16.800430>,  <32.163742, 40.220654, 16.601580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840500, 40.347038, 16.800430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403138, -0.318675, 0.857861,
		0.429472, 0.893653, 0.130147,
		-0.808105, 0.315960, 0.497128,
		31.598068, 40.441826, 16.949568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415932, 40.436695, 17.158230>,  <32.163742, 40.220654, 16.601580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415932, 40.436695, 17.158230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033340, 40.362793, 17.248581>,  <31.803787, 40.318451, 17.302792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033340, 40.362793, 17.248581>,  <32.415932, 40.436695, 17.158230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033340, 40.362793, 17.248581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280580, -0.369571, 0.885828,
		-0.080181, 0.910650, 0.405324,
		-0.956476, -0.184753, 0.225878,
		31.746397, 40.307365, 17.316345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306477, 40.735931, 17.777302>,  <32.415932, 40.436695, 17.158230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306477, 40.735931, 17.777302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.005558, 40.472862, 17.761745>,  <31.825006, 40.315022, 17.752413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.005558, 40.472862, 17.761745>,  <32.306477, 40.735931, 17.777302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005558, 40.472862, 17.761745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173948, -0.255215, 0.951108,
		-0.635445, 0.708752, 0.306398,
		-0.752298, -0.657674, -0.038889,
		31.779869, 40.275558, 17.750078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990982, 40.778172, 18.371508>,  <32.306477, 40.735931, 17.777302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990982, 40.778172, 18.371508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852489, 40.421394, 18.255194>,  <31.769394, 40.207329, 18.185406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852489, 40.421394, 18.255194>,  <31.990982, 40.778172, 18.371508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852489, 40.421394, 18.255194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015218, -0.304573, 0.952368,
		-0.938026, 0.334164, 0.091879,
		-0.346231, -0.891947, -0.290783,
		31.748621, 40.153809, 18.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376820, 40.529514, 18.841539>,  <31.990982, 40.778172, 18.371508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376820, 40.529514, 18.841539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517780, 40.199097, 18.665604>,  <31.602356, 40.000847, 18.560041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517780, 40.199097, 18.665604>,  <31.376820, 40.529514, 18.841539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517780, 40.199097, 18.665604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028899, -0.479371, 0.877137,
		-0.935403, -0.296393, -0.192802,
		0.352401, -0.826048, -0.439839,
		31.623501, 39.951283, 18.533651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838503, 40.032425, 19.005417>,  <31.376820, 40.529514, 18.841539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838503, 40.032425, 19.005417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176434, 39.835747, 18.921040>,  <31.379192, 39.717739, 18.870413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176434, 39.835747, 18.921040>,  <30.838503, 40.032425, 19.005417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176434, 39.835747, 18.921040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035830, -0.341378, 0.939243,
		-0.533837, -0.801056, -0.270789,
		0.844828, -0.491700, -0.210942,
		31.429882, 39.688236, 18.857758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296715, 39.435776, 18.888287>,  <30.838503, 40.032425, 19.005417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296715, 39.435776, 18.888287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904579, 39.385998, 18.949543>,  <29.669298, 39.356133, 18.986298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904579, 39.385998, 18.949543>,  <30.296715, 39.435776, 18.888287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904579, 39.385998, 18.949543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196533, 0.546130, -0.814320,
		0.017699, -0.828406, -0.559848,
		-0.980338, -0.124441, 0.153144,
		29.610477, 39.348663, 18.995485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019630, 39.321926, 18.279339>,  <30.296715, 39.435776, 18.888287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019630, 39.321926, 18.279339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709553, 39.447639, 18.498537>,  <29.523506, 39.523067, 18.630056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709553, 39.447639, 18.498537>,  <30.019630, 39.321926, 18.279339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709553, 39.447639, 18.498537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348429, 0.510875, -0.785878,
		-0.526944, -0.800147, -0.286523,
		-0.775195, 0.314280, 0.547997,
		29.476994, 39.541924, 18.662935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372480, 39.112823, 17.957703>,  <30.019630, 39.321926, 18.279339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372480, 39.112823, 17.957703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261326, 39.418480, 18.190550>,  <29.194633, 39.601875, 18.330259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261326, 39.418480, 18.190550>,  <29.372480, 39.112823, 17.957703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261326, 39.418480, 18.190550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469824, 0.420450, -0.776200,
		-0.837881, -0.489190, 0.242176,
		-0.277886, 0.764144, 0.582120,
		29.177959, 39.647724, 18.365187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617863, 39.230747, 17.969202>,  <29.372480, 39.112823, 17.957703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617863, 39.230747, 17.969202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.766064, 39.588207, 18.070484>,  <28.854984, 39.802685, 18.131254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.766064, 39.588207, 18.070484>,  <28.617863, 39.230747, 17.969202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766064, 39.588207, 18.070484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462316, 0.413868, -0.784205,
		-0.805600, 0.173489, 0.566489,
		0.370503, 0.893653, 0.253205,
		28.877214, 39.856304, 18.146446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951059, 39.667572, 18.039072>,  <28.617863, 39.230747, 17.969202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951059, 39.667572, 18.039072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.243984, 39.938950, 18.015629>,  <28.419739, 40.101776, 18.001562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.243984, 39.938950, 18.015629>,  <27.951059, 39.667572, 18.039072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243984, 39.938950, 18.015629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516266, 0.497007, -0.697462,
		-0.444059, 0.541017, 0.714221,
		0.732312, 0.678443, -0.058609,
		28.463678, 40.142483, 17.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683620, 40.265972, 18.128691>,  <27.951059, 39.667572, 18.039072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683620, 40.265972, 18.128691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019737, 40.366795, 17.936703>,  <28.221407, 40.427288, 17.821510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019737, 40.366795, 17.936703>,  <27.683620, 40.265972, 18.128691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019737, 40.366795, 17.936703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527897, 0.581975, -0.618571,
		0.123414, 0.773157, 0.622091,
		0.840294, 0.252059, -0.479971,
		28.271826, 40.442413, 17.792711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564497, 40.967598, 17.995321>,  <27.683620, 40.265972, 18.128691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564497, 40.967598, 17.995321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.835102, 40.822758, 17.738817>,  <27.997465, 40.735851, 17.584915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.835102, 40.822758, 17.738817>,  <27.564497, 40.967598, 17.995321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835102, 40.822758, 17.738817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416674, 0.529774, -0.738730,
		0.607220, 0.766955, 0.207519,
		0.676511, -0.362104, -0.641259,
		28.038055, 40.714127, 17.546440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939804, 41.614857, 18.154472>,  <27.564497, 40.967598, 17.995321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939804, 41.614857, 18.154472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.558073, 41.711926, 18.224174>,  <27.329035, 41.770168, 18.265995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.558073, 41.711926, 18.224174>,  <27.939804, 41.614857, 18.154472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558073, 41.711926, 18.224174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056232, -0.426932, 0.902534,
		0.293418, 0.871113, 0.393788,
		-0.954329, 0.242676, 0.174254,
		27.271774, 41.784729, 18.276451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897497, 41.911415, 18.912422>,  <27.939804, 41.614857, 18.154472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897497, 41.911415, 18.912422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.525719, 41.796665, 18.819614>,  <27.302652, 41.727814, 18.763929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.525719, 41.796665, 18.819614>,  <27.897497, 41.911415, 18.912422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525719, 41.796665, 18.819614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162072, -0.247480, 0.955241,
		-0.331455, 0.925449, 0.183525,
		-0.929446, -0.286875, -0.232018,
		27.246885, 41.710602, 18.750010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401087, 42.146214, 19.550430>,  <27.897497, 41.911415, 18.912422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401087, 42.146214, 19.550430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.192705, 41.852276, 19.376709>,  <27.067677, 41.675915, 19.272476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.192705, 41.852276, 19.376709>,  <27.401087, 42.146214, 19.550430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192705, 41.852276, 19.376709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199178, -0.390104, 0.898970,
		-0.830022, 0.554824, 0.056862,
		-0.520952, -0.734840, -0.434304,
		27.036419, 41.631824, 19.246418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903133, 42.065891, 20.014727>,  <27.401087, 42.146214, 19.550430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903133, 42.065891, 20.014727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.843927, 41.752697, 19.773056>,  <26.808403, 41.564781, 19.628054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.843927, 41.752697, 19.773056>,  <26.903133, 42.065891, 20.014727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843927, 41.752697, 19.773056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072947, -0.600600, 0.796215,
		-0.986291, 0.161925, 0.031782,
		-0.148015, -0.782982, -0.604178,
		26.799522, 41.517803, 19.591803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312723, 41.760590, 20.374722>,  <26.903133, 42.065891, 20.014727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312723, 41.760590, 20.374722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.515224, 41.486725, 20.164978>,  <26.636726, 41.322407, 20.039133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.515224, 41.486725, 20.164978>,  <26.312723, 41.760590, 20.374722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515224, 41.486725, 20.164978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008125, -0.604218, 0.796778,
		-0.862346, -0.407633, -0.300325,
		0.506255, -0.684658, -0.524357,
		26.667101, 41.281326, 20.007671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041643, 41.169704, 20.602823>,  <26.312723, 41.760590, 20.374722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041643, 41.169704, 20.602823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.389433, 41.054710, 20.442141>,  <26.598106, 40.985714, 20.345732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.389433, 41.054710, 20.442141>,  <26.041643, 41.169704, 20.602823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389433, 41.054710, 20.442141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171328, -0.587228, 0.791081,
		-0.463315, -0.756648, -0.461326,
		0.869474, -0.287482, -0.401707,
		26.650274, 40.968464, 20.321629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089895, 40.362431, 20.648907>,  <26.041643, 41.169704, 20.602823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089895, 40.362431, 20.648907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.471306, 40.481323, 20.629137>,  <26.700151, 40.552658, 20.617275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.471306, 40.481323, 20.629137>,  <26.089895, 40.362431, 20.648907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471306, 40.481323, 20.629137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219230, -0.571840, 0.790529,
		0.206708, -0.764625, -0.610426,
		0.953525, 0.297233, -0.049425,
		26.757364, 40.570492, 20.614309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.575581, 45.336712, 17.194044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896008, 45.102024, 17.146627>,  <30.088263, 44.961212, 17.118177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896008, 45.102024, 17.146627>,  <29.575581, 45.336712, 17.194044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896008, 45.102024, 17.146627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101233, -0.327985, 0.939243,
		-0.589955, -0.740394, -0.322133,
		0.801065, -0.586722, -0.118544,
		30.136328, 44.926006, 17.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381632, 44.642632, 17.424900>,  <29.575581, 45.336712, 17.194044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381632, 44.642632, 17.424900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780975, 44.660099, 17.410072>,  <30.020582, 44.670582, 17.401176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780975, 44.660099, 17.410072>,  <29.381632, 44.642632, 17.424900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780975, 44.660099, 17.410072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051294, -0.393494, 0.917895,
		0.025500, -0.918289, -0.395088,
		0.998358, 0.043672, -0.037069,
		30.080482, 44.673199, 17.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541958, 44.075184, 17.773502>,  <29.381632, 44.642632, 17.424900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541958, 44.075184, 17.773502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885067, 44.278637, 17.803230>,  <30.090933, 44.400707, 17.821068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885067, 44.278637, 17.803230>,  <29.541958, 44.075184, 17.773502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885067, 44.278637, 17.803230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158173, -0.398738, 0.903322,
		0.489091, -0.763088, -0.422477,
		0.857771, 0.508631, 0.074320,
		30.142399, 44.431225, 17.825525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898874, 43.713688, 18.232834>,  <29.541958, 44.075184, 17.773502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898874, 43.713688, 18.232834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.131460, 44.036949, 18.270334>,  <30.271011, 44.230907, 18.292835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.131460, 44.036949, 18.270334>,  <29.898874, 43.713688, 18.232834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131460, 44.036949, 18.270334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258277, -0.292634, 0.920683,
		0.771488, -0.511130, -0.378884,
		0.581463, 0.808153, 0.093750,
		30.305899, 44.279396, 18.298460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525236, 43.458935, 18.507946>,  <29.898874, 43.713688, 18.232834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525236, 43.458935, 18.507946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468716, 43.841503, 18.610157>,  <30.434803, 44.071045, 18.671484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468716, 43.841503, 18.610157>,  <30.525236, 43.458935, 18.507946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468716, 43.841503, 18.610157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151567, -0.234174, 0.960307,
		0.978295, 0.174424, -0.111873,
		-0.141303, 0.956420, 0.255528,
		30.426325, 44.128429, 18.686815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969820, 43.573017, 19.042610>,  <30.525236, 43.458935, 18.507946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969820, 43.573017, 19.042610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723253, 43.885597, 19.081320>,  <30.575314, 44.073147, 19.104546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723253, 43.885597, 19.081320>,  <30.969820, 43.573017, 19.042610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723253, 43.885597, 19.081320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108005, -0.037829, 0.993430,
		0.779979, 0.622818, -0.061082,
		-0.616415, 0.781452, 0.096773,
		30.538328, 44.120033, 19.110352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227352, 43.936485, 19.568779>,  <30.969820, 43.573017, 19.042610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227352, 43.936485, 19.568779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874762, 44.123508, 19.542278>,  <30.663208, 44.235722, 19.526377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874762, 44.123508, 19.542278>,  <31.227352, 43.936485, 19.568779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874762, 44.123508, 19.542278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003203, 0.146217, 0.989247,
		0.472217, 0.871786, -0.130385,
		-0.881477, 0.467557, -0.066254,
		30.610319, 44.263775, 19.522402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361666, 44.617599, 19.830797>,  <31.227352, 43.936485, 19.568779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361666, 44.617599, 19.830797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977392, 44.509670, 19.856974>,  <30.746828, 44.444912, 19.872679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977392, 44.509670, 19.856974>,  <31.361666, 44.617599, 19.830797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977392, 44.509670, 19.856974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019902, 0.168165, 0.985558,
		-0.276935, 0.948111, -0.156183,
		-0.960683, -0.269827, 0.065440,
		30.689188, 44.428722, 19.876606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087957, 45.028461, 20.334372>,  <31.361666, 44.617599, 19.830797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087957, 45.028461, 20.334372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811995, 44.738922, 20.331141>,  <30.646416, 44.565197, 20.329201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811995, 44.738922, 20.331141>,  <31.087957, 45.028461, 20.334372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811995, 44.738922, 20.331141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023006, 0.010769, 0.999677,
		-0.723530, 0.689873, -0.024083,
		-0.689909, -0.723851, -0.008080,
		30.605022, 44.521767, 20.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585510, 45.197727, 20.797167>,  <31.087957, 45.028461, 20.334372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585510, 45.197727, 20.797167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501879, 44.812199, 20.731045>,  <30.451700, 44.580879, 20.691372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501879, 44.812199, 20.731045>,  <30.585510, 45.197727, 20.797167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501879, 44.812199, 20.731045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074539, -0.152844, 0.985435,
		-0.975054, 0.218354, -0.039887,
		-0.209078, -0.963826, -0.165307,
		30.439156, 44.523052, 20.681452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179186, 45.055202, 21.391863>,  <30.585510, 45.197727, 20.797167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179186, 45.055202, 21.391863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251921, 44.693798, 21.236633>,  <30.295561, 44.476955, 21.143496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251921, 44.693798, 21.236633>,  <30.179186, 45.055202, 21.391863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251921, 44.693798, 21.236633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011429, -0.396567, 0.917935,
		-0.983263, -0.162478, -0.082436,
		0.181836, -0.903513, -0.388072,
		30.306471, 44.422745, 21.120211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651588, 44.574005, 21.660524>,  <30.179186, 45.055202, 21.391863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651588, 44.574005, 21.660524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995275, 44.395893, 21.559753>,  <30.201488, 44.289024, 21.499290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995275, 44.395893, 21.559753>,  <29.651588, 44.574005, 21.660524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995275, 44.395893, 21.559753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163376, -0.227828, 0.959897,
		-0.484820, -0.865921, -0.123006,
		0.859219, -0.445281, -0.251926,
		30.253042, 44.262310, 21.484175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987167, 44.329361, 21.418774>,  <29.651588, 44.574005, 21.660524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987167, 44.329361, 21.418774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606241, 44.244747, 21.506723>,  <28.377686, 44.193977, 21.559494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606241, 44.244747, 21.506723>,  <28.987167, 44.329361, 21.418774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606241, 44.244747, 21.506723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278864, 0.311023, -0.908570,
		0.123811, -0.926561, -0.355183,
		-0.952316, -0.211539, 0.219876,
		28.320547, 44.181286, 21.572687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672657, 43.879257, 20.923243>,  <28.987167, 44.329361, 21.418774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672657, 43.879257, 20.923243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378506, 44.097736, 21.083683>,  <28.202015, 44.228825, 21.179947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378506, 44.097736, 21.083683>,  <28.672657, 43.879257, 20.923243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378506, 44.097736, 21.083683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192557, 0.399074, -0.896472,
		-0.649725, -0.736480, -0.188295,
		-0.735377, 0.546202, 0.401103,
		28.157892, 44.261597, 21.204014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344202, 44.059650, 20.371464>,  <28.672657, 43.879257, 20.923243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344202, 44.059650, 20.371464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157944, 44.294968, 20.635914>,  <28.046188, 44.436157, 20.794584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157944, 44.294968, 20.635914>,  <28.344202, 44.059650, 20.371464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157944, 44.294968, 20.635914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446627, 0.488721, -0.749450,
		-0.764002, -0.644254, 0.035177,
		-0.465644, 0.588293, 0.661126,
		28.018250, 44.471455, 20.834251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618790, 44.102547, 20.170183>,  <28.344202, 44.059650, 20.371464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618790, 44.102547, 20.170183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702257, 44.425365, 20.391136>,  <27.752338, 44.619057, 20.523708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702257, 44.425365, 20.391136>,  <27.618790, 44.102547, 20.170183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702257, 44.425365, 20.391136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339087, 0.589485, -0.733163,
		-0.917321, -0.034317, 0.396668,
		0.208670, 0.807050, 0.552383,
		27.764858, 44.667480, 20.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967291, 44.428761, 20.176397>,  <27.618790, 44.102547, 20.170183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967291, 44.428761, 20.176397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275749, 44.677757, 20.229828>,  <27.460825, 44.827156, 20.261887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275749, 44.677757, 20.229828>,  <26.967291, 44.428761, 20.176397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275749, 44.677757, 20.229828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324196, 0.564509, -0.759096,
		-0.547934, 0.542069, 0.637127,
		0.771146, 0.622488, 0.133577,
		27.507093, 44.864502, 20.269901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708910, 45.055328, 19.991508>,  <26.967291, 44.428761, 20.176397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708910, 45.055328, 19.991508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101885, 45.128616, 19.977369>,  <27.337669, 45.172588, 19.968885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101885, 45.128616, 19.977369>,  <26.708910, 45.055328, 19.991508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101885, 45.128616, 19.977369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133036, 0.554898, -0.821212,
		-0.130848, 0.811491, 0.569527,
		0.982436, 0.183221, -0.035350,
		27.396616, 45.183582, 19.966764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635323, 45.821171, 19.993351>,  <26.708910, 45.055328, 19.991508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635323, 45.821171, 19.993351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962662, 45.636456, 19.856499>,  <27.159065, 45.525627, 19.774387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962662, 45.636456, 19.856499>,  <26.635323, 45.821171, 19.993351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962662, 45.636456, 19.856499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063910, 0.518491, -0.852691,
		0.571155, 0.719666, 0.394795,
		0.818350, -0.461788, -0.342133,
		27.208166, 45.497921, 19.753859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105211, 46.392513, 19.794649>,  <26.635323, 45.821171, 19.993351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105211, 46.392513, 19.794649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204550, 46.060978, 19.594109>,  <27.264153, 45.862057, 19.473783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204550, 46.060978, 19.594109>,  <27.105211, 46.392513, 19.794649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204550, 46.060978, 19.594109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090130, 0.535092, -0.839972,
		0.964469, 0.163418, 0.207591,
		0.248347, -0.828837, -0.501351,
		27.279055, 45.812328, 19.443703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662231, 46.546394, 19.383436>,  <27.105211, 46.392513, 19.794649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662231, 46.546394, 19.383436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543221, 46.203159, 19.216024>,  <27.471813, 45.997219, 19.115578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543221, 46.203159, 19.216024>,  <27.662231, 46.546394, 19.383436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543221, 46.203159, 19.216024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034639, 0.428394, -0.902928,
		0.954085, -0.283143, -0.097735,
		-0.297527, -0.858084, -0.418532,
		27.453962, 45.945732, 19.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125586, 46.414589, 18.816935>,  <27.662231, 46.546394, 19.383436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125586, 46.414589, 18.816935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798483, 46.194668, 18.748825>,  <27.602221, 46.062717, 18.707958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798483, 46.194668, 18.748825>,  <28.125586, 46.414589, 18.816935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798483, 46.194668, 18.748825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081841, 0.181760, -0.979931,
		0.569717, -0.815280, -0.103639,
		-0.817756, -0.549801, -0.170275,
		27.553156, 46.029728, 18.697742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246328, 46.095890, 18.168034>,  <28.125586, 46.414589, 18.816935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246328, 46.095890, 18.168034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848473, 46.077061, 18.204870>,  <27.609760, 46.065765, 18.226973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848473, 46.077061, 18.204870>,  <28.246328, 46.095890, 18.168034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848473, 46.077061, 18.204870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097853, 0.140022, -0.985301,
		0.033482, -0.989029, -0.143876,
		-0.994637, -0.047069, 0.092092,
		27.550081, 46.062939, 18.232498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977194, 45.675121, 17.681063>,  <28.246328, 46.095890, 18.168034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977194, 45.675121, 17.681063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669619, 45.915058, 17.769543>,  <27.485073, 46.059021, 17.822630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669619, 45.915058, 17.769543>,  <27.977194, 45.675121, 17.681063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669619, 45.915058, 17.769543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067541, 0.267837, -0.961094,
		-0.635746, -0.753961, -0.165436,
		-0.768937, 0.599838, 0.221200,
		27.438938, 46.095009, 17.835903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420475, 45.378639, 17.274143>,  <27.977194, 45.675121, 17.681063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420475, 45.378639, 17.274143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412289, 45.767467, 17.367664>,  <27.407377, 46.000763, 17.423777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412289, 45.767467, 17.367664>,  <27.420475, 45.378639, 17.274143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412289, 45.767467, 17.367664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230606, 0.232135, -0.944952,
		-0.972832, 0.034577, -0.228916,
		-0.020465, 0.972069, 0.233802,
		27.406149, 46.059090, 17.437805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878994, 44.889702, 17.391336>,  <27.420475, 45.378639, 17.274143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878994, 44.889702, 17.391336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756811, 44.672897, 17.078180>,  <27.683502, 44.542812, 16.890287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756811, 44.672897, 17.078180>,  <27.878994, 44.889702, 17.391336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756811, 44.672897, 17.078180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391945, -0.677736, 0.622136,
		-0.867799, 0.496886, -0.005421,
		-0.305457, -0.542014, -0.782890,
		27.665174, 44.510292, 16.843313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400505, 44.433628, 17.693953>,  <27.878994, 44.889702, 17.391336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400505, 44.433628, 17.693953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393087, 44.273682, 17.327398>,  <27.388638, 44.177711, 17.107466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393087, 44.273682, 17.327398>,  <27.400505, 44.433628, 17.693953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393087, 44.273682, 17.327398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419426, -0.828887, 0.370174,
		-0.907600, 0.391220, -0.152346,
		-0.018542, -0.399868, -0.916385,
		27.387526, 44.153721, 17.052483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737810, 44.185009, 17.558966>,  <27.400505, 44.433628, 17.693953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737810, 44.185009, 17.558966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970655, 43.978992, 17.307291>,  <27.110363, 43.855381, 17.156286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970655, 43.978992, 17.307291>,  <26.737810, 44.185009, 17.558966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970655, 43.978992, 17.307291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471329, -0.844274, 0.255049,
		-0.662566, 0.148086, -0.734218,
		0.582112, -0.515046, -0.629185,
		27.145288, 43.824478, 17.118536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288273, 43.650703, 17.267521>,  <26.737810, 44.185009, 17.558966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288273, 43.650703, 17.267521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661154, 43.522156, 17.200920>,  <26.884882, 43.445026, 17.160959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661154, 43.522156, 17.200920>,  <26.288273, 43.650703, 17.267521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661154, 43.522156, 17.200920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277570, -0.929994, 0.240968,
		-0.232285, -0.178415, -0.956144,
		0.932201, -0.321370, -0.166501,
		26.940815, 43.425743, 17.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253365, 43.016624, 16.924013>,  <26.288273, 43.650703, 17.267521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253365, 43.016624, 16.924013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625523, 43.016068, 17.070635>,  <26.848818, 43.015732, 17.158607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625523, 43.016068, 17.070635>,  <26.253365, 43.016624, 16.924013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625523, 43.016068, 17.070635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163724, -0.896284, 0.412153,
		0.327960, -0.443479, -0.834128,
		0.930396, -0.001397, 0.366553,
		26.904642, 43.015648, 17.180601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539145, 42.324192, 16.745785>,  <26.253365, 43.016624, 16.924013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539145, 42.324192, 16.745785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762779, 42.479389, 17.038876>,  <26.896959, 42.572506, 17.214729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762779, 42.479389, 17.038876>,  <26.539145, 42.324192, 16.745785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762779, 42.479389, 17.038876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134986, -0.829364, 0.542157,
		0.818047, -0.402020, -0.411313,
		0.559086, 0.387989, 0.732726,
		26.930506, 42.595787, 17.258694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957645, 41.771400, 17.078220>,  <26.539145, 42.324192, 16.745785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957645, 41.771400, 17.078220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009119, 42.047386, 17.363146>,  <27.040003, 42.212978, 17.534101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009119, 42.047386, 17.363146>,  <26.957645, 41.771400, 17.078220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009119, 42.047386, 17.363146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173754, -0.722863, 0.668789,
		0.976345, 0.037704, -0.212905,
		0.128685, 0.689962, 0.712315,
		27.047724, 42.254375, 17.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567106, 41.624489, 17.458008>,  <26.957645, 41.771400, 17.078220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567106, 41.624489, 17.458008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328226, 41.845131, 17.690931>,  <27.184898, 41.977516, 17.830687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328226, 41.845131, 17.690931>,  <27.567106, 41.624489, 17.458008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328226, 41.845131, 17.690931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017626, -0.734838, 0.678014,
		0.801899, 0.394646, 0.448567,
		-0.597200, 0.551605, 0.582310,
		27.149067, 42.010612, 17.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254772, 41.637207, 17.353310>,  <27.567106, 41.624489, 17.458008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254772, 41.637207, 17.353310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367676, 41.336632, 17.114758>,  <28.435417, 41.156288, 16.971626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367676, 41.336632, 17.114758>,  <28.254772, 41.637207, 17.353310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367676, 41.336632, 17.114758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276530, 0.531542, -0.800622,
		0.918619, 0.390899, -0.057763,
		0.282259, -0.751439, -0.596380,
		28.452354, 41.111198, 16.935844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569246, 41.930470, 16.753962>,  <28.254772, 41.637207, 17.353310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569246, 41.930470, 16.753962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442635, 41.562588, 16.661051>,  <28.366669, 41.341858, 16.605305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442635, 41.562588, 16.661051>,  <28.569246, 41.930470, 16.753962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442635, 41.562588, 16.661051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247238, 0.316391, -0.915844,
		0.915797, -0.232462, -0.327533,
		-0.316527, -0.919705, -0.232276,
		28.347677, 41.286674, 16.591368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957701, 41.670956, 16.188700>,  <28.569246, 41.930470, 16.753962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957701, 41.670956, 16.188700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.607155, 41.478424, 16.181625>,  <28.396828, 41.362907, 16.177382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.607155, 41.478424, 16.181625>,  <28.957701, 41.670956, 16.188700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607155, 41.478424, 16.181625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122972, 0.259097, -0.957991,
		0.465689, -0.837373, -0.286252,
		-0.876363, -0.481326, -0.017685,
		28.344246, 41.334026, 16.176319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933815, 41.163078, 15.584642>,  <28.957701, 41.670956, 16.188700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933815, 41.163078, 15.584642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546278, 41.222973, 15.663562>,  <28.313757, 41.258911, 15.710914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546278, 41.222973, 15.663562>,  <28.933815, 41.163078, 15.584642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546278, 41.222973, 15.663562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187248, 0.078622, -0.979161,
		-0.162133, -0.985594, -0.048134,
		-0.968840, 0.149741, 0.197298,
		28.255627, 41.267895, 15.722751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688055, 40.713203, 15.169404>,  <28.933815, 41.163078, 15.584642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688055, 40.713203, 15.169404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450733, 41.022278, 15.259686>,  <28.308340, 41.207722, 15.313856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450733, 41.022278, 15.259686>,  <28.688055, 40.713203, 15.169404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450733, 41.022278, 15.259686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154493, 0.165876, -0.973970,
		-0.790014, -0.612730, 0.020960,
		-0.593304, 0.772688, 0.225707,
		28.272741, 41.254086, 15.327398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205488, 40.770905, 14.638725>,  <28.688055, 40.713203, 15.169404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205488, 40.770905, 14.638725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138126, 41.126225, 14.809637>,  <28.097710, 41.339417, 14.912184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138126, 41.126225, 14.809637>,  <28.205488, 40.770905, 14.638725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138126, 41.126225, 14.809637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216790, 0.389479, -0.895158,
		-0.961583, -0.243378, 0.126984,
		-0.168404, 0.888298, 0.427279,
		28.087605, 41.392715, 14.937820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730684, 41.100540, 14.232686>,  <28.205488, 40.770905, 14.638725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730684, 41.100540, 14.232686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847393, 41.422043, 14.440086>,  <27.917418, 41.614944, 14.564527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847393, 41.422043, 14.440086>,  <27.730684, 41.100540, 14.232686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847393, 41.422043, 14.440086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299544, 0.591603, -0.748518,
		-0.908374, 0.063083, 0.413374,
		0.291772, 0.803758, 0.518501,
		27.934925, 41.663170, 14.595636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230083, 41.620445, 14.165056>,  <27.730684, 41.100540, 14.232686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230083, 41.620445, 14.165056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550716, 41.836308, 14.268007>,  <27.743095, 41.965824, 14.329778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550716, 41.836308, 14.268007>,  <27.230083, 41.620445, 14.165056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550716, 41.836308, 14.268007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277789, 0.717348, -0.638941,
		-0.529434, 0.440667, 0.724922,
		0.801581, 0.539652, 0.257376,
		27.791191, 41.998203, 14.345221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046934, 42.338306, 13.995459>,  <27.230083, 41.620445, 14.165056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046934, 42.338306, 13.995459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444035, 42.360069, 14.038325>,  <27.682295, 42.373127, 14.064045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444035, 42.360069, 14.038325>,  <27.046934, 42.338306, 13.995459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444035, 42.360069, 14.038325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038869, 0.698403, -0.714648,
		-0.113728, 0.713634, 0.691226,
		0.992751, 0.054408, 0.107167,
		27.741859, 42.376392, 14.070476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.932507, 35.255596, 28.098715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202259, 35.549561, 28.070095>,  <33.364113, 35.725937, 28.052923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202259, 35.549561, 28.070095>,  <32.932507, 35.255596, 28.098715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202259, 35.549561, 28.070095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429798, 0.311906, -0.847342,
		-0.600401, 0.602185, 0.526206,
		0.674383, 0.734907, -0.071549,
		33.404575, 35.770031, 28.048630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529167, 35.900120, 27.932133>,  <32.932507, 35.255596, 28.098715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529167, 35.900120, 27.932133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893597, 35.825069, 27.785303>,  <33.112255, 35.780037, 27.697205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893597, 35.825069, 27.785303>,  <32.529167, 35.900120, 27.932133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893597, 35.825069, 27.785303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210377, 0.554137, -0.805403,
		0.354527, 0.811004, 0.465385,
		0.911072, -0.187630, -0.367073,
		33.166920, 35.768780, 27.675180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900280, 36.525951, 27.740171>,  <32.529167, 35.900120, 27.932133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900280, 36.525951, 27.740171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050644, 36.221054, 27.529394>,  <33.140862, 36.038116, 27.402927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050644, 36.221054, 27.529394>,  <32.900280, 36.525951, 27.740171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050644, 36.221054, 27.529394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306717, 0.434252, -0.846966,
		0.874423, 0.480006, -0.070554,
		0.375911, -0.762246, -0.526946,
		33.163418, 35.992378, 27.371311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358849, 36.840199, 27.122414>,  <32.900280, 36.525951, 27.740171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358849, 36.840199, 27.122414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259441, 36.467957, 27.014925>,  <33.199795, 36.244610, 26.950432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259441, 36.467957, 27.014925>,  <33.358849, 36.840199, 27.122414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259441, 36.467957, 27.014925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445528, 0.356160, -0.821374,
		0.860083, -0.084405, -0.503124,
		-0.248521, -0.930605, -0.268723,
		33.184883, 36.188774, 26.934309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639668, 36.759525, 26.429491>,  <33.358849, 36.840199, 27.122414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639668, 36.759525, 26.429491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359398, 36.476742, 26.467983>,  <33.191235, 36.307072, 26.491079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359398, 36.476742, 26.467983>,  <33.639668, 36.759525, 26.429491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359398, 36.476742, 26.467983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476981, 0.363831, -0.800073,
		0.530610, -0.606490, -0.592134,
		-0.700673, -0.706963, 0.096232,
		33.149197, 36.264652, 26.496853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573551, 36.496166, 25.681480>,  <33.639668, 36.759525, 26.429491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573551, 36.496166, 25.681480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237316, 36.406319, 25.878647>,  <33.035576, 36.352409, 25.996946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237316, 36.406319, 25.878647>,  <33.573551, 36.496166, 25.681480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237316, 36.406319, 25.878647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541677, 0.351910, -0.763378,
		-0.001994, -0.908684, -0.417480,
		-0.840584, -0.224617, 0.492915,
		32.985142, 36.338932, 26.026522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202568, 36.441471, 25.149734>,  <33.573551, 36.496166, 25.681480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202568, 36.441471, 25.149734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918274, 36.408283, 25.429155>,  <32.747700, 36.388371, 25.596807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918274, 36.408283, 25.429155>,  <33.202568, 36.441471, 25.149734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918274, 36.408283, 25.429155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703400, 0.070682, -0.707271,
		0.009307, -0.994042, -0.108597,
		-0.710733, -0.082970, 0.698552,
		32.705055, 36.383392, 25.638721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776588, 35.925720, 24.828644>,  <33.202568, 36.441471, 25.149734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776588, 35.925720, 24.828644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565865, 36.165432, 25.069754>,  <32.439430, 36.309258, 25.214418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565865, 36.165432, 25.069754>,  <32.776588, 35.925720, 24.828644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565865, 36.165432, 25.069754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679613, 0.128930, -0.722152,
		-0.510485, -0.790091, 0.339355,
		-0.526812, 0.599277, 0.602773,
		32.407822, 36.345215, 25.250586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045139, 35.745121, 24.768105>,  <32.776588, 35.925720, 24.828644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045139, 35.745121, 24.768105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041367, 36.104382, 24.943939>,  <32.039104, 36.319939, 25.049440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041367, 36.104382, 24.943939>,  <32.045139, 35.745121, 24.768105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041367, 36.104382, 24.943939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760581, 0.278950, -0.586262,
		-0.649174, -0.339870, 0.680486,
		-0.009431, 0.898151, 0.439586,
		32.038536, 36.373825, 25.075815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342829, 35.894081, 25.000862>,  <32.045139, 35.745121, 24.768105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342829, 35.894081, 25.000862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538254, 36.231789, 24.912752>,  <31.655510, 36.434414, 24.859886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538254, 36.231789, 24.912752>,  <31.342829, 35.894081, 25.000862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538254, 36.231789, 24.912752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625096, 0.162548, -0.763435,
		-0.608736, 0.510681, 0.607162,
		0.488564, 0.844265, -0.220276,
		31.684824, 36.485069, 24.846670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719023, 36.342094, 24.913322>,  <31.342829, 35.894081, 25.000862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719023, 36.342094, 24.913322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027653, 36.541683, 24.755487>,  <31.212830, 36.661438, 24.660786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027653, 36.541683, 24.755487>,  <30.719023, 36.342094, 24.913322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027653, 36.541683, 24.755487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589777, 0.328634, -0.737674,
		-0.238405, 0.801888, 0.547849,
		0.771574, 0.498974, -0.394587,
		31.259125, 36.691376, 24.637112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480019, 37.094749, 24.906105>,  <30.719023, 36.342094, 24.913322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480019, 37.094749, 24.906105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.776463, 37.062737, 24.639467>,  <30.954329, 37.043530, 24.479485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.776463, 37.062737, 24.639467>,  <30.480019, 37.094749, 24.906105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776463, 37.062737, 24.639467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576634, 0.432657, -0.693038,
		0.343875, 0.897999, 0.274495,
		0.741109, -0.080035, -0.666597,
		30.998795, 37.038727, 24.439487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023947, 37.670639, 25.103504>,  <30.480019, 37.094749, 24.906105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023947, 37.670639, 25.103504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633595, 37.593670, 25.144743>,  <29.399384, 37.547489, 25.169487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633595, 37.593670, 25.144743>,  <30.023947, 37.670639, 25.103504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633595, 37.593670, 25.144743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165107, -0.341619, 0.925222,
		-0.142815, 0.919929, 0.365150,
		-0.975881, -0.192425, 0.103098,
		29.340830, 37.535942, 25.175673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871662, 37.885086, 25.726292>,  <30.023947, 37.670639, 25.103504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871662, 37.885086, 25.726292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575598, 37.622849, 25.666481>,  <29.397959, 37.465508, 25.630594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575598, 37.622849, 25.666481>,  <29.871662, 37.885086, 25.726292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575598, 37.622849, 25.666481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168574, -0.396175, 0.902568,
		-0.650958, 0.642838, 0.403749,
		-0.740160, -0.655595, -0.149527,
		29.353550, 37.426170, 25.621622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498716, 37.958088, 26.340347>,  <29.871662, 37.885086, 25.726292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498716, 37.958088, 26.340347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414553, 37.606873, 26.168406>,  <29.364054, 37.396145, 26.065241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414553, 37.606873, 26.168406>,  <29.498716, 37.958088, 26.340347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414553, 37.606873, 26.168406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109823, -0.458143, 0.882068,
		-0.971425, 0.138387, 0.192826,
		-0.210409, -0.878040, -0.429854,
		29.351431, 37.343460, 26.039450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973631, 37.610550, 26.772974>,  <29.498716, 37.958088, 26.340347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973631, 37.610550, 26.772974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.155542, 37.321346, 26.564959>,  <29.264688, 37.147823, 26.440149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.155542, 37.321346, 26.564959>,  <28.973631, 37.610550, 26.772974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155542, 37.321346, 26.564959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133543, -0.521957, 0.842453,
		-0.880537, -0.452576, -0.140822,
		0.454777, -0.723005, -0.520041,
		29.291975, 37.104446, 26.408947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580212, 37.114883, 26.946896>,  <28.973631, 37.610550, 26.772974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580212, 37.114883, 26.946896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.924931, 36.948223, 26.831165>,  <29.131762, 36.848228, 26.761726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.924931, 36.948223, 26.831165>,  <28.580212, 37.114883, 26.946896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924931, 36.948223, 26.831165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080596, -0.450663, 0.889049,
		-0.500813, -0.789497, -0.354799,
		0.861795, -0.416651, -0.289328,
		29.183470, 36.823227, 26.744368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626959, 36.447311, 27.154709>,  <28.580212, 37.114883, 26.946896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626959, 36.447311, 27.154709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.018751, 36.452919, 27.074286>,  <29.253826, 36.456284, 27.026031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.018751, 36.452919, 27.074286>,  <28.626959, 36.447311, 27.154709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018751, 36.452919, 27.074286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189073, -0.409426, 0.892537,
		-0.069805, -0.912236, -0.403675,
		0.979479, 0.014021, -0.201059,
		29.312595, 36.457127, 27.013968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856138, 35.778000, 27.410631>,  <28.626959, 36.447311, 27.154709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856138, 35.778000, 27.410631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.192274, 35.992832, 27.381311>,  <29.393955, 36.121731, 27.363720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.192274, 35.992832, 27.381311>,  <28.856138, 35.778000, 27.410631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192274, 35.992832, 27.381311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327451, -0.395213, 0.858244,
		0.431979, -0.745218, -0.507981,
		0.840339, 0.537083, -0.073299,
		29.444376, 36.153957, 27.359322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371944, 35.286469, 27.408726>,  <28.856138, 35.778000, 27.410631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371944, 35.286469, 27.408726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511076, 35.646175, 27.514803>,  <29.594555, 35.862000, 27.578449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511076, 35.646175, 27.514803>,  <29.371944, 35.286469, 27.408726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511076, 35.646175, 27.514803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319150, -0.379528, 0.868390,
		0.881566, -0.217416, -0.419013,
		0.347829, 0.899271, 0.265191,
		29.615425, 35.915958, 27.594360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898201, 35.081600, 27.794533>,  <29.371944, 35.286469, 27.408726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898201, 35.081600, 27.794533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.889082, 35.470211, 27.888872>,  <29.883610, 35.703377, 27.945477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.889082, 35.470211, 27.888872>,  <29.898201, 35.081600, 27.794533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889082, 35.470211, 27.888872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312186, -0.217194, 0.924860,
		0.949747, 0.094713, -0.298344,
		-0.022798, 0.971523, 0.235848,
		29.882242, 35.761669, 27.959627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422188, 35.178291, 28.308538>,  <29.898201, 35.081600, 27.794533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422188, 35.178291, 28.308538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174568, 35.485836, 28.372572>,  <30.025995, 35.670364, 28.410992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174568, 35.485836, 28.372572>,  <30.422188, 35.178291, 28.308538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174568, 35.485836, 28.372572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038623, -0.173787, 0.984025,
		0.784400, 0.615345, 0.077887,
		-0.619051, 0.768862, 0.160085,
		29.988853, 35.716496, 28.420597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689919, 35.479736, 28.875065>,  <30.422188, 35.178291, 28.308538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689919, 35.479736, 28.875065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317379, 35.625191, 28.882629>,  <30.093855, 35.712463, 28.887169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317379, 35.625191, 28.882629>,  <30.689919, 35.479736, 28.875065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317379, 35.625191, 28.882629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055205, -0.192349, 0.979773,
		0.359915, 0.911468, 0.199218,
		-0.931350, 0.363632, 0.018912,
		30.037973, 35.734280, 28.888304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692198, 36.033550, 29.306166>,  <30.689919, 35.479736, 28.875065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692198, 36.033550, 29.306166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301710, 35.946880, 29.309034>,  <30.067417, 35.894878, 29.310755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301710, 35.946880, 29.309034>,  <30.692198, 36.033550, 29.306166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301710, 35.946880, 29.309034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002458, 0.022017, 0.999755,
		-0.216776, 0.975996, -0.020961,
		-0.976218, -0.216672, 0.007171,
		30.008844, 35.881878, 29.311186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408548, 36.511349, 29.699289>,  <30.692198, 36.033550, 29.306166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408548, 36.511349, 29.699289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.132790, 36.221603, 29.701385>,  <29.967335, 36.047756, 29.702644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.132790, 36.221603, 29.701385>,  <30.408548, 36.511349, 29.699289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132790, 36.221603, 29.701385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102318, 0.104537, 0.989244,
		-0.717123, 0.681444, -0.146183,
		-0.689396, -0.724366, 0.005242,
		29.925970, 36.004295, 29.702957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862894, 36.703781, 30.164377>,  <30.408548, 36.511349, 29.699289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862894, 36.703781, 30.164377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.812828, 36.308170, 30.133007>,  <29.782787, 36.070805, 30.114185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.812828, 36.308170, 30.133007>,  <29.862894, 36.703781, 30.164377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812828, 36.308170, 30.133007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076434, -0.088426, 0.993146,
		-0.989187, 0.118315, 0.086664,
		-0.125167, -0.989031, -0.078427,
		29.775278, 36.011459, 30.109480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311752, 37.341854, 30.301434>,  <29.862894, 36.703781, 30.164377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311752, 37.341854, 30.301434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.193129, 37.658009, 30.515850>,  <30.121954, 37.847702, 30.644501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.193129, 37.658009, 30.515850>,  <30.311752, 37.341854, 30.301434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193129, 37.658009, 30.515850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305883, 0.453112, -0.837332,
		-0.904704, -0.412284, 0.107391,
		-0.296558, 0.790387, 0.536043,
		30.104160, 37.895126, 30.676662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554531, 37.535526, 30.077930>,  <30.311752, 37.341854, 30.301434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554531, 37.535526, 30.077930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808168, 37.806416, 30.227219>,  <29.960352, 37.968948, 30.316792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808168, 37.806416, 30.227219>,  <29.554531, 37.535526, 30.077930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808168, 37.806416, 30.227219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134913, 0.572153, -0.808974,
		-0.761395, 0.462613, 0.454165,
		0.634094, 0.677222, 0.373222,
		29.998396, 38.009583, 30.339186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257805, 38.223305, 30.256824>,  <29.554531, 37.535526, 30.077930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257805, 38.223305, 30.256824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630669, 38.238075, 30.112762>,  <29.854387, 38.246937, 30.026325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630669, 38.238075, 30.112762>,  <29.257805, 38.223305, 30.256824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630669, 38.238075, 30.112762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315727, 0.569758, -0.758744,
		0.177182, 0.820983, 0.542766,
		0.932161, 0.036930, -0.360157,
		29.910316, 38.249153, 30.004715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574713, 38.954006, 30.166552>,  <29.257805, 38.223305, 30.256824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574713, 38.954006, 30.166552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.746161, 38.709156, 29.900743>,  <29.849030, 38.562244, 29.741259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.746161, 38.709156, 29.900743>,  <29.574713, 38.954006, 30.166552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746161, 38.709156, 29.900743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320515, 0.584652, -0.745287,
		0.844723, 0.532433, 0.054398,
		0.428619, -0.612125, -0.664521,
		29.874746, 38.525520, 29.701387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815258, 39.366821, 29.705585>,  <29.574713, 38.954006, 30.166552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815258, 39.366821, 29.705585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.811941, 39.014084, 29.517000>,  <29.809952, 38.802441, 29.403849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.811941, 39.014084, 29.517000>,  <29.815258, 39.366821, 29.705585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811941, 39.014084, 29.517000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261876, 0.456939, -0.850075,
		0.965066, 0.116418, -0.234723,
		-0.008290, -0.881847, -0.471463,
		29.809454, 38.749531, 29.375561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210661, 39.517193, 29.082130>,  <29.815258, 39.366821, 29.705585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210661, 39.517193, 29.082130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989622, 39.190571, 29.015341>,  <29.856998, 38.994598, 28.975267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989622, 39.190571, 29.015341>,  <30.210661, 39.517193, 29.082130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989622, 39.190571, 29.015341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369942, 0.419831, -0.828785,
		0.746848, -0.396211, -0.534074,
		-0.552595, -0.816553, -0.166975,
		29.823843, 38.945606, 28.965248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454285, 39.306217, 28.459351>,  <30.210661, 39.517193, 29.082130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454285, 39.306217, 28.459351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082060, 39.171017, 28.515654>,  <29.858725, 39.089897, 28.549435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082060, 39.171017, 28.515654>,  <30.454285, 39.306217, 28.459351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082060, 39.171017, 28.515654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332261, 0.618064, -0.712460,
		0.153817, -0.709755, -0.687451,
		-0.930560, -0.338002, 0.140755,
		29.802891, 39.069614, 28.557880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259480, 39.065407, 27.789499>,  <30.454285, 39.306217, 28.459351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259480, 39.065407, 27.789499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892599, 39.042084, 27.947153>,  <29.672470, 39.028091, 28.041746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892599, 39.042084, 27.947153>,  <30.259480, 39.065407, 27.789499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892599, 39.042084, 27.947153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374473, 0.463969, -0.802809,
		-0.136056, -0.883930, -0.447388,
		-0.917201, -0.058308, 0.394134,
		29.617439, 39.024590, 28.065393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746719, 38.731674, 27.273874>,  <30.259480, 39.065407, 27.789499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746719, 38.731674, 27.273874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.532070, 38.948231, 27.532774>,  <29.403280, 39.078163, 27.688114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.532070, 38.948231, 27.532774>,  <29.746719, 38.731674, 27.273874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532070, 38.948231, 27.532774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410484, 0.502687, -0.760794,
		-0.737252, -0.673945, -0.047521,
		-0.536622, 0.541391, 0.647251,
		29.371084, 39.110649, 27.726950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130518, 38.770187, 26.901068>,  <29.746719, 38.731674, 27.273874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130518, 38.770187, 26.901068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.153376, 39.064713, 27.170759>,  <29.167089, 39.241428, 27.332575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.153376, 39.064713, 27.170759>,  <29.130518, 38.770187, 26.901068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153376, 39.064713, 27.170759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380958, 0.640314, -0.666985,
		-0.922825, -0.218739, 0.317093,
		0.057143, 0.736309, 0.674228,
		29.170519, 39.285606, 27.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474897, 39.049286, 26.896910>,  <29.130518, 38.770187, 26.901068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474897, 39.049286, 26.896910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695414, 39.339886, 27.060993>,  <28.827724, 39.514248, 27.159443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695414, 39.339886, 27.060993>,  <28.474897, 39.049286, 26.896910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695414, 39.339886, 27.060993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323736, 0.639423, -0.697376,
		-0.768942, 0.251659, 0.587703,
		0.551292, 0.726503, 0.410208,
		28.860802, 39.557838, 27.184055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180109, 39.577805, 26.571835>,  <28.474897, 39.049286, 26.896910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180109, 39.577805, 26.571835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.461340, 39.787231, 26.764318>,  <28.630079, 39.912888, 26.879808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.461340, 39.787231, 26.764318>,  <28.180109, 39.577805, 26.571835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461340, 39.787231, 26.764318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128688, 0.759201, -0.638007,
		-0.699372, 0.386643, 0.601154,
		0.703078, 0.523565, 0.481207,
		28.672264, 39.944302, 26.908680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898771, 40.173946, 26.689989>,  <28.180109, 39.577805, 26.571835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898771, 40.173946, 26.689989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.295927, 40.212021, 26.661407>,  <28.534222, 40.234867, 26.644258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.295927, 40.212021, 26.661407>,  <27.898771, 40.173946, 26.689989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295927, 40.212021, 26.661407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117849, 0.701963, -0.702395,
		-0.016702, 0.705823, 0.708191,
		0.992891, 0.095191, -0.071456,
		28.593794, 40.240578, 26.639971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026306, 40.866844, 26.737606>,  <27.898771, 40.173946, 26.689989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026306, 40.866844, 26.737606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364624, 40.711681, 26.591099>,  <28.567616, 40.618584, 26.503195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364624, 40.711681, 26.591099>,  <28.026306, 40.866844, 26.737606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364624, 40.711681, 26.591099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042894, 0.733754, -0.678060,
		0.531778, 0.557791, 0.637246,
		0.845797, -0.387912, -0.366268,
		28.618362, 40.595306, 26.481218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373325, 41.466038, 26.577454>,  <28.026306, 40.866844, 26.737606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373325, 41.466038, 26.577454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.557537, 41.186127, 26.359015>,  <28.668064, 41.018181, 26.227951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.557537, 41.186127, 26.359015>,  <28.373325, 41.466038, 26.577454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557537, 41.186127, 26.359015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079524, 0.645272, -0.759802,
		0.884074, 0.306485, 0.352817,
		0.460531, -0.699779, -0.546096,
		28.695696, 40.976192, 26.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057102, 41.721054, 26.326990>,  <28.373325, 41.466038, 26.577454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057102, 41.721054, 26.326990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.937870, 41.430286, 26.079529>,  <28.866331, 41.255825, 25.931053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.937870, 41.430286, 26.079529>,  <29.057102, 41.721054, 26.326990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937870, 41.430286, 26.079529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190952, 0.589604, -0.784796,
		0.935246, -0.352066, -0.036942,
		-0.298081, -0.726923, -0.618652,
		28.848446, 41.212208, 25.893932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513519, 41.655602, 25.733852>,  <29.057102, 41.721054, 26.326990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513519, 41.655602, 25.733852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.188288, 41.479504, 25.581495>,  <28.993149, 41.373844, 25.490080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.188288, 41.479504, 25.581495>,  <29.513519, 41.655602, 25.733852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188288, 41.479504, 25.581495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067831, 0.578185, -0.813081,
		0.578185, -0.686937, -0.440249,
		0.813081, 0.440249, 0.380894,
		28.944363, 41.347427, 25.467228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630396, 41.571373, 25.066381>,  <29.513519, 41.655602, 25.733852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630396, 41.571373, 25.066381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235033, 41.512924, 25.049892>,  <28.997816, 41.477856, 25.039999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235033, 41.512924, 25.049892>,  <29.630396, 41.571373, 25.066381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235033, 41.512924, 25.049892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039968, 0.512352, -0.857845,
		0.146473, -0.846252, -0.512253,
		-0.988407, -0.146125, -0.041223,
		28.938511, 41.469086, 25.037525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476484, 41.590984, 24.290140>,  <29.630396, 41.571373, 25.066381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476484, 41.590984, 24.290140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133181, 41.632504, 24.491184>,  <28.927198, 41.657413, 24.611811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133181, 41.632504, 24.491184>,  <29.476484, 41.590984, 24.290140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133181, 41.632504, 24.491184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369254, 0.555262, -0.745208,
		-0.356432, -0.825172, -0.438231,
		-0.858258, 0.103797, 0.502611,
		28.875704, 41.663643, 24.641968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035439, 41.333534, 23.813078>,  <29.476484, 41.590984, 24.290140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035439, 41.333534, 23.813078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849052, 41.589016, 24.058002>,  <28.737221, 41.742306, 24.204958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849052, 41.589016, 24.058002>,  <29.035439, 41.333534, 23.813078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849052, 41.589016, 24.058002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282246, 0.548582, -0.787016,
		-0.838577, -0.539547, -0.075349,
		-0.465967, 0.638707, 0.612313,
		28.709263, 41.780628, 24.241697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496941, 41.548813, 23.405594>,  <29.035439, 41.333534, 23.813078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496941, 41.548813, 23.405594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.530729, 41.835934, 23.682034>,  <28.551003, 42.008205, 23.847898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.530729, 41.835934, 23.682034>,  <28.496941, 41.548813, 23.405594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530729, 41.835934, 23.682034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450883, 0.646046, -0.615897,
		-0.888577, -0.259579, 0.378220,
		0.084474, 0.717804, 0.691101,
		28.556072, 42.051273, 23.889364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891846, 42.017925, 23.333036>,  <28.496941, 41.548813, 23.405594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891846, 42.017925, 23.333036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.130016, 42.248196, 23.557201>,  <28.272919, 42.386356, 23.691700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.130016, 42.248196, 23.557201>,  <27.891846, 42.017925, 23.333036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130016, 42.248196, 23.557201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289261, 0.804375, -0.518949,
		-0.749529, 0.146892, 0.645469,
		0.595428, 0.575676, 0.560412,
		28.308645, 42.420898, 23.725325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653383, 42.636936, 23.178064>,  <27.891846, 42.017925, 23.333036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653383, 42.636936, 23.178064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.005959, 42.738529, 23.337343>,  <28.217505, 42.799484, 23.432911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.005959, 42.738529, 23.337343>,  <27.653383, 42.636936, 23.178064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005959, 42.738529, 23.337343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014024, 0.856806, -0.515448,
		-0.472091, 0.448751, 0.758784,
		0.881439, 0.253979, 0.398197,
		28.270390, 42.814724, 23.456802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531067, 43.144382, 23.696716>,  <27.653383, 42.636936, 23.178064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531067, 43.144382, 23.696716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.904018, 43.158260, 23.552794>,  <28.127790, 43.166588, 23.466440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.904018, 43.158260, 23.552794>,  <27.531067, 43.144382, 23.696716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904018, 43.158260, 23.552794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237276, 0.809668, -0.536784,
		0.272700, 0.585861, 0.763152,
		0.932381, 0.034697, -0.359807,
		28.183733, 43.168671, 23.444851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702932, 43.762543, 23.499287>,  <27.531067, 43.144382, 23.696716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702932, 43.762543, 23.499287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999653, 43.611961, 23.277292>,  <28.177685, 43.521610, 23.144096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999653, 43.611961, 23.277292>,  <27.702932, 43.762543, 23.499287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999653, 43.611961, 23.277292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045356, 0.797513, -0.601594,
		0.669083, 0.471436, 0.574523,
		0.741802, -0.376458, -0.554985,
		28.222193, 43.499023, 23.110796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108599, 44.346603, 23.237783>,  <27.702932, 43.762543, 23.499287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108599, 44.346603, 23.237783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.215633, 44.046524, 22.995922>,  <28.279854, 43.866478, 22.850805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.215633, 44.046524, 22.995922>,  <28.108599, 44.346603, 23.237783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215633, 44.046524, 22.995922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025818, 0.621729, -0.782807,
		0.963187, 0.225081, 0.146999,
		0.267588, -0.750194, -0.604653,
		28.295910, 43.821465, 22.814526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701872, 44.591469, 22.785751>,  <28.108599, 44.346603, 23.237783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701872, 44.591469, 22.785751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518267, 44.286682, 22.603012>,  <28.408104, 44.103809, 22.493368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518267, 44.286682, 22.603012>,  <28.701872, 44.591469, 22.785751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518267, 44.286682, 22.603012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115136, 0.560903, -0.819836,
		0.880939, -0.323714, -0.345191,
		-0.459011, -0.761969, -0.456850,
		28.380564, 44.058090, 22.465958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050407, 44.410912, 22.243259>,  <28.701872, 44.591469, 22.785751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050407, 44.410912, 22.243259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673317, 44.297752, 22.172564>,  <28.447063, 44.229858, 22.130146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673317, 44.297752, 22.172564>,  <29.050407, 44.410912, 22.243259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673317, 44.297752, 22.172564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002395, 0.535573, -0.844485,
		0.333558, -0.795695, -0.505577,
		-0.942726, -0.282896, -0.176739,
		28.390499, 44.212883, 22.119541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767309, 44.011993, 22.155218>,  <29.050407, 44.410912, 22.243259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767309, 44.011993, 22.155218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.141077, 44.073708, 22.026808>,  <30.365337, 44.110737, 21.949760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.141077, 44.073708, 22.026808>,  <29.767309, 44.011993, 22.155218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141077, 44.073708, 22.026808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342999, -0.146885, 0.927780,
		0.095988, -0.977047, -0.190172,
		0.934418, 0.154285, -0.321027,
		30.421402, 44.119991, 21.930500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160940, 43.357571, 22.372007>,  <29.767309, 44.011993, 22.155218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160940, 43.357571, 22.372007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419529, 43.659203, 22.325640>,  <30.574682, 43.840183, 22.297819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419529, 43.659203, 22.325640>,  <30.160940, 43.357571, 22.372007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419529, 43.659203, 22.325640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534218, -0.338934, 0.774425,
		0.544690, -0.562569, -0.621955,
		0.646470, 0.754082, -0.115920,
		30.613470, 43.885426, 22.290863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832632, 42.995266, 22.235374>,  <30.160940, 43.357571, 22.372007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832632, 42.995266, 22.235374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903856, 43.375271, 22.337957>,  <30.946590, 43.603275, 22.399508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903856, 43.375271, 22.337957>,  <30.832632, 42.995266, 22.235374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903856, 43.375271, 22.337957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629350, -0.310296, 0.712485,
		0.756447, 0.034535, -0.653142,
		0.178061, 0.950013, 0.256457,
		30.957275, 43.660275, 22.414894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531218, 43.074028, 22.349487>,  <30.832632, 42.995266, 22.235374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531218, 43.074028, 22.349487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410383, 43.398293, 22.550117>,  <31.337883, 43.592850, 22.670496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410383, 43.398293, 22.550117>,  <31.531218, 43.074028, 22.349487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410383, 43.398293, 22.550117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567083, -0.270117, 0.778109,
		0.766263, 0.519492, -0.378111,
		-0.302088, 0.810657, 0.501576,
		31.319757, 43.641491, 22.700590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115219, 43.381783, 22.484756>,  <31.531218, 43.074028, 22.349487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115219, 43.381783, 22.484756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857868, 43.506371, 22.764488>,  <31.703459, 43.581123, 22.932327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857868, 43.506371, 22.764488>,  <32.115219, 43.381783, 22.484756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857868, 43.506371, 22.764488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507351, -0.510607, 0.694172,
		0.573292, 0.801417, 0.170488,
		-0.643374, 0.311466, 0.699327,
		31.664856, 43.599812, 22.974287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
