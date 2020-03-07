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
	<2.302231, 2.438919, -0.084664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.955116, 2.623634, -0.011235>,  <1.746848, 2.734464, 0.032822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.955116, 2.623634, -0.011235>,  <2.302231, 2.438919, -0.084664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.955116, 2.623634, -0.011235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146566, -0.115136, 0.982478,
		0.474833, 0.879486, 0.032231,
		-0.867786, 0.461788, 0.183573,
		1.694780, 2.762171, 0.043837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.429277, 3.099341, 0.294046>,  <2.302231, 2.438919, -0.084664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.429277, 3.099341, 0.294046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115959, 2.860107, 0.361864>,  <1.927969, 2.716567, 0.402555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115959, 2.860107, 0.361864>,  <2.429277, 3.099341, 0.294046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115959, 2.860107, 0.361864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241084, -0.040864, 0.969643,
		-0.573000, 0.800391, 0.176197,
		-0.783294, -0.598084, 0.169546,
		1.880971, 2.680682, 0.412728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.367387, 3.110116, 0.950695>,  <2.429277, 3.099341, 0.294046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.367387, 3.110116, 0.950695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.116211, 2.801300, 0.911405>,  <1.965506, 2.616011, 0.887830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.116211, 2.801300, 0.911405>,  <2.367387, 3.110116, 0.950695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.116211, 2.801300, 0.911405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105085, -0.209167, 0.972217,
		-0.771135, 0.600171, 0.212474,
		-0.627939, -0.772039, -0.098227,
		1.927829, 2.569688, 0.881937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.785042, 3.198692, 1.521406>,  <2.367387, 3.110116, 0.950695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.785042, 3.198692, 1.521406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.883888, 2.824181, 1.421552>,  <1.943196, 2.599474, 1.361639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.883888, 2.824181, 1.421552>,  <1.785042, 3.198692, 1.521406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.883888, 2.824181, 1.421552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032810, -0.265562, 0.963535,
		-0.968430, -0.229914, -0.096344,
		0.247116, -0.936278, -0.249635,
		1.958023, 2.543297, 1.346661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.353312, 2.896947, 1.928424>,  <1.785042, 3.198692, 1.521406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.353312, 2.896947, 1.928424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.648247, 2.647903, 1.823586>,  <1.825208, 2.498477, 1.760684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.648247, 2.647903, 1.823586>,  <1.353312, 2.896947, 1.928424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.648247, 2.647903, 1.823586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021502, -0.409420, 0.912093,
		-0.675183, -0.666884, -0.315268,
		0.737336, -0.622608, -0.262094,
		1.869448, 2.461121, 1.744958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.089009, 2.234723, 2.210496>,  <1.353312, 2.896947, 1.928424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.089009, 2.234723, 2.210496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.484428, 2.201149, 2.160337>,  <1.721680, 2.181005, 2.130242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.484428, 2.201149, 2.160337>,  <1.089009, 2.234723, 2.210496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.484428, 2.201149, 2.160337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088216, -0.352753, 0.931549,
		-0.122423, -0.931944, -0.341310,
		0.988550, -0.083934, -0.125398,
		1.780993, 2.175969, 2.122718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.225956, 1.455235, 2.305712>,  <1.089009, 2.234723, 2.210496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.225956, 1.455235, 2.305712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567688, 1.653023, 2.369738>,  <1.772727, 1.771695, 2.408153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567688, 1.653023, 2.369738>,  <1.225956, 1.455235, 2.305712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.567688, 1.653023, 2.369738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144196, -0.521390, 0.841047,
		0.499328, -0.695451, -0.516739,
		0.854330, 0.494470, 0.160063,
		1.823987, 1.801364, 2.417757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.758085, 0.893500, 2.524638>,  <1.225956, 1.455235, 2.305712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.758085, 0.893500, 2.524638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.849976, 1.261772, 2.650860>,  <1.905110, 1.482735, 2.726593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.849976, 1.261772, 2.650860>,  <1.758085, 0.893500, 2.524638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.849976, 1.261772, 2.650860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022423, -0.329148, 0.944012,
		0.972997, -0.209789, -0.096258,
		0.229727, 0.920679, 0.315556,
		1.918894, 1.537976, 2.745527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.130705, 1.635711, 4.257619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.765694, 1.681786, 4.414602>,  <1.546687, 1.709430, 4.508791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.765694, 1.681786, 4.414602>,  <2.130705, 1.635711, 4.257619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.765694, 1.681786, 4.414602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038436, 0.931129, -0.362660,
		-0.407202, -0.346023, -0.845255,
		-0.912529, 0.115187, 0.392457,
		1.491935, 1.716342, 4.532339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.827334, 2.131980, 3.826216>,  <2.130705, 1.635711, 4.257619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.827334, 2.131980, 3.826216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595406, 2.143745, 4.151901>,  <1.456249, 2.150805, 4.347312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595406, 2.143745, 4.151901>,  <1.827334, 2.131980, 3.826216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595406, 2.143745, 4.151901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229695, 0.952911, -0.197994,
		-0.781696, -0.301822, -0.545761,
		-0.579820, 0.029413, 0.814214,
		1.421460, 2.152569, 4.396165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.644411, 2.617993, 3.296213>,  <1.827334, 2.131980, 3.826216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.644411, 2.617993, 3.296213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888206, 2.301567, 3.317151>,  <2.034484, 2.111712, 3.329714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888206, 2.301567, 3.317151>,  <1.644411, 2.617993, 3.296213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.888206, 2.301567, 3.317151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157137, 0.055826, -0.985998,
		0.777066, 0.609180, 0.158331,
		0.609489, -0.791064, 0.052344,
		2.071053, 2.064248, 3.332854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.391140, 2.777137, 3.183024>,  <1.644411, 2.617993, 3.296213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.391140, 2.777137, 3.183024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243309, 2.432625, 3.043534>,  <2.154611, 2.225918, 2.959840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243309, 2.432625, 3.043534>,  <2.391140, 2.777137, 3.183024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.243309, 2.432625, 3.043534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158028, 0.311569, -0.936991,
		0.915664, -0.401398, 0.020957,
		-0.369577, -0.861280, -0.348725,
		2.132436, 2.174241, 2.938917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.854780, 2.566538, 2.656872>,  <2.391140, 2.777137, 3.183024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.854780, 2.566538, 2.656872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.539246, 2.329155, 2.592939>,  <2.349925, 2.186725, 2.554580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.539246, 2.329155, 2.592939>,  <2.854780, 2.566538, 2.656872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.539246, 2.329155, 2.592939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122149, 0.103486, -0.987102,
		0.602343, -0.798185, -0.009143,
		-0.788837, -0.593457, -0.159832,
		2.302595, 2.151118, 2.544990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.033004, 1.955417, 2.206928>,  <2.854780, 2.566538, 2.656872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.033004, 1.955417, 2.206928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.645523, 2.052406, 2.185670>,  <2.413035, 2.110600, 2.172915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.645523, 2.052406, 2.185670>,  <3.033004, 1.955417, 2.206928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.645523, 2.052406, 2.185670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043340, -0.045603, -0.998019,
		-0.244417, -0.969086, 0.033667,
		-0.968701, 0.242474, -0.053146,
		2.354913, 2.125148, 2.169726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.863283, 1.695387, 1.533956>,  <3.033004, 1.955417, 2.206928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.863283, 1.695387, 1.533956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.534889, 1.914803, 1.597319>,  <2.337853, 2.046452, 1.635336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.534889, 1.914803, 1.597319>,  <2.863283, 1.695387, 1.533956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.534889, 1.914803, 1.597319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037240, 0.328299, -0.943839,
		-0.569736, -0.768977, -0.289955,
		-0.820983, 0.548538, 0.158407,
		2.288594, 2.079364, 1.644841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.448263, 1.460868, 0.980820>,  <2.863283, 1.695387, 1.533956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.448263, 1.460868, 0.980820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.312469, 1.821922, 1.086650>,  <2.230993, 2.038555, 1.150149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.312469, 1.821922, 1.086650>,  <2.448263, 1.460868, 0.980820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.312469, 1.821922, 1.086650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083361, 0.251301, -0.964313,
		-0.936910, -0.349424, -0.010068,
		-0.339484, 0.902635, 0.264575,
		2.210624, 2.092713, 1.166023>
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
