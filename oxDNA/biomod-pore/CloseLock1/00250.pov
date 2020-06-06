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
	<24.308134, 35.453362, 35.262814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464788, 35.095570, 35.176533>,  <24.558781, 34.880894, 35.124763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464788, 35.095570, 35.176533>,  <24.308134, 35.453362, 35.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464788, 35.095570, 35.176533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896501, 0.318172, 0.308305,
		-0.207144, -0.314117, 0.926510,
		0.391634, -0.894481, -0.215699,
		24.582279, 34.827225, 35.111824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934319, 35.391525, 35.668373>,  <24.308134, 35.453362, 35.262814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934319, 35.391525, 35.668373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983789, 35.146511, 35.356091>,  <25.013472, 34.999504, 35.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983789, 35.146511, 35.356091>,  <24.934319, 35.391525, 35.668373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983789, 35.146511, 35.356091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907686, 0.387766, -0.160444,
		0.401010, -0.688795, 0.603948,
		0.123677, -0.612535, -0.780708,
		25.020893, 34.962749, 35.121880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620159, 35.144093, 35.614025>,  <24.934319, 35.391525, 35.668373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620159, 35.144093, 35.614025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506847, 35.113419, 35.231640>,  <25.438860, 35.095013, 35.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506847, 35.113419, 35.231640>,  <25.620159, 35.144093, 35.614025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506847, 35.113419, 35.231640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896214, 0.333675, -0.292338,
		0.341401, -0.939564, -0.025797,
		-0.283279, -0.076685, -0.955967,
		25.421864, 35.090412, 34.944851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163794, 35.050083, 35.017647>,  <25.620159, 35.144093, 35.614025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163794, 35.050083, 35.017647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399538, 35.371181, 35.053970>,  <26.540985, 35.563843, 35.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399538, 35.371181, 35.053970>,  <26.163794, 35.050083, 35.017647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399538, 35.371181, 35.053970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141468, 0.213224, -0.966707,
		-0.795387, 0.556892, 0.239229,
		0.589360, 0.802750, 0.090813,
		26.576345, 35.612007, 35.081215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843330, 35.767654, 34.996819>,  <26.163794, 35.050083, 35.017647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843330, 35.767654, 34.996819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214632, 35.760811, 34.848198>,  <26.437412, 35.756702, 34.759026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214632, 35.760811, 34.848198>,  <25.843330, 35.767654, 34.996819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214632, 35.760811, 34.848198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363010, 0.175997, -0.915013,
		0.081051, 0.984242, 0.157158,
		0.928253, -0.017112, -0.371555,
		26.493109, 35.755676, 34.736732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931078, 36.396049, 34.531734>,  <25.843330, 35.767654, 34.996819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931078, 36.396049, 34.531734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183863, 36.103477, 34.429256>,  <26.335533, 35.927937, 34.367767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183863, 36.103477, 34.429256>,  <25.931078, 36.396049, 34.531734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183863, 36.103477, 34.429256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164118, 0.196778, -0.966614,
		0.757421, 0.652912, 0.004316,
		0.631964, -0.731426, -0.256199,
		26.373451, 35.884048, 34.352398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289368, 36.602436, 33.916817>,  <25.931078, 36.396049, 34.531734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289368, 36.602436, 33.916817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353886, 36.207962, 33.901768>,  <26.392597, 35.971275, 33.892738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353886, 36.207962, 33.901768>,  <26.289368, 36.602436, 33.916817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353886, 36.207962, 33.901768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019357, 0.034950, -0.999202,
		0.986716, 0.161895, -0.013453,
		0.161296, -0.986189, -0.037619,
		26.402275, 35.912106, 33.890484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839306, 36.321953, 33.410797>,  <26.289368, 36.602436, 33.916817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839306, 36.321953, 33.410797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596836, 36.007851, 33.461281>,  <26.451355, 35.819389, 33.491570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596836, 36.007851, 33.461281>,  <26.839306, 36.321953, 33.410797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596836, 36.007851, 33.461281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107426, -0.238068, -0.965289,
		0.788045, -0.571574, 0.228667,
		-0.606173, -0.785256, 0.126206,
		26.414984, 35.772274, 33.499142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923885, 35.909695, 32.751938>,  <26.839306, 36.321953, 33.410797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923885, 35.909695, 32.751938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666653, 35.669750, 32.942352>,  <26.512312, 35.525784, 33.056599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666653, 35.669750, 32.942352>,  <26.923885, 35.909695, 32.751938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666653, 35.669750, 32.942352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162274, -0.500758, -0.850240,
		0.748405, -0.624024, 0.224687,
		-0.643084, -0.599863, 0.476033,
		26.473728, 35.489792, 33.085163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095728, 35.164921, 32.662437>,  <26.923885, 35.909695, 32.751938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095728, 35.164921, 32.662437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705278, 35.220669, 32.729080>,  <26.471008, 35.254120, 32.769066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705278, 35.220669, 32.729080>,  <27.095728, 35.164921, 32.662437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705278, 35.220669, 32.729080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208480, -0.385867, -0.898689,
		-0.060965, -0.911966, 0.405710,
		-0.976125, 0.139371, 0.166602,
		26.412441, 35.262482, 32.779060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778280, 34.554798, 32.335823>,  <27.095728, 35.164921, 32.662437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778280, 34.554798, 32.335823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476906, 34.810162, 32.398773>,  <26.296082, 34.963379, 32.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476906, 34.810162, 32.398773>,  <26.778280, 34.554798, 32.335823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476906, 34.810162, 32.398773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440848, -0.312897, -0.841278,
		-0.487836, -0.703230, 0.517189,
		-0.753438, 0.638407, 0.157375,
		26.250874, 35.001682, 32.445984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171431, 34.082329, 32.384541>,  <26.778280, 34.554798, 32.335823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171431, 34.082329, 32.384541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029602, 34.451244, 32.323009>,  <25.944506, 34.672592, 32.286091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029602, 34.451244, 32.323009>,  <26.171431, 34.082329, 32.384541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029602, 34.451244, 32.323009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567719, -0.343066, -0.748331,
		-0.742950, -0.178007, 0.645243,
		-0.354569, 0.922290, -0.153823,
		25.923231, 34.727932, 32.276863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476383, 33.952320, 32.262390>,  <26.171431, 34.082329, 32.384541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476383, 33.952320, 32.262390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575134, 34.308800, 32.110168>,  <25.634384, 34.522686, 32.018837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575134, 34.308800, 32.110168>,  <25.476383, 33.952320, 32.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575134, 34.308800, 32.110168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531069, -0.204054, -0.822392,
		-0.810566, 0.405129, 0.422910,
		0.246878, 0.891197, -0.380550,
		25.649199, 34.576160, 31.996004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929335, 34.067837, 31.892273>,  <25.476383, 33.952320, 32.262390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929335, 34.067837, 31.892273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195286, 34.326374, 31.742514>,  <25.354856, 34.481499, 31.652658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195286, 34.326374, 31.742514>,  <24.929335, 34.067837, 31.892273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195286, 34.326374, 31.742514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342718, -0.181387, -0.921761,
		-0.663687, 0.741172, 0.100914,
		0.664879, 0.646346, -0.374397,
		25.394749, 34.520279, 31.630194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543327, 34.435287, 31.512280>,  <24.929335, 34.067837, 31.892273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543327, 34.435287, 31.512280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917793, 34.477894, 31.378262>,  <25.142473, 34.503456, 31.297852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917793, 34.477894, 31.378262>,  <24.543327, 34.435287, 31.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917793, 34.477894, 31.378262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322240, -0.121088, -0.938882,
		-0.140572, 0.986911, -0.079035,
		0.936163, 0.106512, -0.335044,
		25.198643, 34.509846, 31.277748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436176, 34.834629, 30.874491>,  <24.543327, 34.435287, 31.512280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436176, 34.834629, 30.874491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809015, 34.700489, 30.819744>,  <25.032719, 34.620003, 30.786896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809015, 34.700489, 30.819744>,  <24.436176, 34.834629, 30.874491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809015, 34.700489, 30.819744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132327, 0.036469, -0.990535,
		0.337172, 0.941386, -0.010384,
		0.932097, -0.335355, -0.136867,
		25.088644, 34.599884, 30.778685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823900, 35.295322, 30.375847>,  <24.436176, 34.834629, 30.874491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823900, 35.295322, 30.375847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024359, 34.949181, 30.377380>,  <25.144634, 34.741497, 30.378302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024359, 34.949181, 30.377380>,  <24.823900, 35.295322, 30.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024359, 34.949181, 30.377380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031814, 0.013995, -0.999396,
		0.864777, 0.500966, 0.034544,
		0.501147, -0.865354, 0.003835,
		25.174704, 34.689575, 30.378531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339197, 35.478683, 29.896235>,  <24.823900, 35.295322, 30.375847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339197, 35.478683, 29.896235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356882, 35.079082, 29.898468>,  <25.367493, 34.839321, 29.899809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356882, 35.079082, 29.898468>,  <25.339197, 35.478683, 29.896235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356882, 35.079082, 29.898468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048380, -0.003441, -0.998823,
		0.997850, 0.044433, 0.048180,
		0.044214, -0.999006, 0.005584,
		25.370146, 34.779381, 29.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828770, 35.239487, 29.529089>,  <25.339197, 35.478683, 29.896235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828770, 35.239487, 29.529089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658583, 34.877525, 29.533714>,  <25.556471, 34.660351, 29.536489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658583, 34.877525, 29.533714>,  <25.828770, 35.239487, 29.529089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658583, 34.877525, 29.533714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264200, -0.136421, -0.954771,
		0.865549, -0.403170, 0.297117,
		-0.425468, -0.904899, 0.011562,
		25.530943, 34.606056, 29.537182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346598, 34.715466, 29.262798>,  <25.828770, 35.239487, 29.529089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346598, 34.715466, 29.262798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983093, 34.553162, 29.223780>,  <25.764992, 34.455780, 29.200369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983093, 34.553162, 29.223780>,  <26.346598, 34.715466, 29.262798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983093, 34.553162, 29.223780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250221, -0.342720, -0.905501,
		0.333984, -0.847292, 0.412979,
		-0.908760, -0.405759, -0.097547,
		25.710464, 34.431435, 29.194515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407082, 33.958595, 29.047659>,  <26.346598, 34.715466, 29.262798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407082, 33.958595, 29.047659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038246, 34.071121, 28.941370>,  <25.816944, 34.138638, 28.877596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038246, 34.071121, 28.941370>,  <26.407082, 33.958595, 29.047659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038246, 34.071121, 28.941370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132461, -0.415737, -0.899787,
		-0.363595, -0.864884, 0.346084,
		-0.922091, 0.281316, -0.265724,
		25.761620, 34.155518, 28.861652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024166, 33.318897, 28.846918>,  <26.407082, 33.958595, 29.047659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024166, 33.318897, 28.846918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857077, 33.628307, 28.656271>,  <25.756823, 33.813953, 28.541883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857077, 33.628307, 28.656271>,  <26.024166, 33.318897, 28.846918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857077, 33.628307, 28.656271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015158, -0.530436, -0.847589,
		-0.908448, -0.346834, 0.233301,
		-0.417724, 0.773527, -0.476616,
		25.731760, 33.860367, 28.513287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583107, 32.985718, 28.491253>,  <26.024166, 33.318897, 28.846918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583107, 32.985718, 28.491253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621395, 33.341499, 28.312496>,  <25.644367, 33.554970, 28.205242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621395, 33.341499, 28.312496>,  <25.583107, 32.985718, 28.491253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621395, 33.341499, 28.312496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062502, -0.453438, -0.889094,
		-0.993444, 0.057171, -0.098995,
		0.095718, 0.889452, -0.446892,
		25.650110, 33.608334, 28.178429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229467, 32.887657, 27.909763>,  <25.583107, 32.985718, 28.491253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229467, 32.887657, 27.909763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434021, 33.219482, 27.820042>,  <25.556753, 33.418579, 27.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434021, 33.219482, 27.820042>,  <25.229467, 32.887657, 27.909763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434021, 33.219482, 27.820042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239010, -0.388016, -0.890122,
		-0.825445, 0.401584, -0.396699,
		0.511385, 0.829563, -0.224303,
		25.587437, 33.468349, 27.752750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069611, 32.970280, 27.235327>,  <25.229467, 32.887657, 27.909763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069611, 32.970280, 27.235327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400826, 33.180897, 27.312378>,  <25.599554, 33.307266, 27.358608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400826, 33.180897, 27.312378>,  <25.069611, 32.970280, 27.235327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400826, 33.180897, 27.312378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312187, -0.147616, -0.938482,
		-0.465717, 0.837235, -0.286612,
		0.828038, 0.526543, 0.192626,
		25.649237, 33.338860, 27.370165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099289, 33.426662, 26.646502>,  <25.069611, 32.970280, 27.235327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099289, 33.426662, 26.646502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465654, 33.387268, 26.802141>,  <25.685474, 33.363632, 26.895525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465654, 33.387268, 26.802141>,  <25.099289, 33.426662, 26.646502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465654, 33.387268, 26.802141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386494, -0.045075, -0.921190,
		0.108263, 0.994117, -0.003221,
		0.915916, -0.098486, 0.389101,
		25.740429, 33.357723, 26.918871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644440, 33.957924, 26.467472>,  <25.099289, 33.426662, 26.646502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644440, 33.957924, 26.467472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789124, 33.588596, 26.519073>,  <25.875935, 33.367001, 26.550034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789124, 33.588596, 26.519073>,  <25.644440, 33.957924, 26.467472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789124, 33.588596, 26.519073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467189, 0.059772, -0.882135,
		0.806783, 0.379347, 0.452986,
		0.361711, -0.923322, 0.129004,
		25.897636, 33.311600, 26.557775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360481, 33.977440, 26.308390>,  <25.644440, 33.957924, 26.467472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360481, 33.977440, 26.308390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219393, 33.609566, 26.239386>,  <26.134741, 33.388840, 26.197983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219393, 33.609566, 26.239386>,  <26.360481, 33.977440, 26.308390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219393, 33.609566, 26.239386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523004, -0.040889, -0.851349,
		0.775923, -0.390512, 0.495423,
		-0.352720, -0.919689, -0.172512,
		26.113577, 33.333660, 26.187632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886860, 33.460247, 25.949915>,  <26.360481, 33.977440, 26.308390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886860, 33.460247, 25.949915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510820, 33.409309, 25.823425>,  <26.285196, 33.378746, 25.747532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510820, 33.409309, 25.823425>,  <26.886860, 33.460247, 25.949915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510820, 33.409309, 25.823425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285423, 0.213208, -0.934385,
		0.186405, -0.968673, -0.164091,
		-0.940099, -0.127338, -0.316225,
		26.228790, 33.371109, 25.728558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794563, 33.120941, 25.369884>,  <26.886860, 33.460247, 25.949915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794563, 33.120941, 25.369884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444736, 33.314274, 25.354303>,  <26.234840, 33.430275, 25.344955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444736, 33.314274, 25.354303>,  <26.794563, 33.120941, 25.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444736, 33.314274, 25.354303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159507, 0.210893, -0.964407,
		-0.457918, -0.849653, -0.261536,
		-0.874567, 0.483337, -0.038953,
		26.182365, 33.459274, 25.342617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192024, 32.736160, 25.027897>,  <26.794563, 33.120941, 25.369884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192024, 32.736160, 25.027897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440510, 32.431282, 25.100723>,  <26.589602, 32.248356, 25.144419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440510, 32.431282, 25.100723>,  <26.192024, 32.736160, 25.027897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440510, 32.431282, 25.100723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155534, 0.347633, 0.924641,
		-0.768052, -0.546081, 0.334502,
		0.621213, -0.762199, 0.182066,
		26.626873, 32.202621, 25.155344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157888, 32.430290, 25.708385>,  <26.192024, 32.736160, 25.027897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157888, 32.430290, 25.708385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530155, 32.337170, 25.595490>,  <26.753515, 32.281296, 25.527752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530155, 32.337170, 25.595490>,  <26.157888, 32.430290, 25.708385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530155, 32.337170, 25.595490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318506, 0.135940, 0.938123,
		-0.180031, -0.962976, 0.200664,
		0.930668, -0.232804, -0.282240,
		26.809355, 32.267330, 25.510818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439798, 32.139442, 26.277716>,  <26.157888, 32.430290, 25.708385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439798, 32.139442, 26.277716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749178, 32.255508, 26.052298>,  <26.934805, 32.325146, 25.917048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749178, 32.255508, 26.052298>,  <26.439798, 32.139442, 26.277716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749178, 32.255508, 26.052298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528507, 0.195619, 0.826083,
		0.349939, -0.936770, -0.002052,
		0.773448, 0.290163, -0.563545,
		26.981213, 32.342556, 25.883234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082127, 31.842922, 26.460165>,  <26.439798, 32.139442, 26.277716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082127, 31.842922, 26.460165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188852, 32.189362, 26.291082>,  <27.252888, 32.397224, 26.189632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188852, 32.189362, 26.291082>,  <27.082127, 31.842922, 26.460165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188852, 32.189362, 26.291082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602681, 0.192317, 0.774461,
		0.752054, -0.461396, -0.470668,
		0.266816, 0.866099, -0.422707,
		27.268898, 32.449192, 26.164270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816822, 31.952003, 26.162342>,  <27.082127, 31.842922, 26.460165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816822, 31.952003, 26.162342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645695, 32.275974, 26.322838>,  <27.543018, 32.470356, 26.419134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645695, 32.275974, 26.322838>,  <27.816822, 31.952003, 26.162342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645695, 32.275974, 26.322838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653451, -0.029552, 0.756391,
		0.624478, 0.585788, -0.516604,
		-0.427818, 0.809926, 0.401238,
		27.517349, 32.518951, 26.443209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262085, 32.447075, 26.388819>,  <27.816822, 31.952003, 26.162342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262085, 32.447075, 26.388819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947083, 32.572231, 26.601208>,  <27.758081, 32.647324, 26.728642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947083, 32.572231, 26.601208>,  <28.262085, 32.447075, 26.388819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947083, 32.572231, 26.601208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560403, 0.005014, 0.828205,
		0.256477, 0.949775, -0.179294,
		-0.787508, 0.312892, 0.530971,
		27.710831, 32.666100, 26.760498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571571, 32.940228, 26.840357>,  <28.262085, 32.447075, 26.388819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571571, 32.940228, 26.840357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223408, 32.843071, 27.011652>,  <28.014509, 32.784775, 27.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223408, 32.843071, 27.011652>,  <28.571571, 32.940228, 26.840357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223408, 32.843071, 27.011652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390313, 0.189708, 0.900925,
		-0.300070, 0.951322, -0.070318,
		-0.870410, -0.242895, 0.428239,
		27.962284, 32.770203, 27.140123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375399, 33.487350, 27.369511>,  <28.571571, 32.940228, 26.840357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375399, 33.487350, 27.369511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183567, 33.153324, 27.477335>,  <28.068468, 32.952908, 27.542028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183567, 33.153324, 27.477335>,  <28.375399, 33.487350, 27.369511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183567, 33.153324, 27.477335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343162, 0.104246, 0.933473,
		-0.807616, 0.540176, 0.236570,
		-0.479579, -0.835070, 0.269559,
		28.039694, 32.902802, 27.558203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877207, 33.681995, 27.955290>,  <28.375399, 33.487350, 27.369511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877207, 33.681995, 27.955290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964457, 33.293243, 27.990776>,  <28.016808, 33.059994, 28.012068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964457, 33.293243, 27.990776>,  <27.877207, 33.681995, 27.955290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964457, 33.293243, 27.990776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424201, 0.176286, 0.888244,
		-0.878905, -0.156117, 0.450725,
		0.218126, -0.971880, 0.088714,
		28.029894, 33.001678, 28.017389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739342, 33.488293, 28.671186>,  <27.877207, 33.681995, 27.955290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739342, 33.488293, 28.671186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960571, 33.183662, 28.536066>,  <28.093309, 33.000885, 28.454994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960571, 33.183662, 28.536066>,  <27.739342, 33.488293, 28.671186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960571, 33.183662, 28.536066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521698, 0.000461, 0.853130,
		-0.649570, -0.648073, 0.397569,
		0.553073, -0.761578, -0.337799,
		28.126493, 32.955189, 28.434727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678062, 32.952633, 29.150387>,  <27.739342, 33.488293, 28.671186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678062, 32.952633, 29.150387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999964, 32.831181, 28.946356>,  <28.193106, 32.758308, 28.823936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999964, 32.831181, 28.946356>,  <27.678062, 32.952633, 29.150387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999964, 32.831181, 28.946356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514890, -0.070562, 0.854347,
		-0.295396, -0.950174, 0.099550,
		0.804754, -0.303628, -0.510079,
		28.241390, 32.740093, 28.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870514, 32.312218, 29.406246>,  <27.678062, 32.952633, 29.150387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870514, 32.312218, 29.406246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187094, 32.496613, 29.245699>,  <28.377041, 32.607250, 29.149370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187094, 32.496613, 29.245699>,  <27.870514, 32.312218, 29.406246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187094, 32.496613, 29.245699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501250, -0.113718, 0.857798,
		0.349794, -0.880089, -0.321074,
		0.791450, 0.460991, -0.401366,
		28.424528, 32.634911, 29.125290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342413, 32.075310, 29.805029>,  <27.870514, 32.312218, 29.406246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342413, 32.075310, 29.805029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489534, 32.407589, 29.637863>,  <28.577808, 32.606956, 29.537563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489534, 32.407589, 29.637863>,  <28.342413, 32.075310, 29.805029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489534, 32.407589, 29.637863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465911, 0.224318, 0.855925,
		0.804765, -0.509525, -0.304528,
		0.367805, 0.830702, -0.417917,
		28.599876, 32.656799, 29.512487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052877, 32.070518, 30.047089>,  <28.342413, 32.075310, 29.805029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052877, 32.070518, 30.047089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013899, 32.449223, 29.924355>,  <28.990511, 32.676445, 29.850714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013899, 32.449223, 29.924355>,  <29.052877, 32.070518, 30.047089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013899, 32.449223, 29.924355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448341, 0.317006, 0.835761,
		0.888535, -0.056122, -0.455364,
		-0.097449, 0.946762, -0.306833,
		28.984665, 32.733250, 29.832304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621567, 32.309032, 30.115236>,  <29.052877, 32.070518, 30.047089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621567, 32.309032, 30.115236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389360, 32.634533, 30.103888>,  <29.250036, 32.829834, 30.097078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389360, 32.634533, 30.103888>,  <29.621567, 32.309032, 30.115236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389360, 32.634533, 30.103888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455415, 0.353371, 0.817145,
		0.674981, 0.461445, -0.575733,
		-0.580515, 0.813755, -0.028370,
		29.215206, 32.878658, 30.095377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080751, 32.925377, 30.361071>,  <29.621567, 32.309032, 30.115236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080751, 32.925377, 30.361071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698229, 33.028084, 30.416996>,  <29.468716, 33.089706, 30.450552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698229, 33.028084, 30.416996>,  <30.080751, 32.925377, 30.361071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698229, 33.028084, 30.416996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271898, 0.605306, 0.748115,
		0.107457, 0.753444, -0.648672,
		-0.956308, 0.256763, 0.139816,
		29.411337, 33.105114, 30.458941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121479, 33.662277, 30.487297>,  <30.080751, 32.925377, 30.361071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121479, 33.662277, 30.487297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741434, 33.606258, 30.598774>,  <29.513407, 33.572647, 30.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741434, 33.606258, 30.598774>,  <30.121479, 33.662277, 30.487297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741434, 33.606258, 30.598774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151851, 0.572789, 0.805515,
		-0.272441, 0.807651, -0.522949,
		-0.950114, -0.140045, 0.278694,
		29.456400, 33.564243, 30.682383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778696, 34.257023, 30.632629>,  <30.121479, 33.662277, 30.487297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778696, 34.257023, 30.632629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588074, 33.973576, 30.840769>,  <29.473700, 33.803509, 30.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588074, 33.973576, 30.840769>,  <29.778696, 34.257023, 30.632629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588074, 33.973576, 30.840769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004135, 0.590065, 0.807345,
		-0.879135, 0.386897, -0.278269,
		-0.476556, -0.708614, 0.520347,
		29.445107, 33.760990, 30.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207708, 34.709919, 30.956169>,  <29.778696, 34.257023, 30.632629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207708, 34.709919, 30.956169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169889, 34.385151, 31.186590>,  <29.147198, 34.190289, 31.324842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169889, 34.385151, 31.186590>,  <29.207708, 34.709919, 30.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169889, 34.385151, 31.186590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094180, 0.583347, 0.806745,
		-0.991055, 0.022024, -0.131622,
		-0.094549, -0.811925, 0.576055,
		29.141525, 34.141575, 31.359407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597483, 34.784321, 31.426346>,  <29.207708, 34.709919, 30.956169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597483, 34.784321, 31.426346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820780, 34.505558, 31.606430>,  <28.954758, 34.338303, 31.714481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820780, 34.505558, 31.606430>,  <28.597483, 34.784321, 31.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820780, 34.505558, 31.606430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103184, 0.480106, 0.871121,
		-0.823237, -0.532751, 0.196106,
		0.558242, -0.696904, 0.450213,
		28.988253, 34.296486, 31.741493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247375, 34.540741, 32.009541>,  <28.597483, 34.784321, 31.426346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247375, 34.540741, 32.009541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624643, 34.426834, 32.078053>,  <28.851004, 34.358490, 32.119160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624643, 34.426834, 32.078053>,  <28.247375, 34.540741, 32.009541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624643, 34.426834, 32.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050781, 0.385855, 0.921161,
		-0.328403, -0.877510, 0.349467,
		0.943172, -0.284766, 0.171277,
		28.907595, 34.341404, 32.129436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192312, 34.115044, 32.618904>,  <28.247375, 34.540741, 32.009541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192312, 34.115044, 32.618904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552326, 34.286564, 32.587749>,  <28.768333, 34.389477, 32.569057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552326, 34.286564, 32.587749>,  <28.192312, 34.115044, 32.618904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552326, 34.286564, 32.587749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109039, 0.394578, 0.912370,
		0.421966, -0.812668, 0.401889,
		0.900031, 0.428811, -0.077886,
		28.822336, 34.415207, 32.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478233, 33.981121, 33.252110>,  <28.192312, 34.115044, 32.618904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478233, 33.981121, 33.252110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723843, 34.251686, 33.089413>,  <28.871208, 34.414024, 32.991795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723843, 34.251686, 33.089413>,  <28.478233, 33.981121, 33.252110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723843, 34.251686, 33.089413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045007, 0.484487, 0.873640,
		0.788004, -0.554741, 0.267042,
		0.614023, 0.676413, -0.406745,
		28.908049, 34.454609, 32.967388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073685, 34.014324, 33.781208>,  <28.478233, 33.981121, 33.252110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073685, 34.014324, 33.781208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011927, 34.344475, 33.563984>,  <28.974873, 34.542564, 33.433651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011927, 34.344475, 33.563984>,  <29.073685, 34.014324, 33.781208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011927, 34.344475, 33.563984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113153, 0.531263, 0.839617,
		0.981508, 0.191082, 0.011369,
		-0.154396, 0.825377, -0.543061,
		28.965609, 34.592087, 33.401066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565996, 34.443199, 34.063362>,  <29.073685, 34.014324, 33.781208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565996, 34.443199, 34.063362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329857, 34.704971, 33.874382>,  <29.188173, 34.862034, 33.760994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329857, 34.704971, 33.874382>,  <29.565996, 34.443199, 34.063362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329857, 34.704971, 33.874382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004067, 0.582909, 0.812528,
		0.807138, 0.481596, -0.341457,
		-0.590349, 0.654433, -0.472447,
		29.152752, 34.901302, 33.732647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824884, 35.011616, 34.266476>,  <29.565996, 34.443199, 34.063362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824884, 35.011616, 34.266476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459541, 35.107502, 34.134830>,  <29.240335, 35.165035, 34.055843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459541, 35.107502, 34.134830>,  <29.824884, 35.011616, 34.266476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459541, 35.107502, 34.134830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114857, 0.623788, 0.773108,
		0.390621, 0.743925, -0.542209,
		-0.913358, 0.239716, -0.329110,
		29.185534, 35.179417, 34.036098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782995, 35.744602, 34.367325>,  <29.824884, 35.011616, 34.266476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782995, 35.744602, 34.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393576, 35.664158, 34.323948>,  <29.159924, 35.615891, 34.297920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393576, 35.664158, 34.323948>,  <29.782995, 35.744602, 34.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393576, 35.664158, 34.323948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212951, 0.626627, 0.749660,
		-0.082814, 0.752922, -0.652878,
		-0.973547, -0.201113, -0.108442,
		29.101511, 35.603825, 34.291416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986471, 36.409966, 34.090763>,  <29.782995, 35.744602, 34.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986471, 36.409966, 34.090763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091164, 36.463554, 33.708443>,  <30.153978, 36.495708, 33.479050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091164, 36.463554, 33.708443>,  <29.986471, 36.409966, 34.090763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091164, 36.463554, 33.708443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964540, -0.001384, 0.263932,
		0.034037, -0.990984, -0.129586,
		0.261732, 0.133974, -0.955797,
		30.169683, 36.503746, 33.421703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479687, 35.918217, 34.053955>,  <29.986471, 36.409966, 34.090763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479687, 35.918217, 34.053955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478674, 36.239151, 33.815208>,  <30.478065, 36.431713, 33.671963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478674, 36.239151, 33.815208>,  <30.479687, 35.918217, 34.053955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478674, 36.239151, 33.815208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948750, 0.190548, 0.252121,
		0.316017, -0.565637, -0.761701,
		-0.002532, 0.802338, -0.596864,
		30.477915, 36.479851, 33.636150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078093, 35.442982, 33.618626>,  <30.479687, 35.918217, 34.053955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078093, 35.442982, 33.618626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920345, 35.142647, 33.406693>,  <29.825697, 34.962448, 33.279533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920345, 35.142647, 33.406693>,  <30.078093, 35.442982, 33.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920345, 35.142647, 33.406693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867224, 0.113372, 0.484840,
		-0.303967, 0.650686, -0.695853,
		-0.394369, -0.750835, -0.529829,
		29.802034, 34.917397, 33.247746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470287, 35.431217, 33.046940>,  <30.078093, 35.442982, 33.618626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470287, 35.431217, 33.046940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425961, 35.783512, 32.862755>,  <30.399364, 35.994888, 32.752243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425961, 35.783512, 32.862755>,  <30.470287, 35.431217, 33.046940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425961, 35.783512, 32.862755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862937, -0.144565, -0.484190,
		-0.493010, -0.451004, -0.744000,
		-0.110815, 0.880736, -0.460460,
		30.392715, 36.047733, 32.724617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476011, 35.477085, 32.340412>,  <30.470287, 35.431217, 33.046940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476011, 35.477085, 32.340412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627045, 35.796925, 32.527206>,  <30.717665, 35.988827, 32.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627045, 35.796925, 32.527206>,  <30.476011, 35.477085, 32.340412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627045, 35.796925, 32.527206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916209, -0.249559, -0.313497,
		-0.134131, 0.546227, -0.826828,
		0.377583, 0.799597, 0.466985,
		30.740320, 36.036804, 32.667301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092810, 35.775875, 31.989166>,  <30.476011, 35.477085, 32.340412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092810, 35.775875, 31.989166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138594, 35.939411, 32.351326>,  <31.166065, 36.037533, 32.568623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138594, 35.939411, 32.351326>,  <31.092810, 35.775875, 31.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138594, 35.939411, 32.351326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982839, 0.086107, -0.163134,
		-0.144657, 0.908535, -0.391969,
		0.114461, 0.408840, 0.905399,
		31.172932, 36.062065, 32.622948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442181, 36.467972, 32.023083>,  <31.092810, 35.775875, 31.989166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442181, 36.467972, 32.023083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522339, 36.252163, 32.350193>,  <31.570433, 36.122677, 32.546459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522339, 36.252163, 32.350193>,  <31.442181, 36.467972, 32.023083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522339, 36.252163, 32.350193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965152, -0.034670, -0.259383,
		0.168296, 0.841256, 0.513775,
		0.200395, -0.539524, 0.817775,
		31.582457, 36.090305, 32.595524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637629, 36.897259, 32.635780>,  <31.442181, 36.467972, 32.023083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637629, 36.897259, 32.635780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930325, 36.768795, 32.876251>,  <32.105942, 36.691715, 33.020535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930325, 36.768795, 32.876251>,  <31.637629, 36.897259, 32.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930325, 36.768795, 32.876251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202594, 0.739676, 0.641743,
		-0.650776, -0.591385, 0.476188,
		0.731742, -0.321158, 0.601175,
		32.149849, 36.672447, 33.056602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407881, 37.079357, 33.285149>,  <31.637629, 36.897259, 32.635780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407881, 37.079357, 33.285149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794697, 37.010151, 33.359875>,  <32.026787, 36.968628, 33.404709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794697, 37.010151, 33.359875>,  <31.407881, 37.079357, 33.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794697, 37.010151, 33.359875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001271, 0.736955, 0.675941,
		-0.254620, -0.653425, 0.712885,
		0.967041, -0.173014, 0.186813,
		32.084808, 36.958248, 33.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462486, 36.880741, 33.996929>,  <31.407881, 37.079357, 33.285149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462486, 36.880741, 33.996929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829037, 37.000526, 33.890663>,  <32.048965, 37.072399, 33.826904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829037, 37.000526, 33.890663>,  <31.462486, 36.880741, 33.996929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829037, 37.000526, 33.890663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000174, 0.663929, 0.747796,
		0.400322, -0.685215, 0.608460,
		0.916375, 0.299464, -0.265666,
		32.103951, 37.090366, 33.810963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895973, 36.803108, 34.592274>,  <31.462486, 36.880741, 33.996929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895973, 36.803108, 34.592274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102333, 37.062836, 34.368763>,  <32.226151, 37.218674, 34.234657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102333, 37.062836, 34.368763>,  <31.895973, 36.803108, 34.592274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102333, 37.062836, 34.368763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308744, 0.467506, 0.828321,
		0.799077, -0.599849, 0.040713,
		0.515901, 0.649322, -0.558773,
		32.257103, 37.257633, 34.201130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526035, 36.876324, 34.988567>,  <31.895973, 36.803108, 34.592274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526035, 36.876324, 34.988567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481487, 37.191898, 34.746845>,  <32.454758, 37.381241, 34.601814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481487, 37.191898, 34.746845>,  <32.526035, 36.876324, 34.988567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481487, 37.191898, 34.746845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294899, 0.606931, 0.738017,
		0.949016, -0.096013, -0.300251,
		-0.111372, 0.788934, -0.604301,
		32.448074, 37.428577, 34.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100212, 37.347248, 35.135891>,  <32.526035, 36.876324, 34.988567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100212, 37.347248, 35.135891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835918, 37.585281, 34.952892>,  <32.677341, 37.728104, 34.843094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835918, 37.585281, 34.952892>,  <33.100212, 37.347248, 35.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835918, 37.585281, 34.952892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102036, 0.675039, 0.730692,
		0.743651, 0.436113, -0.506742,
		-0.660735, 0.595086, -0.457495,
		32.637699, 37.763805, 34.815643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429790, 38.040253, 34.949467>,  <33.100212, 37.347248, 35.135891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429790, 38.040253, 34.949467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032234, 38.054970, 34.991077>,  <32.793701, 38.063801, 35.016045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032234, 38.054970, 34.991077>,  <33.429790, 38.040253, 34.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032234, 38.054970, 34.991077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095785, 0.755713, 0.647860,
		-0.054779, 0.653868, -0.754623,
		-0.993894, 0.036792, 0.104028,
		32.734066, 38.066006, 35.022285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394836, 38.741268, 35.093361>,  <33.429790, 38.040253, 34.949467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394836, 38.741268, 35.093361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023510, 38.605721, 35.154545>,  <32.800713, 38.524391, 35.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023510, 38.605721, 35.154545>,  <33.394836, 38.741268, 35.093361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023510, 38.605721, 35.154545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215342, 0.825449, 0.521788,
		-0.303078, 0.451445, -0.839250,
		-0.928316, -0.338868, 0.152961,
		32.745014, 38.504059, 35.200432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014843, 39.431892, 35.109131>,  <33.394836, 38.741268, 35.093361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014843, 39.431892, 35.109131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797829, 39.137665, 35.271416>,  <32.667622, 38.961128, 35.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797829, 39.137665, 35.271416>,  <33.014843, 39.431892, 35.109131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797829, 39.137665, 35.271416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496916, 0.670427, 0.551001,
		-0.677299, 0.097329, -0.729241,
		-0.542531, -0.735564, 0.405715,
		32.635071, 38.916996, 35.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319725, 39.786114, 35.157513>,  <33.014843, 39.431892, 35.109131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319725, 39.786114, 35.157513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340530, 39.463791, 35.393471>,  <32.353012, 39.270397, 35.535046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340530, 39.463791, 35.393471>,  <32.319725, 39.786114, 35.157513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340530, 39.463791, 35.393471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374494, 0.531847, 0.759535,
		-0.925770, -0.260416, -0.274106,
		0.052013, -0.805806, 0.589892,
		32.356133, 39.222050, 35.570438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725016, 39.700092, 35.398575>,  <32.319725, 39.786114, 35.157513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725016, 39.700092, 35.398575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989328, 39.540585, 35.652927>,  <32.147915, 39.444878, 35.805538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989328, 39.540585, 35.652927>,  <31.725016, 39.700092, 35.398575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989328, 39.540585, 35.652927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327564, 0.609045, 0.722334,
		-0.675328, -0.685598, 0.271823,
		0.660783, -0.398773, 0.635882,
		32.187565, 39.420952, 35.843693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477177, 39.793804, 36.066658>,  <31.725016, 39.700092, 35.398575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477177, 39.793804, 36.066658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848482, 39.695160, 36.178020>,  <32.071266, 39.635975, 36.244839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848482, 39.695160, 36.178020>,  <31.477177, 39.793804, 36.066658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848482, 39.695160, 36.178020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139051, 0.464162, 0.874767,
		-0.344952, -0.850728, 0.396574,
		0.928263, -0.246608, 0.278408,
		32.126961, 39.621178, 36.261543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342890, 39.575436, 36.710407>,  <31.477177, 39.793804, 36.066658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342890, 39.575436, 36.710407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736355, 39.647449, 36.710106>,  <31.972433, 39.690659, 36.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736355, 39.647449, 36.710106>,  <31.342890, 39.575436, 36.710407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736355, 39.647449, 36.710106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039146, 0.217951, 0.975174,
		0.175720, -0.959212, 0.221437,
		0.983661, 0.180026, -0.000749,
		32.031452, 39.701458, 36.709881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628647, 39.379448, 37.404530>,  <31.342890, 39.575436, 36.710407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628647, 39.379448, 37.404530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944073, 39.588341, 37.274643>,  <32.133327, 39.713676, 37.196712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944073, 39.588341, 37.274643>,  <31.628647, 39.379448, 37.404530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944073, 39.588341, 37.274643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164614, 0.329506, 0.929692,
		0.592511, -0.786575, 0.173869,
		0.788564, 0.522232, -0.324717,
		32.180641, 39.745010, 37.177227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148846, 39.290203, 37.959583>,  <31.628647, 39.379448, 37.404530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148846, 39.290203, 37.959583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233105, 39.623734, 37.755478>,  <32.283661, 39.823853, 37.633015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233105, 39.623734, 37.755478>,  <32.148846, 39.290203, 37.959583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233105, 39.623734, 37.755478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092897, 0.502536, 0.859551,
		0.973139, -0.228462, 0.028397,
		0.210645, 0.833824, -0.510261,
		32.296299, 39.873882, 37.602398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768433, 39.605053, 38.295158>,  <32.148846, 39.290203, 37.959583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768433, 39.605053, 38.295158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572475, 39.897087, 38.104588>,  <32.454899, 40.072308, 37.990246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572475, 39.897087, 38.104588>,  <32.768433, 39.605053, 38.295158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572475, 39.897087, 38.104588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001464, 0.545810, 0.837908,
		0.871780, 0.411185, -0.266322,
		-0.489896, 0.730081, -0.476428,
		32.425507, 40.116112, 37.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066483, 40.183701, 38.581886>,  <32.768433, 39.605053, 38.295158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066483, 40.183701, 38.581886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754734, 40.352486, 38.396618>,  <32.567684, 40.453758, 38.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754734, 40.352486, 38.396618>,  <33.066483, 40.183701, 38.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754734, 40.352486, 38.396618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116408, 0.628842, 0.768770,
		0.615655, 0.653073, -0.440980,
		-0.779370, 0.421964, -0.463173,
		32.520924, 40.479076, 38.257668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114426, 40.962872, 38.571365>,  <33.066483, 40.183701, 38.581886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114426, 40.962872, 38.571365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721012, 40.897465, 38.540604>,  <32.484962, 40.858219, 38.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721012, 40.897465, 38.540604>,  <33.114426, 40.962872, 38.571365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721012, 40.897465, 38.540604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168350, 0.674567, 0.718761,
		-0.065656, 0.719875, -0.690991,
		-0.983538, -0.163519, -0.076901,
		32.425949, 40.848408, 38.517532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821598, 41.673267, 38.725666>,  <33.114426, 40.962872, 38.571365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821598, 41.673267, 38.725666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536583, 41.394531, 38.758430>,  <32.365574, 41.227291, 38.778088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536583, 41.394531, 38.758430>,  <32.821598, 41.673267, 38.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536583, 41.394531, 38.758430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481503, 0.570548, 0.665305,
		-0.510343, 0.434614, -0.742065,
		-0.712534, -0.696840, 0.081907,
		32.322823, 41.185478, 38.783001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130753, 41.945061, 38.486824>,  <32.821598, 41.673267, 38.725666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130753, 41.945061, 38.486824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014969, 41.640820, 38.719273>,  <31.945499, 41.458275, 38.858742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014969, 41.640820, 38.719273>,  <32.130753, 41.945061, 38.486824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014969, 41.640820, 38.719273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509103, 0.636451, 0.579434,
		-0.810574, -0.128131, -0.571448,
		-0.289456, -0.760600, 0.581123,
		31.928133, 41.412640, 38.893608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294928, 41.937248, 38.616497>,  <32.130753, 41.945061, 38.486824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294928, 41.937248, 38.616497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497311, 41.756157, 38.910175>,  <31.618740, 41.647503, 39.086384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497311, 41.756157, 38.910175>,  <31.294928, 41.937248, 38.616497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497311, 41.756157, 38.910175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497178, 0.542493, 0.677138,
		-0.704855, -0.707630, 0.049392,
		0.505958, -0.452727, 0.734197,
		31.649097, 41.620338, 39.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977091, 42.262417, 39.155941>,  <31.294928, 41.937248, 38.616497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977091, 42.262417, 39.155941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288126, 42.080959, 39.330097>,  <31.474747, 41.972084, 39.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288126, 42.080959, 39.330097>,  <30.977091, 42.262417, 39.155941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288126, 42.080959, 39.330097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281300, 0.368307, 0.886127,
		-0.562340, -0.811518, 0.158783,
		0.777588, -0.453639, 0.435394,
		31.521402, 41.944866, 39.460716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766769, 41.779709, 39.683968>,  <30.977091, 42.262417, 39.155941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766769, 41.779709, 39.683968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150452, 41.831085, 39.784710>,  <31.380661, 41.861912, 39.845154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150452, 41.831085, 39.784710>,  <30.766769, 41.779709, 39.683968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150452, 41.831085, 39.784710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282706, 0.428934, 0.857959,
		0.002166, -0.894158, 0.447746,
		0.959204, 0.128439, 0.251854,
		31.438213, 41.869617, 39.860268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773689, 41.733608, 40.334881>,  <30.766769, 41.779709, 39.683968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773689, 41.733608, 40.334881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123220, 41.925289, 40.301922>,  <31.332939, 42.040298, 40.282146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123220, 41.925289, 40.301922>,  <30.773689, 41.733608, 40.334881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123220, 41.925289, 40.301922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127382, 0.389161, 0.912320,
		0.469254, -0.786714, 0.401101,
		0.873828, 0.479203, -0.082402,
		31.385368, 42.069050, 40.277203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278036, 41.511292, 40.902493>,  <30.773689, 41.733608, 40.334881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278036, 41.511292, 40.902493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399776, 41.865940, 40.763195>,  <31.472820, 42.078728, 40.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399776, 41.865940, 40.763195>,  <31.278036, 41.511292, 40.902493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399776, 41.865940, 40.763195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148859, 0.316829, 0.936728,
		0.940857, -0.336933, -0.035554,
		0.304350, 0.886620, -0.348246,
		31.491081, 42.131927, 40.658722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898726, 41.806679, 41.297367>,  <31.278036, 41.511292, 40.902493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898726, 41.806679, 41.297367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743097, 42.126846, 41.114960>,  <31.649721, 42.318947, 41.005516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743097, 42.126846, 41.114960>,  <31.898726, 41.806679, 41.297367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743097, 42.126846, 41.114960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207622, 0.558477, 0.803116,
		0.897506, 0.217789, -0.383471,
		-0.389070, 0.800419, -0.456019,
		31.626377, 42.366974, 40.978153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475018, 42.430363, 41.261005>,  <31.898726, 41.806679, 41.297367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475018, 42.430363, 41.261005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110729, 42.589851, 41.217922>,  <31.892155, 42.685547, 41.192074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110729, 42.589851, 41.217922>,  <32.475018, 42.430363, 41.261005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110729, 42.589851, 41.217922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176882, 0.612191, 0.770672,
		0.373222, 0.682818, -0.628065,
		-0.910724, 0.398725, -0.107705,
		31.837513, 42.709469, 41.185612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561363, 43.153713, 41.200184>,  <32.475018, 42.430363, 41.261005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561363, 43.153713, 41.200184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194748, 43.098400, 41.350296>,  <31.974779, 43.065212, 41.440365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194748, 43.098400, 41.350296>,  <32.561363, 43.153713, 41.200184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194748, 43.098400, 41.350296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239881, 0.560754, 0.792472,
		-0.320025, 0.816354, -0.480781,
		-0.916538, -0.138281, 0.375283,
		31.919786, 43.056915, 41.462879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503315, 43.572323, 41.682053>,  <32.561363, 43.153713, 41.200184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503315, 43.572323, 41.682053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162495, 43.387188, 41.779861>,  <31.958002, 43.276108, 41.838547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162495, 43.387188, 41.779861>,  <32.503315, 43.572323, 41.682053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162495, 43.387188, 41.779861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051226, 0.391154, 0.918898,
		-0.520948, 0.795473, -0.309574,
		-0.852050, -0.462840, 0.244520,
		31.906879, 43.248337, 41.853218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039558, 44.072681, 41.948223>,  <32.503315, 43.572323, 41.682053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039558, 44.072681, 41.948223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889799, 43.745598, 42.123116>,  <31.799942, 43.549347, 42.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889799, 43.745598, 42.123116>,  <32.039558, 44.072681, 41.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889799, 43.745598, 42.123116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113246, 0.427677, 0.896810,
		-0.920325, 0.385282, -0.067521,
		-0.374402, -0.817710, 0.437233,
		31.777479, 43.500286, 42.254284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970259, 44.320442, 42.561420>,  <32.039558, 44.072681, 41.948223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970259, 44.320442, 42.561420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892061, 43.957848, 42.711117>,  <31.845142, 43.740288, 42.800934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892061, 43.957848, 42.711117>,  <31.970259, 44.320442, 42.561420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892061, 43.957848, 42.711117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330861, 0.298269, 0.895303,
		-0.923208, 0.298847, 0.241613,
		-0.195493, -0.906491, 0.374241,
		31.833414, 43.685902, 42.823387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456854, 44.419796, 43.132637>,  <31.970259, 44.320442, 42.561420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456854, 44.419796, 43.132637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650240, 44.075588, 43.196854>,  <31.766272, 43.869064, 43.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650240, 44.075588, 43.196854>,  <31.456854, 44.419796, 43.132637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650240, 44.075588, 43.196854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370638, 0.367384, 0.853027,
		-0.793026, -0.352903, 0.496557,
		0.483464, -0.860516, 0.160546,
		31.795279, 43.817432, 43.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343945, 44.299774, 43.808445>,  <31.456854, 44.419796, 43.132637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343945, 44.299774, 43.808445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662716, 44.070538, 43.732056>,  <31.853979, 43.932995, 43.686222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662716, 44.070538, 43.732056>,  <31.343945, 44.299774, 43.808445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662716, 44.070538, 43.732056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468480, 0.386768, 0.794315,
		-0.381351, -0.722481, 0.576708,
		0.796930, -0.573090, -0.190974,
		31.901794, 43.898609, 43.674763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459291, 44.023411, 44.382450>,  <31.343945, 44.299774, 43.808445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459291, 44.023411, 44.382450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808292, 43.962387, 44.196777>,  <32.017693, 43.925774, 44.085373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808292, 43.962387, 44.196777>,  <31.459291, 44.023411, 44.382450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808292, 43.962387, 44.196777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487601, 0.332949, 0.807087,
		0.031420, -0.930522, 0.364887,
		0.872501, -0.152561, -0.464185,
		32.070042, 43.916618, 44.057522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901690, 43.470737, 44.613216>,  <31.459291, 44.023411, 44.382450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901690, 43.470737, 44.613216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140530, 43.755558, 44.465458>,  <32.283833, 43.926453, 44.376804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140530, 43.755558, 44.465458>,  <31.901690, 43.470737, 44.613216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140530, 43.755558, 44.465458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220280, 0.297242, 0.929045,
		0.771328, -0.636103, 0.020633,
		0.597101, 0.712053, -0.369392,
		32.319660, 43.969173, 44.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508762, 43.327480, 44.918991>,  <31.901690, 43.470737, 44.613216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508762, 43.327480, 44.918991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538403, 43.705578, 44.791855>,  <32.556187, 43.932438, 44.715572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538403, 43.705578, 44.791855>,  <32.508762, 43.327480, 44.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538403, 43.705578, 44.791855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440232, 0.254979, 0.860919,
		0.894821, -0.203720, -0.397232,
		0.074101, 0.945243, -0.317844,
		32.560635, 43.989151, 44.696503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197224, 43.491821, 44.990181>,  <32.508762, 43.327480, 44.918991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197224, 43.491821, 44.990181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014641, 43.847408, 44.975296>,  <32.905090, 44.060760, 44.966366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014641, 43.847408, 44.975296>,  <33.197224, 43.491821, 44.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014641, 43.847408, 44.975296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629552, 0.352248, 0.692521,
		0.628736, 0.292681, -0.720437,
		-0.456460, 0.888965, -0.037214,
		32.877701, 44.114098, 44.964130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692108, 43.965897, 45.276619>,  <33.197224, 43.491821, 44.990181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692108, 43.965897, 45.276619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339539, 44.153965, 45.294643>,  <33.127998, 44.266808, 45.305458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339539, 44.153965, 45.294643>,  <33.692108, 43.965897, 45.276619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339539, 44.153965, 45.294643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304626, 0.492981, 0.814968,
		0.360961, 0.732059, -0.577752,
		-0.881425, 0.470170, 0.045057,
		33.075111, 44.295017, 45.308159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769604, 44.764038, 45.455345>,  <33.692108, 43.965897, 45.276619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769604, 44.764038, 45.455345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391808, 44.688545, 45.562916>,  <33.165131, 44.643250, 45.627457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391808, 44.688545, 45.562916>,  <33.769604, 44.764038, 45.455345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391808, 44.688545, 45.562916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220475, 0.242765, 0.944699,
		-0.243577, 0.951550, -0.187679,
		-0.944490, -0.188729, 0.268925,
		33.108459, 44.631927, 45.643593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586716, 45.304646, 45.906170>,  <33.769604, 44.764038, 45.455345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586716, 45.304646, 45.906170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347328, 44.992756, 45.979786>,  <33.203697, 44.805622, 46.023956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347328, 44.992756, 45.979786>,  <33.586716, 45.304646, 45.906170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347328, 44.992756, 45.979786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088753, 0.163780, 0.982496,
		-0.796218, 0.604324, -0.028813,
		-0.598465, -0.779724, 0.184040,
		33.167789, 44.758839, 46.035000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078983, 45.544083, 46.319172>,  <33.586716, 45.304646, 45.906170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078983, 45.544083, 46.319172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107430, 45.149651, 46.379295>,  <33.124496, 44.912991, 46.415371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107430, 45.149651, 46.379295>,  <33.078983, 45.544083, 46.319172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107430, 45.149651, 46.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102091, 0.157097, 0.982292,
		-0.992230, -0.054511, 0.111842,
		0.071116, -0.986078, 0.150312,
		33.128765, 44.853828, 46.424389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510021, 45.316364, 46.836861>,  <33.078983, 45.544083, 46.319172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510021, 45.316364, 46.836861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817307, 45.060287, 46.837303>,  <33.001678, 44.906643, 46.837570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817307, 45.060287, 46.837303>,  <32.510021, 45.316364, 46.836861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817307, 45.060287, 46.837303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042358, 0.052555, 0.997719,
		-0.638790, -0.766415, 0.067490,
		0.768214, -0.640192, 0.001108,
		33.047771, 44.868229, 46.837635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364635, 44.666672, 46.992813>,  <32.510021, 45.316364, 46.836861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364635, 44.666672, 46.992813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730347, 44.759300, 47.125759>,  <32.949776, 44.814877, 47.205524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730347, 44.759300, 47.125759>,  <32.364635, 44.666672, 46.992813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730347, 44.759300, 47.125759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319512, -0.092089, 0.943097,
		0.249001, -0.968449, -0.010206,
		0.914281, 0.231572, 0.332361,
		33.004631, 44.828773, 47.225468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819191, 44.243423, 46.885258>,  <32.364635, 44.666672, 46.992813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819191, 44.243423, 46.885258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860620, 44.072811, 47.244667>,  <31.885479, 43.970444, 47.460312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860620, 44.072811, 47.244667>,  <31.819191, 44.243423, 46.885258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860620, 44.072811, 47.244667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794627, 0.578807, 0.183165,
		-0.598197, 0.695019, 0.398885,
		0.103574, -0.426534, 0.898522,
		31.891693, 43.944851, 47.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800865, 44.858131, 47.379265>,  <31.819191, 44.243423, 46.885258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800865, 44.858131, 47.379265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011799, 44.561493, 47.545135>,  <32.138359, 44.383511, 47.644657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011799, 44.561493, 47.545135>,  <31.800865, 44.858131, 47.379265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011799, 44.561493, 47.545135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640280, 0.667671, 0.379812,
		-0.558532, 0.065218, 0.826915,
		0.527336, -0.741594, 0.414674,
		32.169998, 44.339016, 47.669537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901306, 45.036293, 48.097546>,  <31.800865, 44.858131, 47.379265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901306, 45.036293, 48.097546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196232, 44.820469, 47.934948>,  <32.373188, 44.690975, 47.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196232, 44.820469, 47.934948>,  <31.901306, 45.036293, 48.097546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196232, 44.820469, 47.934948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674457, 0.622160, 0.397522,
		0.038415, -0.567262, 0.822641,
		0.737314, -0.539565, -0.406495,
		32.417427, 44.658600, 47.813000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457485, 44.953129, 48.516056>,  <31.901306, 45.036293, 48.097546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457485, 44.953129, 48.516056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581448, 44.930733, 48.136410>,  <32.655827, 44.917294, 47.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581448, 44.930733, 48.136410>,  <32.457485, 44.953129, 48.516056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581448, 44.930733, 48.136410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752543, 0.624539, 0.208880,
		0.581064, -0.778984, 0.235687,
		0.309910, -0.055992, -0.949116,
		32.674419, 44.913937, 47.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492546, 44.229214, 48.318615>,  <32.457485, 44.953129, 48.516056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492546, 44.229214, 48.318615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871994, 44.203766, 48.442600>,  <33.099663, 44.188496, 48.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871994, 44.203766, 48.442600>,  <32.492546, 44.229214, 48.318615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871994, 44.203766, 48.442600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072843, -0.909360, -0.409582,
		0.307931, 0.411116, -0.857999,
		0.948616, -0.063624, 0.309968,
		33.156578, 44.184677, 48.535591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921036, 43.810577, 47.821369>,  <32.492546, 44.229214, 48.318615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921036, 43.810577, 47.821369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113472, 43.818832, 48.171940>,  <33.228931, 43.823784, 48.382282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113472, 43.818832, 48.171940>,  <32.921036, 43.810577, 47.821369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113472, 43.818832, 48.171940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181810, -0.980337, -0.076713,
		0.857612, 0.196250, -0.475381,
		0.481089, 0.020639, 0.876429,
		33.257797, 43.825024, 48.434868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604061, 43.672428, 47.753647>,  <32.921036, 43.810577, 47.821369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604061, 43.672428, 47.753647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454586, 43.525578, 48.094372>,  <33.364899, 43.437469, 48.298805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454586, 43.525578, 48.094372>,  <33.604061, 43.672428, 47.753647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454586, 43.525578, 48.094372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371188, -0.900787, -0.225393,
		0.850044, 0.231954, 0.472887,
		-0.373690, -0.367124, 0.851808,
		33.342480, 43.415440, 48.349915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087917, 43.245655, 48.052166>,  <33.604061, 43.672428, 47.753647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087917, 43.245655, 48.052166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723618, 43.120613, 48.160107>,  <33.505039, 43.045586, 48.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723618, 43.120613, 48.160107>,  <34.087917, 43.245655, 48.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723618, 43.120613, 48.160107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213193, -0.915539, -0.341083,
		0.353684, -0.253109, 0.900468,
		-0.910745, -0.312609, 0.269850,
		33.450394, 43.026829, 48.241062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006496, 42.639473, 48.546158>,  <34.087917, 43.245655, 48.052166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006496, 42.639473, 48.546158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706512, 42.658745, 48.282269>,  <33.526524, 42.670307, 48.123936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706512, 42.658745, 48.282269>,  <34.006496, 42.639473, 48.546158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706512, 42.658745, 48.282269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186498, -0.941482, -0.280767,
		-0.634649, -0.333601, 0.697088,
		-0.749960, 0.048183, -0.659726,
		33.481525, 42.673199, 48.084351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628666, 41.999729, 48.577557>,  <34.006496, 42.639473, 48.546158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628666, 41.999729, 48.577557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571133, 42.189480, 48.230160>,  <33.536613, 42.303329, 48.021721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571133, 42.189480, 48.230160>,  <33.628666, 41.999729, 48.577557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571133, 42.189480, 48.230160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019796, -0.878821, -0.476741,
		-0.989404, -0.051377, 0.135792,
		-0.143830, 0.474378, -0.868492,
		33.527985, 42.331795, 47.969612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912205, 41.907593, 48.263142>,  <33.628666, 41.999729, 48.577557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912205, 41.907593, 48.263142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162010, 42.012856, 47.969002>,  <33.311893, 42.076012, 47.792519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162010, 42.012856, 47.969002>,  <32.912205, 41.907593, 48.263142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162010, 42.012856, 47.969002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272985, -0.808595, -0.521204,
		-0.731754, 0.526237, -0.433140,
		0.624511, 0.263153, -0.735347,
		33.349365, 42.091801, 47.748398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591187, 41.803322, 47.642342>,  <32.912205, 41.907593, 48.263142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591187, 41.803322, 47.642342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952076, 41.838753, 47.473511>,  <33.168610, 41.860012, 47.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952076, 41.838753, 47.473511>,  <32.591187, 41.803322, 47.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952076, 41.838753, 47.473511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261648, -0.665569, -0.698969,
		-0.342837, 0.741061, -0.577314,
		0.902221, 0.088579, -0.422079,
		33.222744, 41.865326, 47.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484936, 42.023125, 46.942268>,  <32.591187, 41.803322, 47.642342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484936, 42.023125, 46.942268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850803, 41.861477, 46.938965>,  <33.070324, 41.764488, 46.936981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850803, 41.861477, 46.938965>,  <32.484936, 42.023125, 46.942268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850803, 41.861477, 46.938965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270571, -0.596950, -0.755276,
		0.300293, 0.693061, -0.655355,
		0.914667, -0.404124, -0.008263,
		33.125202, 41.740238, 46.936485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743050, 42.055290, 46.274590>,  <32.484936, 42.023125, 46.942268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743050, 42.055290, 46.274590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939293, 41.748753, 46.440495>,  <33.057037, 41.564831, 46.540035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939293, 41.748753, 46.440495>,  <32.743050, 42.055290, 46.274590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939293, 41.748753, 46.440495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160679, -0.547377, -0.821316,
		0.856439, 0.336299, -0.391681,
		0.490606, -0.766342, 0.414760,
		33.086475, 41.518848, 46.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143894, 41.830555, 45.737003>,  <32.743050, 42.055290, 46.274590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143894, 41.830555, 45.737003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139221, 41.512714, 45.979813>,  <33.136417, 41.322010, 46.125496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139221, 41.512714, 45.979813>,  <33.143894, 41.830555, 45.737003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139221, 41.512714, 45.979813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154733, -0.598313, -0.786181,
		0.987887, -0.103110, -0.115961,
		-0.011682, -0.794601, 0.607020,
		33.135715, 41.274334, 46.161919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695595, 41.330151, 45.451260>,  <33.143894, 41.830555, 45.737003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695595, 41.330151, 45.451260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427242, 41.139343, 45.678368>,  <33.266232, 41.024860, 45.814632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427242, 41.139343, 45.678368>,  <33.695595, 41.330151, 45.451260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427242, 41.139343, 45.678368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131894, -0.676681, -0.724366,
		0.729738, -0.560852, 0.391059,
		-0.670885, -0.477019, 0.567773,
		33.225975, 40.996239, 45.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862133, 40.585228, 45.387955>,  <33.695595, 41.330151, 45.451260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862133, 40.585228, 45.387955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483002, 40.580662, 45.515385>,  <33.255524, 40.577923, 45.591843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483002, 40.580662, 45.515385>,  <33.862133, 40.585228, 45.387955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483002, 40.580662, 45.515385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249634, -0.594926, -0.764033,
		0.198247, -0.803700, 0.561039,
		-0.947830, -0.011413, 0.318573,
		33.198654, 40.577236, 45.610958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685535, 39.950108, 45.399647>,  <33.862133, 40.585228, 45.387955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685535, 39.950108, 45.399647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 40.111660, 45.407303>,  <33.100185, 40.208591, 45.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 40.111660, 45.407303>,  <33.685535, 39.950108, 45.399647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319691, 40.111660, 45.407303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272893, -0.581670, -0.766282,
		-0.298355, -0.706073, 0.642219,
		-0.914611, 0.403881, 0.019138,
		33.045307, 40.232826, 45.413044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240856, 39.420578, 45.398319>,  <33.685535, 39.950108, 45.399647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240856, 39.420578, 45.398319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994316, 39.711231, 45.276917>,  <32.846394, 39.885624, 45.204075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994316, 39.711231, 45.276917>,  <33.240856, 39.420578, 45.398319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994316, 39.711231, 45.276917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177229, -0.503531, -0.845604,
		-0.767269, -0.467397, 0.439132,
		-0.616350, 0.726633, -0.303508,
		32.809410, 39.929222, 45.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739723, 39.057964, 45.013691>,  <33.240856, 39.420578, 45.398319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739723, 39.057964, 45.013691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686504, 39.434536, 44.889755>,  <32.654572, 39.660480, 44.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686504, 39.434536, 44.889755>,  <32.739723, 39.057964, 45.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686504, 39.434536, 44.889755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230441, -0.333439, -0.914175,
		-0.963947, -0.050232, 0.261309,
		-0.133051, 0.941433, -0.309842,
		32.646587, 39.716965, 44.796803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019062, 39.073189, 44.587849>,  <32.739723, 39.057964, 45.013691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019062, 39.073189, 44.587849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256779, 39.377731, 44.484196>,  <32.399410, 39.560455, 44.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256779, 39.377731, 44.484196>,  <32.019062, 39.073189, 44.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256779, 39.377731, 44.484196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185308, -0.183908, -0.965318,
		-0.782608, 0.621703, 0.031790,
		0.594294, 0.761357, -0.259135,
		32.435066, 39.606140, 44.406456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671551, 39.398502, 44.077057>,  <32.019062, 39.073189, 44.587849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671551, 39.398502, 44.077057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058990, 39.484146, 44.026501>,  <32.291454, 39.535530, 43.996166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058990, 39.484146, 44.026501>,  <31.671551, 39.398502, 44.077057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058990, 39.484146, 44.026501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106805, -0.100749, -0.989162,
		-0.224520, 0.971601, -0.074717,
		0.968599, 0.214107, -0.126391,
		32.349571, 39.548378, 43.988583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687943, 39.865326, 43.633209>,  <31.671551, 39.398502, 44.077057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687943, 39.865326, 43.633209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044067, 39.688107, 43.591148>,  <32.257744, 39.581776, 43.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044067, 39.688107, 43.591148>,  <31.687943, 39.865326, 43.633209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044067, 39.688107, 43.591148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039436, 0.155030, -0.987122,
		0.453642, 0.882993, 0.120553,
		0.890311, -0.443046, -0.105150,
		32.311161, 39.555191, 43.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006382, 40.229412, 43.185429>,  <31.687943, 39.865326, 43.633209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006382, 40.229412, 43.185429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224693, 39.894310, 43.178535>,  <32.355679, 39.693249, 43.174400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224693, 39.894310, 43.178535>,  <32.006382, 40.229412, 43.185429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224693, 39.894310, 43.178535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003674, 0.018178, -0.999828,
		0.837921, 0.545749, 0.006843,
		0.545779, -0.837752, -0.017236,
		32.388428, 39.642986, 43.173363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556160, 40.356461, 42.634182>,  <32.006382, 40.229412, 43.185429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556160, 40.356461, 42.634182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505051, 39.965900, 42.703835>,  <32.474384, 39.731564, 42.745625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505051, 39.965900, 42.703835>,  <32.556160, 40.356461, 42.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505051, 39.965900, 42.703835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117738, -0.189258, -0.974843,
		0.984791, -0.104053, 0.139141,
		-0.127769, -0.976399, 0.174128,
		32.466721, 39.672981, 42.756073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982018, 40.043903, 42.085670>,  <32.556160, 40.356461, 42.634182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982018, 40.043903, 42.085670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781284, 39.725040, 42.219952>,  <32.660843, 39.533722, 42.300518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781284, 39.725040, 42.219952>,  <32.982018, 40.043903, 42.085670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781284, 39.725040, 42.219952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056396, -0.417439, -0.906953,
		0.863123, -0.436209, 0.254442,
		-0.501835, -0.797162, 0.335701,
		32.630733, 39.485893, 42.320663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295700, 39.452137, 41.683067>,  <32.982018, 40.043903, 42.085670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295700, 39.452137, 41.683067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953606, 39.322533, 41.844849>,  <32.748348, 39.244770, 41.941917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953606, 39.322533, 41.844849>,  <33.295700, 39.452137, 41.683067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953606, 39.322533, 41.844849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208770, -0.498905, -0.841136,
		0.474323, -0.803809, 0.359038,
		-0.855238, -0.324014, 0.404453,
		32.697033, 39.225330, 41.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256683, 38.754868, 41.774719>,  <33.295700, 39.452137, 41.683067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256683, 38.754868, 41.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864006, 38.826141, 41.747807>,  <32.628399, 38.868904, 41.731659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864006, 38.826141, 41.747807>,  <33.256683, 38.754868, 41.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864006, 38.826141, 41.747807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036112, -0.520989, -0.852799,
		-0.187008, -0.834758, 0.517886,
		-0.981694, 0.178183, -0.067284,
		32.569496, 38.879597, 41.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980927, 38.113564, 41.622658>,  <33.256683, 38.754868, 41.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980927, 38.113564, 41.622658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689465, 38.365738, 41.515614>,  <32.514587, 38.517044, 41.451385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689465, 38.365738, 41.515614>,  <32.980927, 38.113564, 41.622658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689465, 38.365738, 41.515614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019196, -0.409384, -0.912160,
		-0.684613, -0.659512, 0.310401,
		-0.728654, 0.630435, -0.267610,
		32.470867, 38.554867, 41.435329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490868, 37.693542, 41.386345>,  <32.980927, 38.113564, 41.622658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490868, 37.693542, 41.386345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465237, 38.058357, 41.224312>,  <32.449860, 38.277245, 41.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465237, 38.058357, 41.224312>,  <32.490868, 37.693542, 41.386345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465237, 38.058357, 41.224312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064137, -0.408838, -0.910350,
		-0.995882, -0.032349, 0.084691,
		-0.064074, 0.912033, -0.405079,
		32.446014, 38.331966, 41.102787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035973, 37.603336, 40.860413>,  <32.490868, 37.693542, 41.386345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035973, 37.603336, 40.860413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137024, 37.973236, 40.746563>,  <32.197655, 38.195175, 40.678253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137024, 37.973236, 40.746563>,  <32.035973, 37.603336, 40.860413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137024, 37.973236, 40.746563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005258, -0.292850, -0.956144,
		-0.967550, 0.243043, -0.069119,
		0.252626, 0.924753, -0.284625,
		32.212811, 38.250664, 40.661175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619213, 37.721092, 40.322891>,  <32.035973, 37.603336, 40.860413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619213, 37.721092, 40.322891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900175, 38.003201, 40.284481>,  <32.068752, 38.172466, 40.261436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900175, 38.003201, 40.284481>,  <31.619213, 37.721092, 40.322891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900175, 38.003201, 40.284481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060985, -0.194046, -0.979095,
		-0.709160, 0.681866, -0.179310,
		0.702405, 0.705270, -0.096026,
		32.110897, 38.214783, 40.255672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370695, 38.074783, 39.749172>,  <31.619213, 37.721092, 40.322891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370695, 38.074783, 39.749172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767576, 38.089500, 39.796810>,  <32.005703, 38.098331, 39.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767576, 38.089500, 39.796810>,  <31.370695, 38.074783, 39.749172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767576, 38.089500, 39.796810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123902, -0.395342, -0.910139,
		0.013595, 0.917797, -0.396818,
		0.992201, 0.036793, 0.119091,
		32.065235, 38.100540, 39.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618334, 38.470074, 39.127731>,  <31.370695, 38.074783, 39.749172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618334, 38.470074, 39.127731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910069, 38.251877, 39.292904>,  <32.085110, 38.120960, 39.392006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910069, 38.251877, 39.292904>,  <31.618334, 38.470074, 39.127731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910069, 38.251877, 39.292904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181226, -0.427962, -0.885441,
		0.659716, 0.720618, -0.213272,
		0.729337, -0.545489, 0.412928,
		32.128868, 38.088230, 39.416782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227325, 38.596161, 38.701393>,  <31.618334, 38.470074, 39.127731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227325, 38.596161, 38.701393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324627, 38.255032, 38.886223>,  <32.383007, 38.050354, 38.997120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324627, 38.255032, 38.886223>,  <32.227325, 38.596161, 38.701393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324627, 38.255032, 38.886223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213461, -0.417638, -0.883184,
		0.946183, 0.313472, 0.080453,
		0.243253, -0.852827, 0.462076,
		32.397602, 37.999184, 39.024845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866512, 38.409107, 38.500542>,  <32.227325, 38.596161, 38.701393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866512, 38.409107, 38.500542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710682, 38.069019, 38.642166>,  <32.617184, 37.864967, 38.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710682, 38.069019, 38.642166>,  <32.866512, 38.409107, 38.500542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710682, 38.069019, 38.642166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221046, -0.459511, -0.860226,
		0.894075, -0.256858, 0.366951,
		-0.389574, -0.850220, 0.354060,
		32.593811, 37.813953, 38.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214066, 37.891304, 38.119579>,  <32.866512, 38.409107, 38.500542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214066, 37.891304, 38.119579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926258, 37.675327, 38.294281>,  <32.753574, 37.545742, 38.399101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926258, 37.675327, 38.294281>,  <33.214066, 37.891304, 38.119579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926258, 37.675327, 38.294281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031024, -0.653259, -0.756499,
		0.693778, -0.530766, 0.486784,
		-0.719520, -0.539945, 0.436750,
		32.710403, 37.513344, 38.425304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423904, 37.167217, 37.934639>,  <33.214066, 37.891304, 38.119579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423904, 37.167217, 37.934639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034492, 37.162914, 38.025970>,  <32.800846, 37.160332, 38.080769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034492, 37.162914, 38.025970>,  <33.423904, 37.167217, 37.934639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034492, 37.162914, 38.025970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129956, -0.795702, -0.591582,
		0.188042, -0.605592, 0.773239,
		-0.973525, -0.010755, 0.228326,
		32.742435, 37.159687, 38.094467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196960, 36.480812, 38.115288>,  <33.423904, 37.167217, 37.934639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196960, 36.480812, 38.115288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857582, 36.674252, 38.029247>,  <32.653954, 36.790318, 37.977623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857582, 36.674252, 38.029247>,  <33.196960, 36.480812, 38.115288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857582, 36.674252, 38.029247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341648, -0.810796, -0.475275,
		-0.404250, -0.329754, 0.853137,
		-0.848444, 0.483603, -0.215105,
		32.603050, 36.819332, 37.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723007, 35.984772, 38.042412>,  <33.196960, 36.480812, 38.115288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723007, 35.984772, 38.042412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528919, 36.288471, 37.868927>,  <32.412464, 36.470692, 37.764835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528919, 36.288471, 37.868927>,  <32.723007, 35.984772, 38.042412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528919, 36.288471, 37.868927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454476, -0.642739, -0.616716,
		-0.747001, -0.102135, 0.656931,
		-0.485223, 0.759246, -0.433709,
		32.383350, 36.516247, 37.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032215, 35.696316, 37.996071>,  <32.723007, 35.984772, 38.042412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032215, 35.696316, 37.996071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077755, 35.996155, 37.735260>,  <32.105080, 36.176056, 37.578773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077755, 35.996155, 37.735260>,  <32.032215, 35.696316, 37.996071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077755, 35.996155, 37.735260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260169, -0.610900, -0.747739,
		-0.958827, 0.254770, 0.125469,
		0.113852, 0.749596, -0.652031,
		32.111912, 36.221035, 37.539650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475889, 35.633152, 37.500317>,  <32.032215, 35.696316, 37.996071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475889, 35.633152, 37.500317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720781, 35.880295, 37.302963>,  <31.867716, 36.028580, 37.184551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720781, 35.880295, 37.302963>,  <31.475889, 35.633152, 37.500317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720781, 35.880295, 37.302963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246630, -0.443645, -0.861599,
		-0.751230, 0.649181, -0.119233,
		0.612231, 0.617853, -0.493387,
		31.904451, 36.065651, 37.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046381, 35.927959, 36.923531>,  <31.475889, 35.633152, 37.500317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046381, 35.927959, 36.923531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440794, 35.929291, 36.856922>,  <31.677443, 35.930088, 36.816959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440794, 35.929291, 36.856922>,  <31.046381, 35.927959, 36.923531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440794, 35.929291, 36.856922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156524, -0.323187, -0.933301,
		-0.056920, 0.946329, -0.318153,
		0.986032, 0.003325, -0.166519,
		31.736605, 35.930286, 36.806965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213261, 36.243000, 36.303635>,  <31.046381, 35.927959, 36.923531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213261, 36.243000, 36.303635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520636, 35.998100, 36.378094>,  <31.705061, 35.851158, 36.422768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520636, 35.998100, 36.378094>,  <31.213261, 36.243000, 36.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520636, 35.998100, 36.378094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036014, -0.331799, -0.942662,
		0.638911, 0.717673, -0.277017,
		0.768437, -0.612254, 0.186144,
		31.751167, 35.814423, 36.433937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727478, 36.287251, 35.748466>,  <31.213261, 36.243000, 36.303635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727478, 36.287251, 35.748466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827459, 35.946106, 35.931835>,  <31.887447, 35.741421, 36.041855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827459, 35.946106, 35.931835>,  <31.727478, 36.287251, 35.748466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827459, 35.946106, 35.931835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149789, -0.433692, -0.888524,
		0.956602, 0.290756, 0.019347,
		0.249953, -0.852861, 0.458423,
		31.902445, 35.690247, 36.069363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140778, 36.007915, 35.277214>,  <31.727478, 36.287251, 35.748466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140778, 36.007915, 35.277214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103622, 35.687702, 35.514034>,  <32.081329, 35.495575, 35.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103622, 35.687702, 35.514034>,  <32.140778, 36.007915, 35.277214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103622, 35.687702, 35.514034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261724, -0.593338, -0.761216,
		0.960662, 0.084245, 0.264632,
		-0.092888, -0.800533, 0.592047,
		32.075756, 35.447544, 35.691647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733658, 35.710617, 35.303879>,  <32.140778, 36.007915, 35.277214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733658, 35.710617, 35.303879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445759, 35.444878, 35.384468>,  <32.273018, 35.285435, 35.432823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445759, 35.444878, 35.384468>,  <32.733658, 35.710617, 35.303879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445759, 35.444878, 35.384468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348963, -0.597106, -0.722280,
		0.600151, -0.449555, 0.661603,
		-0.719752, -0.664352, 0.201476,
		32.229832, 35.245571, 35.444912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112400, 35.019535, 35.381622>,  <32.733658, 35.710617, 35.303879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112400, 35.019535, 35.381622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721535, 34.970795, 35.311985>,  <32.487015, 34.941551, 35.270203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721535, 34.970795, 35.311985>,  <33.112400, 35.019535, 35.381622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721535, 34.970795, 35.311985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209739, -0.684695, -0.697999,
		-0.034153, -0.718572, 0.694613,
		-0.977160, -0.121849, -0.174097,
		32.428387, 34.934238, 35.259754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727001, 35.054825, 35.765678>,  <33.112400, 35.019535, 35.381622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727001, 35.054825, 35.765678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110867, 34.944336, 35.786613>,  <34.341187, 34.878044, 35.799175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110867, 34.944336, 35.786613>,  <33.727001, 35.054825, 35.765678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110867, 34.944336, 35.786613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049097, 0.018638, 0.998620,
		-0.276818, -0.960913, 0.004325,
		0.959667, -0.276223, 0.052337,
		34.398766, 34.861469, 35.802315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789654, 34.489017, 36.387440>,  <33.727001, 35.054825, 35.765678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789654, 34.489017, 36.387440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168877, 34.600403, 36.325935>,  <34.396412, 34.667236, 36.289032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168877, 34.600403, 36.325935>,  <33.789654, 34.489017, 36.387440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168877, 34.600403, 36.325935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166369, -0.022071, 0.985817,
		0.271125, -0.960192, -0.067253,
		0.948058, 0.278469, -0.153762,
		34.453293, 34.683945, 36.279808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324738, 33.937107, 36.631996>,  <33.789654, 34.489017, 36.387440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324738, 33.937107, 36.631996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519081, 34.286419, 36.617424>,  <34.635685, 34.496006, 36.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519081, 34.286419, 36.617424>,  <34.324738, 33.937107, 36.631996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519081, 34.286419, 36.617424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201120, -0.071138, 0.976980,
		0.850585, -0.481999, -0.210197,
		0.485856, 0.873279, -0.036431,
		34.664837, 34.548401, 36.606495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026291, 33.750366, 36.846928>,  <34.324738, 33.937107, 36.631996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026291, 33.750366, 36.846928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965675, 34.140335, 36.912128>,  <34.929306, 34.374317, 36.951248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965675, 34.140335, 36.912128>,  <35.026291, 33.750366, 36.846928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965675, 34.140335, 36.912128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230321, -0.125543, 0.964982,
		0.961243, 0.183777, -0.205519,
		-0.151540, 0.974918, 0.163005,
		34.920212, 34.432812, 36.961029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393139, 33.916702, 37.396725>,  <35.026291, 33.750366, 36.846928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393139, 33.916702, 37.396725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156715, 34.239307, 37.402222>,  <35.014862, 34.432869, 37.405518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156715, 34.239307, 37.402222>,  <35.393139, 33.916702, 37.396725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156715, 34.239307, 37.402222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160840, 0.101147, 0.981784,
		0.790430, 0.582502, -0.189503,
		-0.591059, 0.806512, 0.013740,
		34.979397, 34.481262, 37.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759342, 34.427708, 37.658180>,  <35.393139, 33.916702, 37.396725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759342, 34.427708, 37.658180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387062, 34.555069, 37.730198>,  <35.163692, 34.631485, 37.773407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387062, 34.555069, 37.730198>,  <35.759342, 34.427708, 37.658180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387062, 34.555069, 37.730198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238916, 0.156458, 0.958353,
		0.276975, 0.934954, -0.221687,
		-0.930701, 0.318404, 0.180040,
		35.107853, 34.650589, 37.784210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860531, 35.118019, 37.957977>,  <35.759342, 34.427708, 37.658180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860531, 35.118019, 37.957977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508553, 34.957924, 38.060360>,  <35.297367, 34.861866, 38.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508553, 34.957924, 38.060360>,  <35.860531, 35.118019, 37.957977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508553, 34.957924, 38.060360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162093, 0.253497, 0.953659,
		-0.446571, 0.880654, -0.158188,
		-0.879943, -0.400235, 0.255952,
		35.244568, 34.837852, 38.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493221, 35.568394, 38.360592>,  <35.860531, 35.118019, 37.957977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493221, 35.568394, 38.360592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313942, 35.229057, 38.473324>,  <35.206375, 35.025455, 38.540962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313942, 35.229057, 38.473324>,  <35.493221, 35.568394, 38.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313942, 35.229057, 38.473324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095086, 0.268239, 0.958648,
		-0.888863, 0.456462, -0.039559,
		-0.448198, -0.848346, 0.281831,
		35.179482, 34.974552, 38.557873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027840, 35.705303, 38.797523>,  <35.493221, 35.568394, 38.360592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027840, 35.705303, 38.797523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038521, 35.316120, 38.889297>,  <35.044930, 35.082611, 38.944363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038521, 35.316120, 38.889297>,  <35.027840, 35.705303, 38.797523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038521, 35.316120, 38.889297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057869, 0.227628, 0.972027,
		-0.997967, -0.039237, -0.050225,
		0.026707, -0.972957, 0.229436,
		35.046532, 35.024235, 38.958130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575504, 35.686642, 39.209717>,  <35.027840, 35.705303, 38.797523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575504, 35.686642, 39.209717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796165, 35.359924, 39.277275>,  <34.928562, 35.163895, 39.317810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796165, 35.359924, 39.277275>,  <34.575504, 35.686642, 39.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796165, 35.359924, 39.277275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009067, 0.196612, 0.980439,
		-0.834022, -0.542397, 0.101057,
		0.551656, -0.816792, 0.168897,
		34.961662, 35.114887, 39.327946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254753, 35.202049, 39.733856>,  <34.575504, 35.686642, 39.209717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254753, 35.202049, 39.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646973, 35.124046, 39.742828>,  <34.882305, 35.077244, 39.748211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646973, 35.124046, 39.742828>,  <34.254753, 35.202049, 39.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646973, 35.124046, 39.742828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029418, 0.258962, 0.965439,
		-0.194073, -0.945998, 0.259661,
		0.980546, -0.195004, 0.022428,
		34.941135, 35.065544, 39.749557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364319, 34.932369, 40.424175>,  <34.254753, 35.202049, 39.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364319, 34.932369, 40.424175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729839, 35.032600, 40.296318>,  <34.949154, 35.092739, 40.219604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729839, 35.032600, 40.296318>,  <34.364319, 34.932369, 40.424175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729839, 35.032600, 40.296318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277298, 0.190101, 0.941789,
		0.296758, -0.949247, 0.104230,
		0.913806, 0.250581, -0.319638,
		35.003983, 35.107773, 40.200428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836037, 34.645367, 40.867027>,  <34.364319, 34.932369, 40.424175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836037, 34.645367, 40.867027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993755, 34.971107, 40.696682>,  <35.088387, 35.166553, 40.594475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993755, 34.971107, 40.696682>,  <34.836037, 34.645367, 40.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993755, 34.971107, 40.696682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060821, 0.439262, 0.896298,
		0.916968, -0.379309, 0.123670,
		0.394297, 0.814355, -0.425859,
		35.112045, 35.215412, 40.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359005, 34.791210, 41.311272>,  <34.836037, 34.645367, 40.867027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359005, 34.791210, 41.311272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271030, 35.119164, 41.099831>,  <35.218246, 35.315933, 40.972965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271030, 35.119164, 41.099831>,  <35.359005, 34.791210, 41.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271030, 35.119164, 41.099831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254974, 0.571351, 0.780094,
		0.941603, 0.036790, -0.334710,
		-0.219937, 0.819881, -0.528605,
		35.205048, 35.365128, 40.941250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982422, 35.164639, 41.489059>,  <35.359005, 34.791210, 41.311272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982422, 35.164639, 41.489059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688007, 35.415840, 41.387981>,  <35.511356, 35.566563, 41.327335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688007, 35.415840, 41.387981>,  <35.982422, 35.164639, 41.489059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688007, 35.415840, 41.387981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167424, 0.530572, 0.830941,
		0.655907, 0.569300, -0.495665,
		-0.736040, 0.628007, -0.252691,
		35.467194, 35.604240, 41.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228867, 35.839771, 41.635170>,  <35.982422, 35.164639, 41.489059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228867, 35.839771, 41.635170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834061, 35.903072, 41.624229>,  <35.597176, 35.941055, 41.617664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834061, 35.903072, 41.624229>,  <36.228867, 35.839771, 41.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834061, 35.903072, 41.624229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109219, 0.786296, 0.608120,
		0.117746, 0.597239, -0.793374,
		-0.987019, 0.158255, -0.027354,
		35.537956, 35.950550, 41.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175262, 36.548714, 41.603527>,  <36.228867, 35.839771, 41.635170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175262, 36.548714, 41.603527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829372, 36.406837, 41.745766>,  <35.621838, 36.321712, 41.831108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829372, 36.406837, 41.745766>,  <36.175262, 36.548714, 41.603527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829372, 36.406837, 41.745766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053251, 0.639275, 0.767132,
		-0.499417, 0.682293, -0.533908,
		-0.864723, -0.354688, 0.355598,
		35.569954, 36.300430, 41.852444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792561, 37.046707, 41.463947>,  <36.175262, 36.548714, 41.603527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792561, 37.046707, 41.463947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636284, 36.852283, 41.776642>,  <35.542519, 36.735630, 41.964256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636284, 36.852283, 41.776642>,  <35.792561, 37.046707, 41.463947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636284, 36.852283, 41.776642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014731, 0.845818, 0.533268,
		-0.920405, 0.219858, -0.323291,
		-0.390689, -0.486060, 0.781734,
		35.519077, 36.706467, 42.011162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405231, 37.484653, 41.668365>,  <35.792561, 37.046707, 41.463947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405231, 37.484653, 41.668365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397869, 37.246670, 41.989784>,  <35.393452, 37.103878, 42.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397869, 37.246670, 41.989784>,  <35.405231, 37.484653, 41.668365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397869, 37.246670, 41.989784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209869, 0.788074, 0.578700,
		-0.977556, -0.157986, -0.139370,
		-0.018408, -0.594962, 0.803543,
		35.392345, 37.068180, 42.230846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794552, 37.618797, 42.091579>,  <35.405231, 37.484653, 41.668365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794552, 37.618797, 42.091579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025742, 37.445675, 42.368309>,  <35.164455, 37.341801, 42.534348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025742, 37.445675, 42.368309>,  <34.794552, 37.618797, 42.091579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025742, 37.445675, 42.368309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197236, 0.748545, 0.633071,
		-0.791859, -0.502353, 0.347277,
		0.577977, -0.432807, 0.691824,
		35.199135, 37.315834, 42.575855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326321, 37.724503, 42.690289>,  <34.794552, 37.618797, 42.091579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326321, 37.724503, 42.690289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715492, 37.663094, 42.759396>,  <34.948994, 37.626247, 42.800861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715492, 37.663094, 42.759396>,  <34.326321, 37.724503, 42.690289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715492, 37.663094, 42.759396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007872, 0.769081, 0.639102,
		-0.230990, -0.620438, 0.749466,
		0.972924, -0.153526, 0.172766,
		35.007370, 37.617035, 42.811226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325390, 37.852943, 43.324432>,  <34.326321, 37.724503, 42.690289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325390, 37.852943, 43.324432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711300, 37.866890, 43.220127>,  <34.942844, 37.875259, 43.157543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711300, 37.866890, 43.220127>,  <34.325390, 37.852943, 43.324432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711300, 37.866890, 43.220127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114069, 0.837715, 0.534061,
		0.237064, -0.544993, 0.804229,
		0.964774, 0.034869, -0.260759,
		35.000732, 37.877350, 43.141899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635796, 37.949841, 43.864349>,  <34.325390, 37.852943, 43.324432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635796, 37.949841, 43.864349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899208, 38.098267, 43.602463>,  <35.057255, 38.187321, 43.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899208, 38.098267, 43.602463>,  <34.635796, 37.949841, 43.864349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899208, 38.098267, 43.602463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034234, 0.854317, 0.518624,
		0.751774, -0.363944, 0.549891,
		0.658532, 0.371063, -0.654713,
		35.096767, 38.209587, 43.406048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271729, 38.237751, 44.262314>,  <34.635796, 37.949841, 43.864349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271729, 38.237751, 44.262314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259041, 38.416531, 43.904713>,  <35.251427, 38.523796, 43.690151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259041, 38.416531, 43.904713>,  <35.271729, 38.237751, 44.262314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259041, 38.416531, 43.904713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009569, 0.894272, 0.447422,
		0.999451, 0.022748, -0.024091,
		-0.031722, 0.446945, -0.893998,
		35.249523, 38.550613, 43.636513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745319, 38.802643, 44.360897>,  <35.271729, 38.237751, 44.262314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745319, 38.802643, 44.360897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541611, 38.859367, 44.021358>,  <35.419388, 38.893402, 43.817635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541611, 38.859367, 44.021358>,  <35.745319, 38.802643, 44.360897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541611, 38.859367, 44.021358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016348, 0.987746, 0.155211,
		0.860452, 0.065167, -0.505346,
		-0.509269, 0.141813, -0.848843,
		35.388828, 38.901913, 43.766705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109024, 39.420887, 44.150543>,  <35.745319, 38.802643, 44.360897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109024, 39.420887, 44.150543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750198, 39.399181, 43.975121>,  <35.534904, 39.386158, 43.869865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750198, 39.399181, 43.975121>,  <36.109024, 39.420887, 44.150543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750198, 39.399181, 43.975121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117318, 0.986064, 0.117958,
		0.426047, 0.157267, -0.890927,
		-0.897062, -0.054266, -0.438560,
		35.481079, 39.382900, 43.843552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141766, 39.958126, 43.688309>,  <36.109024, 39.420887, 44.150543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141766, 39.958126, 43.688309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759098, 39.874302, 43.769180>,  <35.529499, 39.824005, 43.817703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759098, 39.874302, 43.769180>,  <36.141766, 39.958126, 43.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759098, 39.874302, 43.769180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164230, 0.961649, 0.219679,
		-0.240460, 0.176956, -0.954393,
		-0.956665, -0.209564, 0.202177,
		35.472099, 39.811432, 43.829834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804863, 40.495308, 43.357124>,  <36.141766, 39.958126, 43.688309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804863, 40.495308, 43.357124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551620, 40.347466, 43.629173>,  <35.399673, 40.258759, 43.792404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551620, 40.347466, 43.629173>,  <35.804863, 40.495308, 43.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551620, 40.347466, 43.629173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333629, 0.923132, 0.191102,
		-0.698474, -0.105920, -0.707753,
		-0.633108, -0.369607, 0.680122,
		35.361687, 40.236584, 43.833210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217728, 40.919392, 43.304359>,  <35.804863, 40.495308, 43.357124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217728, 40.919392, 43.304359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140568, 40.735703, 43.651211>,  <35.094273, 40.625488, 43.859322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140568, 40.735703, 43.651211>,  <35.217728, 40.919392, 43.304359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140568, 40.735703, 43.651211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315891, 0.865737, 0.388216,
		-0.928979, -0.199030, -0.312065,
		-0.192900, -0.459223, 0.867124,
		35.082699, 40.597935, 43.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541763, 41.227356, 43.580547>,  <35.217728, 40.919392, 43.304359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541763, 41.227356, 43.580547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735676, 41.077862, 43.896854>,  <34.852024, 40.988167, 44.086639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735676, 41.077862, 43.896854>,  <34.541763, 41.227356, 43.580547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735676, 41.077862, 43.896854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217193, 0.824347, 0.522761,
		-0.847239, -0.425174, 0.318456,
		0.484782, -0.373737, 0.790764,
		34.881111, 40.965740, 44.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224865, 41.524693, 44.085732>,  <34.541763, 41.227356, 43.580547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224865, 41.524693, 44.085732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541210, 41.411617, 44.302853>,  <34.731018, 41.343773, 44.433125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541210, 41.411617, 44.302853>,  <34.224865, 41.524693, 44.085732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541210, 41.411617, 44.302853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053390, 0.851679, 0.521336,
		-0.609666, -0.441284, 0.658466,
		0.790859, -0.282685, 0.542800,
		34.778469, 41.326813, 44.465694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141010, 41.559669, 44.878433>,  <34.224865, 41.524693, 44.085732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141010, 41.559669, 44.878433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534809, 41.597416, 44.819283>,  <34.771088, 41.620064, 44.783794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534809, 41.597416, 44.819283>,  <34.141010, 41.559669, 44.878433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534809, 41.597416, 44.819283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011042, 0.807967, 0.589124,
		0.175069, -0.581622, 0.794397,
		0.984494, 0.094366, -0.147873,
		34.830158, 41.625725, 44.774921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363277, 41.872623, 45.461304>,  <34.141010, 41.559669, 44.878433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363277, 41.872623, 45.461304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683895, 41.883659, 45.222385>,  <34.876266, 41.890282, 45.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683895, 41.883659, 45.222385>,  <34.363277, 41.872623, 45.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683895, 41.883659, 45.222385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299088, 0.846485, 0.440465,
		0.517754, -0.531698, 0.670245,
		0.801547, 0.027590, -0.597295,
		34.924358, 41.891937, 45.043198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095074, 42.034958, 45.931004>,  <34.363277, 41.872623, 45.461304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095074, 42.034958, 45.931004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121044, 42.157013, 45.550968>,  <35.136627, 42.230247, 45.322945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121044, 42.157013, 45.550968>,  <35.095074, 42.034958, 45.931004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121044, 42.157013, 45.550968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381475, 0.872195, 0.306190,
		0.922096, -0.382315, -0.059777,
		0.064924, 0.305140, -0.950092,
		35.140522, 42.248554, 45.265942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707085, 42.467167, 45.902828>,  <35.095074, 42.034958, 45.931004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707085, 42.467167, 45.902828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482815, 42.565342, 45.586498>,  <35.348255, 42.624249, 45.396698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482815, 42.565342, 45.586498>,  <35.707085, 42.467167, 45.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482815, 42.565342, 45.586498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280808, 0.954824, 0.097252,
		0.778970, -0.167545, -0.604263,
		-0.560671, 0.245438, -0.790828,
		35.314613, 42.638973, 45.349251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139912, 42.827919, 45.568821>,  <35.707085, 42.467167, 45.902828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139912, 42.827919, 45.568821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808891, 42.917656, 45.362976>,  <35.610279, 42.971497, 45.239468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808891, 42.917656, 45.362976>,  <36.139912, 42.827919, 45.568821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808891, 42.917656, 45.362976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237717, 0.970478, 0.040791,
		0.508571, -0.088575, -0.856453,
		-0.827555, 0.224339, -0.514612,
		35.560623, 42.984959, 45.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444294, 43.247562, 45.110424>,  <36.139912, 42.827919, 45.568821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444294, 43.247562, 45.110424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052471, 43.323055, 45.082577>,  <35.817379, 43.368351, 45.065868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052471, 43.323055, 45.082577>,  <36.444294, 43.247562, 45.110424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052471, 43.323055, 45.082577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192154, 0.980278, -0.046169,
		0.059531, -0.058603, -0.996505,
		-0.979558, 0.188734, -0.069617,
		35.758602, 43.379677, 45.061691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313351, 43.960331, 45.264874>,  <36.444294, 43.247562, 45.110424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313351, 43.960331, 45.264874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194340, 44.215630, 45.548878>,  <36.122932, 44.368809, 45.719280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194340, 44.215630, 45.548878>,  <36.313351, 43.960331, 45.264874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194340, 44.215630, 45.548878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810463, 0.561924, -0.165499,
		-0.504603, 0.526198, -0.684464,
		-0.297532, 0.638245, 0.710013,
		36.105080, 44.407104, 45.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928104, 44.182617, 45.329590>,  <36.313351, 43.960331, 45.264874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928104, 44.182617, 45.329590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312275, 44.288578, 45.364014>,  <37.542778, 44.352154, 45.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312275, 44.288578, 45.364014>,  <36.928104, 44.182617, 45.329590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312275, 44.288578, 45.364014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278513, -0.916410, -0.287444,
		0.002719, 0.300037, -0.953924,
		0.960429, 0.264899, 0.086056,
		37.600403, 44.368046, 45.389832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205276, 44.214314, 44.701527>,  <36.928104, 44.182617, 45.329590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205276, 44.214314, 44.701527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551022, 44.180260, 44.899773>,  <37.758469, 44.159828, 45.018719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551022, 44.180260, 44.899773>,  <37.205276, 44.214314, 44.701527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551022, 44.180260, 44.899773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225571, -0.815214, -0.533427,
		0.449443, 0.572870, -0.685436,
		0.864361, -0.085130, 0.495615,
		37.810329, 44.154720, 45.048458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738960, 44.145641, 44.167938>,  <37.205276, 44.214314, 44.701527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738960, 44.145641, 44.167938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887997, 44.010162, 44.513531>,  <37.977417, 43.928875, 44.720886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887997, 44.010162, 44.513531>,  <37.738960, 44.145641, 44.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887997, 44.010162, 44.513531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222612, -0.871211, -0.437534,
		0.900899, 0.355353, -0.249208,
		0.372591, -0.338697, 0.863979,
		37.999775, 43.908554, 44.772724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391262, 43.773056, 44.000385>,  <37.738960, 44.145641, 44.167938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391262, 43.773056, 44.000385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284542, 43.633335, 44.359676>,  <38.220509, 43.549503, 44.575249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284542, 43.633335, 44.359676>,  <38.391262, 43.773056, 44.000385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284542, 43.633335, 44.359676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141965, -0.936085, -0.321855,
		0.953238, 0.041646, 0.299336,
		-0.266800, -0.349300, 0.898224,
		38.204502, 43.528545, 44.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907715, 43.252056, 44.297440>,  <38.391262, 43.773056, 44.000385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907715, 43.252056, 44.297440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588444, 43.174229, 44.525494>,  <38.396881, 43.127533, 44.662327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588444, 43.174229, 44.525494>,  <38.907715, 43.252056, 44.297440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588444, 43.174229, 44.525494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104249, -0.976738, -0.187390,
		0.593334, -0.090134, 0.799894,
		-0.798177, -0.194573, 0.570136,
		38.348991, 43.115856, 44.696533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118351, 42.732189, 44.665611>,  <38.907715, 43.252056, 44.297440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118351, 42.732189, 44.665611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718708, 42.728130, 44.649250>,  <38.478920, 42.725693, 44.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718708, 42.728130, 44.649250>,  <39.118351, 42.732189, 44.665611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718708, 42.728130, 44.649250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017078, -0.984823, -0.172722,
		-0.038527, -0.173267, 0.984121,
		-0.999112, -0.010152, -0.040902,
		38.418976, 42.725086, 44.636978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979359, 42.191795, 45.020927>,  <39.118351, 42.732189, 44.665611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979359, 42.191795, 45.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643131, 42.261478, 44.815754>,  <38.441395, 42.303288, 44.692650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643131, 42.261478, 44.815754>,  <38.979359, 42.191795, 45.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643131, 42.261478, 44.815754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051409, -0.968259, -0.244607,
		-0.539265, -0.179239, 0.822841,
		-0.840565, 0.174209, -0.512934,
		38.390961, 42.313740, 44.661873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562080, 41.584351, 45.138493>,  <38.979359, 42.191795, 45.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562080, 41.584351, 45.138493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378212, 41.771275, 44.836411>,  <38.267891, 41.883427, 44.655163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378212, 41.771275, 44.836411>,  <38.562080, 41.584351, 45.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378212, 41.771275, 44.836411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204821, -0.883224, -0.421858,
		-0.864150, -0.039233, 0.501703,
		-0.459667, 0.467308, -0.755202,
		38.240311, 41.911469, 44.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970348, 41.289242, 45.163502>,  <38.562080, 41.584351, 45.138493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970348, 41.289242, 45.163502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022594, 41.431553, 44.793343>,  <38.053944, 41.516941, 44.571247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022594, 41.431553, 44.793343>,  <37.970348, 41.289242, 45.163502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022594, 41.431553, 44.793343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163304, -0.912925, -0.374031,
		-0.977891, 0.199976, -0.061143,
		0.130616, 0.355777, -0.925398,
		38.061779, 41.538284, 44.515724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471424, 40.903591, 44.740349>,  <37.970348, 41.289242, 45.163502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471424, 40.903591, 44.740349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727379, 41.062817, 44.477413>,  <37.880951, 41.158352, 44.319653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727379, 41.062817, 44.477413>,  <37.471424, 40.903591, 44.740349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727379, 41.062817, 44.477413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133729, -0.784658, -0.605333,
		-0.756748, 0.475248, -0.448857,
		0.639882, 0.398060, -0.657343,
		37.919342, 41.182236, 44.280209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134090, 40.960720, 44.148239>,  <37.471424, 40.903591, 44.740349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134090, 40.960720, 44.148239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510178, 40.980461, 44.013454>,  <37.735832, 40.992306, 43.932583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510178, 40.980461, 44.013454>,  <37.134090, 40.960720, 44.148239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510178, 40.980461, 44.013454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177207, -0.774049, -0.607821,
		-0.290826, 0.631199, -0.719032,
		0.940222, 0.049352, -0.336966,
		37.792244, 40.995266, 43.912365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112339, 40.855019, 43.341320>,  <37.134090, 40.960720, 44.148239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112339, 40.855019, 43.341320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489632, 40.795197, 43.459938>,  <37.716007, 40.759304, 43.531109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489632, 40.795197, 43.459938>,  <37.112339, 40.855019, 43.341320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489632, 40.795197, 43.459938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056350, -0.807871, -0.586659,
		0.327312, 0.570068, -0.753585,
		0.943235, -0.149556, 0.296549,
		37.772602, 40.750328, 43.548904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609562, 40.999496, 42.716499>,  <37.112339, 40.855019, 43.341320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609562, 40.999496, 42.716499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709091, 40.744892, 43.008511>,  <37.768810, 40.592129, 43.183716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709091, 40.744892, 43.008511>,  <37.609562, 40.999496, 42.716499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709091, 40.744892, 43.008511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060691, -0.762496, -0.644140,
		0.966645, 0.115971, -0.228358,
		0.248823, -0.636514, 0.730025,
		37.783737, 40.553936, 43.227520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037231, 40.556187, 42.410469>,  <37.609562, 40.999496, 42.716499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037231, 40.556187, 42.410469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928143, 40.342777, 42.730713>,  <37.862690, 40.214733, 42.922859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928143, 40.342777, 42.730713>,  <38.037231, 40.556187, 42.410469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928143, 40.342777, 42.730713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072662, -0.818358, -0.570097,
		0.959346, -0.213650, 0.184414,
		-0.272718, -0.533521, 0.800612,
		37.846329, 40.182720, 42.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460682, 39.961586, 42.404213>,  <38.037231, 40.556187, 42.410469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460682, 39.961586, 42.404213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136784, 39.872608, 42.621407>,  <37.942444, 39.819221, 42.751724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136784, 39.872608, 42.621407>,  <38.460682, 39.961586, 42.404213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136784, 39.872608, 42.621407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146947, -0.818999, -0.554659,
		0.568082, -0.528922, 0.630494,
		-0.809746, -0.222443, 0.542983,
		37.893860, 39.805874, 42.784302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509464, 39.290585, 42.450527>,  <38.460682, 39.961586, 42.404213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509464, 39.290585, 42.450527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123192, 39.320869, 42.549908>,  <37.891430, 39.339039, 42.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123192, 39.320869, 42.549908>,  <38.509464, 39.290585, 42.450527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123192, 39.320869, 42.549908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201059, -0.823470, -0.530540,
		0.164424, -0.562286, 0.810432,
		-0.965681, 0.075711, 0.248451,
		37.833488, 39.343582, 42.624443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257195, 38.655067, 42.764626>,  <38.509464, 39.290585, 42.450527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257195, 38.655067, 42.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942078, 38.854050, 42.619343>,  <37.753010, 38.973438, 42.532173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942078, 38.854050, 42.619343>,  <38.257195, 38.655067, 42.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942078, 38.854050, 42.619343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302838, -0.826306, -0.474876,
		-0.536354, -0.264108, 0.801605,
		-0.787790, 0.497459, -0.363211,
		37.705742, 39.003288, 42.510380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816586, 38.101032, 42.579937>,  <38.257195, 38.655067, 42.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816586, 38.101032, 42.579937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631489, 38.414158, 42.413528>,  <37.520432, 38.602032, 42.313683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631489, 38.414158, 42.413528>,  <37.816586, 38.101032, 42.579937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631489, 38.414158, 42.413528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288955, -0.576850, -0.764035,
		-0.838076, -0.233343, 0.493132,
		-0.462745, 0.782813, -0.416019,
		37.492664, 38.649002, 42.288723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162426, 37.901562, 42.490738>,  <37.816586, 38.101032, 42.579937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162426, 37.901562, 42.490738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213745, 38.180534, 42.208710>,  <37.244537, 38.347919, 42.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213745, 38.180534, 42.208710>,  <37.162426, 37.901562, 42.490738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213745, 38.180534, 42.208710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351671, -0.632753, -0.689892,
		-0.927290, 0.336464, 0.164087,
		0.128298, 0.697435, -0.705070,
		37.252235, 38.389767, 41.997189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640102, 37.795521, 42.093266>,  <37.162426, 37.901562, 42.490738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640102, 37.795521, 42.093266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864990, 38.025478, 41.855473>,  <36.999924, 38.163452, 41.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864990, 38.025478, 41.855473>,  <36.640102, 37.795521, 42.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864990, 38.025478, 41.855473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261357, -0.558494, -0.787259,
		-0.784605, 0.597983, -0.163742,
		0.562216, 0.574892, -0.594484,
		37.033653, 38.197945, 41.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208191, 38.017891, 41.586254>,  <36.640102, 37.795521, 42.093266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208191, 38.017891, 41.586254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581028, 38.006145, 41.441849>,  <36.804729, 37.999100, 41.355206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581028, 38.006145, 41.441849>,  <36.208191, 38.017891, 41.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581028, 38.006145, 41.441849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292363, -0.649372, -0.702025,
		-0.213821, 0.759904, -0.613862,
		0.932097, -0.029363, -0.361017,
		36.860657, 37.997337, 41.333542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047161, 37.678650, 40.934586>,  <36.208191, 38.017891, 41.586254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047161, 37.678650, 40.934586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446167, 37.699924, 40.953083>,  <36.685570, 37.712688, 40.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446167, 37.699924, 40.953083>,  <36.047161, 37.678650, 40.934586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446167, 37.699924, 40.953083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069369, -0.624868, -0.777643,
		-0.012460, 0.778917, -0.627003,
		0.997513, 0.053184, 0.046247,
		36.745422, 37.715881, 40.966957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278980, 37.770813, 40.202808>,  <36.047161, 37.678650, 40.934586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278980, 37.770813, 40.202808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560688, 37.580452, 40.413528>,  <36.729713, 37.466236, 40.539963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560688, 37.580452, 40.413528>,  <36.278980, 37.770813, 40.202808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560688, 37.580452, 40.413528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163966, -0.612946, -0.772924,
		0.690736, 0.630727, -0.353649,
		0.704272, -0.475900, 0.526802,
		36.771969, 37.437683, 40.571568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818130, 37.645435, 39.760197>,  <36.278980, 37.770813, 40.202808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818130, 37.645435, 39.760197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894657, 37.382431, 40.051697>,  <36.940571, 37.224628, 40.226597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894657, 37.382431, 40.051697>,  <36.818130, 37.645435, 39.760197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894657, 37.382431, 40.051697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150465, -0.714045, -0.683740,
		0.969927, 0.240461, -0.037675,
		0.191315, -0.657509, 0.728753,
		36.952053, 37.185177, 40.270321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493595, 37.303604, 39.633236>,  <36.818130, 37.645435, 39.760197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493595, 37.303604, 39.633236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285366, 37.065281, 39.877865>,  <37.160427, 36.922287, 40.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285366, 37.065281, 39.877865>,  <37.493595, 37.303604, 39.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285366, 37.065281, 39.877865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326189, -0.800727, -0.502431,
		0.789053, -0.062063, 0.611182,
		-0.520573, -0.595805, 0.611572,
		37.129196, 36.886539, 40.061337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972958, 36.806652, 39.793938>,  <37.493595, 37.303604, 39.633236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972958, 36.806652, 39.793938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632565, 36.633217, 39.912483>,  <37.428329, 36.529156, 39.983608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632565, 36.633217, 39.912483>,  <37.972958, 36.806652, 39.793938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632565, 36.633217, 39.912483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226637, -0.812219, -0.537528,
		0.473773, -0.390262, 0.789452,
		-0.850985, -0.433585, 0.296359,
		37.377270, 36.503139, 40.001392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159698, 36.153278, 40.041370>,  <37.972958, 36.806652, 39.793938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159698, 36.153278, 40.041370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777458, 36.131962, 39.925446>,  <37.548115, 36.119171, 39.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777458, 36.131962, 39.925446>,  <38.159698, 36.153278, 40.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777458, 36.131962, 39.925446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206748, -0.822061, -0.530539,
		-0.209968, -0.566900, 0.796579,
		-0.955599, -0.053294, -0.289812,
		37.490780, 36.115974, 39.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952293, 35.494614, 40.063522>,  <38.159698, 36.153278, 40.041370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952293, 35.494614, 40.063522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706818, 35.661076, 39.795135>,  <37.559532, 35.760952, 39.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706818, 35.661076, 39.795135>,  <37.952293, 35.494614, 40.063522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706818, 35.661076, 39.795135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269596, -0.688293, -0.673477,
		-0.742093, -0.594197, 0.310206,
		-0.613690, 0.416153, -0.670970,
		37.522709, 35.785923, 39.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698219, 34.891289, 39.714523>,  <37.952293, 35.494614, 40.063522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698219, 34.891289, 39.714523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611393, 35.195221, 39.469398>,  <37.559296, 35.377579, 39.322323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611393, 35.195221, 39.469398>,  <37.698219, 34.891289, 39.714523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611393, 35.195221, 39.469398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267867, -0.557322, -0.785901,
		-0.938685, -0.334746, -0.082557,
		-0.217067, 0.759827, -0.612817,
		37.546272, 35.423168, 39.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256207, 34.518826, 39.249737>,  <37.698219, 34.891289, 39.714523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256207, 34.518826, 39.249737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347672, 34.871269, 39.084156>,  <37.402550, 35.082737, 38.984810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347672, 34.871269, 39.084156>,  <37.256207, 34.518826, 39.249737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347672, 34.871269, 39.084156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287664, -0.467382, -0.835945,
		-0.930034, 0.072071, -0.360337,
		0.228662, 0.881113, -0.413948,
		37.416271, 35.135605, 38.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851250, 34.572495, 38.661762>,  <37.256207, 34.518826, 39.249737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851250, 34.572495, 38.661762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193947, 34.775352, 38.624260>,  <37.399567, 34.897068, 38.601761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193947, 34.775352, 38.624260>,  <36.851250, 34.572495, 38.661762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193947, 34.775352, 38.624260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243313, -0.557740, -0.793552,
		-0.454736, 0.657061, -0.601237,
		0.856746, 0.507145, -0.093753,
		37.450970, 34.927498, 38.596134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805069, 34.503819, 37.957382>,  <36.851250, 34.572495, 38.661762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805069, 34.503819, 37.957382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171661, 34.655231, 38.009193>,  <37.391617, 34.746078, 38.040279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171661, 34.655231, 38.009193>,  <36.805069, 34.503819, 37.957382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171661, 34.655231, 38.009193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285045, -0.390609, -0.875314,
		-0.280735, 0.839131, -0.465884,
		0.916481, 0.378529, 0.129532,
		37.446606, 34.768791, 38.048054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916405, 34.894550, 37.303581>,  <36.805069, 34.503819, 37.957382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916405, 34.894550, 37.303581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274189, 34.826122, 37.468830>,  <37.488861, 34.785065, 37.567978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274189, 34.826122, 37.468830>,  <36.916405, 34.894550, 37.303581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274189, 34.826122, 37.468830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357414, -0.281627, -0.890473,
		0.268677, 0.944151, -0.190763,
		0.894465, -0.171068, 0.413119,
		37.542530, 34.774803, 37.592766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447796, 35.290615, 36.859634>,  <36.916405, 34.894550, 37.303581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447796, 35.290615, 36.859634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626141, 35.003048, 37.072937>,  <37.733147, 34.830505, 37.200920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626141, 35.003048, 37.072937>,  <37.447796, 35.290615, 36.859634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626141, 35.003048, 37.072937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558916, -0.241732, -0.793208,
		0.699158, 0.651706, 0.294037,
		0.445860, -0.718920, 0.533258,
		37.759899, 34.787373, 37.232914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095711, 35.487251, 36.826382>,  <37.447796, 35.290615, 36.859634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095711, 35.487251, 36.826382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114052, 35.092777, 36.890053>,  <38.125057, 34.856094, 36.928253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114052, 35.092777, 36.890053>,  <38.095711, 35.487251, 36.826382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114052, 35.092777, 36.890053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604601, -0.099449, -0.790296,
		0.795208, 0.132471, 0.591689,
		0.045848, -0.986185, 0.159175,
		38.127808, 34.796921, 36.937805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774380, 35.351292, 36.873489>,  <38.095711, 35.487251, 36.826382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774380, 35.351292, 36.873489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581383, 35.014797, 36.775902>,  <38.465584, 34.812901, 36.717350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581383, 35.014797, 36.775902>,  <38.774380, 35.351292, 36.873489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581383, 35.014797, 36.775902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674757, -0.179386, -0.715907,
		0.558481, -0.510043, 0.654182,
		-0.482495, -0.841235, -0.243972,
		38.436634, 34.762428, 36.702709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290001, 34.817043, 36.803913>,  <38.774380, 35.351292, 36.873489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290001, 34.817043, 36.803913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977383, 34.682968, 36.593452>,  <38.789810, 34.602524, 36.467178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977383, 34.682968, 36.593452>,  <39.290001, 34.817043, 36.803913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977383, 34.682968, 36.593452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622077, -0.355290, -0.697703,
		0.046927, -0.872593, 0.486189,
		-0.781549, -0.335188, -0.526147,
		38.742920, 34.582413, 36.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509315, 34.227924, 36.443317>,  <39.290001, 34.817043, 36.803913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509315, 34.227924, 36.443317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182404, 34.317421, 36.230904>,  <38.986256, 34.371120, 36.103455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182404, 34.317421, 36.230904>,  <39.509315, 34.227924, 36.443317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182404, 34.317421, 36.230904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479441, -0.247208, -0.842036,
		-0.319673, -0.942777, 0.094768,
		-0.817279, 0.223740, -0.531032,
		38.937222, 34.384544, 36.071594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387066, 33.624115, 36.023556>,  <39.509315, 34.227924, 36.443317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387066, 33.624115, 36.023556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175613, 33.901680, 35.827988>,  <39.048744, 34.068218, 35.710648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175613, 33.901680, 35.827988>,  <39.387066, 33.624115, 36.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175613, 33.901680, 35.827988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426454, -0.280912, -0.859782,
		-0.733955, -0.663005, -0.147424,
		-0.528627, 0.693911, -0.488918,
		39.017025, 34.109852, 35.681313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161751, 33.295082, 35.388626>,  <39.387066, 33.624115, 36.023556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161751, 33.295082, 35.388626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142838, 33.688713, 35.320084>,  <39.131489, 33.924892, 35.278957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142838, 33.688713, 35.320084>,  <39.161751, 33.295082, 35.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142838, 33.688713, 35.320084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539412, -0.119227, -0.833559,
		-0.840714, -0.131841, -0.525184,
		-0.047282, 0.984075, -0.171352,
		39.128654, 33.983936, 35.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039108, 33.418411, 34.637661>,  <39.161751, 33.295082, 35.388626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039108, 33.418411, 34.637661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189529, 33.749966, 34.803326>,  <39.279781, 33.948898, 34.902725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189529, 33.749966, 34.803326>,  <39.039108, 33.418411, 34.637661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189529, 33.749966, 34.803326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733602, 0.006718, -0.679546,
		-0.566051, 0.559373, -0.605549,
		0.376052, 0.828889, 0.414160,
		39.302345, 33.998631, 34.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927204, 34.043262, 34.186161>,  <39.039108, 33.418411, 34.637661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927204, 34.043262, 34.186161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245014, 34.072193, 34.427322>,  <39.435699, 34.089554, 34.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245014, 34.072193, 34.427322>,  <38.927204, 34.043262, 34.186161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245014, 34.072193, 34.427322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600855, 0.049809, -0.797805,
		-0.087735, 0.996136, -0.003885,
		0.794529, 0.072330, 0.602903,
		39.483372, 34.093891, 34.608192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212700, 34.639782, 33.935925>,  <38.927204, 34.043262, 34.186161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212700, 34.639782, 33.935925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472229, 34.386497, 34.104721>,  <39.627945, 34.234528, 34.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472229, 34.386497, 34.104721>,  <39.212700, 34.639782, 33.935925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472229, 34.386497, 34.104721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641397, 0.156693, -0.751037,
		0.409444, 0.757950, 0.507807,
		0.648818, -0.633213, 0.421990,
		39.666874, 34.196533, 34.231319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853252, 35.076019, 34.110931>,  <39.212700, 34.639782, 33.935925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853252, 35.076019, 34.110931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907082, 34.683884, 34.053219>,  <39.939377, 34.448601, 34.018589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907082, 34.683884, 34.053219>,  <39.853252, 35.076019, 34.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907082, 34.683884, 34.053219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733840, 0.196444, -0.650299,
		0.665860, -0.018371, 0.745851,
		0.134571, -0.980343, -0.144285,
		39.947453, 34.389782, 34.009933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516102, 34.995342, 34.239552>,  <39.853252, 35.076019, 34.110931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516102, 34.995342, 34.239552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363171, 34.724030, 33.988552>,  <40.271412, 34.561241, 33.837952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363171, 34.724030, 33.988552>,  <40.516102, 34.995342, 34.239552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363171, 34.724030, 33.988552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457837, 0.450811, -0.766260,
		0.802626, -0.580256, 0.138185,
		-0.382332, -0.678287, -0.627495,
		40.248470, 34.520542, 33.800304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132717, 34.539650, 33.900349>,  <40.516102, 34.995342, 34.239552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132717, 34.539650, 33.900349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790028, 34.621727, 33.711067>,  <40.584412, 34.670975, 33.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790028, 34.621727, 33.711067>,  <41.132717, 34.539650, 33.900349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790028, 34.621727, 33.711067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480621, 0.650507, -0.588086,
		0.187149, -0.731257, -0.655926,
		-0.856726, 0.205192, -0.473199,
		40.533009, 34.683285, 33.569107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084904, 34.461586, 33.072582>,  <41.132717, 34.539650, 33.900349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084904, 34.461586, 33.072582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893185, 34.754818, 33.265610>,  <40.778152, 34.930756, 33.381428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893185, 34.754818, 33.265610>,  <41.084904, 34.461586, 33.072582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893185, 34.754818, 33.265610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578300, 0.677389, -0.454658,
		-0.660188, 0.061155, -0.748607,
		-0.479293, 0.733079, 0.482570,
		40.749397, 34.974743, 33.410381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670700, 34.860809, 32.783367>,  <41.084904, 34.461586, 33.072582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670700, 34.860809, 32.783367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033314, 34.781384, 32.932373>,  <42.250881, 34.733727, 33.021778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033314, 34.781384, 32.932373>,  <41.670700, 34.860809, 32.783367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033314, 34.781384, 32.932373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324902, 0.891610, -0.315391,
		-0.269513, 0.406943, 0.872789,
		0.906533, -0.198569, 0.372517,
		42.305275, 34.721813, 33.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900047, 35.473450, 33.183857>,  <41.670700, 34.860809, 32.783367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900047, 35.473450, 33.183857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229992, 35.276302, 33.073093>,  <42.427959, 35.158012, 33.006638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229992, 35.276302, 33.073093>,  <41.900047, 35.473450, 33.183857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229992, 35.276302, 33.073093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322495, 0.812533, -0.485580,
		0.464322, 0.311238, 0.829178,
		0.824865, -0.492871, -0.276904,
		42.477451, 35.128441, 32.990021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518669, 35.860710, 33.491329>,  <41.900047, 35.473450, 33.183857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518669, 35.860710, 33.491329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646877, 35.649700, 33.176628>,  <42.723801, 35.523094, 32.987808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646877, 35.649700, 33.176628>,  <42.518669, 35.860710, 33.491329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646877, 35.649700, 33.176628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451678, 0.815183, -0.362579,
		0.832619, -0.239146, 0.499555,
		0.320519, -0.527528, -0.786754,
		42.743034, 35.491440, 32.940601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143032, 36.194977, 33.359299>,  <42.518669, 35.860710, 33.491329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143032, 36.194977, 33.359299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061722, 35.992516, 33.024040>,  <43.012936, 35.871037, 32.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061722, 35.992516, 33.024040>,  <43.143032, 36.194977, 33.359299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061722, 35.992516, 33.024040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249445, 0.800999, -0.544222,
		0.946814, -0.319697, -0.036564,
		-0.203274, -0.506157, -0.838144,
		43.000740, 35.840668, 32.772598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709328, 36.397762, 32.970032>,  <43.143032, 36.194977, 33.359299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709328, 36.397762, 32.970032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416019, 36.276134, 32.726768>,  <43.240036, 36.203159, 32.580811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416019, 36.276134, 32.726768>,  <43.709328, 36.397762, 32.970032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416019, 36.276134, 32.726768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060357, 0.861796, -0.503651,
		0.677256, -0.406018, -0.613575,
		-0.733268, -0.304067, -0.608162,
		43.196041, 36.184914, 32.544319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033184, 36.494171, 32.261463>,  <43.709328, 36.397762, 32.970032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033184, 36.494171, 32.261463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634876, 36.483032, 32.226440>,  <43.395893, 36.476349, 32.205425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634876, 36.483032, 32.226440>,  <44.033184, 36.494171, 32.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634876, 36.483032, 32.226440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000777, 0.950385, -0.311074,
		0.091875, -0.309826, -0.946344,
		-0.995770, -0.027844, -0.087557,
		43.336143, 36.474678, 32.200172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925552, 36.667103, 31.578381>,  <44.033184, 36.494171, 32.261463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925552, 36.667103, 31.578381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584663, 36.752525, 31.769426>,  <43.380131, 36.803780, 31.884054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584663, 36.752525, 31.769426>,  <43.925552, 36.667103, 31.578381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584663, 36.752525, 31.769426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011759, 0.904849, -0.425570,
		-0.523054, -0.368295, -0.768617,
		-0.852218, 0.213558, 0.477616,
		43.328999, 36.816593, 31.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465614, 36.861843, 31.036459>,  <43.925552, 36.667103, 31.578381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465614, 36.861843, 31.036459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296127, 36.987022, 31.376467>,  <43.194435, 37.062130, 31.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296127, 36.987022, 31.376467>,  <43.465614, 36.861843, 31.036459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296127, 36.987022, 31.376467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178740, 0.891083, -0.417162,
		-0.887986, -0.328689, -0.321628,
		-0.423714, 0.312946, 0.850019,
		43.169014, 37.080906, 31.631472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829472, 37.181900, 30.801813>,  <43.465614, 36.861843, 31.036459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829472, 37.181900, 30.801813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918522, 37.335751, 31.160143>,  <42.971954, 37.428059, 31.375141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918522, 37.335751, 31.160143>,  <42.829472, 37.181900, 30.801813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918522, 37.335751, 31.160143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124637, 0.922575, -0.365133,
		-0.966903, -0.030364, 0.253329,
		0.222628, 0.384622, 0.895825,
		42.985310, 37.451138, 31.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542511, 37.888855, 30.788441>,  <42.829472, 37.181900, 30.801813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542511, 37.888855, 30.788441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744202, 37.933971, 31.130909>,  <42.865215, 37.961040, 31.336391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744202, 37.933971, 31.130909>,  <42.542511, 37.888855, 30.788441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744202, 37.933971, 31.130909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017395, 0.989907, -0.140650,
		-0.863395, 0.085812, 0.497177,
		0.504229, 0.112788, 0.856173,
		42.895470, 37.967808, 31.387760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158386, 38.368649, 31.159319>,  <42.542511, 37.888855, 30.788441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158386, 38.368649, 31.159319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540401, 38.370327, 31.277906>,  <42.769611, 38.371334, 31.349058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540401, 38.370327, 31.277906>,  <42.158386, 38.368649, 31.159319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540401, 38.370327, 31.277906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000490, 0.999876, -0.015724,
		-0.296497, 0.015162, 0.954913,
		0.955034, 0.004194, 0.296468,
		42.826912, 38.371586, 31.366846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149780, 38.766804, 31.762157>,  <42.158386, 38.368649, 31.159319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149780, 38.766804, 31.762157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513454, 38.771515, 31.595671>,  <42.731659, 38.774342, 31.495779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513454, 38.771515, 31.595671>,  <42.149780, 38.766804, 31.762157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513454, 38.771515, 31.595671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032279, 0.998585, -0.042253,
		0.415128, 0.051851, 0.908284,
		0.909190, 0.011779, -0.416215,
		42.786213, 38.775047, 31.470806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624001, 39.146370, 32.231266>,  <42.149780, 38.766804, 31.762157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624001, 39.146370, 32.231266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791191, 39.146629, 31.867882>,  <42.891506, 39.146786, 31.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791191, 39.146629, 31.867882>,  <42.624001, 39.146370, 32.231266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791191, 39.146629, 31.867882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036685, 0.999172, 0.017588,
		0.907715, -0.040678, 0.417610,
		0.417980, 0.000645, -0.908456,
		42.916584, 39.146824, 31.595345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949524, 39.747810, 32.328308>,  <42.624001, 39.146370, 32.231266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949524, 39.747810, 32.328308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009678, 39.649399, 31.945299>,  <43.045769, 39.590351, 31.715494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009678, 39.649399, 31.945299>,  <42.949524, 39.747810, 32.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009678, 39.649399, 31.945299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141170, 0.963958, -0.225514,
		0.978497, -0.101259, 0.179696,
		0.150384, -0.246033, -0.957524,
		43.054794, 39.575588, 31.658041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620846, 40.020245, 32.175980>,  <42.949524, 39.747810, 32.328308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620846, 40.020245, 32.175980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417728, 39.981270, 31.833599>,  <43.295856, 39.957886, 31.628172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417728, 39.981270, 31.833599>,  <43.620846, 40.020245, 32.175980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417728, 39.981270, 31.833599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115133, 0.976994, -0.179522,
		0.853749, -0.189709, -0.484896,
		-0.507797, -0.097440, -0.855948,
		43.265388, 39.952038, 31.576815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008263, 40.451038, 31.665989>,  <43.620846, 40.020245, 32.175980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008263, 40.451038, 31.665989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689945, 40.368259, 31.438347>,  <43.498955, 40.318592, 31.301762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689945, 40.368259, 31.438347>,  <44.008263, 40.451038, 31.665989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689945, 40.368259, 31.438347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096062, 0.971033, -0.218784,
		0.597899, -0.119438, -0.792624,
		-0.795795, -0.206952, -0.569106,
		43.451206, 40.306175, 31.267614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142223, 40.748913, 31.026224>,  <44.008263, 40.451038, 31.665989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142223, 40.748913, 31.026224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748013, 40.738190, 31.093168>,  <43.511486, 40.731754, 31.133335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748013, 40.738190, 31.093168>,  <44.142223, 40.748913, 31.026224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748013, 40.738190, 31.093168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055477, 0.984045, -0.169048,
		-0.160156, -0.175887, -0.971295,
		-0.985532, -0.026810, 0.167359,
		43.452354, 40.730148, 31.143375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869259, 41.333759, 30.641617>,  <44.142223, 40.748913, 31.026224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869259, 41.333759, 30.641617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581623, 41.272659, 30.912786>,  <43.409042, 41.236000, 31.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581623, 41.272659, 30.912786>,  <43.869259, 41.333759, 30.641617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581623, 41.272659, 30.912786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033353, 0.982005, 0.185889,
		-0.694122, 0.111059, -0.711239,
		-0.719085, -0.152751, 0.677926,
		43.365898, 41.226833, 31.116165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292995, 41.799843, 30.439291>,  <43.869259, 41.333759, 30.641617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292995, 41.799843, 30.439291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239296, 41.699341, 30.822718>,  <43.207077, 41.639038, 31.052773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239296, 41.699341, 30.822718>,  <43.292995, 41.799843, 30.439291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239296, 41.699341, 30.822718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130355, 0.954438, 0.268433,
		-0.982337, 0.160990, -0.095379,
		-0.134248, -0.251258, 0.958565,
		43.199020, 41.623962, 31.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817924, 42.300999, 30.647520>,  <43.292995, 41.799843, 30.439291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817924, 42.300999, 30.647520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029617, 42.151772, 30.952345>,  <43.156631, 42.062237, 31.135239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029617, 42.151772, 30.952345>,  <42.817924, 42.300999, 30.647520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029617, 42.151772, 30.952345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186056, 0.927317, 0.324757,
		-0.827828, -0.030084, 0.560175,
		0.529229, -0.373067, 0.762061,
		43.188385, 42.039852, 31.180964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820309, 42.820667, 31.151505>,  <42.817924, 42.300999, 30.647520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820309, 42.820667, 31.151505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106529, 42.589066, 31.307835>,  <43.278259, 42.450104, 31.401632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106529, 42.589066, 31.307835>,  <42.820309, 42.820667, 31.151505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106529, 42.589066, 31.307835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488657, 0.814677, 0.312274,
		-0.499206, -0.032466, 0.865875,
		0.715547, -0.579005, 0.390827,
		43.321194, 42.415363, 31.425083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943977, 43.026039, 31.937269>,  <42.820309, 42.820667, 31.151505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943977, 43.026039, 31.937269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262501, 42.852745, 31.768414>,  <43.453613, 42.748768, 31.667099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262501, 42.852745, 31.768414>,  <42.943977, 43.026039, 31.937269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262501, 42.852745, 31.768414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506147, 0.859368, 0.072807,
		0.331232, -0.271642, 0.903602,
		0.796304, -0.433240, -0.422141,
		43.501392, 42.722775, 31.641771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997921, 43.161568, 32.707024>,  <42.943977, 43.026039, 31.937269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997921, 43.161568, 32.707024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603680, 43.177799, 32.641373>,  <42.367134, 43.187538, 32.601982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603680, 43.177799, 32.641373>,  <42.997921, 43.161568, 32.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603680, 43.177799, 32.641373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136375, 0.382967, 0.913640,
		0.099931, 0.922870, -0.371919,
		-0.985604, 0.040581, -0.164127,
		42.307999, 43.189972, 32.592136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585434, 43.890049, 32.783085>,  <42.997921, 43.161568, 32.707024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585434, 43.890049, 32.783085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387688, 43.555012, 32.876072>,  <42.269039, 43.353989, 32.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387688, 43.555012, 32.876072>,  <42.585434, 43.890049, 32.783085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387688, 43.555012, 32.876072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105592, 0.323316, 0.940381,
		-0.862814, 0.440350, -0.248280,
		-0.494370, -0.837591, 0.232464,
		42.239376, 43.303734, 32.945812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101444, 43.840137, 32.302372>,  <42.585434, 43.890049, 32.783085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101444, 43.840137, 32.302372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458591, 43.807747, 32.479561>,  <43.672882, 43.788311, 32.585873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458591, 43.807747, 32.479561>,  <43.101444, 43.840137, 32.302372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458591, 43.807747, 32.479561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450114, 0.189679, -0.872594,
		-0.013360, 0.978501, 0.205808,
		0.892871, -0.080979, 0.442971,
		43.726452, 43.783455, 32.612453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489994, 44.365059, 32.344177>,  <43.101444, 43.840137, 32.302372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489994, 44.365059, 32.344177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776817, 44.086281, 32.348064>,  <43.948914, 43.919014, 32.350399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776817, 44.086281, 32.348064>,  <43.489994, 44.365059, 32.344177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776817, 44.086281, 32.348064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435660, 0.437264, -0.786766,
		0.544078, 0.568396, 0.617175,
		0.717063, -0.696941, 0.009721,
		43.991936, 43.877197, 32.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147160, 44.644867, 32.458309>,  <43.489994, 44.365059, 32.344177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147160, 44.644867, 32.458309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169998, 44.308041, 32.243771>,  <44.183701, 44.105946, 32.115047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169998, 44.308041, 32.243771>,  <44.147160, 44.644867, 32.458309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169998, 44.308041, 32.243771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388774, 0.513569, -0.764919,
		0.919562, -0.164846, 0.356695,
		0.057093, -0.842064, -0.536346,
		44.187126, 44.055420, 32.082867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782318, 44.291790, 32.794823>,  <44.147160, 44.644867, 32.458309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782318, 44.291790, 32.794823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888279, 44.205151, 32.418968>,  <44.951855, 44.153168, 32.193455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888279, 44.205151, 32.418968>,  <44.782318, 44.291790, 32.794823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888279, 44.205151, 32.418968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397468, 0.912340, -0.098256,
		0.878546, -0.347445, 0.327778,
		0.264906, -0.216603, -0.939632,
		44.967751, 44.140171, 32.137077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516624, 44.155373, 32.684296>,  <44.782318, 44.291790, 32.794823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516624, 44.155373, 32.684296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295902, 44.339222, 32.405941>,  <45.163471, 44.449532, 32.238926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295902, 44.339222, 32.405941>,  <45.516624, 44.155373, 32.684296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295902, 44.339222, 32.405941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551435, 0.827066, 0.109002,
		0.625645, -0.323589, -0.709830,
		-0.551804, 0.459622, -0.695888,
		45.130360, 44.477108, 32.197174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418552, 43.415852, 32.869999>,  <45.516624, 44.155373, 32.684296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418552, 43.415852, 32.869999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154266, 43.429462, 33.169945>,  <44.995693, 43.437630, 33.349911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154266, 43.429462, 33.169945>,  <45.418552, 43.415852, 32.869999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154266, 43.429462, 33.169945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315150, -0.894088, 0.318255,
		0.681273, 0.446596, 0.580017,
		-0.660718, 0.034027, 0.749863,
		44.956051, 43.439671, 33.394905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709476, 43.066074, 33.391956>,  <45.418552, 43.415852, 32.869999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709476, 43.066074, 33.391956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317883, 43.014683, 33.455296>,  <45.082924, 42.983849, 33.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317883, 43.014683, 33.455296>,  <45.709476, 43.066074, 33.391956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317883, 43.014683, 33.455296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151436, -0.978125, 0.142612,
		0.136564, 0.163595, 0.977030,
		-0.978988, -0.128482, 0.158351,
		45.024185, 42.976139, 33.502800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516655, 42.667530, 34.115971>,  <45.709476, 43.066074, 33.391956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516655, 42.667530, 34.115971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230389, 42.619122, 33.840820>,  <45.058628, 42.590076, 33.675728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230389, 42.619122, 33.840820>,  <45.516655, 42.667530, 34.115971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230389, 42.619122, 33.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091869, -0.960006, 0.264478,
		-0.692376, 0.252473, 0.675925,
		-0.715665, -0.121022, -0.687879,
		45.015690, 42.582813, 33.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084702, 42.085445, 34.436474>,  <45.516655, 42.667530, 34.115971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084702, 42.085445, 34.436474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960217, 42.122929, 34.058189>,  <44.885525, 42.145420, 33.831219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960217, 42.122929, 34.058189>,  <45.084702, 42.085445, 34.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960217, 42.122929, 34.058189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266312, -0.963855, -0.007869,
		-0.912262, 0.249405, 0.324923,
		-0.311216, 0.093709, -0.945708,
		44.866852, 42.151043, 33.774475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435989, 41.696903, 34.443485>,  <45.084702, 42.085445, 34.436474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435989, 41.696903, 34.443485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562855, 41.705189, 34.064228>,  <44.638973, 41.710159, 33.836674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562855, 41.705189, 34.064228>,  <44.435989, 41.696903, 34.443485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562855, 41.705189, 34.064228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032330, -0.998944, -0.032640,
		-0.947819, 0.041006, -0.316162,
		0.317167, 0.020716, -0.948143,
		44.658005, 41.711403, 33.779785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036488, 41.325550, 34.120171>,  <44.435989, 41.696903, 34.443485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036488, 41.325550, 34.120171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358051, 41.326637, 33.882271>,  <44.550991, 41.327290, 33.739532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358051, 41.326637, 33.882271>,  <44.036488, 41.325550, 34.120171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358051, 41.326637, 33.882271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090230, -0.987857, -0.126482,
		-0.587867, 0.155344, -0.793902,
		0.803910, 0.002721, -0.594745,
		44.599224, 41.327454, 33.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881645, 40.752037, 33.709057>,  <44.036488, 41.325550, 34.120171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881645, 40.752037, 33.709057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269436, 40.835411, 33.657410>,  <44.502110, 40.885433, 33.626423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269436, 40.835411, 33.657410>,  <43.881645, 40.752037, 33.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269436, 40.835411, 33.657410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196162, -0.975300, -0.101542,
		-0.147091, 0.073115, -0.986417,
		0.969477, 0.208433, -0.129116,
		44.560280, 40.897942, 33.618675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102596, 40.240330, 33.152248>,  <43.881645, 40.752037, 33.709057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102596, 40.240330, 33.152248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428616, 40.350159, 33.356327>,  <44.624229, 40.416054, 33.478775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428616, 40.350159, 33.356327>,  <44.102596, 40.240330, 33.152248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428616, 40.350159, 33.356327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337980, -0.940547, -0.033764,
		0.470597, 0.199957, -0.859393,
		0.815051, 0.274568, 0.510200,
		44.673130, 40.432529, 33.509388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691090, 39.925106, 32.817730>,  <44.102596, 40.240330, 33.152248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691090, 39.925106, 32.817730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842396, 40.019039, 33.175896>,  <44.933178, 40.075397, 33.390797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842396, 40.019039, 33.175896>,  <44.691090, 39.925106, 32.817730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842396, 40.019039, 33.175896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320723, -0.940623, 0.111198,
		0.868364, 0.245119, -0.431116,
		0.378261, 0.234829, 0.895418,
		44.955875, 40.089489, 33.444523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248001, 39.606113, 32.791553>,  <44.691090, 39.925106, 32.817730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248001, 39.606113, 32.791553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201229, 39.659744, 33.185173>,  <45.173168, 39.691921, 33.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201229, 39.659744, 33.185173>,  <45.248001, 39.606113, 32.791553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201229, 39.659744, 33.185173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343634, -0.924181, 0.166750,
		0.931796, 0.357650, 0.061987,
		-0.116926, 0.134077, 0.984049,
		45.166153, 39.699966, 33.480389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847767, 39.376717, 33.099220>,  <45.248001, 39.606113, 32.791553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847767, 39.376717, 33.099220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573990, 39.353149, 33.389893>,  <45.409725, 39.339008, 33.564297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573990, 39.353149, 33.389893>,  <45.847767, 39.376717, 33.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573990, 39.353149, 33.389893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369654, -0.887159, 0.276235,
		0.628406, 0.457688, 0.628990,
		-0.684443, -0.058921, 0.726682,
		45.368656, 39.335472, 33.607899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205387, 38.858025, 33.617352>,  <45.847767, 39.376717, 33.099220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205387, 38.858025, 33.617352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823006, 38.878307, 33.732994>,  <45.593578, 38.890476, 33.802380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823006, 38.878307, 33.732994>,  <46.205387, 38.858025, 33.617352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823006, 38.878307, 33.732994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028406, -0.964362, 0.263057,
		0.292137, 0.259682, 0.920446,
		-0.955955, 0.050702, 0.289102,
		45.536221, 38.893517, 33.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190372, 38.419403, 34.228752>,  <46.205387, 38.858025, 33.617352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190372, 38.419403, 34.228752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838139, 38.449631, 34.041622>,  <45.626797, 38.467770, 33.929344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838139, 38.449631, 34.041622>,  <46.190372, 38.419403, 34.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838139, 38.449631, 34.041622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182766, -0.964988, 0.188135,
		-0.437225, 0.251171, 0.863567,
		-0.880586, 0.075574, -0.467822,
		45.573963, 38.472301, 33.901276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760983, 38.279263, 34.774128>,  <46.190372, 38.419403, 34.228752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760983, 38.279263, 34.774128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581604, 38.216106, 34.422226>,  <45.473976, 38.178211, 34.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581604, 38.216106, 34.422226>,  <45.760983, 38.279263, 34.774128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581604, 38.216106, 34.422226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108244, -0.967435, 0.228807,
		-0.887230, 0.197836, 0.416755,
		-0.448449, -0.157894, -0.879752,
		45.447071, 38.168739, 34.158302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269424, 37.715908, 34.909199>,  <45.760983, 38.279263, 34.774128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269424, 37.715908, 34.909199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267876, 37.726074, 34.509331>,  <45.266949, 37.732174, 34.269409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267876, 37.726074, 34.509331>,  <45.269424, 37.715908, 34.909199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267876, 37.726074, 34.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087799, -0.995825, -0.024979,
		-0.996131, 0.087673, 0.006084,
		-0.003868, 0.025417, -0.999670,
		45.266716, 37.733700, 34.209431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599545, 37.564011, 34.652344>,  <45.269424, 37.715908, 34.909199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599545, 37.564011, 34.652344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886513, 37.459389, 34.394073>,  <45.058693, 37.396614, 34.239113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886513, 37.459389, 34.394073>,  <44.599545, 37.564011, 34.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886513, 37.459389, 34.394073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394071, -0.916670, -0.066520,
		-0.574474, 0.302166, -0.760708,
		0.717418, -0.261559, -0.645677,
		45.101738, 37.380920, 34.200371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213703, 37.246525, 34.088654>,  <44.599545, 37.564011, 34.652344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213703, 37.246525, 34.088654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597717, 37.141914, 34.048790>,  <44.828125, 37.079147, 34.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597717, 37.141914, 34.048790>,  <44.213703, 37.246525, 34.088654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597717, 37.141914, 34.048790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266657, -0.962875, -0.042015,
		-0.084971, 0.066910, -0.994134,
		0.960039, -0.261523, -0.099658,
		44.885731, 37.063457, 34.018894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240498, 36.810402, 33.418739>,  <44.213703, 37.246525, 34.088654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240498, 36.810402, 33.418739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552544, 36.738106, 33.658321>,  <44.739773, 36.694729, 33.802071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552544, 36.738106, 33.658321>,  <44.240498, 36.810402, 33.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552544, 36.738106, 33.658321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097450, -0.980782, -0.169030,
		0.617996, 0.073495, -0.782739,
		0.780119, -0.180737, 0.598957,
		44.786579, 36.683884, 33.838009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494732, 36.139553, 33.130436>,  <44.240498, 36.810402, 33.418739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494732, 36.139553, 33.130436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683571, 36.147175, 33.482971>,  <44.796875, 36.151749, 33.694492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683571, 36.147175, 33.482971>,  <44.494732, 36.139553, 33.130436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683571, 36.147175, 33.482971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001348, -0.999750, 0.022332,
		0.881547, -0.011730, -0.471951,
		0.472095, 0.019051, 0.881342,
		44.825199, 36.152889, 33.747375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021027, 35.630325, 33.063992>,  <44.494732, 36.139553, 33.130436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021027, 35.630325, 33.063992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982582, 35.698433, 33.456272>,  <44.959515, 35.739296, 33.691639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982582, 35.698433, 33.456272>,  <45.021027, 35.630325, 33.063992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982582, 35.698433, 33.456272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047037, -0.983383, 0.175343,
		0.994259, 0.062981, 0.086501,
		-0.096107, 0.170267, 0.980700,
		44.953751, 35.749512, 33.750481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637840, 35.313320, 33.387138>,  <45.021027, 35.630325, 33.063992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637840, 35.313320, 33.387138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375057, 35.322330, 33.688576>,  <45.217388, 35.327736, 33.869438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375057, 35.322330, 33.688576>,  <45.637840, 35.313320, 33.387138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375057, 35.322330, 33.688576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112366, -0.985465, 0.127408,
		0.745509, 0.168379, 0.644876,
		-0.656955, 0.022522, 0.753593,
		45.177971, 35.329086, 33.914654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858036, 34.914886, 33.887707>,  <45.637840, 35.313320, 33.387138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858036, 34.914886, 33.887707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492516, 34.928783, 34.049572>,  <45.273201, 34.937122, 34.146690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492516, 34.928783, 34.049572>,  <45.858036, 34.914886, 33.887707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492516, 34.928783, 34.049572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095265, -0.950209, 0.296695,
		0.394824, 0.309672, 0.864996,
		-0.913805, 0.034739, 0.404666,
		45.218372, 34.939205, 34.170971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879536, 34.658089, 34.586208>,  <45.858036, 34.914886, 33.887707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879536, 34.658089, 34.586208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505898, 34.589550, 34.460922>,  <45.281715, 34.548428, 34.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505898, 34.589550, 34.460922>,  <45.879536, 34.658089, 34.586208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505898, 34.589550, 34.460922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062170, -0.941970, 0.329891,
		-0.351563, 0.288678, 0.890544,
		-0.934098, -0.171342, -0.313214,
		45.225670, 34.538147, 34.366959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434845, 35.132687, 34.430531>,  <45.879536, 34.658089, 34.586208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434845, 35.132687, 34.430531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586403, 34.938820, 34.745880>,  <46.677338, 34.822498, 34.935089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586403, 34.938820, 34.745880>,  <46.434845, 35.132687, 34.430531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586403, 34.938820, 34.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925411, 0.205299, -0.318538,
		-0.007468, 0.850265, 0.526302,
		0.378891, -0.484667, 0.788378,
		46.700069, 34.793419, 34.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916439, 35.552002, 34.761177>,  <46.434845, 35.132687, 34.430531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916439, 35.552002, 34.761177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987625, 35.164246, 34.828842>,  <47.030338, 34.931591, 34.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987625, 35.164246, 34.828842>,  <46.916439, 35.552002, 34.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987625, 35.164246, 34.828842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946922, 0.121940, -0.297437,
		0.267704, 0.213121, 0.939635,
		0.177969, -0.969387, 0.169165,
		47.041016, 34.873428, 34.879593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553753, 35.497631, 35.099903>,  <46.916439, 35.552002, 34.761177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553753, 35.497631, 35.099903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447693, 35.184212, 34.875141>,  <47.384056, 34.996159, 34.740284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447693, 35.184212, 34.875141>,  <47.553753, 35.497631, 35.099903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447693, 35.184212, 34.875141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881593, 0.039003, -0.470397,
		0.390496, -0.620100, 0.680432,
		-0.265154, -0.783552, -0.561907,
		47.368145, 34.949146, 34.706570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.129581, 35.022141, 35.167885>,  <47.553753, 35.497631, 35.099903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.129581, 35.022141, 35.167885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.919632, 34.960884, 34.832970>,  <47.793663, 34.924129, 34.632019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.919632, 34.960884, 34.832970>,  <48.129581, 35.022141, 35.167885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.919632, 34.960884, 34.832970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844821, -0.213721, -0.490510,
		-0.103831, -0.964817, 0.241552,
		-0.524878, -0.153138, -0.837289,
		47.762169, 34.914944, 34.581783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.920162, 43.832417, 38.642834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551521, 43.694588, 38.714306>,  <34.330338, 43.611893, 38.757191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551521, 43.694588, 38.714306>,  <34.920162, 43.832417, 38.642834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551521, 43.694588, 38.714306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055175, -0.571977, -0.818412,
		0.384204, -0.744388, 0.546145,
		-0.921598, -0.344570, 0.178685,
		34.275043, 43.591217, 38.767910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983143, 43.017147, 38.799908>,  <34.920162, 43.832417, 38.642834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983143, 43.017147, 38.799908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599548, 43.087368, 38.710880>,  <34.369392, 43.129501, 38.657463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599548, 43.087368, 38.710880>,  <34.983143, 43.017147, 38.799908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599548, 43.087368, 38.710880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055796, -0.652903, -0.755383,
		-0.277921, -0.736817, 0.616328,
		-0.958982, 0.175549, -0.222567,
		34.311855, 43.140034, 38.644112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751858, 42.367481, 38.844391>,  <34.983143, 43.017147, 38.799908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751858, 42.367481, 38.844391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.466511, 42.570602, 38.651207>,  <34.295303, 42.692474, 38.535297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.466511, 42.570602, 38.651207>,  <34.751858, 42.367481, 38.844391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466511, 42.570602, 38.651207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020017, -0.674111, -0.738358,
		-0.700512, -0.536382, 0.470719,
		-0.713360, 0.507807, -0.482960,
		34.252502, 42.722942, 38.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236004, 41.840843, 38.641907>,  <34.751858, 42.367481, 38.844391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236004, 41.840843, 38.641907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211975, 42.150803, 38.390221>,  <34.197559, 42.336781, 38.239208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211975, 42.150803, 38.390221>,  <34.236004, 41.840843, 38.641907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211975, 42.150803, 38.390221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142947, -0.617183, -0.773725,
		-0.987906, -0.136423, -0.073696,
		-0.060070, 0.774902, -0.629220,
		34.193954, 42.383274, 38.201454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738331, 41.629799, 38.146744>,  <34.236004, 41.840843, 38.641907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738331, 41.629799, 38.146744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935509, 41.928738, 37.968540>,  <34.053814, 42.108101, 37.861618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935509, 41.928738, 37.968540>,  <33.738331, 41.629799, 38.146744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935509, 41.928738, 37.968540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029251, -0.525987, -0.849989,
		-0.869569, 0.405967, -0.281143,
		0.492945, 0.747348, -0.445507,
		34.083393, 42.152943, 37.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375984, 41.798630, 37.469666>,  <33.738331, 41.629799, 38.146744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375984, 41.798630, 37.469666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750076, 41.935162, 37.432053>,  <33.974529, 42.017082, 37.409485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750076, 41.935162, 37.432053>,  <33.375984, 41.798630, 37.469666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750076, 41.935162, 37.432053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030858, -0.343164, -0.938768,
		-0.352698, 0.875061, -0.331470,
		0.935228, 0.341330, -0.094030,
		34.030643, 42.037560, 37.403843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374382, 42.116215, 36.826305>,  <33.375984, 41.798630, 37.469666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374382, 42.116215, 36.826305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760475, 42.050228, 36.907410>,  <33.992130, 42.010635, 36.956074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760475, 42.050228, 36.907410>,  <33.374382, 42.116215, 36.826305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760475, 42.050228, 36.907410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101006, -0.480056, -0.871404,
		0.241086, 0.861588, -0.446703,
		0.965233, -0.164964, 0.202760,
		34.050045, 42.000740, 36.968239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668804, 41.987206, 36.189240>,  <33.374382, 42.116215, 36.826305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668804, 41.987206, 36.189240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966026, 41.877377, 36.433365>,  <34.144360, 41.811478, 36.579838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966026, 41.877377, 36.433365>,  <33.668804, 41.987206, 36.189240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966026, 41.877377, 36.433365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350517, -0.617190, -0.704425,
		0.570094, 0.737350, -0.362364,
		0.743055, -0.274573, 0.610310,
		34.188942, 41.795006, 36.616459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304234, 42.101955, 35.797947>,  <33.668804, 41.987206, 36.189240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304234, 42.101955, 35.797947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331726, 41.814350, 36.074581>,  <34.348221, 41.641788, 36.240562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331726, 41.814350, 36.074581>,  <34.304234, 42.101955, 35.797947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331726, 41.814350, 36.074581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486665, -0.580985, -0.652390,
		0.870880, 0.381415, 0.309985,
		0.068735, -0.719013, 0.691590,
		34.352348, 41.598648, 36.282059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922024, 41.721581, 35.606319>,  <34.304234, 42.101955, 35.797947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922024, 41.721581, 35.606319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777786, 41.464512, 35.876709>,  <34.691246, 41.310268, 36.038944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777786, 41.464512, 35.876709>,  <34.922024, 41.721581, 35.606319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777786, 41.464512, 35.876709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446296, -0.755267, -0.479991,
		0.819021, 0.128606, 0.559165,
		-0.360589, -0.642676, 0.675975,
		34.669609, 41.271709, 36.079502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446354, 41.350983, 35.765533>,  <34.922024, 41.721581, 35.606319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446354, 41.350983, 35.765533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107327, 41.146202, 35.821434>,  <34.903908, 41.023335, 35.854977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107327, 41.146202, 35.821434>,  <35.446354, 41.350983, 35.765533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107327, 41.146202, 35.821434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339499, -0.725496, -0.598662,
		0.407876, -0.459961, 0.788716,
		-0.847572, -0.511948, 0.139756,
		34.853054, 40.992619, 35.863361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641911, 40.598137, 36.022732>,  <35.446354, 41.350983, 35.765533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641911, 40.598137, 36.022732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265930, 40.555466, 35.893044>,  <35.040344, 40.529865, 35.815231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265930, 40.555466, 35.893044>,  <35.641911, 40.598137, 36.022732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265930, 40.555466, 35.893044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212737, -0.925922, -0.312108,
		-0.266906, -0.362338, 0.893013,
		-0.939949, -0.106674, -0.324217,
		34.983944, 40.523464, 35.795780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358749, 39.911087, 36.265766>,  <35.641911, 40.598137, 36.022732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358749, 39.911087, 36.265766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127911, 40.010437, 35.954571>,  <34.989407, 40.070045, 35.767853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127911, 40.010437, 35.954571>,  <35.358749, 39.911087, 36.265766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127911, 40.010437, 35.954571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171068, -0.894732, -0.412541,
		-0.798557, -0.371166, 0.473859,
		-0.577098, 0.248376, -0.777990,
		34.954781, 40.084949, 35.721172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202866, 39.260754, 36.069836>,  <35.358749, 39.911087, 36.265766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202866, 39.260754, 36.069836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061874, 39.518143, 35.798042>,  <34.977280, 39.672577, 35.634964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061874, 39.518143, 35.798042>,  <35.202866, 39.260754, 36.069836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061874, 39.518143, 35.798042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022485, -0.731700, -0.681256,
		-0.935551, -0.224847, 0.272374,
		-0.352475, 0.643474, -0.679487,
		34.956131, 39.711185, 35.594196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705555, 38.869083, 35.738182>,  <35.202866, 39.260754, 36.069836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705555, 38.869083, 35.738182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822136, 39.152020, 35.480587>,  <34.892086, 39.321781, 35.326031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822136, 39.152020, 35.480587>,  <34.705555, 38.869083, 35.738182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822136, 39.152020, 35.480587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186692, -0.702334, -0.686930,
		-0.938190, 0.079981, -0.336753,
		0.291454, 0.707340, -0.643991,
		34.909573, 39.364223, 35.287388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327034, 38.832718, 35.017597>,  <34.705555, 38.869083, 35.738182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327034, 38.832718, 35.017597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681694, 39.014347, 34.982582>,  <34.894489, 39.123325, 34.961571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681694, 39.014347, 34.982582>,  <34.327034, 38.832718, 35.017597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681694, 39.014347, 34.982582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262446, -0.649967, -0.713207,
		-0.380746, 0.609393, -0.695466,
		0.886654, 0.454073, -0.087540,
		34.947689, 39.150570, 34.956322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474327, 38.911152, 34.246487>,  <34.327034, 38.832718, 35.017597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474327, 38.911152, 34.246487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839760, 38.944817, 34.405632>,  <35.059017, 38.965015, 34.501118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839760, 38.944817, 34.405632>,  <34.474327, 38.911152, 34.246487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839760, 38.944817, 34.405632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391286, -0.448420, -0.803626,
		0.110776, 0.889852, -0.442597,
		0.913578, 0.084160, 0.397861,
		35.113834, 38.970066, 34.524990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884632, 39.163006, 33.658062>,  <34.474327, 38.911152, 34.246487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884632, 39.163006, 33.658062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147202, 39.013111, 33.919960>,  <35.304741, 38.923176, 34.077099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147202, 39.013111, 33.919960>,  <34.884632, 39.163006, 33.658062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147202, 39.013111, 33.919960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534835, -0.380921, -0.754222,
		0.532038, 0.845265, -0.049622,
		0.656420, -0.374735, 0.654742,
		35.344128, 38.900692, 34.116383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491753, 39.240536, 33.248268>,  <34.884632, 39.163006, 33.658062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491753, 39.240536, 33.248268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539448, 38.975578, 33.544109>,  <35.568066, 38.816605, 33.721615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539448, 38.975578, 33.544109>,  <35.491753, 39.240536, 33.248268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539448, 38.975578, 33.544109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517219, -0.594423, -0.615748,
		0.847507, 0.455957, 0.271727,
		0.119234, -0.662392, 0.739608,
		35.575218, 38.776859, 33.765991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061073, 38.924526, 33.037136>,  <35.491753, 39.240536, 33.248268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061073, 38.924526, 33.037136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947105, 38.677498, 33.330372>,  <35.878723, 38.529282, 33.506313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947105, 38.677498, 33.330372>,  <36.061073, 38.924526, 33.037136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947105, 38.677498, 33.330372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584419, -0.718124, -0.377826,
		0.759785, 0.320782, 0.565530,
		-0.284921, -0.617573, 0.733091,
		35.861629, 38.492226, 33.550301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599262, 38.561604, 33.310799>,  <36.061073, 38.924526, 33.037136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599262, 38.561604, 33.310799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316616, 38.314045, 33.448006>,  <36.147030, 38.165508, 33.530331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316616, 38.314045, 33.448006>,  <36.599262, 38.561604, 33.310799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316616, 38.314045, 33.448006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506669, -0.780935, -0.365275,
		0.493944, -0.084311, 0.865396,
		-0.706615, -0.618895, 0.343021,
		36.104630, 38.128376, 33.550911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866661, 38.069347, 33.798038>,  <36.599262, 38.561604, 33.310799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866661, 38.069347, 33.798038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533894, 37.887596, 33.670639>,  <36.334232, 37.778545, 33.594200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533894, 37.887596, 33.670639>,  <36.866661, 38.069347, 33.798038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533894, 37.887596, 33.670639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546524, -0.770274, -0.328619,
		-0.096015, -0.447454, 0.889138,
		-0.831921, -0.454383, -0.318502,
		36.284317, 37.751282, 33.575089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891872, 37.489765, 34.158428>,  <36.866661, 38.069347, 33.798038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891872, 37.489765, 34.158428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256123, 37.329845, 34.200218>,  <37.474674, 37.233894, 34.225292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256123, 37.329845, 34.200218>,  <36.891872, 37.489765, 34.158428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256123, 37.329845, 34.200218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190475, 0.630475, 0.752476,
		-0.366707, -0.665327, 0.650281,
		0.910629, -0.399800, 0.104471,
		37.529312, 37.209904, 34.231560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991207, 37.451542, 34.906113>,  <36.891872, 37.489765, 34.158428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991207, 37.451542, 34.906113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368839, 37.456745, 34.774330>,  <37.595421, 37.459866, 34.695263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368839, 37.456745, 34.774330>,  <36.991207, 37.451542, 34.906113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368839, 37.456745, 34.774330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214805, 0.733796, 0.644518,
		0.250134, -0.679246, 0.689970,
		0.944083, 0.013007, -0.329452,
		37.652065, 37.460648, 34.675495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301975, 37.525860, 35.519901>,  <36.991207, 37.451542, 34.906113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301975, 37.525860, 35.519901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588669, 37.592690, 35.249088>,  <37.760685, 37.632786, 35.086601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588669, 37.592690, 35.249088>,  <37.301975, 37.525860, 35.519901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588669, 37.592690, 35.249088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391035, 0.707580, 0.588576,
		0.577392, -0.686598, 0.441816,
		0.716736, 0.167074, -0.677035,
		37.803688, 37.642811, 35.045979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943687, 37.583389, 35.896912>,  <37.301975, 37.525860, 35.519901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943687, 37.583389, 35.896912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951439, 37.763817, 35.540001>,  <37.956089, 37.872074, 35.325855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951439, 37.763817, 35.540001>,  <37.943687, 37.583389, 35.896912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951439, 37.763817, 35.540001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359892, 0.829476, 0.427137,
		0.932792, -0.329403, -0.146260,
		0.019380, 0.451068, -0.892279,
		37.957253, 37.899136, 35.272316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556366, 37.919476, 35.928589>,  <37.943687, 37.583389, 35.896912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556366, 37.919476, 35.928589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354637, 38.105709, 35.637688>,  <38.233601, 38.217449, 35.463146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354637, 38.105709, 35.637688>,  <38.556366, 37.919476, 35.928589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354637, 38.105709, 35.637688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328902, 0.882282, 0.336751,
		0.798428, -0.069365, -0.598082,
		-0.504318, 0.465582, -0.727253,
		38.203342, 38.245384, 35.419514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057144, 38.430096, 35.550880>,  <38.556366, 37.919476, 35.928589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057144, 38.430096, 35.550880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671997, 38.521423, 35.493252>,  <38.440910, 38.576221, 35.458675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671997, 38.521423, 35.493252>,  <39.057144, 38.430096, 35.550880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671997, 38.521423, 35.493252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218460, 0.972467, 0.081135,
		0.158627, 0.046649, -0.986236,
		-0.962867, 0.228323, -0.144069,
		38.383137, 38.589920, 35.450031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015556, 38.943710, 35.094238>,  <39.057144, 38.430096, 35.550880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015556, 38.943710, 35.094238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664680, 38.983253, 35.282181>,  <38.454155, 39.006977, 35.394947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664680, 38.983253, 35.282181>,  <39.015556, 38.943710, 35.094238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664680, 38.983253, 35.282181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158725, 0.983262, 0.089457,
		-0.453147, 0.153049, -0.878199,
		-0.877191, 0.098855, 0.469855,
		38.401524, 39.012909, 35.423138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608906, 39.497860, 34.734158>,  <39.015556, 38.943710, 35.094238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608906, 39.497860, 34.734158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455070, 39.471939, 35.102482>,  <38.362770, 39.456387, 35.323475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455070, 39.471939, 35.102482>,  <38.608906, 39.497860, 34.734158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455070, 39.471939, 35.102482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073065, 0.996540, 0.039612,
		-0.920192, -0.052045, -0.387993,
		-0.384589, -0.064799, 0.920811,
		38.339695, 39.452499, 35.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133739, 40.021809, 34.736614>,  <38.608906, 39.497860, 34.734158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133739, 40.021809, 34.736614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194626, 39.938675, 35.123112>,  <38.231159, 39.888794, 35.355011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194626, 39.938675, 35.123112>,  <38.133739, 40.021809, 34.736614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194626, 39.938675, 35.123112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045914, 0.975097, 0.216973,
		-0.987280, -0.077391, 0.138881,
		0.152215, -0.207836, 0.966248,
		38.240292, 39.876324, 35.412987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723335, 40.577160, 35.028805>,  <38.133739, 40.021809, 34.736614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723335, 40.577160, 35.028805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953068, 40.436588, 35.324547>,  <38.090908, 40.352245, 35.501991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953068, 40.436588, 35.324547>,  <37.723335, 40.577160, 35.028805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953068, 40.436588, 35.324547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004326, 0.904454, 0.426550,
		-0.818613, -0.241782, 0.520974,
		0.574329, -0.351433, 0.739352,
		38.125366, 40.331158, 35.546352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436028, 40.797443, 35.625816>,  <37.723335, 40.577160, 35.028805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436028, 40.797443, 35.625816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817719, 40.725166, 35.721149>,  <38.046734, 40.681801, 35.778347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817719, 40.725166, 35.721149>,  <37.436028, 40.797443, 35.625816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817719, 40.725166, 35.721149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003881, 0.789323, 0.613966,
		-0.299055, -0.586788, 0.752493,
		0.954228, -0.180690, 0.238328,
		38.103989, 40.670959, 35.792648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454231, 40.801899, 36.388916>,  <37.436028, 40.797443, 35.625816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454231, 40.801899, 36.388916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826900, 40.876255, 36.264057>,  <38.050503, 40.920868, 36.189144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826900, 40.876255, 36.264057>,  <37.454231, 40.801899, 36.388916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826900, 40.876255, 36.264057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004118, 0.853728, 0.520702,
		0.363279, -0.486409, 0.794629,
		0.931671, 0.185887, -0.312145,
		38.106403, 40.932022, 36.170414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871838, 40.889896, 36.980469>,  <37.454231, 40.801899, 36.388916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871838, 40.889896, 36.980469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983444, 41.115280, 36.669426>,  <38.050407, 41.250511, 36.482800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983444, 41.115280, 36.669426>,  <37.871838, 40.889896, 36.980469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983444, 41.115280, 36.669426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243017, 0.824834, 0.510481,
		0.929029, 0.046542, 0.367067,
		0.279011, 0.563455, -0.777606,
		38.067146, 41.284317, 36.436146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351292, 41.214581, 37.237041>,  <37.871838, 40.889896, 36.980469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351292, 41.214581, 37.237041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.221249, 41.419285, 36.918945>,  <38.143223, 41.542107, 36.728088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.221249, 41.419285, 36.918945>,  <38.351292, 41.214581, 37.237041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221249, 41.419285, 36.918945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326468, 0.728486, 0.602269,
		0.887538, 0.455423, -0.069764,
		-0.325109, 0.511761, -0.795239,
		38.123714, 41.572811, 36.680374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342178, 41.830097, 37.414536>,  <38.351292, 41.214581, 37.237041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342178, 41.830097, 37.414536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112984, 41.896511, 37.093506>,  <37.975468, 41.936359, 36.900890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112984, 41.896511, 37.093506>,  <38.342178, 41.830097, 37.414536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112984, 41.896511, 37.093506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469897, 0.735767, 0.487693,
		0.671478, 0.656567, -0.343565,
		-0.572987, 0.166035, -0.802570,
		37.941086, 41.946323, 36.852734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279816, 42.587376, 37.386189>,  <38.342178, 41.830097, 37.414536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279816, 42.587376, 37.386189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980133, 42.430782, 37.172489>,  <37.800323, 42.336826, 37.044270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980133, 42.430782, 37.172489>,  <38.279816, 42.587376, 37.386189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980133, 42.430782, 37.172489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621756, 0.693692, 0.363609,
		0.228259, 0.604594, -0.763128,
		-0.749211, -0.391483, -0.534251,
		37.755371, 42.313339, 37.012215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005688, 43.184536, 37.147377>,  <38.279816, 42.587376, 37.386189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005688, 43.184536, 37.147377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727287, 42.900337, 37.105850>,  <37.560249, 42.729816, 37.080933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727287, 42.900337, 37.105850>,  <38.005688, 43.184536, 37.147377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727287, 42.900337, 37.105850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659368, 0.575159, 0.484175,
		-0.284294, 0.405439, -0.868790,
		-0.695996, -0.710500, -0.103820,
		37.518490, 42.687187, 37.074703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467232, 43.509018, 36.884541>,  <38.005688, 43.184536, 37.147377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467232, 43.509018, 36.884541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.319359, 43.195683, 37.084427>,  <37.230637, 43.007679, 37.204357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.319359, 43.195683, 37.084427>,  <37.467232, 43.509018, 36.884541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319359, 43.195683, 37.084427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470478, 0.621583, 0.626327,
		-0.801240, -0.003561, -0.598333,
		-0.369683, -0.783340, 0.499712,
		37.208454, 42.960682, 37.234341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.658821, 43.608383, 37.002213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736736, 43.307770, 37.254326>,  <36.783485, 43.127399, 37.405594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736736, 43.307770, 37.254326>,  <36.658821, 43.608383, 37.002213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736736, 43.307770, 37.254326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374590, 0.536882, 0.755936,
		-0.906499, -0.383342, -0.176941,
		0.194786, -0.751536, 0.630279,
		36.795174, 43.082310, 37.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036861, 43.582920, 37.328430>,  <36.658821, 43.608383, 37.002213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036861, 43.582920, 37.328430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313679, 43.413532, 37.562267>,  <36.479771, 43.311901, 37.702568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313679, 43.413532, 37.562267>,  <36.036861, 43.582920, 37.328430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313679, 43.413532, 37.562267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317566, 0.548667, 0.773380,
		-0.648246, -0.720862, 0.245225,
		0.692047, -0.423465, 0.584592,
		36.521294, 43.286491, 37.737644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620125, 43.323128, 37.992054>,  <36.036861, 43.582920, 37.328430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620125, 43.323128, 37.992054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 43.351906, 38.096718>,  <36.236111, 43.369175, 38.159515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 43.351906, 38.096718>,  <35.620125, 43.323128, 37.992054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005116, 43.351906, 38.096718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265631, 0.447058, 0.854154,
		-0.055523, -0.891607, 0.449393,
		0.962474, 0.071948, 0.261661,
		36.293858, 43.373489, 38.175217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737488, 43.020824, 38.742027>,  <35.620125, 43.323128, 37.992054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737488, 43.020824, 38.742027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044849, 43.274605, 38.708473>,  <36.229267, 43.426872, 38.688339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044849, 43.274605, 38.708473>,  <35.737488, 43.020824, 38.742027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044849, 43.274605, 38.708473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228535, 0.394468, 0.890038,
		0.597772, -0.664735, 0.448103,
		0.768401, 0.634447, -0.083887,
		36.275372, 43.464939, 38.683308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116119, 42.939987, 39.418015>,  <35.737488, 43.020824, 38.742027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116119, 42.939987, 39.418015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272270, 43.271076, 39.256779>,  <36.365963, 43.469730, 39.160038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272270, 43.271076, 39.256779>,  <36.116119, 42.939987, 39.418015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272270, 43.271076, 39.256779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015148, 0.443549, 0.896122,
		0.920529, -0.343723, 0.185692,
		0.390381, 0.827719, -0.403093,
		36.389385, 43.519390, 39.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667168, 43.180836, 39.882607>,  <36.116119, 42.939987, 39.418015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667168, 43.180836, 39.882607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550140, 43.500702, 39.672867>,  <36.479923, 43.692623, 39.547024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550140, 43.500702, 39.672867>,  <36.667168, 43.180836, 39.882607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550140, 43.500702, 39.672867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096121, 0.520967, 0.848147,
		0.951401, 0.298544, -0.075555,
		-0.292571, 0.799665, -0.524345,
		36.462368, 43.740601, 39.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089233, 43.715889, 40.103004>,  <36.667168, 43.180836, 39.882607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089233, 43.715889, 40.103004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786396, 43.907753, 39.925587>,  <36.604694, 44.022869, 39.819134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786396, 43.907753, 39.925587>,  <37.089233, 43.715889, 40.103004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786396, 43.907753, 39.925587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017369, 0.663913, 0.747608,
		0.653072, 0.573715, -0.494315,
		-0.757096, 0.479656, -0.443549,
		36.559269, 44.051651, 39.792522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286175, 44.433758, 39.985619>,  <37.089233, 43.715889, 40.103004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286175, 44.433758, 39.985619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888935, 44.403049, 40.021099>,  <36.650593, 44.384624, 40.042389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888935, 44.403049, 40.021099>,  <37.286175, 44.433758, 39.985619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888935, 44.403049, 40.021099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005832, 0.722883, 0.690946,
		-0.117163, 0.686692, -0.717445,
		-0.993096, -0.076770, 0.088700,
		36.591007, 44.380020, 40.047710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056835, 45.026180, 39.986534>,  <37.286175, 44.433758, 39.985619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056835, 45.026180, 39.986534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707848, 44.885899, 40.122658>,  <36.498455, 44.801731, 40.204334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707848, 44.885899, 40.122658>,  <37.056835, 45.026180, 39.986534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707848, 44.885899, 40.122658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012050, 0.680743, 0.732423,
		-0.488527, 0.643115, -0.589699,
		-0.872465, -0.350703, 0.340311,
		36.446110, 44.780689, 40.224751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625504, 45.655342, 40.038700>,  <37.056835, 45.026180, 39.986534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625504, 45.655342, 40.038700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493130, 45.369938, 40.285725>,  <36.413704, 45.198696, 40.433941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493130, 45.369938, 40.285725>,  <36.625504, 45.655342, 40.038700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493130, 45.369938, 40.285725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060824, 0.636949, 0.768503,
		-0.941690, 0.291890, -0.167392,
		-0.330939, -0.713510, 0.617562,
		36.393848, 45.155884, 40.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251396, 46.025028, 40.510143>,  <36.625504, 45.655342, 40.038700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251396, 46.025028, 40.510143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311611, 45.679253, 40.702015>,  <36.347740, 45.471786, 40.817139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311611, 45.679253, 40.702015>,  <36.251396, 46.025028, 40.510143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311611, 45.679253, 40.702015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174698, 0.500831, 0.847731,
		-0.973046, -0.043815, 0.226409,
		0.150536, -0.864435, 0.479678,
		36.356773, 45.419922, 40.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840549, 46.031433, 41.043423>,  <36.251396, 46.025028, 40.510143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840549, 46.031433, 41.043423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106598, 45.748234, 41.138378>,  <36.266228, 45.578316, 41.195351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106598, 45.748234, 41.138378>,  <35.840549, 46.031433, 41.043423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106598, 45.748234, 41.138378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102102, 0.401148, 0.910305,
		-0.739720, -0.581228, 0.339101,
		0.665124, -0.707993, 0.237392,
		36.306133, 45.535835, 41.209595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649120, 45.688576, 41.654480>,  <35.840549, 46.031433, 41.043423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649120, 45.688576, 41.654480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046432, 45.642853, 41.647251>,  <36.284821, 45.615421, 41.642914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046432, 45.642853, 41.647251>,  <35.649120, 45.688576, 41.654480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046432, 45.642853, 41.647251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077202, 0.538204, 0.839271,
		-0.086208, -0.835027, 0.543413,
		0.993281, -0.114304, -0.018069,
		36.344418, 45.608562, 41.641830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834240, 45.634441, 42.340134>,  <35.649120, 45.688576, 41.654480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834240, 45.634441, 42.340134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206970, 45.656681, 42.196682>,  <36.430607, 45.670025, 42.110611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206970, 45.656681, 42.196682>,  <35.834240, 45.634441, 42.340134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206970, 45.656681, 42.196682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289816, 0.480772, 0.827565,
		0.218431, -0.875081, 0.431881,
		0.931823, 0.055600, -0.358628,
		36.486519, 45.673363, 42.089092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186642, 45.484024, 42.857796>,  <35.834240, 45.634441, 42.340134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186642, 45.484024, 42.857796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451660, 45.677063, 42.628666>,  <36.610672, 45.792889, 42.491188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451660, 45.677063, 42.628666>,  <36.186642, 45.484024, 42.857796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451660, 45.677063, 42.628666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288918, 0.540925, 0.789890,
		0.691059, -0.688837, 0.218954,
		0.662544, 0.482601, -0.572829,
		36.650425, 45.821842, 42.456818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834789, 45.469173, 43.299107>,  <36.186642, 45.484024, 42.857796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834789, 45.469173, 43.299107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853794, 45.741589, 43.006824>,  <36.865196, 45.905037, 42.831455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853794, 45.741589, 43.006824>,  <36.834789, 45.469173, 43.299107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853794, 45.741589, 43.006824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363644, 0.669542, 0.647670,
		0.930326, -0.296488, -0.215845,
		0.047509, 0.681035, -0.730708,
		36.868046, 45.945900, 42.787613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580994, 45.693871, 43.362061>,  <36.834789, 45.469173, 43.299107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580994, 45.693871, 43.362061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361389, 45.984989, 43.197674>,  <37.229626, 46.159660, 43.099041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361389, 45.984989, 43.197674>,  <37.580994, 45.693871, 43.362061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361389, 45.984989, 43.197674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267656, 0.618895, 0.738465,
		0.791798, 0.295430, -0.534581,
		-0.549014, 0.727799, -0.410966,
		37.196686, 46.203327, 43.074383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023857, 46.270214, 43.105457>,  <37.580994, 45.693871, 43.362061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023857, 46.270214, 43.105457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656219, 46.417770, 43.160862>,  <37.435638, 46.506306, 43.194107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656219, 46.417770, 43.160862>,  <38.023857, 46.270214, 43.105457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656219, 46.417770, 43.160862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351040, 0.606862, 0.713084,
		0.178989, 0.704016, -0.687259,
		-0.919094, 0.368889, 0.138516,
		37.380493, 46.528439, 43.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102821, 46.969387, 43.227409>,  <38.023857, 46.270214, 43.105457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102821, 46.969387, 43.227409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740238, 46.890568, 43.376816>,  <37.522690, 46.843277, 43.466461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740238, 46.890568, 43.376816>,  <38.102821, 46.969387, 43.227409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740238, 46.890568, 43.376816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215242, 0.545400, 0.810068,
		-0.363336, 0.814686, -0.451968,
		-0.906454, -0.197044, 0.373518,
		37.468304, 46.831455, 43.488873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986954, 47.392818, 43.711277>,  <38.102821, 46.969387, 43.227409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986954, 47.392818, 43.711277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678253, 47.173443, 43.840034>,  <37.493034, 47.041817, 43.917290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678253, 47.173443, 43.840034>,  <37.986954, 47.392818, 43.711277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678253, 47.173443, 43.840034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143997, 0.342323, 0.928483,
		-0.619406, 0.762910, -0.185215,
		-0.771752, -0.548438, 0.321894,
		37.446728, 47.008911, 43.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529762, 47.857773, 44.052803>,  <37.986954, 47.392818, 43.711277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529762, 47.857773, 44.052803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421787, 47.496269, 44.185684>,  <37.357002, 47.279369, 44.265411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421787, 47.496269, 44.185684>,  <37.529762, 47.857773, 44.052803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421787, 47.496269, 44.185684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038125, 0.354771, 0.934176,
		-0.962123, 0.239504, -0.130222,
		-0.269938, -0.903756, 0.332202,
		37.340805, 47.225143, 44.285343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998871, 48.025215, 44.374012>,  <37.529762, 47.857773, 44.052803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998871, 48.025215, 44.374012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138569, 47.679211, 44.518108>,  <37.222389, 47.471607, 44.604568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138569, 47.679211, 44.518108>,  <36.998871, 48.025215, 44.374012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138569, 47.679211, 44.518108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009034, 0.387544, 0.921807,
		-0.936988, -0.318682, 0.143163,
		0.349246, -0.865015, 0.360245,
		37.243343, 47.419704, 44.626183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589561, 47.779854, 44.975559>,  <36.998871, 48.025215, 44.374012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589561, 47.779854, 44.975559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971031, 47.659611, 44.980305>,  <37.199913, 47.587463, 44.983150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971031, 47.659611, 44.980305>,  <36.589561, 47.779854, 44.975559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971031, 47.659611, 44.980305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146982, 0.499975, 0.853476,
		-0.262497, -0.812193, 0.520997,
		0.953673, -0.300612, 0.011864,
		37.257133, 47.569427, 44.983864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010441, 47.216366, 45.114075>,  <36.589561, 47.779854, 44.975559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010441, 47.216366, 45.114075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870270, 47.118145, 45.475605>,  <35.786167, 47.059212, 45.692524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870270, 47.118145, 45.475605>,  <36.010441, 47.216366, 45.114075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870270, 47.118145, 45.475605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745775, -0.510633, -0.427873,
		0.566590, -0.823989, -0.004189,
		-0.350423, -0.245553, 0.903829,
		35.765144, 47.044479, 45.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835892, 46.572510, 44.924690>,  <36.010441, 47.216366, 45.114075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835892, 46.572510, 44.924690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576656, 46.775272, 45.152031>,  <35.421116, 46.896931, 45.288437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576656, 46.775272, 45.152031>,  <35.835892, 46.572510, 44.924690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576656, 46.775272, 45.152031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753558, -0.534779, -0.382311,
		0.110146, -0.676058, 0.728569,
		-0.648088, 0.506909, 0.568353,
		35.382229, 46.927345, 45.322536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368423, 46.067066, 45.360172>,  <35.835892, 46.572510, 44.924690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368423, 46.067066, 45.360172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176411, 46.411888, 45.295143>,  <35.061203, 46.618782, 45.256126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176411, 46.411888, 45.295143>,  <35.368423, 46.067066, 45.360172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176411, 46.411888, 45.295143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827740, -0.506468, -0.241532,
		-0.290551, 0.018623, 0.956678,
		-0.480028, 0.862058, -0.162570,
		35.032402, 46.670506, 45.246372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758968, 45.981449, 45.533665>,  <35.368423, 46.067066, 45.360172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758968, 45.981449, 45.533665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677612, 46.320656, 45.337906>,  <34.628799, 46.524178, 45.220451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677612, 46.320656, 45.337906>,  <34.758968, 45.981449, 45.533665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677612, 46.320656, 45.337906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800621, -0.431769, -0.415430,
		-0.563596, 0.307327, 0.766753,
		-0.203388, 0.848013, -0.489395,
		34.616596, 46.575058, 45.191086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015865, 46.112564, 45.572224>,  <34.758968, 45.981449, 45.533665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015865, 46.112564, 45.572224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170605, 46.282761, 45.244980>,  <34.263447, 46.384880, 45.048634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170605, 46.282761, 45.244980>,  <34.015865, 46.112564, 45.572224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170605, 46.282761, 45.244980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687202, -0.458564, -0.563446,
		-0.614899, 0.780175, 0.115007,
		0.386849, 0.425496, -0.818108,
		34.286659, 46.410408, 44.999546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436749, 46.238667, 45.174953>,  <34.015865, 46.112564, 45.572224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436749, 46.238667, 45.174953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754097, 46.252087, 44.931828>,  <33.944504, 46.260139, 44.785954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754097, 46.252087, 44.931828>,  <33.436749, 46.238667, 45.174953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754097, 46.252087, 44.931828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558627, -0.356598, -0.748849,
		-0.241873, 0.933655, -0.264169,
		0.793368, 0.033554, -0.607816,
		33.992107, 46.262154, 44.749481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226154, 46.525063, 44.558090>,  <33.436749, 46.238667, 45.174953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226154, 46.525063, 44.558090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544235, 46.308933, 44.448036>,  <33.735085, 46.179256, 44.382004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544235, 46.308933, 44.448036>,  <33.226154, 46.525063, 44.558090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544235, 46.308933, 44.448036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392695, -0.113197, -0.912676,
		0.461994, 0.833810, -0.302197,
		0.795206, -0.540322, -0.275137,
		33.782799, 46.146835, 44.365494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058411, 46.345753, 43.957970>,  <33.226154, 46.525063, 44.558090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058411, 46.345753, 43.957970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414295, 46.163147, 43.957458>,  <33.627827, 46.053581, 43.957153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414295, 46.163147, 43.957458>,  <33.058411, 46.345753, 43.957970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414295, 46.163147, 43.957458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185414, -0.358803, -0.914812,
		0.417170, 0.814158, -0.403877,
		0.889714, -0.456517, -0.001274,
		33.681210, 46.026192, 43.957077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522144, 46.638523, 43.333897>,  <33.058411, 46.345753, 43.957970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522144, 46.638523, 43.333897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617455, 46.265095, 43.440987>,  <33.674641, 46.041039, 43.505241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617455, 46.265095, 43.440987>,  <33.522144, 46.638523, 43.333897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617455, 46.265095, 43.440987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048348, -0.263919, -0.963332,
		0.969994, 0.242480, -0.017748,
		0.238273, -0.933569, 0.267723,
		33.688938, 45.985023, 43.521305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010025, 46.463921, 42.792198>,  <33.522144, 46.638523, 43.333897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010025, 46.463921, 42.792198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904579, 46.120087, 42.967297>,  <33.841312, 45.913784, 43.072353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904579, 46.120087, 42.967297>,  <34.010025, 46.463921, 42.792198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904579, 46.120087, 42.967297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189455, -0.491092, -0.850256,
		0.945841, -0.141205, 0.292311,
		-0.263612, -0.859587, 0.437743,
		33.825497, 45.862209, 43.098621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477970, 46.000950, 42.524921>,  <34.010025, 46.463921, 42.792198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477970, 46.000950, 42.524921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199043, 45.758724, 42.678307>,  <34.031689, 45.613388, 42.770336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199043, 45.758724, 42.678307>,  <34.477970, 46.000950, 42.524921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199043, 45.758724, 42.678307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128487, -0.631929, -0.764301,
		0.705157, -0.483687, 0.518460,
		-0.697313, -0.605567, 0.383462,
		33.989849, 45.577053, 42.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801300, 45.344200, 42.558407>,  <34.477970, 46.000950, 42.524921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801300, 45.344200, 42.558407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404316, 45.298290, 42.541214>,  <34.166126, 45.270744, 42.530899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404316, 45.298290, 42.541214>,  <34.801300, 45.344200, 42.558407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404316, 45.298290, 42.541214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084616, -0.388008, -0.917763,
		0.088656, -0.914482, 0.394795,
		-0.992462, -0.114771, -0.042980,
		34.106579, 45.263859, 42.528320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648518, 44.573578, 42.355247>,  <34.801300, 45.344200, 42.558407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648518, 44.573578, 42.355247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326492, 44.785500, 42.248535>,  <34.133278, 44.912651, 42.184505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326492, 44.785500, 42.248535>,  <34.648518, 44.573578, 42.355247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326492, 44.785500, 42.248535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030030, -0.412771, -0.910340,
		-0.592424, -0.740896, 0.316398,
		-0.805067, 0.529805, -0.266784,
		34.084972, 44.944443, 42.168499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281864, 44.064323, 41.999092>,  <34.648518, 44.573578, 42.355247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281864, 44.064323, 41.999092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142159, 44.426785, 41.903671>,  <34.058334, 44.644260, 41.846420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142159, 44.426785, 41.903671>,  <34.281864, 44.064323, 41.999092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142159, 44.426785, 41.903671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109726, -0.292379, -0.949987,
		-0.930579, -0.305620, 0.201545,
		-0.349262, 0.906152, -0.238548,
		34.037380, 44.698631, 41.832108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618565, 44.017715, 41.633247>,  <34.281864, 44.064323, 41.999092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618565, 44.017715, 41.633247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723503, 44.384983, 41.514492>,  <33.786465, 44.605343, 41.443237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723503, 44.384983, 41.514492>,  <33.618565, 44.017715, 41.633247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723503, 44.384983, 41.514492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259220, -0.229300, -0.938204,
		-0.929506, 0.323091, 0.177852,
		0.262344, 0.918169, -0.296887,
		33.802208, 44.660435, 41.425426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104904, 44.191010, 41.113220>,  <33.618565, 44.017715, 41.633247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104904, 44.191010, 41.113220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420071, 44.433010, 41.067329>,  <33.609169, 44.578209, 41.039795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420071, 44.433010, 41.067329>,  <33.104904, 44.191010, 41.113220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420071, 44.433010, 41.067329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088244, -0.073456, -0.993387,
		-0.609426, 0.792830, -0.004490,
		0.787917, 0.604999, -0.114729,
		33.656445, 44.614510, 41.032909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871964, 44.463257, 40.569214>,  <33.104904, 44.191010, 41.113220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871964, 44.463257, 40.569214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262981, 44.547279, 40.562576>,  <33.497593, 44.597694, 40.558594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262981, 44.547279, 40.562576>,  <32.871964, 44.463257, 40.569214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262981, 44.547279, 40.562576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035281, -0.240812, -0.969930,
		-0.207736, 0.947568, -0.242816,
		0.977548, 0.210056, -0.016594,
		33.556248, 44.610298, 40.557598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039974, 44.804195, 40.025558>,  <32.871964, 44.463257, 40.569214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039974, 44.804195, 40.025558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390362, 44.632393, 40.113380>,  <33.600594, 44.529312, 40.166073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390362, 44.632393, 40.113380>,  <33.039974, 44.804195, 40.025558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390362, 44.632393, 40.113380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039230, -0.390223, -0.919884,
		0.480774, 0.814401, -0.324972,
		0.875966, -0.429508, 0.219558,
		33.653152, 44.503540, 40.179249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420258, 44.981655, 39.387280>,  <33.039974, 44.804195, 40.025558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420258, 44.981655, 39.387280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594128, 44.682652, 39.588196>,  <33.698448, 44.503250, 39.708744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594128, 44.682652, 39.588196>,  <33.420258, 44.981655, 39.387280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594128, 44.682652, 39.588196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190826, -0.468620, -0.862543,
		0.880138, 0.470776, -0.061054,
		0.434676, -0.747506, 0.502287,
		33.724529, 44.458401, 39.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984406, 44.827732, 38.963833>,  <33.420258, 44.981655, 39.387280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984406, 44.827732, 38.963833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981964, 44.494389, 39.184914>,  <33.980499, 44.294384, 39.317562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981964, 44.494389, 39.184914>,  <33.984406, 44.827732, 38.963833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981964, 44.494389, 39.184914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242407, -0.537461, -0.807697,
		0.970155, 0.129051, 0.205291,
		-0.006102, -0.833355, 0.552704,
		33.980133, 44.244381, 39.350723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454659, 44.428211, 38.593769>,  <33.984406, 44.827732, 38.963833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454659, 44.428211, 38.593769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301628, 44.145069, 38.831284>,  <34.209812, 43.975185, 38.973793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301628, 44.145069, 38.831284>,  <34.454659, 44.428211, 38.593769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301628, 44.145069, 38.831284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148900, -0.681513, -0.716498,
		0.911849, -0.185698, 0.366127,
		-0.382572, -0.707854, 0.593786,
		34.186855, 43.932713, 39.009418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.241398, 41.610744, 31.972025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.962124, 41.860046, 31.831114>,  <43.794559, 42.009628, 31.746567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.962124, 41.860046, 31.831114>,  <44.241398, 41.610744, 31.972025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962124, 41.860046, 31.831114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651424, -0.757162, -0.048511,
		-0.296964, 0.195612, 0.934638,
		-0.698183, 0.623251, -0.352276,
		43.752670, 42.047020, 31.725431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736546, 41.619240, 32.378418>,  <44.241398, 41.610744, 31.972025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736546, 41.619240, 32.378418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569195, 41.718029, 32.028797>,  <43.468784, 41.777302, 31.819025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569195, 41.718029, 32.028797>,  <43.736546, 41.619240, 32.378418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569195, 41.718029, 32.028797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461089, -0.886851, -0.029879,
		-0.782531, 0.390514, 0.484917,
		-0.418380, 0.246971, -0.874050,
		43.443680, 41.792122, 31.766582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163605, 41.171700, 32.360611>,  <43.736546, 41.619240, 32.378418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163605, 41.171700, 32.360611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167103, 41.328426, 31.992609>,  <43.169201, 41.422462, 31.771809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167103, 41.328426, 31.992609>,  <43.163605, 41.171700, 32.360611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167103, 41.328426, 31.992609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280744, -0.882069, -0.378333,
		-0.959743, 0.261595, 0.102283,
		0.008749, 0.391818, -0.920001,
		43.169727, 41.445972, 31.716608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465950, 41.068531, 32.005226>,  <43.163605, 41.171700, 32.360611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465950, 41.068531, 32.005226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758945, 41.075283, 31.732998>,  <42.934742, 41.079334, 31.569660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758945, 41.075283, 31.732998>,  <42.465950, 41.068531, 32.005226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758945, 41.075283, 31.732998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411824, -0.785050, -0.462707,
		-0.542091, 0.619203, -0.568090,
		0.732488, 0.016876, -0.680570,
		42.978691, 41.080345, 31.528828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172089, 40.824764, 31.364174>,  <42.465950, 41.068531, 32.005226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172089, 40.824764, 31.364174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567486, 40.770535, 31.337318>,  <42.804722, 40.737999, 31.321205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567486, 40.770535, 31.337318>,  <42.172089, 40.824764, 31.364174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567486, 40.770535, 31.337318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150320, -0.930212, -0.334827,
		-0.017062, 0.341066, -0.939884,
		0.988490, -0.135570, -0.067140,
		42.864033, 40.729862, 31.317177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159992, 40.213310, 30.950941>,  <42.172089, 40.824764, 31.364174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159992, 40.213310, 30.950941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546524, 40.233051, 31.051952>,  <42.778442, 40.244896, 31.112558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546524, 40.233051, 31.051952>,  <42.159992, 40.213310, 30.950941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546524, 40.233051, 31.051952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071506, -0.994283, -0.079297,
		0.247171, 0.094684, -0.964335,
		0.966330, 0.049356, 0.252529,
		42.836422, 40.247856, 31.127710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674706, 39.957672, 30.457289>,  <42.159992, 40.213310, 30.950941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674706, 39.957672, 30.457289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835114, 39.922855, 30.822060>,  <42.931358, 39.901966, 31.040922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835114, 39.922855, 30.822060>,  <42.674706, 39.957672, 30.457289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835114, 39.922855, 30.822060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164731, -0.972396, -0.165255,
		0.901137, 0.216493, -0.375611,
		0.401019, -0.087042, 0.911925,
		42.955418, 39.896744, 31.095636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961098, 39.404205, 30.379148>,  <42.674706, 39.957672, 30.457289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961098, 39.404205, 30.379148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047436, 39.463165, 30.765244>,  <43.099239, 39.498539, 30.996901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047436, 39.463165, 30.765244>,  <42.961098, 39.404205, 30.379148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047436, 39.463165, 30.765244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093006, -0.987149, 0.129945,
		0.971987, 0.061724, -0.226784,
		0.215849, 0.147397, 0.965237,
		43.112190, 39.507385, 31.054815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546364, 39.065437, 30.481020>,  <42.961098, 39.404205, 30.379148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546364, 39.065437, 30.481020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349979, 39.098827, 30.827890>,  <43.232151, 39.118862, 31.036013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349979, 39.098827, 30.827890>,  <43.546364, 39.065437, 30.481020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349979, 39.098827, 30.827890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025807, -0.996356, 0.081298,
		0.870801, 0.017535, 0.491323,
		-0.490958, 0.083474, 0.867175,
		43.202690, 39.123871, 31.088043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025043, 38.839668, 31.088823>,  <43.546364, 39.065437, 30.481020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025043, 38.839668, 31.088823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637241, 38.794365, 31.175755>,  <43.404560, 38.767185, 31.227913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637241, 38.794365, 31.175755>,  <44.025043, 38.839668, 31.088823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637241, 38.794365, 31.175755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185537, -0.918577, 0.348989,
		0.160106, 0.378669, 0.911579,
		-0.969506, -0.113256, 0.217327,
		43.346390, 38.760387, 31.240953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073109, 38.491390, 31.814594>,  <44.025043, 38.839668, 31.088823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073109, 38.491390, 31.814594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700691, 38.445786, 31.675936>,  <43.477242, 38.418423, 31.592741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700691, 38.445786, 31.675936>,  <44.073109, 38.491390, 31.814594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700691, 38.445786, 31.675936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081920, -0.860391, 0.503008,
		-0.355602, 0.496718, 0.791719,
		-0.931041, -0.114013, -0.346648,
		43.421379, 38.411583, 31.571941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751556, 38.153702, 32.356232>,  <44.073109, 38.491390, 31.814594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751556, 38.153702, 32.356232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479271, 38.114891, 32.065796>,  <43.315899, 38.091606, 31.891533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479271, 38.114891, 32.065796>,  <43.751556, 38.153702, 32.356232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479271, 38.114891, 32.065796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221445, -0.917560, 0.330220,
		-0.698274, 0.385576, 0.603113,
		-0.680717, -0.097028, -0.726092,
		43.275055, 38.085781, 31.847969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235474, 37.835499, 32.678986>,  <43.751556, 38.153702, 32.356232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235474, 37.835499, 32.678986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184162, 37.725990, 32.297703>,  <43.153378, 37.660286, 32.068935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184162, 37.725990, 32.297703>,  <43.235474, 37.835499, 32.678986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184162, 37.725990, 32.297703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080890, -0.955052, 0.285188,
		-0.988434, 0.113686, 0.100364,
		-0.128274, -0.273772, -0.953202,
		43.145679, 37.643860, 32.011742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650002, 37.462597, 32.757980>,  <43.235474, 37.835499, 32.678986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650002, 37.462597, 32.757980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784763, 37.360088, 32.395584>,  <42.865620, 37.298584, 32.178146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784763, 37.360088, 32.395584>,  <42.650002, 37.462597, 32.757980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784763, 37.360088, 32.395584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220572, -0.956950, 0.188662,
		-0.915337, 0.136275, -0.378929,
		0.336906, -0.256271, -0.905991,
		42.885834, 37.283207, 32.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200756, 37.000156, 32.540012>,  <42.650002, 37.462597, 32.757980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200756, 37.000156, 32.540012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.535526, 36.941433, 32.329109>,  <42.736389, 36.906200, 32.202568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.535526, 36.941433, 32.329109>,  <42.200756, 37.000156, 32.540012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535526, 36.941433, 32.329109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109474, -0.988790, 0.101542,
		-0.536252, -0.027262, -0.843618,
		0.836929, -0.146806, -0.527256,
		42.786606, 36.897392, 32.170933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092587, 36.431179, 32.009819>,  <42.200756, 37.000156, 32.540012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092587, 36.431179, 32.009819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486362, 36.444519, 32.078827>,  <42.722630, 36.452522, 32.120232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486362, 36.444519, 32.078827>,  <42.092587, 36.431179, 32.009819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486362, 36.444519, 32.078827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014226, -0.963477, 0.267413,
		0.175132, -0.265707, -0.948013,
		0.984442, 0.033346, 0.172515,
		42.781696, 36.454521, 32.130581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280384, 35.825012, 31.663635>,  <42.092587, 36.431179, 32.009819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280384, 35.825012, 31.663635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554790, 35.923950, 31.937338>,  <42.719433, 35.983311, 32.101559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554790, 35.923950, 31.937338>,  <42.280384, 35.825012, 31.663635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554790, 35.923950, 31.937338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076637, -0.959777, 0.270104,
		0.723541, -0.132856, -0.677376,
		0.686014, 0.247343, 0.684256,
		42.760593, 35.998154, 32.142616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727982, 35.232784, 31.656218>,  <42.280384, 35.825012, 31.663635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727982, 35.232784, 31.656218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795395, 35.411091, 32.007874>,  <42.835842, 35.518074, 32.218868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795395, 35.411091, 32.007874>,  <42.727982, 35.232784, 31.656218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795395, 35.411091, 32.007874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034980, -0.888631, 0.457288,
		0.985075, -0.107820, -0.134169,
		0.168531, 0.445770, 0.879140,
		42.845955, 35.544823, 32.271614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291409, 34.774120, 31.948353>,  <42.727982, 35.232784, 31.656218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291409, 34.774120, 31.948353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110470, 34.974274, 32.243649>,  <43.001907, 35.094368, 32.420826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110470, 34.974274, 32.243649>,  <43.291409, 34.774120, 31.948353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110470, 34.974274, 32.243649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004840, -0.826379, 0.563093,
		0.891829, 0.258286, 0.371388,
		-0.452346, 0.500385, 0.738239,
		42.974766, 35.124390, 32.465122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462017, 34.418835, 32.583473>,  <43.291409, 34.774120, 31.948353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462017, 34.418835, 32.583473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151134, 34.641125, 32.701538>,  <42.964603, 34.774498, 32.772377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151134, 34.641125, 32.701538>,  <43.462017, 34.418835, 32.583473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151134, 34.641125, 32.701538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146993, -0.616438, 0.773561,
		0.611834, 0.557831, 0.560788,
		-0.777208, 0.555723, 0.295161,
		42.917973, 34.807842, 32.790085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588421, 34.699753, 33.329372>,  <43.462017, 34.418835, 32.583473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588421, 34.699753, 33.329372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197052, 34.679981, 33.249123>,  <42.962231, 34.668118, 33.200974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197052, 34.679981, 33.249123>,  <43.588421, 34.699753, 33.329372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197052, 34.679981, 33.249123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115011, -0.676361, 0.727535,
		-0.171656, 0.734910, 0.656081,
		-0.978420, -0.049429, -0.200624,
		42.903526, 34.665154, 33.188934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938038, 34.510052, 33.998253>,  <43.588421, 34.699753, 33.329372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938038, 34.510052, 33.998253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317234, 34.514660, 34.125488>,  <44.544750, 34.517426, 34.201828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317234, 34.514660, 34.125488>,  <43.938038, 34.510052, 33.998253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317234, 34.514660, 34.125488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027146, 0.992777, -0.116860,
		-0.317138, 0.119417, 0.940831,
		0.947991, 0.011521, 0.318089,
		44.601631, 34.518116, 34.220917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999626, 34.962132, 34.574024>,  <43.938038, 34.510052, 33.998253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999626, 34.962132, 34.574024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381443, 34.957100, 34.454895>,  <44.610531, 34.954079, 34.383419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381443, 34.957100, 34.454895>,  <43.999626, 34.962132, 34.574024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381443, 34.957100, 34.454895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040782, 0.995227, 0.088662,
		0.295287, -0.096777, 0.950495,
		0.954538, -0.012582, -0.297824,
		44.667805, 34.953327, 34.365547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357128, 35.461781, 34.929745>,  <43.999626, 34.962132, 34.574024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357128, 35.461781, 34.929745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599895, 35.405449, 34.616871>,  <44.745556, 35.371651, 34.429146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599895, 35.405449, 34.616871>,  <44.357128, 35.461781, 34.929745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599895, 35.405449, 34.616871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210718, 0.977467, -0.012486,
		0.766322, -0.157244, 0.622916,
		0.606917, -0.140828, -0.782189,
		44.781971, 35.363201, 34.382214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923126, 35.811211, 35.078987>,  <44.357128, 35.461781, 34.929745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923126, 35.811211, 35.078987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926533, 35.784542, 34.679893>,  <44.928577, 35.768539, 34.440437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926533, 35.784542, 34.679893>,  <44.923126, 35.811211, 35.078987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926533, 35.784542, 34.679893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387486, 0.920038, -0.058176,
		0.921836, -0.386115, 0.033671,
		0.008516, -0.066676, -0.997738,
		44.929089, 35.764538, 34.380573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485733, 36.198364, 34.850712>,  <44.923126, 35.811211, 35.078987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485733, 36.198364, 34.850712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286690, 36.168072, 34.505074>,  <45.167263, 36.149899, 34.297691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286690, 36.168072, 34.505074>,  <45.485733, 36.198364, 34.850712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286690, 36.168072, 34.505074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344556, 0.896960, -0.277026,
		0.796035, -0.435577, -0.420239,
		-0.497604, -0.075727, -0.864092,
		45.137409, 36.145355, 34.245846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924980, 36.476734, 34.431759>,  <45.485733, 36.198364, 34.850712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924980, 36.476734, 34.431759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571747, 36.533859, 34.252975>,  <45.359806, 36.568134, 34.145706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571747, 36.533859, 34.252975>,  <45.924980, 36.476734, 34.431759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571747, 36.533859, 34.252975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231851, 0.960955, -0.151034,
		0.407940, -0.237004, -0.881711,
		-0.883080, 0.142813, -0.446961,
		45.306824, 36.576702, 34.118889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071060, 36.799004, 33.754166>,  <45.924980, 36.476734, 34.431759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071060, 36.799004, 33.754166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681725, 36.860615, 33.822147>,  <45.448124, 36.897583, 33.862934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681725, 36.860615, 33.822147>,  <46.071060, 36.799004, 33.754166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681725, 36.860615, 33.822147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146505, 0.987621, -0.056046,
		-0.176480, -0.029653, -0.983857,
		-0.973340, 0.154031, 0.169951,
		45.389721, 36.906826, 33.873135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898064, 37.317341, 33.203068>,  <46.071060, 36.799004, 33.754166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898064, 37.317341, 33.203068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617203, 37.334370, 33.487370>,  <45.448685, 37.344589, 33.657951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617203, 37.334370, 33.487370>,  <45.898064, 37.317341, 33.203068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617203, 37.334370, 33.487370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094327, 0.983850, -0.152121,
		-0.705750, -0.173855, -0.686798,
		-0.702154, 0.042576, 0.710751,
		45.406555, 37.347141, 33.700596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402531, 37.714695, 32.905651>,  <45.898064, 37.317341, 33.203068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402531, 37.714695, 32.905651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352539, 37.718353, 33.302498>,  <45.322544, 37.720551, 33.540607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352539, 37.718353, 33.302498>,  <45.402531, 37.714695, 32.905651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352539, 37.718353, 33.302498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142496, 0.989425, -0.027074,
		-0.981873, -0.144756, -0.122354,
		-0.124979, 0.009149, 0.992117,
		45.315044, 37.721096, 33.600132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720329, 38.016876, 33.087425>,  <45.402531, 37.714695, 32.905651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720329, 38.016876, 33.087425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957302, 38.059139, 33.406891>,  <45.099487, 38.084496, 33.598568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957302, 38.059139, 33.406891>,  <44.720329, 38.016876, 33.087425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957302, 38.059139, 33.406891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138125, 0.990004, -0.028511,
		-0.793692, -0.093424, 0.601104,
		0.592431, 0.105656, 0.798662,
		45.135033, 38.090836, 33.646488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332935, 38.491592, 33.399731>,  <44.720329, 38.016876, 33.087425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332935, 38.491592, 33.399731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703495, 38.487640, 33.550301>,  <44.925831, 38.485268, 33.640640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703495, 38.487640, 33.550301>,  <44.332935, 38.491592, 33.399731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703495, 38.487640, 33.550301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037269, 0.992340, 0.117776,
		-0.374701, -0.123136, 0.918932,
		0.926396, -0.009883, 0.376420,
		44.981415, 38.484676, 33.663227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253345, 38.811264, 34.096630>,  <44.332935, 38.491592, 33.399731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253345, 38.811264, 34.096630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636341, 38.845760, 33.986515>,  <44.866138, 38.866459, 33.920444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636341, 38.845760, 33.986515>,  <44.253345, 38.811264, 34.096630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636341, 38.845760, 33.986515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057272, 0.992103, 0.111585,
		0.282740, -0.091075, 0.954863,
		0.957485, 0.086236, -0.275291,
		44.923588, 38.871632, 33.903927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462322, 39.343697, 34.486118>,  <44.253345, 38.811264, 34.096630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462322, 39.343697, 34.486118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772102, 39.359039, 34.233528>,  <44.957970, 39.368244, 34.081974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772102, 39.359039, 34.233528>,  <44.462322, 39.343697, 34.486118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772102, 39.359039, 34.233528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039389, 0.999147, 0.012382,
		0.631409, 0.015284, 0.775300,
		0.774449, 0.038357, -0.631472,
		45.004436, 39.370544, 34.044086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007454, 39.833790, 34.745316>,  <44.462322, 39.343697, 34.486118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007454, 39.833790, 34.745316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066471, 39.809341, 34.350449>,  <45.101883, 39.794674, 34.113529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066471, 39.809341, 34.350449>,  <45.007454, 39.833790, 34.745316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066471, 39.809341, 34.350449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076900, 0.994359, -0.073057,
		0.986061, 0.086692, 0.142013,
		0.147546, -0.061117, -0.987165,
		45.110733, 39.791008, 34.054298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344299, 40.377594, 34.632721>,  <45.007454, 39.833790, 34.745316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344299, 40.377594, 34.632721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212273, 40.289284, 34.265610>,  <45.133057, 40.236298, 34.045341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212273, 40.289284, 34.265610>,  <45.344299, 40.377594, 34.632721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212273, 40.289284, 34.265610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091574, 0.975168, -0.201645,
		0.939505, 0.017487, -0.342090,
		-0.330069, -0.220773, -0.917776,
		45.113251, 40.223053, 33.990276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687489, 40.786583, 34.195671>,  <45.344299, 40.377594, 34.632721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687489, 40.786583, 34.195671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389225, 40.681290, 33.950821>,  <45.210266, 40.618114, 33.803909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389225, 40.681290, 33.950821>,  <45.687489, 40.786583, 34.195671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389225, 40.681290, 33.950821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135124, 0.959306, -0.247937,
		0.652485, -0.102163, -0.750884,
		-0.745658, -0.263237, -0.612128,
		45.165527, 40.602318, 33.767181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848083, 40.997337, 33.410828>,  <45.687489, 40.786583, 34.195671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848083, 40.997337, 33.410828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453766, 40.971809, 33.472969>,  <45.217175, 40.956493, 33.510254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453766, 40.971809, 33.472969>,  <45.848083, 40.997337, 33.410828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453766, 40.971809, 33.472969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103861, 0.958571, -0.265243,
		-0.131993, -0.277611, -0.951583,
		-0.985794, -0.063822, 0.155358,
		45.158028, 40.952663, 33.519577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611923, 41.332104, 32.896252>,  <45.848083, 40.997337, 33.410828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611923, 41.332104, 32.896252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290573, 41.334908, 33.134426>,  <45.097763, 41.336590, 33.277332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290573, 41.334908, 33.134426>,  <45.611923, 41.332104, 32.896252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290573, 41.334908, 33.134426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221749, 0.924490, -0.310075,
		-0.552651, -0.381143, -0.741153,
		-0.803371, 0.007013, 0.595438,
		45.049561, 41.337013, 33.313057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016392, 41.563591, 32.541836>,  <45.611923, 41.332104, 32.896252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016392, 41.563591, 32.541836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910034, 41.627560, 32.922092>,  <44.846218, 41.665939, 33.150246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910034, 41.627560, 32.922092>,  <45.016392, 41.563591, 32.541836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910034, 41.627560, 32.922092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163301, 0.964419, -0.207914,
		-0.950070, -0.210524, -0.230318,
		-0.265894, 0.159921, 0.950645,
		44.830265, 41.675537, 33.207287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359921, 41.996777, 32.572170>,  <45.016392, 41.563591, 32.541836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359921, 41.996777, 32.572170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522240, 42.057480, 32.932682>,  <44.619633, 42.093903, 33.148987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522240, 42.057480, 32.932682>,  <44.359921, 41.996777, 32.572170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522240, 42.057480, 32.932682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146265, 0.984192, -0.099868,
		-0.902183, -0.091299, 0.421581,
		0.405798, 0.151762, 0.901275,
		44.643978, 42.103008, 33.203064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997780, 42.556278, 32.865978>,  <44.359921, 41.996777, 32.572170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997780, 42.556278, 32.865978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312450, 42.549915, 33.112843>,  <44.501251, 42.546097, 33.260963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312450, 42.549915, 33.112843>,  <43.997780, 42.556278, 32.865978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312450, 42.549915, 33.112843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036300, 0.999130, -0.020519,
		-0.616302, 0.038545, 0.786566,
		0.786673, -0.015907, 0.617165,
		44.548450, 42.545143, 33.297993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.283642, 41.088333, 35.609520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935661, 41.045742, 35.802120>,  <38.726871, 41.020187, 35.917679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935661, 41.045742, 35.802120>,  <39.283642, 41.088333, 35.609520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935661, 41.045742, 35.802120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000649, -0.976161, -0.217044,
		0.493135, -0.189131, 0.849145,
		-0.869953, -0.106481, 0.481502,
		38.674675, 41.013798, 35.946571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333950, 40.390438, 35.959057>,  <39.283642, 41.088333, 35.609520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333950, 40.390438, 35.959057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945286, 40.481728, 35.934460>,  <38.712086, 40.536503, 35.919701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945286, 40.481728, 35.934460>,  <39.333950, 40.390438, 35.959057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945286, 40.481728, 35.934460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201988, -0.936873, -0.285428,
		-0.122755, -0.264919, 0.956425,
		-0.971665, 0.228225, -0.061496,
		38.653786, 40.550194, 35.916012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960930, 39.929619, 36.491776>,  <39.333950, 40.390438, 35.959057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960930, 39.929619, 36.491776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696789, 40.041458, 36.212990>,  <38.538303, 40.108562, 36.045719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696789, 40.041458, 36.212990>,  <38.960930, 39.929619, 36.491776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696789, 40.041458, 36.212990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294971, -0.950083, -0.101660,
		-0.690598, 0.138453, 0.709862,
		-0.660353, 0.279595, -0.696965,
		38.498684, 40.125336, 36.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338909, 39.705879, 36.675335>,  <38.960930, 39.929619, 36.491776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338909, 39.705879, 36.675335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357769, 39.751759, 36.278423>,  <38.369083, 39.779285, 36.040276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357769, 39.751759, 36.278423>,  <38.338909, 39.705879, 36.675335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357769, 39.751759, 36.278423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257613, -0.958385, -0.123021,
		-0.965097, 0.261425, -0.015640,
		0.047150, 0.114698, -0.992281,
		38.371914, 39.786167, 35.980740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734509, 39.312832, 36.464615>,  <38.338909, 39.705879, 36.675335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734509, 39.312832, 36.464615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937046, 39.359783, 36.122894>,  <38.058567, 39.387955, 35.917862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937046, 39.359783, 36.122894>,  <37.734509, 39.312832, 36.464615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937046, 39.359783, 36.122894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344865, -0.880453, -0.325377,
		-0.790369, 0.459373, -0.405332,
		0.506345, 0.117382, -0.854304,
		38.088951, 39.394997, 35.866604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225063, 39.156483, 35.877048>,  <37.734509, 39.312832, 36.464615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225063, 39.156483, 35.877048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600906, 39.122063, 35.744545>,  <37.826412, 39.101410, 35.665043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600906, 39.122063, 35.744545>,  <37.225063, 39.156483, 35.877048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600906, 39.122063, 35.744545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243503, -0.848209, -0.470369,
		-0.240499, 0.522625, -0.817939,
		0.939610, -0.086048, -0.331254,
		37.882790, 39.096249, 35.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132339, 38.977055, 35.191105>,  <37.225063, 39.156483, 35.877048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132339, 38.977055, 35.191105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499191, 38.842926, 35.277290>,  <37.719303, 38.762447, 35.329002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499191, 38.842926, 35.277290>,  <37.132339, 38.977055, 35.191105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499191, 38.842926, 35.277290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126317, -0.757236, -0.640810,
		0.378036, 0.560492, -0.736843,
		0.917133, -0.335325, 0.215463,
		37.774330, 38.742329, 35.341930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336010, 38.662350, 34.582157>,  <37.132339, 38.977055, 35.191105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336010, 38.662350, 34.582157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645405, 38.548199, 34.808533>,  <37.831039, 38.479710, 34.944359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645405, 38.548199, 34.808533>,  <37.336010, 38.662350, 34.582157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645405, 38.548199, 34.808533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108812, -0.819858, -0.562133,
		0.624404, 0.496382, -0.603096,
		0.773485, -0.285374, 0.565935,
		37.877449, 38.462585, 34.978313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921356, 38.508583, 34.138248>,  <37.336010, 38.662350, 34.582157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921356, 38.508583, 34.138248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960533, 38.318462, 34.487991>,  <37.984039, 38.204391, 34.697838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960533, 38.318462, 34.487991>,  <37.921356, 38.508583, 34.138248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960533, 38.318462, 34.487991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351177, -0.805554, -0.477239,
		0.931173, 0.353793, 0.088020,
		0.097939, -0.475303, 0.874354,
		37.989914, 38.175873, 34.750298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569672, 38.192318, 34.139351>,  <37.921356, 38.508583, 34.138248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569672, 38.192318, 34.139351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360237, 37.984222, 34.409225>,  <38.234577, 37.859364, 34.571152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360237, 37.984222, 34.409225>,  <38.569672, 38.192318, 34.139351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360237, 37.984222, 34.409225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188907, -0.843093, -0.503497,
		0.830764, -0.136172, 0.539711,
		-0.523589, -0.520242, 0.674687,
		38.203159, 37.828148, 34.611633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862675, 37.448997, 34.213371>,  <38.569672, 38.192318, 34.139351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862675, 37.448997, 34.213371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491726, 37.430325, 34.361862>,  <38.269157, 37.419121, 34.450954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491726, 37.430325, 34.361862>,  <38.862675, 37.448997, 34.213371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491726, 37.430325, 34.361862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169612, -0.831929, -0.528323,
		0.333492, -0.552915, 0.763589,
		-0.927370, -0.046678, 0.371223,
		38.213516, 37.416321, 34.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768669, 36.763466, 34.401138>,  <38.862675, 37.448997, 34.213371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768669, 36.763466, 34.401138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399017, 36.903782, 34.340569>,  <38.177227, 36.987972, 34.304226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399017, 36.903782, 34.340569>,  <38.768669, 36.763466, 34.401138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399017, 36.903782, 34.340569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226809, -0.822601, -0.521425,
		-0.307472, -0.447521, 0.839753,
		-0.924131, 0.350788, -0.151425,
		38.121777, 37.009018, 34.295139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450207, 36.490124, 34.348732>,  <38.768669, 36.763466, 34.401138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450207, 36.490124, 34.348732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664848, 36.270687, 34.605202>,  <39.793633, 36.139027, 34.759083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664848, 36.270687, 34.605202>,  <39.450207, 36.490124, 34.348732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664848, 36.270687, 34.605202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138117, 0.806689, 0.574610,
		-0.832452, -0.219782, 0.508644,
		0.536607, -0.548588, 0.641174,
		39.825829, 36.106110, 34.797554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078983, 35.816856, 34.409100>,  <39.450207, 36.490124, 34.348732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078983, 35.816856, 34.409100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078442, 35.863838, 34.806332>,  <39.078117, 35.892025, 35.044670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078442, 35.863838, 34.806332>,  <39.078983, 35.816856, 34.409100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078442, 35.863838, 34.806332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940932, -0.336400, 0.038505,
		0.338594, -0.934366, 0.110967,
		-0.001352, 0.117450, 0.993078,
		39.078037, 35.899075, 35.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878704, 35.229172, 34.941448>,  <39.078983, 35.816856, 34.409100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878704, 35.229172, 34.941448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956738, 34.851833, 35.048805>,  <39.003559, 34.625431, 35.113220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956738, 34.851833, 35.048805>,  <38.878704, 35.229172, 34.941448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956738, 34.851833, 35.048805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691670, 0.061685, 0.719574,
		-0.695366, -0.326016, -0.640453,
		0.195086, -0.943350, 0.268389,
		39.015263, 34.568829, 35.129322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286430, 34.910809, 34.998699>,  <38.878704, 35.229172, 34.941448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286430, 34.910809, 34.998699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520233, 34.672276, 35.218784>,  <38.660515, 34.529156, 35.350834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520233, 34.672276, 35.218784>,  <38.286430, 34.910809, 34.998699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520233, 34.672276, 35.218784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723208, -0.075468, 0.686495,
		-0.367857, -0.799181, -0.475386,
		0.584510, -0.596334, 0.550212,
		38.695587, 34.493374, 35.383846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810181, 34.433205, 35.303535>,  <38.286430, 34.910809, 34.998699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810181, 34.433205, 35.303535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135128, 34.420013, 35.536423>,  <38.330097, 34.412098, 35.676155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135128, 34.420013, 35.536423>,  <37.810181, 34.433205, 35.303535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135128, 34.420013, 35.536423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579402, -0.158633, 0.799455,
		0.065998, -0.986787, -0.147972,
		0.812365, -0.032973, 0.582216,
		38.378838, 34.410122, 35.711086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743809, 33.938076, 35.888138>,  <37.810181, 34.433205, 35.303535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743809, 33.938076, 35.888138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047821, 34.151142, 36.037067>,  <38.230228, 34.278980, 36.126423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047821, 34.151142, 36.037067>,  <37.743809, 33.938076, 35.888138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047821, 34.151142, 36.037067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490189, 0.093718, 0.866563,
		0.426692, -0.841123, 0.332335,
		0.760032, 0.532663, 0.372321,
		38.275829, 34.310940, 36.148766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790340, 33.668594, 36.457027>,  <37.743809, 33.938076, 35.888138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790340, 33.668594, 36.457027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981667, 34.015694, 36.511044>,  <38.096462, 34.223953, 36.543453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981667, 34.015694, 36.511044>,  <37.790340, 33.668594, 36.457027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981667, 34.015694, 36.511044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262013, -0.005760, 0.965047,
		0.838193, -0.496976, 0.224605,
		0.478312, 0.867745, 0.135042,
		38.125160, 34.276016, 36.551556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187454, 33.518162, 37.084732>,  <37.790340, 33.668594, 36.457027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187454, 33.518162, 37.084732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174629, 33.916073, 37.045967>,  <38.166935, 34.154819, 37.022709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174629, 33.916073, 37.045967>,  <38.187454, 33.518162, 37.084732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174629, 33.916073, 37.045967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274100, 0.084494, 0.957982,
		0.961167, 0.057281, 0.269959,
		-0.032064, 0.994776, -0.096913,
		38.165009, 34.214504, 37.016891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471600, 33.813358, 37.761978>,  <38.187454, 33.518162, 37.084732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471600, 33.813358, 37.761978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279648, 34.127796, 37.606144>,  <38.164478, 34.316460, 37.512642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279648, 34.127796, 37.606144>,  <38.471600, 33.813358, 37.761978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279648, 34.127796, 37.606144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240818, 0.308981, 0.920075,
		0.843638, 0.535343, 0.041032,
		-0.479877, 0.786091, -0.389588,
		38.135685, 34.363625, 37.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747898, 34.494740, 38.054623>,  <38.471600, 33.813358, 37.761978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747898, 34.494740, 38.054623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374214, 34.566460, 37.931267>,  <38.150005, 34.609493, 37.857254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374214, 34.566460, 37.931267>,  <38.747898, 34.494740, 38.054623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374214, 34.566460, 37.931267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186884, 0.490384, 0.851233,
		0.303857, 0.852863, -0.424612,
		-0.934208, 0.179300, -0.308393,
		38.093952, 34.620251, 37.838749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666153, 35.199356, 38.243580>,  <38.747898, 34.494740, 38.054623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666153, 35.199356, 38.243580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296574, 35.057152, 38.187107>,  <38.074825, 34.971828, 38.153225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296574, 35.057152, 38.187107>,  <38.666153, 35.199356, 38.243580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296574, 35.057152, 38.187107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312555, 0.488891, 0.814429,
		-0.220513, 0.796618, -0.562826,
		-0.923950, -0.355506, -0.141181,
		38.019390, 34.950500, 38.144753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258087, 35.785820, 38.287792>,  <38.666153, 35.199356, 38.243580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258087, 35.785820, 38.287792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978397, 35.507610, 38.353920>,  <37.810585, 35.340683, 38.393597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978397, 35.507610, 38.353920>,  <38.258087, 35.785820, 38.287792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978397, 35.507610, 38.353920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427153, 0.591895, 0.683521,
		-0.573259, 0.407316, -0.710963,
		-0.699224, -0.695524, 0.165322,
		37.768631, 35.298954, 38.403515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730122, 36.229382, 38.377769>,  <38.258087, 35.785820, 38.287792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730122, 36.229382, 38.377769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607807, 35.885746, 38.541943>,  <37.534416, 35.679565, 38.640446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607807, 35.885746, 38.541943>,  <37.730122, 36.229382, 38.377769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607807, 35.885746, 38.541943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442807, 0.509949, 0.737478,
		-0.842861, 0.043770, -0.536349,
		-0.305790, -0.859090, 0.410435,
		37.516071, 35.628017, 38.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104919, 36.351582, 38.551823>,  <37.730122, 36.229382, 38.377769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104919, 36.351582, 38.551823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219597, 36.036327, 38.769684>,  <37.288403, 35.847176, 38.900402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219597, 36.036327, 38.769684>,  <37.104919, 36.351582, 38.551823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219597, 36.036327, 38.769684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450079, 0.391068, 0.802804,
		-0.845716, -0.475297, -0.242606,
		0.286695, -0.788136, 0.544653,
		37.305607, 35.799885, 38.933079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513504, 36.099689, 38.877037>,  <37.104919, 36.351582, 38.551823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513504, 36.099689, 38.877037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828953, 36.004986, 39.104023>,  <37.018223, 35.948162, 39.240215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828953, 36.004986, 39.104023>,  <36.513504, 36.099689, 38.877037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828953, 36.004986, 39.104023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406797, 0.491146, 0.770254,
		-0.461076, -0.838284, 0.291014,
		0.788622, -0.236762, 0.567468,
		37.065540, 35.933956, 39.274261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203121, 36.126049, 39.550682>,  <36.513504, 36.099689, 38.877037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203121, 36.126049, 39.550682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597008, 36.145195, 39.617668>,  <36.833340, 36.156681, 39.657860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597008, 36.145195, 39.617668>,  <36.203121, 36.126049, 39.550682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597008, 36.145195, 39.617668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165324, 0.559366, 0.812267,
		-0.054793, -0.827538, 0.558730,
		0.984716, 0.047865, 0.167461,
		36.892422, 36.159554, 39.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152485, 35.444000, 39.760441>,  <36.203121, 36.126049, 39.550682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152485, 35.444000, 39.760441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803062, 35.318024, 39.908878>,  <35.593410, 35.242439, 39.997940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803062, 35.318024, 39.908878>,  <36.152485, 35.444000, 39.760441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803062, 35.318024, 39.908878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127395, -0.587913, -0.798829,
		0.469754, -0.745099, 0.473454,
		-0.873557, -0.314938, 0.371097,
		35.540997, 35.223541, 40.020206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173553, 34.723362, 39.663876>,  <36.152485, 35.444000, 39.760441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173553, 34.723362, 39.663876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795769, 34.850769, 39.696201>,  <35.569096, 34.927212, 39.715595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795769, 34.850769, 39.696201>,  <36.173553, 34.723362, 39.663876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795769, 34.850769, 39.696201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224707, -0.446550, -0.866083,
		-0.239775, -0.836145, 0.493324,
		-0.944465, 0.318518, 0.080816,
		35.512428, 34.946323, 39.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811443, 34.099854, 39.438580>,  <36.173553, 34.723362, 39.663876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811443, 34.099854, 39.438580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549480, 34.401924, 39.427265>,  <35.392303, 34.583168, 39.420479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549480, 34.401924, 39.427265>,  <35.811443, 34.099854, 39.438580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549480, 34.401924, 39.427265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432142, -0.404938, -0.805778,
		-0.619961, -0.515486, 0.591542,
		-0.654905, 0.755182, -0.028283,
		35.353008, 34.628479, 39.418781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124290, 33.775421, 39.264957>,  <35.811443, 34.099854, 39.438580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124290, 33.775421, 39.264957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069611, 34.156723, 39.157173>,  <35.036804, 34.385506, 39.092503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069611, 34.156723, 39.157173>,  <35.124290, 33.775421, 39.264957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069611, 34.156723, 39.157173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270922, -0.297624, -0.915435,
		-0.952845, -0.052136, 0.298944,
		-0.136700, 0.953258, -0.269464,
		35.028599, 34.442699, 39.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492134, 33.888538, 38.788353>,  <35.124290, 33.775421, 39.264957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492134, 33.888538, 38.788353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719608, 34.210194, 38.719120>,  <34.856094, 34.403187, 38.677582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719608, 34.210194, 38.719120>,  <34.492134, 33.888538, 38.788353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719608, 34.210194, 38.719120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212315, -0.059788, -0.975371,
		-0.794681, 0.591428, 0.136730,
		0.568687, 0.804138, -0.173082,
		34.890213, 34.451435, 38.667194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983650, 34.377903, 38.420456>,  <34.492134, 33.888538, 38.788353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983650, 34.377903, 38.420456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348850, 34.515114, 38.332127>,  <34.567970, 34.597443, 38.279129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348850, 34.515114, 38.332127>,  <33.983650, 34.377903, 38.420456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348850, 34.515114, 38.332127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265971, 0.090073, -0.959764,
		-0.309339, 0.934995, 0.173473,
		0.913000, 0.343032, -0.220819,
		34.622749, 34.618023, 38.265881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890869, 35.073795, 38.042725>,  <33.983650, 34.377903, 38.420456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890869, 35.073795, 38.042725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248150, 34.915989, 37.956421>,  <34.462517, 34.821304, 37.904640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248150, 34.915989, 37.956421>,  <33.890869, 35.073795, 38.042725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248150, 34.915989, 37.956421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166013, 0.156607, -0.973609,
		0.417890, 0.905447, 0.074387,
		0.893201, -0.394512, -0.215760,
		34.516109, 34.797634, 37.891693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227360, 35.490860, 37.558071>,  <33.890869, 35.073795, 38.042725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227360, 35.490860, 37.558071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438770, 35.156361, 37.499622>,  <34.565617, 34.955662, 37.464554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438770, 35.156361, 37.499622>,  <34.227360, 35.490860, 37.558071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438770, 35.156361, 37.499622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072750, 0.216107, -0.973656,
		0.845794, 0.503972, 0.175055,
		0.528525, -0.836248, -0.146118,
		34.597328, 34.905487, 37.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799038, 35.737675, 37.085213>,  <34.227360, 35.490860, 37.558071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799038, 35.737675, 37.085213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827473, 35.339928, 37.053753>,  <34.844532, 35.101280, 37.034878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827473, 35.339928, 37.053753>,  <34.799038, 35.737675, 37.085213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827473, 35.339928, 37.053753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177314, 0.090189, -0.980013,
		0.981584, 0.055718, 0.182726,
		0.071084, -0.994365, -0.078649,
		34.848797, 35.041618, 37.030159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316109, 35.639984, 36.629574>,  <34.799038, 35.737675, 37.085213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316109, 35.639984, 36.629574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105198, 35.300560, 36.612061>,  <34.978649, 35.096905, 36.601555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105198, 35.300560, 36.612061>,  <35.316109, 35.639984, 36.629574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105198, 35.300560, 36.612061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218641, -0.085709, -0.972034,
		0.821079, -0.522107, 0.230723,
		-0.527281, -0.848562, -0.043780,
		34.947014, 35.045990, 36.598927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596836, 35.239792, 36.137493>,  <35.316109, 35.639984, 36.629574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596836, 35.239792, 36.137493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247440, 35.046013, 36.156773>,  <35.037804, 34.929745, 36.168343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247440, 35.046013, 36.156773>,  <35.596836, 35.239792, 36.137493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247440, 35.046013, 36.156773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020369, -0.135290, -0.990597,
		0.486410, -0.864298, 0.128042,
		-0.873493, -0.484444, 0.048201,
		34.985394, 34.900681, 36.171234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656490, 34.561470, 35.906948>,  <35.596836, 35.239792, 36.137493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656490, 34.561470, 35.906948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275059, 34.676113, 35.869957>,  <35.046200, 34.744900, 35.847763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275059, 34.676113, 35.869957>,  <35.656490, 34.561470, 35.906948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275059, 34.676113, 35.869957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013916, -0.264807, -0.964201,
		-0.300836, -0.920724, 0.248525,
		-0.953574, 0.286608, -0.092476,
		34.988987, 34.762093, 35.842213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.235546, 37.349380, 43.213459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866280, 37.443047, 43.091522>,  <35.644718, 37.499249, 43.018360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866280, 37.443047, 43.091522>,  <36.235546, 37.349380, 43.213459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866280, 37.443047, 43.091522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186265, -0.966216, -0.178133,
		-0.336257, -0.107665, 0.935596,
		-0.923167, 0.234167, -0.304843,
		35.589329, 37.513298, 43.000069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947639, 36.749763, 43.436172>,  <36.235546, 37.349380, 43.213459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947639, 36.749763, 43.436172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719879, 36.930313, 43.161354>,  <35.583221, 37.038643, 42.996464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719879, 36.930313, 43.161354>,  <35.947639, 36.749763, 43.436172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719879, 36.930313, 43.161354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140716, -0.876950, -0.459519,
		-0.809924, -0.164974, 0.562856,
		-0.569405, 0.451378, -0.687049,
		35.549057, 37.065727, 42.955238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463840, 36.235630, 43.247540>,  <35.947639, 36.749763, 43.436172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463840, 36.235630, 43.247540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417648, 36.491898, 42.943905>,  <35.389935, 36.645657, 42.761723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417648, 36.491898, 42.943905>,  <35.463840, 36.235630, 43.247540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417648, 36.491898, 42.943905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256460, -0.757519, -0.600328,
		-0.959632, 0.125352, 0.251780,
		-0.115476, 0.640665, -0.759087,
		35.383007, 36.684097, 42.716179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818256, 36.133438, 42.902630>,  <35.463840, 36.235630, 43.247540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818256, 36.133438, 42.902630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025215, 36.327068, 42.620361>,  <35.149391, 36.443249, 42.451000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025215, 36.327068, 42.620361>,  <34.818256, 36.133438, 42.902630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025215, 36.327068, 42.620361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255210, -0.699810, -0.667183,
		-0.816802, 0.525294, -0.238540,
		0.517400, 0.484079, -0.705667,
		35.180435, 36.472290, 42.408661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439243, 35.947422, 42.288620>,  <34.818256, 36.133438, 42.902630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439243, 35.947422, 42.288620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785862, 36.080044, 42.139404>,  <34.993835, 36.159618, 42.049873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785862, 36.080044, 42.139404>,  <34.439243, 35.947422, 42.288620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785862, 36.080044, 42.139404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114807, -0.594973, -0.795504,
		-0.485704, 0.732172, -0.477510,
		0.866551, 0.331558, -0.373039,
		35.045826, 36.179512, 42.027493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287746, 36.158913, 41.606007>,  <34.439243, 35.947422, 42.288620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287746, 36.158913, 41.606007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683620, 36.103516, 41.591354>,  <34.921146, 36.070278, 41.582561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683620, 36.103516, 41.591354>,  <34.287746, 36.158913, 41.606007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683620, 36.103516, 41.591354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112430, -0.592423, -0.797744,
		0.088777, 0.793635, -0.601883,
		0.989686, -0.138491, -0.036634,
		34.980526, 36.061970, 41.580364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462639, 36.344452, 40.976013>,  <34.287746, 36.158913, 41.606007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462639, 36.344452, 40.976013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768303, 36.105083, 41.072308>,  <34.951702, 35.961464, 41.130085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768303, 36.105083, 41.072308>,  <34.462639, 36.344452, 40.976013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768303, 36.105083, 41.072308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096478, -0.475063, -0.874647,
		0.637772, 0.645143, -0.420758,
		0.764159, -0.598419, 0.240739,
		34.997551, 35.925556, 41.144531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996166, 36.504700, 40.452709>,  <34.462639, 36.344452, 40.976013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996166, 36.504700, 40.452709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078411, 36.142696, 40.601669>,  <35.127758, 35.925495, 40.691048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078411, 36.142696, 40.601669>,  <34.996166, 36.504700, 40.452709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078411, 36.142696, 40.601669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036822, -0.387418, -0.921168,
		0.977941, 0.175688, -0.112981,
		0.205609, -0.905009, 0.372403,
		35.140095, 35.871193, 40.713390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625763, 36.307983, 40.106495>,  <34.996166, 36.504700, 40.452709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625763, 36.307983, 40.106495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405228, 35.994362, 40.220535>,  <35.272907, 35.806187, 40.288960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405228, 35.994362, 40.220535>,  <35.625763, 36.307983, 40.106495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405228, 35.994362, 40.220535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004720, -0.344656, -0.938717,
		0.834270, -0.516203, 0.193723,
		-0.551336, -0.784058, 0.285100,
		35.239826, 35.759144, 40.306065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232822, 35.995495, 40.307278>,  <35.625763, 36.307983, 40.106495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232822, 35.995495, 40.307278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596802, 36.138706, 40.223557>,  <36.815189, 36.224632, 40.173325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596802, 36.138706, 40.223557>,  <36.232822, 35.995495, 40.307278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596802, 36.138706, 40.223557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119355, 0.709424, 0.694602,
		0.397173, -0.607071, 0.688272,
		0.909949, 0.358026, -0.209306,
		36.869785, 36.246113, 40.160763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636993, 36.064419, 40.881382>,  <36.232822, 35.995495, 40.307278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636993, 36.064419, 40.881382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793739, 36.327724, 40.624283>,  <36.887787, 36.485710, 40.470024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793739, 36.327724, 40.624283>,  <36.636993, 36.064419, 40.881382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793739, 36.327724, 40.624283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060649, 0.715587, 0.695886,
		0.918021, -0.233712, 0.320338,
		0.391867, 0.658266, -0.642749,
		36.911301, 36.525204, 40.431458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140907, 36.441681, 41.275871>,  <36.636993, 36.064419, 40.881382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140907, 36.441681, 41.275871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091297, 36.696339, 40.971424>,  <37.061531, 36.849133, 40.788757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091297, 36.696339, 40.971424>,  <37.140907, 36.441681, 41.275871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091297, 36.696339, 40.971424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033879, 0.769310, 0.637977,
		0.991700, 0.053342, -0.116987,
		-0.124030, 0.636645, -0.761117,
		37.054089, 36.887333, 40.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610847, 36.997025, 41.465584>,  <37.140907, 36.441681, 41.275871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610847, 36.997025, 41.465584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367672, 37.127563, 41.176060>,  <37.221767, 37.205887, 41.002346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367672, 37.127563, 41.176060>,  <37.610847, 36.997025, 41.465584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367672, 37.127563, 41.176060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175810, 0.944324, 0.278105,
		0.774271, 0.041819, -0.631471,
		-0.607943, 0.326348, -0.723811,
		37.185287, 37.225468, 40.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974201, 37.425220, 41.078838>,  <37.610847, 36.997025, 41.465584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974201, 37.425220, 41.078838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588051, 37.524925, 41.048061>,  <37.356361, 37.584747, 41.029594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588051, 37.524925, 41.048061>,  <37.974201, 37.425220, 41.078838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588051, 37.524925, 41.048061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227903, 0.949390, 0.216146,
		0.126921, 0.191128, -0.973325,
		-0.965376, 0.249258, -0.076939,
		37.298439, 37.599701, 41.024979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098209, 38.149677, 40.902256>,  <37.974201, 37.425220, 41.078838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098209, 38.149677, 40.902256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720356, 38.082176, 41.014812>,  <37.493645, 38.041676, 41.082348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720356, 38.082176, 41.014812>,  <38.098209, 38.149677, 40.902256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720356, 38.082176, 41.014812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003796, 0.863163, 0.504911,
		-0.328097, 0.475890, -0.816016,
		-0.944636, -0.168757, 0.281394,
		37.436966, 38.031548, 41.099232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843716, 38.826832, 40.833141>,  <38.098209, 38.149677, 40.902256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843716, 38.826832, 40.833141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588013, 38.647861, 41.083313>,  <37.434593, 38.540478, 41.233418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588013, 38.647861, 41.083313>,  <37.843716, 38.826832, 40.833141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588013, 38.647861, 41.083313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096619, 0.760129, 0.642548,
		-0.762902, 0.471179, -0.442685,
		-0.639253, -0.447430, 0.625429,
		37.396236, 38.513634, 41.270943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559673, 39.315216, 41.131786>,  <37.843716, 38.826832, 40.833141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559673, 39.315216, 41.131786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468456, 39.028702, 41.395584>,  <37.413727, 38.856792, 41.553864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468456, 39.028702, 41.395584>,  <37.559673, 39.315216, 41.131786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468456, 39.028702, 41.395584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114474, 0.652917, 0.748729,
		-0.966899, 0.246235, -0.066896,
		-0.228041, -0.716287, 0.659492,
		37.400043, 38.813816, 41.593433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006866, 39.651897, 41.633770>,  <37.559673, 39.315216, 41.131786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006866, 39.651897, 41.633770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118984, 39.340168, 41.857944>,  <37.186256, 39.153130, 41.992451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118984, 39.340168, 41.857944>,  <37.006866, 39.651897, 41.633770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118984, 39.340168, 41.857944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136659, 0.610293, 0.780299,
		-0.950135, -0.142127, 0.277565,
		0.280297, -0.779322, 0.560438,
		37.203075, 39.106373, 42.026077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643581, 39.683678, 42.203861>,  <37.006866, 39.651897, 41.633770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643581, 39.683678, 42.203861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963619, 39.464840, 42.302273>,  <37.155643, 39.333538, 42.361320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963619, 39.464840, 42.302273>,  <36.643581, 39.683678, 42.203861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963619, 39.464840, 42.302273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210792, 0.640399, 0.738550,
		-0.561617, -0.539049, 0.627704,
		0.800096, -0.547097, 0.246032,
		37.203648, 39.300713, 42.376083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603271, 39.720604, 42.868771>,  <36.643581, 39.683678, 42.203861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603271, 39.720604, 42.868771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974045, 39.592587, 42.790424>,  <37.196510, 39.515778, 42.743416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974045, 39.592587, 42.790424>,  <36.603271, 39.720604, 42.868771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974045, 39.592587, 42.790424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352746, 0.565340, 0.745628,
		-0.127900, -0.760240, 0.636927,
		0.926937, -0.320039, -0.195865,
		37.252125, 39.496574, 42.731667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929359, 39.477806, 43.526859>,  <36.603271, 39.720604, 42.868771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929359, 39.477806, 43.526859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240547, 39.550869, 43.286392>,  <37.427261, 39.594707, 43.142113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240547, 39.550869, 43.286392>,  <36.929359, 39.477806, 43.526859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240547, 39.550869, 43.286392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378556, 0.627377, 0.680510,
		0.501456, -0.756991, 0.418935,
		0.777970, 0.182655, -0.601165,
		37.473938, 39.605667, 43.106041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580635, 39.425137, 43.945312>,  <36.929359, 39.477806, 43.526859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580635, 39.425137, 43.945312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.661404, 39.665417, 43.635891>,  <37.709866, 39.809586, 43.450237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.661404, 39.665417, 43.635891>,  <37.580635, 39.425137, 43.945312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661404, 39.665417, 43.635891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385534, 0.677304, 0.626597,
		0.900328, -0.424756, -0.094826,
		0.201925, 0.600701, -0.773553,
		37.721981, 39.845627, 43.403824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300423, 39.676533, 44.063625>,  <37.580635, 39.425137, 43.945312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300423, 39.676533, 44.063625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142685, 39.951145, 43.819275>,  <38.048042, 40.115913, 43.672665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142685, 39.951145, 43.819275>,  <38.300423, 39.676533, 44.063625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142685, 39.951145, 43.819275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268331, 0.721795, 0.637974,
		0.878916, 0.087664, -0.468852,
		-0.394342, 0.686533, -0.610874,
		38.024384, 40.157104, 43.636013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.742147, 43.319851, 40.916035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081085, 43.127342, 41.005825>,  <31.284449, 43.011837, 41.059700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081085, 43.127342, 41.005825>,  <30.742147, 43.319851, 40.916035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081085, 43.127342, 41.005825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092133, -0.283060, -0.954667,
		0.522991, 0.829613, -0.195508,
		0.847344, -0.481269, 0.224472,
		31.335289, 42.982960, 41.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208458, 43.374413, 40.327900>,  <30.742147, 43.319851, 40.916035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208458, 43.374413, 40.327900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.370111, 43.077541, 40.541759>,  <31.467104, 42.899418, 40.670074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.370111, 43.077541, 40.541759>,  <31.208458, 43.374413, 40.327900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370111, 43.077541, 40.541759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294471, -0.447827, -0.844238,
		0.866004, 0.498624, 0.037568,
		0.404134, -0.742176, 0.534650,
		31.491352, 42.854889, 40.702156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784929, 43.234734, 40.057411>,  <31.208458, 43.374413, 40.327900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784929, 43.234734, 40.057411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736456, 42.893406, 40.260254>,  <31.707371, 42.688610, 40.381958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736456, 42.893406, 40.260254>,  <31.784929, 43.234734, 40.057411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736456, 42.893406, 40.260254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224902, -0.521186, -0.823277,
		0.966816, 0.014279, 0.255074,
		-0.121185, -0.853324, 0.507102,
		31.700100, 42.637409, 40.412384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364887, 42.790466, 39.935848>,  <31.784929, 43.234734, 40.057411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364887, 42.790466, 39.935848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070793, 42.542442, 40.045361>,  <31.894337, 42.393627, 40.111069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070793, 42.542442, 40.045361>,  <32.364887, 42.790466, 39.935848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070793, 42.542442, 40.045361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308627, -0.665866, -0.679244,
		0.603469, -0.414911, 0.680936,
		-0.735238, -0.620057, 0.273777,
		31.850222, 42.356426, 40.127495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680420, 42.115604, 40.097153>,  <32.364887, 42.790466, 39.935848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680420, 42.115604, 40.097153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293556, 42.033939, 40.036591>,  <32.061440, 41.984940, 40.000256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293556, 42.033939, 40.036591>,  <32.680420, 42.115604, 40.097153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293556, 42.033939, 40.036591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254101, -0.762385, -0.595148,
		0.006079, -0.614074, 0.789225,
		-0.967159, -0.204160, -0.151402,
		32.003410, 41.972691, 39.991169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652020, 41.458336, 39.958252>,  <32.680420, 42.115604, 40.097153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652020, 41.458336, 39.958252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297409, 41.568146, 39.809277>,  <32.084644, 41.634033, 39.719891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297409, 41.568146, 39.809277>,  <32.652020, 41.458336, 39.958252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297409, 41.568146, 39.809277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013570, -0.789184, -0.614006,
		-0.462484, -0.549385, 0.695905,
		-0.886523, 0.274525, -0.372441,
		32.031452, 41.650505, 39.697544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167816, 40.916271, 40.055077>,  <32.652020, 41.458336, 39.958252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167816, 40.916271, 40.055077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017483, 41.142864, 39.761726>,  <31.927282, 41.278820, 39.585716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017483, 41.142864, 39.761726>,  <32.167816, 40.916271, 40.055077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017483, 41.142864, 39.761726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001622, -0.791799, -0.610779,
		-0.926686, -0.228362, 0.298503,
		-0.375833, 0.566484, -0.733379,
		31.904734, 41.312809, 39.541714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804085, 40.353020, 39.625305>,  <32.167816, 40.916271, 40.055077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804085, 40.353020, 39.625305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828203, 40.687874, 39.407841>,  <31.842674, 40.888786, 39.277363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828203, 40.687874, 39.407841>,  <31.804085, 40.353020, 39.625305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828203, 40.687874, 39.407841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211197, -0.543020, -0.812727,
		-0.975582, -0.065816, -0.209542,
		0.060295, 0.837137, -0.543660,
		31.846292, 40.939014, 39.244743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321262, 40.317020, 38.947514>,  <31.804085, 40.353020, 39.625305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321262, 40.317020, 38.947514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627735, 40.568226, 38.893017>,  <31.811619, 40.718948, 38.860317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627735, 40.568226, 38.893017>,  <31.321262, 40.317020, 38.947514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627735, 40.568226, 38.893017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219355, -0.454863, -0.863124,
		-0.604027, 0.631424, -0.486266,
		0.766182, 0.628015, -0.136243,
		31.857590, 40.756630, 38.852142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129690, 40.539761, 38.306282>,  <31.321262, 40.317020, 38.947514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129690, 40.539761, 38.306282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518978, 40.602390, 38.373608>,  <31.752550, 40.639969, 38.414001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518978, 40.602390, 38.373608>,  <31.129690, 40.539761, 38.306282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518978, 40.602390, 38.373608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211027, -0.318116, -0.924267,
		-0.091170, 0.935033, -0.342638,
		0.973219, 0.156571, 0.168315,
		31.810944, 40.649361, 38.424103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399651, 40.741993, 37.687618>,  <31.129690, 40.539761, 38.306282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399651, 40.741993, 37.687618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743622, 40.658203, 37.873798>,  <31.950005, 40.607929, 37.985504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743622, 40.658203, 37.873798>,  <31.399651, 40.741993, 37.687618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743622, 40.658203, 37.873798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352562, -0.415624, -0.838425,
		0.369083, 0.885085, -0.283554,
		0.859929, -0.209478, 0.465447,
		32.001602, 40.595360, 38.013432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874821, 41.063786, 37.178413>,  <31.399651, 40.741993, 37.687618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874821, 41.063786, 37.178413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021824, 40.776749, 37.415054>,  <32.110027, 40.604527, 37.557041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021824, 40.776749, 37.415054>,  <31.874821, 41.063786, 37.178413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021824, 40.776749, 37.415054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525114, -0.364912, -0.768827,
		0.767588, 0.593212, 0.242709,
		0.367510, -0.717592, 0.591606,
		32.132076, 40.561470, 37.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627769, 41.008217, 37.044724>,  <31.874821, 41.063786, 37.178413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627769, 41.008217, 37.044724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528301, 40.654018, 37.201729>,  <32.468620, 40.441502, 37.295933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528301, 40.654018, 37.201729>,  <32.627769, 41.008217, 37.044724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528301, 40.654018, 37.201729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422152, -0.463809, -0.778890,
		0.871751, -0.027989, 0.489149,
		-0.248672, -0.885493, 0.392510,
		32.453701, 40.388371, 37.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155773, 40.598774, 36.879345>,  <32.627769, 41.008217, 37.044724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155773, 40.598774, 36.879345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871529, 40.332863, 36.971523>,  <32.700981, 40.173317, 37.026829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871529, 40.332863, 36.971523>,  <33.155773, 40.598774, 36.879345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871529, 40.332863, 36.971523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364111, -0.627715, -0.688039,
		0.602047, -0.405019, 0.688112,
		-0.710607, -0.664781, 0.230442,
		32.658348, 40.133427, 37.040657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910671, 40.665958, 36.904556>,  <33.155773, 40.598774, 36.879345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910671, 40.665958, 36.904556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153992, 40.844292, 36.641891>,  <34.299984, 40.951290, 36.484291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153992, 40.844292, 36.641891>,  <33.910671, 40.665958, 36.904556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153992, 40.844292, 36.641891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067497, 0.795280, 0.602473,
		0.790817, -0.410818, 0.453692,
		0.608319, 0.445824, -0.656650,
		34.336483, 40.978043, 36.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604210, 40.724628, 37.250443>,  <33.910671, 40.665958, 36.904556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604210, 40.724628, 37.250443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522747, 40.991333, 36.963680>,  <34.473869, 41.151356, 36.791622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522747, 40.991333, 36.963680>,  <34.604210, 40.724628, 37.250443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522747, 40.991333, 36.963680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085366, 0.741557, 0.665437,
		0.975314, 0.074321, -0.207942,
		-0.203657, 0.666760, -0.716906,
		34.461651, 41.191360, 36.748608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135056, 41.245945, 37.377411>,  <34.604210, 40.724628, 37.250443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135056, 41.245945, 37.377411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837875, 41.417835, 37.172134>,  <34.659569, 41.520969, 37.048969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837875, 41.417835, 37.172134>,  <35.135056, 41.245945, 37.377411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837875, 41.417835, 37.172134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060862, 0.806894, 0.587553,
		0.666576, 0.405288, -0.625634,
		-0.742948, 0.429726, -0.513189,
		34.614990, 41.546753, 37.018177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296410, 41.918610, 37.194870>,  <35.135056, 41.245945, 37.377411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296410, 41.918610, 37.194870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899967, 41.938358, 37.145432>,  <34.662102, 41.950207, 37.115768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899967, 41.938358, 37.145432>,  <35.296410, 41.918610, 37.194870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899967, 41.938358, 37.145432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024893, 0.843504, 0.536546,
		0.130738, 0.534850, -0.834771,
		-0.991104, 0.049367, -0.123592,
		34.602634, 41.953167, 37.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199154, 42.644299, 37.164261>,  <35.296410, 41.918610, 37.194870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199154, 42.644299, 37.164261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857391, 42.452374, 37.244038>,  <34.652336, 42.337219, 37.291904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857391, 42.452374, 37.244038>,  <35.199154, 42.644299, 37.164261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857391, 42.452374, 37.244038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249937, 0.716005, 0.651820,
		-0.455551, 0.507070, -0.731679,
		-0.854404, -0.479810, 0.199441,
		34.601070, 42.308430, 37.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771252, 43.116898, 37.288540>,  <35.199154, 42.644299, 37.164261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771252, 43.116898, 37.288540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549026, 42.822102, 37.442528>,  <34.415691, 42.645226, 37.534920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549026, 42.822102, 37.442528>,  <34.771252, 43.116898, 37.288540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549026, 42.822102, 37.442528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280665, 0.602041, 0.747511,
		-0.782675, 0.307238, -0.541316,
		-0.555559, -0.736988, 0.384972,
		34.382359, 42.601006, 37.558018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143131, 43.385460, 37.424408>,  <34.771252, 43.116898, 37.288540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143131, 43.385460, 37.424408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131050, 43.066952, 37.666080>,  <34.123802, 42.875847, 37.811085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131050, 43.066952, 37.666080>,  <34.143131, 43.385460, 37.424408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131050, 43.066952, 37.666080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394525, 0.564878, 0.724750,
		-0.918389, -0.216472, -0.331213,
		-0.030207, -0.796274, 0.604181,
		34.121986, 42.828068, 37.847336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473660, 43.523609, 37.776829>,  <34.143131, 43.385460, 37.424408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473660, 43.523609, 37.776829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681488, 43.262695, 37.997578>,  <33.806187, 43.106148, 38.130028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681488, 43.262695, 37.997578>,  <33.473660, 43.523609, 37.776829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681488, 43.262695, 37.997578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347829, 0.428484, 0.833916,
		-0.780421, -0.625240, -0.004255,
		0.519575, -0.652285, 0.551874,
		33.837360, 43.067009, 38.163139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044842, 43.290203, 38.272446>,  <33.473660, 43.523609, 37.776829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044842, 43.290203, 38.272446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420364, 43.239723, 38.400650>,  <33.645676, 43.209435, 38.477573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420364, 43.239723, 38.400650>,  <33.044842, 43.290203, 38.272446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420364, 43.239723, 38.400650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208815, 0.531505, 0.820914,
		-0.273948, -0.837602, 0.472626,
		0.938802, -0.126196, 0.320508,
		33.702003, 43.201866, 38.496803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014236, 43.162052, 38.947399>,  <33.044842, 43.290203, 38.272446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014236, 43.162052, 38.947399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380020, 43.308773, 38.879032>,  <33.599491, 43.396805, 38.838013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380020, 43.308773, 38.879032>,  <33.014236, 43.162052, 38.947399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380020, 43.308773, 38.879032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063705, 0.547595, 0.834315,
		0.399622, -0.752062, 0.524123,
		0.914464, 0.366800, -0.170921,
		33.654358, 43.418812, 38.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505695, 42.976204, 39.526409>,  <33.014236, 43.162052, 38.947399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505695, 42.976204, 39.526409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688465, 43.302174, 39.383797>,  <33.798126, 43.497757, 39.298229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688465, 43.302174, 39.383797>,  <33.505695, 42.976204, 39.526409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688465, 43.302174, 39.383797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110427, 0.345755, 0.931805,
		0.882626, -0.465132, 0.067993,
		0.456921, 0.814927, -0.356535,
		33.825542, 43.546650, 39.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982670, 43.164192, 40.031029>,  <33.505695, 42.976204, 39.526409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982670, 43.164192, 40.031029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995270, 43.509861, 39.830147>,  <34.002831, 43.717262, 39.709618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995270, 43.509861, 39.830147>,  <33.982670, 43.164192, 40.031029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995270, 43.509861, 39.830147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162959, 0.491288, 0.855617,
		0.986130, -0.108787, -0.125351,
		0.031497, 0.864177, -0.502202,
		34.004719, 43.769115, 39.679485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429508, 43.477757, 40.382973>,  <33.982670, 43.164192, 40.031029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429508, 43.477757, 40.382973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239388, 43.768841, 40.185173>,  <34.125317, 43.943489, 40.066494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239388, 43.768841, 40.185173>,  <34.429508, 43.477757, 40.382973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239388, 43.768841, 40.185173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100376, 0.603225, 0.791230,
		0.874077, 0.326438, -0.359759,
		-0.475303, 0.727707, -0.494499,
		34.096798, 43.987152, 40.036823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824604, 44.126999, 40.388935>,  <34.429508, 43.477757, 40.382973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824604, 44.126999, 40.388935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438301, 44.220459, 40.343815>,  <34.206520, 44.276535, 40.316742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438301, 44.220459, 40.343815>,  <34.824604, 44.126999, 40.388935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438301, 44.220459, 40.343815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117157, 0.780633, 0.613910,
		0.231494, 0.579672, -0.781275,
		-0.965756, 0.233649, -0.112799,
		34.148575, 44.290554, 40.309975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281445, 44.419891, 40.047581>,  <34.824604, 44.126999, 40.388935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281445, 44.419891, 40.047581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679817, 44.383995, 40.044399>,  <35.918842, 44.362457, 40.042488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679817, 44.383995, 40.044399>,  <35.281445, 44.419891, 40.047581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679817, 44.383995, 40.044399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044927, -0.418168, -0.907258,
		0.078092, 0.903926, -0.420499,
		0.995933, -0.089742, -0.007955,
		35.978596, 44.357071, 40.042011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469490, 44.600716, 39.376930>,  <35.281445, 44.419891, 40.047581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469490, 44.600716, 39.376930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816235, 44.435978, 39.489319>,  <36.024281, 44.337135, 39.556751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816235, 44.435978, 39.489319>,  <35.469490, 44.600716, 39.376930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816235, 44.435978, 39.489319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151302, -0.319670, -0.935371,
		0.475043, 0.853345, -0.214796,
		0.866858, -0.411842, 0.280970,
		36.076290, 44.312424, 39.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218731, 44.909046, 38.946236>,  <35.469490, 44.600716, 39.376930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218731, 44.909046, 38.946236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263790, 44.542198, 39.099178>,  <36.290825, 44.322090, 39.190945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263790, 44.542198, 39.099178>,  <36.218731, 44.909046, 38.946236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263790, 44.542198, 39.099178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424484, -0.303512, -0.853050,
		0.898401, 0.258398, 0.355114,
		0.112645, -0.917121, 0.382361,
		36.297585, 44.267063, 39.213886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839378, 44.588631, 38.534645>,  <36.218731, 44.909046, 38.946236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839378, 44.588631, 38.534645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697102, 44.264507, 38.720928>,  <36.611736, 44.070034, 38.832699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697102, 44.264507, 38.720928>,  <36.839378, 44.588631, 38.534645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697102, 44.264507, 38.720928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265049, -0.565292, -0.781149,
		0.896234, -0.154410, 0.415839,
		-0.355688, -0.810310, 0.465708,
		36.590397, 44.021416, 38.860641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290760, 44.151554, 38.307861>,  <36.839378, 44.588631, 38.534645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290760, 44.151554, 38.307861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986938, 43.937000, 38.455032>,  <36.804646, 43.808270, 38.543335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986938, 43.937000, 38.455032>,  <37.290760, 44.151554, 38.307861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986938, 43.937000, 38.455032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093230, -0.649594, -0.754543,
		0.643725, -0.538817, 0.543411,
		-0.759557, -0.536380, 0.367926,
		36.759071, 43.776085, 38.565411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506733, 43.490833, 38.607899>,  <37.290760, 44.151554, 38.307861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506733, 43.490833, 38.607899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135571, 43.432961, 38.470459>,  <36.912872, 43.398235, 38.387997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135571, 43.432961, 38.470459>,  <37.506733, 43.490833, 38.607899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135571, 43.432961, 38.470459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336658, -0.721112, -0.605523,
		-0.160164, -0.677543, 0.717832,
		-0.927905, -0.144681, -0.343597,
		36.857201, 43.389557, 38.367378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 42.787346, 38.589882>,  <37.506733, 43.490833, 38.607899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387764, 42.787346, 38.589882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.117790, 42.928360, 38.330597>,  <36.955807, 43.012966, 38.175026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.117790, 42.928360, 38.330597>,  <37.387764, 42.787346, 38.589882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117790, 42.928360, 38.330597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393562, -0.571101, -0.720383,
		-0.624154, -0.741326, 0.246714,
		-0.674938, 0.352533, -0.648213,
		36.915310, 43.034119, 38.136131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025269, 42.216640, 38.325569>,  <37.387764, 42.787346, 38.589882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025269, 42.216640, 38.325569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983665, 42.502926, 38.049324>,  <36.958702, 42.674698, 37.883579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983665, 42.502926, 38.049324>,  <37.025269, 42.216640, 38.325569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983665, 42.502926, 38.049324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393091, -0.608257, -0.689567,
		-0.913599, -0.343191, -0.218077,
		-0.104006, 0.715712, -0.690608,
		36.952465, 42.717640, 37.842140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630959, 41.947510, 37.853493>,  <37.025269, 42.216640, 38.325569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630959, 41.947510, 37.853493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829483, 42.250145, 37.683197>,  <36.948597, 42.431725, 37.581020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829483, 42.250145, 37.683197>,  <36.630959, 41.947510, 37.853493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829483, 42.250145, 37.683197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282834, -0.604559, -0.744656,
		-0.820783, 0.249164, -0.514036,
		0.496307, 0.756588, -0.425739,
		36.978374, 42.477123, 37.555473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521351, 41.825039, 37.100571>,  <36.630959, 41.947510, 37.853493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521351, 41.825039, 37.100571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839642, 42.067299, 37.100121>,  <37.030617, 42.212654, 37.099850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839642, 42.067299, 37.100121>,  <36.521351, 41.825039, 37.100571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839642, 42.067299, 37.100121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445530, -0.586608, -0.676309,
		-0.410269, 0.537657, -0.736617,
		0.795727, 0.605654, -0.001125,
		37.078362, 42.248997, 37.099785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668652, 41.801357, 36.454258>,  <36.521351, 41.825039, 37.100571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668652, 41.801357, 36.454258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002003, 41.976082, 36.589718>,  <37.202011, 42.080917, 36.670994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002003, 41.976082, 36.589718>,  <36.668652, 41.801357, 36.454258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002003, 41.976082, 36.589718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539440, -0.509371, -0.670482,
		-0.120376, 0.741443, -0.660131,
		0.833375, 0.436811, 0.338648,
		37.252014, 42.107124, 36.691311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058155, 42.022690, 35.855980>,  <36.668652, 41.801357, 36.454258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058155, 42.022690, 35.855980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312805, 41.995857, 36.163280>,  <37.465595, 41.979759, 36.347660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312805, 41.995857, 36.163280>,  <37.058155, 42.022690, 35.855980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312805, 41.995857, 36.163280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640276, -0.509283, -0.575045,
		0.429832, 0.857981, -0.281272,
		0.636625, -0.067081, 0.768251,
		37.503792, 41.975735, 36.393757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652313, 42.245403, 35.654728>,  <37.058155, 42.022690, 35.855980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652313, 42.245403, 35.654728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792900, 42.049843, 35.974091>,  <37.877251, 41.932507, 36.165707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792900, 42.049843, 35.974091>,  <37.652313, 42.245403, 35.654728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792900, 42.049843, 35.974091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695851, -0.434102, -0.572143,
		0.626310, 0.756656, 0.187633,
		0.351463, -0.488904, 0.798402,
		37.898338, 41.903172, 36.213612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375679, 42.198887, 35.642704>,  <37.652313, 42.245403, 35.654728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375679, 42.198887, 35.642704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238583, 41.889439, 35.855885>,  <38.156322, 41.703770, 35.983795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238583, 41.889439, 35.855885>,  <38.375679, 42.198887, 35.642704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238583, 41.889439, 35.855885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576709, -0.621105, -0.530694,
		0.741575, 0.125467, 0.659033,
		-0.342745, -0.773619, 0.532954,
		38.135757, 41.657352, 36.015770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.668365, 33.912136, 27.501406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304407, 33.807545, 27.372583>,  <26.086033, 33.744789, 27.295290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304407, 33.807545, 27.372583>,  <26.668365, 33.912136, 27.501406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304407, 33.807545, 27.372583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413976, 0.522320, 0.745524,
		-0.026719, 0.811673, -0.583501,
		-0.909896, -0.261475, -0.322057,
		26.031439, 33.729103, 27.275967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248884, 34.523163, 27.417768>,  <26.668365, 33.912136, 27.501406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248884, 34.523163, 27.417768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034391, 34.203686, 27.526978>,  <25.905695, 34.012001, 27.592503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034391, 34.203686, 27.526978>,  <26.248884, 34.523163, 27.417768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034391, 34.203686, 27.526978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299225, 0.482330, 0.823299,
		-0.789252, 0.359785, -0.497630,
		-0.536233, -0.798694, 0.273024,
		25.873522, 33.964077, 27.608885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513117, 34.644325, 27.457642>,  <26.248884, 34.523163, 27.417768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513117, 34.644325, 27.457642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584194, 34.335030, 27.701126>,  <25.626841, 34.149452, 27.847218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584194, 34.335030, 27.701126>,  <25.513117, 34.644325, 27.457642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584194, 34.335030, 27.701126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377083, 0.517842, 0.767886,
		-0.908973, -0.365984, -0.199556,
		0.177695, -0.773237, 0.608711,
		25.637503, 34.103058, 27.883739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077833, 34.792267, 27.971464>,  <25.513117, 34.644325, 27.457642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077833, 34.792267, 27.971464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.291134, 34.496735, 28.136280>,  <25.419115, 34.319416, 28.235170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.291134, 34.496735, 28.136280>,  <25.077833, 34.792267, 27.971464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291134, 34.496735, 28.136280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345055, 0.254748, 0.903350,
		-0.772385, -0.623890, -0.119091,
		0.533253, -0.738827, 0.412040,
		25.451109, 34.275085, 28.259892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682043, 34.737061, 28.607515>,  <25.077833, 34.792267, 27.971464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682043, 34.737061, 28.607515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009562, 34.514832, 28.665359>,  <25.206072, 34.381493, 28.700066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009562, 34.514832, 28.665359>,  <24.682043, 34.737061, 28.607515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009562, 34.514832, 28.665359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124217, 0.074476, 0.989456,
		-0.560487, -0.828124, -0.008031,
		0.818794, -0.555575, 0.144610,
		25.255199, 34.348160, 28.708742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494272, 34.082752, 29.018873>,  <24.682043, 34.737061, 28.607515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494272, 34.082752, 29.018873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.874609, 34.193913, 29.073532>,  <25.102810, 34.260609, 29.106327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.874609, 34.193913, 29.073532>,  <24.494272, 34.082752, 29.018873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874609, 34.193913, 29.073532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145525, 0.011477, 0.989288,
		0.273359, -0.960540, 0.051355,
		0.950840, 0.277904, 0.136645,
		25.159861, 34.277283, 29.114525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771461, 33.598526, 29.425497>,  <24.494272, 34.082752, 29.018873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771461, 33.598526, 29.425497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.008175, 33.917881, 29.469992>,  <25.150204, 34.109493, 29.496689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.008175, 33.917881, 29.469992>,  <24.771461, 33.598526, 29.425497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008175, 33.917881, 29.469992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057585, -0.095774, 0.993736,
		0.804038, -0.594482, -0.010702,
		0.591783, 0.798385, 0.111239,
		25.185711, 34.157398, 29.503363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318262, 33.511173, 29.927685>,  <24.771461, 33.598526, 29.425497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318262, 33.511173, 29.927685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.343527, 33.910030, 29.911085>,  <25.358686, 34.149345, 29.901125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.343527, 33.910030, 29.911085>,  <25.318262, 33.511173, 29.927685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.343527, 33.910030, 29.911085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208665, 0.027470, 0.977601,
		0.975945, -0.070408, -0.206333,
		0.063163, 0.997140, -0.041501,
		25.362476, 34.209171, 29.898634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969818, 33.707008, 30.221807>,  <25.318262, 33.511173, 29.927685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969818, 33.707008, 30.221807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712553, 34.012238, 30.247303>,  <25.558193, 34.195374, 30.262600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712553, 34.012238, 30.247303>,  <25.969818, 33.707008, 30.221807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712553, 34.012238, 30.247303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184830, 0.073931, 0.979986,
		0.743087, 0.642072, -0.188588,
		-0.643164, 0.763071, 0.063737,
		25.519604, 34.241158, 30.266424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283016, 34.146923, 30.650267>,  <25.969818, 33.707008, 30.221807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283016, 34.146923, 30.650267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.920996, 34.313293, 30.685797>,  <25.703783, 34.413116, 30.707115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.920996, 34.313293, 30.685797>,  <26.283016, 34.146923, 30.650267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920996, 34.313293, 30.685797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249389, 0.349816, 0.903014,
		0.344513, 0.839426, -0.420328,
		-0.905050, 0.415925, 0.088827,
		25.649481, 34.438072, 30.712444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328045, 34.816952, 30.769766>,  <26.283016, 34.146923, 30.650267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328045, 34.816952, 30.769766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977659, 34.705261, 30.927105>,  <25.767427, 34.638248, 31.021509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977659, 34.705261, 30.927105>,  <26.328045, 34.816952, 30.769766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977659, 34.705261, 30.927105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260608, 0.412255, 0.873000,
		-0.405923, 0.867225, -0.288352,
		-0.875962, -0.279224, 0.393350,
		25.714870, 34.621494, 31.045111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339117, 35.248428, 31.176901>,  <26.328045, 34.816952, 30.769766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339117, 35.248428, 31.176901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032026, 35.037205, 31.322090>,  <25.847773, 34.910469, 31.409204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032026, 35.037205, 31.322090>,  <26.339117, 35.248428, 31.176901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032026, 35.037205, 31.322090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182417, 0.362907, 0.913796,
		-0.614266, 0.767756, -0.182286,
		-0.767725, -0.528061, 0.362974,
		25.801708, 34.878788, 31.430983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774237, 35.689941, 31.338728>,  <26.339117, 35.248428, 31.176901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774237, 35.689941, 31.338728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755951, 35.358028, 31.561213>,  <25.744980, 35.158882, 31.694702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755951, 35.358028, 31.561213>,  <25.774237, 35.689941, 31.338728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755951, 35.358028, 31.561213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075125, 0.552360, 0.830214,
		-0.996126, 0.079737, 0.037087,
		-0.045713, -0.829784, 0.556210,
		25.742237, 35.109093, 31.728075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472795, 35.917149, 32.007332>,  <25.774237, 35.689941, 31.338728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472795, 35.917149, 32.007332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.623426, 35.556789, 32.093658>,  <25.713804, 35.340576, 32.145454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.623426, 35.556789, 32.093658>,  <25.472795, 35.917149, 32.007332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623426, 35.556789, 32.093658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128644, 0.281566, 0.950879,
		-0.917409, -0.330317, 0.221926,
		0.376578, -0.900895, 0.215818,
		25.736401, 35.286522, 32.158405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165499, 35.707310, 32.635555>,  <25.472795, 35.917149, 32.007332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165499, 35.707310, 32.635555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488548, 35.474277, 32.599014>,  <25.682379, 35.334457, 32.577091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488548, 35.474277, 32.599014>,  <25.165499, 35.707310, 32.635555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488548, 35.474277, 32.599014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155255, 0.060615, 0.986013,
		-0.568894, -0.810510, 0.139403,
		0.807623, -0.582580, -0.091352,
		25.730835, 35.299503, 32.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173998, 35.431259, 33.219948>,  <25.165499, 35.707310, 32.635555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173998, 35.431259, 33.219948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544979, 35.359341, 33.088799>,  <25.767569, 35.316189, 33.010109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544979, 35.359341, 33.088799>,  <25.173998, 35.431259, 33.219948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544979, 35.359341, 33.088799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365881, 0.255325, 0.894953,
		-0.077192, -0.949991, 0.302585,
		0.927455, -0.179794, -0.327874,
		25.823215, 35.305401, 32.990437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462322, 34.936005, 33.682575>,  <25.173998, 35.431259, 33.219948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462322, 34.936005, 33.682575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769524, 35.112148, 33.496563>,  <25.953844, 35.217834, 33.384956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769524, 35.112148, 33.496563>,  <25.462322, 34.936005, 33.682575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769524, 35.112148, 33.496563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479397, 0.086202, 0.873354,
		0.424678, -0.893673, -0.144905,
		0.768002, 0.440361, -0.465033,
		25.999924, 35.244255, 33.357052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006798, 34.535000, 33.733894>,  <25.462322, 34.936005, 33.682575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006798, 34.535000, 33.733894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129831, 34.912663, 33.686646>,  <26.203651, 35.139259, 33.658295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129831, 34.912663, 33.686646>,  <26.006798, 34.535000, 33.733894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129831, 34.912663, 33.686646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354272, 0.001583, 0.935141,
		0.883111, -0.329481, -0.334002,
		0.307583, 0.944161, -0.118124,
		26.222107, 35.195911, 33.651207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535902, 34.553772, 34.090473>,  <26.006798, 34.535000, 33.733894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535902, 34.553772, 34.090473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455551, 34.943993, 34.054829>,  <26.407341, 35.178127, 34.033443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455551, 34.943993, 34.054829>,  <26.535902, 34.553772, 34.090473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455551, 34.943993, 34.054829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361840, 0.158420, 0.918681,
		0.910340, 0.152300, -0.384818,
		-0.200878, 0.975555, -0.089108,
		26.395288, 35.236660, 34.028095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118826, 34.995152, 34.255836>,  <26.535902, 34.553772, 34.090473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118826, 34.995152, 34.255836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810211, 35.235458, 34.339558>,  <26.625042, 35.379642, 34.389790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810211, 35.235458, 34.339558>,  <27.118826, 34.995152, 34.255836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810211, 35.235458, 34.339558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399025, 0.200743, 0.894696,
		0.495492, 0.773807, -0.394603,
		-0.771536, 0.600771, 0.209301,
		26.578751, 35.415691, 34.402348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849586, 35.186001, 34.306641>,  <27.118826, 34.995152, 34.255836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849586, 35.186001, 34.306641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220337, 35.335148, 34.289318>,  <28.442787, 35.424637, 34.278923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220337, 35.335148, 34.289318>,  <27.849586, 35.186001, 34.306641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220337, 35.335148, 34.289318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153329, -0.481379, -0.862997,
		-0.342629, 0.793249, -0.503349,
		0.926874, 0.372866, -0.043306,
		28.498400, 35.447006, 34.276325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954632, 35.418137, 33.603863>,  <27.849586, 35.186001, 34.306641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954632, 35.418137, 33.603863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.324554, 35.343071, 33.736237>,  <28.546507, 35.298031, 33.815662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.324554, 35.343071, 33.736237>,  <27.954632, 35.418137, 33.603863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324554, 35.343071, 33.736237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274090, -0.274593, -0.921669,
		0.263839, 0.943069, -0.202508,
		0.924805, -0.187667, 0.330934,
		28.601995, 35.286770, 33.835518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318472, 35.544720, 33.000362>,  <27.954632, 35.418137, 33.603863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318472, 35.544720, 33.000362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601206, 35.370815, 33.223564>,  <28.770845, 35.266472, 33.357483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601206, 35.370815, 33.223564>,  <28.318472, 35.544720, 33.000362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601206, 35.370815, 33.223564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429349, -0.363230, -0.826876,
		0.562179, 0.824041, -0.070077,
		0.706833, -0.434765, 0.558002,
		28.813255, 35.240387, 33.390965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858225, 35.615971, 32.618889>,  <28.318472, 35.544720, 33.000362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858225, 35.615971, 32.618889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951862, 35.311886, 32.861301>,  <29.008045, 35.129433, 33.006748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951862, 35.311886, 32.861301>,  <28.858225, 35.615971, 32.618889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951862, 35.311886, 32.861301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272956, -0.546887, -0.791461,
		0.933110, 0.350696, 0.079483,
		0.234094, -0.760215, 0.606030,
		29.022091, 35.083820, 33.043110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620691, 35.407494, 32.487244>,  <28.858225, 35.615971, 32.618889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620691, 35.407494, 32.487244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410082, 35.106606, 32.645706>,  <29.283716, 34.926071, 32.740784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410082, 35.106606, 32.645706>,  <29.620691, 35.407494, 32.487244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410082, 35.106606, 32.645706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300997, -0.600731, -0.740623,
		0.795095, -0.270713, 0.542714,
		-0.526521, -0.752222, 0.396154,
		29.252125, 34.880939, 32.764553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031395, 34.798164, 32.460869>,  <29.620691, 35.407494, 32.487244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031395, 34.798164, 32.460869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654833, 34.666683, 32.491108>,  <29.428896, 34.587795, 32.509251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654833, 34.666683, 32.491108>,  <30.031395, 34.798164, 32.460869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654833, 34.666683, 32.491108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160515, -0.633754, -0.756697,
		0.296639, -0.700223, 0.649379,
		-0.941404, -0.328701, 0.075600,
		29.372412, 34.568073, 32.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134335, 34.105682, 32.415817>,  <30.031395, 34.798164, 32.460869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134335, 34.105682, 32.415817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751123, 34.179756, 32.328281>,  <29.521196, 34.224201, 32.275761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751123, 34.179756, 32.328281>,  <30.134335, 34.105682, 32.415817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751123, 34.179756, 32.328281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048408, -0.647909, -0.760178,
		-0.282557, -0.738865, 0.611751,
		-0.958028, 0.185180, -0.218839,
		29.463715, 34.235310, 32.262630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866873, 33.420322, 32.241932>,  <30.134335, 34.105682, 32.415817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866873, 33.420322, 32.241932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617779, 33.690422, 32.083824>,  <29.468323, 33.852482, 31.988958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617779, 33.690422, 32.083824>,  <29.866873, 33.420322, 32.241932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617779, 33.690422, 32.083824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068853, -0.550516, -0.831981,
		-0.779399, -0.490886, 0.389317,
		-0.622733, 0.675251, -0.395272,
		29.430958, 33.892998, 31.965242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339579, 32.983532, 32.019703>,  <29.866873, 33.420322, 32.241932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339579, 32.983532, 32.019703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303196, 33.333370, 31.829205>,  <29.281366, 33.543274, 31.714907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303196, 33.333370, 31.829205>,  <29.339579, 32.983532, 32.019703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303196, 33.333370, 31.829205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192116, -0.484653, -0.853348,
		-0.977148, 0.013875, 0.212107,
		-0.090958, 0.874596, -0.476244,
		29.275909, 33.595749, 31.686331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789120, 32.837585, 31.652615>,  <29.339579, 32.983532, 32.019703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789120, 32.837585, 31.652615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974796, 33.137096, 31.463360>,  <29.086203, 33.316803, 31.349808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974796, 33.137096, 31.463360>,  <28.789120, 32.837585, 31.652615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974796, 33.137096, 31.463360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183336, -0.441381, -0.878391,
		-0.866552, 0.494487, -0.067609,
		0.464194, 0.748776, -0.473137,
		29.114054, 33.361729, 31.321419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354593, 32.947514, 31.059145>,  <28.789120, 32.837585, 31.652615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354593, 32.947514, 31.059145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691027, 33.147068, 30.975534>,  <28.892887, 33.266800, 30.925367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691027, 33.147068, 30.975534>,  <28.354593, 32.947514, 31.059145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691027, 33.147068, 30.975534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119963, -0.204768, -0.971431,
		-0.527436, 0.842130, -0.112379,
		0.841083, 0.498886, -0.209026,
		28.943352, 33.296734, 30.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214083, 33.598339, 30.658236>,  <28.354593, 32.947514, 31.059145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214083, 33.598339, 30.658236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577215, 33.456406, 30.568855>,  <28.795095, 33.371246, 30.515228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577215, 33.456406, 30.568855>,  <28.214083, 33.598339, 30.658236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577215, 33.456406, 30.568855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268076, -0.081352, -0.959957,
		0.322449, 0.931382, -0.168977,
		0.907833, -0.354836, -0.223449,
		28.849566, 33.349957, 30.501820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440529, 33.959263, 30.116297>,  <28.214083, 33.598339, 30.658236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440529, 33.959263, 30.116297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686913, 33.645061, 30.092360>,  <28.834743, 33.456543, 30.077997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686913, 33.645061, 30.092360>,  <28.440529, 33.959263, 30.116297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686913, 33.645061, 30.092360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277629, -0.145359, -0.949628,
		0.737235, 0.601547, -0.307613,
		0.615960, -0.785501, -0.059843,
		28.871700, 33.409412, 30.074408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855099, 33.986832, 29.487713>,  <28.440529, 33.959263, 30.116297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855099, 33.986832, 29.487713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.873444, 33.602039, 29.595407>,  <28.884451, 33.371162, 29.660025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.873444, 33.602039, 29.595407>,  <28.855099, 33.986832, 29.487713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873444, 33.602039, 29.595407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157153, -0.273112, -0.949059,
		0.986509, 0.001214, -0.163703,
		0.045862, -0.961981, 0.269237,
		28.887201, 33.313446, 29.676178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171892, 33.687702, 28.935650>,  <28.855099, 33.986832, 29.487713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171892, 33.687702, 28.935650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019606, 33.359985, 29.107145>,  <28.928234, 33.163357, 29.210043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019606, 33.359985, 29.107145>,  <29.171892, 33.687702, 28.935650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019606, 33.359985, 29.107145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387661, -0.279527, -0.878398,
		0.839507, -0.500628, -0.211186,
		-0.380718, -0.819290, 0.428739,
		28.905390, 33.114197, 29.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491394, 33.153091, 28.615730>,  <29.171892, 33.687702, 28.935650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491394, 33.153091, 28.615730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145569, 33.023102, 28.769053>,  <28.938074, 32.945107, 28.861046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145569, 33.023102, 28.769053>,  <29.491394, 33.153091, 28.615730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145569, 33.023102, 28.769053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293373, -0.292881, -0.910029,
		0.408002, -0.899228, 0.157874,
		-0.864561, -0.324978, 0.383305,
		28.886200, 32.925610, 28.884045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310186, 32.526608, 28.140549>,  <29.491394, 33.153091, 28.615730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310186, 32.526608, 28.140549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976528, 32.601276, 28.348146>,  <28.776333, 32.646080, 28.472706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976528, 32.601276, 28.348146>,  <29.310186, 32.526608, 28.140549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976528, 32.601276, 28.348146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550861, -0.328867, -0.767071,
		0.027486, -0.925742, 0.377155,
		-0.834144, 0.186677, 0.518994,
		28.726284, 32.657280, 28.503845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789162, 31.937901, 28.012985>,  <29.310186, 32.526608, 28.140549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789162, 31.937901, 28.012985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571457, 32.248108, 28.140955>,  <28.440834, 32.434231, 28.217737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571457, 32.248108, 28.140955>,  <28.789162, 31.937901, 28.012985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571457, 32.248108, 28.140955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707692, -0.219640, -0.671513,
		-0.450503, -0.591886, 0.668370,
		-0.544260, 0.775519, 0.319924,
		28.408178, 32.480762, 28.236933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135239, 31.707212, 28.046949>,  <28.789162, 31.937901, 28.012985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135239, 31.707212, 28.046949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099302, 32.105556, 28.041422>,  <28.077742, 32.344563, 28.038105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099302, 32.105556, 28.041422>,  <28.135239, 31.707212, 28.046949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099302, 32.105556, 28.041422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637001, -0.068120, -0.767848,
		-0.765610, -0.060181, 0.640484,
		-0.089839, 0.995860, -0.013818,
		28.072351, 32.404316, 28.037277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377893, 31.850187, 28.080194>,  <28.135239, 31.707212, 28.046949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377893, 31.850187, 28.080194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581612, 32.150616, 27.912140>,  <27.703842, 32.330872, 27.811308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581612, 32.150616, 27.912140>,  <27.377893, 31.850187, 28.080194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581612, 32.150616, 27.912140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554286, -0.087173, -0.827748,
		-0.658321, 0.654443, 0.371910,
		0.509294, 0.751069, -0.420137,
		27.734400, 32.375935, 27.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897194, 32.272285, 27.772694>,  <27.377893, 31.850187, 28.080194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897194, 32.272285, 27.772694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223171, 32.402264, 27.580746>,  <27.418758, 32.480251, 27.465576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223171, 32.402264, 27.580746>,  <26.897194, 32.272285, 27.772694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223171, 32.402264, 27.580746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515149, 0.026837, -0.856681,
		-0.265495, 0.945353, 0.189265,
		0.814945, 0.324944, -0.479872,
		27.467655, 32.499748, 27.436785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668907, 32.772358, 27.264666>,  <26.897194, 32.272285, 27.772694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668907, 32.772358, 27.264666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022858, 32.635235, 27.138506>,  <27.235228, 32.552959, 27.062811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022858, 32.635235, 27.138506>,  <26.668907, 32.772358, 27.264666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022858, 32.635235, 27.138506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395111, -0.193703, -0.897979,
		0.246740, 0.919218, -0.306850,
		0.884877, -0.342807, -0.315399,
		27.288321, 32.532394, 27.043886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.921028, 40.336250, 43.939236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568417, 40.475670, 43.811848>,  <38.356850, 40.559322, 43.735416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568417, 40.475670, 43.811848>,  <38.921028, 40.336250, 43.939236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568417, 40.475670, 43.811848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257665, 0.920388, 0.294099,
		0.395621, 0.177199, -0.901157,
		-0.881529, 0.348548, -0.318467,
		38.303959, 40.580235, 43.716309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003464, 40.964516, 43.466953>,  <38.921028, 40.336250, 43.939236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003464, 40.964516, 43.466953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643162, 40.980877, 43.639908>,  <38.426979, 40.990696, 43.743683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643162, 40.980877, 43.639908>,  <39.003464, 40.964516, 43.466953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643162, 40.980877, 43.639908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211226, 0.911146, 0.353830,
		-0.379497, 0.410048, -0.829363,
		-0.900758, 0.040905, 0.432390,
		38.372932, 40.993149, 43.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850506, 41.699547, 43.417431>,  <39.003464, 40.964516, 43.466953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850506, 41.699547, 43.417431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576027, 41.540184, 43.660877>,  <38.411339, 41.444565, 43.806946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576027, 41.540184, 43.660877>,  <38.850506, 41.699547, 43.417431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576027, 41.540184, 43.660877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040872, 0.856471, 0.514574,
		-0.726270, 0.328221, -0.603989,
		-0.686193, -0.398406, 0.608614,
		38.370171, 41.420662, 43.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303814, 42.070675, 43.324673>,  <38.850506, 41.699547, 43.417431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303814, 42.070675, 43.324673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238243, 41.911316, 43.685650>,  <38.198902, 41.815701, 43.902237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238243, 41.911316, 43.685650>,  <38.303814, 42.070675, 43.324673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238243, 41.911316, 43.685650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039717, 0.916743, 0.397498,
		-0.985673, 0.029317, -0.166100,
		-0.163924, -0.398400, 0.902445,
		38.189064, 41.791798, 43.956383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805054, 42.491055, 43.546253>,  <38.303814, 42.070675, 43.324673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805054, 42.491055, 43.546253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912682, 42.296616, 43.878834>,  <37.977257, 42.179955, 44.078384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912682, 42.296616, 43.878834>,  <37.805054, 42.491055, 43.546253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912682, 42.296616, 43.878834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195476, 0.817761, 0.541347,
		-0.943075, -0.308189, 0.125015,
		0.269070, -0.486093, 0.831454,
		37.993401, 42.150787, 44.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231701, 42.507820, 44.025051>,  <37.805054, 42.491055, 43.546253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231701, 42.507820, 44.025051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580219, 42.455856, 44.214352>,  <37.789330, 42.424679, 44.327930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580219, 42.455856, 44.214352>,  <37.231701, 42.507820, 44.025051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580219, 42.455856, 44.214352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106369, 0.891413, 0.440532,
		-0.479093, -0.434173, 0.762865,
		0.871295, -0.129910, 0.473253,
		37.841606, 42.416882, 44.356327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057720, 42.707466, 44.724827>,  <37.231701, 42.507820, 44.025051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057720, 42.707466, 44.724827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456043, 42.708122, 44.688232>,  <37.695038, 42.708515, 44.666275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456043, 42.708122, 44.688232>,  <37.057720, 42.707466, 44.724827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456043, 42.708122, 44.688232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046890, 0.849405, 0.525654,
		0.078571, -0.527739, 0.845765,
		0.995805, 0.001643, -0.091484,
		37.754784, 42.708614, 44.660786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228237, 42.927395, 45.373119>,  <37.057720, 42.707466, 44.724827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228237, 42.927395, 45.373119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546898, 42.998085, 45.141911>,  <37.738094, 43.040497, 45.003185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546898, 42.998085, 45.141911>,  <37.228237, 42.927395, 45.373119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546898, 42.998085, 45.141911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180499, 0.843111, 0.506541,
		0.576853, -0.507872, 0.639772,
		0.796657, 0.176721, -0.578021,
		37.785896, 43.051102, 44.968506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779713, 43.182613, 45.816204>,  <37.228237, 42.927395, 45.373119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779713, 43.182613, 45.816204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920605, 43.257298, 45.449364>,  <38.005142, 43.302109, 45.229259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920605, 43.257298, 45.449364>,  <37.779713, 43.182613, 45.816204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920605, 43.257298, 45.449364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338494, 0.888149, 0.310827,
		0.872555, -0.419916, 0.249635,
		0.352234, 0.186714, -0.917098,
		38.026276, 43.313313, 45.174232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470234, 43.390385, 45.875343>,  <37.779713, 43.182613, 45.816204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470234, 43.390385, 45.875343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342808, 43.557098, 45.534801>,  <38.266354, 43.657127, 45.330475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342808, 43.557098, 45.534801>,  <38.470234, 43.390385, 45.875343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342808, 43.557098, 45.534801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190718, 0.907966, 0.373129,
		0.928517, -0.043504, -0.368732,
		-0.318563, 0.416781, -0.851359,
		38.247238, 43.682133, 45.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832340, 44.038300, 45.811573>,  <38.470234, 43.390385, 45.875343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832340, 44.038300, 45.811573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516529, 44.095036, 45.572731>,  <38.327042, 44.129078, 45.429428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516529, 44.095036, 45.572731>,  <38.832340, 44.038300, 45.811573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516529, 44.095036, 45.572731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126385, 0.914496, 0.384348,
		0.600564, 0.378917, -0.704091,
		-0.789525, 0.141839, -0.597103,
		38.279671, 44.137589, 45.393600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858543, 44.658855, 45.373150>,  <38.832340, 44.038300, 45.811573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858543, 44.658855, 45.373150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470779, 44.570587, 45.416145>,  <38.238121, 44.517628, 45.441944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470779, 44.570587, 45.416145>,  <38.858543, 44.658855, 45.373150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470779, 44.570587, 45.416145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186135, 0.946360, 0.264116,
		-0.160007, 0.236028, -0.958483,
		-0.969408, -0.220668, 0.107491,
		38.179958, 44.504387, 45.448391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551506, 45.216873, 44.891048>,  <38.858543, 44.658855, 45.373150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551506, 45.216873, 44.891048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291321, 45.062569, 45.152760>,  <38.135208, 44.969986, 45.309788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291321, 45.062569, 45.152760>,  <38.551506, 45.216873, 44.891048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291321, 45.062569, 45.152760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284561, 0.922451, 0.260979,
		-0.704217, -0.016425, -0.709795,
		-0.650464, -0.385766, 0.654280,
		38.096180, 44.946838, 45.349045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997883, 45.550259, 44.700417>,  <38.551506, 45.216873, 44.891048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997883, 45.550259, 44.700417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934242, 45.414215, 45.071148>,  <37.896057, 45.332588, 45.293587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934242, 45.414215, 45.071148>,  <37.997883, 45.550259, 44.700417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934242, 45.414215, 45.071148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518610, 0.827621, 0.214679,
		-0.840077, -0.446506, -0.308063,
		-0.159104, -0.340112, 0.926828,
		37.886513, 45.312183, 45.349197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768242, 46.258968, 44.924896>,  <37.997883, 45.550259, 44.700417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768242, 46.258968, 44.924896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587643, 46.608406, 44.852253>,  <37.479282, 46.818069, 44.808666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587643, 46.608406, 44.852253>,  <37.768242, 46.258968, 44.924896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587643, 46.608406, 44.852253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395883, -0.378531, -0.836655,
		-0.799644, -0.305848, 0.516747,
		-0.451494, 0.873597, -0.181609,
		37.452194, 46.870483, 44.797771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066887, 46.061939, 44.795734>,  <37.768242, 46.258968, 44.924896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066887, 46.061939, 44.795734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161293, 46.418736, 44.641514>,  <37.217937, 46.632812, 44.548981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161293, 46.418736, 44.641514>,  <37.066887, 46.061939, 44.795734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161293, 46.418736, 44.641514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554780, -0.202058, -0.807088,
		-0.797820, 0.404378, 0.447171,
		0.236015, 0.891992, -0.385547,
		37.232098, 46.686333, 44.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494389, 46.333328, 44.521935>,  <37.066887, 46.061939, 44.795734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494389, 46.333328, 44.521935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790691, 46.513287, 44.322384>,  <36.968472, 46.621262, 44.202652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790691, 46.513287, 44.322384>,  <36.494389, 46.333328, 44.521935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790691, 46.513287, 44.322384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455812, -0.208912, -0.865212,
		-0.493475, 0.868303, 0.050314,
		0.740755, 0.449895, -0.498876,
		37.012917, 46.648254, 44.172722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220608, 46.601326, 43.936840>,  <36.494389, 46.333328, 44.521935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220608, 46.601326, 43.936840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594112, 46.671307, 43.811951>,  <36.818214, 46.713295, 43.737019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594112, 46.671307, 43.811951>,  <36.220608, 46.601326, 43.936840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594112, 46.671307, 43.811951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309566, -0.042975, -0.949906,
		-0.179605, 0.983639, 0.014030,
		0.933762, 0.174951, -0.312220,
		36.874241, 46.723793, 43.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218739, 47.158417, 43.249905>,  <36.220608, 46.601326, 43.936840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218739, 47.158417, 43.249905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566395, 46.960590, 43.250484>,  <36.774986, 46.841892, 43.250832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566395, 46.960590, 43.250484>,  <36.218739, 47.158417, 43.249905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566395, 46.960590, 43.250484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168768, -0.299340, -0.939102,
		0.464886, 0.815964, -0.343635,
		0.869137, -0.494570, 0.001450,
		36.827137, 46.812218, 43.250919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413292, 47.176807, 42.636852>,  <36.218739, 47.158417, 43.249905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413292, 47.176807, 42.636852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638618, 46.869102, 42.757458>,  <36.773815, 46.684479, 42.829823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638618, 46.869102, 42.757458>,  <36.413292, 47.176807, 42.636852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638618, 46.869102, 42.757458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011534, -0.372210, -0.928077,
		0.826160, 0.519324, -0.218544,
		0.563317, -0.769261, 0.301515,
		36.807613, 46.638325, 42.847912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931469, 47.055157, 42.095840>,  <36.413292, 47.176807, 42.636852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931469, 47.055157, 42.095840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927853, 46.712669, 42.302456>,  <36.925682, 46.507179, 42.426426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927853, 46.712669, 42.302456>,  <36.931469, 47.055157, 42.095840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927853, 46.712669, 42.302456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132292, -0.510996, -0.849342,
		0.991170, -0.076011, -0.108651,
		-0.009039, -0.856216, 0.516539,
		36.925140, 46.455803, 42.457417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219830, 46.617508, 41.675503>,  <36.931469, 47.055157, 42.095840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219830, 46.617508, 41.675503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075470, 46.358398, 41.943874>,  <36.988853, 46.202934, 42.104897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075470, 46.358398, 41.943874>,  <37.219830, 46.617508, 41.675503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075470, 46.358398, 41.943874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002187, -0.718820, -0.695192,
		0.932601, -0.252365, 0.258008,
		-0.360903, -0.647772, 0.670924,
		36.967197, 46.164066, 42.145153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566727, 46.019260, 41.527927>,  <37.219830, 46.617508, 41.675503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566727, 46.019260, 41.527927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247765, 45.874672, 41.721210>,  <37.056389, 45.787918, 41.837181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247765, 45.874672, 41.721210>,  <37.566727, 46.019260, 41.527927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247765, 45.874672, 41.721210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201536, -0.595241, -0.777863,
		0.568799, -0.717653, 0.401798,
		-0.797402, -0.361471, 0.483206,
		37.008545, 45.766232, 41.866173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569149, 45.330051, 41.523823>,  <37.566727, 46.019260, 41.527927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569149, 45.330051, 41.523823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181297, 45.402500, 41.589569>,  <36.948586, 45.445969, 41.629017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181297, 45.402500, 41.589569>,  <37.569149, 45.330051, 41.523823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181297, 45.402500, 41.589569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237660, -0.538957, -0.808111,
		-0.057777, -0.822631, 0.565633,
		-0.969628, 0.181119, 0.164367,
		36.890408, 45.456837, 41.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240055, 44.704082, 41.573456>,  <37.569149, 45.330051, 41.523823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240055, 44.704082, 41.573456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949841, 44.960220, 41.472610>,  <36.775711, 45.113903, 41.412102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949841, 44.960220, 41.472610>,  <37.240055, 44.704082, 41.573456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949841, 44.960220, 41.472610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337302, -0.650208, -0.680777,
		-0.599854, -0.408891, 0.687738,
		-0.725536, 0.640342, -0.252110,
		36.732182, 45.152325, 41.396976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672340, 44.394650, 41.585941>,  <37.240055, 44.704082, 41.573456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672340, 44.394650, 41.585941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589058, 44.694656, 41.334824>,  <36.539089, 44.874660, 41.184155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589058, 44.694656, 41.334824>,  <36.672340, 44.394650, 41.585941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589058, 44.694656, 41.334824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234035, -0.661416, -0.712570,
		-0.949672, -0.001436, 0.313242,
		-0.208207, 0.750018, -0.627793,
		36.526596, 44.919662, 41.146484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988388, 44.293949, 41.256073>,  <36.672340, 44.394650, 41.585941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988388, 44.293949, 41.256073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138641, 44.557899, 40.995773>,  <36.228794, 44.716270, 40.839596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138641, 44.557899, 40.995773>,  <35.988388, 44.293949, 41.256073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138641, 44.557899, 40.995773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374933, -0.533938, -0.757849,
		-0.847542, 0.528657, 0.046844,
		0.375631, 0.659872, -0.650746,
		36.251331, 44.755859, 40.800549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397259, 44.431698, 40.800926>,  <35.988388, 44.293949, 41.256073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397259, 44.431698, 40.800926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744041, 44.498676, 40.613159>,  <35.952110, 44.538864, 40.500500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744041, 44.498676, 40.613159>,  <35.397259, 44.431698, 40.800926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744041, 44.498676, 40.613159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292004, -0.592632, -0.750680,
		-0.403889, 0.787877, -0.464890,
		0.866953, 0.167442, -0.469421,
		36.004128, 44.548908, 40.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854111, 44.849792, 40.541893>,  <35.397259, 44.431698, 40.800926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854111, 44.849792, 40.541893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465237, 44.759357, 40.566368>,  <34.231915, 44.705097, 40.581051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465237, 44.759357, 40.566368>,  <34.854111, 44.849792, 40.541893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465237, 44.759357, 40.566368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089411, 0.599673, 0.795234,
		-0.216484, 0.767643, -0.603207,
		-0.972183, -0.226089, 0.061184,
		34.173580, 44.691532, 40.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687286, 45.371330, 40.925758>,  <34.854111, 44.849792, 40.541893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687286, 45.371330, 40.925758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343166, 45.167622, 40.934879>,  <34.136692, 45.045395, 40.940353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343166, 45.167622, 40.934879>,  <34.687286, 45.371330, 40.925758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343166, 45.167622, 40.934879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233539, 0.433484, 0.870374,
		-0.453141, 0.743462, -0.491862,
		-0.860304, -0.509271, 0.022802,
		34.085075, 45.014839, 40.941719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196529, 45.855988, 41.111462>,  <34.687286, 45.371330, 40.925758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196529, 45.855988, 41.111462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062138, 45.494690, 41.218243>,  <33.981503, 45.277912, 41.282310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062138, 45.494690, 41.218243>,  <34.196529, 45.855988, 41.111462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062138, 45.494690, 41.218243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190193, 0.342651, 0.920009,
		-0.922468, 0.258329, -0.286914,
		-0.335977, -0.903248, 0.266952,
		33.961346, 45.223717, 41.298328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522743, 45.896194, 41.519653>,  <34.196529, 45.855988, 41.111462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522743, 45.896194, 41.519653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669682, 45.534504, 41.606770>,  <33.757843, 45.317490, 41.659039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669682, 45.534504, 41.606770>,  <33.522743, 45.896194, 41.519653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669682, 45.534504, 41.606770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264341, 0.123005, 0.956553,
		-0.891731, -0.408952, -0.193840,
		0.367341, -0.904228, 0.217790,
		33.779884, 45.263237, 41.672108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979736, 45.488064, 41.851532>,  <33.522743, 45.896194, 41.519653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979736, 45.488064, 41.851532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336727, 45.336033, 41.948711>,  <33.550922, 45.244816, 42.007019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336727, 45.336033, 41.948711>,  <32.979736, 45.488064, 41.851532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336727, 45.336033, 41.948711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240627, 0.054429, 0.969090,
		-0.381554, -0.923351, -0.042881,
		0.892477, -0.380079, 0.242951,
		33.604469, 45.222008, 42.021595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830227, 44.855381, 42.394966>,  <32.979736, 45.488064, 41.851532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830227, 44.855381, 42.394966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199059, 45.005131, 42.434174>,  <33.420357, 45.094982, 42.457699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199059, 45.005131, 42.434174>,  <32.830227, 44.855381, 42.394966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199059, 45.005131, 42.434174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196778, 0.235481, 0.951750,
		0.333232, -0.896878, 0.290802,
		0.922082, 0.374377, 0.098016,
		33.475685, 45.117443, 42.463577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132580, 44.700363, 43.080124>,  <32.830227, 44.855381, 42.394966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132580, 44.700363, 43.080124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371593, 45.005699, 42.981930>,  <33.515003, 45.188900, 42.923012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371593, 45.005699, 42.981930>,  <33.132580, 44.700363, 43.080124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371593, 45.005699, 42.981930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080403, 0.361655, 0.928838,
		0.797799, -0.535279, 0.277478,
		0.597539, 0.763336, -0.245490,
		33.550854, 45.234699, 42.908283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987999, 43.914017, 43.184769>,  <33.132580, 44.700363, 43.080124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987999, 43.914017, 43.184769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756554, 43.870773, 43.508129>,  <32.617687, 43.844826, 43.702145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756554, 43.870773, 43.508129>,  <32.987999, 43.914017, 43.184769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756554, 43.870773, 43.508129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621810, -0.582930, -0.523015,
		0.527785, -0.805298, 0.270069,
		-0.578614, -0.108108, 0.808405,
		32.582970, 43.838341, 43.750652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004692, 43.206337, 43.338623>,  <32.987999, 43.914017, 43.184769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004692, 43.206337, 43.338623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674942, 43.411171, 43.435112>,  <32.477093, 43.534069, 43.493004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674942, 43.411171, 43.435112>,  <33.004692, 43.206337, 43.338623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674942, 43.411171, 43.435112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534855, -0.565159, -0.628113,
		-0.185318, -0.646815, 0.739789,
		-0.824371, 0.512080, 0.241218,
		32.427631, 43.564796, 43.507477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480545, 42.698952, 43.446842>,  <33.004692, 43.206337, 43.338623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480545, 42.698952, 43.446842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262115, 43.025524, 43.371750>,  <32.131058, 43.221470, 43.326694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262115, 43.025524, 43.371750>,  <32.480545, 42.698952, 43.446842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262115, 43.025524, 43.371750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556230, -0.520918, -0.647496,
		-0.626428, -0.249160, 0.738584,
		-0.546073, 0.816433, -0.187727,
		32.098293, 43.270454, 43.315434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796696, 42.440723, 43.247879>,  <32.480545, 42.698952, 43.446842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796696, 42.440723, 43.247879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762459, 42.810249, 43.098618>,  <31.741917, 43.031963, 43.009060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762459, 42.810249, 43.098618>,  <31.796696, 42.440723, 43.247879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762459, 42.810249, 43.098618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478517, -0.366617, -0.797881,
		-0.873897, 0.110267, 0.473440,
		-0.085591, 0.923814, -0.373150,
		31.736782, 43.087395, 42.986671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344105, 42.425812, 42.745029>,  <31.796696, 42.440723, 43.247879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344105, 42.425812, 42.745029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.503448, 42.759296, 42.592064>,  <31.599054, 42.959385, 42.500286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.503448, 42.759296, 42.592064>,  <31.344105, 42.425812, 42.745029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503448, 42.759296, 42.592064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177669, -0.338890, -0.923898,
		-0.899858, 0.435985, 0.013125,
		0.398358, 0.833709, -0.382414,
		31.622955, 43.009411, 42.477341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954798, 42.503029, 42.186062>,  <31.344105, 42.425812, 42.745029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954798, 42.503029, 42.186062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248842, 42.754322, 42.084137>,  <31.425268, 42.905098, 42.022980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248842, 42.754322, 42.084137>,  <30.954798, 42.503029, 42.186062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248842, 42.754322, 42.084137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248026, -0.100590, -0.963517,
		-0.630949, 0.771492, 0.081874,
		0.735110, 0.628237, -0.254817,
		31.469376, 42.942795, 42.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668282, 43.037560, 41.687271>,  <30.954798, 42.503029, 42.186062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668282, 43.037560, 41.687271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059525, 43.009602, 41.608871>,  <31.294271, 42.992825, 41.561832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059525, 43.009602, 41.608871>,  <30.668282, 43.037560, 41.687271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059525, 43.009602, 41.608871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194408, 0.028941, -0.980494,
		0.074207, 0.997134, 0.014719,
		0.978110, -0.069898, -0.195999,
		31.352957, 42.988632, 41.550072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.132298, 43.726612, 45.714306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211636, 43.977806, 46.015316>,  <35.259239, 44.128525, 46.195923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211636, 43.977806, 46.015316>,  <35.132298, 43.726612, 45.714306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211636, 43.977806, 46.015316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025841, 0.764160, -0.644509,
		-0.979792, 0.147282, 0.135339,
		0.198345, 0.627988, 0.752523,
		35.271141, 44.166203, 46.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497082, 43.622242, 45.400326>,  <35.132298, 43.726612, 45.714306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497082, 43.622242, 45.400326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868317, 43.558891, 45.265530>,  <35.091057, 43.520882, 45.184650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868317, 43.558891, 45.265530>,  <34.497082, 43.622242, 45.400326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868317, 43.558891, 45.265530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223114, -0.961105, -0.162780,
		-0.298104, 0.226262, -0.927329,
		0.928092, -0.158375, -0.336991,
		35.146744, 43.511379, 45.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495441, 43.417332, 44.690224>,  <34.497082, 43.622242, 45.400326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495441, 43.417332, 44.690224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.826820, 43.260021, 44.849724>,  <35.025650, 43.165634, 44.945423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.826820, 43.260021, 44.849724>,  <34.495441, 43.417332, 44.690224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826820, 43.260021, 44.849724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200937, -0.873292, -0.443830,
		0.522775, 0.287567, -0.802504,
		0.828451, -0.393276, 0.398752,
		35.075356, 43.142040, 44.969349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670956, 42.947269, 44.206524>,  <34.495441, 43.417332, 44.690224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670956, 42.947269, 44.206524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874195, 42.858017, 44.539284>,  <34.996140, 42.804466, 44.738937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874195, 42.858017, 44.539284>,  <34.670956, 42.947269, 44.206524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874195, 42.858017, 44.539284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028467, -0.960983, -0.275138,
		0.860829, 0.163479, -0.481921,
		0.508097, -0.223128, 0.831896,
		35.026623, 42.791077, 44.788853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349869, 42.543373, 44.065964>,  <34.670956, 42.947269, 44.206524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349869, 42.543373, 44.065964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274345, 42.472862, 44.452389>,  <35.229031, 42.430557, 44.684242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274345, 42.472862, 44.452389>,  <35.349869, 42.543373, 44.065964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274345, 42.472862, 44.452389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059592, -0.984001, -0.167903,
		0.980204, 0.025868, 0.196294,
		-0.188810, -0.176277, 0.966063,
		35.217701, 42.419979, 44.742207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902454, 42.108402, 44.281525>,  <35.349869, 42.543373, 44.065964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902454, 42.108402, 44.281525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.601994, 42.021534, 44.530876>,  <35.421715, 41.969414, 44.680489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.601994, 42.021534, 44.530876>,  <35.902454, 42.108402, 44.281525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601994, 42.021534, 44.530876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141475, -0.975354, -0.169323,
		0.644789, -0.038995, 0.763366,
		-0.751154, -0.217174, 0.623380,
		35.376648, 41.956383, 44.717892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130444, 41.550800, 44.598267>,  <35.902454, 42.108402, 44.281525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130444, 41.550800, 44.598267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736797, 41.560848, 44.668556>,  <35.500610, 41.566879, 44.710732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736797, 41.560848, 44.668556>,  <36.130444, 41.550800, 44.598267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736797, 41.560848, 44.668556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074804, -0.956439, -0.282185,
		0.160984, -0.290848, 0.943128,
		-0.984118, 0.025122, 0.175728,
		35.441563, 41.568386, 44.721275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930946, 40.922592, 44.805225>,  <36.130444, 41.550800, 44.598267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930946, 40.922592, 44.805225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.565006, 41.060154, 44.720577>,  <35.345444, 41.142693, 44.669788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.565006, 41.060154, 44.720577>,  <35.930946, 40.922592, 44.805225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565006, 41.060154, 44.720577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264149, -0.906072, -0.330545,
		-0.305420, -0.246498, 0.919759,
		-0.914847, 0.343908, -0.211620,
		35.290554, 41.163326, 44.657093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464893, 40.497078, 45.155102>,  <35.930946, 40.922592, 44.805225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464893, 40.497078, 45.155102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285275, 40.643646, 44.829132>,  <35.177505, 40.731586, 44.633553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285275, 40.643646, 44.829132>,  <35.464893, 40.497078, 45.155102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285275, 40.643646, 44.829132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075949, -0.924396, -0.373796,
		-0.890275, -0.105960, 0.442926,
		-0.449046, 0.366420, -0.814919,
		35.150562, 40.753571, 44.584656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939819, 40.140903, 45.107681>,  <35.464893, 40.497078, 45.155102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939819, 40.140903, 45.107681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978348, 40.272022, 44.731750>,  <35.001465, 40.350693, 44.506191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978348, 40.272022, 44.731750>,  <34.939819, 40.140903, 45.107681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978348, 40.272022, 44.731750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045029, -0.941814, -0.333103,
		-0.994331, 0.074405, -0.075960,
		0.096325, 0.327794, -0.939826,
		35.007244, 40.370361, 44.449802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389919, 39.743870, 44.744568>,  <34.939819, 40.140903, 45.107681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389919, 39.743870, 44.744568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663315, 39.872444, 44.482418>,  <34.827354, 39.949589, 44.325127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663315, 39.872444, 44.482418>,  <34.389919, 39.743870, 44.744568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663315, 39.872444, 44.482418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004297, -0.896041, -0.443950,
		-0.729945, 0.306252, -0.611056,
		0.683493, 0.321434, -0.655376,
		34.868362, 39.968876, 44.285805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180870, 39.550335, 44.038078>,  <34.389919, 39.743870, 44.744568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180870, 39.550335, 44.038078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.570049, 39.621685, 43.979355>,  <34.803558, 39.664497, 43.944118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.570049, 39.621685, 43.979355>,  <34.180870, 39.550335, 44.038078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570049, 39.621685, 43.979355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083406, -0.863835, -0.496822,
		-0.215443, 0.471137, -0.855344,
		0.972948, 0.178378, -0.146811,
		34.861935, 39.675198, 43.935310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543526, 39.912067, 43.928352>,  <34.180870, 39.550335, 44.038078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543526, 39.912067, 43.928352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156044, 39.813194, 43.919228>,  <32.923557, 39.753868, 43.913754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156044, 39.813194, 43.919228>,  <33.543526, 39.912067, 43.928352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156044, 39.813194, 43.919228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171272, 0.599028, 0.782196,
		-0.179684, 0.761620, -0.622615,
		-0.968700, -0.247185, -0.022809,
		32.865433, 39.739040, 43.912384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177456, 40.552811, 43.959297>,  <33.543526, 39.912067, 43.928352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177456, 40.552811, 43.959297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935555, 40.261333, 44.087841>,  <32.790413, 40.086445, 44.164967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935555, 40.261333, 44.087841>,  <33.177456, 40.552811, 43.959297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935555, 40.261333, 44.087841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140317, 0.494689, 0.857668,
		-0.783951, 0.473589, -0.401415,
		-0.604757, -0.728695, 0.321360,
		32.754128, 40.042725, 44.184250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598759, 40.949051, 44.347523>,  <33.177456, 40.552811, 43.959297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598759, 40.949051, 44.347523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577229, 40.573376, 44.483185>,  <32.564312, 40.347969, 44.564583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577229, 40.573376, 44.483185>,  <32.598759, 40.949051, 44.347523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577229, 40.573376, 44.483185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244746, 0.341697, 0.907382,
		-0.968092, -0.034166, -0.248255,
		-0.053826, -0.939189, 0.339157,
		32.561081, 40.291618, 44.584930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102291, 41.022675, 44.830990>,  <32.598759, 40.949051, 44.347523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102291, 41.022675, 44.830990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299129, 40.692707, 44.942234>,  <32.417233, 40.494728, 45.008980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299129, 40.692707, 44.942234>,  <32.102291, 41.022675, 44.830990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299129, 40.692707, 44.942234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153360, 0.232323, 0.960472,
		-0.856924, -0.515299, -0.012183,
		0.492100, -0.824920, 0.278110,
		32.446758, 40.445232, 45.025665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847422, 40.681450, 45.481991>,  <32.102291, 41.022675, 44.830990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847422, 40.681450, 45.481991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.230598, 40.581696, 45.425205>,  <32.460503, 40.521843, 45.391132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.230598, 40.581696, 45.425205>,  <31.847422, 40.681450, 45.481991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230598, 40.581696, 45.425205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220171, 0.321451, 0.920974,
		-0.184047, -0.913496, 0.362839,
		0.957941, -0.249389, -0.141963,
		32.517982, 40.506878, 45.382618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958942, 40.516911, 46.165668>,  <31.847422, 40.681450, 45.481991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958942, 40.516911, 46.165668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.326401, 40.514580, 46.007652>,  <32.546875, 40.513180, 45.912842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.326401, 40.514580, 46.007652>,  <31.958942, 40.516911, 46.165668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326401, 40.514580, 46.007652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390628, 0.163113, 0.905982,
		0.059154, -0.986590, 0.152121,
		0.918647, -0.005830, -0.395038,
		32.601994, 40.512833, 45.889141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469017, 40.351540, 46.697441>,  <31.958942, 40.516911, 46.165668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469017, 40.351540, 46.697441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698200, 40.539532, 46.428867>,  <32.835712, 40.652328, 46.267723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698200, 40.539532, 46.428867>,  <32.469017, 40.351540, 46.697441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698200, 40.539532, 46.428867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647698, 0.242336, 0.722330,
		0.502197, -0.848757, -0.165559,
		0.572962, 0.469984, -0.671439,
		32.870090, 40.680527, 46.227436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198803, 40.153515, 46.813869>,  <32.469017, 40.351540, 46.697441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198803, 40.153515, 46.813869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165241, 40.511349, 46.638287>,  <33.145103, 40.726048, 46.532936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165241, 40.511349, 46.638287>,  <33.198803, 40.153515, 46.813869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165241, 40.511349, 46.638287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569784, 0.404459, 0.715374,
		0.817501, -0.190090, -0.543653,
		-0.083900, 0.894583, -0.438956,
		33.140072, 40.779724, 46.506599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833412, 40.546364, 47.023643>,  <33.198803, 40.153515, 46.813869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833412, 40.546364, 47.023643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624660, 40.854313, 46.876709>,  <33.499409, 41.039082, 46.788548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624660, 40.854313, 46.876709>,  <33.833412, 40.546364, 47.023643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624660, 40.854313, 46.876709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607622, 0.637747, 0.473364,
		0.598700, 0.023835, -0.800618,
		-0.521875, 0.769877, -0.367337,
		33.468098, 41.085278, 46.766506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285797, 41.210545, 46.956913>,  <33.833412, 40.546364, 47.023643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285797, 41.210545, 46.956913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930000, 41.393230, 46.951057>,  <33.716522, 41.502842, 46.947544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930000, 41.393230, 46.951057>,  <34.285797, 41.210545, 46.956913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930000, 41.393230, 46.951057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353594, 0.708244, 0.611033,
		0.289439, 0.538331, -0.791470,
		-0.889492, 0.456716, -0.014643,
		33.663151, 41.530247, 46.946663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488224, 41.861992, 47.043175>,  <34.285797, 41.210545, 46.956913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488224, 41.861992, 47.043175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093227, 41.882816, 47.102715>,  <33.856232, 41.895309, 47.138439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093227, 41.882816, 47.102715>,  <34.488224, 41.861992, 47.043175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093227, 41.882816, 47.102715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120292, 0.859029, 0.497592,
		-0.101959, 0.509272, -0.854545,
		-0.987489, 0.052061, 0.148847,
		33.796982, 41.898434, 47.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173145, 42.521179, 46.806538>,  <34.488224, 41.861992, 47.043175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173145, 42.521179, 46.806538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.936314, 42.374504, 47.093586>,  <33.794212, 42.286499, 47.265816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.936314, 42.374504, 47.093586>,  <34.173145, 42.521179, 46.806538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936314, 42.374504, 47.093586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150407, 0.824555, 0.545424,
		-0.791717, 0.430872, -0.433053,
		-0.592083, -0.366687, 0.717620,
		33.758690, 42.264500, 47.308872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744919, 43.031075, 47.010296>,  <34.173145, 42.521179, 46.806538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744919, 43.031075, 47.010296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.765114, 42.794239, 47.332012>,  <33.777229, 42.652138, 47.525043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.765114, 42.794239, 47.332012>,  <33.744919, 43.031075, 47.010296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765114, 42.794239, 47.332012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003481, 0.805210, 0.592979,
		-0.998719, -0.032737, 0.038591,
		0.050486, -0.592085, 0.804292,
		33.780258, 42.616615, 47.573299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497887, 43.757774, 46.872345>,  <33.744919, 43.031075, 47.010296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497887, 43.757774, 46.872345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275200, 44.090012, 46.877743>,  <33.141590, 44.289356, 46.880981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275200, 44.090012, 46.877743>,  <33.497887, 43.757774, 46.872345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275200, 44.090012, 46.877743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253619, -0.154473, -0.954890,
		-0.791043, -0.535023, 0.296652,
		-0.556713, 0.830596, 0.013497,
		33.108185, 44.339191, 46.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892128, 43.592751, 46.622799>,  <33.497887, 43.757774, 46.872345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892128, 43.592751, 46.622799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884876, 43.989002, 46.568649>,  <32.880524, 44.226753, 46.536160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884876, 43.989002, 46.568649>,  <32.892128, 43.592751, 46.622799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884876, 43.989002, 46.568649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425529, -0.130168, -0.895534,
		-0.904763, 0.041370, 0.423901,
		-0.018130, 0.990628, -0.135376,
		32.879436, 44.286190, 46.528038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279888, 43.872913, 46.359093>,  <32.892128, 43.592751, 46.622799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279888, 43.872913, 46.359093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.544872, 44.141743, 46.226753>,  <32.703861, 44.303040, 46.147350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.544872, 44.141743, 46.226753>,  <32.279888, 43.872913, 46.359093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544872, 44.141743, 46.226753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407027, -0.047840, -0.912162,
		-0.628867, 0.738938, 0.241860,
		0.662461, 0.672073, -0.330853,
		32.743610, 44.343365, 46.127499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911337, 44.311115, 45.869896>,  <32.279888, 43.872913, 46.359093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911337, 44.311115, 45.869896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.289463, 44.421925, 45.801037>,  <32.516338, 44.488411, 45.759724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.289463, 44.421925, 45.801037>,  <31.911337, 44.311115, 45.869896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289463, 44.421925, 45.801037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154692, -0.083836, -0.984399,
		-0.287134, 0.957199, -0.036398,
		0.945317, 0.277024, -0.172143,
		32.573059, 44.505032, 45.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923916, 44.936718, 45.446430>,  <31.911337, 44.311115, 45.869896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923916, 44.936718, 45.446430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272839, 44.747299, 45.397709>,  <32.482193, 44.633648, 45.368477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272839, 44.747299, 45.397709>,  <31.923916, 44.936718, 45.446430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272839, 44.747299, 45.397709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138706, -0.000777, -0.990333,
		0.468872, 0.880769, -0.066361,
		0.872307, -0.473545, -0.121804,
		32.534531, 44.605236, 45.361168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261131, 45.259674, 44.847408>,  <31.923916, 44.936718, 45.446430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261131, 45.259674, 44.847408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.480656, 44.926674, 44.877735>,  <32.612370, 44.726871, 44.895931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.480656, 44.926674, 44.877735>,  <32.261131, 45.259674, 44.847408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480656, 44.926674, 44.877735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126605, -0.172427, -0.976852,
		0.826305, 0.526507, -0.200028,
		0.548810, -0.832502, 0.075819,
		32.645298, 44.676922, 44.900482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704575, 45.238594, 44.271042>,  <32.261131, 45.259674, 44.847408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704575, 45.238594, 44.271042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657257, 44.865128, 44.406258>,  <32.628868, 44.641048, 44.487385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657257, 44.865128, 44.406258>,  <32.704575, 45.238594, 44.271042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657257, 44.865128, 44.406258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368689, -0.274792, -0.888008,
		0.921996, -0.229672, -0.311728,
		-0.118290, -0.933670, 0.338035,
		32.621769, 44.585026, 44.507668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942947, 44.955273, 43.784229>,  <32.704575, 45.238594, 44.271042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942947, 44.955273, 43.784229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750336, 44.658005, 43.970058>,  <32.634769, 44.479645, 44.081554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750336, 44.658005, 43.970058>,  <32.942947, 44.955273, 43.784229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750336, 44.658005, 43.970058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402076, -0.283679, -0.870552,
		0.778760, -0.605987, -0.162213,
		-0.481526, -0.743173, 0.464571,
		32.605877, 44.435051, 44.109428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626659, 44.662086, 43.592617>,  <32.942947, 44.955273, 43.784229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626659, 44.662086, 43.592617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688732, 45.032532, 43.455082>,  <33.725975, 45.254799, 43.372559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688732, 45.032532, 43.455082>,  <33.626659, 44.662086, 43.592617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688732, 45.032532, 43.455082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216370, 0.307744, 0.926541,
		0.963899, -0.218181, -0.152627,
		0.155184, 0.926116, -0.343842,
		33.735287, 45.310368, 43.351929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167641, 44.843800, 43.954700>,  <33.626659, 44.662086, 43.592617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167641, 44.843800, 43.954700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034668, 45.191765, 43.808964>,  <33.954884, 45.400543, 43.721523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034668, 45.191765, 43.808964>,  <34.167641, 44.843800, 43.954700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034668, 45.191765, 43.808964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394539, 0.479155, 0.784060,
		0.856639, 0.116897, -0.502499,
		-0.332429, 0.869911, -0.364342,
		33.934940, 45.452740, 43.699661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715107, 45.212879, 44.064739>,  <34.167641, 44.843800, 43.954700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715107, 45.212879, 44.064739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411934, 45.471153, 44.027588>,  <34.230030, 45.626118, 44.005295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411934, 45.471153, 44.027588>,  <34.715107, 45.212879, 44.064739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411934, 45.471153, 44.027588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490826, 0.658263, 0.570770,
		0.429677, 0.387019, -0.815840,
		-0.757936, 0.645682, -0.092881,
		34.184551, 45.664860, 43.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053165, 45.830944, 44.090935>,  <34.715107, 45.212879, 44.064739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053165, 45.830944, 44.090935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670044, 45.928513, 44.151749>,  <34.440170, 45.987053, 44.188236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670044, 45.928513, 44.151749>,  <35.053165, 45.830944, 44.090935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670044, 45.928513, 44.151749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286990, 0.782462, 0.552621,
		0.015838, 0.572934, -0.819448,
		-0.957803, 0.243926, 0.152034,
		34.382702, 46.001690, 44.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867081, 46.444157, 43.769882>,  <35.053165, 45.830944, 44.090935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867081, 46.444157, 43.769882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607372, 46.410786, 44.072269>,  <34.451546, 46.390762, 44.253700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607372, 46.410786, 44.072269>,  <34.867081, 46.444157, 43.769882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607372, 46.410786, 44.072269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412960, 0.796016, 0.442519,
		-0.638678, 0.599499, -0.482380,
		-0.649272, -0.083424, 0.755967,
		34.412590, 46.385757, 44.299061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603989, 47.166378, 43.955528>,  <34.867081, 46.444157, 43.769882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603989, 47.166378, 43.955528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528667, 46.917122, 44.259171>,  <34.483475, 46.767567, 44.441357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528667, 46.917122, 44.259171>,  <34.603989, 47.166378, 43.955528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528667, 46.917122, 44.259171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362035, 0.674455, 0.643460,
		-0.912947, 0.395989, 0.098595,
		-0.188306, -0.623139, 0.759104,
		34.472176, 46.730179, 44.486900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358589, 47.579666, 44.478928>,  <34.603989, 47.166378, 43.955528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358589, 47.579666, 44.478928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.448006, 47.246986, 44.682224>,  <34.501656, 47.047379, 44.804203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.448006, 47.246986, 44.682224>,  <34.358589, 47.579666, 44.478928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448006, 47.246986, 44.682224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532657, 0.540925, 0.650905,
		-0.816275, 0.125212, 0.563929,
		0.223543, -0.831698, 0.508239,
		34.515068, 46.997478, 44.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296188, 47.782780, 45.208412>,  <34.358589, 47.579666, 44.478928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296188, 47.782780, 45.208412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548309, 47.474659, 45.169746>,  <34.699581, 47.289787, 45.146545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548309, 47.474659, 45.169746>,  <34.296188, 47.782780, 45.208412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548309, 47.474659, 45.169746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611346, 0.415736, 0.673364,
		-0.478510, -0.483521, 0.732964,
		0.630305, -0.770306, -0.096664,
		34.737400, 47.243568, 45.140747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610748, 47.735710, 45.916672>,  <34.296188, 47.782780, 45.208412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610748, 47.735710, 45.916672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.852318, 47.520561, 45.681393>,  <34.997261, 47.391472, 45.540226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.852318, 47.520561, 45.681393>,  <34.610748, 47.735710, 45.916672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852318, 47.520561, 45.681393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772547, 0.213473, 0.597997,
		-0.196080, -0.815553, 0.544450,
		0.603924, -0.537868, -0.588196,
		35.033493, 47.359200, 45.504932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.046555, 37.463085, 33.167725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420815, 37.523777, 33.295185>,  <35.645370, 37.560192, 33.371662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420815, 37.523777, 33.295185>,  <35.046555, 37.463085, 33.167725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420815, 37.523777, 33.295185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324512, 0.724818, 0.607725,
		-0.138757, -0.672024, 0.727413,
		0.935649, 0.151728, 0.318654,
		35.701508, 37.569294, 33.390781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123383, 37.403179, 33.942905>,  <35.046555, 37.463085, 33.167725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123383, 37.403179, 33.942905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442364, 37.609371, 33.817463>,  <35.633751, 37.733086, 33.742199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442364, 37.609371, 33.817463>,  <35.123383, 37.403179, 33.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442364, 37.609371, 33.817463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224985, 0.736290, 0.638169,
		0.559867, -0.438354, 0.703132,
		0.797452, 0.515484, -0.313601,
		35.681599, 37.764015, 33.723381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427437, 37.661839, 34.434868>,  <35.123383, 37.403179, 33.942905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427437, 37.661839, 34.434868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583279, 37.911331, 34.163822>,  <35.676785, 38.061028, 34.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583279, 37.911331, 34.163822>,  <35.427437, 37.661839, 34.434868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583279, 37.911331, 34.163822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224392, 0.777869, 0.586999,
		0.893230, -0.076643, 0.443020,
		0.389601, 0.623735, -0.677617,
		35.700161, 38.098454, 33.960537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931431, 38.027912, 34.760773>,  <35.427437, 37.661839, 34.434868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931431, 38.027912, 34.760773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817802, 38.263145, 34.457867>,  <35.749626, 38.404285, 34.276123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817802, 38.263145, 34.457867>,  <35.931431, 38.027912, 34.760773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817802, 38.263145, 34.457867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170125, 0.746360, 0.643432,
		0.943589, 0.311612, -0.111973,
		-0.284073, 0.588086, -0.757269,
		35.732582, 38.439571, 34.230686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192055, 38.520226, 35.023041>,  <35.931431, 38.027912, 34.760773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192055, 38.520226, 35.023041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955708, 38.664192, 34.734226>,  <35.813900, 38.750572, 34.560936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955708, 38.664192, 34.734226>,  <36.192055, 38.520226, 35.023041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955708, 38.664192, 34.734226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269258, 0.755682, 0.597030,
		0.760511, 0.547179, -0.349597,
		-0.590866, 0.359916, -0.722037,
		35.778446, 38.772167, 34.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302219, 39.210403, 35.060368>,  <36.192055, 38.520226, 35.023041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302219, 39.210403, 35.060368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947903, 39.159275, 34.881912>,  <35.735313, 39.128597, 34.774837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947903, 39.159275, 34.881912>,  <36.302219, 39.210403, 35.060368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947903, 39.159275, 34.881912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369593, 0.775694, 0.511566,
		0.280679, 0.618030, -0.734342,
		-0.885788, -0.127822, -0.446141,
		35.682167, 39.120930, 34.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013073, 39.855099, 34.903458>,  <36.302219, 39.210403, 35.060368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013073, 39.855099, 34.903458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677837, 39.637054, 34.894871>,  <35.476696, 39.506226, 34.889717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677837, 39.637054, 34.894871>,  <36.013073, 39.855099, 34.903458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677837, 39.637054, 34.894871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457054, 0.680125, 0.573176,
		-0.297847, 0.490182, -0.819151,
		-0.838086, -0.545115, -0.021467,
		35.426411, 39.473518, 34.888432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488094, 40.276310, 34.546013>,  <36.013073, 39.855099, 34.903458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488094, 40.276310, 34.546013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294430, 40.012218, 34.775684>,  <35.178230, 39.853764, 34.913486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294430, 40.012218, 34.775684>,  <35.488094, 40.276310, 34.546013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294430, 40.012218, 34.775684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473817, 0.749511, 0.462310,
		-0.735582, -0.048219, -0.675717,
		-0.484166, -0.660233, 0.574174,
		35.149181, 39.814148, 34.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720425, 40.394512, 34.536507>,  <35.488094, 40.276310, 34.546013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720425, 40.394512, 34.536507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768826, 40.172989, 34.866032>,  <34.797867, 40.040077, 35.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768826, 40.172989, 34.866032>,  <34.720425, 40.394512, 34.536507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768826, 40.172989, 34.866032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511530, 0.676442, 0.529871,
		-0.850703, -0.485517, -0.201437,
		0.121001, -0.553804, 0.823808,
		34.805126, 40.006847, 35.113174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094505, 40.396751, 34.807735>,  <34.720425, 40.394512, 34.536507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094505, 40.396751, 34.807735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349106, 40.297203, 35.099743>,  <34.501865, 40.237473, 35.274948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349106, 40.297203, 35.099743>,  <34.094505, 40.396751, 34.807735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349106, 40.297203, 35.099743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490060, 0.600388, 0.631962,
		-0.595574, -0.759997, 0.260185,
		0.636501, -0.248873, 0.730020,
		34.540054, 40.222542, 35.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709965, 40.408463, 35.424263>,  <34.094505, 40.396751, 34.807735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709965, 40.408463, 35.424263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093040, 40.463943, 35.525135>,  <34.322887, 40.497231, 35.585659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093040, 40.463943, 35.525135>,  <33.709965, 40.408463, 35.424263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093040, 40.463943, 35.525135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274771, 0.701357, 0.657723,
		-0.085643, -0.699185, 0.709792,
		0.957688, 0.138701, 0.252182,
		34.380348, 40.505554, 35.600788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770805, 40.365929, 36.187458>,  <33.709965, 40.408463, 35.424263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770805, 40.365929, 36.187458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103043, 40.557556, 36.073891>,  <34.302383, 40.672531, 36.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103043, 40.557556, 36.073891>,  <33.770805, 40.365929, 36.187458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103043, 40.557556, 36.073891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130886, 0.663492, 0.736646,
		0.541280, -0.574692, 0.613796,
		0.830593, 0.479069, -0.283916,
		34.352219, 40.701279, 35.988716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316349, 39.947369, 36.627483>,  <33.770805, 40.365929, 36.187458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316349, 39.947369, 36.627483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933090, 39.857632, 36.698616>,  <32.703136, 39.803791, 36.741295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933090, 39.857632, 36.698616>,  <33.316349, 39.947369, 36.627483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933090, 39.857632, 36.698616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023076, -0.558660, -0.829076,
		0.285342, -0.798481, 0.530102,
		-0.958148, -0.224338, 0.177835,
		32.645645, 39.790329, 36.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247128, 39.229179, 36.734379>,  <33.316349, 39.947369, 36.627483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247128, 39.229179, 36.734379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892159, 39.328865, 36.579266>,  <32.679176, 39.388676, 36.486198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892159, 39.328865, 36.579266>,  <33.247128, 39.229179, 36.734379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892159, 39.328865, 36.579266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052799, -0.780764, -0.622591,
		-0.457922, -0.572976, 0.679710,
		-0.887423, 0.249210, -0.387782,
		32.625931, 39.403629, 36.462933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974045, 38.581409, 36.602474>,  <33.247128, 39.229179, 36.734379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974045, 38.581409, 36.602474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775452, 38.851032, 36.383694>,  <32.656296, 39.012806, 36.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775452, 38.851032, 36.383694>,  <32.974045, 38.581409, 36.602474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775452, 38.851032, 36.383694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086148, -0.665244, -0.741640,
		-0.863762, -0.321092, 0.388350,
		-0.496482, 0.674055, -0.546951,
		32.626507, 39.053249, 36.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353359, 38.285137, 36.465679>,  <32.974045, 38.581409, 36.602474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353359, 38.285137, 36.465679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352627, 38.570072, 36.184944>,  <32.352188, 38.741032, 36.016502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352627, 38.570072, 36.184944>,  <32.353359, 38.285137, 36.465679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352627, 38.570072, 36.184944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027070, -0.701618, -0.712039,
		-0.999632, 0.017693, 0.020569,
		-0.001834, 0.712334, -0.701839,
		32.352077, 38.783772, 35.974392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642103, 38.216522, 36.043224>,  <32.353359, 38.285137, 36.465679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642103, 38.216522, 36.043224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934416, 38.403614, 35.844353>,  <32.109802, 38.515869, 35.725029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934416, 38.403614, 35.844353>,  <31.642103, 38.216522, 36.043224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934416, 38.403614, 35.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035155, -0.701595, -0.711708,
		-0.681705, 0.537582, -0.496270,
		0.730782, 0.467728, -0.497180,
		32.153652, 38.543934, 35.695198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552456, 37.949799, 35.463871>,  <31.642103, 38.216522, 36.043224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552456, 37.949799, 35.463871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903934, 38.126736, 35.392067>,  <32.114822, 38.232899, 35.348984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903934, 38.126736, 35.392067>,  <31.552456, 37.949799, 35.463871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903934, 38.126736, 35.392067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187297, -0.665333, -0.722669,
		-0.439102, 0.601386, -0.667476,
		0.878697, 0.442342, -0.179511,
		32.167545, 38.259438, 35.338215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439552, 38.177124, 34.838623>,  <31.552456, 37.949799, 35.463871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439552, 38.177124, 34.838623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829859, 38.146626, 34.920666>,  <32.064041, 38.128326, 34.969891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829859, 38.146626, 34.920666>,  <31.439552, 38.177124, 34.838623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829859, 38.146626, 34.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146005, -0.471308, -0.869800,
		0.162988, 0.878667, -0.448753,
		0.975765, -0.076246, 0.205107,
		32.122589, 38.123753, 34.982197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678162, 38.424984, 34.205517>,  <31.439552, 38.177124, 34.838623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678162, 38.424984, 34.205517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968405, 38.218895, 34.387962>,  <32.142551, 38.095242, 34.497429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968405, 38.218895, 34.387962>,  <31.678162, 38.424984, 34.205517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968405, 38.218895, 34.387962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070859, -0.603377, -0.794302,
		0.684451, 0.608671, -0.401306,
		0.725607, -0.515224, 0.456112,
		32.186089, 38.064327, 34.524796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386627, 38.468815, 33.776394>,  <31.678162, 38.424984, 34.205517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386627, 38.468815, 33.776394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374107, 38.146412, 34.012825>,  <32.366596, 37.952969, 34.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374107, 38.146412, 34.012825>,  <32.386627, 38.468815, 33.776394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374107, 38.146412, 34.012825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244615, -0.579561, -0.777350,
		0.969115, 0.120259, 0.215299,
		-0.031296, -0.806007, 0.591078,
		32.364719, 37.904610, 34.190147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943413, 38.064014, 33.527149>,  <32.386627, 38.468815, 33.776394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943413, 38.064014, 33.527149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736084, 37.800457, 33.745216>,  <32.611687, 37.642323, 33.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736084, 37.800457, 33.745216>,  <32.943413, 38.064014, 33.527149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736084, 37.800457, 33.745216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187198, -0.709438, -0.679451,
		0.834445, -0.250122, 0.491061,
		-0.518323, -0.658890, 0.545165,
		32.580585, 37.602791, 33.908768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338387, 37.460224, 33.576946>,  <32.943413, 38.064014, 33.527149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338387, 37.460224, 33.576946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967472, 37.332954, 33.655842>,  <32.744923, 37.256592, 33.703178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967472, 37.332954, 33.655842>,  <33.338387, 37.460224, 33.576946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967472, 37.332954, 33.655842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174881, -0.834045, -0.523245,
		0.330987, -0.450706, 0.829043,
		-0.927289, -0.318171, 0.197238,
		32.689285, 37.237503, 33.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364689, 36.762558, 33.741787>,  <33.338387, 37.460224, 33.576946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364689, 36.762558, 33.741787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985855, 36.824310, 33.629211>,  <32.758556, 36.861362, 33.561668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985855, 36.824310, 33.629211>,  <33.364689, 36.762558, 33.741787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985855, 36.824310, 33.629211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028898, -0.832187, -0.553742,
		-0.319694, -0.532571, 0.783686,
		-0.947080, 0.154382, -0.281435,
		32.701733, 36.870625, 33.544781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070396, 36.134644, 33.834332>,  <33.364689, 36.762558, 33.741787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070396, 36.134644, 33.834332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817066, 36.326454, 33.591366>,  <32.665070, 36.441540, 33.445587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817066, 36.326454, 33.591366>,  <33.070396, 36.134644, 33.834332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817066, 36.326454, 33.591366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028290, -0.798710, -0.601050,
		-0.773368, -0.363477, 0.519410,
		-0.633326, 0.479527, -0.607414,
		32.627071, 36.470314, 33.409142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505604, 35.651783, 33.650799>,  <33.070396, 36.134644, 33.834332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505604, 35.651783, 33.650799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543491, 35.917160, 33.353916>,  <32.566223, 36.076385, 33.175785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543491, 35.917160, 33.353916>,  <32.505604, 35.651783, 33.650799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543491, 35.917160, 33.353916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212055, -0.715006, -0.666183,
		-0.972657, 0.220488, 0.072963,
		0.094716, 0.663439, -0.742211,
		32.571907, 36.116192, 33.131252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237225, 35.337795, 34.225182>,  <32.505604, 35.651783, 33.650799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237225, 35.337795, 34.225182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146793, 34.965023, 34.338600>,  <32.092533, 34.741360, 34.406651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146793, 34.965023, 34.338600>,  <32.237225, 35.337795, 34.225182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146793, 34.965023, 34.338600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179824, 0.326011, 0.928105,
		-0.957367, 0.158837, -0.241287,
		-0.226080, -0.931926, 0.283550,
		32.078968, 34.685444, 34.423664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605934, 35.301189, 34.730114>,  <32.237225, 35.337795, 34.225182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605934, 35.301189, 34.730114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782307, 34.943497, 34.760899>,  <31.888130, 34.728882, 34.779369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782307, 34.943497, 34.760899>,  <31.605934, 35.301189, 34.730114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782307, 34.943497, 34.760899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169834, 0.001076, 0.985472,
		-0.881326, -0.447597, -0.151397,
		0.440932, -0.894235, 0.076965,
		31.914587, 34.675228, 34.783989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185734, 34.694248, 35.003571>,  <31.605934, 35.301189, 34.730114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185734, 34.694248, 35.003571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568790, 34.770782, 35.089649>,  <31.798624, 34.816704, 35.141296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568790, 34.770782, 35.089649>,  <31.185734, 34.694248, 35.003571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568790, 34.770782, 35.089649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246443, 0.158024, 0.956187,
		0.148911, -0.968727, 0.198476,
		0.957649, 0.191300, 0.215205,
		31.856083, 34.828182, 35.154209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275139, 34.453159, 35.695114>,  <31.185734, 34.694248, 35.003571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275139, 34.453159, 35.695114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612228, 34.662552, 35.644863>,  <31.814482, 34.788185, 35.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612228, 34.662552, 35.644863>,  <31.275139, 34.453159, 35.695114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612228, 34.662552, 35.644863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126412, 0.419258, 0.899023,
		0.523292, -0.741749, 0.419493,
		0.842726, 0.523481, -0.125628,
		31.865046, 34.819595, 35.607174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830212, 34.338821, 36.309795>,  <31.275139, 34.453159, 35.695114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830212, 34.338821, 36.309795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904470, 34.687340, 36.128075>,  <31.949026, 34.896450, 36.019043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904470, 34.687340, 36.128075>,  <31.830212, 34.338821, 36.309795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904470, 34.687340, 36.128075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187748, 0.422364, 0.886769,
		0.964513, -0.249920, -0.085172,
		0.185648, 0.871291, -0.454298,
		31.960165, 34.948727, 35.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371292, 34.698639, 36.703728>,  <31.830212, 34.338821, 36.309795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371292, 34.698639, 36.703728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226040, 35.013107, 36.503700>,  <32.138889, 35.201790, 36.383686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226040, 35.013107, 36.503700>,  <32.371292, 34.698639, 36.703728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226040, 35.013107, 36.503700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284953, 0.604694, 0.743738,
		0.887095, 0.127580, -0.443606,
		-0.363132, 0.786173, -0.500067,
		32.117100, 35.248959, 36.353680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816483, 35.190178, 36.888767>,  <32.371292, 34.698639, 36.703728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816483, 35.190178, 36.888767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490173, 35.369251, 36.742290>,  <32.294388, 35.476696, 36.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490173, 35.369251, 36.742290>,  <32.816483, 35.190178, 36.888767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490173, 35.369251, 36.742290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103767, 0.736151, 0.668816,
		0.568992, 0.507601, -0.646985,
		-0.815770, 0.447686, -0.366192,
		32.245441, 35.503555, 36.632435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997158, 35.848042, 36.629395>,  <32.816483, 35.190178, 36.888767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997158, 35.848042, 36.629395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601147, 35.902241, 36.644772>,  <32.363541, 35.934761, 36.653996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601147, 35.902241, 36.644772>,  <32.997158, 35.848042, 36.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601147, 35.902241, 36.644772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130424, 0.778950, 0.613373,
		0.053170, 0.612272, -0.788857,
		-0.990032, 0.135499, 0.038438,
		32.304138, 35.942890, 36.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833309, 36.599361, 36.507118>,  <32.997158, 35.848042, 36.629395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833309, 36.599361, 36.507118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536636, 36.431286, 36.716251>,  <32.358631, 36.330441, 36.841732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536636, 36.431286, 36.716251>,  <32.833309, 36.599361, 36.507118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536636, 36.431286, 36.716251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174969, 0.631287, 0.755555,
		-0.647529, 0.651861, -0.394694,
		-0.741682, -0.420184, 0.522832,
		32.314133, 36.305229, 36.873100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349747, 37.130257, 36.606304>,  <32.833309, 36.599361, 36.507118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349747, 37.130257, 36.606304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302906, 36.855858, 36.893551>,  <32.274799, 36.691219, 37.065899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302906, 36.855858, 36.893551>,  <32.349747, 37.130257, 36.606304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302906, 36.855858, 36.893551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082225, 0.727305, 0.681371,
		-0.989710, 0.020746, -0.141578,
		-0.117106, -0.686000, 0.718115,
		32.267773, 36.650059, 37.108986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812094, 37.425179, 37.061832>,  <32.349747, 37.130257, 36.606304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812094, 37.425179, 37.061832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016079, 37.149235, 37.267372>,  <32.138470, 36.983669, 37.390694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016079, 37.149235, 37.267372>,  <31.812094, 37.425179, 37.061832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016079, 37.149235, 37.267372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092677, 0.637943, 0.764486,
		-0.855190, -0.342237, 0.389260,
		0.509962, -0.689856, 0.513845,
		32.169067, 36.942276, 37.421524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437614, 37.369099, 37.664307>,  <31.812094, 37.425179, 37.061832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437614, 37.369099, 37.664307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800367, 37.222496, 37.747478>,  <32.018021, 37.134537, 37.797382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800367, 37.222496, 37.747478>,  <31.437614, 37.369099, 37.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800367, 37.222496, 37.747478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030864, 0.549907, 0.834655,
		-0.420248, -0.750518, 0.510014,
		0.906884, -0.366504, 0.207933,
		32.072433, 37.112545, 37.809860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488274, 37.268364, 38.368717>,  <31.437614, 37.369099, 37.664307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488274, 37.268364, 38.368717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876453, 37.208614, 38.292908>,  <32.109360, 37.172764, 38.247421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876453, 37.208614, 38.292908>,  <31.488274, 37.268364, 38.368717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876453, 37.208614, 38.292908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221153, 0.236256, 0.946189,
		-0.096558, -0.960141, 0.262308,
		0.970447, -0.149372, -0.189525,
		32.167587, 37.163803, 38.236050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697889, 36.885670, 38.931808>,  <31.488274, 37.268364, 38.368717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697889, 36.885670, 38.931808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025864, 37.054905, 38.777561>,  <32.222649, 37.156445, 38.685013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025864, 37.054905, 38.777561>,  <31.697889, 36.885670, 38.931808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025864, 37.054905, 38.777561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292356, 0.269659, 0.917503,
		0.492171, -0.865031, 0.097411,
		0.819937, 0.423090, -0.385615,
		32.271843, 37.181831, 38.661877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380314, 36.588226, 39.288586>,  <31.697889, 36.885670, 38.931808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380314, 36.588226, 39.288586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403439, 36.963772, 39.152828>,  <32.417313, 37.189098, 39.071373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403439, 36.963772, 39.152828>,  <32.380314, 36.588226, 39.288586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403439, 36.963772, 39.152828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212687, 0.320580, 0.923035,
		0.975409, -0.125546, -0.181152,
		0.057809, 0.938865, -0.339398,
		32.420780, 37.245430, 39.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703453, 36.990524, 39.807480>,  <32.380314, 36.588226, 39.288586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703453, 36.990524, 39.807480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620544, 37.297462, 39.564758>,  <32.570801, 37.481625, 39.419125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620544, 37.297462, 39.564758>,  <32.703453, 36.990524, 39.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620544, 37.297462, 39.564758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025333, 0.624278, 0.780792,
		0.977956, 0.146463, -0.148834,
		-0.207271, 0.767350, -0.606806,
		32.558365, 37.527668, 39.382717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192223, 37.557880, 39.925823>,  <32.703453, 36.990524, 39.807480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192223, 37.557880, 39.925823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862930, 37.718872, 39.765671>,  <32.665356, 37.815468, 39.669579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862930, 37.718872, 39.765671>,  <33.192223, 37.557880, 39.925823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862930, 37.718872, 39.765671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025919, 0.677874, 0.734721,
		0.567116, 0.615223, -0.547614,
		-0.823230, 0.402478, -0.400379,
		32.615963, 37.839615, 39.645557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336922, 38.289738, 39.898769>,  <33.192223, 37.557880, 39.925823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336922, 38.289738, 39.898769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939400, 38.250751, 39.877407>,  <32.700886, 38.227360, 39.864590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939400, 38.250751, 39.877407>,  <33.336922, 38.289738, 39.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939400, 38.250751, 39.877407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098317, 0.547011, 0.831332,
		-0.051811, 0.831432, -0.553205,
		-0.993805, -0.097462, -0.053402,
		32.641258, 38.221512, 39.861385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056320, 39.019875, 40.100231>,  <33.336922, 38.289738, 39.898769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056320, 39.019875, 40.100231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748974, 38.765415, 40.128304>,  <32.564564, 38.612740, 40.145145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748974, 38.765415, 40.128304>,  <33.056320, 39.019875, 40.100231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748974, 38.765415, 40.128304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298464, 0.453165, 0.839976,
		-0.566152, 0.624465, -0.538066,
		-0.768369, -0.636148, 0.070180,
		32.518463, 38.574570, 40.149357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552544, 39.420399, 40.278141>,  <33.056320, 39.019875, 40.100231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552544, 39.420399, 40.278141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441891, 39.054993, 40.397449>,  <32.375500, 38.835751, 40.469036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441891, 39.054993, 40.397449>,  <32.552544, 39.420399, 40.278141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441891, 39.054993, 40.397449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225286, 0.363382, 0.903991,
		-0.934195, 0.182879, -0.306326,
		-0.276634, -0.913515, 0.298270,
		32.358902, 38.780937, 40.486931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056889, 39.593651, 40.719292>,  <32.552544, 39.420399, 40.278141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056889, 39.593651, 40.719292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176605, 39.225082, 40.818417>,  <32.248436, 39.003941, 40.877892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176605, 39.225082, 40.818417>,  <32.056889, 39.593651, 40.719292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176605, 39.225082, 40.818417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300254, 0.155571, 0.941087,
		-0.905689, -0.356065, -0.230099,
		0.299291, -0.921420, 0.247809,
		32.266392, 38.948658, 40.892757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579868, 39.405582, 41.098034>,  <32.056889, 39.593651, 40.719292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579868, 39.405582, 41.098034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850094, 39.125469, 41.190315>,  <32.012230, 38.957401, 41.245682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850094, 39.125469, 41.190315>,  <31.579868, 39.405582, 41.098034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850094, 39.125469, 41.190315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184134, 0.142738, 0.972482,
		-0.713940, -0.699452, -0.032517,
		0.675562, -0.700281, 0.230699,
		32.052761, 38.915386, 41.259525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282349, 39.052002, 41.691738>,  <31.579868, 39.405582, 41.098034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282349, 39.052002, 41.691738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677633, 38.993118, 41.708542>,  <31.914804, 38.957787, 41.718624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677633, 38.993118, 41.708542>,  <31.282349, 39.052002, 41.691738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677633, 38.993118, 41.708542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025733, 0.110744, 0.993516,
		-0.150908, -0.982886, 0.105651,
		0.988213, -0.147211, 0.042005,
		31.974096, 38.948956, 41.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489216, 38.754028, 42.326172>,  <31.282349, 39.052002, 41.691738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489216, 38.754028, 42.326172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846182, 38.902554, 42.223629>,  <32.060360, 38.991669, 42.162102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846182, 38.902554, 42.223629>,  <31.489216, 38.754028, 42.326172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846182, 38.902554, 42.223629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186385, 0.214066, 0.958872,
		0.410924, -0.903493, 0.121828,
		0.892414, 0.371316, -0.256362,
		32.113907, 39.013947, 42.146721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993198, 38.448826, 42.724606>,  <31.489216, 38.754028, 42.326172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993198, 38.448826, 42.724606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204781, 38.767494, 42.607628>,  <32.331730, 38.958694, 42.537441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204781, 38.767494, 42.607628>,  <31.993198, 38.448826, 42.724606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204781, 38.767494, 42.607628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209293, 0.211490, 0.954709,
		0.822437, -0.566204, -0.054869,
		0.528955, 0.796671, -0.292440,
		32.363468, 39.006496, 42.519897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565536, 38.349499, 43.049580>,  <31.993198, 38.448826, 42.724606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565536, 38.349499, 43.049580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567131, 38.738213, 42.955242>,  <32.568089, 38.971439, 42.898640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567131, 38.738213, 42.955242>,  <32.565536, 38.349499, 43.049580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567131, 38.738213, 42.955242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292279, 0.224415, 0.929629,
		0.956325, -0.072637, -0.283138,
		0.003985, 0.971783, -0.235844,
		32.568325, 39.029747, 42.884487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228935, 38.632893, 43.221710>,  <32.565536, 38.349499, 43.049580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228935, 38.632893, 43.221710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958729, 38.927799, 43.225895>,  <32.796604, 39.104744, 43.228405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958729, 38.927799, 43.225895>,  <33.228935, 38.632893, 43.221710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958729, 38.927799, 43.225895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370043, 0.326709, 0.869672,
		0.637764, 0.591351, -0.493519,
		-0.675519, 0.737269, 0.010462,
		32.756073, 39.148979, 43.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563679, 39.310852, 43.522430>,  <33.228935, 38.632893, 43.221710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563679, 39.310852, 43.522430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166405, 39.351135, 43.545879>,  <32.928040, 39.375305, 43.559948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166405, 39.351135, 43.545879>,  <33.563679, 39.310852, 43.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166405, 39.351135, 43.545879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092443, 0.374638, 0.922551,
		0.070950, 0.921685, -0.381396,
		-0.993187, 0.100713, 0.058623,
		32.868450, 39.381348, 43.563465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301582, 39.284191, 43.335907>,  <33.563679, 39.310852, 43.522430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301582, 39.284191, 43.335907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673462, 39.333427, 43.474762>,  <34.896591, 39.362968, 43.558075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673462, 39.333427, 43.474762>,  <34.301582, 39.284191, 43.335907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673462, 39.333427, 43.474762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267888, -0.872815, -0.407958,
		0.252771, 0.472273, -0.844432,
		0.929700, 0.123094, 0.347139,
		34.952374, 39.370354, 43.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806332, 39.378872, 42.722862>,  <34.301582, 39.284191, 43.335907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806332, 39.378872, 42.722862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984016, 39.210194, 43.039051>,  <35.090626, 39.108986, 43.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984016, 39.210194, 43.039051>,  <34.806332, 39.378872, 42.722862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984016, 39.210194, 43.039051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296797, -0.763218, -0.573942,
		0.845335, 0.489560, -0.213869,
		0.444208, -0.421698, 0.790475,
		35.117279, 39.083683, 43.276192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325516, 39.006111, 42.420177>,  <34.806332, 39.378872, 42.722862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325516, 39.006111, 42.420177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274300, 38.856873, 42.787743>,  <35.243572, 38.767330, 43.008282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274300, 38.856873, 42.787743>,  <35.325516, 39.006111, 42.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274300, 38.856873, 42.787743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112050, -0.926053, -0.360377,
		0.985419, 0.056824, 0.160373,
		-0.128036, -0.373092, 0.918917,
		35.235889, 38.744946, 43.063419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888847, 38.595627, 42.481888>,  <35.325516, 39.006111, 42.420177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888847, 38.595627, 42.481888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643852, 38.473034, 42.773346>,  <35.496857, 38.399479, 42.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643852, 38.473034, 42.773346>,  <35.888847, 38.595627, 42.481888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643852, 38.473034, 42.773346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175295, -0.951489, -0.252863,
		0.770800, -0.027147, 0.636498,
		-0.612486, -0.306482, 0.728649,
		35.460106, 38.381088, 42.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254726, 37.969299, 42.682953>,  <35.888847, 38.595627, 42.481888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254726, 37.969299, 42.682953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874542, 37.946930, 42.805264>,  <35.646431, 37.933506, 42.878651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874542, 37.946930, 42.805264>,  <36.254726, 37.969299, 42.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874542, 37.946930, 42.805264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006392, -0.979959, -0.199099,
		0.310786, -0.191190, 0.931052,
		-0.950458, -0.055926, 0.305779,
		35.589405, 37.930153, 42.896996>
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
