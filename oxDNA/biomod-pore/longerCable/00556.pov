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
	<23.775553, 34.998497, 35.081871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104052, 34.925774, 35.298206>,  <24.301151, 34.882137, 35.428005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104052, 34.925774, 35.298206>,  <23.775553, 34.998497, 35.081871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104052, 34.925774, 35.298206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570524, 0.248870, -0.782666,
		0.007701, 0.951319, 0.308112,
		0.821245, -0.181812, 0.540834,
		24.350426, 34.871231, 35.460457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220230, 35.657356, 35.209442>,  <23.775553, 34.998497, 35.081871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220230, 35.657356, 35.209442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432203, 35.318405, 35.196033>,  <24.559387, 35.115036, 35.187988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432203, 35.318405, 35.196033>,  <24.220230, 35.657356, 35.209442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432203, 35.318405, 35.196033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460346, 0.320644, -0.827810,
		0.712216, 0.423252, 0.560006,
		0.529935, -0.847376, -0.033526,
		24.591183, 35.064194, 35.185974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002850, 35.787155, 35.263042>,  <24.220230, 35.657356, 35.209442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002850, 35.787155, 35.263042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872744, 35.472363, 35.053333>,  <24.794680, 35.283485, 34.927505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872744, 35.472363, 35.053333>,  <25.002850, 35.787155, 35.263042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872744, 35.472363, 35.053333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428589, 0.371518, -0.823581,
		0.842920, -0.492580, 0.216450,
		-0.325265, -0.786981, -0.524275,
		24.775164, 35.236267, 34.896049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420420, 35.411343, 34.851437>,  <25.002850, 35.787155, 35.263042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420420, 35.411343, 34.851437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080578, 35.324074, 34.659367>,  <24.876673, 35.271713, 34.544125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080578, 35.324074, 34.659367>,  <25.420420, 35.411343, 34.851437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080578, 35.324074, 34.659367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405089, 0.313086, -0.858999,
		0.337751, -0.924325, -0.177618,
		-0.849604, -0.218176, -0.480179,
		24.825697, 35.258621, 34.515312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559046, 34.981976, 34.287880>,  <25.420420, 35.411343, 34.851437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559046, 34.981976, 34.287880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233862, 35.200638, 34.207615>,  <25.038752, 35.331837, 34.159454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233862, 35.200638, 34.207615>,  <25.559046, 34.981976, 34.287880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233862, 35.200638, 34.207615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366062, 0.211754, -0.906178,
		-0.452876, -0.810140, -0.372257,
		-0.812959, 0.546656, -0.200663,
		24.989975, 35.364635, 34.147415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134771, 34.854851, 33.746956>,  <25.559046, 34.981976, 34.287880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134771, 34.854851, 33.746956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129602, 35.251663, 33.797100>,  <25.126501, 35.489750, 33.827187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129602, 35.251663, 33.797100>,  <25.134771, 34.854851, 33.746956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129602, 35.251663, 33.797100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401944, 0.119950, -0.907773,
		-0.915573, 0.038657, -0.400290,
		-0.012923, 0.992027, 0.125361,
		25.125725, 35.549271, 33.834709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480225, 35.152462, 33.210438>,  <25.134771, 34.854851, 33.746956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480225, 35.152462, 33.210438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395266, 35.511688, 33.364513>,  <25.344290, 35.727222, 33.456959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395266, 35.511688, 33.364513>,  <25.480225, 35.152462, 33.210438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395266, 35.511688, 33.364513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262155, 0.432101, -0.862881,
		-0.941361, -0.082295, -0.327209,
		-0.212398, 0.898063, 0.385189,
		25.331547, 35.781109, 33.480068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913017, 35.503674, 32.821030>,  <25.480225, 35.152462, 33.210438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913017, 35.503674, 32.821030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205490, 35.715897, 32.992554>,  <25.380974, 35.843231, 33.095467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205490, 35.715897, 32.992554>,  <24.913017, 35.503674, 32.821030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205490, 35.715897, 32.992554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308638, 0.303290, -0.901531,
		-0.608369, 0.791531, 0.058010,
		0.731184, 0.530560, 0.428809,
		25.424845, 35.875065, 33.121197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836155, 36.180141, 32.713295>,  <24.913017, 35.503674, 32.821030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836155, 36.180141, 32.713295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220888, 36.071186, 32.702816>,  <25.451727, 36.005814, 32.696529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220888, 36.071186, 32.702816>,  <24.836155, 36.180141, 32.713295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220888, 36.071186, 32.702816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055712, 0.288654, -0.955811,
		0.267910, 0.917870, 0.292811,
		0.961832, -0.272384, -0.026196,
		25.509438, 35.989471, 32.694958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338377, 36.817741, 32.760117>,  <24.836155, 36.180141, 32.713295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338377, 36.817741, 32.760117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452915, 36.493568, 32.555679>,  <25.521639, 36.299065, 32.433018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452915, 36.493568, 32.555679>,  <25.338377, 36.817741, 32.760117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452915, 36.493568, 32.555679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087205, 0.553257, -0.828433,
		0.954150, 0.192648, 0.229096,
		0.286345, -0.810428, -0.511091,
		25.538818, 36.250439, 32.402351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916075, 37.004612, 32.558121>,  <25.338377, 36.817741, 32.760117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916075, 37.004612, 32.558121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788675, 36.725834, 32.301117>,  <25.712234, 36.558567, 32.146915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788675, 36.725834, 32.301117>,  <25.916075, 37.004612, 32.558121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788675, 36.725834, 32.301117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191310, 0.616604, -0.763676,
		0.928417, -0.366150, -0.063056,
		-0.318500, -0.696946, -0.642513,
		25.693125, 36.516750, 32.108364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396595, 36.999168, 31.856300>,  <25.916075, 37.004612, 32.558121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396595, 36.999168, 31.856300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040266, 36.828751, 31.793158>,  <25.826468, 36.726501, 31.755272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040266, 36.828751, 31.793158>,  <26.396595, 36.999168, 31.856300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040266, 36.828751, 31.793158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096186, 0.516398, -0.850930,
		0.444047, -0.742847, -0.501000,
		-0.890826, -0.426042, -0.157854,
		25.773018, 36.700939, 31.745802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757898, 37.217484, 31.501587>,  <26.396595, 36.999168, 31.856300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757898, 37.217484, 31.501587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989960, 36.976151, 31.282711>,  <26.129196, 36.831352, 31.151386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989960, 36.976151, 31.282711>,  <25.757898, 37.217484, 31.501587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989960, 36.976151, 31.282711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375109, -0.794227, 0.478013,
		-0.722992, -0.072065, -0.687088,
		0.580152, -0.603332, -0.547187,
		26.164005, 36.795151, 31.118555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345137, 36.860664, 30.938713>,  <25.757898, 37.217484, 31.501587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345137, 36.860664, 30.938713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665035, 36.669724, 31.084335>,  <25.856976, 36.555157, 31.171709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665035, 36.669724, 31.084335>,  <25.345137, 36.860664, 30.938713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665035, 36.669724, 31.084335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598710, -0.678799, 0.425179,
		0.044159, -0.558000, -0.828665,
		0.799747, -0.477355, 0.364056,
		25.904959, 36.526516, 31.193552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036673, 36.220806, 31.111294>,  <25.345137, 36.860664, 30.938713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036673, 36.220806, 31.111294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394451, 36.272366, 31.282574>,  <25.609118, 36.303299, 31.385342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394451, 36.272366, 31.282574>,  <25.036673, 36.220806, 31.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394451, 36.272366, 31.282574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333845, -0.444604, 0.831189,
		0.297515, -0.886405, -0.354643,
		0.894445, 0.128895, 0.428198,
		25.662785, 36.311035, 31.411034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463512, 35.513939, 31.289757>,  <25.036673, 36.220806, 31.111294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463512, 35.513939, 31.289757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541655, 35.811371, 31.545544>,  <25.588539, 35.989830, 31.699017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541655, 35.811371, 31.545544>,  <25.463512, 35.513939, 31.289757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541655, 35.811371, 31.545544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012539, -0.650083, 0.759759,
		0.980652, -0.156442, -0.117674,
		0.195356, 0.743584, 0.639467,
		25.600262, 36.034447, 31.737385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917437, 35.133083, 31.794846>,  <25.463512, 35.513939, 31.289757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917437, 35.133083, 31.794846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775990, 35.466682, 31.964268>,  <25.691120, 35.666843, 32.065922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775990, 35.466682, 31.964268>,  <25.917437, 35.133083, 31.794846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775990, 35.466682, 31.964268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041202, -0.438487, 0.897793,
		0.934482, 0.334928, 0.120695,
		-0.353619, 0.833998, 0.423557,
		25.669905, 35.716881, 32.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417719, 35.300453, 32.365738>,  <25.917437, 35.133083, 31.794846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417719, 35.300453, 32.365738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051718, 35.446609, 32.434155>,  <25.832117, 35.534306, 32.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051718, 35.446609, 32.434155>,  <26.417719, 35.300453, 32.365738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051718, 35.446609, 32.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095523, -0.608110, 0.788085,
		0.391975, 0.704762, 0.591326,
		-0.915003, 0.365395, 0.171043,
		25.777216, 35.556229, 32.485466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915571, 35.452831, 31.806099>,  <26.417719, 35.300453, 32.365738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915571, 35.452831, 31.806099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065371, 35.793232, 31.658836>,  <27.155251, 35.997475, 31.570478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065371, 35.793232, 31.658836>,  <26.915571, 35.452831, 31.806099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065371, 35.793232, 31.658836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676199, -0.021016, -0.736419,
		-0.634435, 0.524735, 0.567579,
		0.374497, 0.851006, -0.368158,
		27.177719, 36.048534, 31.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282770, 34.801193, 31.680090>,  <26.915571, 35.452831, 31.806099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282770, 34.801193, 31.680090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116434, 34.675823, 31.338600>,  <27.016632, 34.600601, 31.133707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116434, 34.675823, 31.338600>,  <27.282770, 34.801193, 31.680090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116434, 34.675823, 31.338600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800120, 0.320143, -0.507264,
		0.432302, -0.894021, 0.117649,
		-0.415840, -0.313425, -0.853723,
		26.991682, 34.581795, 31.082483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686987, 34.239510, 31.270502>,  <27.282770, 34.801193, 31.680090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686987, 34.239510, 31.270502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460768, 34.497612, 31.065054>,  <27.325037, 34.652473, 30.941786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460768, 34.497612, 31.065054>,  <27.686987, 34.239510, 31.270502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460768, 34.497612, 31.065054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814964, 0.341762, -0.468010,
		-0.126448, -0.683264, -0.719139,
		-0.565548, 0.645251, -0.513620,
		27.291103, 34.691189, 30.910969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692064, 34.154022, 30.526581>,  <27.686987, 34.239510, 31.270502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692064, 34.154022, 30.526581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624779, 34.547626, 30.549973>,  <27.584408, 34.783791, 30.564009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624779, 34.547626, 30.549973>,  <27.692064, 34.154022, 30.526581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624779, 34.547626, 30.549973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822939, 0.172841, -0.541200,
		-0.542656, -0.042911, -0.838858,
		-0.168213, 0.984015, 0.058480,
		27.574314, 34.842831, 30.567516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685764, 34.475491, 29.886095>,  <27.692064, 34.154022, 30.526581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685764, 34.475491, 29.886095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829163, 34.706909, 30.179153>,  <27.915201, 34.845760, 30.354988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829163, 34.706909, 30.179153>,  <27.685764, 34.475491, 29.886095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829163, 34.706909, 30.179153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611961, 0.447022, -0.652438,
		-0.704973, 0.682245, -0.193792,
		0.358493, 0.578544, 0.732646,
		27.936710, 34.880474, 30.398947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804054, 35.248524, 29.610689>,  <27.685764, 34.475491, 29.886095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804054, 35.248524, 29.610689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047096, 35.186199, 29.922211>,  <28.192921, 35.148804, 30.109123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047096, 35.186199, 29.922211>,  <27.804054, 35.248524, 29.610689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047096, 35.186199, 29.922211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740159, 0.466729, -0.484075,
		-0.288065, 0.870566, 0.398915,
		0.607605, -0.155816, 0.778806,
		28.229378, 35.139454, 30.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049408, 35.900913, 30.024055>,  <27.804054, 35.248524, 29.610689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049408, 35.900913, 30.024055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304184, 35.592613, 30.017805>,  <28.457050, 35.407631, 30.014055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304184, 35.592613, 30.017805>,  <28.049408, 35.900913, 30.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304184, 35.592613, 30.017805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674921, 0.567311, -0.471848,
		0.372543, 0.289994, 0.881541,
		0.636941, -0.770754, -0.015624,
		28.495266, 35.361385, 30.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675888, 36.163536, 30.334734>,  <28.049408, 35.900913, 30.024055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675888, 36.163536, 30.334734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750809, 35.849037, 30.099199>,  <28.795761, 35.660336, 29.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750809, 35.849037, 30.099199>,  <28.675888, 36.163536, 30.334734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750809, 35.849037, 30.099199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790199, 0.476694, -0.385160,
		0.583527, -0.393158, 0.710580,
		0.187300, -0.786251, -0.588837,
		28.806999, 35.613163, 29.922548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454634, 35.876705, 30.212166>,  <28.675888, 36.163536, 30.334734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454634, 35.876705, 30.212166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310064, 35.782169, 29.851385>,  <29.223322, 35.725449, 29.634916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310064, 35.782169, 29.851385>,  <29.454634, 35.876705, 30.212166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310064, 35.782169, 29.851385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744931, 0.508579, -0.431769,
		0.560759, -0.827943, -0.007754,
		-0.361424, -0.236342, -0.901951,
		29.201637, 35.711266, 29.580799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879045, 35.476173, 29.774639>,  <29.454634, 35.876705, 30.212166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879045, 35.476173, 29.774639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678921, 35.716881, 29.525620>,  <29.558846, 35.861305, 29.376207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678921, 35.716881, 29.525620>,  <29.879045, 35.476173, 29.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678921, 35.716881, 29.525620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860070, 0.262482, -0.437474,
		-0.099849, -0.754309, -0.648883,
		-0.500311, 0.601766, -0.622549,
		29.528828, 35.897411, 29.338854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814789, 35.301277, 29.079977>,  <29.879045, 35.476173, 29.774639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814789, 35.301277, 29.079977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852026, 35.696762, 29.126945>,  <29.874369, 35.934052, 29.155127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852026, 35.696762, 29.126945>,  <29.814789, 35.301277, 29.079977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852026, 35.696762, 29.126945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899190, -0.032845, -0.436324,
		-0.427541, 0.146204, -0.892095,
		0.093093, 0.988709, 0.117422,
		29.879953, 35.993374, 29.162172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777321, 35.626633, 28.498737>,  <29.814789, 35.301277, 29.079977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777321, 35.626633, 28.498737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991529, 35.847012, 28.754759>,  <30.120054, 35.979240, 28.908371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991529, 35.847012, 28.754759>,  <29.777321, 35.626633, 28.498737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991529, 35.847012, 28.754759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809987, -0.120570, -0.573920,
		-0.239030, 0.825782, -0.510831,
		0.535524, 0.550951, 0.640053,
		30.152187, 36.012299, 28.946775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200966, 36.111465, 28.198423>,  <29.777321, 35.626633, 28.498737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200966, 36.111465, 28.198423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411730, 36.064308, 28.535105>,  <30.538189, 36.036015, 28.737114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411730, 36.064308, 28.535105>,  <30.200966, 36.111465, 28.198423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411730, 36.064308, 28.535105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841155, -0.069525, -0.536307,
		0.121748, 0.990589, 0.062536,
		0.526912, -0.117896, 0.841703,
		30.569803, 36.028938, 28.787615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905739, 36.143131, 27.971188>,  <30.200966, 36.111465, 28.198423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905739, 36.143131, 27.971188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960117, 36.018658, 28.347418>,  <30.992744, 35.943974, 28.573156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960117, 36.018658, 28.347418>,  <30.905739, 36.143131, 27.971188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960117, 36.018658, 28.347418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903922, -0.349641, -0.246326,
		0.405517, 0.883693, 0.233757,
		0.135945, -0.311188, 0.940575,
		31.000900, 35.925301, 28.629591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612906, 36.405689, 28.219040>,  <30.905739, 36.143131, 27.971188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612906, 36.405689, 28.219040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526783, 36.111515, 28.476032>,  <31.475109, 35.935013, 28.630228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526783, 36.111515, 28.476032>,  <31.612906, 36.405689, 28.219040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526783, 36.111515, 28.476032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948176, -0.314867, -0.042669,
		0.233677, 0.600000, 0.765111,
		-0.215307, -0.735431, 0.642483,
		31.462191, 35.890884, 28.668777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172421, 36.316162, 28.729456>,  <31.612906, 36.405689, 28.219040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172421, 36.316162, 28.729456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981602, 35.965054, 28.747133>,  <31.867111, 35.754391, 28.757740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981602, 35.965054, 28.747133>,  <32.172421, 36.316162, 28.729456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981602, 35.965054, 28.747133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874687, -0.479072, -0.073570,
		0.085749, 0.003559, 0.996310,
		-0.477042, -0.877768, 0.044193,
		31.838490, 35.701721, 28.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651985, 35.941349, 29.110016>,  <32.172421, 36.316162, 28.729456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651985, 35.941349, 29.110016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360722, 35.679913, 29.027458>,  <32.185963, 35.523052, 28.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360722, 35.679913, 29.027458>,  <32.651985, 35.941349, 29.110016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360722, 35.679913, 29.027458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677945, -0.731114, -0.076571,
		-0.100850, -0.195679, 0.975469,
		-0.728162, -0.653592, -0.206392,
		32.142273, 35.483833, 28.965540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833599, 35.364220, 29.444254>,  <32.651985, 35.941349, 29.110016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833599, 35.364220, 29.444254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558735, 35.231380, 29.185791>,  <32.393818, 35.151676, 29.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558735, 35.231380, 29.185791>,  <32.833599, 35.364220, 29.444254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558735, 35.231380, 29.185791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473448, -0.879311, -0.051563,
		-0.551051, -0.341355, 0.761458,
		-0.687161, -0.332097, -0.646160,
		32.352589, 35.131752, 28.991943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783108, 34.668221, 29.494183>,  <32.833599, 35.364220, 29.444254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783108, 34.668221, 29.494183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565815, 34.695885, 29.159491>,  <32.435440, 34.712482, 28.958675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565815, 34.695885, 29.159491>,  <32.783108, 34.668221, 29.494183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565815, 34.695885, 29.159491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383771, -0.865940, -0.320731,
		-0.746741, -0.495343, 0.443860,
		-0.543228, 0.069163, -0.836732,
		32.402847, 34.716633, 28.908470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337936, 34.092049, 29.484907>,  <32.783108, 34.668221, 29.494183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337936, 34.092049, 29.484907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402187, 34.233494, 29.116308>,  <32.440739, 34.318359, 28.895149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402187, 34.233494, 29.116308>,  <32.337936, 34.092049, 29.484907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402187, 34.233494, 29.116308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542534, -0.811561, -0.216854,
		-0.824533, -0.465110, -0.322207,
		0.160630, 0.353611, -0.921497,
		32.450375, 34.339577, 28.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237301, 33.538559, 28.899460>,  <32.337936, 34.092049, 29.484907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237301, 33.538559, 28.899460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507320, 33.823551, 28.822849>,  <32.669334, 33.994545, 28.776884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507320, 33.823551, 28.822849>,  <32.237301, 33.538559, 28.899460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507320, 33.823551, 28.822849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699447, -0.700625, -0.141059,
		-0.234689, -0.038739, -0.971298,
		0.675052, 0.712477, -0.191525,
		32.709835, 34.037292, 28.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482967, 32.980846, 28.438393>,  <32.237301, 33.538559, 28.899460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482967, 32.980846, 28.438393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816677, 33.095070, 28.249737>,  <33.016903, 33.163605, 28.136543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816677, 33.095070, 28.249737>,  <32.482967, 32.980846, 28.438393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816677, 33.095070, 28.249737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411829, 0.891507, -0.188710,
		0.366582, 0.351671, 0.861363,
		0.834275, 0.285557, -0.471639,
		33.066959, 33.180737, 28.108246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965515, 33.493778, 28.683069>,  <32.482967, 32.980846, 28.438393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965515, 33.493778, 28.683069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948414, 33.511120, 28.283812>,  <32.938152, 33.521526, 28.044256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948414, 33.511120, 28.283812>,  <32.965515, 33.493778, 28.683069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948414, 33.511120, 28.283812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432971, 0.899564, 0.057623,
		0.900393, 0.434631, -0.019689,
		-0.042757, 0.043358, -0.998144,
		32.935585, 33.524128, 27.984367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435776, 34.077282, 28.412058>,  <32.965515, 33.493778, 28.683069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435776, 34.077282, 28.412058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115471, 33.989441, 28.189150>,  <32.923286, 33.936737, 28.055405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115471, 33.989441, 28.189150>,  <33.435776, 34.077282, 28.412058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115471, 33.989441, 28.189150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341697, 0.931611, 0.123874,
		0.491955, 0.289612, -0.821039,
		-0.800764, -0.219606, -0.557270,
		32.875240, 33.923557, 28.021969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241409, 34.582985, 27.892389>,  <33.435776, 34.077282, 28.412058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241409, 34.582985, 27.892389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921665, 34.379387, 28.020103>,  <32.729816, 34.257229, 28.096733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921665, 34.379387, 28.020103>,  <33.241409, 34.582985, 27.892389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921665, 34.379387, 28.020103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450111, 0.859288, 0.242951,
		-0.398019, 0.050492, -0.915986,
		-0.799363, -0.508994, 0.319286,
		32.681858, 34.226688, 28.115889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585533, 34.824322, 27.635231>,  <33.241409, 34.582985, 27.892389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585533, 34.824322, 27.635231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535732, 34.662380, 27.997578>,  <32.505852, 34.565216, 28.214987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535732, 34.662380, 27.997578>,  <32.585533, 34.824322, 27.635231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535732, 34.662380, 27.997578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552694, 0.786514, 0.275546,
		-0.824032, -0.466361, -0.321680,
		-0.124502, -0.404849, 0.905868,
		32.498383, 34.540924, 28.269339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827862, 34.929764, 27.808571>,  <32.585533, 34.824322, 27.635231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827862, 34.929764, 27.808571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001457, 34.857391, 28.161596>,  <32.105614, 34.813969, 28.373411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001457, 34.857391, 28.161596>,  <31.827862, 34.929764, 27.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001457, 34.857391, 28.161596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518506, 0.750958, 0.408917,
		-0.736752, -0.635081, 0.232097,
		0.433991, -0.180926, 0.882563,
		32.131653, 34.803112, 28.426365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351633, 34.584705, 28.364040>,  <31.827862, 34.929764, 27.808571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351633, 34.584705, 28.364040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642593, 34.823387, 28.499586>,  <31.817169, 34.966595, 28.580914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642593, 34.823387, 28.499586>,  <31.351633, 34.584705, 28.364040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642593, 34.823387, 28.499586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684669, 0.664181, 0.300153,
		-0.045964, -0.450342, 0.891672,
		0.727403, 0.596705, 0.338864,
		31.860815, 35.002399, 28.601246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114040, 34.647564, 29.043215>,  <31.351633, 34.584705, 28.364040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114040, 34.647564, 29.043215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337212, 34.965355, 28.947275>,  <31.471113, 35.156029, 28.889711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337212, 34.965355, 28.947275>,  <31.114040, 34.647564, 29.043215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337212, 34.965355, 28.947275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729806, 0.607297, 0.313964,
		0.395098, -0.000124, 0.918639,
		0.557926, 0.794475, -0.239851,
		31.504589, 35.203697, 28.875320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073353, 35.006748, 29.583937>,  <31.114040, 34.647564, 29.043215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073353, 35.006748, 29.583937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218382, 35.271923, 29.321930>,  <31.305399, 35.431030, 29.164726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218382, 35.271923, 29.321930>,  <31.073353, 35.006748, 29.583937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218382, 35.271923, 29.321930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729322, 0.639399, 0.243430,
		0.580198, 0.389458, 0.715328,
		0.362574, 0.662942, -0.655018,
		31.327154, 35.470806, 29.125425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247269, 35.678410, 29.894899>,  <31.073353, 35.006748, 29.583937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247269, 35.678410, 29.894899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178848, 35.753803, 29.508074>,  <31.137796, 35.799038, 29.275978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178848, 35.753803, 29.508074>,  <31.247269, 35.678410, 29.894899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178848, 35.753803, 29.508074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665840, 0.701358, 0.254468,
		0.726222, 0.687438, 0.005531,
		-0.171052, 0.188483, -0.967065,
		31.127533, 35.810349, 29.217955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362576, 36.429367, 29.639687>,  <31.247269, 35.678410, 29.894899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362576, 36.429367, 29.639687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076777, 36.233349, 29.439949>,  <30.905298, 36.115738, 29.320107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076777, 36.233349, 29.439949>,  <31.362576, 36.429367, 29.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076777, 36.233349, 29.439949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671071, 0.681889, 0.291018,
		0.197885, 0.543028, -0.816065,
		-0.714497, -0.490049, -0.499346,
		30.862427, 36.086334, 29.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803490, 36.804836, 29.794353>,  <31.362576, 36.429367, 29.639687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803490, 36.804836, 29.794353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614550, 36.540123, 29.561481>,  <30.501184, 36.381294, 29.421759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614550, 36.540123, 29.561481>,  <30.803490, 36.804836, 29.794353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614550, 36.540123, 29.561481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880027, 0.391091, 0.269445,
		0.049372, 0.639605, -0.767116,
		-0.472351, -0.661780, -0.582178,
		30.472845, 36.341591, 29.386827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474985, 36.950039, 30.458807>,  <30.803490, 36.804836, 29.794353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474985, 36.950039, 30.458807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314297, 37.305981, 30.545315>,  <30.217884, 37.519547, 30.597219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314297, 37.305981, 30.545315>,  <30.474985, 36.950039, 30.458807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314297, 37.305981, 30.545315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693320, 0.141252, 0.706650,
		0.598269, 0.433821, -0.673701,
		-0.401722, 0.889858, 0.216270,
		30.193781, 37.572937, 30.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919220, 37.408173, 30.308275>,  <30.474985, 36.950039, 30.458807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919220, 37.408173, 30.308275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689919, 37.561218, 30.598099>,  <30.552338, 37.653046, 30.771994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689919, 37.561218, 30.598099>,  <30.919220, 37.408173, 30.308275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689919, 37.561218, 30.598099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818558, 0.227841, 0.527305,
		0.036670, 0.895374, -0.443803,
		-0.573252, 0.382615, 0.724561,
		30.517942, 37.676003, 30.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108501, 38.127853, 30.391109>,  <30.919220, 37.408173, 30.308275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108501, 38.127853, 30.391109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951738, 37.959530, 30.718359>,  <30.857679, 37.858536, 30.914709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951738, 37.959530, 30.718359>,  <31.108501, 38.127853, 30.391109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951738, 37.959530, 30.718359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795052, 0.292545, 0.531328,
		-0.462924, 0.858686, 0.219910,
		-0.391910, -0.420805, 0.818126,
		30.834166, 37.833290, 30.963797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558445, 38.419525, 30.874216>,  <31.108501, 38.127853, 30.391109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558445, 38.419525, 30.874216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338242, 38.188602, 31.115429>,  <31.206120, 38.050049, 31.260157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338242, 38.188602, 31.115429>,  <31.558445, 38.419525, 30.874216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338242, 38.188602, 31.115429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825018, -0.265806, 0.498692,
		-0.127610, 0.772049, 0.622620,
		-0.550510, -0.577311, 0.603034,
		31.173088, 38.015408, 31.296339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041199, 38.412994, 31.380407>,  <31.558445, 38.419525, 30.874216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041199, 38.412994, 31.380407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780508, 38.123573, 31.471382>,  <31.624094, 37.949921, 31.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780508, 38.123573, 31.471382>,  <32.041199, 38.412994, 31.380407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780508, 38.123573, 31.471382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700585, -0.459412, 0.546005,
		-0.290575, 0.515184, 0.806320,
		-0.651726, -0.723551, 0.227437,
		31.584990, 37.906509, 31.539614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188480, 38.354019, 32.196598>,  <32.041199, 38.412994, 31.380407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188480, 38.354019, 32.196598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212681, 38.707077, 32.383049>,  <32.227203, 38.918911, 32.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212681, 38.707077, 32.383049>,  <32.188480, 38.354019, 32.196598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212681, 38.707077, 32.383049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045802, 0.464034, -0.884633,
		-0.997117, 0.074873, -0.012351,
		0.060504, 0.882648, 0.466125,
		32.230831, 38.971870, 32.522888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753973, 38.972054, 31.828327>,  <32.188480, 38.354019, 32.196598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753973, 38.972054, 31.828327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058296, 39.151642, 32.015770>,  <32.240891, 39.259396, 32.128235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058296, 39.151642, 32.015770>,  <31.753973, 38.972054, 31.828327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058296, 39.151642, 32.015770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254382, 0.457978, -0.851790,
		-0.597041, 0.767255, 0.234224,
		0.760810, 0.448972, 0.468608,
		32.286541, 39.286335, 32.156353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645889, 39.720665, 31.945183>,  <31.753973, 38.972054, 31.828327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645889, 39.720665, 31.945183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033142, 39.624813, 31.916077>,  <32.265495, 39.567303, 31.898613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033142, 39.624813, 31.916077>,  <31.645889, 39.720665, 31.945183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033142, 39.624813, 31.916077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123326, 0.709065, -0.694275,
		0.217966, 0.663177, 0.716022,
		0.968133, -0.239632, -0.072765,
		32.323582, 39.552925, 31.894247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950665, 40.363968, 31.938137>,  <31.645889, 39.720665, 31.945183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950665, 40.363968, 31.938137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208130, 40.109432, 31.768068>,  <32.362610, 39.956711, 31.666027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208130, 40.109432, 31.768068>,  <31.950665, 40.363968, 31.938137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208130, 40.109432, 31.768068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135137, 0.641327, -0.755274,
		0.753285, 0.428684, 0.498790,
		0.643661, -0.636341, -0.425171,
		32.401230, 39.918530, 31.640516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560829, 40.813484, 31.714714>,  <31.950665, 40.363968, 31.938137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560829, 40.813484, 31.714714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606915, 40.471218, 31.512896>,  <32.634563, 40.265858, 31.391806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606915, 40.471218, 31.512896>,  <32.560829, 40.813484, 31.714714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606915, 40.471218, 31.512896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138447, 0.516801, -0.844837,
		0.983646, 0.027480, 0.178004,
		0.115209, -0.855664, -0.504545,
		32.641476, 40.214520, 31.361532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280754, 40.745903, 31.305645>,  <32.560829, 40.813484, 31.714714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280754, 40.745903, 31.305645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976913, 40.535069, 31.153231>,  <32.794609, 40.408569, 31.061783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976913, 40.535069, 31.153231>,  <33.280754, 40.745903, 31.305645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976913, 40.535069, 31.153231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141220, 0.438217, -0.887707,
		0.634871, -0.728114, -0.258435,
		-0.759602, -0.527083, -0.381036,
		32.749031, 40.376945, 31.038919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599571, 40.555527, 30.628523>,  <33.280754, 40.745903, 31.305645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599571, 40.555527, 30.628523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200584, 40.569927, 30.653063>,  <32.961193, 40.578568, 30.667788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200584, 40.569927, 30.653063>,  <33.599571, 40.555527, 30.628523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200584, 40.569927, 30.653063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033142, 0.527926, -0.848643,
		-0.062940, -0.848527, -0.525396,
		-0.997467, 0.036001, 0.061350,
		32.901344, 40.580727, 30.671467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664143, 39.757496, 30.564045>,  <33.599571, 40.555527, 30.628523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664143, 39.757496, 30.564045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296124, 39.908707, 30.522844>,  <33.075314, 39.999435, 30.498123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296124, 39.908707, 30.522844>,  <33.664143, 39.757496, 30.564045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296124, 39.908707, 30.522844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263062, 0.401167, -0.877419,
		-0.290370, -0.834361, -0.468537,
		-0.920045, 0.378031, -0.103002,
		33.020111, 40.022118, 30.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452042, 39.531872, 29.903614>,  <33.664143, 39.757496, 30.564045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452042, 39.531872, 29.903614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252357, 39.863148, 30.005507>,  <33.132549, 40.061913, 30.066641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252357, 39.863148, 30.005507>,  <33.452042, 39.531872, 29.903614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252357, 39.863148, 30.005507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194849, 0.393749, -0.898329,
		-0.844290, -0.398819, -0.357935,
		-0.499208, 0.828194, 0.254729,
		33.102596, 40.111607, 30.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162045, 39.357983, 29.768896>,  <33.452042, 39.531872, 29.903614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162045, 39.357983, 29.768896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031548, 39.032623, 29.961538>,  <33.953247, 38.837406, 30.077124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031548, 39.032623, 29.961538>,  <34.162045, 39.357983, 29.768896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031548, 39.032623, 29.961538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179230, -0.553466, -0.813358,
		0.928138, -0.179036, 0.326352,
		-0.326245, -0.813401, 0.481604,
		33.933674, 38.788605, 30.106020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587341, 38.745090, 29.673578>,  <34.162045, 39.357983, 29.768896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587341, 38.745090, 29.673578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207726, 38.623966, 29.708517>,  <33.979958, 38.551292, 29.729481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207726, 38.623966, 29.708517>,  <34.587341, 38.745090, 29.673578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207726, 38.623966, 29.708517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076083, -0.489096, -0.868905,
		0.305832, -0.817981, 0.487211,
		-0.949041, -0.302807, 0.087347,
		33.923012, 38.533123, 29.734720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546959, 38.035519, 29.651461>,  <34.587341, 38.745090, 29.673578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546959, 38.035519, 29.651461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200272, 38.180965, 29.514883>,  <33.992260, 38.268234, 29.432936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200272, 38.180965, 29.514883>,  <34.546959, 38.035519, 29.651461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200272, 38.180965, 29.514883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114507, -0.521207, -0.845714,
		-0.485473, -0.772095, 0.410104,
		-0.866720, 0.363611, -0.341442,
		33.940254, 38.290051, 29.412451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225220, 37.430046, 29.348957>,  <34.546959, 38.035519, 29.651461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225220, 37.430046, 29.348957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039970, 37.738842, 29.174809>,  <33.928822, 37.924122, 29.070320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039970, 37.738842, 29.174809>,  <34.225220, 37.430046, 29.348957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039970, 37.738842, 29.174809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158231, -0.411316, -0.897654,
		-0.872057, -0.484610, 0.068336,
		-0.463120, 0.771992, -0.435371,
		33.901035, 37.970440, 29.044197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608398, 37.170734, 28.899019>,  <34.225220, 37.430046, 29.348957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608398, 37.170734, 28.899019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716724, 37.533485, 28.769880>,  <33.781719, 37.751137, 28.692396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716724, 37.533485, 28.769880>,  <33.608398, 37.170734, 28.899019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716724, 37.533485, 28.769880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050350, -0.321579, -0.945543,
		-0.961315, 0.272319, -0.041426,
		0.270811, 0.906879, -0.322850,
		33.797966, 37.805550, 28.673025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246574, 37.213348, 28.308149>,  <33.608398, 37.170734, 28.899019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246574, 37.213348, 28.308149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535870, 37.487289, 28.272593>,  <33.709446, 37.651653, 28.251259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535870, 37.487289, 28.272593>,  <33.246574, 37.213348, 28.308149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535870, 37.487289, 28.272593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093002, -0.224136, -0.970110,
		-0.684304, 0.693357, -0.225796,
		0.723242, 0.684850, -0.088894,
		33.752842, 37.692745, 28.245924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071449, 37.510315, 27.704237>,  <33.246574, 37.213348, 28.308149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071449, 37.510315, 27.704237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461052, 37.563786, 27.777390>,  <33.694813, 37.595867, 27.821281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461052, 37.563786, 27.777390>,  <33.071449, 37.510315, 27.704237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461052, 37.563786, 27.777390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216029, -0.305204, -0.927460,
		-0.068161, 0.942858, -0.326148,
		0.974005, 0.133674, 0.182881,
		33.753254, 37.603889, 27.832254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339966, 37.570137, 27.036915>,  <33.071449, 37.510315, 27.704237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339966, 37.570137, 27.036915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687759, 37.544132, 27.232780>,  <33.896435, 37.528530, 27.350300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687759, 37.544132, 27.232780>,  <33.339966, 37.570137, 27.036915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687759, 37.544132, 27.232780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458552, -0.262334, -0.849065,
		0.183652, 0.962785, -0.198285,
		0.869484, -0.065009, 0.489665,
		33.948605, 37.524628, 27.379681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925194, 38.021408, 26.708662>,  <33.339966, 37.570137, 27.036915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925194, 38.021408, 26.708662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082245, 37.719212, 26.918453>,  <34.176476, 37.537891, 27.044329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082245, 37.719212, 26.918453>,  <33.925194, 38.021408, 26.708662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082245, 37.719212, 26.918453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577250, -0.241522, -0.780032,
		0.715981, 0.609013, 0.341281,
		0.392623, -0.755493, 0.524478,
		34.200031, 37.492565, 27.075796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568996, 38.040344, 26.493221>,  <33.925194, 38.021408, 26.708662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568996, 38.040344, 26.493221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504810, 37.673183, 26.638384>,  <34.466301, 37.452885, 26.725481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504810, 37.673183, 26.638384>,  <34.568996, 38.040344, 26.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504810, 37.673183, 26.638384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450855, -0.395236, -0.800324,
		0.878056, 0.035197, 0.477263,
		-0.160462, -0.917905, 0.362907,
		34.456673, 37.397812, 26.747255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023243, 37.690174, 26.117205>,  <34.568996, 38.040344, 26.493221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023243, 37.690174, 26.117205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800880, 37.395668, 26.271545>,  <34.667461, 37.218964, 26.364151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800880, 37.395668, 26.271545>,  <35.023243, 37.690174, 26.117205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800880, 37.395668, 26.271545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238321, -0.585871, -0.774570,
		0.796347, -0.338633, 0.501157,
		-0.555908, -0.736263, 0.385854,
		34.634109, 37.174789, 26.387302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457207, 37.050270, 26.125505>,  <35.023243, 37.690174, 26.117205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457207, 37.050270, 26.125505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064133, 36.976688, 26.116606>,  <34.828289, 36.932541, 26.111265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064133, 36.976688, 26.116606>,  <35.457207, 37.050270, 26.125505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064133, 36.976688, 26.116606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080677, -0.316677, -0.945096,
		0.166805, -0.930526, 0.326034,
		-0.982684, -0.183950, -0.022249,
		34.769329, 36.921505, 26.109932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477547, 36.497250, 25.725470>,  <35.457207, 37.050270, 26.125505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477547, 36.497250, 25.725470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090389, 36.597733, 25.722004>,  <34.858093, 36.658020, 25.719925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090389, 36.597733, 25.722004>,  <35.477547, 36.497250, 25.725470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090389, 36.597733, 25.722004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090482, -0.380382, -0.920393,
		-0.234501, -0.890060, 0.390899,
		-0.967896, 0.251203, -0.008666,
		34.800022, 36.673092, 25.719404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209030, 36.091736, 25.249062>,  <35.477547, 36.497250, 25.725470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209030, 36.091736, 25.249062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936302, 36.382622, 25.280767>,  <34.772667, 36.557152, 25.299791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936302, 36.382622, 25.280767>,  <35.209030, 36.091736, 25.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936302, 36.382622, 25.280767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216091, -0.096705, -0.971572,
		-0.698874, -0.679566, 0.223079,
		-0.681820, 0.727212, 0.079263,
		34.731754, 36.600784, 25.304546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681843, 35.899940, 24.848576>,  <35.209030, 36.091736, 25.249062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681843, 35.899940, 24.848576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534954, 36.267570, 24.905764>,  <34.446819, 36.488148, 24.940077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534954, 36.267570, 24.905764>,  <34.681843, 35.899940, 24.848576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534954, 36.267570, 24.905764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500614, -0.065751, -0.863170,
		-0.783920, -0.388551, 0.484249,
		-0.367225, 0.919078, 0.142971,
		34.424786, 36.543293, 24.948654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951954, 35.861893, 24.789299>,  <34.681843, 35.899940, 24.848576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951954, 35.861893, 24.789299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070545, 36.235512, 24.709641>,  <34.141701, 36.459682, 24.661844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070545, 36.235512, 24.709641>,  <33.951954, 35.861893, 24.789299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070545, 36.235512, 24.709641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447850, -0.048204, -0.892808,
		-0.843524, 0.353886, 0.404021,
		0.296477, 0.934045, -0.199148,
		34.159489, 36.515724, 24.649897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388409, 36.301739, 24.624559>,  <33.951954, 35.861893, 24.789299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388409, 36.301739, 24.624559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722542, 36.431015, 24.446674>,  <33.923019, 36.508579, 24.339943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722542, 36.431015, 24.446674>,  <33.388409, 36.301739, 24.624559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722542, 36.431015, 24.446674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358115, -0.293861, -0.886227,
		-0.417105, 0.899552, -0.129731,
		0.835330, 0.323191, -0.444714,
		33.973141, 36.527973, 24.313259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066971, 36.670433, 24.037991>,  <33.388409, 36.301739, 24.624559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066971, 36.670433, 24.037991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460453, 36.634987, 23.975418>,  <33.696541, 36.613720, 23.937874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460453, 36.634987, 23.975418>,  <33.066971, 36.670433, 24.037991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460453, 36.634987, 23.975418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155672, 0.015477, -0.987688,
		0.089942, 0.995946, 0.001431,
		0.983705, -0.088612, -0.156433,
		33.755566, 36.608402, 23.928488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146931, 37.141632, 23.569305>,  <33.066971, 36.670433, 24.037991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146931, 37.141632, 23.569305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445412, 36.878513, 23.528347>,  <33.624500, 36.720642, 23.503773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445412, 36.878513, 23.528347>,  <33.146931, 37.141632, 23.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445412, 36.878513, 23.528347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223834, -0.103056, -0.969163,
		0.626956, 0.746115, -0.224137,
		0.746207, -0.657792, -0.102394,
		33.669273, 36.681175, 23.497629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257927, 37.245380, 22.882019>,  <33.146931, 37.141632, 23.569305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257927, 37.245380, 22.882019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448444, 36.909580, 22.986616>,  <33.562756, 36.708099, 23.049374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448444, 36.909580, 22.986616>,  <33.257927, 37.245380, 22.882019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448444, 36.909580, 22.986616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092730, -0.343692, -0.934493,
		0.874383, 0.420845, -0.241545,
		0.476294, -0.839503, 0.261493,
		33.591331, 36.657730, 23.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677937, 37.044323, 22.281151>,  <33.257927, 37.245380, 22.882019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677937, 37.044323, 22.281151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627083, 36.711723, 22.497467>,  <33.596573, 36.512165, 22.627256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627083, 36.711723, 22.497467>,  <33.677937, 37.044323, 22.281151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627083, 36.711723, 22.497467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199705, -0.512591, -0.835086,
		0.971574, -0.214165, -0.100887,
		-0.127132, -0.831495, 0.540790,
		33.588943, 36.462276, 22.659704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166607, 36.560848, 22.081476>,  <33.677937, 37.044323, 22.281151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166607, 36.560848, 22.081476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851578, 36.368702, 22.235868>,  <33.662560, 36.253414, 22.328505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851578, 36.368702, 22.235868>,  <34.166607, 36.560848, 22.081476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851578, 36.368702, 22.235868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080675, -0.540599, -0.837403,
		0.610922, -0.690653, 0.387006,
		-0.787569, -0.480366, 0.385982,
		33.615307, 36.224590, 22.351664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197304, 35.952423, 21.716148>,  <34.166607, 36.560848, 22.081476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197304, 35.952423, 21.716148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839211, 35.915741, 21.890570>,  <33.624355, 35.893730, 21.995222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839211, 35.915741, 21.890570>,  <34.197304, 35.952423, 21.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839211, 35.915741, 21.890570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362796, -0.418150, -0.832784,
		0.258709, -0.903736, 0.341071,
		-0.895237, -0.091710, 0.436051,
		33.570641, 35.888229, 22.021385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022724, 35.184803, 21.663975>,  <34.197304, 35.952423, 21.716148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022724, 35.184803, 21.663975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688145, 35.402145, 21.692566>,  <33.487396, 35.532551, 21.709721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688145, 35.402145, 21.692566>,  <34.022724, 35.184803, 21.663975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688145, 35.402145, 21.692566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347022, -0.424176, -0.836451,
		-0.424176, -0.724455, 0.543360,
		0.836451, -0.543360, -0.071477,
		33.437210, 35.565155, 21.714008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518036, 34.724316, 21.405725>,  <34.022724, 35.184803, 21.663975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518036, 34.724316, 21.405725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291237, 35.053795, 21.403193>,  <33.155159, 35.251480, 21.401672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291237, 35.053795, 21.403193>,  <33.518036, 34.724316, 21.405725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291237, 35.053795, 21.403193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414742, -0.292114, -0.861776,
		-0.711691, -0.485999, 0.507249,
		-0.566997, 0.823696, -0.006330,
		33.121140, 35.300903, 21.401293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898613, 34.500282, 21.361807>,  <33.518036, 34.724316, 21.405725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898613, 34.500282, 21.361807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880856, 34.867500, 21.204210>,  <32.870201, 35.087830, 21.109652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880856, 34.867500, 21.204210>,  <32.898613, 34.500282, 21.361807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880856, 34.867500, 21.204210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372620, -0.381137, -0.846103,
		-0.926922, 0.109248, 0.359000,
		-0.044393, 0.918041, -0.393992,
		32.867538, 35.142914, 21.086012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444401, 34.414028, 20.981781>,  <32.898613, 34.500282, 21.361807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444401, 34.414028, 20.981781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580273, 34.764030, 20.843809>,  <32.661797, 34.974033, 20.761026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580273, 34.764030, 20.843809>,  <32.444401, 34.414028, 20.981781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580273, 34.764030, 20.843809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327894, -0.233556, -0.915389,
		-0.881533, 0.424042, 0.207575,
		0.339684, 0.875008, -0.344928,
		32.682178, 35.026531, 20.740332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832373, 34.729984, 20.776257>,  <32.444401, 34.414028, 20.981781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832373, 34.729984, 20.776257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125053, 34.934956, 20.596468>,  <32.300663, 35.057938, 20.488594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125053, 34.934956, 20.596468>,  <31.832373, 34.729984, 20.776257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125053, 34.934956, 20.596468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493857, -0.055951, -0.867741,
		-0.469807, 0.856903, 0.212129,
		0.731701, 0.512432, -0.449474,
		32.344563, 35.088684, 20.461626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490156, 35.187046, 20.361387>,  <31.832373, 34.729984, 20.776257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490156, 35.187046, 20.361387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852341, 35.140923, 20.198000>,  <32.069653, 35.113251, 20.099968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852341, 35.140923, 20.198000>,  <31.490156, 35.187046, 20.361387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852341, 35.140923, 20.198000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415543, -0.044900, -0.908465,
		0.086411, 0.992315, -0.088570,
		0.905460, -0.115306, -0.408470,
		32.123978, 35.106331, 20.075459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528528, 35.662727, 19.689522>,  <31.490156, 35.187046, 20.361387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528528, 35.662727, 19.689522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804737, 35.376068, 19.650330>,  <31.970463, 35.204075, 19.626814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804737, 35.376068, 19.650330>,  <31.528528, 35.662727, 19.689522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804737, 35.376068, 19.650330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186254, -0.045281, -0.981458,
		0.698919, 0.695968, -0.164745,
		0.690523, -0.716644, -0.097979,
		32.011894, 35.161076, 19.620935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899603, 35.789474, 19.025974>,  <31.528528, 35.662727, 19.689522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899603, 35.789474, 19.025974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943182, 35.401157, 19.111469>,  <31.969330, 35.168167, 19.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943182, 35.401157, 19.111469>,  <31.899603, 35.789474, 19.025974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943182, 35.401157, 19.111469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184066, -0.231000, -0.955384,
		0.976857, 0.064744, -0.203857,
		0.108947, -0.970797, 0.213737,
		31.975866, 35.109917, 19.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158146, 35.597778, 18.484694>,  <31.899603, 35.789474, 19.025974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158146, 35.597778, 18.484694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113605, 35.223885, 18.619675>,  <32.086880, 34.999550, 18.700663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113605, 35.223885, 18.619675>,  <32.158146, 35.597778, 18.484694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113605, 35.223885, 18.619675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079120, -0.330147, -0.940608,
		0.990626, -0.131440, -0.037193,
		-0.111354, -0.934733, 0.337452,
		32.080200, 34.943466, 18.720911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700378, 35.172142, 18.126011>,  <32.158146, 35.597778, 18.484694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700378, 35.172142, 18.126011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374664, 34.960835, 18.222237>,  <32.179237, 34.834049, 18.279972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374664, 34.960835, 18.222237>,  <32.700378, 35.172142, 18.126011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374664, 34.960835, 18.222237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066484, -0.326827, -0.942743,
		0.576644, -0.783656, 0.231010,
		-0.814286, -0.528269, 0.240563,
		32.130379, 34.802353, 18.294405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833530, 34.551006, 17.822630>,  <32.700378, 35.172142, 18.126011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833530, 34.551006, 17.822630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442032, 34.540707, 17.904015>,  <32.207134, 34.534527, 17.952845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442032, 34.540707, 17.904015>,  <32.833530, 34.551006, 17.822630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442032, 34.540707, 17.904015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185013, -0.317179, -0.930144,
		0.088489, -0.948016, 0.305672,
		-0.978744, -0.025754, 0.203462,
		32.148407, 34.532982, 17.965054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591179, 34.021648, 17.425077>,  <32.833530, 34.551006, 17.822630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591179, 34.021648, 17.425077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254665, 34.207783, 17.535130>,  <32.052757, 34.319462, 17.601160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254665, 34.207783, 17.535130>,  <32.591179, 34.021648, 17.425077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254665, 34.207783, 17.535130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433030, -0.275429, -0.858268,
		-0.323606, -0.841189, 0.433220,
		-0.841287, 0.465338, 0.275130,
		32.002277, 34.347385, 17.617668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038448, 33.611847, 17.182503>,  <32.591179, 34.021648, 17.425077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038448, 33.611847, 17.182503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836555, 33.946224, 17.268711>,  <31.715420, 34.146851, 17.320436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836555, 33.946224, 17.268711>,  <32.038448, 33.611847, 17.182503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836555, 33.946224, 17.268711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620406, -0.177644, -0.763897,
		-0.600289, -0.519271, 0.608285,
		-0.504728, 0.835943, 0.215521,
		31.685137, 34.197006, 17.333368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325191, 33.438774, 17.234148>,  <32.038448, 33.611847, 17.182503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325191, 33.438774, 17.234148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386679, 33.819283, 17.127226>,  <31.423571, 34.047588, 17.063072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386679, 33.819283, 17.127226>,  <31.325191, 33.438774, 17.234148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386679, 33.819283, 17.127226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612663, -0.120490, -0.781106,
		-0.775251, 0.283839, 0.564288,
		0.153718, 0.951271, -0.267308,
		31.432795, 34.104664, 17.047033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616991, 33.814789, 17.196934>,  <31.325191, 33.438774, 17.234148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616991, 33.814789, 17.196934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871784, 34.027729, 16.973915>,  <31.024660, 34.155491, 16.840103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871784, 34.027729, 16.973915>,  <30.616991, 33.814789, 17.196934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871784, 34.027729, 16.973915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664508, 0.012571, -0.747175,
		-0.390748, 0.846432, 0.361757,
		0.636981, 0.532348, -0.557549,
		31.062878, 34.187435, 16.806650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272373, 34.309196, 16.859457>,  <30.616991, 33.814789, 17.196934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272373, 34.309196, 16.859457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584829, 34.316338, 16.609816>,  <30.772303, 34.320621, 16.460032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584829, 34.316338, 16.609816>,  <30.272373, 34.309196, 16.859457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584829, 34.316338, 16.609816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621031, 0.125260, -0.773712,
		0.064362, 0.991964, 0.108932,
		0.781139, 0.017853, -0.624102,
		30.819172, 34.321693, 16.422585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120604, 34.846088, 16.344185>,  <30.272373, 34.309196, 16.859457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120604, 34.846088, 16.344185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412447, 34.627125, 16.180223>,  <30.587553, 34.495747, 16.081846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412447, 34.627125, 16.180223>,  <30.120604, 34.846088, 16.344185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412447, 34.627125, 16.180223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463827, 0.044346, -0.884815,
		0.502530, 0.835692, -0.221546,
		0.729608, -0.547405, -0.409902,
		30.631329, 34.462902, 16.057253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370485, 35.085716, 15.676417>,  <30.120604, 34.846088, 16.344185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370485, 35.085716, 15.676417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459911, 34.695911, 15.668950>,  <30.513567, 34.462029, 15.664470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459911, 34.695911, 15.668950>,  <30.370485, 35.085716, 15.676417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459911, 34.695911, 15.668950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379186, -0.069313, -0.922721,
		0.897907, 0.213367, -0.385017,
		0.223565, -0.974510, -0.018669,
		30.526981, 34.403557, 15.663349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633762, 35.036369, 15.032862>,  <30.370485, 35.085716, 15.676417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633762, 35.036369, 15.032862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530083, 34.663227, 15.132941>,  <30.467875, 34.439342, 15.192989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530083, 34.663227, 15.132941>,  <30.633762, 35.036369, 15.032862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530083, 34.663227, 15.132941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417769, -0.125275, -0.899875,
		0.870796, -0.337772, -0.357246,
		-0.259199, -0.932854, 0.250199,
		30.452324, 34.383369, 15.208001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604507, 34.725487, 14.482109>,  <30.633762, 35.036369, 15.032862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604507, 34.725487, 14.482109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405233, 34.463230, 14.709069>,  <30.285669, 34.305878, 14.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405233, 34.463230, 14.709069>,  <30.604507, 34.725487, 14.482109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405233, 34.463230, 14.709069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571778, -0.243528, -0.783431,
		0.651829, -0.714721, -0.253560,
		-0.498186, -0.655643, 0.567401,
		30.255777, 34.266537, 14.879290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518578, 34.102234, 14.103296>,  <30.604507, 34.725487, 14.482109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518578, 34.102234, 14.103296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219679, 34.113525, 14.368876>,  <30.040340, 34.120300, 14.528223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219679, 34.113525, 14.368876>,  <30.518578, 34.102234, 14.103296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219679, 34.113525, 14.368876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646203, -0.263999, -0.716049,
		0.155070, -0.964110, 0.215512,
		-0.747245, 0.028227, 0.663949,
		29.995506, 34.121994, 14.568060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067759, 33.522774, 14.179838>,  <30.518578, 34.102234, 14.103296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067759, 33.522774, 14.179838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818075, 33.827919, 14.247247>,  <29.668264, 34.011005, 14.287692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818075, 33.827919, 14.247247>,  <30.067759, 33.522774, 14.179838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818075, 33.827919, 14.247247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549754, -0.275639, -0.788539,
		-0.555098, -0.584859, 0.591444,
		-0.624209, 0.762865, 0.168522,
		29.630812, 34.056778, 14.297804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471714, 33.226486, 14.146441>,  <30.067759, 33.522774, 14.179838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471714, 33.226486, 14.146441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471962, 33.615356, 14.052732>,  <29.472111, 33.848679, 13.996508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471962, 33.615356, 14.052732>,  <29.471714, 33.226486, 14.146441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471962, 33.615356, 14.052732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524414, -0.199155, -0.827845,
		-0.851463, 0.123368, 0.509697,
		0.000621, 0.972172, -0.234269,
		29.472149, 33.907009, 13.982451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856359, 33.591457, 14.055588>,  <29.471714, 33.226486, 14.146441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856359, 33.591457, 14.055588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073406, 33.780327, 13.777704>,  <29.203634, 33.893646, 13.610974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073406, 33.780327, 13.777704>,  <28.856359, 33.591457, 14.055588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073406, 33.780327, 13.777704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663964, -0.265488, -0.699048,
		-0.514507, 0.840578, 0.169445,
		0.542619, 0.472170, -0.694709,
		29.236193, 33.921978, 13.569292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404867, 33.116936, 14.452771>,  <28.856359, 33.591457, 14.055588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404867, 33.116936, 14.452771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753277, 32.924385, 14.413600>,  <28.962322, 32.808853, 14.390098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753277, 32.924385, 14.413600>,  <28.404867, 33.116936, 14.452771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753277, 32.924385, 14.413600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486424, -0.817327, -0.308816,
		0.068619, 0.316621, -0.946067,
		0.871024, -0.481381, -0.097927,
		29.014584, 32.779972, 14.384222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296343, 32.958065, 13.788561>,  <28.404867, 33.116936, 14.452771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296343, 32.958065, 13.788561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501820, 32.690468, 14.003436>,  <28.625105, 32.529911, 14.132361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501820, 32.690468, 14.003436>,  <28.296343, 32.958065, 13.788561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501820, 32.690468, 14.003436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283810, -0.723360, -0.629445,
		0.809674, 0.170882, -0.561451,
		0.513692, -0.668991, 0.537188,
		28.655928, 32.489769, 14.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808409, 32.527527, 13.408454>,  <28.296343, 32.958065, 13.788561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808409, 32.527527, 13.408454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685760, 32.328899, 13.733269>,  <28.612171, 32.209724, 13.928158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685760, 32.328899, 13.733269>,  <28.808409, 32.527527, 13.408454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685760, 32.328899, 13.733269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405017, -0.703976, -0.583421,
		0.861362, -0.507778, 0.014737,
		-0.306623, -0.496568, 0.812037,
		28.593773, 32.179928, 13.976880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716949, 33.215004, 13.234589>,  <28.808409, 32.527527, 13.408454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716949, 33.215004, 13.234589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323593, 33.286682, 13.246095>,  <28.087578, 33.329689, 13.252998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323593, 33.286682, 13.246095>,  <28.716949, 33.215004, 13.234589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323593, 33.286682, 13.246095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127808, 0.571245, 0.810767,
		0.128852, 0.800980, -0.584661,
		-0.983393, 0.179194, 0.028765,
		28.028576, 33.340439, 13.254725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585220, 33.908699, 13.408280>,  <28.716949, 33.215004, 13.234589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585220, 33.908699, 13.408280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266497, 33.710381, 13.546430>,  <28.075262, 33.591389, 13.629319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266497, 33.710381, 13.546430>,  <28.585220, 33.908699, 13.408280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266497, 33.710381, 13.546430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035927, 0.531703, 0.846168,
		-0.603164, 0.686641, -0.405853,
		-0.796807, -0.495798, 0.345373,
		28.027454, 33.561642, 13.650042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944578, 34.282547, 13.499402>,  <28.585220, 33.908699, 13.408280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944578, 34.282547, 13.499402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957689, 33.991306, 13.773276>,  <27.965557, 33.816563, 13.937601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957689, 33.991306, 13.773276>,  <27.944578, 34.282547, 13.499402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957689, 33.991306, 13.773276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038005, 0.683650, 0.728820,
		-0.998740, -0.049912, -0.005261,
		0.032780, -0.728101, 0.684685,
		27.967524, 33.772877, 13.978682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548569, 34.489445, 13.980624>,  <27.944578, 34.282547, 13.499402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548569, 34.489445, 13.980624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777416, 34.222992, 14.172021>,  <27.914724, 34.063122, 14.286860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777416, 34.222992, 14.172021>,  <27.548569, 34.489445, 13.980624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777416, 34.222992, 14.172021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053884, 0.551617, 0.832355,
		-0.818400, -0.501987, 0.279695,
		0.572117, -0.666129, 0.478492,
		27.949051, 34.023155, 14.315569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262930, 34.339870, 14.658788>,  <27.548569, 34.489445, 13.980624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262930, 34.339870, 14.658788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647902, 34.235306, 14.688169>,  <27.878883, 34.172565, 14.705798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647902, 34.235306, 14.688169>,  <27.262930, 34.339870, 14.658788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647902, 34.235306, 14.688169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135174, 0.695852, 0.705350,
		-0.235502, -0.668919, 0.705043,
		0.962427, -0.261415, 0.073454,
		27.936630, 34.156879, 14.710206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406311, 34.154366, 15.315728>,  <27.262930, 34.339870, 14.658788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406311, 34.154366, 15.315728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765783, 34.257431, 15.173749>,  <27.981466, 34.319271, 15.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765783, 34.257431, 15.173749>,  <27.406311, 34.154366, 15.315728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765783, 34.257431, 15.173749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109867, 0.651216, 0.750897,
		0.424624, -0.713812, 0.556926,
		0.898679, 0.257661, -0.354947,
		28.035387, 34.334728, 15.067265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903242, 34.094879, 15.982141>,  <27.406311, 34.154366, 15.315728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903242, 34.094879, 15.982141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083136, 34.319946, 15.704683>,  <28.191072, 34.454987, 15.538208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083136, 34.319946, 15.704683>,  <27.903242, 34.094879, 15.982141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083136, 34.319946, 15.704683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251249, 0.665558, 0.702785,
		0.857096, -0.490344, 0.157955,
		0.449734, 0.562668, -0.693646,
		28.218056, 34.488747, 15.496590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471474, 34.228901, 16.317436>,  <27.903242, 34.094879, 15.982141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471474, 34.228901, 16.317436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464630, 34.494152, 16.018110>,  <28.460524, 34.653301, 15.838515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464630, 34.494152, 16.018110>,  <28.471474, 34.228901, 16.317436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464630, 34.494152, 16.018110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115874, 0.744696, 0.657269,
		0.993117, -0.075464, -0.089580,
		-0.017109, 0.663124, -0.748314,
		28.459497, 34.693089, 15.793616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093225, 34.654781, 16.290661>,  <28.471474, 34.228901, 16.317436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093225, 34.654781, 16.290661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805616, 34.868805, 16.113251>,  <28.633051, 34.997219, 16.006805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805616, 34.868805, 16.113251>,  <29.093225, 34.654781, 16.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805616, 34.868805, 16.113251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305265, 0.816468, 0.490095,
		0.624354, 0.216998, -0.750396,
		-0.719024, 0.535063, -0.443523,
		28.589909, 35.029324, 15.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437941, 35.255753, 16.142620>,  <29.093225, 34.654781, 16.290661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437941, 35.255753, 16.142620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052122, 35.352367, 16.100071>,  <28.820631, 35.410336, 16.074541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052122, 35.352367, 16.100071>,  <29.437941, 35.255753, 16.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052122, 35.352367, 16.100071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158979, 0.853457, 0.496323,
		0.210664, 0.461815, -0.861596,
		-0.964545, 0.241533, -0.106373,
		28.762758, 35.424828, 16.068159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374853, 36.017509, 15.684766>,  <29.437941, 35.255753, 16.142620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374853, 36.017509, 15.684766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072838, 35.937840, 15.934644>,  <28.891628, 35.890038, 16.084570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072838, 35.937840, 15.934644>,  <29.374853, 36.017509, 15.684766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072838, 35.937840, 15.934644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174930, 0.857020, 0.484682,
		-0.631913, 0.475233, -0.612242,
		-0.755040, -0.199177, 0.624694,
		28.846325, 35.878086, 16.122051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034182, 36.592926, 15.750415>,  <29.374853, 36.017509, 15.684766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034182, 36.592926, 15.750415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907858, 36.422112, 16.089333>,  <28.832064, 36.319622, 16.292683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907858, 36.422112, 16.089333>,  <29.034182, 36.592926, 15.750415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907858, 36.422112, 16.089333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217662, 0.836575, 0.502758,
		-0.923519, 0.343199, -0.171249,
		-0.315809, -0.427033, 0.847294,
		28.813116, 36.294003, 16.343521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759245, 37.144714, 16.130625>,  <29.034182, 36.592926, 15.750415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759245, 37.144714, 16.130625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806011, 36.868427, 16.416067>,  <28.834072, 36.702656, 16.587334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806011, 36.868427, 16.416067>,  <28.759245, 37.144714, 16.130625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806011, 36.868427, 16.416067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316583, 0.706971, 0.632429,
		-0.941332, 0.151974, 0.301328,
		0.116917, -0.690721, 0.713607,
		28.841087, 36.661209, 16.630150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578861, 37.513519, 16.767796>,  <28.759245, 37.144714, 16.130625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578861, 37.513519, 16.767796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789259, 37.192070, 16.879162>,  <28.915497, 36.999199, 16.945982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789259, 37.192070, 16.879162>,  <28.578861, 37.513519, 16.767796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789259, 37.192070, 16.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441520, 0.537810, 0.718207,
		-0.726904, -0.254847, 0.637702,
		0.525995, -0.803625, 0.278416,
		28.947058, 36.950981, 16.962687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262575, 37.289825, 17.406652>,  <28.578861, 37.513519, 16.767796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262575, 37.289825, 17.406652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644089, 37.170517, 17.392097>,  <28.872997, 37.098930, 17.383364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644089, 37.170517, 17.392097>,  <28.262575, 37.289825, 17.406652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644089, 37.170517, 17.392097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156974, 0.391329, 0.906764,
		-0.256225, -0.870571, 0.420066,
		0.953786, -0.298275, -0.036389,
		28.930225, 37.081036, 17.381180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330542, 37.241577, 18.036135>,  <28.262575, 37.289825, 17.406652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330542, 37.241577, 18.036135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703281, 37.213902, 17.893660>,  <28.926926, 37.197296, 17.808174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703281, 37.213902, 17.893660>,  <28.330542, 37.241577, 18.036135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703281, 37.213902, 17.893660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349214, 0.437544, 0.828616,
		0.098517, -0.896531, 0.431886,
		0.931850, -0.069188, -0.356187,
		28.982836, 37.193146, 17.786804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703941, 36.945320, 18.620277>,  <28.330542, 37.241577, 18.036135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703941, 36.945320, 18.620277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964870, 37.118103, 18.371155>,  <29.121428, 37.221775, 18.221682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964870, 37.118103, 18.371155>,  <28.703941, 36.945320, 18.620277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964870, 37.118103, 18.371155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504496, 0.365786, 0.782102,
		0.565652, -0.824385, 0.020686,
		0.652320, 0.431962, -0.622806,
		29.160566, 37.247692, 18.184313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402189, 36.793240, 18.729305>,  <28.703941, 36.945320, 18.620277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402189, 36.793240, 18.729305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423752, 37.161228, 18.574001>,  <29.436689, 37.382023, 18.480820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423752, 37.161228, 18.574001>,  <29.402189, 36.793240, 18.729305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423752, 37.161228, 18.574001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708843, 0.238604, 0.663784,
		0.703303, -0.310998, -0.639254,
		0.053907, 0.919972, -0.388260,
		29.439924, 37.437222, 18.457523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124483, 36.939610, 18.686092>,  <29.402189, 36.793240, 18.729305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124483, 36.939610, 18.686092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942871, 37.295654, 18.670330>,  <29.833904, 37.509281, 18.660873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942871, 37.295654, 18.670330>,  <30.124483, 36.939610, 18.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942871, 37.295654, 18.670330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566696, 0.322623, 0.758136,
		0.687541, 0.321885, -0.650905,
		-0.454029, 0.890115, -0.039406,
		29.806662, 37.562687, 18.658508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662289, 37.431129, 18.682274>,  <30.124483, 36.939610, 18.686092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662289, 37.431129, 18.682274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341448, 37.641212, 18.795971>,  <30.148943, 37.767262, 18.864189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341448, 37.641212, 18.795971>,  <30.662289, 37.431129, 18.682274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341448, 37.641212, 18.795971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499029, 0.328028, 0.802102,
		0.328028, 0.785212, -0.525204,
		-0.802102, 0.525204, 0.284241,
		30.100817, 37.798775, 18.881243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946932, 38.119759, 18.889593>,  <30.662289, 37.431129, 18.682274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946932, 38.119759, 18.889593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585560, 38.078857, 19.056137>,  <30.368736, 38.054317, 19.156063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585560, 38.078857, 19.056137>,  <30.946932, 38.119759, 18.889593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585560, 38.078857, 19.056137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372816, 0.292189, 0.880701,
		-0.211710, 0.950879, -0.225851,
		-0.903431, -0.102252, 0.416362,
		30.314531, 38.048183, 19.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978247, 38.624172, 19.386257>,  <30.946932, 38.119759, 18.889593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978247, 38.624172, 19.386257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666607, 38.402451, 19.503393>,  <30.479624, 38.269417, 19.573675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666607, 38.402451, 19.503393>,  <30.978247, 38.624172, 19.386257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666607, 38.402451, 19.503393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168402, 0.264903, 0.949456,
		-0.603860, 0.789034, -0.113039,
		-0.779098, -0.554303, 0.292839,
		30.432877, 38.236160, 19.591246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494207, 39.045349, 19.817684>,  <30.978247, 38.624172, 19.386257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494207, 39.045349, 19.817684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417078, 38.669312, 19.930147>,  <30.370800, 38.443691, 19.997625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417078, 38.669312, 19.930147>,  <30.494207, 39.045349, 19.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417078, 38.669312, 19.930147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017524, 0.283191, 0.958903,
		-0.981077, 0.189826, -0.038131,
		-0.192823, -0.940090, 0.281159,
		30.359232, 38.387283, 20.014496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911404, 38.999382, 20.387215>,  <30.494207, 39.045349, 19.817684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911404, 38.999382, 20.387215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133650, 38.667419, 20.407425>,  <30.266996, 38.468243, 20.419550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133650, 38.667419, 20.407425>,  <29.911404, 38.999382, 20.387215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133650, 38.667419, 20.407425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142078, 0.154643, 0.977701,
		-0.819211, -0.536046, 0.203833,
		0.555614, -0.829904, 0.050525,
		30.300335, 38.418449, 20.422583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615877, 38.553951, 20.915342>,  <29.911404, 38.999382, 20.387215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615877, 38.553951, 20.915342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001566, 38.459122, 20.867899>,  <30.232979, 38.402225, 20.839434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001566, 38.459122, 20.867899>,  <29.615877, 38.553951, 20.915342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001566, 38.459122, 20.867899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121101, -0.004077, 0.992632,
		-0.235811, -0.971483, 0.024779,
		0.964224, -0.237075, -0.118609,
		30.290833, 38.388000, 20.832315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727459, 38.063408, 21.492456>,  <29.615877, 38.553951, 20.915342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727459, 38.063408, 21.492456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088625, 38.176395, 21.362871>,  <30.305325, 38.244186, 21.285120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088625, 38.176395, 21.362871>,  <29.727459, 38.063408, 21.492456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088625, 38.176395, 21.362871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336077, 0.005893, 0.941816,
		0.267943, -0.959259, -0.089610,
		0.902917, 0.282469, -0.323964,
		30.359501, 38.261135, 21.265682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171230, 37.532158, 21.631824>,  <29.727459, 38.063408, 21.492456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171230, 37.532158, 21.631824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359808, 37.884827, 21.623945>,  <30.472954, 38.096428, 21.619219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359808, 37.884827, 21.623945>,  <30.171230, 37.532158, 21.631824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359808, 37.884827, 21.623945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337531, -0.159757, 0.927659,
		0.814748, -0.443987, -0.372909,
		0.471443, 0.881677, -0.019697,
		30.501242, 38.149330, 21.618036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618467, 37.510777, 22.142488>,  <30.171230, 37.532158, 21.631824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618467, 37.510777, 22.142488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663803, 37.893227, 22.034433>,  <30.691006, 38.122696, 21.969601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663803, 37.893227, 22.034433>,  <30.618467, 37.510777, 22.142488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663803, 37.893227, 22.034433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622964, 0.143416, 0.768991,
		0.773996, -0.255443, -0.579378,
		0.113341, 0.956128, -0.270135,
		30.697805, 38.180065, 21.953392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397917, 37.610313, 22.241180>,  <30.618467, 37.510777, 22.142488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397917, 37.610313, 22.241180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190065, 37.951313, 22.263903>,  <31.065353, 38.155914, 22.277536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190065, 37.951313, 22.263903>,  <31.397917, 37.610313, 22.241180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190065, 37.951313, 22.263903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425875, 0.200801, 0.882218,
		0.740686, 0.482619, -0.467401,
		-0.519630, 0.852501, 0.056805,
		31.034176, 38.207062, 22.280945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953598, 38.048973, 22.340891>,  <31.397917, 37.610313, 22.241180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953598, 38.048973, 22.340891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618521, 38.223831, 22.471840>,  <31.417475, 38.328747, 22.550409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618521, 38.223831, 22.471840>,  <31.953598, 38.048973, 22.340891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618521, 38.223831, 22.471840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409954, 0.107258, 0.905778,
		0.360845, 0.892972, -0.269059,
		-0.837692, 0.437147, 0.327374,
		31.367212, 38.354977, 22.570053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245586, 38.470676, 22.940844>,  <31.953598, 38.048973, 22.340891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245586, 38.470676, 22.940844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848194, 38.472290, 22.986431>,  <31.609760, 38.473259, 23.013784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848194, 38.472290, 22.986431>,  <32.245586, 38.470676, 22.940844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848194, 38.472290, 22.986431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113931, 0.078962, 0.990346,
		-0.005006, 0.996870, -0.078906,
		-0.993476, 0.004033, 0.113969,
		31.550152, 38.473499, 23.020622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138103, 39.017311, 23.301292>,  <32.245586, 38.470676, 22.940844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138103, 39.017311, 23.301292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811646, 38.795086, 23.364876>,  <31.615772, 38.661751, 23.403025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811646, 38.795086, 23.364876>,  <32.138103, 39.017311, 23.301292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811646, 38.795086, 23.364876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043567, 0.215140, 0.975611,
		-0.576207, 0.803163, -0.151381,
		-0.816142, -0.555558, 0.158956,
		31.566803, 38.628418, 23.412563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838116, 39.334770, 23.854940>,  <32.138103, 39.017311, 23.301292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838116, 39.334770, 23.854940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622971, 38.997791, 23.867462>,  <31.493883, 38.795605, 23.874975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622971, 38.997791, 23.867462>,  <31.838116, 39.334770, 23.854940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622971, 38.997791, 23.867462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088144, -0.019269, 0.995921,
		-0.838412, 0.538428, 0.084621,
		-0.537863, -0.842451, 0.031303,
		31.461611, 38.745056, 23.876854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271034, 39.427303, 24.248644>,  <31.838116, 39.334770, 23.854940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271034, 39.427303, 24.248644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309792, 39.029243, 24.241793>,  <31.333046, 38.790409, 24.237682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309792, 39.029243, 24.241793>,  <31.271034, 39.427303, 24.248644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309792, 39.029243, 24.241793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124319, -0.029175, 0.991813,
		-0.987500, -0.093972, -0.126543,
		0.096894, -0.995147, -0.017128,
		31.338860, 38.730698, 24.236654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769905, 39.265217, 24.672335>,  <31.271034, 39.427303, 24.248644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769905, 39.265217, 24.672335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036333, 38.967510, 24.652691>,  <31.196190, 38.788887, 24.640905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036333, 38.967510, 24.652691>,  <30.769905, 39.265217, 24.672335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036333, 38.967510, 24.652691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083699, -0.140005, 0.986607,
		-0.741178, -0.653039, -0.155548,
		0.666070, -0.744270, -0.049110,
		31.236155, 38.744228, 24.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503111, 38.611614, 24.971588>,  <30.769905, 39.265217, 24.672335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503111, 38.611614, 24.971588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899651, 38.563595, 24.992826>,  <31.137573, 38.534782, 25.005569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899651, 38.563595, 24.992826>,  <30.503111, 38.611614, 24.971588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899651, 38.563595, 24.992826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061412, -0.066684, 0.995882,
		-0.116022, -0.990525, -0.073480,
		0.991346, -0.120057, 0.053093,
		31.197054, 38.527580, 25.008755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592558, 38.076977, 25.439350>,  <30.503111, 38.611614, 24.971588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592558, 38.076977, 25.439350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940830, 38.273701, 25.441851>,  <31.149794, 38.391735, 25.443350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940830, 38.273701, 25.441851>,  <30.592558, 38.076977, 25.439350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940830, 38.273701, 25.441851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000380, -0.012035, 0.999928,
		0.491852, -0.870618, -0.010292,
		0.870678, 0.491812, 0.006250,
		31.202034, 38.421246, 25.443726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924513, 37.752071, 25.977951>,  <30.592558, 38.076977, 25.439350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924513, 37.752071, 25.977951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115305, 38.098129, 25.915964>,  <31.229780, 38.305763, 25.878771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115305, 38.098129, 25.915964>,  <30.924513, 37.752071, 25.977951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115305, 38.098129, 25.915964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047742, 0.201562, 0.978312,
		0.877616, -0.459237, 0.137444,
		0.476981, 0.865144, -0.154969,
		31.258400, 38.357674, 25.869473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411409, 37.730221, 26.507158>,  <30.924513, 37.752071, 25.977951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411409, 37.730221, 26.507158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432289, 38.110828, 26.385908>,  <31.444817, 38.339195, 26.313158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432289, 38.110828, 26.385908>,  <31.411409, 37.730221, 26.507158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432289, 38.110828, 26.385908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259372, 0.280202, 0.924236,
		0.964366, -0.126866, -0.232171,
		0.052200, 0.951521, -0.303123,
		31.447948, 38.396286, 26.294971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077885, 38.098095, 26.814186>,  <31.411409, 37.730221, 26.507158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077885, 38.098095, 26.814186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800373, 38.375175, 26.735361>,  <31.633865, 38.541424, 26.688066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800373, 38.375175, 26.735361>,  <32.077885, 38.098095, 26.814186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800373, 38.375175, 26.735361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091365, 0.356072, 0.929981,
		0.714366, 0.627200, -0.310325,
		-0.693783, 0.692699, -0.197062,
		31.592237, 38.582985, 26.676243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328407, 38.645103, 27.283535>,  <32.077885, 38.098095, 26.814186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328407, 38.645103, 27.283535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963682, 38.754982, 27.161463>,  <31.744846, 38.820908, 27.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963682, 38.754982, 27.161463>,  <32.328407, 38.645103, 27.283535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963682, 38.754982, 27.161463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216698, 0.309377, 0.925920,
		0.348763, 0.910400, -0.222568,
		-0.911815, 0.274696, -0.305181,
		31.690138, 38.837391, 27.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361794, 39.326328, 27.409168>,  <32.328407, 38.645103, 27.283535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361794, 39.326328, 27.409168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989002, 39.182137, 27.393852>,  <31.765327, 39.095619, 27.384663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989002, 39.182137, 27.393852>,  <32.361794, 39.326328, 27.409168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989002, 39.182137, 27.393852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180442, 0.369686, 0.911467,
		-0.314413, 0.856378, -0.409586,
		-0.931979, -0.360484, -0.038292,
		31.709408, 39.073990, 27.382364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038960, 39.878078, 27.584175>,  <32.361794, 39.326328, 27.409168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038960, 39.878078, 27.584175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776520, 39.578678, 27.622702>,  <31.619057, 39.399036, 27.645819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776520, 39.578678, 27.622702>,  <32.038960, 39.878078, 27.584175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776520, 39.578678, 27.622702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337150, 0.404899, 0.849933,
		-0.675176, 0.525167, -0.518012,
		-0.656100, -0.748502, 0.096318,
		31.579689, 39.354126, 27.651598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342539, 40.173183, 27.764709>,  <32.038960, 39.878078, 27.584175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342539, 40.173183, 27.764709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364529, 39.792671, 27.886070>,  <31.377724, 39.564365, 27.958887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364529, 39.792671, 27.886070>,  <31.342539, 40.173183, 27.764709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364529, 39.792671, 27.886070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253061, 0.280664, 0.925844,
		-0.965887, -0.127677, -0.225301,
		0.054975, -0.951276, 0.303400,
		31.381021, 39.507290, 27.977091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231390, 40.240780, 27.095537>,  <31.342539, 40.173183, 27.764709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231390, 40.240780, 27.095537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403868, 40.591198, 27.009172>,  <31.507355, 40.801449, 26.957354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403868, 40.591198, 27.009172>,  <31.231390, 40.240780, 27.095537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403868, 40.591198, 27.009172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697046, 0.171498, -0.696215,
		-0.572887, 0.450704, 0.684592,
		0.431193, 0.876045, -0.215912,
		31.533226, 40.854012, 26.944399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810736, 40.812191, 27.137236>,  <31.231390, 40.240780, 27.095537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810736, 40.812191, 27.137236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104288, 40.977962, 26.921955>,  <31.280420, 41.077427, 26.792786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104288, 40.977962, 26.921955>,  <30.810736, 40.812191, 27.137236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104288, 40.977962, 26.921955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659254, 0.243595, -0.711369,
		-0.163711, 0.876873, 0.451987,
		0.733882, 0.414433, -0.538203,
		31.324453, 41.102291, 26.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368517, 41.336868, 26.789789>,  <30.810736, 40.812191, 27.137236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368517, 41.336868, 26.789789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716347, 41.293701, 26.597042>,  <30.925045, 41.267803, 26.481394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716347, 41.293701, 26.597042>,  <30.368517, 41.336868, 26.789789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716347, 41.293701, 26.597042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446261, 0.246039, -0.860416,
		0.211410, 0.963234, 0.165790,
		0.869573, -0.107915, -0.481869,
		30.977219, 41.261326, 26.452482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438467, 41.954048, 26.402460>,  <30.368517, 41.336868, 26.789789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438467, 41.954048, 26.402460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682852, 41.693592, 26.222353>,  <30.829483, 41.537319, 26.114288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682852, 41.693592, 26.222353>,  <30.438467, 41.954048, 26.402460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682852, 41.693592, 26.222353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344658, 0.293259, -0.891746,
		0.712698, 0.700010, -0.045251,
		0.610961, -0.651141, -0.450269,
		30.866140, 41.498249, 26.087273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706573, 42.304924, 25.892530>,  <30.438467, 41.954048, 26.402460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706573, 42.304924, 25.892530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748642, 41.922546, 25.782911>,  <30.773882, 41.693119, 25.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748642, 41.922546, 25.782911>,  <30.706573, 42.304924, 25.892530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748642, 41.922546, 25.782911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202281, 0.249253, -0.947077,
		0.973664, 0.155039, -0.167156,
		0.105170, -0.955948, -0.274050,
		30.780193, 41.635761, 25.700697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058626, 42.397285, 25.264307>,  <30.706573, 42.304924, 25.892530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058626, 42.397285, 25.264307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947769, 42.013008, 25.257908>,  <30.881254, 41.782440, 25.254068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947769, 42.013008, 25.257908>,  <31.058626, 42.397285, 25.264307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947769, 42.013008, 25.257908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104392, 0.046657, -0.993442,
		0.955141, -0.273656, -0.113220,
		-0.277143, -0.960696, -0.015997,
		30.864626, 41.724800, 25.253109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349930, 42.117218, 24.736303>,  <31.058626, 42.397285, 25.264307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349930, 42.117218, 24.736303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042585, 41.863281, 24.768795>,  <30.858179, 41.710918, 24.788290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042585, 41.863281, 24.768795>,  <31.349930, 42.117218, 24.736303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042585, 41.863281, 24.768795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032958, -0.087505, -0.995619,
		0.639168, -0.767672, 0.046313,
		-0.768361, -0.634841, 0.081231,
		30.812077, 41.672829, 24.793165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429846, 41.519127, 24.234604>,  <31.349930, 42.117218, 24.736303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429846, 41.519127, 24.234604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038923, 41.522064, 24.319288>,  <30.804371, 41.523827, 24.370100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038923, 41.522064, 24.319288>,  <31.429846, 41.519127, 24.234604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038923, 41.522064, 24.319288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210422, -0.149077, -0.966177,
		0.024468, -0.988798, 0.147238,
		-0.977305, 0.007341, 0.211712,
		30.745731, 41.524265, 24.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184288, 40.874691, 23.784330>,  <31.429846, 41.519127, 24.234604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184288, 40.874691, 23.784330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884806, 41.117264, 23.891422>,  <30.705116, 41.262806, 23.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884806, 41.117264, 23.891422>,  <31.184288, 40.874691, 23.784330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884806, 41.117264, 23.891422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294763, 0.057198, -0.953857,
		-0.593762, -0.793077, 0.135928,
		-0.748707, 0.606431, 0.267731,
		30.660194, 41.299194, 23.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668200, 40.560822, 23.496147>,  <31.184288, 40.874691, 23.784330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668200, 40.560822, 23.496147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516569, 40.925472, 23.559702>,  <30.425591, 41.144260, 23.597834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516569, 40.925472, 23.559702>,  <30.668200, 40.560822, 23.496147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516569, 40.925472, 23.559702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383961, 0.001269, -0.923348,
		-0.841948, -0.411024, 0.349547,
		-0.379074, 0.911624, 0.158886,
		30.402847, 41.198959, 23.607368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010557, 40.445854, 23.201279>,  <30.668200, 40.560822, 23.496147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010557, 40.445854, 23.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067894, 40.841480, 23.215195>,  <30.102297, 41.078854, 23.223545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067894, 40.841480, 23.215195>,  <30.010557, 40.445854, 23.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067894, 40.841480, 23.215195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248516, 0.070000, -0.966095,
		-0.957963, 0.129836, 0.255831,
		0.143342, 0.989062, 0.034791,
		30.110897, 41.138199, 23.225632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431368, 40.770874, 22.824886>,  <30.010557, 40.445854, 23.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431368, 40.770874, 22.824886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733782, 41.032665, 22.821459>,  <29.915230, 41.189739, 22.819403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733782, 41.032665, 22.821459>,  <29.431368, 40.770874, 22.824886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733782, 41.032665, 22.821459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170407, 0.184179, -0.968008,
		-0.631958, 0.733309, 0.250773,
		0.756036, 0.654474, -0.008568,
		29.960592, 41.229008, 22.818888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124573, 41.357426, 22.605879>,  <29.431368, 40.770874, 22.824886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124573, 41.357426, 22.605879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517984, 41.388367, 22.540537>,  <29.754032, 41.406933, 22.501331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517984, 41.388367, 22.540537>,  <29.124573, 41.357426, 22.605879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517984, 41.388367, 22.540537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180130, 0.345078, -0.921126,
		-0.014880, 0.935381, 0.353329,
		0.983530, 0.077352, -0.163356,
		29.813044, 41.411572, 22.491529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191282, 41.967308, 22.342375>,  <29.124573, 41.357426, 22.605879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191282, 41.967308, 22.342375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510447, 41.757992, 22.222706>,  <29.701946, 41.632404, 22.150904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510447, 41.757992, 22.222706>,  <29.191282, 41.967308, 22.342375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510447, 41.757992, 22.222706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139905, 0.321996, -0.936347,
		0.586312, 0.788979, 0.183714,
		0.797913, -0.523289, -0.299172,
		29.749821, 41.601006, 22.132954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434065, 42.333172, 21.761053>,  <29.191282, 41.967308, 22.342375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434065, 42.333172, 21.761053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633608, 41.988369, 21.725090>,  <29.753334, 41.781487, 21.703512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633608, 41.988369, 21.725090>,  <29.434065, 42.333172, 21.761053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633608, 41.988369, 21.725090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055256, 0.071893, -0.995881,
		0.864920, 0.501771, -0.011767,
		0.498858, -0.862008, -0.089908,
		29.783266, 41.729767, 21.698118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914520, 42.456207, 21.220722>,  <29.434065, 42.333172, 21.761053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914520, 42.456207, 21.220722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891649, 42.060974, 21.277897>,  <29.877926, 41.823833, 21.312202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891649, 42.060974, 21.277897>,  <29.914520, 42.456207, 21.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891649, 42.060974, 21.277897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075661, -0.147049, -0.986231,
		0.995493, -0.045576, 0.083167,
		-0.057178, -0.988079, 0.142938,
		29.874496, 41.764549, 21.320778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458071, 42.217564, 20.742870>,  <29.914520, 42.456207, 21.220722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458071, 42.217564, 20.742870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220579, 41.908451, 20.832573>,  <30.078085, 41.722984, 20.886395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220579, 41.908451, 20.832573>,  <30.458071, 42.217564, 20.742870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220579, 41.908451, 20.832573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013799, -0.288430, -0.957401,
		0.804547, -0.565343, 0.181914,
		-0.593729, -0.772784, 0.224254,
		30.042459, 41.676617, 20.899849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879000, 41.696693, 20.381149>,  <30.458071, 42.217564, 20.742870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879000, 41.696693, 20.381149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501680, 41.577339, 20.439333>,  <30.275290, 41.505726, 20.474243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501680, 41.577339, 20.439333>,  <30.879000, 41.696693, 20.381149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501680, 41.577339, 20.439333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049443, -0.307009, -0.950422,
		0.328250, -0.903721, 0.274847,
		-0.943296, -0.298386, 0.145458,
		30.218691, 41.487823, 20.482971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879482, 40.905895, 20.213869>,  <30.879000, 41.696693, 20.381149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879482, 40.905895, 20.213869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524826, 41.089371, 20.190296>,  <30.312033, 41.199455, 20.176153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524826, 41.089371, 20.190296>,  <30.879482, 40.905895, 20.213869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524826, 41.089371, 20.190296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136311, -0.380981, -0.914480,
		-0.441915, -0.802781, 0.400317,
		-0.886640, 0.458689, -0.058933,
		30.258833, 41.226978, 20.172617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456223, 40.374813, 20.059345>,  <30.879482, 40.905895, 20.213869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456223, 40.374813, 20.059345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251850, 40.693836, 19.931065>,  <30.129227, 40.885250, 19.854095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251850, 40.693836, 19.931065>,  <30.456223, 40.374813, 20.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251850, 40.693836, 19.931065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385723, -0.546117, -0.743622,
		-0.768224, -0.256236, 0.586664,
		-0.510930, 0.797558, -0.320704,
		30.098572, 40.933105, 19.834854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714012, 40.135460, 19.819166>,  <30.456223, 40.374813, 20.059345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714012, 40.135460, 19.819166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804184, 40.489513, 19.656334>,  <29.858288, 40.701946, 19.558634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804184, 40.489513, 19.656334>,  <29.714012, 40.135460, 19.819166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804184, 40.489513, 19.656334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432446, -0.283510, -0.855928,
		-0.873024, 0.368993, 0.318862,
		0.225430, 0.885136, -0.407081,
		29.871813, 40.755054, 19.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118349, 40.431892, 19.613262>,  <29.714012, 40.135460, 19.819166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118349, 40.431892, 19.613262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400837, 40.633888, 19.414772>,  <29.570330, 40.755085, 19.295677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400837, 40.633888, 19.414772>,  <29.118349, 40.431892, 19.613262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400837, 40.633888, 19.414772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432766, -0.246803, -0.867065,
		-0.560329, 0.827088, 0.044246,
		0.706219, 0.504990, -0.496226,
		29.612703, 40.785385, 19.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834513, 40.537411, 19.019392>,  <29.118349, 40.431892, 19.613262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834513, 40.537411, 19.019392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198631, 40.630928, 18.882746>,  <29.417103, 40.687038, 18.800758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198631, 40.630928, 18.882746>,  <28.834513, 40.537411, 19.019392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198631, 40.630928, 18.882746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296194, -0.208648, -0.932060,
		-0.289187, 0.949635, -0.120683,
		0.910297, 0.233794, -0.341614,
		29.471720, 40.701065, 18.780262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750433, 40.826118, 18.395775>,  <28.834513, 40.537411, 19.019392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750433, 40.826118, 18.395775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134296, 40.714928, 18.412657>,  <29.364614, 40.648212, 18.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134296, 40.714928, 18.412657>,  <28.750433, 40.826118, 18.395775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134296, 40.714928, 18.412657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043325, -0.294511, -0.954665,
		0.277807, 0.914325, -0.294674,
		0.959659, -0.277980, 0.042205,
		29.422194, 40.631535, 18.425318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084991, 41.107376, 17.756449>,  <28.750433, 40.826118, 18.395775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084991, 41.107376, 17.756449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260672, 40.788486, 17.922121>,  <29.366079, 40.597153, 18.021524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260672, 40.788486, 17.922121>,  <29.084991, 41.107376, 17.756449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260672, 40.788486, 17.922121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048019, -0.481197, -0.875296,
		0.897106, 0.364540, -0.249623,
		0.439198, -0.797220, 0.414180,
		29.392431, 40.549320, 18.046375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543943, 40.878960, 17.253874>,  <29.084991, 41.107376, 17.756449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543943, 40.878960, 17.253874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531572, 40.559303, 17.494015>,  <29.524149, 40.367512, 17.638100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531572, 40.559303, 17.494015>,  <29.543943, 40.878960, 17.253874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531572, 40.559303, 17.494015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056587, -0.601078, -0.797185,
		0.997919, 0.009318, 0.063811,
		-0.030927, -0.799136, 0.600354,
		29.522295, 40.319561, 17.674122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113766, 40.546131, 17.057590>,  <29.543943, 40.878960, 17.253874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113766, 40.546131, 17.057590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873896, 40.272144, 17.223103>,  <29.729973, 40.107754, 17.322409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873896, 40.272144, 17.223103>,  <30.113766, 40.546131, 17.057590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873896, 40.272144, 17.223103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097710, -0.575870, -0.811681,
		0.794254, -0.446317, 0.412264,
		-0.599677, -0.684963, 0.413778,
		29.693993, 40.066654, 17.347237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469902, 40.094151, 16.856604>,  <30.113766, 40.546131, 17.057590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469902, 40.094151, 16.856604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115620, 39.929111, 16.941721>,  <29.903049, 39.830086, 16.992790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115620, 39.929111, 16.941721>,  <30.469902, 40.094151, 16.856604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115620, 39.929111, 16.941721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008639, -0.443637, -0.896165,
		0.464162, -0.795579, 0.389368,
		-0.885708, -0.412602, 0.212792,
		29.849907, 39.805332, 17.005558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629259, 39.446140, 16.787460>,  <30.469902, 40.094151, 16.856604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629259, 39.446140, 16.787460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229979, 39.439316, 16.764462>,  <29.990410, 39.435219, 16.750662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229979, 39.439316, 16.764462>,  <30.629259, 39.446140, 16.787460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229979, 39.439316, 16.764462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054901, -0.645930, -0.761420,
		-0.024145, -0.763206, 0.645704,
		-0.998200, -0.017066, -0.057497,
		29.930519, 39.434196, 16.747213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406645, 38.773300, 16.800055>,  <30.629259, 39.446140, 16.787460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406645, 38.773300, 16.800055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116119, 38.979259, 16.617914>,  <29.941803, 39.102837, 16.508631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116119, 38.979259, 16.617914>,  <30.406645, 38.773300, 16.800055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116119, 38.979259, 16.617914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092923, -0.582826, -0.807267,
		-0.681053, -0.628642, 0.375468,
		-0.726314, 0.514902, -0.455350,
		29.898224, 39.133728, 16.481310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945223, 38.286163, 16.482780>,  <30.406645, 38.773300, 16.800055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945223, 38.286163, 16.482780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889551, 38.637871, 16.300564>,  <29.856148, 38.848896, 16.191235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889551, 38.637871, 16.300564>,  <29.945223, 38.286163, 16.482780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889551, 38.637871, 16.300564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096720, -0.469890, -0.877410,
		-0.985532, -0.078058, 0.150442,
		-0.139181, 0.879267, -0.455542,
		29.847797, 38.901649, 16.163902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599903, 38.184029, 15.923471>,  <29.945223, 38.286163, 16.482780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599903, 38.184029, 15.923471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700274, 38.560810, 15.834251>,  <29.760496, 38.786880, 15.780719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700274, 38.560810, 15.834251>,  <29.599903, 38.184029, 15.923471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700274, 38.560810, 15.834251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094364, -0.253128, -0.962820,
		-0.963396, 0.220548, -0.152403,
		0.250925, 0.941958, -0.223051,
		29.775551, 38.843399, 15.767336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088005, 38.393749, 15.433274>,  <29.599903, 38.184029, 15.923471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088005, 38.393749, 15.433274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422071, 38.608963, 15.387639>,  <29.622511, 38.738091, 15.360258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422071, 38.608963, 15.387639>,  <29.088005, 38.393749, 15.433274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422071, 38.608963, 15.387639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015281, -0.230053, -0.973058,
		-0.549784, 0.810922, -0.200354,
		0.835167, 0.538034, -0.114088,
		29.672621, 38.770374, 15.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935577, 38.729664, 14.763046>,  <29.088005, 38.393749, 15.433274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935577, 38.729664, 14.763046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327692, 38.738777, 14.841556>,  <29.562960, 38.744244, 14.888661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327692, 38.738777, 14.841556>,  <28.935577, 38.729664, 14.763046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327692, 38.738777, 14.841556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190275, -0.376643, -0.906606,
		0.053268, 0.926078, -0.373553,
		0.980285, 0.022784, 0.196272,
		29.621777, 38.745613, 14.900437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271217, 39.063698, 14.223343>,  <28.935577, 38.729664, 14.763046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271217, 39.063698, 14.223343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558111, 38.842136, 14.392467>,  <29.730247, 38.709198, 14.493940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558111, 38.842136, 14.392467>,  <29.271217, 39.063698, 14.223343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558111, 38.842136, 14.392467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308517, -0.291633, -0.905410,
		0.624815, 0.779834, -0.038280,
		0.717233, -0.553904, 0.422809,
		29.773281, 38.675964, 14.519309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728523, 39.189369, 13.759737>,  <29.271217, 39.063698, 14.223343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728523, 39.189369, 13.759737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874994, 38.882473, 13.970357>,  <29.962877, 38.698334, 14.096729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874994, 38.882473, 13.970357>,  <29.728523, 39.189369, 13.759737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874994, 38.882473, 13.970357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378534, -0.394101, -0.837494,
		0.850073, 0.505990, 0.146115,
		0.366180, -0.767240, 0.526550,
		29.984848, 38.652302, 14.128322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432251, 39.064690, 13.529790>,  <29.728523, 39.189369, 13.759737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432251, 39.064690, 13.529790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306015, 38.718143, 13.684617>,  <30.230274, 38.510216, 13.777514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306015, 38.718143, 13.684617>,  <30.432251, 39.064690, 13.529790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306015, 38.718143, 13.684617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367926, -0.487726, -0.791678,
		0.874663, -0.107431, 0.472677,
		-0.315588, -0.866361, 0.387069,
		30.211338, 38.458237, 13.800737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896477, 38.630009, 13.379502>,  <30.432251, 39.064690, 13.529790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896477, 38.630009, 13.379502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599525, 38.372833, 13.454870>,  <30.421354, 38.218529, 13.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599525, 38.372833, 13.454870>,  <30.896477, 38.630009, 13.379502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599525, 38.372833, 13.454870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325386, -0.591833, -0.737467,
		0.585661, -0.486169, 0.648568,
		-0.742378, -0.642941, 0.188421,
		30.376812, 38.179951, 13.511396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542147, 38.733456, 13.075864>,  <30.896477, 38.630009, 13.379502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542147, 38.733456, 13.075864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934139, 38.807213, 13.045836>,  <32.169334, 38.851467, 13.027820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934139, 38.807213, 13.045836>,  <31.542147, 38.733456, 13.075864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934139, 38.807213, 13.045836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006213, 0.405211, 0.914202,
		0.198988, -0.895435, 0.398245,
		0.979982, 0.184390, -0.075069,
		32.228134, 38.862530, 13.023315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775299, 38.459587, 13.670047>,  <31.542147, 38.733456, 13.075864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775299, 38.459587, 13.670047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077419, 38.692871, 13.550455>,  <32.258690, 38.832840, 13.478700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077419, 38.692871, 13.550455>,  <31.775299, 38.459587, 13.670047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077419, 38.692871, 13.550455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220026, 0.204069, 0.953910,
		0.617343, -0.786271, 0.025812,
		0.755299, 0.583210, -0.298980,
		32.304008, 38.867832, 13.460761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357445, 38.510654, 14.234120>,  <31.775299, 38.459587, 13.670047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357445, 38.510654, 14.234120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529659, 38.804169, 14.023903>,  <32.632988, 38.980278, 13.897773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529659, 38.804169, 14.023903>,  <32.357445, 38.510654, 14.234120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529659, 38.804169, 14.023903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559662, 0.239778, 0.793275,
		0.708108, -0.635661, -0.307440,
		0.430536, 0.733786, -0.525544,
		32.658821, 39.024303, 13.866240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163433, 38.554180, 14.394802>,  <32.357445, 38.510654, 14.234120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163433, 38.554180, 14.394802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029568, 38.894276, 14.232277>,  <32.949249, 39.098331, 14.134762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029568, 38.894276, 14.232277>,  <33.163433, 38.554180, 14.394802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029568, 38.894276, 14.232277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355460, 0.513226, 0.781183,
		0.872723, 0.117009, -0.473986,
		-0.334667, 0.850240, -0.406312,
		32.929169, 39.149349, 14.110383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714840, 39.078949, 14.387285>,  <33.163433, 38.554180, 14.394802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714840, 39.078949, 14.387285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381462, 39.298668, 14.363132>,  <33.181435, 39.430500, 14.348640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381462, 39.298668, 14.363132>,  <33.714840, 39.078949, 14.387285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381462, 39.298668, 14.363132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374944, 0.642380, 0.668405,
		0.405938, 0.534439, -0.741343,
		-0.833445, 0.549293, -0.060382,
		33.131428, 39.463455, 14.345017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936867, 39.761513, 14.296438>,  <33.714840, 39.078949, 14.387285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936867, 39.761513, 14.296438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569813, 39.777668, 14.454581>,  <33.349579, 39.787361, 14.549467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569813, 39.777668, 14.454581>,  <33.936867, 39.761513, 14.296438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569813, 39.777668, 14.454581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297271, 0.730004, 0.615405,
		-0.263759, 0.682248, -0.681886,
		-0.917639, 0.040386, 0.395358,
		33.294521, 39.789783, 14.573189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863640, 40.437267, 14.528265>,  <33.936867, 39.761513, 14.296438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863640, 40.437267, 14.528265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548534, 40.281815, 14.719428>,  <33.359470, 40.188545, 14.834126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548534, 40.281815, 14.719428>,  <33.863640, 40.437267, 14.528265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548534, 40.281815, 14.719428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205446, 0.565662, 0.798636,
		-0.580707, 0.727320, -0.365766,
		-0.787764, -0.388628, 0.477908,
		33.312206, 40.165226, 14.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523827, 41.046158, 14.855680>,  <33.863640, 40.437267, 14.528265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523827, 41.046158, 14.855680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414204, 40.708828, 15.040587>,  <33.348431, 40.506428, 15.151532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414204, 40.708828, 15.040587>,  <33.523827, 41.046158, 14.855680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414204, 40.708828, 15.040587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076401, 0.460060, 0.884594,
		-0.958674, 0.277745, -0.061651,
		-0.274055, -0.843328, 0.462268,
		33.331985, 40.455830, 15.179268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020771, 41.296921, 15.332573>,  <33.523827, 41.046158, 14.855680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020771, 41.296921, 15.332573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156708, 40.942940, 15.459922>,  <33.238270, 40.730549, 15.536331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156708, 40.942940, 15.459922>,  <33.020771, 41.296921, 15.332573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156708, 40.942940, 15.459922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072640, 0.362207, 0.929263,
		-0.937673, -0.292675, 0.187376,
		0.339841, -0.884956, 0.318372,
		33.258659, 40.677452, 15.555433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622974, 41.205498, 15.840722>,  <33.020771, 41.296921, 15.332573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622974, 41.205498, 15.840722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949867, 40.980350, 15.890208>,  <33.146004, 40.845261, 15.919900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949867, 40.980350, 15.890208>,  <32.622974, 41.205498, 15.840722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949867, 40.980350, 15.890208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041261, 0.271266, 0.961619,
		-0.574823, -0.780766, 0.244913,
		0.817237, -0.562867, 0.123715,
		33.195038, 40.811489, 15.927322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504261, 41.032112, 16.498989>,  <32.622974, 41.205498, 15.840722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504261, 41.032112, 16.498989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890781, 40.947582, 16.440193>,  <33.122692, 40.896862, 16.404915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890781, 40.947582, 16.440193>,  <32.504261, 41.032112, 16.498989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890781, 40.947582, 16.440193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183764, 0.166417, 0.968781,
		-0.180271, -0.963143, 0.199643,
		0.966299, -0.211330, -0.146991,
		33.180672, 40.884182, 16.396095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859909, 40.481926, 16.824627>,  <32.504261, 41.032112, 16.498989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859909, 40.481926, 16.824627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112663, 40.785561, 16.762009>,  <33.264317, 40.967743, 16.724438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112663, 40.785561, 16.762009>,  <32.859909, 40.481926, 16.824627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112663, 40.785561, 16.762009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155109, 0.321743, 0.934036,
		0.759380, -0.565925, 0.321047,
		0.631888, 0.759085, -0.156545,
		33.302231, 41.013287, 16.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307816, 40.394020, 17.452173>,  <32.859909, 40.481926, 16.824627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307816, 40.394020, 17.452173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266975, 40.765282, 17.309004>,  <33.242470, 40.988037, 17.223103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266975, 40.765282, 17.309004>,  <33.307816, 40.394020, 17.452173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266975, 40.765282, 17.309004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166983, 0.338706, 0.925956,
		0.980659, 0.154307, 0.120403,
		-0.102101, 0.928153, -0.357922,
		33.236343, 41.043728, 17.201628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849846, 40.874012, 17.680328>,  <33.307816, 40.394020, 17.452173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849846, 40.874012, 17.680328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533096, 41.104153, 17.598448>,  <33.343044, 41.242237, 17.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533096, 41.104153, 17.598448>,  <33.849846, 40.874012, 17.680328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533096, 41.104153, 17.598448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008994, 0.346154, 0.938135,
		0.610614, 0.741046, -0.279286,
		-0.791877, 0.575350, -0.204702,
		33.295532, 41.276756, 17.537037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940895, 41.568985, 17.989813>,  <33.849846, 40.874012, 17.680328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940895, 41.568985, 17.989813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545116, 41.572052, 17.931934>,  <33.307648, 41.573895, 17.897207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545116, 41.572052, 17.931934>,  <33.940895, 41.568985, 17.989813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545116, 41.572052, 17.931934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124320, 0.468058, 0.874909,
		0.074437, 0.883665, -0.462164,
		-0.989446, 0.007670, -0.144699,
		33.248283, 41.574352, 17.888525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768948, 42.137741, 18.295061>,  <33.940895, 41.568985, 17.989813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768948, 42.137741, 18.295061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421593, 41.945583, 18.245874>,  <33.213181, 41.830288, 18.216362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421593, 41.945583, 18.245874>,  <33.768948, 42.137741, 18.295061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421593, 41.945583, 18.245874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343270, 0.403399, 0.848195,
		-0.357866, 0.778773, -0.515213,
		-0.868388, -0.480398, -0.122966,
		33.161076, 41.801464, 18.208984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243584, 42.640118, 18.372120>,  <33.768948, 42.137741, 18.295061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243584, 42.640118, 18.372120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040356, 42.303638, 18.446148>,  <32.918419, 42.101749, 18.490564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040356, 42.303638, 18.446148>,  <33.243584, 42.640118, 18.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040356, 42.303638, 18.446148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431368, 0.434490, 0.790658,
		-0.745510, 0.321878, -0.583618,
		-0.508071, -0.841197, 0.185069,
		32.887936, 42.051281, 18.501669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620907, 42.869854, 18.700924>,  <33.243584, 42.640118, 18.372120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620907, 42.869854, 18.700924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658798, 42.480160, 18.782791>,  <32.681534, 42.246342, 18.831911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658798, 42.480160, 18.782791>,  <32.620907, 42.869854, 18.700924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658798, 42.480160, 18.782791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381770, 0.154321, 0.911283,
		-0.919389, -0.164465, -0.357315,
		0.094733, -0.974236, 0.204669,
		32.687218, 42.187889, 18.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055820, 42.740803, 19.073387>,  <32.620907, 42.869854, 18.700924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055820, 42.740803, 19.073387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296585, 42.431637, 19.153685>,  <32.441044, 42.246136, 19.201862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296585, 42.431637, 19.153685>,  <32.055820, 42.740803, 19.073387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296585, 42.431637, 19.153685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356018, -0.034717, 0.933834,
		-0.714807, -0.633556, -0.296070,
		0.601915, -0.772917, 0.200741,
		32.477161, 42.199760, 19.213907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619734, 42.124359, 19.293201>,  <32.055820, 42.740803, 19.073387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619734, 42.124359, 19.293201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989765, 42.073811, 19.436453>,  <32.211784, 42.043480, 19.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989765, 42.073811, 19.436453>,  <31.619734, 42.124359, 19.293201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989765, 42.073811, 19.436453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370689, -0.095458, 0.923839,
		-0.082538, -0.987382, -0.135142,
		0.925083, -0.126347, 0.358133,
		32.267288, 42.035896, 19.543892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483416, 41.827549, 19.795147>,  <31.619734, 42.124359, 19.293201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483416, 41.827549, 19.795147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859262, 41.939590, 19.873802>,  <32.084770, 42.006813, 19.920996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859262, 41.939590, 19.873802>,  <31.483416, 41.827549, 19.795147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859262, 41.939590, 19.873802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238705, 0.124665, 0.963057,
		0.245241, -0.951841, 0.183999,
		0.939615, 0.280102, 0.196637,
		32.141148, 42.023621, 19.932793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756123, 41.391640, 20.324823>,  <31.483416, 41.827549, 19.795147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756123, 41.391640, 20.324823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977299, 41.722878, 20.361738>,  <32.110004, 41.921619, 20.383888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977299, 41.722878, 20.361738>,  <31.756123, 41.391640, 20.324823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977299, 41.722878, 20.361738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136615, -0.019160, 0.990439,
		0.821944, -0.560263, 0.102536,
		0.552942, 0.828093, 0.092289,
		32.143181, 41.971306, 20.389425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167557, 41.261692, 21.019875>,  <31.756123, 41.391640, 20.324823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167557, 41.261692, 21.019875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185200, 41.654575, 20.946856>,  <32.195786, 41.890305, 20.903044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185200, 41.654575, 20.946856>,  <32.167557, 41.261692, 21.019875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185200, 41.654575, 20.946856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270401, 0.187643, 0.944284,
		0.961737, 0.007713, 0.273866,
		0.044106, 0.982207, -0.182549,
		32.198433, 41.949238, 20.892092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710838, 41.531506, 21.430107>,  <32.167557, 41.261692, 21.019875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710838, 41.531506, 21.430107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486393, 41.850685, 21.342087>,  <32.351727, 42.042194, 21.289274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486393, 41.850685, 21.342087>,  <32.710838, 41.531506, 21.430107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486393, 41.850685, 21.342087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027870, 0.247483, 0.968491,
		0.827267, 0.549570, -0.116628,
		-0.561117, 0.797950, -0.220051,
		32.318058, 42.090069, 21.276072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118835, 42.065369, 21.688923>,  <32.710838, 41.531506, 21.430107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118835, 42.065369, 21.688923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754925, 42.225380, 21.644596>,  <32.536579, 42.321388, 21.618000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754925, 42.225380, 21.644596>,  <33.118835, 42.065369, 21.688923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754925, 42.225380, 21.644596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125523, 0.519595, 0.845142,
		0.395663, 0.754981, -0.522929,
		-0.909777, 0.400031, -0.110817,
		32.481991, 42.345390, 21.611351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166344, 42.804874, 21.765953>,  <33.118835, 42.065369, 21.688923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166344, 42.804874, 21.765953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776691, 42.749191, 21.837160>,  <32.542900, 42.715782, 21.879885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776691, 42.749191, 21.837160>,  <33.166344, 42.804874, 21.765953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776691, 42.749191, 21.837160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083245, 0.511286, 0.855369,
		-0.210094, 0.848061, -0.486471,
		-0.974131, -0.139211, 0.178015,
		32.484451, 42.707428, 21.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940369, 43.451420, 22.089117>,  <33.166344, 42.804874, 21.765953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940369, 43.451420, 22.089117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647892, 43.188946, 22.163712>,  <32.472408, 43.031460, 22.208467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647892, 43.188946, 22.163712>,  <32.940369, 43.451420, 22.089117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647892, 43.188946, 22.163712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184210, 0.453140, 0.872199,
		-0.656832, 0.603390, -0.452208,
		-0.731189, -0.656190, 0.186486,
		32.428535, 42.992088, 22.219658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323921, 43.876858, 22.325064>,  <32.940369, 43.451420, 22.089117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323921, 43.876858, 22.325064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309559, 43.504860, 22.471394>,  <32.300941, 43.281662, 22.559191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309559, 43.504860, 22.471394>,  <32.323921, 43.876858, 22.325064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309559, 43.504860, 22.471394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021721, 0.365248, 0.930657,
		-0.999119, 0.041358, 0.007088,
		-0.035901, -0.929991, 0.365825,
		32.298790, 43.225864, 22.581141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853249, 43.898502, 22.854788>,  <32.323921, 43.876858, 22.325064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853249, 43.898502, 22.854788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075146, 43.579021, 22.948030>,  <32.208282, 43.387333, 23.003977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075146, 43.579021, 22.948030>,  <31.853249, 43.898502, 22.854788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075146, 43.579021, 22.948030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235251, 0.419307, 0.876835,
		-0.798072, -0.431577, 0.420502,
		0.554741, -0.798700, 0.233108,
		32.241570, 43.339413, 23.017963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721491, 43.776482, 23.571167>,  <31.853249, 43.898502, 22.854788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721491, 43.776482, 23.571167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051075, 43.561165, 23.500368>,  <32.248825, 43.431973, 23.457888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051075, 43.561165, 23.500368>,  <31.721491, 43.776482, 23.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051075, 43.561165, 23.500368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419042, 0.368572, 0.829794,
		-0.381438, -0.757886, 0.529257,
		0.823959, -0.538296, -0.176999,
		32.298264, 43.399677, 23.447269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867687, 43.356541, 24.246201>,  <31.721491, 43.776482, 23.571167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867687, 43.356541, 24.246201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217773, 43.365250, 24.052904>,  <32.427826, 43.370476, 23.936926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217773, 43.365250, 24.052904>,  <31.867687, 43.356541, 24.246201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217773, 43.365250, 24.052904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474795, 0.152445, 0.866793,
		0.092537, -0.988072, 0.123087,
		0.875218, 0.021769, -0.483239,
		32.480339, 43.371780, 23.907932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316135, 43.231678, 24.694479>,  <31.867687, 43.356541, 24.246201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316135, 43.231678, 24.694479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580925, 43.367565, 24.427233>,  <32.739799, 43.449097, 24.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580925, 43.367565, 24.427233>,  <32.316135, 43.231678, 24.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580925, 43.367565, 24.427233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619527, 0.253722, 0.742841,
		0.421872, -0.905658, -0.042507,
		0.661974, 0.339718, -0.668117,
		32.779518, 43.469479, 24.226797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835464, 42.887135, 24.952023>,  <32.316135, 43.231678, 24.694479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835464, 42.887135, 24.952023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958912, 43.198734, 24.733696>,  <33.032978, 43.385693, 24.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958912, 43.198734, 24.733696>,  <32.835464, 42.887135, 24.952023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958912, 43.198734, 24.733696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676441, 0.223677, 0.701710,
		0.668718, -0.585772, -0.457917,
		0.308616, 0.779000, -0.545817,
		33.051498, 43.432434, 24.569950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540924, 42.886280, 25.006870>,  <32.835464, 42.887135, 24.952023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540924, 42.886280, 25.006870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438778, 43.262642, 24.917887>,  <33.377491, 43.488457, 24.864496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438778, 43.262642, 24.917887>,  <33.540924, 42.886280, 25.006870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438778, 43.262642, 24.917887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677455, 0.338294, 0.653156,
		0.689813, 0.016091, -0.723809,
		-0.255370, 0.940903, -0.222458,
		33.362167, 43.544914, 24.851149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157978, 43.191448, 25.031620>,  <33.540924, 42.886280, 25.006870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157978, 43.191448, 25.031620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915943, 43.509102, 25.008926>,  <33.770721, 43.699692, 24.995310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915943, 43.509102, 25.008926>,  <34.157978, 43.191448, 25.031620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915943, 43.509102, 25.008926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659484, 0.539866, 0.523092,
		0.446032, 0.279104, -0.850386,
		-0.605092, 0.794132, -0.056733,
		33.734417, 43.747341, 24.991907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455421, 43.857891, 24.711620>,  <34.157978, 43.191448, 25.031620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455421, 43.857891, 24.711620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148815, 43.977299, 24.939072>,  <33.964851, 44.048943, 25.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148815, 43.977299, 24.939072>,  <34.455421, 43.857891, 24.711620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148815, 43.977299, 24.939072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599289, 0.650763, 0.466219,
		-0.230868, 0.698138, -0.677720,
		-0.766520, 0.298515, 0.568627,
		33.918858, 44.066853, 25.109659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474121, 44.627632, 24.783503>,  <34.455421, 43.857891, 24.711620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474121, 44.627632, 24.783503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278400, 44.519024, 25.115011>,  <34.160969, 44.453857, 25.313917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278400, 44.519024, 25.115011>,  <34.474121, 44.627632, 24.783503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278400, 44.519024, 25.115011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585402, 0.602145, 0.542887,
		-0.646445, 0.750799, -0.135681,
		-0.489299, -0.271519, 0.828773,
		34.131611, 44.437569, 25.363644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519211, 45.203636, 25.210167>,  <34.474121, 44.627632, 24.783503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519211, 45.203636, 25.210167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408031, 44.932457, 25.482380>,  <34.341324, 44.769749, 25.645708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408031, 44.932457, 25.482380>,  <34.519211, 45.203636, 25.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408031, 44.932457, 25.482380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675048, 0.366173, 0.640490,
		-0.683414, 0.637416, 0.355873,
		-0.277947, -0.677951, 0.680535,
		34.324646, 44.729073, 25.686541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543255, 45.618591, 25.836367>,  <34.519211, 45.203636, 25.210167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543255, 45.618591, 25.836367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552746, 45.228470, 25.924198>,  <34.558441, 44.994396, 25.976898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552746, 45.228470, 25.924198>,  <34.543255, 45.618591, 25.836367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552746, 45.228470, 25.924198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672314, 0.178125, 0.718516,
		-0.739886, 0.130577, 0.659939,
		0.023729, -0.975306, 0.219581,
		34.559864, 44.935879, 25.990072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549225, 45.665031, 26.483801>,  <34.543255, 45.618591, 25.836367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549225, 45.665031, 26.483801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689720, 45.297035, 26.414225>,  <34.774017, 45.076237, 26.372478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689720, 45.297035, 26.414225>,  <34.549225, 45.665031, 26.483801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689720, 45.297035, 26.414225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780187, 0.184876, 0.597602,
		-0.517629, -0.345607, 0.782698,
		0.351238, -0.919987, -0.173941,
		34.795090, 45.021038, 26.362041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955994, 45.175686, 26.840553>,  <34.549225, 45.665031, 26.483801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955994, 45.175686, 26.840553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617405, 45.369770, 26.928240>,  <34.414253, 45.486221, 26.980852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617405, 45.369770, 26.928240>,  <34.955994, 45.175686, 26.840553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617405, 45.369770, 26.928240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210161, -0.682777, 0.699748,
		0.489201, 0.546247, 0.679924,
		-0.846472, 0.485211, 0.219216,
		34.363464, 45.515335, 26.994005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840282, 45.302776, 27.583088>,  <34.955994, 45.175686, 26.840553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840282, 45.302776, 27.583088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471790, 45.307014, 27.427536>,  <34.250694, 45.309555, 27.334206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471790, 45.307014, 27.427536>,  <34.840282, 45.302776, 27.583088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471790, 45.307014, 27.427536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307771, -0.631256, 0.711894,
		-0.237942, 0.775502, 0.584790,
		-0.921228, 0.010592, -0.388879,
		34.195423, 45.310192, 27.310873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783558, 44.941681, 28.178198>,  <34.840282, 45.302776, 27.583088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783558, 44.941681, 28.178198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721348, 44.831276, 27.798803>,  <34.684021, 44.765034, 27.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721348, 44.831276, 27.798803>,  <34.783558, 44.941681, 28.178198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721348, 44.831276, 27.798803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332752, -0.918696, 0.212777,
		-0.930100, -0.282518, 0.234728,
		-0.155530, -0.276010, -0.948488,
		34.674690, 44.748474, 27.514257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312683, 44.424717, 28.184404>,  <34.783558, 44.941681, 28.178198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312683, 44.424717, 28.184404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545639, 44.363876, 27.864983>,  <34.685413, 44.327370, 27.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545639, 44.363876, 27.864983>,  <34.312683, 44.424717, 28.184404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545639, 44.363876, 27.864983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020531, -0.979273, 0.201500,
		-0.812653, -0.133745, -0.567192,
		0.582386, -0.152105, -0.798556,
		34.720356, 44.318245, 27.625416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018665, 43.986198, 27.749596>,  <34.312683, 44.424717, 28.184404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018665, 43.986198, 27.749596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411808, 43.918793, 27.719669>,  <34.647694, 43.878349, 27.701714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411808, 43.918793, 27.719669>,  <34.018665, 43.986198, 27.749596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411808, 43.918793, 27.719669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165027, -0.984992, 0.050571,
		-0.082216, -0.037357, -0.995914,
		0.982856, -0.168510, -0.074817,
		34.706665, 43.868240, 27.697224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076294, 43.498768, 27.241920>,  <34.018665, 43.986198, 27.749596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076294, 43.498768, 27.241920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377876, 43.488312, 27.504482>,  <34.558826, 43.482040, 27.662020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377876, 43.488312, 27.504482>,  <34.076294, 43.498768, 27.241920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377876, 43.488312, 27.504482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020253, -0.997808, -0.062994,
		0.656612, 0.060789, -0.751775,
		0.753957, -0.026137, 0.656404,
		34.604065, 43.480473, 27.701403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622559, 43.103500, 27.015976>,  <34.076294, 43.498768, 27.241920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622559, 43.103500, 27.015976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620319, 43.106281, 27.415960>,  <34.618977, 43.107948, 27.655951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620319, 43.106281, 27.415960>,  <34.622559, 43.103500, 27.015976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620319, 43.106281, 27.415960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004443, -0.999966, 0.006974,
		0.999974, 0.004482, 0.005565,
		-0.005596, 0.006949, 0.999960,
		34.618641, 43.108364, 27.715948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333599, 42.409435, 27.296854>,  <34.622559, 43.103500, 27.015976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333599, 42.409435, 27.296854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541565, 42.111061, 27.463352>,  <34.666344, 41.932037, 27.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541565, 42.111061, 27.463352>,  <34.333599, 42.409435, 27.296854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541565, 42.111061, 27.463352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350104, 0.258393, 0.900367,
		-0.779174, -0.613846, -0.126813,
		0.519919, -0.745940, 0.416243,
		34.697540, 41.887280, 27.588224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207077, 42.343700, 28.095633>,  <34.333599, 42.409435, 27.296854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207077, 42.343700, 28.095633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523445, 42.267036, 28.328085>,  <34.713264, 42.221039, 28.467556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523445, 42.267036, 28.328085>,  <34.207077, 42.343700, 28.095633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523445, 42.267036, 28.328085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539449, -0.666689, 0.514315,
		0.288862, -0.720273, -0.630687,
		0.790919, -0.191657, 0.581132,
		34.760719, 42.209538, 28.502424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223309, 41.567173, 28.091333>,  <34.207077, 42.343700, 28.095633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223309, 41.567173, 28.091333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344612, 41.709557, 28.444904>,  <34.417393, 41.794987, 28.657047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344612, 41.709557, 28.444904>,  <34.223309, 41.567173, 28.091333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344612, 41.709557, 28.444904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696292, -0.550500, 0.460572,
		0.650549, -0.755142, 0.080912,
		0.303255, 0.355963, 0.883927,
		34.435589, 41.816345, 28.710083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231552, 40.961044, 28.556595>,  <34.223309, 41.567173, 28.091333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231552, 40.961044, 28.556595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176369, 41.291939, 28.774454>,  <34.143257, 41.490475, 28.905170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176369, 41.291939, 28.774454>,  <34.231552, 40.961044, 28.556595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176369, 41.291939, 28.774454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709555, -0.466211, 0.528374,
		0.691013, -0.313565, 0.651290,
		-0.137959, 0.827239, 0.544650,
		34.134979, 41.540112, 28.937849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444729, 40.922852, 29.236431>,  <34.231552, 40.961044, 28.556595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444729, 40.922852, 29.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152409, 41.195152, 29.216408>,  <33.977016, 41.358532, 29.204393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152409, 41.195152, 29.216408>,  <34.444729, 40.922852, 29.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152409, 41.195152, 29.216408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461517, -0.438753, 0.771037,
		0.502919, 0.586580, 0.634820,
		-0.730804, 0.680749, -0.050059,
		33.933167, 41.399376, 29.201389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271523, 41.229557, 29.956526>,  <34.444729, 40.922852, 29.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271523, 41.229557, 29.956526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953346, 41.238384, 29.714273>,  <33.762440, 41.243679, 29.568922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953346, 41.238384, 29.714273>,  <34.271523, 41.229557, 29.956526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953346, 41.238384, 29.714273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445162, -0.699376, 0.559200,
		-0.411222, 0.714413, 0.566135,
		-0.795442, 0.022066, -0.605628,
		33.714714, 41.245003, 29.532585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567535, 41.339241, 30.285807>,  <34.271523, 41.229557, 29.956526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567535, 41.339241, 30.285807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500832, 41.121197, 29.957161>,  <33.460808, 40.990372, 29.759974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500832, 41.121197, 29.957161>,  <33.567535, 41.339241, 30.285807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500832, 41.121197, 29.957161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617205, -0.592124, 0.518120,
		-0.768928, 0.593505, -0.237701,
		-0.166759, -0.545106, -0.821615,
		33.450806, 40.957664, 29.710676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841801, 41.381298, 30.008465>,  <33.567535, 41.339241, 30.285807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841801, 41.381298, 30.008465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979374, 41.018028, 29.913017>,  <33.061916, 40.800068, 29.855749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979374, 41.018028, 29.913017>,  <32.841801, 41.381298, 30.008465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979374, 41.018028, 29.913017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750809, -0.418586, 0.510951,
		-0.563913, 0.003425, -0.825827,
		0.343930, -0.908171, -0.238617,
		33.082554, 40.745579, 29.841433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330193, 41.100140, 30.374266>,  <32.841801, 41.381298, 30.008465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330193, 41.100140, 30.374266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555340, 40.780376, 30.290239>,  <32.690430, 40.588520, 30.239824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555340, 40.780376, 30.290239>,  <32.330193, 41.100140, 30.374266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555340, 40.780376, 30.290239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477736, -0.522046, 0.706566,
		-0.674497, -0.297349, -0.675749,
		0.562868, -0.799408, -0.210064,
		32.724201, 40.540554, 30.227221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861506, 40.479332, 30.243309>,  <32.330193, 41.100140, 30.374266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861506, 40.479332, 30.243309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227341, 40.344254, 30.332289>,  <32.446842, 40.263206, 30.385677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227341, 40.344254, 30.332289>,  <31.861506, 40.479332, 30.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227341, 40.344254, 30.332289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378591, -0.521744, 0.764495,
		-0.142106, -0.783417, -0.605031,
		0.914590, -0.337699, 0.222451,
		32.501717, 40.242943, 30.399023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875544, 39.756439, 30.290741>,  <31.861506, 40.479332, 30.243309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875544, 39.756439, 30.290741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157665, 39.918007, 30.523773>,  <32.326939, 40.014946, 30.663591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157665, 39.918007, 30.523773>,  <31.875544, 39.756439, 30.290741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157665, 39.918007, 30.523773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361134, -0.502452, 0.785572,
		0.610023, -0.764457, -0.208514,
		0.705305, 0.403915, 0.582579,
		32.369255, 40.039181, 30.698547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045616, 39.205818, 30.760180>,  <31.875544, 39.756439, 30.290741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045616, 39.205818, 30.760180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143898, 39.557297, 30.923899>,  <32.202866, 39.768185, 31.022131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143898, 39.557297, 30.923899>,  <32.045616, 39.205818, 30.760180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143898, 39.557297, 30.923899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089025, -0.400003, 0.912180,
		0.965249, -0.260561, -0.020055,
		0.245701, 0.878695, 0.409299,
		32.217609, 39.820904, 31.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591217, 39.074326, 31.278502>,  <32.045616, 39.205818, 30.760180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591217, 39.074326, 31.278502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344051, 39.374428, 31.372564>,  <32.195751, 39.554489, 31.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344051, 39.374428, 31.372564>,  <32.591217, 39.074326, 31.278502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344051, 39.374428, 31.372564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061582, -0.344350, 0.936819,
		0.783829, 0.564394, 0.258982,
		-0.617916, 0.750255, 0.235155,
		32.158676, 39.599503, 31.443111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813183, 39.159065, 30.638769>,  <32.591217, 39.074326, 31.278502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813183, 39.159065, 30.638769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788685, 39.477730, 30.879293>,  <32.773987, 39.668930, 31.023607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788685, 39.477730, 30.879293>,  <32.813183, 39.159065, 30.638769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788685, 39.477730, 30.879293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206067, -0.599554, 0.773351,
		0.976620, -0.076548, 0.200884,
		-0.061242, 0.796665, 0.601310,
		32.770313, 39.716728, 31.059687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319012, 39.074745, 31.175705>,  <32.813183, 39.159065, 30.638769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319012, 39.074745, 31.175705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045044, 39.326511, 31.322523>,  <32.880665, 39.477570, 31.410614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045044, 39.326511, 31.322523>,  <33.319012, 39.074745, 31.175705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045044, 39.326511, 31.322523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133816, -0.603848, 0.785787,
		0.716225, 0.489084, 0.497813,
		-0.684919, 0.629416, 0.367043,
		32.839569, 39.515335, 31.432636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628239, 39.383259, 31.798370>,  <33.319012, 39.074745, 31.175705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628239, 39.383259, 31.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232510, 39.423485, 31.840557>,  <32.995071, 39.447620, 31.865870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232510, 39.423485, 31.840557>,  <33.628239, 39.383259, 31.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232510, 39.423485, 31.840557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024854, -0.596687, 0.802089,
		0.143589, 0.796149, 0.587818,
		-0.989325, 0.100561, 0.105465,
		32.935711, 39.453651, 31.872196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484215, 39.493874, 32.515709>,  <33.628239, 39.383259, 31.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484215, 39.493874, 32.515709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159519, 39.346970, 32.334068>,  <32.964703, 39.258827, 32.225086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159519, 39.346970, 32.334068>,  <33.484215, 39.493874, 32.515709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159519, 39.346970, 32.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014591, -0.790041, 0.612880,
		-0.583844, 0.490870, 0.646663,
		-0.811735, -0.367262, -0.454098,
		32.916000, 39.236790, 32.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143650, 39.263737, 32.772392>,  <33.484215, 39.493874, 32.515709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143650, 39.263737, 32.772392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243496, 38.960808, 33.013775>,  <34.303402, 38.779053, 33.158604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243496, 38.960808, 33.013775>,  <34.143650, 39.263737, 32.772392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243496, 38.960808, 33.013775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505587, 0.633425, 0.585794,
		-0.825878, 0.158878, 0.541003,
		0.249615, -0.757318, 0.603458,
		34.318382, 38.733612, 33.194813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102551, 39.556271, 33.456638>,  <34.143650, 39.263737, 32.772392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102551, 39.556271, 33.456638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282337, 39.203575, 33.513927>,  <34.390209, 38.991959, 33.548302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282337, 39.203575, 33.513927>,  <34.102551, 39.556271, 33.456638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282337, 39.203575, 33.513927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484299, 0.375247, 0.790344,
		-0.750620, -0.285875, 0.595688,
		0.449470, -0.881740, 0.143219,
		34.417179, 38.939053, 33.556892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452950, 39.724808, 34.075611>,  <34.102551, 39.556271, 33.456638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452950, 39.724808, 34.075611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558270, 39.349823, 33.984535>,  <34.621460, 39.124832, 33.929890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558270, 39.349823, 33.984535>,  <34.452950, 39.724808, 34.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558270, 39.349823, 33.984535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669343, 0.007559, 0.742915,
		-0.694732, -0.348009, 0.629473,
		0.263299, -0.937461, -0.227686,
		34.637260, 39.068584, 33.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373470, 39.234371, 34.626793>,  <34.452950, 39.724808, 34.075611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373470, 39.234371, 34.626793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673130, 39.113804, 34.390850>,  <34.852924, 39.041466, 34.249283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673130, 39.113804, 34.390850>,  <34.373470, 39.234371, 34.626793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673130, 39.113804, 34.390850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644074, 0.123412, 0.754943,
		-0.154755, -0.945473, 0.286587,
		0.749146, -0.301414, -0.589856,
		34.897873, 39.023380, 34.213894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867947, 38.846848, 34.976440>,  <34.373470, 39.234371, 34.626793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867947, 38.846848, 34.976440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056641, 39.058510, 34.694317>,  <35.169857, 39.185505, 34.525043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056641, 39.058510, 34.694317>,  <34.867947, 38.846848, 34.976440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056641, 39.058510, 34.694317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673029, 0.300692, 0.675733,
		0.569647, -0.793462, -0.214287,
		0.471734, 0.529151, -0.705312,
		35.198162, 39.217255, 34.482723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550159, 38.584488, 35.072304>,  <34.867947, 38.846848, 34.976440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550159, 38.584488, 35.072304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513840, 38.948494, 34.910500>,  <35.492046, 39.166897, 34.813416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513840, 38.948494, 34.910500>,  <35.550159, 38.584488, 35.072304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513840, 38.948494, 34.910500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684596, 0.352032, 0.638280,
		0.723245, -0.218972, -0.654957,
		-0.090801, 0.910013, -0.404513,
		35.486599, 39.221497, 34.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226284, 38.871544, 34.788937>,  <35.550159, 38.584488, 35.072304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226284, 38.871544, 34.788937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976254, 39.159027, 34.910748>,  <35.826233, 39.331516, 34.983833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976254, 39.159027, 34.910748>,  <36.226284, 38.871544, 34.788937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976254, 39.159027, 34.910748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764889, 0.486203, 0.422554,
		0.155629, 0.497061, -0.853645,
		-0.625079, 0.718706, 0.304529,
		35.788731, 39.374638, 35.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449127, 39.454941, 34.562305>,  <36.226284, 38.871544, 34.788937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449127, 39.454941, 34.562305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256771, 39.558613, 34.897346>,  <36.141357, 39.620819, 35.098370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256771, 39.558613, 34.897346>,  <36.449127, 39.454941, 34.562305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256771, 39.558613, 34.897346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840443, 0.408443, 0.356132,
		-0.249807, 0.875213, -0.414245,
		-0.480887, 0.259185, 0.837599,
		36.112507, 39.636368, 35.148624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381271, 40.205158, 34.676266>,  <36.449127, 39.454941, 34.562305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381271, 40.205158, 34.676266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436024, 39.946114, 34.976097>,  <36.468876, 39.790688, 35.155994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436024, 39.946114, 34.976097>,  <36.381271, 40.205158, 34.676266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436024, 39.946114, 34.976097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907250, 0.385753, 0.167606,
		-0.397695, 0.657115, 0.640343,
		0.136877, -0.647607, 0.749579,
		36.477085, 39.751831, 35.200970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547081, 40.622570, 35.183868>,  <36.381271, 40.205158, 34.676266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547081, 40.622570, 35.183868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718113, 40.262104, 35.212391>,  <36.820732, 40.045826, 35.229504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718113, 40.262104, 35.212391>,  <36.547081, 40.622570, 35.183868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718113, 40.262104, 35.212391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902926, 0.421949, -0.081753,
		0.043584, 0.099341, 0.994098,
		0.427580, -0.901160, 0.071307,
		36.846386, 39.991756, 35.233784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121891, 40.348122, 34.836811>,  <36.547081, 40.622570, 35.183868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121891, 40.348122, 34.836811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965904, 40.586845, 34.556313>,  <36.872311, 40.730080, 34.388012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965904, 40.586845, 34.556313>,  <37.121891, 40.348122, 34.836811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965904, 40.586845, 34.556313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059958, 0.776380, 0.627406,
		0.918873, 0.202624, -0.338548,
		-0.389970, 0.596806, -0.701246,
		36.848915, 40.765888, 34.345940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724934, 40.231529, 35.186615>,  <37.121891, 40.348122, 34.836811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724934, 40.231529, 35.186615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103794, 40.196178, 35.309963>,  <38.331112, 40.174969, 35.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103794, 40.196178, 35.309963>,  <37.724934, 40.231529, 35.186615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103794, 40.196178, 35.309963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163308, 0.694575, 0.700639,
		-0.276108, -0.713971, 0.643436,
		0.947151, -0.088374, 0.308374,
		38.387939, 40.169666, 35.402477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978981, 39.611423, 35.445065>,  <37.724934, 40.231529, 35.186615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978981, 39.611423, 35.445065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931385, 39.334900, 35.159988>,  <37.902828, 39.168983, 34.988941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931385, 39.334900, 35.159988>,  <37.978981, 39.611423, 35.445065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931385, 39.334900, 35.159988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988409, -0.150636, -0.018908,
		-0.094285, -0.706679, 0.701224,
		-0.118991, -0.691313, -0.712690,
		37.895687, 39.127506, 34.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034660, 38.844494, 35.484295>,  <37.978981, 39.611423, 35.445065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034660, 38.844494, 35.484295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191479, 39.006371, 35.153835>,  <38.285568, 39.103497, 34.955559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191479, 39.006371, 35.153835>,  <38.034660, 38.844494, 35.484295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191479, 39.006371, 35.153835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917507, -0.237368, 0.319121,
		-0.066955, -0.883108, -0.464367,
		0.392044, 0.404693, -0.826151,
		38.309093, 39.127777, 34.905991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545246, 38.339741, 35.189240>,  <38.034660, 38.844494, 35.484295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545246, 38.339741, 35.189240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 38.724415, 35.101410>,  <38.650295, 38.955219, 35.048714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 38.724415, 35.101410>,  <38.545246, 38.339741, 35.189240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610901, 38.724415, 35.101410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943515, -0.088114, 0.319398,
		0.287814, -0.259597, -0.921831,
		0.164141, 0.961689, -0.219574,
		38.660145, 39.012920, 35.035538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085091, 38.427921, 34.673008>,  <38.545246, 38.339741, 35.189240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085091, 38.427921, 34.673008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090485, 38.749073, 34.911404>,  <39.093719, 38.941765, 35.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090485, 38.749073, 34.911404>,  <39.085091, 38.427921, 34.673008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090485, 38.749073, 34.911404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928902, -0.230663, 0.289715,
		0.370079, 0.549713, -0.748904,
		0.013484, 0.802876, 0.595994,
		39.094528, 38.989937, 35.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607082, 38.896263, 34.483021>,  <39.085091, 38.427921, 34.673008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607082, 38.896263, 34.483021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518761, 38.933094, 34.871407>,  <39.465767, 38.955193, 35.104439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518761, 38.933094, 34.871407>,  <39.607082, 38.896263, 34.483021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518761, 38.933094, 34.871407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964055, -0.130259, 0.231583,
		0.147799, 0.987196, -0.060002,
		-0.220802, 0.092073, 0.970963,
		39.452518, 38.960716, 35.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918457, 39.543026, 34.777233>,  <39.607082, 38.896263, 34.483021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918457, 39.543026, 34.777233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865501, 39.249355, 35.043606>,  <39.833729, 39.073154, 35.203430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865501, 39.249355, 35.043606>,  <39.918457, 39.543026, 34.777233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865501, 39.249355, 35.043606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980517, -0.195364, -0.020460,
		0.145120, 0.650247, 0.745734,
		-0.132385, -0.734174, 0.665930,
		39.825787, 39.029102, 35.243385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553089, 39.540894, 35.264542>,  <39.918457, 39.543026, 34.777233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553089, 39.540894, 35.264542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353012, 39.203400, 35.342434>,  <40.232967, 39.000904, 35.389172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353012, 39.203400, 35.342434>,  <40.553089, 39.540894, 35.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353012, 39.203400, 35.342434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860727, -0.459872, 0.218326,
		-0.094658, 0.276816, 0.956249,
		-0.500189, -0.843736, 0.194732,
		40.202957, 38.950279, 35.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683491, 39.339264, 35.909229>,  <40.553089, 39.540894, 35.264542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683491, 39.339264, 35.909229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637569, 38.993839, 35.712830>,  <40.610016, 38.786583, 35.594990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637569, 38.993839, 35.712830>,  <40.683491, 39.339264, 35.909229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637569, 38.993839, 35.712830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859817, -0.333928, 0.386272,
		-0.497528, -0.377821, 0.780844,
		-0.114805, -0.863564, -0.490996,
		40.603127, 38.734772, 35.565533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682251, 39.304226, 36.692841>,  <40.683491, 39.339264, 35.909229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682251, 39.304226, 36.692841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051052, 39.447529, 36.751568>,  <41.272335, 39.533512, 36.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051052, 39.447529, 36.751568>,  <40.682251, 39.304226, 36.692841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051052, 39.447529, 36.751568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384242, 0.800092, 0.460663,
		0.047572, -0.481146, 0.875349,
		0.922006, 0.358260, 0.146815,
		41.327652, 39.555008, 36.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365479, 38.844688, 37.234035>,  <40.682251, 39.304226, 36.692841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365479, 38.844688, 37.234035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757465, 38.924294, 37.231087>,  <40.992657, 38.972057, 37.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757465, 38.924294, 37.231087>,  <40.365479, 38.844688, 37.234035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757465, 38.924294, 37.231087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124344, -0.582526, 0.803245,
		0.155560, -0.788072, -0.595603,
		0.979969, 0.199012, -0.007374,
		41.051456, 38.983997, 37.228874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813084, 38.240536, 37.269161>,  <40.365479, 38.844688, 37.234035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813084, 38.240536, 37.269161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970623, 38.560596, 37.450111>,  <41.065147, 38.752632, 37.558681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970623, 38.560596, 37.450111>,  <40.813084, 38.240536, 37.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970623, 38.560596, 37.450111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166188, -0.546026, 0.821119,
		0.904026, -0.248219, -0.348028,
		0.393850, 0.800151, 0.452371,
		41.088779, 38.800640, 37.585823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437531, 37.989750, 36.969059>,  <40.813084, 38.240536, 37.269161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437531, 37.989750, 36.969059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362148, 38.348164, 36.808262>,  <41.316917, 38.563213, 36.711784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362148, 38.348164, 36.808262>,  <41.437531, 37.989750, 36.969059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362148, 38.348164, 36.808262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729473, -0.146339, -0.668172,
		-0.657535, -0.419165, -0.626058,
		-0.188457, 0.896039, -0.401993,
		41.305611, 38.616974, 36.687664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291344, 37.894024, 36.157963>,  <41.437531, 37.989750, 36.969059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291344, 37.894024, 36.157963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403053, 38.257931, 36.280819>,  <41.470078, 38.476273, 36.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403053, 38.257931, 36.280819>,  <41.291344, 37.894024, 36.157963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403053, 38.257931, 36.280819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668880, 0.045175, -0.741996,
		-0.688916, 0.412661, -0.595907,
		0.279273, 0.909764, 0.307143,
		41.486835, 38.530861, 36.372963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423618, 37.284409, 35.923378>,  <41.291344, 37.894024, 36.157963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423618, 37.284409, 35.923378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360905, 37.236046, 36.315460>,  <41.323277, 37.207027, 36.550709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360905, 37.236046, 36.315460>,  <41.423618, 37.284409, 35.923378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360905, 37.236046, 36.315460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202172, -0.975391, -0.087975,
		0.966718, 0.184376, 0.177373,
		-0.156788, -0.120907, 0.980204,
		41.313869, 37.199772, 36.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955235, 36.955650, 36.373028>,  <41.423618, 37.284409, 35.923378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955235, 36.955650, 36.373028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584415, 36.860062, 36.488598>,  <41.361923, 36.802708, 36.557941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584415, 36.860062, 36.488598>,  <41.955235, 36.955650, 36.373028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584415, 36.860062, 36.488598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186112, -0.962226, -0.198706,
		0.325500, -0.130436, 0.936502,
		-0.927045, -0.238973, 0.288928,
		41.306301, 36.788368, 36.575275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432350, 36.376968, 36.424156>,  <41.955235, 36.955650, 36.373028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432350, 36.376968, 36.424156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681168, 36.148682, 36.209736>,  <42.830456, 36.011711, 36.081085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681168, 36.148682, 36.209736>,  <42.432350, 36.376968, 36.424156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681168, 36.148682, 36.209736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400499, -0.356368, 0.844158,
		-0.672804, -0.739788, 0.006895,
		0.622041, -0.570714, -0.536051,
		42.867779, 35.977467, 36.048920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494255, 35.589066, 36.352257>,  <42.432350, 36.376968, 36.424156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494255, 35.589066, 36.352257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877159, 35.703716, 36.336754>,  <43.106899, 35.772507, 36.327454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877159, 35.703716, 36.336754>,  <42.494255, 35.589066, 36.352257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877159, 35.703716, 36.336754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128603, -0.301769, 0.944668,
		0.259075, -0.909274, -0.325732,
		0.957258, 0.286629, -0.038754,
		43.164337, 35.789703, 36.325127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733875, 35.541134, 37.062637>,  <42.494255, 35.589066, 36.352257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733875, 35.541134, 37.062637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080723, 35.696404, 36.937786>,  <43.288834, 35.789566, 36.862877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080723, 35.696404, 36.937786>,  <42.733875, 35.541134, 37.062637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080723, 35.696404, 36.937786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355765, -0.044086, 0.933535,
		0.348614, -0.920531, -0.176327,
		0.867121, 0.388175, -0.312123,
		43.340858, 35.812855, 36.844151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363846, 35.034565, 37.085007>,  <42.733875, 35.541134, 37.062637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363846, 35.034565, 37.085007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415962, 35.423561, 37.162243>,  <43.447231, 35.656960, 37.208584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415962, 35.423561, 37.162243>,  <43.363846, 35.034565, 37.085007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415962, 35.423561, 37.162243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351935, -0.227430, 0.907974,
		0.926911, -0.050350, -0.371887,
		0.130294, 0.972492, 0.193087,
		43.455051, 35.715309, 37.220169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085751, 35.345589, 37.075764>,  <43.363846, 35.034565, 37.085007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085751, 35.345589, 37.075764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807262, 35.434898, 37.348652>,  <43.640171, 35.488483, 37.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807262, 35.434898, 37.348652>,  <44.085751, 35.345589, 37.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807262, 35.434898, 37.348652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541150, -0.461181, 0.703185,
		0.471629, 0.858756, 0.200260,
		-0.696220, 0.223272, 0.682222,
		43.598396, 35.501881, 37.553318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446144, 35.089508, 37.723244>,  <44.085751, 35.345589, 37.075764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446144, 35.089508, 37.723244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097801, 35.182922, 37.896248>,  <43.888794, 35.238972, 38.000050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097801, 35.182922, 37.896248>,  <44.446144, 35.089508, 37.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097801, 35.182922, 37.896248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410035, -0.140089, 0.901247,
		0.271064, 0.962204, 0.026240,
		-0.870859, 0.233536, 0.432510,
		43.836544, 35.252983, 38.026001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670425, 34.840401, 38.470383>,  <44.446144, 35.089508, 37.723244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670425, 34.840401, 38.470383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065151, 34.783211, 38.500717>,  <45.301987, 34.748898, 38.518917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065151, 34.783211, 38.500717>,  <44.670425, 34.840401, 38.470383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065151, 34.783211, 38.500717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138315, 0.501722, -0.853899,
		0.084039, 0.853131, 0.514884,
		0.986816, -0.142977, 0.075837,
		45.361195, 34.740318, 38.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028988, 35.465073, 38.363911>,  <44.670425, 34.840401, 38.470383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028988, 35.465073, 38.363911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223942, 35.140827, 38.234070>,  <45.340912, 34.946281, 38.156166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223942, 35.140827, 38.234070>,  <45.028988, 35.465073, 38.363911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223942, 35.140827, 38.234070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098113, 0.420227, -0.902099,
		0.867660, 0.407819, 0.284343,
		0.487381, -0.810613, -0.324602,
		45.370155, 34.897644, 38.136688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647732, 35.614830, 37.996971>,  <45.028988, 35.465073, 38.363911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647732, 35.614830, 37.996971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569881, 35.252144, 37.847313>,  <45.523170, 35.034531, 37.757519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569881, 35.252144, 37.847313>,  <45.647732, 35.614830, 37.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569881, 35.252144, 37.847313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246020, 0.324119, -0.913467,
		0.949523, -0.269835, 0.159987,
		-0.194630, -0.906717, -0.374143,
		45.511494, 34.980129, 37.735069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198593, 35.407490, 37.478653>,  <45.647732, 35.614830, 37.996971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198593, 35.407490, 37.478653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837738, 35.258705, 37.391212>,  <45.621223, 35.169434, 37.338749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837738, 35.258705, 37.391212>,  <46.198593, 35.407490, 37.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837738, 35.258705, 37.391212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013835, 0.481464, -0.876356,
		0.431217, -0.793622, -0.429203,
		-0.902142, -0.371962, -0.218596,
		45.567097, 35.147118, 37.325634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031006, 35.940498, 36.976566>,  <46.198593, 35.407490, 37.478653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031006, 35.940498, 36.976566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173283, 36.311256, 36.928661>,  <46.258648, 36.533710, 36.899918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173283, 36.311256, 36.928661>,  <46.031006, 35.940498, 36.976566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173283, 36.311256, 36.928661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254042, 0.027429, 0.966804,
		0.899414, -0.374308, -0.225716,
		0.355691, 0.926899, -0.119760,
		46.279991, 36.589325, 36.892735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685692, 36.178894, 36.642796>,  <46.031006, 35.940498, 36.976566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685692, 36.178894, 36.642796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777630, 35.856480, 36.424629>,  <46.832790, 35.663033, 36.293728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777630, 35.856480, 36.424629>,  <46.685692, 36.178894, 36.642796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777630, 35.856480, 36.424629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412159, 0.588301, -0.695719,
		0.881644, -0.064894, 0.467431,
		0.229842, -0.806033, -0.545420,
		46.846584, 35.614670, 36.261002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324898, 36.339966, 36.478123>,  <46.685692, 36.178894, 36.642796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324898, 36.339966, 36.478123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202274, 36.073746, 36.205925>,  <47.128700, 35.914013, 36.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202274, 36.073746, 36.205925>,  <47.324898, 36.339966, 36.478123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202274, 36.073746, 36.205925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435359, 0.537712, -0.722031,
		0.846454, -0.517602, 0.124912,
		-0.306558, -0.665548, -0.680491,
		47.110306, 35.874081, 36.001778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.905354, 35.990150, 36.091774>,  <47.324898, 36.339966, 36.478123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.905354, 35.990150, 36.091774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587959, 36.030937, 35.851780>,  <47.397522, 36.055408, 35.707783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587959, 36.030937, 35.851780>,  <47.905354, 35.990150, 36.091774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587959, 36.030937, 35.851780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586123, 0.393405, -0.708302,
		0.163812, -0.913693, -0.371928,
		-0.793489, 0.101967, -0.599981,
		47.349911, 36.061527, 35.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019283, 35.706600, 35.422951>,  <47.905354, 35.990150, 36.091774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019283, 35.706600, 35.422951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778782, 36.025860, 35.407673>,  <47.634480, 36.217415, 35.398506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778782, 36.025860, 35.407673>,  <48.019283, 35.706600, 35.422951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778782, 36.025860, 35.407673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645602, 0.457060, -0.611796,
		-0.470843, -0.392505, -0.790092,
		-0.601253, 0.798145, -0.038198,
		47.598408, 36.265305, 35.396214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658794, 35.379570, 34.795723>,  <48.019283, 35.706600, 35.422951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658794, 35.379570, 34.795723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712334, 34.983292, 34.805645>,  <47.744457, 34.745525, 34.811600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712334, 34.983292, 34.805645>,  <47.658794, 35.379570, 34.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712334, 34.983292, 34.805645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844307, 0.127100, 0.520568,
		-0.518875, -0.048733, 0.853460,
		0.133843, -0.990692, 0.024804,
		47.752487, 34.686085, 34.813087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.787048, 37.252312, 19.765343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494556, 37.039375, 19.935951>,  <35.319061, 36.911613, 20.038317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494556, 37.039375, 19.935951>,  <35.787048, 37.252312, 19.765343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494556, 37.039375, 19.935951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215766, 0.412667, 0.884958,
		-0.647109, 0.739135, -0.186893,
		-0.731228, -0.532339, 0.426521,
		35.275188, 36.879673, 20.063908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337399, 37.699776, 20.170855>,  <35.787048, 37.252312, 19.765343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337399, 37.699776, 20.170855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300480, 37.329048, 20.316448>,  <35.278328, 37.106609, 20.403805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300480, 37.329048, 20.316448>,  <35.337399, 37.699776, 20.170855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300480, 37.329048, 20.316448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152684, 0.348047, 0.924960,
		-0.983956, 0.140942, 0.109388,
		-0.092293, -0.926822, 0.363983,
		35.272793, 37.051003, 20.425644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013241, 37.763142, 20.895884>,  <35.337399, 37.699776, 20.170855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013241, 37.763142, 20.895884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163906, 37.392624, 20.891838>,  <35.254303, 37.170311, 20.889410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163906, 37.392624, 20.891838>,  <35.013241, 37.763142, 20.895884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163906, 37.392624, 20.891838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377625, 0.143566, 0.914761,
		-0.845888, -0.348375, 0.403868,
		0.376661, -0.926296, -0.010114,
		35.276905, 37.114735, 20.888803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678154, 37.488358, 21.437040>,  <35.013241, 37.763142, 20.895884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678154, 37.488358, 21.437040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983105, 37.240742, 21.361588>,  <35.166073, 37.092175, 21.316315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983105, 37.240742, 21.361588>,  <34.678154, 37.488358, 21.437040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983105, 37.240742, 21.361588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429188, 0.265497, 0.863313,
		-0.484340, -0.739125, 0.468090,
		0.762373, -0.619036, -0.188633,
		35.211815, 37.055031, 21.304998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720055, 37.076736, 21.921705>,  <34.678154, 37.488358, 21.437040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720055, 37.076736, 21.921705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095562, 37.064568, 21.784428>,  <35.320866, 37.057266, 21.702061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095562, 37.064568, 21.784428>,  <34.720055, 37.076736, 21.921705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095562, 37.064568, 21.784428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343467, 0.161209, 0.925225,
		0.027180, -0.986451, 0.161787,
		0.938771, -0.030421, -0.343196,
		35.377193, 37.055443, 21.681469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081429, 36.700497, 22.427704>,  <34.720055, 37.076736, 21.921705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081429, 36.700497, 22.427704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350571, 36.904202, 22.213074>,  <35.512058, 37.026424, 22.084295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350571, 36.904202, 22.213074>,  <35.081429, 36.700497, 22.427704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350571, 36.904202, 22.213074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547226, 0.145440, 0.824251,
		0.497802, -0.848231, -0.180822,
		0.672857, 0.509265, -0.536575,
		35.552429, 37.056980, 22.052101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690857, 36.461288, 22.702930>,  <35.081429, 36.700497, 22.427704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690857, 36.461288, 22.702930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775925, 36.808495, 22.523453>,  <35.826965, 37.016819, 22.415766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775925, 36.808495, 22.523453>,  <35.690857, 36.461288, 22.702930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775925, 36.808495, 22.523453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485342, 0.304709, 0.819509,
		0.848065, -0.392058, -0.356479,
		0.212673, 0.868011, -0.448695,
		35.839725, 37.068897, 22.388844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284126, 36.613415, 23.028711>,  <35.690857, 36.461288, 22.702930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284126, 36.613415, 23.028711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187263, 36.956722, 22.847719>,  <36.129147, 37.162704, 22.739124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187263, 36.956722, 22.847719>,  <36.284126, 36.613415, 23.028711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187263, 36.956722, 22.847719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418215, 0.513147, 0.749517,
		0.875475, -0.007734, -0.483201,
		-0.242156, 0.858266, -0.452482,
		36.114616, 37.214203, 22.711975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867462, 36.999653, 22.984512>,  <36.284126, 36.613415, 23.028711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867462, 36.999653, 22.984512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548206, 37.239971, 23.002436>,  <36.356651, 37.384163, 23.013189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548206, 37.239971, 23.002436>,  <36.867462, 36.999653, 22.984512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548206, 37.239971, 23.002436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390289, 0.458959, 0.798142,
		0.458959, 0.654519, -0.600800,
		-0.798142, 0.600800, 0.044808,
		36.308765, 37.420212, 23.015879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157745, 37.614521, 23.229168>,  <36.867462, 36.999653, 22.984512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157745, 37.614521, 23.229168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767921, 37.691845, 23.274530>,  <36.534027, 37.738239, 23.301748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767921, 37.691845, 23.274530>,  <37.157745, 37.614521, 23.229168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767921, 37.691845, 23.274530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212935, 0.640805, 0.737582,
		0.069911, 0.742967, -0.665667,
		-0.974562, 0.193309, 0.113405,
		36.475552, 37.749836, 23.308552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098267, 38.329048, 23.178871>,  <37.157745, 37.614521, 23.229168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098267, 38.329048, 23.178871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778152, 38.191212, 23.375158>,  <36.586082, 38.108509, 23.492929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778152, 38.191212, 23.375158>,  <37.098267, 38.329048, 23.178871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778152, 38.191212, 23.375158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118879, 0.710956, 0.693116,
		-0.587717, 0.613026, -0.528003,
		-0.800285, -0.344587, 0.490717,
		36.538067, 38.087837, 23.522373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631496, 38.966347, 23.370928>,  <37.098267, 38.329048, 23.178871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631496, 38.966347, 23.370928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524597, 38.669586, 23.616907>,  <36.460457, 38.491531, 23.764494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524597, 38.669586, 23.616907>,  <36.631496, 38.966347, 23.370928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524597, 38.669586, 23.616907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054348, 0.625537, 0.778299,
		-0.962094, 0.241421, -0.126853,
		-0.267248, -0.741903, 0.614946,
		36.444424, 38.447014, 23.801392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064072, 39.194439, 23.594425>,  <36.631496, 38.966347, 23.370928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064072, 39.194439, 23.594425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217819, 38.942631, 23.864527>,  <36.310066, 38.791546, 24.026588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217819, 38.942631, 23.864527>,  <36.064072, 39.194439, 23.594425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217819, 38.942631, 23.864527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006964, 0.729445, 0.684004,
		-0.923154, -0.267610, 0.275990,
		0.384366, -0.629519, 0.675254,
		36.333130, 38.753777, 24.067102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503803, 39.134663, 24.204271>,  <36.064072, 39.194439, 23.594425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503803, 39.134663, 24.204271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864521, 39.046165, 24.352768>,  <36.080952, 38.993069, 24.441866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864521, 39.046165, 24.352768>,  <35.503803, 39.134663, 24.204271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864521, 39.046165, 24.352768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211064, 0.524138, 0.825065,
		-0.377121, -0.822393, 0.425968,
		0.901794, -0.221243, 0.371241,
		36.135059, 38.979794, 24.464140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367588, 39.368908, 24.875624>,  <35.503803, 39.134663, 24.204271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367588, 39.368908, 24.875624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757572, 39.281265, 24.890837>,  <35.991562, 39.228680, 24.899965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757572, 39.281265, 24.890837>,  <35.367588, 39.368908, 24.875624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757572, 39.281265, 24.890837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096724, 0.571810, 0.814664,
		-0.200244, -0.790586, 0.578685,
		0.974960, -0.219104, 0.038032,
		36.050060, 39.215534, 24.902246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569511, 39.118217, 25.562809>,  <35.367588, 39.368908, 24.875624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569511, 39.118217, 25.562809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892445, 39.280445, 25.391352>,  <36.086205, 39.377781, 25.288477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892445, 39.280445, 25.391352>,  <35.569511, 39.118217, 25.562809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892445, 39.280445, 25.391352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101737, 0.619852, 0.778095,
		0.581263, -0.671789, 0.459165,
		0.807331, 0.405564, -0.428644,
		36.134644, 39.402115, 25.262758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935936, 39.287064, 26.164307>,  <35.569511, 39.118217, 25.562809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935936, 39.287064, 26.164307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151344, 39.469795, 25.881094>,  <36.280590, 39.579433, 25.711166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151344, 39.469795, 25.881094>,  <35.935936, 39.287064, 26.164307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151344, 39.469795, 25.881094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366755, 0.629432, 0.685059,
		0.758611, -0.628590, 0.171418,
		0.538517, 0.456825, -0.708033,
		36.312901, 39.606842, 25.668684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605900, 39.363338, 26.344946>,  <35.935936, 39.287064, 26.164307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605900, 39.363338, 26.344946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543446, 39.649139, 26.072151>,  <36.505974, 39.820621, 25.908474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543446, 39.649139, 26.072151>,  <36.605900, 39.363338, 26.344946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543446, 39.649139, 26.072151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481907, 0.657804, 0.578843,
		0.862200, -0.238278, -0.447029,
		-0.156131, 0.714505, -0.681987,
		36.496605, 39.863491, 25.867556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157539, 39.751102, 26.391640>,  <36.605900, 39.363338, 26.344946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157539, 39.751102, 26.391640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900036, 40.001308, 26.215319>,  <36.745533, 40.151432, 26.109526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900036, 40.001308, 26.215319>,  <37.157539, 39.751102, 26.391640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900036, 40.001308, 26.215319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466316, 0.777402, 0.422132,
		0.606729, 0.066198, -0.792147,
		-0.643761, 0.625511, -0.440803,
		36.706909, 40.188961, 26.083078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569565, 40.334717, 26.143360>,  <37.157539, 39.751102, 26.391640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569565, 40.334717, 26.143360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194477, 40.473679, 26.143776>,  <36.969425, 40.557056, 26.144026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194477, 40.473679, 26.143776>,  <37.569565, 40.334717, 26.143360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194477, 40.473679, 26.143776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284306, 0.765671, 0.576990,
		0.199651, 0.541348, -0.816751,
		-0.937715, 0.347404, 0.001042,
		36.913162, 40.577900, 26.144089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674015, 41.072868, 26.049135>,  <37.569565, 40.334717, 26.143360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674015, 41.072868, 26.049135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317112, 41.006374, 26.217058>,  <37.102970, 40.966480, 26.317812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317112, 41.006374, 26.217058>,  <37.674015, 41.072868, 26.049135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317112, 41.006374, 26.217058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199805, 0.688415, 0.697253,
		-0.404908, 0.706011, -0.581031,
		-0.892259, -0.166231, 0.419810,
		37.049435, 40.956505, 26.343000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333817, 41.691994, 26.193474>,  <37.674015, 41.072868, 26.049135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333817, 41.691994, 26.193474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183914, 41.423687, 26.449482>,  <37.093975, 41.262703, 26.603086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183914, 41.423687, 26.449482>,  <37.333817, 41.691994, 26.193474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183914, 41.423687, 26.449482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275762, 0.578442, 0.767698,
		-0.885164, 0.464191, -0.031801,
		-0.374754, -0.670769, 0.640022,
		37.071487, 41.222458, 26.641489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917591, 42.311695, 25.972534>,  <37.333817, 41.691994, 26.193474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917591, 42.311695, 25.972534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006233, 42.665359, 25.808022>,  <37.059418, 42.877560, 25.709314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006233, 42.665359, 25.808022>,  <36.917591, 42.311695, 25.972534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006233, 42.665359, 25.808022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132817, -0.390469, -0.910985,
		-0.966049, 0.256503, 0.030902,
		0.221604, 0.884161, -0.411280,
		37.072716, 42.930607, 25.684637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420631, 42.375576, 25.459198>,  <36.917591, 42.311695, 25.972534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420631, 42.375576, 25.459198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709530, 42.636734, 25.367912>,  <36.882870, 42.793430, 25.313141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709530, 42.636734, 25.367912>,  <36.420631, 42.375576, 25.459198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709530, 42.636734, 25.367912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125983, -0.200255, -0.971610,
		-0.680061, 0.730497, -0.062380,
		0.722250, 0.652895, -0.228216,
		36.926205, 42.832603, 25.299448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150684, 42.674595, 24.905319>,  <36.420631, 42.375576, 25.459198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150684, 42.674595, 24.905319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536263, 42.770016, 24.858149>,  <36.767609, 42.827267, 24.829845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536263, 42.770016, 24.858149>,  <36.150684, 42.674595, 24.905319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536263, 42.770016, 24.858149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099270, -0.088814, -0.991089,
		-0.246895, 0.967061, -0.061931,
		0.963944, 0.238547, -0.117928,
		36.825447, 42.841579, 24.822771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148445, 43.067497, 24.354858>,  <36.150684, 42.674595, 24.905319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148445, 43.067497, 24.354858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522572, 42.928440, 24.381144>,  <36.747047, 42.845005, 24.396915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522572, 42.928440, 24.381144>,  <36.148445, 43.067497, 24.354858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522572, 42.928440, 24.381144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015605, -0.145022, -0.989305,
		0.353457, 0.926343, -0.130217,
		0.935321, -0.347645, 0.065715,
		36.803169, 42.824146, 24.400858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654812, 43.472591, 23.826401>,  <36.148445, 43.067497, 24.354858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654812, 43.472591, 23.826401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830971, 43.121967, 23.904051>,  <36.936665, 42.911591, 23.950642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830971, 43.121967, 23.904051>,  <36.654812, 43.472591, 23.826401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830971, 43.121967, 23.904051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126611, -0.153424, -0.980016,
		0.888830, 0.456176, 0.043415,
		0.440399, -0.876564, 0.194125,
		36.963089, 42.858997, 23.962288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270111, 43.468639, 23.376390>,  <36.654812, 43.472591, 23.826401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270111, 43.468639, 23.376390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208481, 43.082924, 23.462557>,  <37.171501, 42.851494, 23.514257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208481, 43.082924, 23.462557>,  <37.270111, 43.468639, 23.376390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208481, 43.082924, 23.462557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280887, -0.251771, -0.926128,
		0.947292, -0.082186, 0.309649,
		-0.154075, -0.964291, 0.215416,
		37.162258, 42.793636, 23.527182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802986, 43.054310, 23.047930>,  <37.270111, 43.468639, 23.376390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802986, 43.054310, 23.047930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510429, 42.791626, 23.121471>,  <37.334896, 42.634014, 23.165596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510429, 42.791626, 23.121471>,  <37.802986, 43.054310, 23.047930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510429, 42.791626, 23.121471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252646, -0.511338, -0.821403,
		0.633435, -0.554315, 0.539902,
		-0.731389, -0.656710, 0.183854,
		37.291012, 42.594612, 23.176628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974602, 42.560387, 22.640856>,  <37.802986, 43.054310, 23.047930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974602, 42.560387, 22.640856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617111, 42.419796, 22.752371>,  <37.402618, 42.335442, 22.819281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617111, 42.419796, 22.752371>,  <37.974602, 42.560387, 22.640856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617111, 42.419796, 22.752371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138410, -0.375092, -0.916596,
		0.426736, -0.857770, 0.286580,
		-0.893722, -0.351479, 0.278789,
		37.348995, 42.314354, 22.836008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061981, 41.935684, 22.589159>,  <37.974602, 42.560387, 22.640856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061981, 41.935684, 22.589159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670471, 42.013496, 22.563353>,  <37.435566, 42.060184, 22.547869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670471, 42.013496, 22.563353>,  <38.061981, 41.935684, 22.589159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670471, 42.013496, 22.563353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046117, -0.515755, -0.855494,
		-0.199699, -0.834358, 0.513777,
		-0.978772, 0.194535, -0.064517,
		37.376839, 42.071857, 22.543997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706364, 41.281334, 22.493559>,  <38.061981, 41.935684, 22.589159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706364, 41.281334, 22.493559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443596, 41.557812, 22.373091>,  <37.285934, 41.723698, 22.300810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443596, 41.557812, 22.373091>,  <37.706364, 41.281334, 22.493559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443596, 41.557812, 22.373091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198050, -0.543618, -0.815632,
		-0.727485, -0.476156, 0.494004,
		-0.656918, 0.691198, -0.301172,
		37.246521, 41.765171, 22.282740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142292, 40.878071, 22.236633>,  <37.706364, 41.281334, 22.493559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142292, 40.878071, 22.236633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095615, 41.247910, 22.091581>,  <37.067612, 41.469814, 22.004551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095615, 41.247910, 22.091581>,  <37.142292, 40.878071, 22.236633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095615, 41.247910, 22.091581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349735, -0.379990, -0.856325,
		-0.929553, 0.026902, 0.367705,
		-0.116687, 0.924600, -0.362629,
		37.060608, 41.525288, 21.982792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466358, 40.824696, 21.977623>,  <37.142292, 40.878071, 22.236633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466358, 40.824696, 21.977623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644234, 41.126698, 21.784868>,  <36.750961, 41.307899, 21.669214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644234, 41.126698, 21.784868>,  <36.466358, 40.824696, 21.977623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644234, 41.126698, 21.784868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260491, -0.405740, -0.876082,
		-0.856967, 0.515115, 0.016243,
		0.444693, 0.755004, -0.481889,
		36.777641, 41.353199, 21.640301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959316, 41.197720, 21.437862>,  <36.466358, 40.824696, 21.977623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959316, 41.197720, 21.437862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334488, 41.264366, 21.316193>,  <36.559593, 41.304356, 21.243191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334488, 41.264366, 21.316193>,  <35.959316, 41.197720, 21.437862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334488, 41.264366, 21.316193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264278, -0.224589, -0.937932,
		-0.224589, 0.960104, -0.166616,
		0.937932, 0.166616, -0.304174,
		36.615868, 41.314350, 21.224941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034367, 41.771656, 20.923609>,  <35.959316, 41.197720, 21.437862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034367, 41.771656, 20.923609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344486, 41.521851, 20.885895>,  <36.530560, 41.371967, 20.863266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344486, 41.521851, 20.885895>,  <36.034367, 41.771656, 20.923609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344486, 41.521851, 20.885895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235937, -0.147902, -0.960447,
		0.585871, 0.766879, -0.262015,
		0.775299, -0.624517, -0.094284,
		36.577076, 41.334496, 20.857609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277012, 41.920544, 20.172951>,  <36.034367, 41.771656, 20.923609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277012, 41.920544, 20.172951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461597, 41.585377, 20.289530>,  <36.572350, 41.384277, 20.359478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461597, 41.585377, 20.289530>,  <36.277012, 41.920544, 20.172951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461597, 41.585377, 20.289530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218356, -0.425689, -0.878128,
		0.859866, 0.341587, -0.379405,
		0.461466, -0.837918, 0.291448,
		36.600037, 41.334000, 20.376965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831062, 41.681400, 19.590542>,  <36.277012, 41.920544, 20.172951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831062, 41.681400, 19.590542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735710, 41.368946, 19.821367>,  <36.678497, 41.181473, 19.959864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735710, 41.368946, 19.821367>,  <36.831062, 41.681400, 19.590542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735710, 41.368946, 19.821367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188470, -0.545690, -0.816518,
		0.952709, -0.303400, -0.017139,
		-0.238379, -0.781134, 0.577065,
		36.664196, 41.134605, 19.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998581, 41.208923, 19.160419>,  <36.831062, 41.681400, 19.590542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998581, 41.208923, 19.160419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767109, 41.028332, 19.432096>,  <36.628227, 40.919979, 19.595102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767109, 41.028332, 19.432096>,  <36.998581, 41.208923, 19.160419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767109, 41.028332, 19.432096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416895, -0.552012, -0.722136,
		0.700948, -0.701037, 0.131221,
		-0.578679, -0.451475, 0.679191,
		36.593506, 40.892891, 19.635855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092270, 40.499454, 18.945919>,  <36.998581, 41.208923, 19.160419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092270, 40.499454, 18.945919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757355, 40.528934, 19.162628>,  <36.556408, 40.546623, 19.292654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757355, 40.528934, 19.162628>,  <37.092270, 40.499454, 18.945919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757355, 40.528934, 19.162628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486184, -0.553696, -0.676051,
		0.250155, -0.829451, 0.499434,
		-0.837286, 0.073699, 0.541775,
		36.506168, 40.551044, 19.325161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.977177, 39.837513, 19.279499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.617619, 40.011917, 19.262150>,  <36.401882, 40.116562, 19.251740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.617619, 40.011917, 19.262150>,  <36.977177, 39.837513, 19.279499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617619, 40.011917, 19.262150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372021, -0.811747, -0.450186,
		-0.231496, -0.388533, 0.891881,
		-0.898894, 0.436014, -0.043374,
		36.347950, 40.142723, 19.249138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498234, 39.294807, 19.435675>,  <36.977177, 39.837513, 19.279499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498234, 39.294807, 19.435675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258453, 39.573689, 19.278418>,  <36.114586, 39.741016, 19.184063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258453, 39.573689, 19.278418>,  <36.498234, 39.294807, 19.435675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258453, 39.573689, 19.278418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418997, -0.691838, -0.588050,
		-0.681971, -0.187796, 0.706858,
		-0.599464, 0.697204, -0.393127,
		36.078617, 39.782852, 19.160475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717567, 39.162598, 19.626534>,  <36.498234, 39.294807, 19.435675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717567, 39.162598, 19.626534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775005, 39.366146, 19.287022>,  <35.809467, 39.488274, 19.083313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775005, 39.366146, 19.287022>,  <35.717567, 39.162598, 19.626534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775005, 39.366146, 19.287022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481890, -0.713169, -0.509090,
		-0.864386, 0.482120, 0.142816,
		0.143591, 0.508872, -0.848782,
		35.818081, 39.518806, 19.032387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148273, 38.936104, 19.098810>,  <35.717567, 39.162598, 19.626534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148273, 38.936104, 19.098810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408432, 39.111115, 18.850435>,  <35.564526, 39.216122, 18.701410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408432, 39.111115, 18.850435>,  <35.148273, 38.936104, 19.098810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408432, 39.111115, 18.850435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261698, -0.638342, -0.723902,
		-0.713093, 0.633319, -0.300675,
		0.650394, 0.437523, -0.620936,
		35.603550, 39.242371, 18.664154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807575, 39.024704, 18.551609>,  <35.148273, 38.936104, 19.098810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807575, 39.024704, 18.551609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191044, 39.043400, 18.439344>,  <35.421124, 39.054619, 18.371986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191044, 39.043400, 18.439344>,  <34.807575, 39.024704, 18.551609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191044, 39.043400, 18.439344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218811, -0.509409, -0.832241,
		-0.181873, 0.859254, -0.478126,
		0.958668, 0.046743, -0.280662,
		35.478645, 39.057423, 18.355146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799618, 39.269814, 17.815485>,  <34.807575, 39.024704, 18.551609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799618, 39.269814, 17.815485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150173, 39.084213, 17.867085>,  <35.360508, 38.972855, 17.898045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150173, 39.084213, 17.867085>,  <34.799618, 39.269814, 17.815485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150173, 39.084213, 17.867085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131747, -0.488625, -0.862489,
		0.463227, 0.738884, -0.489358,
		0.876392, -0.464000, 0.128998,
		35.413090, 38.945015, 17.905785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173851, 39.330734, 17.239862>,  <34.799618, 39.269814, 17.815485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173851, 39.330734, 17.239862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369164, 39.015255, 17.389284>,  <35.486351, 38.825970, 17.478937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369164, 39.015255, 17.389284>,  <35.173851, 39.330734, 17.239862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369164, 39.015255, 17.389284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066907, -0.392959, -0.917119,
		0.870119, 0.472804, -0.139105,
		0.488280, -0.788695, 0.373555,
		35.515648, 38.778645, 17.501350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582344, 39.104084, 16.691557>,  <35.173851, 39.330734, 17.239862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582344, 39.104084, 16.691557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592621, 38.805275, 16.957279>,  <35.598785, 38.625992, 17.116713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592621, 38.805275, 16.957279>,  <35.582344, 39.104084, 16.691557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592621, 38.805275, 16.957279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016421, -0.664121, -0.747444,
		0.999535, 0.030111, -0.004796,
		0.025692, -0.747018, 0.664307,
		35.600327, 38.581169, 17.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164089, 38.675301, 16.623018>,  <35.582344, 39.104084, 16.691557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164089, 38.675301, 16.623018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893944, 38.421928, 16.774096>,  <35.731857, 38.269905, 16.864742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893944, 38.421928, 16.774096>,  <36.164089, 38.675301, 16.623018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893944, 38.421928, 16.774096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142731, -0.614719, -0.775725,
		0.723541, -0.469988, 0.505569,
		-0.675364, -0.633428, 0.377692,
		35.691334, 38.231899, 16.887403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476292, 38.037216, 16.481237>,  <36.164089, 38.675301, 16.623018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476292, 38.037216, 16.481237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088531, 37.961121, 16.543297>,  <35.855877, 37.915462, 16.580532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088531, 37.961121, 16.543297>,  <36.476292, 38.037216, 16.481237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088531, 37.961121, 16.543297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021941, -0.562343, -0.826613,
		0.244498, -0.804724, 0.540962,
		-0.969401, -0.190236, 0.155149,
		35.797710, 37.904049, 16.589842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411781, 37.330784, 16.199827>,  <36.476292, 38.037216, 16.481237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411781, 37.330784, 16.199827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034687, 37.458305, 16.239040>,  <35.808430, 37.534817, 16.262568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034687, 37.458305, 16.239040>,  <36.411781, 37.330784, 16.199827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034687, 37.458305, 16.239040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288047, -0.630031, -0.721173,
		-0.168148, -0.708115, 0.685784,
		-0.942738, 0.318802, 0.098032,
		35.751865, 37.553947, 16.268450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933537, 36.778755, 16.257307>,  <36.411781, 37.330784, 16.199827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933537, 36.778755, 16.257307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722317, 37.087811, 16.116348>,  <35.595585, 37.273243, 16.031773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722317, 37.087811, 16.116348>,  <35.933537, 36.778755, 16.257307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722317, 37.087811, 16.116348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365039, -0.581196, -0.727295,
		-0.766751, -0.255411, 0.588947,
		-0.528053, 0.772642, -0.352397,
		35.563900, 37.319603, 16.010630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282978, 36.433983, 15.934490>,  <35.933537, 36.778755, 16.257307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282978, 36.433983, 15.934490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299061, 36.807919, 15.793377>,  <35.308708, 37.032280, 15.708709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299061, 36.807919, 15.793377>,  <35.282978, 36.433983, 15.934490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299061, 36.807919, 15.793377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441690, -0.300072, -0.845498,
		-0.896266, 0.189812, 0.400846,
		0.040203, 0.934841, -0.352783,
		35.311123, 37.088371, 15.687542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604733, 36.619640, 15.794685>,  <35.282978, 36.433983, 15.934490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604733, 36.619640, 15.794685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837017, 36.839607, 15.554563>,  <34.976387, 36.971588, 15.410489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837017, 36.839607, 15.554563>,  <34.604733, 36.619640, 15.794685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837017, 36.839607, 15.554563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588670, -0.225715, -0.776222,
		-0.562354, 0.804143, 0.192643,
		0.580711, 0.549914, -0.600307,
		35.011230, 37.004581, 15.374471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172245, 36.860500, 15.327107>,  <34.604733, 36.619640, 15.794685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172245, 36.860500, 15.327107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537395, 36.900867, 15.168880>,  <34.756485, 36.925087, 15.073943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537395, 36.900867, 15.168880>,  <34.172245, 36.860500, 15.327107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537395, 36.900867, 15.168880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364237, -0.236260, -0.900840,
		-0.184365, 0.966435, -0.178919,
		0.912875, 0.100914, -0.395570,
		34.811256, 36.931141, 15.050208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024155, 37.278255, 14.756888>,  <34.172245, 36.860500, 15.327107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024155, 37.278255, 14.756888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379314, 37.116035, 14.670012>,  <34.592411, 37.018703, 14.617886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379314, 37.116035, 14.670012>,  <34.024155, 37.278255, 14.756888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379314, 37.116035, 14.670012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264554, -0.063868, -0.962254,
		0.376369, 0.911840, -0.163997,
		0.887895, -0.405549, -0.217193,
		34.645683, 36.994370, 14.604854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150597, 37.629032, 14.212364>,  <34.024155, 37.278255, 14.756888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150597, 37.629032, 14.212364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384289, 37.304657, 14.199343>,  <34.524506, 37.110031, 14.191530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384289, 37.304657, 14.199343>,  <34.150597, 37.629032, 14.212364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384289, 37.304657, 14.199343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165541, -0.079803, -0.982969,
		0.794526, 0.579669, -0.180867,
		0.584230, -0.810935, -0.032554,
		34.559559, 37.061375, 14.189576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484516, 37.631836, 13.534681>,  <34.150597, 37.629032, 14.212364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484516, 37.631836, 13.534681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555794, 37.256424, 13.652944>,  <34.598560, 37.031178, 13.723901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555794, 37.256424, 13.652944>,  <34.484516, 37.631836, 13.534681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555794, 37.256424, 13.652944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088418, -0.314522, -0.945123,
		0.980015, 0.142274, -0.139028,
		0.178194, -0.938527, 0.295657,
		34.609253, 36.974865, 13.741641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950039, 37.414143, 13.040153>,  <34.484516, 37.631836, 13.534681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950039, 37.414143, 13.040153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783504, 37.097534, 13.219110>,  <34.683582, 36.907570, 13.326484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783504, 37.097534, 13.219110>,  <34.950039, 37.414143, 13.040153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783504, 37.097534, 13.219110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046186, -0.473020, -0.879840,
		0.908036, -0.386975, 0.160379,
		-0.416338, -0.791519, 0.447392,
		34.658604, 36.860077, 13.353327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243023, 36.836491, 12.832310>,  <34.950039, 37.414143, 13.040153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243023, 36.836491, 12.832310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895176, 36.686237, 12.960474>,  <34.686466, 36.596085, 13.037373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895176, 36.686237, 12.960474>,  <35.243023, 36.836491, 12.832310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895176, 36.686237, 12.960474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204438, -0.316759, -0.926212,
		0.449405, -0.870957, 0.198667,
		-0.869621, -0.375629, 0.320410,
		34.634289, 36.573547, 13.056597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285313, 36.116821, 12.774459>,  <35.243023, 36.836491, 12.832310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285313, 36.116821, 12.774459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895565, 36.205074, 12.792010>,  <34.661716, 36.258026, 12.802541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895565, 36.205074, 12.792010>,  <35.285313, 36.116821, 12.774459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895565, 36.205074, 12.792010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113409, -0.313342, -0.942844,
		-0.194269, -0.923656, 0.330333,
		-0.974370, 0.220628, 0.043878,
		34.603252, 36.271263, 12.805174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909702, 35.571777, 12.513247>,  <35.285313, 36.116821, 12.774459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909702, 35.571777, 12.513247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677761, 35.894657, 12.469068>,  <34.538597, 36.088383, 12.442559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677761, 35.894657, 12.469068>,  <34.909702, 35.571777, 12.513247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677761, 35.894657, 12.469068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357870, -0.374143, -0.855538,
		-0.731913, -0.456561, 0.505821,
		-0.579855, 0.807198, -0.110451,
		34.503803, 36.136818, 12.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147934, 35.426781, 12.402390>,  <34.909702, 35.571777, 12.513247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147934, 35.426781, 12.402390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275188, 35.760502, 12.222289>,  <34.351543, 35.960735, 12.114228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275188, 35.760502, 12.222289>,  <34.147934, 35.426781, 12.402390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275188, 35.760502, 12.222289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092359, -0.445395, -0.890557,
		-0.943535, 0.324906, -0.064643,
		0.318139, 0.834301, -0.450254,
		34.370628, 36.010792, 12.087213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711479, 35.220295, 12.877022>,  <34.147934, 35.426781, 12.402390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711479, 35.220295, 12.877022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513065, 35.062313, 13.186334>,  <33.394016, 34.967525, 13.371921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513065, 35.062313, 13.186334>,  <33.711479, 35.220295, 12.877022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513065, 35.062313, 13.186334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817224, 0.088589, 0.569470,
		-0.293418, 0.914420, 0.278823,
		-0.496034, -0.394954, 0.773279,
		33.364254, 34.943829, 13.418318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236176, 34.445133, 12.830980>,  <33.711479, 35.220295, 12.877022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236176, 34.445133, 12.830980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994347, 34.160843, 12.974846>,  <32.849251, 33.990269, 13.061165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994347, 34.160843, 12.974846>,  <33.236176, 34.445133, 12.830980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994347, 34.160843, 12.974846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241432, 0.266785, 0.933025,
		-0.759082, 0.650914, 0.010303,
		-0.604570, -0.710730, 0.359663,
		32.812977, 33.947624, 13.082745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703606, 34.764252, 13.281777>,  <33.236176, 34.445133, 12.830980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703606, 34.764252, 13.281777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717319, 34.396339, 13.438154>,  <32.725548, 34.175594, 13.531981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717319, 34.396339, 13.438154>,  <32.703606, 34.764252, 13.281777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717319, 34.396339, 13.438154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030927, 0.391962, 0.919462,
		-0.998933, -0.019434, 0.041885,
		0.034286, -0.919776, 0.390943,
		32.727604, 34.120407, 13.555437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102818, 34.759041, 13.667343>,  <32.703606, 34.764252, 13.281777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102818, 34.759041, 13.667343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356007, 34.481720, 13.805146>,  <32.507919, 34.315327, 13.887828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356007, 34.481720, 13.805146>,  <32.102818, 34.759041, 13.667343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356007, 34.481720, 13.805146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074715, 0.388215, 0.918535,
		-0.770564, -0.607144, 0.193928,
		0.632969, -0.693300, 0.344507,
		32.545898, 34.273731, 13.908498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890976, 34.612823, 14.276311>,  <32.102818, 34.759041, 13.667343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890976, 34.612823, 14.276311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260162, 34.463531, 14.313906>,  <32.481674, 34.373955, 14.336462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260162, 34.463531, 14.313906>,  <31.890976, 34.612823, 14.276311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260162, 34.463531, 14.313906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033766, 0.321773, 0.946214,
		-0.383399, -0.870149, 0.309588,
		0.922965, -0.373231, 0.093986,
		32.537052, 34.351562, 14.342101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920122, 34.269871, 14.925677>,  <31.890976, 34.612823, 14.276311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920122, 34.269871, 14.925677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304642, 34.332603, 14.835071>,  <32.535355, 34.370243, 14.780706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304642, 34.332603, 14.835071>,  <31.920122, 34.269871, 14.925677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304642, 34.332603, 14.835071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212396, 0.101808, 0.971866,
		0.175479, -0.982364, 0.064557,
		0.961298, 0.156831, -0.226516,
		32.593033, 34.379654, 14.767116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440372, 33.814041, 15.499214>,  <31.920122, 34.269871, 14.925677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440372, 33.814041, 15.499214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632061, 34.124485, 15.335264>,  <32.747074, 34.310753, 15.236895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632061, 34.124485, 15.335264>,  <32.440372, 33.814041, 15.499214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632061, 34.124485, 15.335264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423703, 0.204403, 0.882437,
		0.768648, -0.596550, -0.230886,
		0.479224, 0.776111, -0.409874,
		32.775829, 34.357319, 15.212302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092899, 33.809086, 15.894941>,  <32.440372, 33.814041, 15.499214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092899, 33.809086, 15.894941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058861, 34.161602, 15.709000>,  <33.038437, 34.373112, 15.597435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058861, 34.161602, 15.709000>,  <33.092899, 33.809086, 15.894941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058861, 34.161602, 15.709000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326970, 0.465411, 0.822486,
		0.941195, -0.082001, -0.327760,
		-0.085098, 0.881288, -0.464854,
		33.033333, 34.425987, 15.569543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720390, 34.114822, 16.094807>,  <33.092899, 33.809086, 15.894941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720390, 34.114822, 16.094807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466766, 34.406807, 15.992734>,  <33.314590, 34.581997, 15.931490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466766, 34.406807, 15.992734>,  <33.720390, 34.114822, 16.094807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466766, 34.406807, 15.992734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450294, 0.616819, 0.645577,
		0.628648, 0.294431, -0.719800,
		-0.634064, 0.729962, -0.255182,
		33.276546, 34.625797, 15.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123913, 34.684628, 15.988882>,  <33.720390, 34.114822, 16.094807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123913, 34.684628, 15.988882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759075, 34.844997, 16.023180>,  <33.540173, 34.941219, 16.043758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759075, 34.844997, 16.023180>,  <34.123913, 34.684628, 15.988882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759075, 34.844997, 16.023180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338525, 0.618479, 0.709143,
		0.231278, 0.675830, -0.699831,
		-0.912091, 0.400920, 0.085745,
		33.485447, 34.965275, 16.048904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203346, 35.468472, 15.983014>,  <34.123913, 34.684628, 15.988882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203346, 35.468472, 15.983014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852818, 35.412971, 16.167538>,  <33.642498, 35.379673, 16.278252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852818, 35.412971, 16.167538>,  <34.203346, 35.468472, 15.983014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852818, 35.412971, 16.167538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227339, 0.725158, 0.649971,
		-0.424704, 0.674459, -0.603930,
		-0.876324, -0.138749, 0.461308,
		33.589920, 35.371346, 16.305931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027710, 36.172325, 16.120924>,  <34.203346, 35.468472, 15.983014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027710, 36.172325, 16.120924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824547, 35.926506, 16.362373>,  <33.702648, 35.779015, 16.507244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824547, 35.926506, 16.362373>,  <34.027710, 36.172325, 16.120924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824547, 35.926506, 16.362373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203276, 0.595442, 0.777257,
		-0.837083, 0.517478, -0.177508,
		-0.507909, -0.614545, 0.603625,
		33.672173, 35.742142, 16.543461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641655, 36.506069, 16.535967>,  <34.027710, 36.172325, 16.120924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641655, 36.506069, 16.535967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687325, 36.174644, 16.755220>,  <33.714725, 35.975788, 16.886772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687325, 36.174644, 16.755220>,  <33.641655, 36.506069, 16.535967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687325, 36.174644, 16.755220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186225, 0.559810, 0.807424,
		-0.975851, 0.009892, 0.218212,
		0.114170, -0.828562, 0.548134,
		33.721577, 35.926075, 16.919661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216602, 36.666245, 17.241302>,  <33.641655, 36.506069, 16.535967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216602, 36.666245, 17.241302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459282, 36.358459, 17.321146>,  <33.604889, 36.173786, 17.369053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459282, 36.358459, 17.321146>,  <33.216602, 36.666245, 17.241302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459282, 36.358459, 17.321146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164871, 0.367439, 0.915317,
		-0.777649, -0.522409, 0.349786,
		0.606695, -0.769465, 0.199608,
		33.641289, 36.127621, 17.381029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068588, 36.471172, 17.878738>,  <33.216602, 36.666245, 17.241302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068588, 36.471172, 17.878738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430984, 36.308712, 17.831043>,  <33.648422, 36.211235, 17.802427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430984, 36.308712, 17.831043>,  <33.068588, 36.471172, 17.878738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430984, 36.308712, 17.831043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297794, 0.411390, 0.861439,
		-0.300820, -0.815966, 0.493666,
		0.905995, -0.406148, -0.119236,
		33.702782, 36.186867, 17.795273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220337, 36.162399, 18.464294>,  <33.068588, 36.471172, 17.878738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220337, 36.162399, 18.464294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580643, 36.219090, 18.300083>,  <33.796825, 36.253105, 18.201557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580643, 36.219090, 18.300083>,  <33.220337, 36.162399, 18.464294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580643, 36.219090, 18.300083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360937, 0.281425, 0.889114,
		0.241542, -0.949059, 0.202345,
		0.900767, 0.141724, -0.410526,
		33.850872, 36.261608, 18.176926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662251, 35.870499, 18.921114>,  <33.220337, 36.162399, 18.464294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662251, 35.870499, 18.921114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916088, 36.087662, 18.701096>,  <34.068390, 36.217960, 18.569084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916088, 36.087662, 18.701096>,  <33.662251, 35.870499, 18.921114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916088, 36.087662, 18.701096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601229, 0.100403, 0.792744,
		0.485611, -0.833771, -0.262695,
		0.634591, 0.542905, -0.550044,
		34.106464, 36.250534, 18.536083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200115, 35.580856, 19.078917>,  <33.662251, 35.870499, 18.921114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200115, 35.580856, 19.078917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367313, 35.910179, 18.925325>,  <34.467632, 36.107773, 18.833170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367313, 35.910179, 18.925325>,  <34.200115, 35.580856, 19.078917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367313, 35.910179, 18.925325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567373, 0.093506, 0.818135,
		0.709482, -0.559838, -0.428039,
		0.417999, 0.823309, -0.383978,
		34.492714, 36.157173, 18.810133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025566, 35.579689, 18.961721>,  <34.200115, 35.580856, 19.078917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025566, 35.579689, 18.961721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905819, 35.957485, 19.015852>,  <34.833969, 36.184162, 19.048330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905819, 35.957485, 19.015852>,  <35.025566, 35.579689, 18.961721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905819, 35.957485, 19.015852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543808, 0.052357, 0.837575,
		0.783997, 0.324337, -0.529296,
		-0.299369, 0.944492, 0.135329,
		34.816010, 36.240833, 19.056450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686481, 35.854805, 19.234591>,  <35.025566, 35.579689, 18.961721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686481, 35.854805, 19.234591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385551, 36.106991, 19.311031>,  <35.204994, 36.258301, 19.356895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385551, 36.106991, 19.311031>,  <35.686481, 35.854805, 19.234591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385551, 36.106991, 19.311031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418231, 0.232952, 0.877961,
		0.509006, 0.740438, -0.438936,
		-0.752327, 0.630464, 0.191100,
		35.159855, 36.296131, 19.368361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025585, 36.325275, 19.548056>,  <35.686481, 35.854805, 19.234591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025585, 36.325275, 19.548056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650753, 36.402748, 19.664242>,  <35.425854, 36.449234, 19.733953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650753, 36.402748, 19.664242>,  <36.025585, 36.325275, 19.548056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650753, 36.402748, 19.664242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345787, 0.400216, 0.848680,
		0.048129, 0.895719, -0.442008,
		-0.937078, 0.193686, 0.290466,
		35.369629, 36.460854, 19.751381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.531269, 42.277565, 21.108534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275677, 42.008442, 21.257679>,  <37.122322, 41.846966, 21.347166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275677, 42.008442, 21.257679>,  <37.531269, 42.277565, 21.108534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275677, 42.008442, 21.257679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058072, 0.525538, 0.848786,
		-0.767028, 0.520704, -0.374880,
		-0.638980, -0.672812, 0.372864,
		37.083984, 41.806599, 21.369537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957428, 42.663559, 21.429113>,  <37.531269, 42.277565, 21.108534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957428, 42.663559, 21.429113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963047, 42.300072, 21.595984>,  <36.966419, 42.081982, 21.696106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963047, 42.300072, 21.595984>,  <36.957428, 42.663559, 21.429113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963047, 42.300072, 21.595984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254153, 0.400271, 0.880448,
		-0.967062, -0.118396, -0.225330,
		0.014049, -0.908716, 0.417178,
		36.967262, 42.027458, 21.721136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354000, 42.653980, 21.900801>,  <36.957428, 42.663559, 21.429113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354000, 42.653980, 21.900801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627289, 42.385384, 22.015553>,  <36.791264, 42.224224, 22.084404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627289, 42.385384, 22.015553>,  <36.354000, 42.653980, 21.900801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627289, 42.385384, 22.015553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180648, 0.225225, 0.957413,
		-0.707509, -0.705953, 0.032575,
		0.683225, -0.671494, 0.286878,
		36.832256, 42.183937, 22.101616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068058, 42.288372, 22.565685>,  <36.354000, 42.653980, 21.900801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068058, 42.288372, 22.565685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463783, 42.230141, 22.569016>,  <36.701218, 42.195202, 22.571014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463783, 42.230141, 22.569016>,  <36.068058, 42.288372, 22.565685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463783, 42.230141, 22.569016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039380, 0.321718, 0.946016,
		-0.140401, -0.935577, 0.324012,
		0.989311, -0.145581, 0.008326,
		36.760578, 42.186466, 22.571514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134960, 42.111343, 23.205132>,  <36.068058, 42.288372, 22.565685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134960, 42.111343, 23.205132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509876, 42.168003, 23.077738>,  <36.734825, 42.202000, 23.001303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509876, 42.168003, 23.077738>,  <36.134960, 42.111343, 23.205132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509876, 42.168003, 23.077738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306990, 0.097272, 0.946729,
		0.165085, -0.985126, 0.047686,
		0.937286, 0.141651, -0.318482,
		36.791061, 42.210499, 22.982193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410526, 41.656567, 23.593790>,  <36.134960, 42.111343, 23.205132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410526, 41.656567, 23.593790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652977, 41.946789, 23.463455>,  <36.798447, 42.120922, 23.385254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652977, 41.946789, 23.463455>,  <36.410526, 41.656567, 23.593790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652977, 41.946789, 23.463455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169556, 0.282380, 0.944199,
		0.777084, -0.627554, 0.048135,
		0.606128, 0.725561, -0.325839,
		36.834816, 42.164455, 23.365704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953083, 41.561588, 23.926842>,  <36.410526, 41.656567, 23.593790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953083, 41.561588, 23.926842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.013428, 41.938042, 23.805843>,  <37.049633, 42.163914, 23.733244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.013428, 41.938042, 23.805843>,  <36.953083, 41.561588, 23.926842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013428, 41.938042, 23.805843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184870, 0.273742, 0.943869,
		0.971115, -0.198315, -0.132691,
		0.150860, 0.941136, -0.302498,
		37.058685, 42.220383, 23.715094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619827, 41.777046, 24.209913>,  <36.953083, 41.561588, 23.926842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619827, 41.777046, 24.209913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421841, 42.113823, 24.123991>,  <37.303047, 42.315887, 24.072437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421841, 42.113823, 24.123991>,  <37.619827, 41.777046, 24.209913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421841, 42.113823, 24.123991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361058, 0.424152, 0.830501,
		0.790343, 0.333515, -0.513932,
		-0.494970, 0.841940, -0.214808,
		37.273350, 42.366405, 24.059549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001793, 42.367134, 24.522987>,  <37.619827, 41.777046, 24.209913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001793, 42.367134, 24.522987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639565, 42.529148, 24.472569>,  <37.422226, 42.626358, 24.442318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639565, 42.529148, 24.472569>,  <38.001793, 42.367134, 24.522987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639565, 42.529148, 24.472569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056035, 0.408759, 0.910921,
		0.420476, 0.817841, -0.392856,
		-0.905572, 0.405034, -0.126046,
		37.367893, 42.650658, 24.434755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087433, 42.957050, 24.786421>,  <38.001793, 42.367134, 24.522987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087433, 42.957050, 24.786421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687683, 42.947693, 24.775820>,  <37.447834, 42.942078, 24.769459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687683, 42.947693, 24.775820>,  <38.087433, 42.957050, 24.786421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687683, 42.947693, 24.775820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034837, 0.524789, 0.850519,
		-0.005985, 0.850911, -0.525276,
		-0.999375, -0.023390, -0.026502,
		37.387871, 42.940678, 24.767870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850712, 43.669453, 24.964796>,  <38.087433, 42.957050, 24.786421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850712, 43.669453, 24.964796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572727, 43.406178, 25.080601>,  <37.405937, 43.248211, 25.150084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572727, 43.406178, 25.080601>,  <37.850712, 43.669453, 24.964796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572727, 43.406178, 25.080601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102776, 0.489423, 0.865969,
		-0.711663, 0.572061, -0.407777,
		-0.694962, -0.658188, 0.289510,
		37.364239, 43.208721, 25.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350090, 44.161945, 25.173521>,  <37.850712, 43.669453, 24.964796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350090, 44.161945, 25.173521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288673, 43.791462, 25.311253>,  <37.251823, 43.569172, 25.393890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288673, 43.791462, 25.311253>,  <37.350090, 44.161945, 25.173521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288673, 43.791462, 25.311253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117366, 0.363086, 0.924334,
		-0.981148, 0.101509, -0.164454,
		-0.153539, -0.926210, 0.344327,
		37.242611, 43.513599, 25.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532055, 44.136856, 25.474714>,  <37.350090, 44.161945, 25.173521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532055, 44.136856, 25.474714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.794266, 43.872234, 25.620388>,  <36.951591, 43.713463, 25.707792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.794266, 43.872234, 25.620388>,  <36.532055, 44.136856, 25.474714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794266, 43.872234, 25.620388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172982, 0.337889, 0.925153,
		-0.735091, -0.669462, 0.107059,
		0.655529, -0.661552, 0.364184,
		36.990925, 43.673767, 25.729643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911358, 44.306133, 25.912518>,  <36.532055, 44.136856, 25.474714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911358, 44.306133, 25.912518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648590, 44.454597, 26.175030>,  <35.490929, 44.543674, 26.332537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648590, 44.454597, 26.175030>,  <35.911358, 44.306133, 25.912518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648590, 44.454597, 26.175030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752317, -0.380188, -0.538030,
		0.049814, -0.847170, 0.528981,
		-0.656915, 0.371160, 0.656280,
		35.451515, 44.565945, 26.371914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472630, 43.817261, 26.269850>,  <35.911358, 44.306133, 25.912518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472630, 43.817261, 26.269850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262684, 44.157730, 26.271267>,  <35.136715, 44.362011, 26.272118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262684, 44.157730, 26.271267>,  <35.472630, 43.817261, 26.269850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262684, 44.157730, 26.271267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777469, -0.477716, -0.409059,
		-0.346489, -0.217455, 0.912501,
		-0.524868, 0.851176, 0.003541,
		35.105225, 44.413082, 26.272329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653809, 43.626129, 26.277225>,  <35.472630, 43.817261, 26.269850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653809, 43.626129, 26.277225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.612415, 44.019772, 26.219511>,  <34.587578, 44.255959, 26.184883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.612415, 44.019772, 26.219511>,  <34.653809, 43.626129, 26.277225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612415, 44.019772, 26.219511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942389, -0.143409, -0.302221,
		-0.318110, 0.104698, 0.942255,
		-0.103486, 0.984110, -0.144286,
		34.581371, 44.315006, 26.176226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036392, 43.892651, 26.623993>,  <34.653809, 43.626129, 26.277225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036392, 43.892651, 26.623993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.118603, 44.137016, 26.318171>,  <34.167931, 44.283634, 26.134678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.118603, 44.137016, 26.318171>,  <34.036392, 43.892651, 26.623993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118603, 44.137016, 26.318171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909278, -0.169689, -0.380024,
		-0.361899, 0.773298, 0.520614,
		0.205529, 0.610914, -0.764554,
		34.180260, 44.320290, 26.088804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387024, 44.081043, 26.377596>,  <34.036392, 43.892651, 26.623993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387024, 44.081043, 26.377596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617928, 44.197159, 26.072308>,  <33.756470, 44.266827, 25.889135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617928, 44.197159, 26.072308>,  <33.387024, 44.081043, 26.377596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617928, 44.197159, 26.072308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792435, -0.026366, -0.609386,
		-0.197021, 0.956575, 0.214816,
		0.577260, 0.290290, -0.763219,
		33.791107, 44.284245, 25.843342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004360, 44.543110, 25.829857>,  <33.387024, 44.081043, 26.377596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004360, 44.543110, 25.829857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.300728, 44.401363, 25.601662>,  <33.478550, 44.316315, 25.464745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.300728, 44.401363, 25.601662>,  <33.004360, 44.543110, 25.829857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300728, 44.401363, 25.601662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653363, -0.183771, -0.734401,
		0.155408, 0.916871, -0.367691,
		0.740922, -0.354367, -0.570490,
		33.523003, 44.295052, 25.430515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789917, 44.728485, 25.075357>,  <33.004360, 44.543110, 25.829857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789917, 44.728485, 25.075357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081184, 44.455223, 25.053196>,  <33.255947, 44.291267, 25.039900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081184, 44.455223, 25.053196>,  <32.789917, 44.728485, 25.075357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081184, 44.455223, 25.053196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461448, -0.428876, -0.776615,
		0.506785, 0.591075, -0.627534,
		0.728172, -0.683152, -0.055402,
		33.299637, 44.250278, 25.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047581, 44.720913, 24.369755>,  <32.789917, 44.728485, 25.075357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047581, 44.720913, 24.369755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177235, 44.375961, 24.525311>,  <33.255028, 44.168991, 24.618645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177235, 44.375961, 24.525311>,  <33.047581, 44.720913, 24.369755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177235, 44.375961, 24.525311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293101, -0.482405, -0.825456,
		0.899459, 0.153578, -0.409130,
		0.324138, -0.862380, 0.388889,
		33.274475, 44.117249, 24.641977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533478, 44.511082, 23.956373>,  <33.047581, 44.720913, 24.369755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533478, 44.511082, 23.956373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.380291, 44.190510, 24.140137>,  <33.288380, 43.998169, 24.250395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.380291, 44.190510, 24.140137>,  <33.533478, 44.511082, 23.956373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380291, 44.190510, 24.140137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353735, -0.332189, -0.874369,
		0.853353, -0.497360, -0.156277,
		-0.382963, -0.801426, 0.459408,
		33.265404, 43.950081, 24.277960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677811, 43.985928, 23.454983>,  <33.533478, 44.511082, 23.956373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677811, 43.985928, 23.454983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.404247, 43.810890, 23.688488>,  <33.240108, 43.705868, 23.828590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.404247, 43.810890, 23.688488>,  <33.677811, 43.985928, 23.454983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404247, 43.810890, 23.688488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286433, -0.574854, -0.766485,
		0.670986, -0.691416, 0.267808,
		-0.683911, -0.437591, 0.583764,
		33.199074, 43.679611, 23.863617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617287, 43.369076, 23.269806>,  <33.677811, 43.985928, 23.454983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617287, 43.369076, 23.269806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.266258, 43.346821, 23.460289>,  <33.055641, 43.333466, 23.574579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.266258, 43.346821, 23.460289>,  <33.617287, 43.369076, 23.269806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266258, 43.346821, 23.460289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369511, -0.554402, -0.745722,
		0.305504, -0.830387, 0.465966,
		-0.877570, -0.055641, 0.476209,
		33.002987, 43.330128, 23.603151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329704, 42.681458, 23.230680>,  <33.617287, 43.369076, 23.269806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329704, 42.681458, 23.230680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.994003, 42.884556, 23.308495>,  <32.792583, 43.006416, 23.355183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.994003, 42.884556, 23.308495>,  <33.329704, 42.681458, 23.230680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994003, 42.884556, 23.308495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492867, -0.559275, -0.666554,
		-0.229642, -0.655289, 0.719626,
		-0.839254, 0.507748, 0.194538,
		32.742226, 43.036880, 23.366856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709866, 42.222569, 23.475775>,  <33.329704, 42.681458, 23.230680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709866, 42.222569, 23.475775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594612, 42.561062, 23.296497>,  <32.525459, 42.764156, 23.188931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594612, 42.561062, 23.296497>,  <32.709866, 42.222569, 23.475775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594612, 42.561062, 23.296497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476044, -0.532688, -0.699733,
		-0.830881, 0.011746, 0.556325,
		-0.288129, 0.846230, -0.448192,
		32.508175, 42.814930, 23.162041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083584, 42.122597, 23.216425>,  <32.709866, 42.222569, 23.475775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083584, 42.122597, 23.216425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.169228, 42.455223, 23.011423>,  <32.220615, 42.654797, 22.888422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.169228, 42.455223, 23.011423>,  <32.083584, 42.122597, 23.216425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169228, 42.455223, 23.011423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349983, -0.424531, -0.835036,
		-0.911959, 0.358158, 0.200136,
		0.214111, 0.831563, -0.512504,
		32.233459, 42.704693, 22.857672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610142, 42.076427, 22.637136>,  <32.083584, 42.122597, 23.216425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610142, 42.076427, 22.637136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.824408, 42.390137, 22.511929>,  <31.952967, 42.578362, 22.436804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.824408, 42.390137, 22.511929>,  <31.610142, 42.076427, 22.637136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824408, 42.390137, 22.511929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114884, -0.299559, -0.947136,
		-0.836579, 0.543309, -0.070363,
		0.535666, 0.784270, -0.313022,
		31.985107, 42.625420, 22.418022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901608, 42.108246, 22.863045>,  <31.610142, 42.076427, 22.637136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901608, 42.108246, 22.863045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.599550, 41.846436, 22.848324>,  <30.418316, 41.689350, 22.839491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.599550, 41.846436, 22.848324>,  <30.901608, 42.108246, 22.863045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599550, 41.846436, 22.848324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073121, -0.139885, 0.987464,
		-0.651467, 0.742988, 0.153493,
		-0.755146, -0.654523, -0.036803,
		30.373007, 41.650078, 22.837282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341024, 42.404701, 23.211349>,  <30.901608, 42.108246, 22.863045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341024, 42.404701, 23.211349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.270927, 42.011478, 23.232830>,  <30.228868, 41.775543, 23.245718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.270927, 42.011478, 23.232830>,  <30.341024, 42.404701, 23.211349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270927, 42.011478, 23.232830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143069, 0.028537, 0.989301,
		-0.974075, 0.181051, 0.135645,
		-0.175243, -0.983060, 0.053700,
		30.218355, 41.716560, 23.248940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977770, 42.418442, 23.762295>,  <30.341024, 42.404701, 23.211349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977770, 42.418442, 23.762295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.089094, 42.037689, 23.710966>,  <30.155890, 41.809238, 23.680168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.089094, 42.037689, 23.710966>,  <29.977770, 42.418442, 23.762295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089094, 42.037689, 23.710966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, -0.112743, 0.991059,
		-0.957837, -0.284980, 0.036544,
		0.278311, -0.951880, -0.128324,
		30.172588, 41.752125, 23.672468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545429, 41.918839, 24.282223>,  <29.977770, 42.418442, 23.762295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545429, 41.918839, 24.282223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.893215, 41.747818, 24.183247>,  <30.101887, 41.645206, 24.123861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.893215, 41.747818, 24.183247>,  <29.545429, 41.918839, 24.282223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893215, 41.747818, 24.183247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176591, -0.198787, 0.964002,
		-0.461352, -0.881862, -0.097336,
		0.869466, -0.427555, -0.247439,
		30.154055, 41.619553, 24.109015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530125, 41.374229, 24.567055>,  <29.545429, 41.918839, 24.282223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530125, 41.374229, 24.567055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.920694, 41.453369, 24.532518>,  <30.155035, 41.500854, 24.511797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.920694, 41.453369, 24.532518>,  <29.530125, 41.374229, 24.567055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920694, 41.453369, 24.532518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146215, -0.311908, 0.938794,
		0.158812, -0.929284, -0.333482,
		0.976422, 0.197852, -0.086341,
		30.213621, 41.512726, 24.506617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851562, 40.787491, 24.763098>,  <29.530125, 41.374229, 24.567055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851562, 40.787491, 24.763098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.136770, 41.063416, 24.813313>,  <30.307894, 41.228973, 24.843441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.136770, 41.063416, 24.813313>,  <29.851562, 40.787491, 24.763098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136770, 41.063416, 24.813313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201372, -0.372975, 0.905726,
		0.671607, -0.620518, -0.404848,
		0.713017, 0.689817, 0.125538,
		30.350676, 41.270359, 24.850973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399908, 40.517654, 25.182453>,  <29.851562, 40.787491, 24.763098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399908, 40.517654, 25.182453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.546627, 40.889557, 25.195219>,  <30.634659, 41.112698, 25.202879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.546627, 40.889557, 25.195219>,  <30.399908, 40.517654, 25.182453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546627, 40.889557, 25.195219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464855, -0.212893, 0.859410,
		0.805834, -0.300394, -0.510289,
		0.366799, 0.929753, 0.031917,
		30.656668, 41.168484, 25.204794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127184, 40.448479, 25.279953>,  <30.399908, 40.517654, 25.182453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127184, 40.448479, 25.279953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.021011, 40.817078, 25.393368>,  <30.957308, 41.038235, 25.461416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.021011, 40.817078, 25.393368>,  <31.127184, 40.448479, 25.279953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021011, 40.817078, 25.393368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583040, -0.080802, 0.808415,
		0.767861, 0.379893, -0.515821,
		-0.265432, 0.921495, 0.283537,
		30.941381, 41.093525, 25.478430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696213, 40.683662, 25.480141>,  <31.127184, 40.448479, 25.279953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696213, 40.683662, 25.480141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.433187, 40.932529, 25.650089>,  <31.275372, 41.081848, 25.752058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.433187, 40.932529, 25.650089>,  <31.696213, 40.683662, 25.480141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433187, 40.932529, 25.650089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596691, 0.085781, 0.797873,
		0.459966, 0.778170, -0.427649,
		-0.657565, 0.622168, 0.424870,
		31.235918, 41.119179, 25.777550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091129, 41.301296, 25.732862>,  <31.696213, 40.683662, 25.480141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091129, 41.301296, 25.732862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.764334, 41.276539, 25.962189>,  <31.568256, 41.261684, 26.099785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.764334, 41.276539, 25.962189>,  <32.091129, 41.301296, 25.732862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764334, 41.276539, 25.962189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550852, 0.210271, 0.807681,
		-0.170544, 0.975682, -0.137694,
		-0.816993, -0.061896, 0.573317,
		31.519236, 41.257969, 26.134184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270790, 41.793232, 26.142826>,  <32.091129, 41.301296, 25.732862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270790, 41.793232, 26.142826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.982281, 41.572617, 26.310431>,  <31.809174, 41.440247, 26.410994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.982281, 41.572617, 26.310431>,  <32.270790, 41.793232, 26.142826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982281, 41.572617, 26.310431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523771, -0.038456, 0.850991,
		-0.453237, 0.833265, 0.316615,
		-0.721277, -0.551535, 0.419010,
		31.765898, 41.407158, 26.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178158, 42.034771, 26.864132>,  <32.270790, 41.793232, 26.142826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178158, 42.034771, 26.864132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.019466, 41.667679, 26.856323>,  <31.924252, 41.447422, 26.851639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.019466, 41.667679, 26.856323>,  <32.178158, 42.034771, 26.864132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019466, 41.667679, 26.856323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380413, -0.183727, 0.906383,
		-0.835401, 0.352159, 0.422006,
		-0.396725, -0.917730, -0.019520,
		31.900450, 41.392361, 26.850468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.049002, 41.972004, 19.114119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997646, 41.597755, 19.245647>,  <29.966833, 41.373207, 19.324564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997646, 41.597755, 19.245647>,  <30.049002, 41.972004, 19.114119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997646, 41.597755, 19.245647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072548, 0.321816, 0.944018,
		-0.989067, 0.145058, 0.026559,
		-0.128390, -0.935624, 0.328822,
		29.959129, 41.317070, 19.344294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563063, 42.105812, 19.518845>,  <30.049002, 41.972004, 19.114119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563063, 42.105812, 19.518845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712101, 41.746677, 19.612707>,  <29.801523, 41.531197, 19.669024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712101, 41.746677, 19.612707>,  <29.563063, 42.105812, 19.518845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712101, 41.746677, 19.612707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130616, 0.199607, 0.971132,
		-0.918756, -0.392489, -0.042899,
		0.372595, -0.897836, 0.234655,
		29.823879, 41.477325, 19.683104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017035, 41.767334, 20.021341>,  <29.563063, 42.105812, 19.518845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017035, 41.767334, 20.021341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381720, 41.608753, 20.064432>,  <29.600531, 41.513603, 20.090286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381720, 41.608753, 20.064432>,  <29.017035, 41.767334, 20.021341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381720, 41.608753, 20.064432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094196, 0.053502, 0.994115,
		-0.399887, -0.916493, 0.011434,
		0.911711, -0.396457, 0.107725,
		29.655233, 41.489815, 20.096750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926350, 41.168938, 20.595575>,  <29.017035, 41.767334, 20.021341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926350, 41.168938, 20.595575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319521, 41.240471, 20.578289>,  <29.555424, 41.283390, 20.567917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319521, 41.240471, 20.578289>,  <28.926350, 41.168938, 20.595575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319521, 41.240471, 20.578289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, -0.036555, 0.998053,
		0.176905, -0.983200, -0.044968,
		0.982930, 0.178833, -0.043215,
		29.614401, 41.294121, 20.565325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239164, 40.669487, 20.944889>,  <28.926350, 41.168938, 20.595575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239164, 40.669487, 20.944889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483799, 40.985939, 20.948238>,  <29.630581, 41.175812, 20.950249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483799, 40.985939, 20.948238>,  <29.239164, 40.669487, 20.944889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483799, 40.985939, 20.948238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023849, 0.007857, 0.999685,
		0.790817, -0.611595, 0.023673,
		0.611588, 0.791132, 0.008373,
		29.667276, 41.223278, 20.950750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691469, 40.501614, 21.546146>,  <29.239164, 40.669487, 20.944889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691469, 40.501614, 21.546146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749731, 40.886936, 21.455967>,  <29.784689, 41.118130, 21.401859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749731, 40.886936, 21.455967>,  <29.691469, 40.501614, 21.546146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749731, 40.886936, 21.455967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409805, 0.148662, 0.899977,
		0.900469, -0.223476, -0.373115,
		0.145655, 0.963306, -0.225447,
		29.793428, 41.175926, 21.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400824, 40.606583, 21.592161>,  <29.691469, 40.501614, 21.546146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400824, 40.606583, 21.592161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216295, 40.960457, 21.619045>,  <30.105577, 41.172779, 21.635176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216295, 40.960457, 21.619045>,  <30.400824, 40.606583, 21.592161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216295, 40.960457, 21.619045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389133, 0.133670, 0.911432,
		0.797345, 0.446617, -0.405924,
		-0.461321, 0.884684, 0.067213,
		30.077900, 41.225861, 21.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902168, 41.162453, 21.765999>,  <30.400824, 40.606583, 21.592161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902168, 41.162453, 21.765999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536598, 41.274891, 21.883112>,  <30.317255, 41.342354, 21.953379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536598, 41.274891, 21.883112>,  <30.902168, 41.162453, 21.765999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536598, 41.274891, 21.883112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370324, 0.282263, 0.884979,
		0.166125, 0.917230, -0.362065,
		-0.913927, 0.281098, 0.292781,
		30.262421, 41.359219, 21.970947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092613, 41.656906, 22.341022>,  <30.902168, 41.162453, 21.765999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092613, 41.656906, 22.341022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704998, 41.569279, 22.386587>,  <30.472429, 41.516705, 22.413925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704998, 41.569279, 22.386587>,  <31.092613, 41.656906, 22.341022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704998, 41.569279, 22.386587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149729, -0.154522, 0.976578,
		-0.196334, 0.963396, 0.182539,
		-0.969038, -0.219066, 0.113910,
		30.414288, 41.503559, 22.420759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252638, 42.349380, 22.034309>,  <31.092613, 41.656906, 22.341022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252638, 42.349380, 22.034309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629040, 42.480679, 22.001398>,  <31.854881, 42.559456, 21.981651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629040, 42.480679, 22.001398>,  <31.252638, 42.349380, 22.034309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629040, 42.480679, 22.001398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112384, 0.073799, -0.990921,
		-0.319190, 0.941706, 0.106334,
		0.941003, 0.328243, -0.082277,
		31.911341, 42.579151, 21.976715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206987, 42.799751, 21.432072>,  <31.252638, 42.349380, 22.034309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206987, 42.799751, 21.432072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588818, 42.683636, 21.458946>,  <31.817917, 42.613964, 21.475071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588818, 42.683636, 21.458946>,  <31.206987, 42.799751, 21.432072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588818, 42.683636, 21.458946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035258, -0.113863, -0.992871,
		0.295872, 0.950140, -0.098456,
		0.954577, -0.290292, 0.067189,
		31.875191, 42.596550, 21.479103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691891, 43.187057, 20.984066>,  <31.206987, 42.799751, 21.432072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691891, 43.187057, 20.984066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867805, 42.839867, 21.076334>,  <31.973354, 42.631554, 21.131695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867805, 42.839867, 21.076334>,  <31.691891, 43.187057, 20.984066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867805, 42.839867, 21.076334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275959, -0.113818, -0.954407,
		0.854654, 0.483393, 0.189469,
		0.439789, -0.867973, 0.230672,
		31.999743, 42.579475, 21.145536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227947, 43.241501, 20.573647>,  <31.691891, 43.187057, 20.984066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227947, 43.241501, 20.573647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234219, 42.853970, 20.672546>,  <32.237980, 42.621452, 20.731886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234219, 42.853970, 20.672546>,  <32.227947, 43.241501, 20.573647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234219, 42.853970, 20.672546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223449, -0.237629, -0.945306,
		0.974589, 0.070070, 0.212757,
		0.015680, -0.968825, 0.247247,
		32.238922, 42.563320, 20.746721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864815, 43.010330, 20.371775>,  <32.227947, 43.241501, 20.573647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864815, 43.010330, 20.371775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636478, 42.682117, 20.383575>,  <32.499477, 42.485191, 20.390656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636478, 42.682117, 20.383575>,  <32.864815, 43.010330, 20.371775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636478, 42.682117, 20.383575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316540, -0.253088, -0.914193,
		0.757590, -0.512520, 0.404204,
		-0.570842, -0.820530, 0.029504,
		32.465225, 42.435959, 20.392427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310143, 42.480640, 20.257607>,  <32.864815, 43.010330, 20.371775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310143, 42.480640, 20.257607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945259, 42.354671, 20.152765>,  <32.726330, 42.279091, 20.089861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945259, 42.354671, 20.152765>,  <33.310143, 42.480640, 20.257607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945259, 42.354671, 20.152765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351906, -0.274556, -0.894864,
		0.209853, -0.908538, 0.361276,
		-0.912208, -0.314925, -0.262103,
		32.671597, 42.260193, 20.074135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477489, 41.922405, 19.847612>,  <33.310143, 42.480640, 20.257607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477489, 41.922405, 19.847612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093025, 41.956913, 19.742750>,  <32.862347, 41.977619, 19.679832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093025, 41.956913, 19.742750>,  <33.477489, 41.922405, 19.847612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093025, 41.956913, 19.742750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206341, -0.406179, -0.890192,
		-0.183276, -0.909712, 0.372603,
		-0.961163, 0.086267, -0.262154,
		32.804676, 41.982792, 19.664104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416107, 41.334450, 19.425173>,  <33.477489, 41.922405, 19.847612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416107, 41.334450, 19.425173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108498, 41.584068, 19.369797>,  <32.923931, 41.733837, 19.336571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108498, 41.584068, 19.369797>,  <33.416107, 41.334450, 19.425173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108498, 41.584068, 19.369797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001626, -0.214667, -0.976686,
		-0.639213, -0.751324, 0.164070,
		-0.769028, 0.624044, -0.138440,
		32.877789, 41.771282, 19.328264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773090, 40.942558, 19.212870>,  <33.416107, 41.334450, 19.425173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773090, 40.942558, 19.212870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743217, 41.321922, 19.089622>,  <32.725296, 41.549541, 19.015675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743217, 41.321922, 19.089622>,  <32.773090, 40.942558, 19.212870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743217, 41.321922, 19.089622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156349, -0.316293, -0.935689,
		-0.984875, -0.021702, 0.171904,
		-0.074679, 0.948413, -0.308116,
		32.720814, 41.606445, 18.997187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206623, 40.972424, 18.730457>,  <32.773090, 40.942558, 19.212870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206623, 40.972424, 18.730457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418804, 41.304413, 18.661457>,  <32.546112, 41.503609, 18.620056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418804, 41.304413, 18.661457>,  <32.206623, 40.972424, 18.730457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418804, 41.304413, 18.661457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049260, -0.233327, -0.971150,
		-0.846279, 0.506656, -0.164654,
		0.530457, 0.829975, -0.172502,
		32.577942, 41.553406, 18.609707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930353, 41.176853, 18.158936>,  <32.206623, 40.972424, 18.730457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930353, 41.176853, 18.158936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285175, 41.361519, 18.159388>,  <32.498070, 41.472317, 18.159658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285175, 41.361519, 18.159388>,  <31.930353, 41.176853, 18.158936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285175, 41.361519, 18.159388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075658, -0.142962, -0.986832,
		-0.455419, 0.875461, -0.161743,
		0.887057, 0.461660, 0.001128,
		32.551292, 41.500015, 18.159725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034782, 41.721054, 17.600773>,  <31.930353, 41.176853, 18.158936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034782, 41.721054, 17.600773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418533, 41.656693, 17.693468>,  <32.648785, 41.618076, 17.749086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418533, 41.656693, 17.693468>,  <32.034782, 41.721054, 17.600773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418533, 41.656693, 17.693468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242443, 0.050149, -0.968869,
		0.144273, 0.985695, 0.087122,
		0.959378, -0.160904, 0.231740,
		32.706348, 41.608421, 17.762991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409603, 42.143578, 17.211084>,  <32.034782, 41.721054, 17.600773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409603, 42.143578, 17.211084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671131, 41.857235, 17.309114>,  <32.828049, 41.685429, 17.367933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671131, 41.857235, 17.309114>,  <32.409603, 42.143578, 17.211084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671131, 41.857235, 17.309114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266532, -0.085242, -0.960049,
		0.708153, 0.693020, 0.135067,
		0.653820, -0.715861, 0.245077,
		32.867279, 41.642475, 17.382637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121563, 42.320156, 17.015692>,  <32.409603, 42.143578, 17.211084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121563, 42.320156, 17.015692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140518, 41.921650, 17.044542>,  <33.151890, 41.682545, 17.061853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140518, 41.921650, 17.044542>,  <33.121563, 42.320156, 17.015692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140518, 41.921650, 17.044542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582145, -0.031134, -0.812489,
		0.811703, 0.080491, 0.578498,
		0.047387, -0.996269, 0.072129,
		33.154736, 41.622768, 17.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.970001, 34.329945, 19.538322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654427, 34.572002, 19.580996>,  <32.465084, 34.717236, 19.606600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654427, 34.572002, 19.580996>,  <32.970001, 34.329945, 19.538322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654427, 34.572002, 19.580996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321358, 0.258352, 0.911034,
		0.523747, 0.753029, -0.398292,
		-0.788935, 0.605145, 0.106681,
		32.417747, 34.753548, 19.612999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316990, 34.913181, 19.720871>,  <32.970001, 34.329945, 19.538322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316990, 34.913181, 19.720871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.932823, 34.977856, 19.811602>,  <32.702324, 35.016659, 19.866039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.932823, 34.977856, 19.811602>,  <33.316990, 34.913181, 19.720871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932823, 34.977856, 19.811602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277756, 0.617414, 0.735969,
		-0.021052, 0.769843, -0.637886,
		-0.960421, 0.161683, 0.226826,
		32.644695, 35.026360, 19.879650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271748, 35.686234, 19.764431>,  <33.316990, 34.913181, 19.720871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271748, 35.686234, 19.764431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984001, 35.495495, 19.966473>,  <32.811352, 35.381050, 20.087698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984001, 35.495495, 19.966473>,  <33.271748, 35.686234, 19.764431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984001, 35.495495, 19.966473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262552, 0.486560, 0.833262,
		-0.643101, 0.732037, -0.224818,
		-0.719366, -0.476845, 0.505105,
		32.768192, 35.352440, 20.118004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157486, 36.171822, 20.214920>,  <33.271748, 35.686234, 19.764431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157486, 36.171822, 20.214920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.987164, 35.844860, 20.370121>,  <32.884972, 35.648685, 20.463242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.987164, 35.844860, 20.370121>,  <33.157486, 36.171822, 20.214920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987164, 35.844860, 20.370121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194887, 0.335904, 0.921514,
		-0.883578, 0.468001, 0.016271,
		-0.425804, -0.817401, 0.388004,
		32.859421, 35.599640, 20.486523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618843, 36.383263, 20.673246>,  <33.157486, 36.171822, 20.214920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618843, 36.383263, 20.673246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709129, 36.016811, 20.805765>,  <32.763302, 35.796940, 20.885277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709129, 36.016811, 20.805765>,  <32.618843, 36.383263, 20.673246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709129, 36.016811, 20.805765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084415, 0.357185, 0.930211,
		-0.970530, -0.181994, 0.157957,
		0.225713, -0.916132, 0.331295,
		32.776844, 35.741970, 20.905153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529221, 36.434784, 21.322676>,  <32.618843, 36.383263, 20.673246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529221, 36.434784, 21.322676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714890, 36.081947, 21.354826>,  <32.826290, 35.870247, 21.374115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714890, 36.081947, 21.354826>,  <32.529221, 36.434784, 21.322676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714890, 36.081947, 21.354826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292133, 0.238122, 0.926259,
		-0.836185, -0.406461, 0.368217,
		0.464168, -0.882093, 0.080373,
		32.854141, 35.817318, 21.378939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392540, 36.222187, 22.020077>,  <32.529221, 36.434784, 21.322676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392540, 36.222187, 22.020077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699738, 35.992035, 21.907558>,  <32.884056, 35.853943, 21.840048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699738, 35.992035, 21.907558>,  <32.392540, 36.222187, 22.020077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699738, 35.992035, 21.907558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374826, 0.047657, 0.925870,
		-0.519322, -0.816496, 0.252267,
		0.767991, -0.575381, -0.281294,
		32.930134, 35.819420, 21.823170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402245, 35.776913, 22.564867>,  <32.392540, 36.222187, 22.020077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402245, 35.776913, 22.564867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763493, 35.802189, 22.394983>,  <32.980244, 35.817352, 22.293053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763493, 35.802189, 22.394983>,  <32.402245, 35.776913, 22.564867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763493, 35.802189, 22.394983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405855, 0.197296, 0.892388,
		0.140183, -0.978305, 0.152536,
		0.903122, 0.063190, -0.424708,
		33.034428, 35.821144, 22.267570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807762, 35.389256, 23.018631>,  <32.402245, 35.776913, 22.564867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807762, 35.389256, 23.018631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051678, 35.621475, 22.802811>,  <33.198029, 35.760807, 22.673319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051678, 35.621475, 22.802811>,  <32.807762, 35.389256, 23.018631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051678, 35.621475, 22.802811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457939, 0.297544, 0.837711,
		0.646875, -0.757910, -0.084418,
		0.609792, 0.580552, -0.539550,
		33.234615, 35.795639, 22.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432323, 35.284008, 23.173548>,  <32.807762, 35.389256, 23.018631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432323, 35.284008, 23.173548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.473015, 35.656052, 23.032383>,  <33.497429, 35.879276, 22.947683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.473015, 35.656052, 23.032383>,  <33.432323, 35.284008, 23.173548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473015, 35.656052, 23.032383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519874, 0.252756, 0.815994,
		0.848164, -0.266478, -0.457828,
		0.101726, 0.930110, -0.352914,
		33.503532, 35.935085, 22.926508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106693, 35.467648, 23.259430>,  <33.432323, 35.284008, 23.173548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106693, 35.467648, 23.259430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934887, 35.826698, 23.219877>,  <33.831802, 36.042130, 23.196146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934887, 35.826698, 23.219877>,  <34.106693, 35.467648, 23.259430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934887, 35.826698, 23.219877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529288, 0.338948, 0.777797,
		0.731689, 0.281740, -0.620688,
		-0.429518, 0.897628, -0.098883,
		33.806030, 36.095985, 23.190212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674023, 35.934971, 23.306932>,  <34.106693, 35.467648, 23.259430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674023, 35.934971, 23.306932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365501, 36.178772, 23.380245>,  <34.180389, 36.325054, 23.424232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365501, 36.178772, 23.380245>,  <34.674023, 35.934971, 23.306932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365501, 36.178772, 23.380245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480814, 0.369315, 0.795251,
		0.417018, 0.701508, -0.577912,
		-0.771307, 0.609502, 0.183284,
		34.134109, 36.361622, 23.435230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907898, 36.673084, 23.400427>,  <34.674023, 35.934971, 23.306932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907898, 36.673084, 23.400427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.560047, 36.631306, 23.593439>,  <34.351337, 36.606239, 23.709246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.560047, 36.631306, 23.593439>,  <34.907898, 36.673084, 23.400427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560047, 36.631306, 23.593439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431145, 0.315521, 0.845317,
		-0.240535, 0.943153, -0.229357,
		-0.869630, -0.104442, 0.482530,
		34.299156, 36.599972, 23.738197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047798, 37.139877, 23.869373>,  <34.907898, 36.673084, 23.400427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047798, 37.139877, 23.869373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712582, 36.959251, 23.991871>,  <34.511452, 36.850876, 24.065369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712582, 36.959251, 23.991871>,  <35.047798, 37.139877, 23.869373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712582, 36.959251, 23.991871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187486, 0.288774, 0.938860,
		-0.512389, 0.844217, -0.157342,
		-0.838037, -0.451562, 0.306243,
		34.461170, 36.823784, 24.083744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189095, 37.880566, 23.550539>,  <35.047798, 37.139877, 23.869373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189095, 37.880566, 23.550539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581173, 37.852882, 23.476318>,  <35.816422, 37.836273, 23.431786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581173, 37.852882, 23.476318>,  <35.189095, 37.880566, 23.550539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581173, 37.852882, 23.476318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194928, -0.171780, -0.965658,
		0.034956, 0.982702, -0.181868,
		0.980194, -0.069206, -0.185552,
		35.875233, 37.832119, 23.420652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326641, 38.299389, 22.941374>,  <35.189095, 37.880566, 23.550539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326641, 38.299389, 22.941374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595284, 38.003857, 22.963562>,  <35.756470, 37.826538, 22.976875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595284, 38.003857, 22.963562>,  <35.326641, 38.299389, 22.941374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595284, 38.003857, 22.963562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226131, -0.275700, -0.934267,
		0.705556, 0.614917, -0.352234,
		0.671607, -0.738828, 0.055470,
		35.796764, 37.782207, 22.980204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528526, 38.282513, 22.250170>,  <35.326641, 38.299389, 22.941374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528526, 38.282513, 22.250170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743069, 37.966244, 22.368256>,  <35.871796, 37.776482, 22.439108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743069, 37.966244, 22.368256>,  <35.528526, 38.282513, 22.250170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743069, 37.966244, 22.368256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040093, -0.325520, -0.944685,
		0.843037, 0.518526, -0.142895,
		0.536359, -0.790675, 0.295215,
		35.903976, 37.729042, 22.456820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116112, 38.186802, 21.760092>,  <35.528526, 38.282513, 22.250170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116112, 38.186802, 21.760092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027683, 37.848461, 21.954273>,  <35.974625, 37.645458, 22.070782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027683, 37.848461, 21.954273>,  <36.116112, 38.186802, 21.760092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027683, 37.848461, 21.954273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145973, -0.463462, -0.874011,
		0.964271, -0.264082, -0.021012,
		-0.221072, -0.845851, 0.485452,
		35.961361, 37.594707, 22.099909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494972, 37.697254, 21.442219>,  <36.116112, 38.186802, 21.760092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494972, 37.697254, 21.442219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198448, 37.504417, 21.628996>,  <36.020535, 37.388714, 21.741062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198448, 37.504417, 21.628996>,  <36.494972, 37.697254, 21.442219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198448, 37.504417, 21.628996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323754, -0.352567, -0.877998,
		0.587908, -0.802047, 0.105283,
		-0.741315, -0.482096, 0.466943,
		35.976055, 37.359787, 21.769079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589565, 37.041191, 21.110712>,  <36.494972, 37.697254, 21.442219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589565, 37.041191, 21.110712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219868, 37.040596, 21.263433>,  <35.998051, 37.040237, 21.355066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219868, 37.040596, 21.263433>,  <36.589565, 37.041191, 21.110712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219868, 37.040596, 21.263433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340475, -0.449313, -0.825951,
		0.172778, -0.893373, 0.414767,
		-0.924242, -0.001488, 0.381803,
		35.942596, 37.040150, 21.377974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336849, 36.404724, 20.909290>,  <36.589565, 37.041191, 21.110712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336849, 36.404724, 20.909290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002205, 36.570271, 21.052843>,  <35.801418, 36.669598, 21.138975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002205, 36.570271, 21.052843>,  <36.336849, 36.404724, 20.909290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002205, 36.570271, 21.052843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534173, -0.471146, -0.701912,
		-0.121409, -0.778934, 0.615241,
		-0.836612, 0.413864, 0.358884,
		35.751221, 36.694431, 21.160509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764950, 35.921417, 20.832191>,  <36.336849, 36.404724, 20.909290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764950, 35.921417, 20.832191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596447, 36.282261, 20.869600>,  <35.495346, 36.498768, 20.892046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596447, 36.282261, 20.869600>,  <35.764950, 35.921417, 20.832191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596447, 36.282261, 20.869600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637833, -0.221375, -0.737673,
		-0.644754, -0.370405, 0.668649,
		-0.421260, 0.902105, 0.093524,
		35.470070, 36.552891, 20.897657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952709, 35.866749, 20.833183>,  <35.764950, 35.921417, 20.832191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952709, 35.866749, 20.833183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045979, 36.236290, 20.711775>,  <35.101940, 36.458015, 20.638929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045979, 36.236290, 20.711775>,  <34.952709, 35.866749, 20.833183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045979, 36.236290, 20.711775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539486, -0.136793, -0.830808,
		-0.809065, 0.357467, 0.466509,
		0.233171, 0.923853, -0.303523,
		35.115929, 36.513447, 20.620718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382206, 36.075417, 20.494967>,  <34.952709, 35.866749, 20.833183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382206, 36.075417, 20.494967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660938, 36.334251, 20.371222>,  <34.828178, 36.489552, 20.296974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660938, 36.334251, 20.371222>,  <34.382206, 36.075417, 20.494967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660938, 36.334251, 20.371222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297057, -0.132213, -0.945662,
		-0.652826, 0.750866, 0.100091,
		0.696832, 0.647086, -0.309362,
		34.869987, 36.528378, 20.278414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123146, 36.799023, 20.146822>,  <34.382206, 36.075417, 20.494967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123146, 36.799023, 20.146822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483315, 36.680695, 20.019239>,  <34.699417, 36.609699, 19.942690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483315, 36.680695, 20.019239>,  <34.123146, 36.799023, 20.146822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483315, 36.680695, 20.019239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312390, 0.070569, -0.947329,
		0.302748, 0.952633, -0.028869,
		0.900420, -0.295821, -0.318958,
		34.753441, 36.591949, 19.923552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237041, 37.216202, 19.689074>,  <34.123146, 36.799023, 20.146822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237041, 37.216202, 19.689074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513123, 36.945248, 19.587271>,  <34.678772, 36.782677, 19.526190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513123, 36.945248, 19.587271>,  <34.237041, 37.216202, 19.689074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513123, 36.945248, 19.587271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199484, 0.159969, -0.966755,
		0.695574, 0.718029, -0.024716,
		0.690204, -0.677381, -0.254506,
		34.720184, 36.742035, 19.510920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519997, 37.471504, 19.157402>,  <34.237041, 37.216202, 19.689074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519997, 37.471504, 19.157402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610519, 37.083649, 19.120319>,  <34.664833, 36.850937, 19.098070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610519, 37.083649, 19.120319>,  <34.519997, 37.471504, 19.157402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610519, 37.083649, 19.120319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145515, 0.060451, -0.987507,
		0.963126, 0.236969, -0.127416,
		0.226306, -0.969635, -0.092704,
		34.678410, 36.792759, 19.092508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885567, 37.429710, 18.539461>,  <34.519997, 37.471504, 19.157402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885567, 37.429710, 18.539461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784454, 37.047768, 18.601875>,  <34.723785, 36.818604, 18.639324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784454, 37.047768, 18.601875>,  <34.885567, 37.429710, 18.539461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784454, 37.047768, 18.601875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363027, -0.055887, -0.930101,
		0.896835, -0.291759, -0.332512,
		-0.252782, -0.954858, 0.156038,
		34.708618, 36.761311, 18.648687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476028, 37.581837, 18.023851>,  <34.885567, 37.429710, 18.539461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476028, 37.581837, 18.023851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501617, 37.874920, 17.752838>,  <35.516972, 38.050770, 17.590229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501617, 37.874920, 17.752838>,  <35.476028, 37.581837, 18.023851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501617, 37.874920, 17.752838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390681, 0.606351, 0.692609,
		0.918301, -0.309006, -0.247465,
		0.063970, 0.732703, -0.677535,
		35.520809, 38.094730, 17.549578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180607, 37.800640, 18.035580>,  <35.476028, 37.581837, 18.023851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180607, 37.800640, 18.035580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957348, 38.102016, 17.896559>,  <35.823391, 38.282845, 17.813147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957348, 38.102016, 17.896559>,  <36.180607, 37.800640, 18.035580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957348, 38.102016, 17.896559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338049, 0.589016, 0.734019,
		0.757755, 0.292203, -0.583460,
		-0.558150, 0.753444, -0.347551,
		35.789902, 38.328049, 17.792294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542744, 38.412830, 18.280708>,  <36.180607, 37.800640, 18.035580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542744, 38.412830, 18.280708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229031, 38.602623, 18.120825>,  <36.040802, 38.716499, 18.024895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229031, 38.602623, 18.120825>,  <36.542744, 38.412830, 18.280708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229031, 38.602623, 18.120825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188273, 0.795912, 0.575393,
		0.591150, 0.376015, -0.713551,
		-0.784280, 0.474486, -0.399709,
		35.993748, 38.744968, 18.000912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679699, 39.184963, 17.873625>,  <36.542744, 38.412830, 18.280708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679699, 39.184963, 17.873625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304382, 39.165947, 18.010649>,  <36.079193, 39.154537, 18.092863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304382, 39.165947, 18.010649>,  <36.679699, 39.184963, 17.873625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304382, 39.165947, 18.010649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200366, 0.732614, 0.650485,
		-0.281887, 0.678982, -0.677882,
		-0.938293, -0.047539, 0.342559,
		36.022896, 39.151684, 18.113417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445686, 39.899380, 17.944233>,  <36.679699, 39.184963, 17.873625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445686, 39.899380, 17.944233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177540, 39.704624, 18.168215>,  <36.016651, 39.587772, 18.302605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177540, 39.704624, 18.168215>,  <36.445686, 39.899380, 17.944233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177540, 39.704624, 18.168215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190379, 0.616510, 0.763984,
		-0.717192, 0.618752, -0.320594,
		-0.670366, -0.486889, 0.559954,
		35.976429, 39.558559, 18.336201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845917, 40.356514, 18.054110>,  <36.445686, 39.899380, 17.944233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845917, 40.356514, 18.054110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844109, 40.090229, 18.352587>,  <35.843025, 39.930458, 18.531673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844109, 40.090229, 18.352587>,  <35.845917, 40.356514, 18.054110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844109, 40.090229, 18.352587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022475, 0.746082, 0.665475,
		-0.999737, -0.013763, -0.018334,
		-0.004519, -0.665712, 0.746195,
		35.842754, 39.890514, 18.576445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448338, 40.775200, 18.606586>,  <35.845917, 40.356514, 18.054110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448338, 40.775200, 18.606586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626366, 40.459419, 18.775667>,  <35.733181, 40.269951, 18.877115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626366, 40.459419, 18.775667>,  <35.448338, 40.775200, 18.606586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626366, 40.459419, 18.775667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209038, 0.550583, 0.808184,
		-0.870756, -0.271338, 0.410073,
		0.445070, -0.789452, 0.422703,
		35.759888, 40.222584, 18.902477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260551, 40.813793, 19.288143>,  <35.448338, 40.775200, 18.606586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260551, 40.813793, 19.288143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593792, 40.592552, 19.289574>,  <35.793736, 40.459808, 19.290432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593792, 40.592552, 19.289574>,  <35.260551, 40.813793, 19.288143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593792, 40.592552, 19.289574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337035, 0.512754, 0.789615,
		-0.438575, -0.656625, 0.613593,
		0.833102, -0.553107, 0.003576,
		35.843723, 40.426620, 19.290646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368977, 40.690327, 19.967714>,  <35.260551, 40.813793, 19.288143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368977, 40.690327, 19.967714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715549, 40.604092, 19.787571>,  <35.923492, 40.552349, 19.679485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715549, 40.604092, 19.787571>,  <35.368977, 40.690327, 19.967714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715549, 40.604092, 19.787571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499294, 0.377807, 0.779723,
		0.002050, -0.900436, 0.434984,
		0.866430, -0.215587, -0.450357,
		35.975479, 40.539417, 19.652464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834351, 40.133675, 20.383635>,  <35.368977, 40.690327, 19.967714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834351, 40.133675, 20.383635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060040, 40.383751, 20.167936>,  <36.195454, 40.533798, 20.038517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060040, 40.383751, 20.167936>,  <35.834351, 40.133675, 20.383635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060040, 40.383751, 20.167936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587952, 0.154270, 0.794048,
		0.579624, -0.765070, -0.280542,
		0.564224, 0.625194, -0.539244,
		36.229305, 40.571308, 20.006163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481754, 40.028576, 20.610264>,  <35.834351, 40.133675, 20.383635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481754, 40.028576, 20.610264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.543430, 40.377869, 20.425356>,  <36.580437, 40.587444, 20.314411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.543430, 40.377869, 20.425356>,  <36.481754, 40.028576, 20.610264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543430, 40.377869, 20.425356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519075, 0.326506, 0.789908,
		0.840706, -0.361749, -0.402928,
		0.154189, 0.873231, -0.462270,
		36.589687, 40.639839, 20.286674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177216, 40.200317, 20.773254>,  <36.481754, 40.028576, 20.610264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177216, 40.200317, 20.773254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002224, 40.540413, 20.656151>,  <36.897228, 40.744469, 20.585888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002224, 40.540413, 20.656151>,  <37.177216, 40.200317, 20.773254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002224, 40.540413, 20.656151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410697, 0.478550, 0.776092,
		0.799961, 0.219291, -0.558546,
		-0.437482, 0.850236, -0.292759,
		36.870979, 40.795483, 20.568323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692390, 40.807156, 20.734835>,  <37.177216, 40.200317, 20.773254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692390, 40.807156, 20.734835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325710, 40.953598, 20.798870>,  <37.105701, 41.041462, 20.837292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325710, 40.953598, 20.798870>,  <37.692390, 40.807156, 20.734835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325710, 40.953598, 20.798870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362419, 0.593077, 0.718966,
		0.168272, 0.717095, -0.676357,
		-0.916699, 0.366107, 0.160091,
		37.050701, 41.063431, 20.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773243, 41.515991, 20.738789>,  <37.692390, 40.807156, 20.734835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773243, 41.515991, 20.738789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426781, 41.440456, 20.923880>,  <37.218903, 41.395138, 21.034935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426781, 41.440456, 20.923880>,  <37.773243, 41.515991, 20.738789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426781, 41.440456, 20.923880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162178, 0.769570, 0.617624,
		-0.472732, 0.610003, -0.635942,
		-0.866154, -0.188835, 0.462729,
		37.166935, 41.383804, 21.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.359818, 41.089737, 16.655697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993248, 40.951523, 16.736462>,  <33.773308, 40.868595, 16.784920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993248, 40.951523, 16.736462>,  <34.359818, 41.089737, 16.655697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993248, 40.951523, 16.736462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, -0.271934, -0.956219,
		0.385317, -0.898140, 0.211839,
		-0.916425, -0.345538, 0.201912,
		33.718319, 40.847862, 16.797035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353558, 40.375214, 16.491585>,  <34.359818, 41.089737, 16.655697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353558, 40.375214, 16.491585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001980, 40.557770, 16.436195>,  <33.791035, 40.667301, 16.402962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001980, 40.557770, 16.436195>,  <34.353558, 40.375214, 16.491585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001980, 40.557770, 16.436195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003095, -0.295799, -0.955245,
		-0.476923, -0.839174, 0.261402,
		-0.878940, 0.456387, -0.138476,
		33.738297, 40.694687, 16.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257431, 40.047432, 16.000494>,  <34.353558, 40.375214, 16.491585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257431, 40.047432, 16.000494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925762, 40.270927, 16.007261>,  <33.726761, 40.405025, 16.011322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925762, 40.270927, 16.007261>,  <34.257431, 40.047432, 16.000494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925762, 40.270927, 16.007261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242780, -0.332696, -0.911247,
		-0.503525, -0.759684, 0.411513,
		-0.829168, 0.558743, 0.016915,
		33.677010, 40.438549, 16.012337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674564, 39.538540, 16.001944>,  <34.257431, 40.047432, 16.000494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674564, 39.538540, 16.001944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562180, 39.895241, 15.860045>,  <33.494747, 40.109261, 15.774907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562180, 39.895241, 15.860045>,  <33.674564, 39.538540, 16.001944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562180, 39.895241, 15.860045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336935, -0.437760, -0.833571,
		-0.898628, -0.114679, 0.423457,
		-0.280966, 0.891748, -0.354744,
		33.477890, 40.162766, 15.753622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990925, 39.353882, 15.812261>,  <33.674564, 39.538540, 16.001944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990925, 39.353882, 15.812261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117065, 39.682457, 15.622192>,  <33.192749, 39.879604, 15.508151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117065, 39.682457, 15.622192>,  <32.990925, 39.353882, 15.812261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117065, 39.682457, 15.622192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514028, -0.273042, -0.813156,
		-0.797702, 0.500681, 0.336140,
		0.315351, 0.821442, -0.475170,
		33.211670, 39.928890, 15.479641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379925, 39.489491, 15.425101>,  <32.990925, 39.353882, 15.812261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379925, 39.489491, 15.425101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676628, 39.698544, 15.256983>,  <32.854652, 39.823975, 15.156112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676628, 39.698544, 15.256983>,  <32.379925, 39.489491, 15.425101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676628, 39.698544, 15.256983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360439, -0.217832, -0.906991,
		-0.565573, 0.824263, 0.026796,
		0.741762, 0.522628, -0.420296,
		32.899158, 39.855331, 15.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031368, 39.995987, 14.926008>,  <32.379925, 39.489491, 15.425101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031368, 39.995987, 14.926008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409950, 39.914066, 14.826184>,  <32.637100, 39.864914, 14.766290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409950, 39.914066, 14.826184>,  <32.031368, 39.995987, 14.926008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409950, 39.914066, 14.826184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302611, -0.293469, -0.906809,
		0.112481, 0.933772, -0.339731,
		0.946454, -0.204805, -0.249560,
		32.693886, 39.852623, 14.751316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092731, 40.174446, 14.260938>,  <32.031368, 39.995987, 14.926008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092731, 40.174446, 14.260938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421803, 39.949127, 14.291644>,  <32.619247, 39.813938, 14.310068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421803, 39.949127, 14.291644>,  <32.092731, 40.174446, 14.260938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421803, 39.949127, 14.291644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092409, -0.265735, -0.959607,
		0.560942, 0.782358, -0.270668,
		0.822682, -0.563296, 0.076765,
		32.668606, 39.780140, 14.314673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555077, 40.287155, 13.593413>,  <32.092731, 40.174446, 14.260938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555077, 40.287155, 13.593413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669273, 39.939590, 13.755144>,  <32.737793, 39.731052, 13.852182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669273, 39.939590, 13.755144>,  <32.555077, 40.287155, 13.593413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669273, 39.939590, 13.755144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078946, -0.441774, -0.893646,
		0.955124, 0.223210, -0.194721,
		0.285493, -0.868915, 0.404327,
		32.754921, 39.678917, 13.876442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813560, 40.055954, 13.035221>,  <32.555077, 40.287155, 13.593413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813560, 40.055954, 13.035221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.802288, 39.739750, 13.279943>,  <32.795525, 39.550030, 13.426777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.802288, 39.739750, 13.279943>,  <32.813560, 40.055954, 13.035221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802288, 39.739750, 13.279943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003440, -0.611969, -0.790875,
		0.999597, -0.024395, 0.014528,
		-0.028185, -0.790506, 0.611806,
		32.793831, 39.502598, 13.463485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328354, 39.560558, 12.987295>,  <32.813560, 40.055954, 13.035221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328354, 39.560558, 12.987295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000050, 39.373756, 13.118905>,  <32.803066, 39.261677, 13.197871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000050, 39.373756, 13.118905>,  <33.328354, 39.560558, 12.987295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000050, 39.373756, 13.118905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022873, -0.548629, -0.835753,
		0.570811, -0.693481, 0.439612,
		-0.820763, -0.467002, 0.329026,
		32.753822, 39.233654, 13.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512321, 38.822289, 12.793248>,  <33.328354, 39.560558, 12.987295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512321, 38.822289, 12.793248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119831, 38.871170, 12.852936>,  <32.884338, 38.900501, 12.888748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119831, 38.871170, 12.852936>,  <33.512321, 38.822289, 12.793248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119831, 38.871170, 12.852936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192826, -0.638981, -0.744662,
		0.004348, -0.759453, 0.650548,
		-0.981224, 0.122205, 0.149221,
		32.825462, 38.907833, 12.897702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247452, 38.161774, 12.895618>,  <33.512321, 38.822289, 12.793248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247452, 38.161774, 12.895618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936241, 38.388962, 12.788221>,  <32.749516, 38.525272, 12.723783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936241, 38.388962, 12.788221>,  <33.247452, 38.161774, 12.895618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936241, 38.388962, 12.788221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247900, -0.670259, -0.699499,
		-0.577250, -0.477671, 0.662279,
		-0.778028, 0.567965, -0.268492,
		32.702831, 38.559353, 12.707673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270947, 37.587921, 12.518056>,  <33.247452, 38.161774, 12.895618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270947, 37.587921, 12.518056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597496, 37.435577, 12.344401>,  <33.793427, 37.344173, 12.240209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597496, 37.435577, 12.344401>,  <33.270947, 37.587921, 12.518056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597496, 37.435577, 12.344401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573705, 0.448584, 0.685299,
		-0.066254, -0.808529, 0.584714,
		0.816378, -0.380858, -0.434137,
		33.842411, 37.321320, 12.214160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719357, 37.010357, 12.568205>,  <33.270947, 37.587921, 12.518056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719357, 37.010357, 12.568205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823040, 36.630375, 12.498467>,  <33.885250, 36.402386, 12.456625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823040, 36.630375, 12.498467>,  <33.719357, 37.010357, 12.568205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823040, 36.630375, 12.498467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047725, -0.167695, 0.984683,
		-0.964641, -0.263562, 0.001868,
		0.259212, -0.949955, -0.174344,
		33.900803, 36.345390, 12.446164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363132, 36.392845, 12.876842>,  <33.719357, 37.010357, 12.568205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363132, 36.392845, 12.876842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756531, 36.329700, 12.841469>,  <33.992569, 36.291813, 12.820246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756531, 36.329700, 12.841469>,  <33.363132, 36.392845, 12.876842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756531, 36.329700, 12.841469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073213, -0.099748, 0.992315,
		-0.165475, -0.982409, -0.086544,
		0.983493, -0.157867, -0.088431,
		34.051579, 36.282341, 12.814939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544369, 36.061970, 13.562818>,  <33.363132, 36.392845, 12.876842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544369, 36.061970, 13.562818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874886, 36.207687, 13.390989>,  <34.073196, 36.295116, 13.287892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874886, 36.207687, 13.390989>,  <33.544369, 36.061970, 13.562818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874886, 36.207687, 13.390989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379244, 0.204040, 0.902520,
		0.416430, -0.908658, 0.030442,
		0.826293, 0.364291, -0.429572,
		34.122772, 36.316975, 13.262118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137222, 35.797249, 13.945160>,  <33.544369, 36.061970, 13.562818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137222, 35.797249, 13.945160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276306, 36.129696, 13.771564>,  <34.359756, 36.329163, 13.667406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276306, 36.129696, 13.771564>,  <34.137222, 35.797249, 13.945160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276306, 36.129696, 13.771564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575626, 0.176145, 0.798516,
		0.740102, -0.527469, -0.417163,
		0.347711, 0.831114, -0.433990,
		34.380619, 36.379028, 13.641366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814449, 35.740452, 14.182653>,  <34.137222, 35.797249, 13.945160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814449, 35.740452, 14.182653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.771358, 36.108521, 14.032093>,  <34.745502, 36.329361, 13.941757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.771358, 36.108521, 14.032093>,  <34.814449, 35.740452, 14.182653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771358, 36.108521, 14.032093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470101, 0.380752, 0.796262,
		0.876013, -0.091165, -0.473592,
		-0.107730, 0.920172, -0.376401,
		34.739040, 36.384571, 13.919173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426113, 36.111919, 14.235897>,  <34.814449, 35.740452, 14.182653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426113, 36.111919, 14.235897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.165325, 36.414612, 14.216721>,  <35.008854, 36.596226, 14.205215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.165325, 36.414612, 14.216721>,  <35.426113, 36.111919, 14.235897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165325, 36.414612, 14.216721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434248, 0.424465, 0.794517,
		0.621584, 0.497181, -0.605346,
		-0.651968, 0.756730, -0.047941,
		34.969734, 36.641632, 14.202338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839481, 36.643013, 14.297997>,  <35.426113, 36.111919, 14.235897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839481, 36.643013, 14.297997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466171, 36.760223, 14.381069>,  <35.242184, 36.830551, 14.430912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466171, 36.760223, 14.381069>,  <35.839481, 36.643013, 14.297997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466171, 36.760223, 14.381069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307886, 0.354989, 0.882716,
		0.184937, 0.887759, -0.421523,
		-0.933276, 0.293028, 0.207678,
		35.186188, 36.848133, 14.443373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967690, 37.196678, 14.577763>,  <35.839481, 36.643013, 14.297997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967690, 37.196678, 14.577763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.593380, 37.128521, 14.701239>,  <35.368793, 37.087627, 14.775324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.593380, 37.128521, 14.701239>,  <35.967690, 37.196678, 14.577763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593380, 37.128521, 14.701239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218134, 0.408065, 0.886510,
		-0.277022, 0.896911, -0.344688,
		-0.935776, -0.170395, 0.308690,
		35.312649, 37.077404, 14.793845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826874, 37.816448, 14.848487>,  <35.967690, 37.196678, 14.577763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826874, 37.816448, 14.848487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543499, 37.584232, 15.009033>,  <35.373474, 37.444901, 15.105361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543499, 37.584232, 15.009033>,  <35.826874, 37.816448, 14.848487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543499, 37.584232, 15.009033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135889, 0.445847, 0.884734,
		-0.692572, 0.681316, -0.236964,
		-0.708433, -0.580542, 0.401365,
		35.330971, 37.410069, 15.129443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388561, 38.311314, 15.285410>,  <35.826874, 37.816448, 14.848487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388561, 38.311314, 15.285410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336334, 37.929035, 15.390931>,  <35.304996, 37.699669, 15.454244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336334, 37.929035, 15.390931>,  <35.388561, 38.311314, 15.285410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336334, 37.929035, 15.390931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068080, 0.256811, 0.964061,
		-0.989099, 0.143839, 0.031532,
		-0.130571, -0.955698, 0.263804,
		35.297161, 37.642326, 15.470072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876244, 38.342934, 15.738258>,  <35.388561, 38.311314, 15.285410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876244, 38.342934, 15.738258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088863, 38.013153, 15.815951>,  <35.216434, 37.815285, 15.862567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088863, 38.013153, 15.815951>,  <34.876244, 38.342934, 15.738258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088863, 38.013153, 15.815951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059269, 0.264953, 0.962438,
		-0.844949, -0.500074, 0.189701,
		0.531552, -0.824455, 0.194233,
		35.248329, 37.765816, 15.874221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471493, 38.053734, 16.298513>,  <34.876244, 38.342934, 15.738258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471493, 38.053734, 16.298513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831024, 37.879612, 16.318981>,  <35.046741, 37.775139, 16.331263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831024, 37.879612, 16.318981>,  <34.471493, 38.053734, 16.298513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831024, 37.879612, 16.318981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065813, 0.249463, 0.966145,
		-0.433329, -0.865033, 0.252873,
		0.898830, -0.435301, 0.051169,
		35.100674, 37.749023, 16.334332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532883, 37.571667, 16.834808>,  <34.471493, 38.053734, 16.298513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532883, 37.571667, 16.834808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900471, 37.713619, 16.766045>,  <35.121025, 37.798790, 16.724787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900471, 37.713619, 16.766045>,  <34.532883, 37.571667, 16.834808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900471, 37.713619, 16.766045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078011, 0.263726, 0.961438,
		0.386531, -0.896945, 0.214672,
		0.918971, 0.354879, -0.171910,
		35.176163, 37.820084, 16.714472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824821, 37.474583, 17.442131>,  <34.532883, 37.571667, 16.834808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824821, 37.474583, 17.442131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075825, 37.723267, 17.254641>,  <35.226429, 37.872478, 17.142147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075825, 37.723267, 17.254641>,  <34.824821, 37.474583, 17.442131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075825, 37.723267, 17.254641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159206, 0.486832, 0.858865,
		0.762157, -0.613571, 0.206512,
		0.627511, 0.621712, -0.468727,
		35.264076, 37.909779, 17.114023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987736, 37.012074, 17.908478>,  <34.824821, 37.474583, 17.442131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987736, 37.012074, 17.908478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729660, 36.772770, 18.098555>,  <34.574814, 36.629189, 18.212601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729660, 36.772770, 18.098555>,  <34.987736, 37.012074, 17.908478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729660, 36.772770, 18.098555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441971, -0.215076, -0.870864,
		0.623209, -0.771896, -0.125650,
		-0.645192, -0.598264, 0.475193,
		34.536102, 36.593292, 18.241112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029510, 36.317852, 17.500868>,  <34.987736, 37.012074, 17.908478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029510, 36.317852, 17.500868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681198, 36.294788, 17.696180>,  <34.472210, 36.280949, 17.813368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681198, 36.294788, 17.696180>,  <35.029510, 36.317852, 17.500868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681198, 36.294788, 17.696180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421043, -0.425393, -0.801102,
		0.253902, -0.903170, 0.346146,
		-0.870779, -0.057659, 0.488281,
		34.419964, 36.277493, 17.842665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831940, 35.599648, 17.547356>,  <35.029510, 36.317852, 17.500868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831940, 35.599648, 17.547356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491344, 35.794426, 17.625175>,  <34.286987, 35.911293, 17.671867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491344, 35.794426, 17.625175>,  <34.831940, 35.599648, 17.547356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491344, 35.794426, 17.625175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447371, -0.481058, -0.753951,
		-0.273546, -0.729016, 0.627462,
		-0.851488, 0.486949, 0.194549,
		34.235897, 35.940510, 17.683540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287792, 35.022465, 17.414024>,  <34.831940, 35.599648, 17.547356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287792, 35.022465, 17.414024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091339, 35.370392, 17.432819>,  <33.973469, 35.579147, 17.444096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091339, 35.370392, 17.432819>,  <34.287792, 35.022465, 17.414024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091339, 35.370392, 17.432819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653143, -0.332027, -0.680560,
		-0.576362, -0.364933, 0.731184,
		-0.491132, 0.869817, 0.046986,
		33.944000, 35.631336, 17.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531429, 34.809330, 17.618008>,  <34.287792, 35.022465, 17.414024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531429, 34.809330, 17.618008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590923, 35.157070, 17.429491>,  <33.626621, 35.365715, 17.316381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590923, 35.157070, 17.429491>,  <33.531429, 34.809330, 17.618008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590923, 35.157070, 17.429491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660553, -0.267323, -0.701576,
		-0.735899, 0.415663, 0.534488,
		0.148738, 0.869347, -0.471290,
		33.635544, 35.417873, 17.288105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875210, 35.096161, 17.354771>,  <33.531429, 34.809330, 17.618008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875210, 35.096161, 17.354771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132195, 35.275444, 17.106142>,  <33.286385, 35.383015, 16.956964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132195, 35.275444, 17.106142>,  <32.875210, 35.096161, 17.354771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132195, 35.275444, 17.106142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501209, -0.367800, -0.783271,
		-0.579679, 0.814762, -0.011655,
		0.642466, 0.448204, -0.621571,
		33.324936, 35.409904, 16.919670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404335, 35.331291, 16.859379>,  <32.875210, 35.096161, 17.354771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404335, 35.331291, 16.859379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767738, 35.326374, 16.692308>,  <32.985783, 35.323425, 16.592066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767738, 35.326374, 16.692308>,  <32.404335, 35.331291, 16.859379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767738, 35.326374, 16.692308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372519, -0.476654, -0.796261,
		-0.189299, 0.879005, -0.437625,
		0.908513, -0.012292, -0.417676,
		33.040291, 35.322685, 16.567005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733332, 35.387321, 16.839952>,  <32.404335, 35.331291, 16.859379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733332, 35.387321, 16.839952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632135, 35.005856, 16.905094>,  <31.571417, 34.776978, 16.944180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632135, 35.005856, 16.905094>,  <31.733332, 35.387321, 16.839952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632135, 35.005856, 16.905094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207769, 0.110847, 0.971877,
		-0.944896, 0.279712, 0.170099,
		-0.252990, -0.953664, 0.162854,
		31.556238, 34.719757, 16.953951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190140, 35.413486, 17.432364>,  <31.733332, 35.387321, 16.839952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190140, 35.413486, 17.432364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362581, 35.053875, 17.401630>,  <31.466045, 34.838108, 17.383190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362581, 35.053875, 17.401630>,  <31.190140, 35.413486, 17.432364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362581, 35.053875, 17.401630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325248, 0.075407, 0.942617,
		-0.841643, -0.431354, 0.324915,
		0.431103, -0.899026, -0.076831,
		31.491913, 34.784168, 17.378580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952797, 34.982613, 17.982706>,  <31.190140, 35.413486, 17.432364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952797, 34.982613, 17.982706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292486, 34.817692, 17.850752>,  <31.496300, 34.718739, 17.771580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292486, 34.817692, 17.850752>,  <30.952797, 34.982613, 17.982706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292486, 34.817692, 17.850752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354477, -0.017898, 0.934894,
		-0.391362, -0.910872, 0.130952,
		0.849224, -0.412301, -0.329887,
		31.547253, 34.694000, 17.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915295, 34.355289, 18.323837>,  <30.952797, 34.982613, 17.982706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915295, 34.355289, 18.323837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292709, 34.435112, 18.218071>,  <31.519157, 34.483006, 18.154612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292709, 34.435112, 18.218071>,  <30.915295, 34.355289, 18.323837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292709, 34.435112, 18.218071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270465, -0.003168, 0.962725,
		0.191279, -0.979882, -0.056961,
		0.943537, 0.199555, -0.264418,
		31.575771, 34.494980, 18.138746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240940, 33.895931, 18.637318>,  <30.915295, 34.355289, 18.323837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240940, 33.895931, 18.637318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510727, 34.176807, 18.546076>,  <31.672598, 34.345333, 18.491331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510727, 34.176807, 18.546076>,  <31.240940, 33.895931, 18.637318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510727, 34.176807, 18.546076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337223, -0.018148, 0.941250,
		0.656793, -0.711762, -0.249033,
		0.674466, 0.702186, -0.228103,
		31.713066, 34.387463, 18.477644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756182, 33.745903, 19.101040>,  <31.240940, 33.895931, 18.637318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756182, 33.745903, 19.101040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862133, 34.117390, 18.997255>,  <31.925705, 34.340282, 18.934984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862133, 34.117390, 18.997255>,  <31.756182, 33.745903, 19.101040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862133, 34.117390, 18.997255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481677, 0.105664, 0.869956,
		0.835360, -0.355409, -0.419354,
		0.264879, 0.928719, -0.259459,
		31.941597, 34.396004, 18.919418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460869, 33.862583, 19.180256>,  <31.756182, 33.745903, 19.101040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460869, 33.862583, 19.180256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314266, 34.234512, 19.193533>,  <32.226307, 34.457672, 19.201500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314266, 34.234512, 19.193533>,  <32.460869, 33.862583, 19.180256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314266, 34.234512, 19.193533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562364, 0.192959, 0.804061,
		0.741231, 0.313358, -0.593619,
		-0.366503, 0.929825, 0.033194,
		32.204315, 34.513458, 19.203491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.317806, 37.507259, 13.854015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674326, 37.675198, 13.785522>,  <29.888237, 37.775959, 13.744426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674326, 37.675198, 13.785522>,  <29.317806, 37.507259, 13.854015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674326, 37.675198, 13.785522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038851, 0.305546, 0.951384,
		0.451751, -0.854619, 0.256021,
		0.891298, 0.419842, -0.171234,
		29.941715, 37.801151, 13.734151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770845, 37.379211, 14.396126>,  <29.317806, 37.507259, 13.854015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770845, 37.379211, 14.396126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929686, 37.696793, 14.211976>,  <30.024990, 37.887341, 14.101486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929686, 37.696793, 14.211976>,  <29.770845, 37.379211, 14.396126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929686, 37.696793, 14.211976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118416, 0.453104, 0.883558,
		0.910103, -0.405378, 0.085911,
		0.397102, 0.793955, -0.460375,
		30.048817, 37.934978, 14.073864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347082, 37.541592, 14.835598>,  <29.770845, 37.379211, 14.396126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347082, 37.541592, 14.835598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268734, 37.860123, 14.606689>,  <30.221725, 38.051243, 14.469344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268734, 37.860123, 14.606689>,  <30.347082, 37.541592, 14.835598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268734, 37.860123, 14.606689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039817, 0.576635, 0.816031,
		0.979821, 0.182623, -0.081238,
		-0.195871, 0.796329, -0.572271,
		30.209972, 38.099022, 14.435008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805363, 38.074287, 15.110434>,  <30.347082, 37.541592, 14.835598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805363, 38.074287, 15.110434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500353, 38.259277, 14.929470>,  <30.317347, 38.370270, 14.820892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500353, 38.259277, 14.929470>,  <30.805363, 38.074287, 15.110434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500353, 38.259277, 14.929470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117094, 0.589079, 0.799546,
		0.636275, 0.662647, -0.395034,
		-0.762524, 0.462475, -0.452409,
		30.271595, 38.398022, 14.793748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929815, 38.848263, 15.102255>,  <30.805363, 38.074287, 15.110434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929815, 38.848263, 15.102255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538399, 38.794201, 15.040049>,  <30.303549, 38.761765, 15.002725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538399, 38.794201, 15.040049>,  <30.929815, 38.848263, 15.102255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538399, 38.794201, 15.040049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205570, 0.691392, 0.692616,
		0.013911, 0.709725, -0.704342,
		-0.978544, -0.135156, -0.155516,
		30.244835, 38.753654, 14.993394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711935, 39.501583, 15.235396>,  <30.929815, 38.848263, 15.102255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711935, 39.501583, 15.235396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.380938, 39.277561, 15.251358>,  <30.182339, 39.143147, 15.260935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.380938, 39.277561, 15.251358>,  <30.711935, 39.501583, 15.235396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380938, 39.277561, 15.251358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347021, 0.566011, 0.747802,
		-0.441398, 0.604953, -0.662721,
		-0.827493, -0.560057, 0.039905,
		30.132690, 39.109543, 15.263330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311090, 39.942196, 15.439132>,  <30.711935, 39.501583, 15.235396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311090, 39.942196, 15.439132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112194, 39.606987, 15.528988>,  <29.992857, 39.405861, 15.582901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112194, 39.606987, 15.528988>,  <30.311090, 39.942196, 15.439132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112194, 39.606987, 15.528988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361916, 0.435660, 0.824146,
		-0.788523, 0.328499, -0.519923,
		-0.497241, -0.838027, 0.224639,
		29.963022, 39.355579, 15.596379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504551, 40.018967, 15.598027>,  <30.311090, 39.942196, 15.439132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504551, 40.018967, 15.598027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.604429, 39.666946, 15.759602>,  <29.664356, 39.455734, 15.856546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.604429, 39.666946, 15.759602>,  <29.504551, 40.018967, 15.598027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604429, 39.666946, 15.759602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437010, 0.269835, 0.858027,
		-0.864104, -0.390768, -0.317215,
		0.249694, -0.880050, 0.403935,
		29.679338, 39.402931, 15.880782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959362, 39.893589, 16.009659>,  <29.504551, 40.018967, 15.598027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959362, 39.893589, 16.009659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236784, 39.640774, 16.147940>,  <29.403236, 39.489082, 16.230907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236784, 39.640774, 16.147940>,  <28.959362, 39.893589, 16.009659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236784, 39.640774, 16.147940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235844, 0.254221, 0.937949,
		-0.680707, -0.732049, 0.027252,
		0.693553, -0.632042, 0.345700,
		29.444849, 39.451160, 16.251650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639015, 39.510017, 16.531433>,  <28.959362, 39.893589, 16.009659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639015, 39.510017, 16.531433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028309, 39.481777, 16.618912>,  <29.261885, 39.464832, 16.671398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028309, 39.481777, 16.618912>,  <28.639015, 39.510017, 16.531433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028309, 39.481777, 16.618912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201793, 0.192829, 0.960259,
		-0.109967, -0.978689, 0.173421,
		0.973235, -0.070601, 0.218697,
		29.320280, 39.460598, 16.684521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770546, 39.064220, 17.146616>,  <28.639015, 39.510017, 16.531433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770546, 39.064220, 17.146616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.084581, 39.310249, 17.117426>,  <29.273003, 39.457867, 17.099911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.084581, 39.310249, 17.117426>,  <28.770546, 39.064220, 17.146616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084581, 39.310249, 17.117426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096330, 0.237640, 0.966565,
		0.611846, -0.751810, 0.245818,
		0.785089, 0.615069, -0.072978,
		29.320108, 39.494770, 17.095533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046005, 39.040852, 17.805473>,  <28.770546, 39.064220, 17.146616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046005, 39.040852, 17.805473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239992, 39.370567, 17.688610>,  <29.356384, 39.568398, 17.618492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239992, 39.370567, 17.688610>,  <29.046005, 39.040852, 17.805473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239992, 39.370567, 17.688610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117420, 0.269677, 0.955765,
		0.866615, -0.497818, 0.033996,
		0.484965, 0.824289, -0.292160,
		29.385481, 39.617855, 17.600962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715322, 38.504124, 17.896856>,  <29.046005, 39.040852, 17.805473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715322, 38.504124, 17.896856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617569, 38.154919, 18.065674>,  <29.558918, 37.945396, 18.166964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617569, 38.154919, 18.065674>,  <29.715322, 38.504124, 17.896856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617569, 38.154919, 18.065674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233382, -0.369492, -0.899449,
		0.941175, -0.318307, -0.113449,
		-0.244382, -0.873016, 0.422044,
		29.544254, 37.893013, 18.192287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883507, 37.991776, 17.393166>,  <29.715322, 38.504124, 17.896856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883507, 37.991776, 17.393166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682184, 37.754536, 17.644535>,  <29.561390, 37.612190, 17.795357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682184, 37.754536, 17.644535>,  <29.883507, 37.991776, 17.393166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682184, 37.754536, 17.644535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237106, -0.604548, -0.760462,
		0.830942, -0.531748, 0.163645,
		-0.503305, -0.593098, 0.628425,
		29.531193, 37.576607, 17.833063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211946, 37.310116, 17.277592>,  <29.883507, 37.991776, 17.393166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211946, 37.310116, 17.277592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845095, 37.257221, 17.427998>,  <29.624983, 37.225483, 17.518242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845095, 37.257221, 17.427998>,  <30.211946, 37.310116, 17.277592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845095, 37.257221, 17.427998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164206, -0.734237, -0.658735,
		0.363194, -0.665889, 0.651676,
		-0.917129, -0.132240, 0.376014,
		29.569956, 37.217548, 17.540802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060638, 36.510559, 17.490202>,  <30.211946, 37.310116, 17.277592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060638, 36.510559, 17.490202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719076, 36.711185, 17.434666>,  <29.514139, 36.831562, 17.401344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719076, 36.711185, 17.434666>,  <30.060638, 36.510559, 17.490202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719076, 36.711185, 17.434666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275734, -0.662288, -0.696667,
		-0.441375, -0.556606, 0.703831,
		-0.853908, 0.501562, -0.138842,
		29.462904, 36.861652, 17.393013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624466, 35.955200, 17.381851>,  <30.060638, 36.510559, 17.490202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624466, 35.955200, 17.381851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387680, 36.256199, 17.266386>,  <29.245609, 36.436798, 17.197107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387680, 36.256199, 17.266386>,  <29.624466, 35.955200, 17.381851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387680, 36.256199, 17.266386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321901, -0.549094, -0.771282,
		-0.738891, -0.363650, 0.567273,
		-0.591963, 0.752499, -0.288661,
		29.210091, 36.481949, 17.179789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971390, 35.695999, 17.439770>,  <29.624466, 35.955200, 17.381851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971390, 35.695999, 17.439770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928108, 36.007847, 17.193037>,  <28.902140, 36.194958, 17.044998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928108, 36.007847, 17.193037>,  <28.971390, 35.695999, 17.439770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928108, 36.007847, 17.193037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390069, -0.604013, -0.694993,
		-0.914406, 0.165406, 0.369462,
		-0.108203, 0.779621, -0.616832,
		28.895647, 36.241734, 17.007988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277403, 35.699257, 17.350443>,  <28.971390, 35.695999, 17.439770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277403, 35.699257, 17.350443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458221, 35.884022, 17.045210>,  <28.566713, 35.994881, 16.862070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458221, 35.884022, 17.045210>,  <28.277403, 35.699257, 17.350443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458221, 35.884022, 17.045210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446510, -0.623403, -0.641870,
		-0.772192, 0.630880, -0.075562,
		0.452049, 0.461908, -0.763081,
		28.593836, 36.022594, 16.816286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761974, 35.717823, 16.808422>,  <28.277403, 35.699257, 17.350443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761974, 35.717823, 16.808422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098639, 35.780064, 16.601580>,  <28.300636, 35.817410, 16.477474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098639, 35.780064, 16.601580>,  <27.761974, 35.717823, 16.808422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098639, 35.780064, 16.601580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339147, -0.592861, -0.730407,
		-0.420226, 0.790129, -0.446214,
		0.841659, 0.155604, -0.517106,
		28.351135, 35.826744, 16.446447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561760, 35.843952, 16.018946>,  <27.761974, 35.717823, 16.808422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561760, 35.843952, 16.018946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932735, 35.696342, 16.043194>,  <28.155321, 35.607777, 16.057743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932735, 35.696342, 16.043194>,  <27.561760, 35.843952, 16.018946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932735, 35.696342, 16.043194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203775, -0.634593, -0.745498,
		0.313579, 0.679051, -0.663745,
		0.927439, -0.369027, 0.060622,
		28.210968, 35.585636, 16.061380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777935, 35.775936, 15.327302>,  <27.561760, 35.843952, 16.018946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777935, 35.775936, 15.327302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024897, 35.545361, 15.541418>,  <28.173073, 35.407017, 15.669888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024897, 35.545361, 15.541418>,  <27.777935, 35.775936, 15.327302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024897, 35.545361, 15.541418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016541, -0.670808, -0.741447,
		0.786473, 0.466626, -0.404624,
		0.617403, -0.576435, 0.535291,
		28.210117, 35.372429, 15.702005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296886, 35.609768, 14.863768>,  <27.777935, 35.775936, 15.327302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296886, 35.609768, 14.863768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334150, 35.323406, 15.140551>,  <28.356508, 35.151588, 15.306621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334150, 35.323406, 15.140551>,  <28.296886, 35.609768, 14.863768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334150, 35.323406, 15.140551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015445, -0.693856, -0.719948,
		0.995531, 0.077758, -0.053583,
		0.093160, -0.715903, 0.691957,
		28.362099, 35.108635, 15.348138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880060, 35.259041, 14.629872>,  <28.296886, 35.609768, 14.863768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880060, 35.259041, 14.629872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683317, 35.012394, 14.875752>,  <28.565271, 34.864407, 15.023280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683317, 35.012394, 14.875752>,  <28.880060, 35.259041, 14.629872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683317, 35.012394, 14.875752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115379, -0.653618, -0.747979,
		0.862996, -0.438823, 0.250343,
		-0.491859, -0.616619, 0.614700,
		28.535759, 34.827408, 15.060163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195074, 34.571609, 14.615097>,  <28.880060, 35.259041, 14.629872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195074, 34.571609, 14.615097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822289, 34.513432, 14.747936>,  <28.598618, 34.478523, 14.827640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822289, 34.513432, 14.747936>,  <29.195074, 34.571609, 14.615097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822289, 34.513432, 14.747936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079087, -0.812384, -0.577735,
		0.353821, -0.564693, 0.745609,
		-0.931964, -0.145447, 0.332098,
		28.542700, 34.469799, 14.847566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194916, 33.838779, 14.799869>,  <29.195074, 34.571609, 14.615097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194916, 33.838779, 14.799869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819195, 33.965481, 14.747142>,  <28.593761, 34.041504, 14.715506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819195, 33.965481, 14.747142>,  <29.194916, 33.838779, 14.799869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819195, 33.965481, 14.747142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220134, -0.851113, -0.476600,
		-0.263158, -0.418655, 0.869181,
		-0.939302, 0.316757, -0.131817,
		28.537405, 34.060509, 14.707597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277294, 33.921185, 15.454066>,  <29.194916, 33.838779, 14.799869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277294, 33.921185, 15.454066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518946, 33.880299, 15.137944>,  <29.663937, 33.855766, 14.948271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518946, 33.880299, 15.137944>,  <29.277294, 33.921185, 15.454066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518946, 33.880299, 15.137944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787674, -0.073771, 0.611659,
		-0.120821, -0.992024, 0.035943,
		0.604129, -0.102213, -0.790304,
		29.700184, 33.849636, 14.900853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747942, 33.358101, 15.608630>,  <29.277294, 33.921185, 15.454066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747942, 33.358101, 15.608630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914846, 33.621033, 15.357614>,  <30.014988, 33.778793, 15.207004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914846, 33.621033, 15.357614>,  <29.747942, 33.358101, 15.608630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914846, 33.621033, 15.357614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810916, 0.042423, 0.583623,
		0.410257, -0.752405, -0.515340,
		0.417259, 0.657333, -0.627541,
		30.040024, 33.818233, 15.169352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394438, 33.092670, 15.612607>,  <29.747942, 33.358101, 15.608630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394438, 33.092670, 15.612607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389505, 33.475075, 15.495379>,  <30.386545, 33.704517, 15.425043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389505, 33.475075, 15.495379>,  <30.394438, 33.092670, 15.612607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389505, 33.475075, 15.495379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772092, 0.195347, 0.604742,
		0.635391, -0.218818, -0.740538,
		-0.012333, 0.956011, -0.293070,
		30.385805, 33.761879, 15.407458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087555, 33.244286, 15.588346>,  <30.394438, 33.092670, 15.612607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087555, 33.244286, 15.588346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904337, 33.597870, 15.625903>,  <30.794407, 33.810020, 15.648438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904337, 33.597870, 15.625903>,  <31.087555, 33.244286, 15.588346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904337, 33.597870, 15.625903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567055, 0.209212, 0.796667,
		0.684575, 0.418153, -0.597080,
		-0.458045, 0.883956, 0.093895,
		30.766924, 33.863056, 15.654072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523693, 33.755741, 15.392416>,  <31.087555, 33.244286, 15.588346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523693, 33.755741, 15.392416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.261721, 33.955318, 15.619439>,  <31.104538, 34.075066, 15.755653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.261721, 33.955318, 15.619439>,  <31.523693, 33.755741, 15.392416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261721, 33.955318, 15.619439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717345, 0.174272, 0.674570,
		0.237663, 0.848931, -0.472051,
		-0.654929, 0.498944, 0.567558,
		31.065243, 34.105003, 15.789706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882498, 34.241508, 15.755511>,  <31.523693, 33.755741, 15.392416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882498, 34.241508, 15.755511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544718, 34.306137, 15.959785>,  <31.342049, 34.344913, 16.082348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544718, 34.306137, 15.959785>,  <31.882498, 34.241508, 15.755511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544718, 34.306137, 15.959785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535425, 0.228161, 0.813180,
		0.014866, 0.960124, -0.279178,
		-0.844452, 0.161568, 0.510683,
		31.291382, 34.354607, 16.112989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866112, 34.965984, 16.082474>,  <31.882498, 34.241508, 15.755511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866112, 34.965984, 16.082474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640368, 34.714314, 16.296255>,  <31.504921, 34.563313, 16.424524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640368, 34.714314, 16.296255>,  <31.866112, 34.965984, 16.082474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640368, 34.714314, 16.296255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574414, 0.165698, 0.801619,
		-0.592915, 0.759398, 0.267892,
		-0.564358, -0.629173, 0.534454,
		31.471060, 34.525562, 16.456591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266758, 35.536945, 16.098232>,  <31.866112, 34.965984, 16.082474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266758, 35.536945, 16.098232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.635647, 35.384418, 16.072613>,  <32.856979, 35.292904, 16.057241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.635647, 35.384418, 16.072613>,  <32.266758, 35.536945, 16.098232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635647, 35.384418, 16.072613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250136, -0.462041, -0.850852,
		0.294850, 0.800697, -0.521486,
		0.922223, -0.381316, -0.064050,
		32.912315, 35.270023, 16.053398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496090, 35.634190, 15.453340>,  <32.266758, 35.536945, 16.098232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496090, 35.634190, 15.453340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739006, 35.343266, 15.581226>,  <32.884754, 35.168709, 15.657959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739006, 35.343266, 15.581226>,  <32.496090, 35.634190, 15.453340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739006, 35.343266, 15.581226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121969, -0.483001, -0.867083,
		0.785064, 0.487573, -0.382030,
		0.607287, -0.727312, 0.319718,
		32.921192, 35.125072, 15.677142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982906, 35.571468, 14.934401>,  <32.496090, 35.634190, 15.453340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982906, 35.571468, 14.934401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003689, 35.223396, 15.130394>,  <33.016159, 35.014553, 15.247990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003689, 35.223396, 15.130394>,  <32.982906, 35.571468, 14.934401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003689, 35.223396, 15.130394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047325, -0.487948, -0.871588,
		0.997527, 0.068475, 0.015829,
		0.051958, -0.870182, 0.489983,
		33.019276, 34.962341, 15.277389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546719, 35.226345, 14.637575>,  <32.982906, 35.571468, 14.934401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546719, 35.226345, 14.637575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.281189, 34.985416, 14.814911>,  <33.121872, 34.840858, 14.921312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.281189, 34.985416, 14.814911>,  <33.546719, 35.226345, 14.637575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281189, 34.985416, 14.814911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002785, -0.590792, -0.806819,
		0.747885, -0.536819, 0.390503,
		-0.663822, -0.602320, 0.443340,
		33.082043, 34.804722, 14.947913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823036, 34.587635, 14.493682>,  <33.546719, 35.226345, 14.637575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823036, 34.587635, 14.493682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440067, 34.529819, 14.593644>,  <33.210285, 34.495132, 14.653622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440067, 34.529819, 14.593644>,  <33.823036, 34.587635, 14.493682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440067, 34.529819, 14.593644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105722, -0.629975, -0.769386,
		0.268637, -0.763047, 0.587871,
		-0.957422, -0.144535, 0.249906,
		33.152840, 34.486458, 14.668616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721455, 33.912964, 14.367107>,  <33.823036, 34.587635, 14.493682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721455, 33.912964, 14.367107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.352886, 34.067921, 14.379163>,  <33.131744, 34.160896, 14.386396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.352886, 34.067921, 14.379163>,  <33.721455, 33.912964, 14.367107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352886, 34.067921, 14.379163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297821, -0.654284, -0.695137,
		-0.249573, -0.649490, 0.718246,
		-0.921421, 0.387396, 0.030139,
		33.076462, 34.184139, 14.388205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345543, 33.318752, 14.289912>,  <33.721455, 33.912964, 14.367107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345543, 33.318752, 14.289912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092953, 33.609425, 14.181706>,  <32.941399, 33.783829, 14.116783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092953, 33.609425, 14.181706>,  <33.345543, 33.318752, 14.289912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092953, 33.609425, 14.181706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273680, -0.535296, -0.799098,
		-0.725493, -0.430576, 0.536903,
		-0.631474, 0.726680, -0.270514,
		32.903511, 33.827427, 14.100553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709480, 33.018116, 14.155775>,  <33.345543, 33.318752, 14.289912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709480, 33.018116, 14.155775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724899, 33.353374, 13.938143>,  <32.734150, 33.554531, 13.807564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724899, 33.353374, 13.938143>,  <32.709480, 33.018116, 14.155775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724899, 33.353374, 13.938143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227810, -0.522776, -0.821467,
		-0.972942, 0.155609, 0.170789,
		0.038543, 0.838148, -0.544080,
		32.736462, 33.604820, 13.774919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263710, 32.847813, 13.597212>,  <32.709480, 33.018116, 14.155775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263710, 32.847813, 13.597212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415611, 33.188595, 13.453009>,  <32.506752, 33.393063, 13.366487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415611, 33.188595, 13.453009>,  <32.263710, 32.847813, 13.597212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415611, 33.188595, 13.453009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418695, -0.189215, -0.888196,
		-0.824913, 0.488239, 0.284852,
		0.379754, 0.851951, -0.360509,
		32.529537, 33.444180, 13.344856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.116199, 40.657719, 26.829586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117054, 40.934593, 27.118273>,  <35.117565, 41.100716, 27.291485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117054, 40.934593, 27.118273>,  <35.116199, 40.657719, 26.829586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117054, 40.934593, 27.118273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465927, 0.639281, -0.611745,
		-0.884821, -0.334964, 0.323870,
		0.002132, 0.692184, 0.721718,
		35.117695, 41.142250, 27.334787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848682, 40.788132, 26.824366>,  <35.116199, 40.657719, 26.829586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848682, 40.788132, 26.824366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203121, 40.873604, 26.659845>,  <36.415787, 40.924889, 26.561132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203121, 40.873604, 26.659845>,  <35.848682, 40.788132, 26.824366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203121, 40.873604, 26.659845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179975, -0.659136, -0.730170,
		-0.427126, 0.721027, -0.545604,
		0.886100, 0.213679, -0.411301,
		36.468952, 40.937706, 26.536455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714394, 40.944527, 26.087286>,  <35.848682, 40.788132, 26.824366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714394, 40.944527, 26.087286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098793, 40.836647, 26.111744>,  <36.329433, 40.771919, 26.126419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098793, 40.836647, 26.111744>,  <35.714394, 40.944527, 26.087286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098793, 40.836647, 26.111744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117763, -0.599157, -0.791923,
		0.250217, 0.753838, -0.607551,
		0.961001, -0.269700, 0.061145,
		36.387093, 40.755737, 26.130087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967560, 41.016418, 25.483839>,  <35.714394, 40.944527, 26.087286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967560, 41.016418, 25.483839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202225, 40.743755, 25.658728>,  <36.343025, 40.580158, 25.763660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202225, 40.743755, 25.658728>,  <35.967560, 41.016418, 25.483839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202225, 40.743755, 25.658728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138042, -0.616168, -0.775423,
		0.797979, 0.394558, -0.455581,
		0.586664, -0.681661, 0.437223,
		36.378223, 40.539257, 25.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479046, 40.821186, 25.044743>,  <35.967560, 41.016418, 25.483839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479046, 40.821186, 25.044743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477768, 40.508068, 25.293653>,  <36.477001, 40.320198, 25.442999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477768, 40.508068, 25.293653>,  <36.479046, 40.821186, 25.044743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477768, 40.508068, 25.293653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163292, -0.613518, -0.772614,
		0.986573, -0.104080, -0.125864,
		-0.003194, -0.782792, 0.622275,
		36.476810, 40.273232, 25.480335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863861, 40.255833, 24.671246>,  <36.479046, 40.821186, 25.044743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863861, 40.255833, 24.671246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725445, 40.059879, 24.991312>,  <36.642395, 39.942307, 25.183352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725445, 40.059879, 24.991312>,  <36.863861, 40.255833, 24.671246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725445, 40.059879, 24.991312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166426, -0.807281, -0.566215,
		0.923340, -0.329103, 0.197823,
		-0.346042, -0.489886, 0.800167,
		36.621632, 39.912914, 25.231361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278210, 39.644619, 24.717720>,  <36.863861, 40.255833, 24.671246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278210, 39.644619, 24.717720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911861, 39.608990, 24.874308>,  <36.692051, 39.587612, 24.968260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911861, 39.608990, 24.874308>,  <37.278210, 39.644619, 24.717720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911861, 39.608990, 24.874308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133523, -0.851990, -0.506247,
		0.378619, -0.515926, 0.768419,
		-0.915871, -0.089073, 0.391468,
		36.637100, 39.582268, 24.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418751, 38.888126, 24.786884>,  <37.278210, 39.644619, 24.717720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418751, 38.888126, 24.786884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034092, 38.994366, 24.814308>,  <36.803299, 39.058109, 24.830763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034092, 38.994366, 24.814308>,  <37.418751, 38.888126, 24.786884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034092, 38.994366, 24.814308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258611, -0.794534, -0.549396,
		-0.091446, -0.546053, 0.832745,
		-0.961643, 0.265597, 0.068558,
		36.745598, 39.074043, 24.834875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078571, 38.379841, 25.067942>,  <37.418751, 38.888126, 24.786884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078571, 38.379841, 25.067942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794056, 38.569706, 24.860575>,  <36.623344, 38.683624, 24.736155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794056, 38.569706, 24.860575>,  <37.078571, 38.379841, 25.067942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794056, 38.569706, 24.860575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141878, -0.819318, -0.555507,
		-0.688430, -0.321575, 0.650119,
		-0.711291, 0.474665, -0.518419,
		36.580669, 38.712105, 24.705050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661388, 37.883751, 24.981121>,  <37.078571, 38.379841, 25.067942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661388, 37.883751, 24.981121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571529, 38.144428, 24.691339>,  <36.517612, 38.300835, 24.517471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571529, 38.144428, 24.691339>,  <36.661388, 37.883751, 24.981121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571529, 38.144428, 24.691339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462510, -0.725687, -0.509375,
		-0.857681, 0.220637, 0.464438,
		-0.224650, 0.651689, -0.724455,
		36.504135, 38.339935, 24.474003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081852, 37.578445, 24.716045>,  <36.661388, 37.883751, 24.981121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081852, 37.578445, 24.716045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202263, 37.839947, 24.438345>,  <36.274509, 37.996849, 24.271725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202263, 37.839947, 24.438345>,  <36.081852, 37.578445, 24.716045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202263, 37.839947, 24.438345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404922, -0.571498, -0.713742,
		-0.863377, 0.495974, 0.092684,
		0.301029, 0.653758, -0.694250,
		36.292572, 38.036076, 24.230070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541100, 37.547432, 24.203516>,  <36.081852, 37.578445, 24.716045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541100, 37.547432, 24.203516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852352, 37.704376, 24.007326>,  <36.039104, 37.798542, 23.889612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852352, 37.704376, 24.007326>,  <35.541100, 37.547432, 24.203516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852352, 37.704376, 24.007326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203490, -0.581289, -0.787842,
		-0.594228, 0.712850, -0.372477,
		0.778130, 0.392362, -0.490476,
		36.085793, 37.822086, 23.860184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766163, 37.629147, 24.324318>,  <35.541100, 37.547432, 24.203516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766163, 37.629147, 24.324318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564926, 37.294708, 24.411810>,  <34.444183, 37.094048, 24.464304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564926, 37.294708, 24.411810>,  <34.766163, 37.629147, 24.324318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564926, 37.294708, 24.411810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239866, 0.108059, 0.964773,
		-0.830276, 0.537839, 0.146186,
		-0.503096, -0.836094, 0.218728,
		34.413998, 37.043880, 24.477428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329117, 37.822578, 24.884695>,  <34.766163, 37.629147, 24.324318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329117, 37.822578, 24.884695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339870, 37.423275, 24.905708>,  <34.346321, 37.183693, 24.918316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339870, 37.423275, 24.905708>,  <34.329117, 37.822578, 24.884695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339870, 37.423275, 24.905708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020991, 0.051977, 0.998428,
		-0.999418, -0.027945, -0.019557,
		0.026884, -0.998257, 0.052534,
		34.347935, 37.123798, 24.921469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811646, 37.509468, 25.343990>,  <34.329117, 37.822578, 24.884695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811646, 37.509468, 25.343990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079300, 37.213055, 25.321590>,  <34.239891, 37.035206, 25.308149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079300, 37.213055, 25.321590>,  <33.811646, 37.509468, 25.343990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079300, 37.213055, 25.321590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037090, -0.041963, 0.998431,
		-0.742216, -0.670160, -0.000594,
		0.669133, -0.741029, -0.056002,
		34.280041, 36.990746, 25.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547932, 36.967434, 25.748121>,  <33.811646, 37.509468, 25.343990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547932, 36.967434, 25.748121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926434, 36.839287, 25.730398>,  <34.153534, 36.762398, 25.719765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926434, 36.839287, 25.730398>,  <33.547932, 36.967434, 25.748121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926434, 36.839287, 25.730398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052858, 0.018032, 0.998439,
		-0.319068, -0.947122, 0.033997,
		0.946257, -0.320367, -0.044310,
		34.210312, 36.743176, 25.717106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558647, 36.455891, 26.127020>,  <33.547932, 36.967434, 25.748121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558647, 36.455891, 26.127020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928699, 36.607536, 26.135077>,  <34.150730, 36.698524, 26.139910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928699, 36.607536, 26.135077>,  <33.558647, 36.455891, 26.127020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928699, 36.607536, 26.135077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124141, 0.251944, 0.959746,
		0.358781, -0.890391, 0.280145,
		0.925130, 0.379116, 0.020141,
		34.206238, 36.721272, 26.141119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813866, 36.252750, 26.753176>,  <33.558647, 36.455891, 26.127020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813866, 36.252750, 26.753176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069801, 36.540554, 26.645163>,  <34.223362, 36.713234, 26.580355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069801, 36.540554, 26.645163>,  <33.813866, 36.252750, 26.753176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069801, 36.540554, 26.645163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007561, 0.357251, 0.933978,
		0.768474, -0.595552, 0.234023,
		0.639837, 0.719507, -0.270035,
		34.261753, 36.756405, 26.564152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401794, 36.254684, 27.294634>,  <33.813866, 36.252750, 26.753176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401794, 36.254684, 27.294634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456333, 36.606472, 27.112234>,  <34.489056, 36.817547, 27.002794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456333, 36.606472, 27.112234>,  <34.401794, 36.254684, 27.294634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456333, 36.606472, 27.112234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019796, 0.457789, 0.888841,
		0.990464, -0.130215, 0.045007,
		0.136345, 0.879473, -0.456001,
		34.497238, 36.870316, 26.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729858, 36.568295, 27.771393>,  <34.401794, 36.254684, 27.294634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729858, 36.568295, 27.771393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560158, 36.858803, 27.555044>,  <34.458336, 37.033108, 27.425234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560158, 36.858803, 27.555044>,  <34.729858, 36.568295, 27.771393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560158, 36.858803, 27.555044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165706, 0.524941, 0.834852,
		0.890252, 0.443817, -0.102362,
		-0.424256, 0.726267, -0.540873,
		34.432880, 37.076683, 27.392782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954628, 37.222359, 28.084812>,  <34.729858, 36.568295, 27.771393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954628, 37.222359, 28.084812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629726, 37.318878, 27.872389>,  <34.434788, 37.376789, 27.744934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629726, 37.318878, 27.872389>,  <34.954628, 37.222359, 28.084812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629726, 37.318878, 27.872389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294456, 0.616295, 0.730394,
		0.503533, 0.749637, -0.429534,
		-0.812250, 0.241299, -0.531060,
		34.386051, 37.391266, 27.713070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974815, 37.933140, 28.149036>,  <34.954628, 37.222359, 28.084812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974815, 37.933140, 28.149036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597641, 37.886044, 28.024452>,  <34.371338, 37.857788, 27.949701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597641, 37.886044, 28.024452>,  <34.974815, 37.933140, 28.149036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597641, 37.886044, 28.024452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305258, 0.679292, 0.667368,
		0.132999, 0.724362, -0.676469,
		-0.942936, -0.117739, -0.311462,
		34.314758, 37.850723, 27.931013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620697, 38.593842, 28.180614>,  <34.974815, 37.933140, 28.149036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620697, 38.593842, 28.180614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313873, 38.337437, 28.191381>,  <34.129780, 38.183594, 28.197842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313873, 38.337437, 28.191381>,  <34.620697, 38.593842, 28.180614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313873, 38.337437, 28.191381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360494, 0.465334, 0.808399,
		-0.530717, 0.610387, -0.588019,
		-0.767062, -0.641008, 0.026919,
		34.083755, 38.145134, 28.199457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989021, 38.986309, 28.239691>,  <34.620697, 38.593842, 28.180614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989021, 38.986309, 28.239691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916222, 38.617260, 28.375717>,  <33.872540, 38.395832, 28.457333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916222, 38.617260, 28.375717>,  <33.989021, 38.986309, 28.239691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916222, 38.617260, 28.375717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341704, 0.383630, 0.857943,
		-0.922016, 0.039946, -0.385085,
		-0.182001, -0.922622, 0.340064,
		33.861622, 38.340473, 28.477736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419579, 39.094032, 28.535612>,  <33.989021, 38.986309, 28.239691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419579, 39.094032, 28.535612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553738, 38.750706, 28.690941>,  <33.634232, 38.544708, 28.784138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553738, 38.750706, 28.690941>,  <33.419579, 39.094032, 28.535612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553738, 38.750706, 28.690941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366779, 0.260705, 0.893032,
		-0.867745, -0.441950, -0.227374,
		0.335398, -0.858320, 0.388323,
		33.654358, 38.493210, 28.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892723, 38.767384, 28.927046>,  <33.419579, 39.094032, 28.535612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892723, 38.767384, 28.927046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224022, 38.607117, 29.083754>,  <33.422802, 38.510956, 29.177778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224022, 38.607117, 29.083754>,  <32.892723, 38.767384, 28.927046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224022, 38.607117, 29.083754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370960, 0.131972, 0.919223,
		-0.420002, -0.906671, -0.039325,
		0.828243, -0.400664, 0.391768,
		33.472496, 38.486919, 29.201284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213017, 39.137402, 28.739710>,  <32.892723, 38.767384, 28.927046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213017, 39.137402, 28.739710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825645, 39.225777, 28.785887>,  <31.593222, 39.278801, 28.813593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825645, 39.225777, 28.785887>,  <32.213017, 39.137402, 28.739710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825645, 39.225777, 28.785887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213807, -0.498084, -0.840356,
		-0.128167, -0.838510, 0.529599,
		-0.968432, 0.220937, 0.115441,
		31.535116, 39.292057, 28.820518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843313, 38.483028, 28.673544>,  <32.213017, 39.137402, 28.739710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843313, 38.483028, 28.673544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.643162, 38.813240, 28.569149>,  <31.523071, 39.011368, 28.506512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.643162, 38.813240, 28.569149>,  <31.843313, 38.483028, 28.673544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643162, 38.813240, 28.569149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145958, -0.377555, -0.914411,
		-0.853415, -0.419459, 0.309414,
		-0.500379, 0.825534, -0.260988,
		31.493048, 39.060902, 28.490852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368780, 38.236546, 28.239698>,  <31.843313, 38.483028, 28.673544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368780, 38.236546, 28.239698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395706, 38.630871, 28.178190>,  <31.411861, 38.867466, 28.141285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395706, 38.630871, 28.178190>,  <31.368780, 38.236546, 28.239698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395706, 38.630871, 28.178190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060858, -0.149777, -0.986845,
		-0.995874, 0.075788, 0.049912,
		0.067315, 0.985811, -0.153771,
		31.415901, 38.926613, 28.132059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699318, 38.471935, 27.951363>,  <31.368780, 38.236546, 28.239698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699318, 38.471935, 27.951363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.000298, 38.723789, 27.874023>,  <31.180885, 38.874901, 27.827620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.000298, 38.723789, 27.874023>,  <30.699318, 38.471935, 27.951363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000298, 38.723789, 27.874023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091776, -0.190463, -0.977395,
		-0.652226, 0.753183, -0.085528,
		0.752448, 0.629633, -0.193349,
		31.226032, 38.912678, 27.816019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466379, 38.603508, 27.245897>,  <30.699318, 38.471935, 27.951363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466379, 38.603508, 27.245897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823345, 38.773384, 27.306866>,  <31.037525, 38.875309, 27.343447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823345, 38.773384, 27.306866>,  <30.466379, 38.603508, 27.245897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823345, 38.773384, 27.306866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198243, -0.065587, -0.977956,
		-0.405328, 0.902961, -0.142722,
		0.892417, 0.424687, 0.152422,
		31.091070, 38.900791, 27.352592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480387, 39.127342, 26.749990>,  <30.466379, 38.603508, 27.245897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480387, 39.127342, 26.749990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852434, 39.031803, 26.861584>,  <31.075663, 38.974480, 26.928539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852434, 39.031803, 26.861584>,  <30.480387, 39.127342, 26.749990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852434, 39.031803, 26.861584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270850, -0.066927, -0.960292,
		0.248039, 0.968747, 0.002443,
		0.930117, -0.238851, 0.278985,
		31.131470, 38.960148, 26.945280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845371, 39.595947, 26.341349>,  <30.480387, 39.127342, 26.749990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845371, 39.595947, 26.341349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083649, 39.294811, 26.453333>,  <31.226616, 39.114128, 26.520523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083649, 39.294811, 26.453333>,  <30.845371, 39.595947, 26.341349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083649, 39.294811, 26.453333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216821, -0.184893, -0.958542,
		0.773392, 0.631701, 0.053092,
		0.595695, -0.752841, 0.279961,
		31.262358, 39.068958, 26.537321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240904, 39.601212, 25.833874>,  <30.845371, 39.595947, 26.341349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240904, 39.601212, 25.833874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.332321, 39.249104, 26.000193>,  <31.387171, 39.037838, 26.099983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.332321, 39.249104, 26.000193>,  <31.240904, 39.601212, 25.833874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332321, 39.249104, 26.000193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254683, -0.358167, -0.898250,
		0.939630, 0.311184, 0.142335,
		0.228541, -0.880273, 0.415798,
		31.400883, 38.985020, 26.124931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985092, 39.414429, 25.626167>,  <31.240904, 39.601212, 25.833874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985092, 39.414429, 25.626167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790552, 39.074993, 25.709463>,  <31.673828, 38.871330, 25.759439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790552, 39.074993, 25.709463>,  <31.985092, 39.414429, 25.626167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790552, 39.074993, 25.709463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236156, -0.357113, -0.903715,
		0.841246, -0.390344, 0.374080,
		-0.486349, -0.848588, 0.208238,
		31.644648, 38.820415, 25.771935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441078, 38.869396, 25.501455>,  <31.985092, 39.414429, 25.626167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441078, 38.869396, 25.501455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062691, 38.739754, 25.497379>,  <31.835659, 38.661968, 25.494934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062691, 38.739754, 25.497379>,  <32.441078, 38.869396, 25.501455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062691, 38.739754, 25.497379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028547, -0.051936, -0.998242,
		0.323006, -0.944594, 0.058382,
		-0.945966, -0.324105, -0.010190,
		31.778900, 38.642521, 25.494322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488514, 38.445461, 24.995731>,  <32.441078, 38.869396, 25.501455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488514, 38.445461, 24.995731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091816, 38.494602, 25.010370>,  <31.853796, 38.524086, 25.019154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091816, 38.494602, 25.010370>,  <32.488514, 38.445461, 24.995731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091816, 38.494602, 25.010370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049268, -0.101752, -0.993589,
		-0.118357, -0.987193, 0.106966,
		-0.991748, 0.122868, 0.036594,
		31.794291, 38.531460, 25.021349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174011, 37.810581, 24.655064>,  <32.488514, 38.445461, 24.995731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174011, 37.810581, 24.655064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905117, 38.105637, 24.629797>,  <31.743782, 38.282669, 24.614637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905117, 38.105637, 24.629797>,  <32.174011, 37.810581, 24.655064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905117, 38.105637, 24.629797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207308, -0.269455, -0.940435,
		-0.710724, -0.619095, 0.334055,
		-0.672231, 0.737641, -0.063165,
		31.703447, 38.326927, 24.610847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698368, 37.512421, 24.261377>,  <32.174011, 37.810581, 24.655064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698368, 37.512421, 24.261377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608519, 37.902004, 24.249083>,  <31.554609, 38.135754, 24.241705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608519, 37.902004, 24.249083>,  <31.698368, 37.512421, 24.261377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608519, 37.902004, 24.249083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264317, -0.091259, -0.960108,
		-0.937913, -0.207539, 0.277934,
		-0.224624, 0.973961, -0.030737,
		31.541132, 38.194191, 24.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023323, 37.499352, 23.870295>,  <31.698368, 37.512421, 24.261377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023323, 37.499352, 23.870295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.163382, 37.873955, 23.862743>,  <31.247416, 38.098717, 23.858213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.163382, 37.873955, 23.862743>,  <31.023323, 37.499352, 23.870295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163382, 37.873955, 23.862743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313116, 0.098029, -0.944642,
		-0.882812, 0.336672, 0.327559,
		0.350145, 0.936505, -0.018876,
		31.268425, 38.154907, 23.857080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570137, 37.777599, 23.473211>,  <31.023323, 37.499352, 23.870295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570137, 37.777599, 23.473211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858540, 38.054726, 23.468067>,  <31.031580, 38.221001, 23.464981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858540, 38.054726, 23.468067>,  <30.570137, 37.777599, 23.473211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858540, 38.054726, 23.468067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285214, 0.279804, -0.916713,
		-0.631511, 0.664622, 0.399339,
		0.721004, 0.692811, -0.012860,
		31.074841, 38.262569, 23.464209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304478, 38.400341, 23.279245>,  <30.570137, 37.777599, 23.473211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304478, 38.400341, 23.279245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689533, 38.420170, 23.172762>,  <30.920567, 38.432068, 23.108871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689533, 38.420170, 23.172762>,  <30.304478, 38.400341, 23.279245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689533, 38.420170, 23.172762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270260, 0.237175, -0.933117,
		0.016880, 0.970201, 0.241711,
		0.962639, 0.049574, -0.266210,
		30.978325, 38.435043, 23.092899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325462, 39.006168, 22.957115>,  <30.304478, 38.400341, 23.279245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325462, 39.006168, 22.957115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624836, 38.769604, 22.837065>,  <30.804461, 38.627663, 22.765036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624836, 38.769604, 22.837065>,  <30.325462, 39.006168, 22.957115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624836, 38.769604, 22.837065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274684, 0.135468, -0.951944,
		0.603650, 0.794908, -0.061062,
		0.748435, -0.591414, -0.300124,
		30.849367, 38.592178, 22.747028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414108, 39.328506, 22.356529>,  <30.325462, 39.006168, 22.957115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414108, 39.328506, 22.356529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.627552, 38.991833, 22.323483>,  <30.755619, 38.789829, 22.303656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.627552, 38.991833, 22.323483>,  <30.414108, 39.328506, 22.356529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627552, 38.991833, 22.323483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214127, -0.039954, -0.975988,
		0.818174, 0.538488, -0.201548,
		0.533610, -0.841685, -0.082615,
		30.787636, 38.739326, 22.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698498, 39.425560, 21.731007>,  <30.414108, 39.328506, 22.356529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698498, 39.425560, 21.731007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735439, 39.038822, 21.826239>,  <30.757605, 38.806778, 21.883377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735439, 39.038822, 21.826239>,  <30.698498, 39.425560, 21.731007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735439, 39.038822, 21.826239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062080, -0.244226, -0.967729,
		0.993789, 0.074592, -0.082576,
		0.092352, -0.966845, 0.238079,
		30.763145, 38.748768, 21.897663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370190, 39.084461, 21.393538>,  <30.698498, 39.425560, 21.731007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370190, 39.084461, 21.393538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.096878, 38.798473, 21.452791>,  <30.932890, 38.626881, 21.488342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.096878, 38.798473, 21.452791>,  <31.370190, 39.084461, 21.393538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096878, 38.798473, 21.452791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087601, -0.281687, -0.955499,
		0.724881, -0.639898, 0.255104,
		-0.683281, -0.714971, 0.148133,
		30.891893, 38.583981, 21.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588028, 38.542461, 20.923758>,  <31.370190, 39.084461, 21.393538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588028, 38.542461, 20.923758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217731, 38.435097, 21.030312>,  <30.995554, 38.370678, 21.094244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217731, 38.435097, 21.030312>,  <31.588028, 38.542461, 20.923758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217731, 38.435097, 21.030312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150644, -0.384360, -0.910810,
		0.346863, -0.883301, 0.315382,
		-0.925739, -0.268415, 0.266384,
		30.940010, 38.354572, 21.110228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400949, 37.740284, 20.698730>,  <31.588028, 38.542461, 20.923758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400949, 37.740284, 20.698730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044519, 37.901161, 20.782854>,  <30.830662, 37.997688, 20.833328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044519, 37.901161, 20.782854>,  <31.400949, 37.740284, 20.698730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044519, 37.901161, 20.782854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321800, -0.233112, -0.917662,
		-0.320048, -0.885383, 0.337145,
		-0.891075, 0.402189, 0.210309,
		30.777197, 38.021816, 20.845947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944267, 37.340443, 20.291382>,  <31.400949, 37.740284, 20.698730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944267, 37.340443, 20.291382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731327, 37.667294, 20.379847>,  <30.603563, 37.863403, 20.432926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731327, 37.667294, 20.379847>,  <30.944267, 37.340443, 20.291382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731327, 37.667294, 20.379847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596639, -0.176835, -0.782784,
		-0.600522, -0.548669, 0.581667,
		-0.532348, 0.817124, 0.221164,
		30.571623, 37.912430, 20.446196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196379, 37.169460, 20.322699>,  <30.944267, 37.340443, 20.291382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196379, 37.169460, 20.322699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.259211, 37.552044, 20.224298>,  <30.296909, 37.781593, 20.165258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.259211, 37.552044, 20.224298>,  <30.196379, 37.169460, 20.322699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259211, 37.552044, 20.224298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632490, -0.093875, -0.768859,
		-0.758473, 0.276367, 0.590203,
		0.157082, 0.956456, -0.246001,
		30.306335, 37.838982, 20.150497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496399, 37.452148, 19.993624>,  <30.196379, 37.169460, 20.322699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496399, 37.452148, 19.993624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784506, 37.703190, 19.875416>,  <29.957371, 37.853813, 19.804491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784506, 37.703190, 19.875416>,  <29.496399, 37.452148, 19.993624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784506, 37.703190, 19.875416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390577, 0.014831, -0.920451,
		-0.573292, 0.778395, 0.255808,
		0.720268, 0.627599, -0.295521,
		30.000586, 37.891468, 19.786760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170843, 38.070972, 19.779142>,  <29.496399, 37.452148, 19.993624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170843, 38.070972, 19.779142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519503, 38.045860, 19.584705>,  <29.728699, 38.030792, 19.468042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519503, 38.045860, 19.584705>,  <29.170843, 38.070972, 19.779142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519503, 38.045860, 19.584705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489661, -0.068101, -0.869250,
		0.021469, 0.995701, -0.090101,
		0.871649, -0.062781, -0.486094,
		29.780998, 38.027027, 19.438877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105196, 38.543758, 19.254402>,  <29.170843, 38.070972, 19.779142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105196, 38.543758, 19.254402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.387808, 38.281956, 19.146746>,  <29.557375, 38.124874, 19.082151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.387808, 38.281956, 19.146746>,  <29.105196, 38.543758, 19.254402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387808, 38.281956, 19.146746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415772, -0.076144, -0.906276,
		0.572670, 0.752212, -0.325924,
		0.706529, -0.654507, -0.269143,
		29.599766, 38.085602, 19.066002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128275, 38.665890, 18.554277>,  <29.105196, 38.543758, 19.254402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128275, 38.665890, 18.554277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357742, 38.339344, 18.580994>,  <29.495422, 38.143417, 18.597023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357742, 38.339344, 18.580994>,  <29.128275, 38.665890, 18.554277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357742, 38.339344, 18.580994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342181, -0.312939, -0.885992,
		0.744190, 0.485410, -0.458866,
		0.573667, -0.816361, 0.066788,
		29.529842, 38.094437, 18.601030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519484, 39.242897, 18.408865>,  <29.128275, 38.665890, 18.554277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519484, 39.242897, 18.408865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554213, 39.564251, 18.173225>,  <29.575050, 39.757065, 18.031841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554213, 39.564251, 18.173225>,  <29.519484, 39.242897, 18.408865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554213, 39.564251, 18.173225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397879, 0.514157, 0.759826,
		0.913320, -0.300360, -0.275009,
		0.086824, 0.803384, -0.589097,
		29.580259, 39.805267, 17.996496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102438, 39.539715, 18.509226>,  <29.519484, 39.242897, 18.408865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102438, 39.539715, 18.509226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902666, 39.852303, 18.359623>,  <29.782803, 40.039856, 18.269861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902666, 39.852303, 18.359623>,  <30.102438, 39.539715, 18.509226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902666, 39.852303, 18.359623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322491, 0.568369, 0.756938,
		0.804094, 0.257426, -0.535877,
		-0.499432, 0.781465, -0.374005,
		29.752836, 40.086742, 18.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576445, 40.061535, 18.406273>,  <30.102438, 39.539715, 18.509226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576445, 40.061535, 18.406273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227228, 40.255909, 18.422628>,  <30.017698, 40.372532, 18.432442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227228, 40.255909, 18.422628>,  <30.576445, 40.061535, 18.406273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227228, 40.255909, 18.422628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371012, 0.607468, 0.702377,
		0.316470, 0.628372, -0.710630,
		-0.873039, 0.485933, 0.040888,
		29.965317, 40.401688, 18.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749315, 40.798779, 18.552139>,  <30.576445, 40.061535, 18.406273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749315, 40.798779, 18.552139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357256, 40.808037, 18.630899>,  <30.122021, 40.813591, 18.678156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357256, 40.808037, 18.630899>,  <30.749315, 40.798779, 18.552139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357256, 40.808037, 18.630899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185377, 0.459101, 0.868828,
		-0.070291, 0.888083, -0.454278,
		-0.980150, 0.023142, 0.196901,
		30.063211, 40.814980, 18.689970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551422, 41.530937, 18.727829>,  <30.749315, 40.798779, 18.552139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551422, 41.530937, 18.727829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.281113, 41.288624, 18.895805>,  <30.118927, 41.143234, 18.996592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.281113, 41.288624, 18.895805>,  <30.551422, 41.530937, 18.727829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281113, 41.288624, 18.895805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110200, 0.480284, 0.870163,
		-0.728823, 0.634312, -0.257807,
		-0.675776, -0.605785, 0.419943,
		30.078381, 41.106888, 19.021788>
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
